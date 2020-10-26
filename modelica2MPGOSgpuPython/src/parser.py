import xml.etree.ElementTree as ET
import variables
from tagclasses import tagclasses
import exceptions.builtExceptions
from variables import *


# ----------------------------------------------------- # CLASSI PER IL PARSING # ------------------------------------------------------ #


class Parser:
    """ Classe che esegue il parser dell'XML """
    def __init__(self, filename):
        self.root = ET.parse(filename).getroot()
        self.dynamic_equations = {"equations": [], "events": []}
        self.binding_equations = []
        self.initial_equations = []
        self.scalar_variables  = []
    
    @staticmethod
    def getTagElementByName(tag_name, tag_root):
        """
        Si estrapolano dall'XML tutti i tag che matchano il nome dato in input
        :param str tag_name: il nome del tag che si vuol estrarre
        :param str tag_root: Il tag radice di tutti i tag
        """
        return list(filter(lambda x: x.tag == tag_name, list(tag_root)))[0]

    
    def parse_scalar_variables(self):
        """ Esegue il parsing di tutti i tag interi a <ModelVariables> """
        scalar_valriable_roottag = Parser.getTagElementByName("ModelVariables", self.root)
        for x in scalar_valriable_roottag:
            self.scalar_variables.append(variables._parsetag_var(x))
            print(self.scalar_variables[-1])
    
    def parse_dynamic_equations(self):
        """ Esegue il parsing di tutti i tag <equ:DynamicEquations> """
        dynamic_equations_roottag = Parser.getTagElementByName(f"{tagclasses.EQUATION_NS}DynamicEquations", self.root)
        for x in dynamic_equations_roottag:
            # Per adesso parsiamo le equazioni
            if x.tag == f"{tagclasses.EQUATION_NS}Equation":
                eq = tagclasses._parsetag_eq(x)
                self.dynamic_equations["equations"].append(eq)
                print(eq)


if __name__ == "__main__":
    p = Parser("./XMLs/BIOMD0000000005.xml")
    p.parse_scalar_variables()