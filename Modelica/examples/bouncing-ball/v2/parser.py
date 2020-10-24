import xml.etree.ElementTree as ET
import variables
import tagclasses.tagclasses
import exceptions.builtExceptions


# ----------------------------------------------------- # XML NAMESPACES # ------------------------------------------------------------- #


EQUATION_NS   = "{https://svn.jmodelica.org/trunk/XML/daeEquations.xsd}"    # Namespace per Dynamic, Bingind e Initial Equations
EXPRESSION_NS = "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}"  # Namespace per le espressioni (operatori)
FUNCTIONS_NS  = "{https://svn.jmodelica.org/trunk/XML/daeFunctions.xsd}"    # Namespace per le funzioni e gli algoritmi
OPTIMIZ_NS    = "{https://svn.jmodelica.org/trunk/XML/daeOptimization.xsd}" # Namespace per il tag di ottimizzazione

# ----------------------------------------------------- # CLASSI PER IL PARSING # ------------------------------------------------------ #


class Parser:
    """ Classe che esegue il parser dell'XML """
    def __init__(self, filename):
        self.root = ET.parse(filename).getroot()
        self.dynamic_equations = []
        self.binding_equations = []
        self.initial_equations = []
        self.scalar_variables  = []
    
    def recursive_eqbuild(self, tag_element):
        """ Ricorsivamente ricostruisce l'equazione come albero delle classi operators """
        if tag_element.tag == f"{EQUATION_NS}Equation":
            subtag_element = list(list(tag_element)[0])
            return Equation(self.recursive_eqbuild(subtag_element[0]), self.recursive_eqbuild(subtag_element[1]))
        if tag_element.tag == f"{EXPRESSION_NS}Identifier":
            return Identifier(tag_element)
        if tag_element.tag in LITERALS:
            return tag_element.text
        try:
            op_class, arity = operators.getclass(tag_element.tag)
        except KeyError:
            raise exceptions.builtExceptions.OperatorNotFoundException(tag_element.tag)
        if not arity:
            return op_class(self.recursive_eqbuild(tag_element[0]), self.recursive_eqbuild(tag_element[1]))
        return op_class(self.recursive_eqbuild(tag_element[0]))

    def parse_dynamic_equations(self):
        """ Esegue il parsing di tutti i tag <equ:DynamicEquations> """
        dynamic_equations_roottag = list(filter(lambda x: x.tag == f"{EQUATION_NS}DynamicEquations", list(self.root)))[0]
        for x in list(dynamic_equations_roottag):
            print(self.recursive_eqbuild(x))

if __name__ == "__main__":
    p = Parser("BouncingBall.xml")
    p.parse_dynamic_equations()