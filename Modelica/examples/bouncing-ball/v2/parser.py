import xml.etree.ElementTree as ET
import variables
import operators
import exceptions.builtExceptions


# ----------------------------------------------------- # XML NAMESPACES # ------------------------------------------------------------- #


EQUATION_NS   = "{https://svn.jmodelica.org/trunk/XML/daeEquations.xsd}"    # Namespace per Dynamic, Bingind e Initial Equations
EXPRESSION_NS = "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}"  # Namespace per le espressioni (operatori)
FUNCTIONS_NS  = "{https://svn.jmodelica.org/trunk/XML/daeFunctions.xsd}"    # Namespace per le funzioni e gli algoritmi
OPTIMIZ_NS    = "{https://svn.jmodelica.org/trunk/XML/daeOptimization.xsd}" # Namespace per il tag di ottimizzazione


# ----------------------------------------------------- # CLASSI PER IL PARSING # ------------------------------------------------------ #


class Equation(operators.BinaryOperator):
    def __init__(self, l, r):
        super().__init__(l, r)
    
    def __str__(self): return self.l.__str__() + "=" + self.r.__str__()


class Parser:
    """ Classe che esegue il parser dell'XML """
    def __init__(self, filename):
        self.root = ET.parse(filename).getroot()
        self.dynamic_equations = []
        self.binding_equations = []
        self.initial_equations = []
        self.scalar_variables  = []
    
    def parse_dynamic_equations(self):
        """ Esegue il parsing di tutti i tag <equ:DynamicEquations> """
        dynamic_equations_roottag = list(filter(lambda x: x.tag == f"{EQUATION_NS}DynamicEquations", list(self.root)))[0]
        for x in list(dynamic_equations_roottag):
            for y in list(x):
                for z in list(y):
                    print(z.tag)


if __name__ == "__main__":
    p = Parser("BouncingBall.xml")
    p.parse_dynamic_equations()