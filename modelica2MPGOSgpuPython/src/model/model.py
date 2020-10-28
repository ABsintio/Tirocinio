from tagclasses.variables import *
import re


class Model:
    """ Rappresenta in modo schematico e astratto il modello in studio """
    def __init__(self, equations, events, algorithms, variables_dict):
        self.odes       = Model.getODE(equations, variables_dict)                             # Crea il sistema di ODE
        self.init       = Model.getinit(variables_dict)                                       # Prendo le equazioni iniziali
        self.events     = events                                                              # Prendo gli eventi
        # Prendo le altre equazioni rimanenti
        self.othereq    = Model.getOtherEq(algorithms + equations, self.init, variables_dict)
        self.variables  = list(variables_dict.values())                                       # Prendo la lista delle variabili


    @staticmethod
    def getODE(equations_list, variables_dict):
        """ Prende da tutta la lista di equazioni, soltanto quelle che sono della forma F[i] = <expr> """
        odes = []
        for eq in equations_list:
            lhs = eq.left.__str__()
            var = variables_dict[lhs]
            if var.category == VariableCategory.DERIVATIVE:
                odes.append(eq)
        # Elimino le ODE dalle equazioni normali
        for ode in odes: equations_list.remove(ode)
        return odes


    @staticmethod
    def getinit(variables_dict):
        """ Dato il dizionario con tutte le variabili crea un lista di equazioni iniziali """
        init_eqs = {"initial": [], "initialization": []}
        for k, value in variables_dict.items():
            varname, ivalue = value.nome, value.init
            # In caso troviamo dei "." facciamo il replace con "_"
            if value.category != VariableCategory.DERIVATIVE and ivalue is not None:
                varname = varname.replace(".", "_")
                # Se l'equazione iniziale è del tipo x = <numero> allora la inseriamo nel
                # file con tutte le equazioni iniziali, ossia il Model.cu, altrimenti la 
                # inseriamo nella funzione PerThread_Initialization del Model_SystemDefinition.cuh
                element = ("initial", f"{varname} = {ivalue}") if re.match(r"\d+\.*\d*", ivalue) \
                          else ("initialization", f"{k} = {ivalue}")
                init_eqs[element[0]].append(element[1])
        return init_eqs


    @staticmethod
    def getOtherEq(equations, init_equations, variables_dict):
        """ Prende le equazioni restanti e le divide tra quelle che scatenano eventi e quelle normali """
        othereq_dict = {"trigger": [], "normal": []}
        for equ in equations:
            lhs = variables_dict[equ.left.__str__()].nome
            typeeq = 'trigger' if re.match(r"\$whenCondition\d+", lhs) else 'normal'
            if not equ.right.__str__().startswith("$START") and not equ.right.__str__().startswith("$PRE"):
                # Se la variabile parte sinistra dell'equazione non ha un valore iniziale allora inseriamo
                # tale equazione come valore iniziale nella funzione PerThread_Initialization
                if typeeq != 'trigger' and variables_dict[str(equ.left)].init is None:
                    init_equations['initialization'].append(str(equ))
                # Se la parte sinistra dell'equazione matcha $whenCondition<numero> allora è un trigger
                othereq_dict[typeeq].append(equ)
            
        return othereq_dict


    def __str__(self):
        return "MODEL\n\nVARIABLES\n"  + "\n".join([x.__str__() for x in self.variables]) + \
               "\n\nODE SYSTEM\n"      + "\n".join([x.__str__() for x in self.odes])      + \
               "\n\nINITIAL EQUATIONS\n" + "\n".join([f"({x}, {y.__str__()})" for x in self.init for y in self.init[x]]) + \
               "\n\nEVENTS\n"          + "\n".join([x.__str__() for x in self.events])    + \
               "\n\nOTHER EQUATIONS\n"   + "\n".join([f"({x}, {y.__str__()})" for x in self.othereq for y in self.othereq[x]])