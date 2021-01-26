from tagclasses.algorithms import *
from tagclasses.algorithms import _parsealgorithm_tag
import re


# ----------------------------------------- # CLASSI PER IL PARSE DELLE FUNZIONI  # ----------------------------------------- #


class Function:
    """ Classe che rappresenta una funzione definita dall'utente estrapolata da <fun:Function> ... </fun:Function> """
    def __init__(self, name, inputs, output, assign_list):
        self.name = name        # Nome della funzione
        self.inputs = inputs    # Inputs come coppia (nome, tipo)
        self.MPGOS_inputs = []
        self.output = output    # Output come coppia singola (nome, tipo)
        self.assign_list = assign_list    
        
        # L'algoritmo come sequenza di assign (senza loop, senza if annidati e senza nient'altro)
        self.algorithm = "\n".join([x.__str__() for x in assign_list])
    
    def __str__(self): return f"{self.name}(" + ",".join([x for x in self.MPGOS_inputs]) + ")" 
    
    def _forcpp(self): return self.name + f"(output={self.output}, inputs={self.inputs}) do\n\t{self.algorithm}\ndone"

    def setinput(self, inputs): self.MPGOS_inputs = inputs


# ----------------------------------------- # FUNZIONE PER IL PARSING DELLE FUNZIONI # ----------------------------------------- #
        

def _parsetag_fun(tag, variables_dict, MPGOSparam_dict, functions_dict=dict()):
    """ Parsa una singola funzione e crea un'istanza di tipo Function """
    fun_name = QualifiedName(tag[0]).__str__().split(".")[-1]                      # Prima prendo il nome della funzione
    output_var_name = (QualifiedName(tag[1][0]).__str__(), tag[1].attrib['type'])  # Poi prendo l'unica variabil di output
    # Poi parso tutte le variabili di input
    inputs_var = []
    for input_tag in tag.iter("{https://svn.jmodelica.org/trunk/XML/daeFunctions.xsd}InputVariable"):
        inputs_var.append((QualifiedName(input_tag[0]).__str__(), input_tag.attrib['type']))
    # Infine parso l'algoritmo
    assign_list = []
    alg_tag = tag.find("{https://svn.jmodelica.org/trunk/XML/daeFunctions.xsd}Algorithm")
    for assign_tag in alg_tag:
        equation = _parsealgorithm_tag(assign_tag, variables_dict, functions_dict)
        
        # Controlliamo che l'equazione parsata non abbia variabili sPAR, ACC oppure X o ACCi
        # In quanto potrebbe accadere che la definizione di funzione contenga variabili realmente 
        # esistenti nel modello e che quindi vengano tradotte. Se succede questo allora le 
        # ritraduciamo con il loro nome originale.
        involved_vars = re.finditer(r"(ACC|sPAR|X|ACCi)\[[0-9]+\]", equation.__str__())
        for var in involved_vars:
            var_name = MPGOSparam_dict[var.group()].nome
            equation = equation.__str__().replace(var.group(), var_name)
            
        assign_list.append(equation)

    return Function(fun_name, inputs_var, output_var_name, assign_list)