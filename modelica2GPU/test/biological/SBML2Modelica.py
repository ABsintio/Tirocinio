import libsbml
import sys
import os
import functools
import time
import argparse


MODELICA_CODE = """
model {model_name} "{name}"

{constant_parameters}

{variable_parameters}

{species}

initial equation
{initial_equations}

equation
{assignment_rules}
{rate_rules}

end {model_name};
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


class SBMLModel:
    def __init__(self, name, 
                       compartmnents, 
                       species, 
                       parameters, 
                       assignment_rules, 
                       reactions,
                       rate_rules
                ):
        self.name = name
        self.compartments = compartmnents
        self.species = species
        self.parameters = parameters
        self.assignment_rules = assignment_rules
        self.reactions = reactions
        self.rate_rules_dict = rate_rules
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
            formula_list.append(f"({stoichiometry_value}{self.reactions[reaction_id].math_formula})")
        return " + ".join(formula_list)

    def create_rate_rule(self):
        for specie_id, specie_obj in self.species.items():
            if specie_id not in self.rate_rules_dict:
                rate_rule = RateRule(specie_id, "0.0")
                if not specie_obj.constant and not specie_obj.boundary_condition:
                    reactant_partial = self.create_sum_from_reactant(specie_id, specie_obj)
                    reactant_formula = "- " + reactant_partial if reactant_partial != "" else reactant_partial
                    product_formula = self.create_sum_from_products(specie_id, specie_obj)
                    rate_rule = RateRule(specie_id, f"{product_formula} {reactant_formula}")
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
        return lines

    def getvariable_parameter_modelica_code(self):
        line_code = " "*4 + "Real {param_name}(start={ivalue});"
        lines = []
        for param_id, param_obj in self.model.parameters.items():
            if not param_obj.constant:
                lines.append(line_code.format(param_name=param_id, ivalue=param_obj.value))
        return lines

    def getspecies_modelica_code(self):
        return [f"    Real {name};" for name in self.model.species]

    def getinitialequation_modelica_code(self):
        return [f"    {name} = {species.ivalue};" for name, species in self.model.species.items()]
    
    def getraterules_modelica_code(self):
        return [f"    {rate_rule.lhs} = {rate_rule.rhs}" for rate_rule in self.model.rate_rules_dict.values() if rate_rule.lhs[4:-1] not in self.model.assignment_rules.keys()]

    def getassignmentrules_modelica_code(self):
        return [f"    {assignment_rule.lhs} = {assignment_rule.rhs}" for assignment_rule in self.model.assignment_rules.values()]
    
    def SBML_into_Modelica(self):
        global MODELICA_CODE
        constant_parameter_list = "\n".join(self.getconstant_parameter_modelica_code())
        variable_parameter_list = "\n".join(self.getvariable_parameter_modelica_code())
        species_list = "\n".join(self.getspecies_modelica_code())
        initialequation_list = "\n".join(self.getinitialequation_modelica_code())
        assignmentrules_list = "\n".join(self.getassignmentrules_modelica_code())
        raterules_list = "\n".join(self.getraterules_modelica_code())
        for comp in self.model.compartments:
            raterules_list = raterules_list.replace(comp + " * ", "")
            raterules_list = raterules_list.replace(" * " + comp, "")
        return MODELICA_CODE.format(
            model_name=self.filename,
            name=self.model.name,
            constant_parameters=constant_parameter_list,
            variable_parameters=variable_parameter_list,
            species=species_list,
            initial_equations=initialequation_list,
            assignment_rules=assignmentrules_list,
            rate_rules=raterules_list
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
                sp.getInitialConcentration(), # Concentrazione iniziale
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
                self.assignment_dict[rule.getVariable()] = AssignmentRule(
                    rule.getVariable(), rule.getFormula())
    
    def _rate_rule(self):
        self.rate_dict = dict()
        for rule in self.model.getListOfRules():
            if isinstance(rule, libsbml.RateRule):
                self.rate_dict[rule.getVariable()] = RateRule(
                    rule.getVariable(), rule.getFormula()
                )

    def getreactions(self):
        self.reaction_dict = dict()
        for reaction in self.model.getListOfReactions():
            reaction_name = reaction.getId()
            second_reaction_name = reaction.getName()
            kinetic_law = reaction.getKineticLaw().getFormula()
            reactants = self.get_and_set(reaction_name, reaction.getListOfReactants(), "r")
            products = self.get_and_set(reaction_name, reaction.getListOfProducts(), "p")
            modifiers = self.get_and_set_modifier(reaction, reaction_name)
            parameters = []
            list_of_parameters = list(filter(lambda x: isinstance(x, libsbml.Parameter), reaction.getListOfAllElements()))
            # Devo vedere se ci sono parametri locali alla reazione
            for param in list_of_parameters:
                self.parameter_dict[param.getId()] = Parameter(
                    param.getId(), # Nome
                    param.getValue(), # Valore
                    param.getConstant() # Se è costante oppure no
                )
                parameters.append(param.getId())
            self.reaction_dict[reaction_name] = Reaction(
                reaction_name, second_reaction_name, reactants, 
                products, modifiers, parameters, kinetic_law
            )
        
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


def save_modelica(modelica_model, modelica_file):
    try:
        stream = open(modelica_file, mode="x")
    except FileExistsError:
        stream = open(modelica_file, mode="w")
    stream.write(modelica_model)
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


def run(file, output_directory):
	sbmlext = SBMLExtrapolator(file)
	sbmlmodel = SBMLModel(
		sbmlext.nome, 
		sbmlext.comp_dict, 
		sbmlext.species_dict,
		sbmlext.parameter_dict,
		sbmlext.assignment_dict,
		sbmlext.reaction_dict,
		sbmlext.rate_dict
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
	save_modelica(modelica_translation, modelica_file)


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