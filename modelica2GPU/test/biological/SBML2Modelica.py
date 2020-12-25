import libsbml
import sys
import os
import functools
import time
import argparse
import math


FUNCTION_FORMAT = """
    function {function_name}
        {inputs}
        output Real y;
    algorithm
        {math}
    end {function_name};
"""


MODELICA_CODE = """
model {model_name} "{name}"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

{functions}

{constant_parameters}

{variable_parameters}

{species}

initial equation
{initial_equations}

equation
{assignment_rules}
{rate_rules}
{zero_der}

{events}

end {model_name};
"""


RUN_MOS = """
loadModel(Modelica);
loadFile("{model_name}.mo");
getErrorString();
simulate({model_name}, stopTime=100.0, outputFormat="csv");
getErrorString();
"""


BUILD_MOS = """
loadModel(Modelica);
loadFile("{model_name}.mo");
getErrorString();
buildModel({model_name}, stopTime=100.0);
getErrorString();
"""


OMCPLOT_PY = """
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import argparse

parser = argparse.ArgumentParser()
parser.add_argument("-c", "--csv", help="Path relativo o assoluto del file CSV contenente i dati")
args = parser.parse_args()
csv_file = args.csv

# Apriamo e leggiamo il CSV in input
csv_data = pd.read_csv(csv_file)

# Prendiamo i nomi delle species con gli indici corrispettivi che utilizzeremo per il plotting
variables_to_plot = [{species}]
species_tuple = [(idx, specie) for idx, specie in enumerate(csv_data.head(0)) if specie in variables_to_plot and specie != "time"]

# Creiamo un array numpy per salvare i dati estrapolati dal CSV
data_numpy = np.array(csv_data)

# Prendiamo la colonna del tempo
time = data_numpy[:, 0]

# Prendiamo i valori a tuple di quattro i quali formeranno un singolo plot
plot_number = 1
for i in range(0, len(species_tuple), 4):
    current_vars = species_tuple[i:i+4]
    plt.figure(figsize=[15.0, 8.0])
    for j, var in current_vars:
        plt.plot(time, data_numpy[:, j], marker="_", label=var)
    plt.xlabel("Time")
    plt.legend(loc="upper left")
    plt.savefig("OMCPlot" + str(plot_number) + ".png")
    plot_number += 1
    plt.close()
"""


def obj2str(obj):
    args = ",".join([f"{k}={v}" for k, v in obj.__dict__.items()])
    return f"{obj.__class__.__name__}({args})"


class Specie:
    def __init__(self, nome, compartment, ivalue, constant, boundary_condition):
        self.nome = nome
        self.compartment = compartment
        self.ivalue = ivalue
        self.constant = constant
        self.boundary_condition = boundary_condition
        self.involved_as_reactant = []
        self.involved_as_product = []
        self.involved_as_modifier = []

    def __str__(self):
        return obj2str(self)

    def add_reaction_as_reactant(self, reaction, stoichiometry_value):
        self.involved_as_reactant.append((reaction, stoichiometry_value))
    
    def add_reaction_as_product(self, reaction, stoichiometry_value):
        self.involved_as_product.append((reaction, stoichiometry_value))
    
    def add_reaction_as_modifier(self, reaction):
        self.involved_as_modifier.append(reaction)

    def set_new_ivalue(self, new):
        self.ivalue = new
    

class Compartment:
    def __init__(self, nome, size, volume, unit):
        self.nome = nome
        self.size = size
        self.volume = volume
        self.unit = unit

    def __str__(self):
        return obj2str(self)


class Parameter:
    def __init__(self, nome, value, constant):
        self.nome = nome
        self.value = value
        self.constant = constant

    def __str__(self):
        return obj2str(self)

    def set_value(self, new_value):
        self.value = new_value


