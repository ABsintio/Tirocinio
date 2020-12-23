from tagclasses.dynequations import *
from tagclasses.dynequations import _parsetag_eq


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


class Assign(BinaryOperator):
    """ classe che rappresenta il tag <fun:Assign> ... </fun:Assign> """
    def __init__(self, l, r):
        super().__init__(l, r)
    
    def __str__(self): return self.left.__str__() + "=" + self.right.__str__() + ";"


# Faccio l'update dell'insieme delle classi per gli operatori
OPERATOR_CLASSES['{https://svn.jmodelica.org/trunk/XML/daeFunctions.xsd}Assign'] = (Assign, 0)


# ----------------------------------------- # FUNZIONE PER IL PARSING DELLE FUNZIONI # ----------------------------------------- #
        

def _parsetag_fun(tag, variables_dict):
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
        assign_list.append(Equation(Identifier(assign_tag[0]), _parsetag_eq(assign_tag[1][0], variables_dict)))
    return Function(fun_name, inputs_var, output_var_name, assign_list)