from tagclasses.variables import *


def backindef(MPGOSname, variables_dict):
    """ 
    Nel caso in cui il valore iniziale sia diverso da un numero, allora
    deve per forza essere il nome di una variabile il cui valore iniziale
    è o un numero oppure a sua volta un altro MPGOSname. L'obiettivo è 
    quindi quello di risalire al valore numerico che inizializza quella variabile.
    Ovviamente questo valore solo per quelle initial equations del tipo x = y, 
    ma non per x = <expr>.
    """
    


class Model:
    """ Rappresenta in modo schematico e astratto il modello in studio """
    def __init__(self, equations, events, algorithms, variables_dict):
        self.odes = Model.getODE(equations, variables_dict)
        self.init = Model.getinit(variables_dict)
        self.events     = events
        self.algorithms = algorithms
        self.variables  = variables_dict

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
        init_eqs = []
        for value in variables_dict.values():
            varname, ivalue = value.nome, value.init
            # In caso troviamo dei "." facciamo il replace con "_"
            if value.category != VariableCategory.DERIVATIVE and ivalue is not None:
                varname = varname.replace(".", "_")
                init_eqs.append(f"{varname} = {ivalue}")
        return init_eqs