class Reaction:
    def __init__(self, nome, second_name, reactant, product, modifier, local_parameters, math_formula):
        self.nome = nome
        self.second_name = second_name
        self.reactants = reactant
        self.products = product
        self.modifiers = modifier
        self.local_parameters = local_parameters
        self.math_formula = math_formula

    def __str__(self):
        return obj2str(self)


class Rule:
    def __init__(self, lhs, rhs):
        self.lhs = lhs
        self.rhs = rhs
    
    def __str__(self):
        return obj2str(self)


class AssignmentRule(Rule):
    def __init__(self, lhs, rhs):
        super().__init__(lhs, rhs)

    
class RateRule(Rule):
    def __init__(self, lhs, rhs):
        super().__init__(f"der({lhs})", rhs)


class Event:
    def __init__(self, id, trigger_condition, event_assignments):
        self.id = id
        self.when_condition = trigger_condition
        self.event_assignments = event_assignments
    
    def __str__(self):
        return obj2str(self)


class Function:
    def __init__(self, name, inputs, math_formula):
        self.name = name
        self.inputs = inputs
        self.math_formula = math_formula

    def build_modelica_function(self):
        global FUNCTION_FORMAT
        input_string = "\n".join([f"\tinput Real {x};" for x in self.inputs])
        math = f"y := {self.math_formula};"
        return FUNCTION_FORMAT.format(function_name=self.name,inputs=input_string,math=math)
    
    def __str__(self):
        return obj2str(self)


class SBMLModel:
    def __init__(self, name, 
                       compartmnents, 
                       species, 
                       parameters, 
                       assignment_rules, 
                       reactions,
                       rate_rules,
                       event_list,
                       function_list
                ):
        self.name = name
        self.compartments = compartmnents
        self.species = species
        self.parameters = parameters
        self.assignment_rules = assignment_rules
        self.reactions = reactions
        self.rate_rules_dict = rate_rules
        self.event_list = event_list
        self.function_list = function_list
        self.create_rate_rule()

    def create_sum_from_reactant(self, specie_name, specie_obj):
        formula_list = []
        for reaction_id, stoichiometry_value in specie_obj.involved_as_reactant:
            stoichiometry_value = str(stoichiometry_value) + " * " if stoichiometry_value != 1.0 else ""
            formula_list.append(f"({stoichiometry_value}{self.reactions[reaction_id].math_formula})")
        return " - ".join(formula_list)

    def create_sum_from_products(self, specie_name, specie_obj):
        formula_list = []
        for reaction_id, stoichiometry_value in specie_obj.involved_as_product:
            stoichiometry_value = str(stoichiometry_value) + " * " if stoichiometry_value != 1.0 else ""
            math_formula = self.reactions[reaction_id].math_formula
            math_formula = math_formula if not math_formula.startswith("-") else f"({math_formula})"
            formula_list.append(f"({stoichiometry_value}{math_formula})")
        return " + ".join(formula_list)

    def create_rate_rule(self):
        for specie_id, specie_obj in self.species.items():
            if specie_id not in self.rate_rules_dict and specie_id not in self.assignment_rules.keys():
                rate_rule = RateRule(specie_id, "0.0")
                if not specie_obj.constant and not specie_obj.boundary_condition:
                    reactant_partial = self.create_sum_from_reactant(specie_id, specie_obj)
                    reactant_formula = "- " + reactant_partial if reactant_partial != "" else reactant_partial
                    product_formula = self.create_sum_from_products(specie_id, specie_obj)
                    total_formula = f"{product_formula} {reactant_formula}"
                    rate_rule = RateRule(specie_id, total_formula if total_formula.strip() != "" else "0.0")
                self.rate_rules_dict[specie_id] = rate_rule

    def getconstant_parameter(self):
        return [param for k, param in self.parameters if k not in self.assignment_rules.keys()]

    def __str__(self):
        printable = ""
        for v in self.__dict__.values():
            if isinstance(v, str):
                printable += f"Model Name: {v}\n"
            if isinstance(v, dict):
                printable += "\n".join([x.__str__() for x in v.values()])
            printable += "\n\n"
        return printable


