import xml.etree.ElementTree as ET
import variables
from tagclasses import tagclasses
import exceptions.builtExceptions


# ----------------------------------------------------- # CLASSI PER IL PARSING # ------------------------------------------------------ #


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
        dynamic_equations_roottag = list(filter(lambda x: x.tag == f"{tagclasses.EQUATION_NS}DynamicEquations", list(self.root)))[0]
        for x in dynamic_equations_roottag.iter(f"{tagclasses.EQUATION_NS}Equation"):
            print(tagclasses._parsetag(x))





if __name__ == "__main__":
    p = Parser("./XMLs/MyModel.xml")
    p.parse_dynamic_equations()