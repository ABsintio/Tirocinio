import xml.etree.ElementTree as ET
import variables
from tagclasses import tagclasses
import exceptions.builtExceptions
import variables


# ----------------------------------------------------- # CLASSI PER IL PARSING # ------------------------------------------------------ #


class Parser:
    """ Classe che esegue il parser dell'XML """
    def __init__(self, filename):
        self.root = ET.parse(filename).getroot()
        self.dynamic_equations = {"equations": [], "events": []}
        self.binding_equations = []
        self.initial_equations = []
        self.scalar_variables  = []

    def parse_scalar_variables(self):
        """ Esegue il parsing di tutti i tag interi a <ModelVariables> """


    def parse_dynamic_equations(self):
        """ Esegue il parsing di tutti i tag <equ:DynamicEquations> """
        dynamic_equations_roottag = list(filter(lambda x: x.tag == f"{tagclasses.EQUATION_NS}DynamicEquations", list(self.root)))[0]
        for x in dynamic_equations_roottag:
            # Per adesso parsiamo le equazioni
            if x.tag == f"{tagclasses.EQUATION_NS}Equation":
                eq = tagclasses._parsetag_eq(x)
                self.dynamic_equations["equations"].append(eq)
                print(eq)
            # Dopo parsiamo gli eventi (Ossia gli When operator)





if __name__ == "__main__":
    p = Parser("./XMLs/BouncingBall.xml")
    p.parse_dynamic_equations()