class SBMLTranslator:
    def __init__(self, filename, sbmlmodel_obj):
        self.model = sbmlmodel_obj
        self.filename = filename

    def getconstant_parameter_modelica_code(self):
        line_code = " "*4 + "parameter Real {param_name} = {param_value};"
        lines = []
        for param_id, param_obj in self.model.parameters.items():
            if param_obj.constant:
                lines.append(line_code.format(param_name=param_id, param_value=param_obj.value))
        for comp_id in self.model.compartments:
            lines.append(line_code.format(param_name=comp_id, param_value="1.0"))
        return lines

    def getvariable_parameter_modelica_code(self):
        line_code = " "*4 + "Real {param_name}(start={ivalue});"
        lines = []
        for param_id, param_obj in self.model.parameters.items():
            if not param_obj.constant:
                ivalue = param_obj.value if isinstance(param_obj.value, str) or (not math.isnan(param_obj.value)) else "0.0"
                lines.append(line_code.format(param_name=param_id, ivalue=ivalue))
        return lines

    def getspecies_modelica_code(self):
        return [f"    Real {name};" for name in self.model.species]

    def getinitialequation_modelica_code(self):
        return [f"    {name} = {species.ivalue};" for name, species in self.model.species.items() if isinstance(species.ivalue, str) or (not math.isnan(species.ivalue) and name not in self.model.assignment_rules.keys())]
    
    def getraterules_modelica_code(self):
        return [f"    {rate_rule.lhs} = {rate_rule.rhs};" for rate_rule in self.model.rate_rules_dict.values() if rate_rule.lhs[4:-1] not in self.model.assignment_rules.keys()]

    def getassignmentrules_modelica_code(self):
        return [f"    {assignment_rule.lhs} = {assignment_rule.rhs};" for assignment_rule in self.model.assignment_rules.values()]

    def getevents_modelica_code(self):
        line_code = " "*4 + "when {when_condition} then\n"
        lines = []
        for event_obj in self.model.event_list.values():
            code = line_code.format(when_condition=event_obj.when_condition) + \
                "\n".join([f"        {ass};" for ass in event_obj.event_assignments]) + \
                    "\n    end when;"
            lines.append(code)
        return lines
    
    def getzeroder_modelica_code(self):
        line_code = " "*4 + "der({var})=0.0;"
        lines = []
        for param in self.model.parameters:
            if not param in self.model.rate_rules_dict and not self.model.parameters[param].constant and \
                not param in self.model.assignment_rules:
                self.model.rate_rules_dict[param] = RateRule(param, "0.0")
                lines.append(line_code.format(var=param))
        return lines
    
    def getfunction_modelica_code(self):
        return [func_definition.build_modelica_function()  for func_definition in self.model.function_list.values()]
    
    def SBML_into_Modelica(self):
        global MODELICA_CODE
        constant_parameter_list = "\n".join(self.getconstant_parameter_modelica_code())
        variable_parameter_list = "\n".join(self.getvariable_parameter_modelica_code())
        species_list = "\n".join(self.getspecies_modelica_code())
        initialequation_list = "\n".join(self.getinitialequation_modelica_code())
        assignmentrules_list = "\n".join(self.getassignmentrules_modelica_code())
        raterules_list = "\n".join(self.getraterules_modelica_code())
        events_list = "\n".join(self.getevents_modelica_code())
        zeroder_list = "\n".join(self.getzeroder_modelica_code())
        function_list = "\n".join(self.getfunction_modelica_code())
        return MODELICA_CODE.format(
            model_name=self.filename,
            name=self.model.name,
            constant_parameters=constant_parameter_list,
            variable_parameters=variable_parameter_list,
            species=species_list,
            initial_equations=initialequation_list,
            events=events_list,
            assignment_rules=assignmentrules_list,
            rate_rules=raterules_list,
            zero_der=zeroder_list,
            functions=function_list
        )


class SBMLExtrapolator:
    def __init__(self, sbmlfile):
        self.model = libsbml.readSBMLFromFile(sbmlfile).getModel()
        self.extraploate()

    def extraploate(self):
        self.getmodelname()
        self.getcompartments()
        self.getspecies()
        self.getparameters()
        self.getrules()
        self.getreactions()
        self.getevents()
        self.getfunctions()
        self.getinit_assignment()
    
    def getmodelname(self):
        self.nome = self.model.getName()

    def getcompartments(self):
        """ Prendiamo tutti i compartments del modello """
        self.comp_dict = dict()
        for comp in self.model.getListOfCompartments():
            self.comp_dict[comp.getId()] = Compartment(
                comp.getId(), # Nome
                comp.getSize(), # Taglia
                comp.getVolume(), # Volume
                comp.getUnits() # Unità di misura
            )

    def getspecies(self):
        """ Prendiamo tutte le Specie con i relativi compartment """
        self.species_dict = dict() 
        for sp in self.model.getListOfSpecies():
            self.species_dict[sp.getId()] = Specie(
                sp.getId(), # Nome
                self.comp_dict[sp.getCompartment()], # Oggetto Compartment
                sp.getInitialConcentration() if sp.isSetInitialConcentration() else sp.getInitialAmount(), # Concentrazione iniziale
                sp.getConstant(), # Se è costante oppure no
                sp.getBoundaryCondition()
            )

    def getparameters(self):
        """ Prendiamo tutti i parametri del modello in listOfParameters """
        self.parameter_dict = dict()
        for param in self.model.getListOfParameters():
            self.parameter_dict[param.getId()] = Parameter(
                param.getId(), # Nome
                param.getValue(), # Valore
                param.getConstant() # Se è costante oppure no
            )
           
    def getrules(self):
        self._assignment_rule()
        self._rate_rule()

    def _assignment_rule(self):
        self.assignment_dict = dict()
        for rule in self.model.getListOfRules():
            if isinstance(rule, libsbml.AssignmentRule):
                formula = rule.getFormula()
                self.assignment_dict[rule.getVariable()] = AssignmentRule(
                    rule.getVariable(), formula)
    
    def _rate_rule(self):
        self.rate_dict = dict()
        for rule in self.model.getListOfRules():
            if isinstance(rule, libsbml.RateRule):
                formula = rule.getFormula()
                self.rate_dict[rule.getVariable()] = RateRule(
                    rule.getVariable(), formula
                )

    def getreactions(self):
        self.reaction_dict = dict()
        id_reaction = 0
        for reaction in self.model.getListOfReactions():
            reaction_name = reaction.getId()
            second_reaction_name = reaction.getName()
            kinetic_law = libsbml.formulaToString(reaction.getKineticLaw().getMath())
            reactants = self.get_and_set(reaction_name, reaction.getListOfReactants(), "r")
            products = self.get_and_set(reaction_name, reaction.getListOfProducts(), "p")
            modifiers = self.get_and_set_modifier(reaction, reaction_name)
            parameters = []
            list_of_parameters = list(filter(lambda x: isinstance(x, libsbml.Parameter), reaction.getListOfAllElements()))
            # Devo vedere se ci sono parametri locali alla reazione
            for param in list_of_parameters:
                param_name = param.getId() + "_" + str(id_reaction)
                while param_name in self.parameter_dict:
                    param_name += "_" + str(id_reaction)
                self.parameter_dict[param_name] = Parameter(
                    param_name, # Nome
                    param.getValue(), # Valore
                    param.getConstant() # Se è costante oppure no
                )
                parameters.append(param_name)
                kinetic_law = kinetic_law.replace(param.getId(), param_name)
            self.reaction_dict[reaction_name] = Reaction(
                reaction_name, second_reaction_name, reactants, 
                products, modifiers, parameters, kinetic_law
            )
            id_reaction += 1
        
    def get_and_set(self, reaction_name, lista, category):
        # Prendo tutti i reagenti con i loro valori stechiometrici
        elements = []
        for element in lista:
            # Ottengo un oggetto SpeciesReference
            # Devo ottenere il valore stechiometrico
            stoichiometry_value = element.getStoichiometry()
            if stoichiometry_value == 1.0 and element.isSetStoichiometryMath():
                tmp_kinetic = libsbml.KineticLaw(2, 4)
                tmp_kinetic.setMath(element.getStoichiometryMath().getMath())
                stoichiometry_value = tmp_kinetic.getFormula()
            if category == "r":
                self.species_dict[element.getSpecies()].add_reaction_as_reactant(
                    reaction_name, stoichiometry_value
                )
            elif category == "p":
                self.species_dict[element.getSpecies()].add_reaction_as_product(
                    reaction_name, stoichiometry_value
                )
            elements.append(element.getSpecies())
        return elements
    
    def get_and_set_modifier(self, libsbml_reaction_obj, reaction_name):
        modifiers = []
        for modif in libsbml_reaction_obj.getListOfModifiers():
            modifiers.append(modif.getSpecies())
            self.species_dict[modif.getSpecies()].add_reaction_as_modifier(reaction_name)
        return modifiers

    def getevents(self):
        self.event_dict = dict()
        for event in self.model.getListOfEvents():
            event_id = event.getId()
            when_condition = libsbml.formulaToL3String(event.getTrigger().getMath())
            # Dal momento che gli and e gli or sono rappresentati come && e || allora li 
            # sostituiamo con and e or i quali sono leggibili da modelica.
            when_condition = when_condition.replace("&&", "and").replace("||", "or")
            event_assignments = [f"reinit({ass.getId()},{libsbml.formulaToL3String(ass.getMath())})" for ass in event.getListOfEventAssignments()]
            self.event_dict[event_id] = Event(event_id, when_condition, event_assignments)
    
    def getfunctions(self):
        self.function_dict = dict()
        for func in self.model.getListOfFunctionDefinitions():
            function_id = func.getId()
            function_mathml = libsbml.formulaToL3String(func.getMath())[7:-1]
            input_params = [x.strip() for x in function_mathml.split(",")[:-1]]
            math_formula = function_mathml.split(",")[-1]
            self.function_dict[function_id] = Function(function_id, input_params, math_formula)

    def getinit_assignment(self):
        for init_ass in self.model.getListOfInitialAssignments():
            symbol = init_ass.getSymbol()
            to = libsbml.formulaToL3String(init_ass.getMath())
            try:
                self.species_dict[symbol].set_new_ivalue(to)
            except KeyError:
                self.parameter_dict[symbol].set_value(to)
            
            

def save_modelica(modelica_model, modelica_file):
    try:
        stream = open(modelica_file, mode="x")
    except FileExistsError:
        stream = open(modelica_file, mode="w")
    stream.write(modelica_model.replace("+ -", "-"))
    stream.flush()
    stream.close()


def wrap_time(f):
    @functools.wraps(f)
    def wrapper(*args, **kargs):
        start = time.time()
        f(*args, **kargs)
        end = time.time()
        print("Tempo totale di traduzione: " + str(end - start))
    return wrapper


@wrap_time
def run_from_directory(directory, output_directory):
    for file in os.listdir(directory):
        if file.endswith(".sbml") or file.endswith(".xml"):
            new_path = os.path.join(directory, file)
            run(new_path, output_directory)


@wrap_time
def run_for_single_file(file, output_directory):
	run(file, output_directory)


def create_run_mos(output_directory, sbml_model, file_name):
    """ Create run.mos file  """
    global RUN_MOS
    model_name = file_name
    try:
        stream = open(os.path.join(output_directory, "run.mos"), mode="x")
    except FileExistsError:
        stream = open(os.path.join(output_directory, "run.mos"), mode="w")
    stream.write(RUN_MOS.format(model_name=model_name))
    stream.flush()
    stream.close()
    print(f"Created run.mos file into -> {output_directory}/run.mos")


def create_build_mos(output_directory, file_name):
    global BUILD_MOS
    try:
        stream = open(os.path.join(output_directory, "build.mos"), mode="x")
    except FileExistsError:
        stream = open(os.path.join(output_directory, "build.mos"), mode="w")
    stream.write(BUILD_MOS.format(model_name=file_name))
    stream.flush()
    stream.close()
    print(f"Created build.mos file into -> {output_directory}/build.mos")

def create_clear_sh(output_directory, file_name):
    clear_sh = f"rm *.o *.c *.h *.json {file_name} *.makefile *.log *.libs *_init.xml"
    try:
        stream = open(os.path.join(output_directory, "clear.sh"), mode="x")
    except FileExistsError:
        stream = open(os.path.join(output_directory, "clear.sh"), mode="w")
    stream.write(clear_sh)
    stream.flush()
    stream.close()
    print(f"Created clear.sh file into -> {output_directory}/clear.sh")


def create_omcplot_py(output_directory, species_list):
    global OMCPLOT_PY
    try:
        stream = open(os.path.join(output_directory, "OMCPlot.py"), mode="x")
    except FileExistsError:
        stream = open(os.path.join(output_directory, "OMCPlot.py"), mode="w")
    stream.write(OMCPLOT_PY.format(species=species_list))
    stream.flush()
    stream.close()
    print(f"Created OMCPlot.py file into -> {output_directory}/OMCPlot.py")


def run(file, output_directory):
    print(file)
    sbmlext = SBMLExtrapolator(file)
    sbmlmodel = SBMLModel(
        sbmlext.nome, 
        sbmlext.comp_dict, 
        sbmlext.species_dict,
        sbmlext.parameter_dict,
        sbmlext.assignment_dict,
        sbmlext.reaction_dict,
        sbmlext.rate_dict,
        sbmlext.event_dict,
        sbmlext.function_dict
    )
    final_index = -5 if file.endswith(".sbml") else -4
    filename = file.split("/")[-1][:final_index]
    save_directory = os.path.join(output_directory, sbmlmodel.name)
    modelica_file = os.path.join(save_directory, filename + ".mo")
    print(f"Traduzione SBML->Modelica: {file} -> {modelica_file}")
    sbmltrans = SBMLTranslator(filename, sbmlmodel)
    modelica_translation = sbmltrans.SBML_into_Modelica()
    try:	
        os.mkdir(save_directory)
    except FileExistsError:
        pass
    save_modelica(modelica_translation, modelica_file) # Salviamo il modello creato in un file Modelica
    create_run_mos(save_directory, sbmlmodel, filename) # Creiamo il file run.mos per il plotting del risultato della simulazione
    create_build_mos(save_directory, filename) # Creiamo il file build.mos per fare il build del modello e costruire l'esegubile per il testing
    create_clear_sh(save_directory, filename)
    create_omcplot_py(save_directory, ",".join(['"' + x + '"' for x in sbmlmodel.rate_rules_dict.keys()]))


def main():
	argument_parser = argparse.ArgumentParser()
	argument_parser.add_argument("-d", "--directory", help="Path assoluto della directory contenente i file SBML o XML", type=str)
	argument_parser.add_argument("-s", "--sbml", help="Path assoluto o relativo al file SBML o XML", type=str)
	argument_parser.add_argument("-o", "--output", help="Path assoluto o relativo della cartella in cui salvare il modello tradotto", type=str, required=True)
	args = argument_parser.parse_args()
	directory = args.directory
	sbmlfile = args.sbml
	output_dir = args.output
	# Se l'argomenti d non è vuoto allora run_from_directory
	# anche se -s non è vuoto
	if directory != None and directory != "":
		run_from_directory(directory, output_dir)
	else:
		run_for_single_file(sbmlfile, output_dir)

main()
