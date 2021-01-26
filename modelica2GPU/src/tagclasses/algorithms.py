import math
import exceptions.builtExceptions
from tagclasses.variables import *
import xml.etree.ElementTree as ET
from tagclasses.dynequations import *
from tagclasses.dynequations import _parsetag_eq
from tagclasses.genop import *


FUNCTIONS_NS  = "{https://svn.jmodelica.org/trunk/XML/daeFunctions.xsd}"    # Namespace per le funzioni e gli algoritmi


class Assign:
    """ classe che rappresenta il tag <fun:Assign> ... </fun:Assign> """
    def __init__(self, assign_tag, variables_dict, function_dict=dict()):
        self.assign_tag = assign_tag
        self.variables_dict = variables_dict
        self.function_dict = function_dict
        self.left, self.right = self._create_assignement()


    def _create_assignement(self):
        """ Costruisce la parte sinistra e destra dell'assegnamento """
        # Assign è un operatore binario di conseguenza avrà solo due sottotag
        # di cui il primo è un Identifier, mentre il secondo è Expression
        indentifier_tag, exp_tag = self.assign_tag[0], self.assign_tag[1]
        # L'identifier lo possiamo prendere direttamente da dynequations
        identifier_str = _parsetag_eq(indentifier_tag, self.variables_dict, self.function_dict)
        # L'Expression lo prendiamo dalla funzione _parsealgorithm_tag
        exp_str = _parsealgorithm_tag(exp_tag, self.variables_dict, self.function_dict)
        return identifier_str, exp_str

    
    def __str__(self): return f"{self.left.__str__()}={self.right.__str__()};"


class Expression(UnaryOperator):
    """ classe che rappresenta il tag <fun:Expression> """
    def __init__(self, value):
        super().__init__(value)
    
    def __str__(self): return self.value.__str__()


class WhenAlgorithm:
    """ classe che rappresenta il tag <fun:When>"""
    def __init__(self, when_tag, variables_dict, functions):
        self.when_tag = when_tag
        self.variables_dict = variables_dict
        self.functions_dict = functions
        self.condition, self.assignements = self._parsewhen_tag()
    

    def _parsewhen_tag(self):
        """ Parsa il tag when estrapolando le condizioni e l'assegnamento associato """
        # Come prima cosa parso le condizioni del when
        identifier_list = self.when_tag[0].findall("{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}Identifier")
        condition = Identifier(identifier_list[0], self.variables_dict) if len(identifier_list) == 1 \
                    else When.parsecondition(identifier_list, self.variables_dict)
        # A differenza del When nelle equazioni il quale contiene un tag differente
        # per ogni equazione all'interno dell'evento, nell'algorithm tutti gli 
        # assegnamenti che ci sono al suo interno vengono inseriti tutti insieme.
        statements = []
        for assign_tag in self.when_tag[1]:
            assign = _parsealgorithm_tag(assign_tag, self.variables_dict, self.functions_dict)
            # Se esiste il $PRE della variabile corrente alla sinistra dell'assegnamento 
            # allora devo aggiornarlo con il valore corrente.
            try:
                qualifiedname = None
                for k, v in self.variables_dict.items():
                    if v.createMPGOSname() == assign.left.__str__():
                        qualifiedname = v.qualifiedName
                pre = self.variables_dict["$PRE." + qualifiedname].createMPGOSname()
                statements.append(Equation(pre, assign.left))
            except KeyError:
                pass
            statements.append(assign)
        return condition, statements
    

    def __str__(self):
        return "if (%s){\n%s\n    }" % (
            self.condition,
            "\n".join([" "*8 + str(x) for x in self.assignements])
        )


class IfThenElseifThenElse:
    def __init__(self, if_tag, variables_dict, functions_dict=None):
        self.if_tag = if_tag
        self.variables_dict = variables_dict
        self.functions_dict = functions_dict

    def check_type(self):
        """ Controlla il tipo di If. Se ritorna True è inline altrimenti è multi-line """
        return list(self.if_tag.find(F"{FUNCTIONS_NS}ElseIf")) == []

    def _parse_if(self):
        # Come prima cosa controlliamo che sia inline oppure no.
        # Questo lo possiamo controllare grazie alla presenza, o meno, del tag {Function}ElseIf
        # Se esiste allora è multi-line, altrimenti è in-line.
        if self.check_type():
            return _parsetag_eq(self.if_tag, self.variables_dict, self.functions_dict)
        
        if_condition = _parsetag_eq(self.if_tag[0][0], self.variables_dict, self.functions_dict).__str__()
        if_statement = _parsealgorithm_tag(self.if_tag[1][0], self.variables_dict, self.functions_dict).__str__()

        elseif_condition, elseif_statements = [], []
        for elseif_tag in self.if_tag.iter(F"{FUNCTIONS_NS}ElseIf"):
            elseif_condition.append(_parsetag_eq(elseif_tag[0][0], self.variables_dict, self.functions_dict).__str__())
            elseif_statements.append(_parsealgorithm_tag(elseif_tag[1], self.variables_dict, self.functions_dict).__str__())
        
        else_tag = list(self.if_tag.iter(f"{FUNCTIONS_NS}Else"))
        if else_tag:
            else_statement = _parsealgorithm_tag(else_tag[0][0], self.variables_dict, self.functions_dict).__str__()

            return [(if_condition, if_statement), (elseif_condition, elseif_statements), else_statement]

        return [(if_condition, if_statement), (elseif_condition, elseif_statements)]

    def __str__(self):
        result = self._parse_if()
        if_tuple, elseif_tuple = result[0], result[1]
        if_str = f"if ({if_tuple[0]})" + "{\n" + " "*8 + if_tuple[1] + "\n    } "
        elseif_format_str = "else if (%s) {\n" + " "*8 + "%s" + "\n    } "
        esleif_str = ""
        for i in range(len(elseif_tuple[0])):
            elseif_condition = elseif_tuple[0][i]
            elseif_statement = elseif_tuple[1][i]
            esleif_str += elseif_format_str % (elseif_condition, elseif_statement)
        
        if len(result) == 3:
            else_elmt = result[-1]
            else_str = "else {\n" + else_elmt + "\n    }\n"
            return if_str + esleif_str + else_str
        
        return if_str + esleif_str + "\n"


def _parsealgorithm_tag(tag, variables_dict, function_dict=dict()):
    """ Parsing degli algoritmi """
    if tag.tag == f"{FUNCTIONS_NS}Assign": return Assign(tag, variables_dict, function_dict)
    if tag.tag == f"{FUNCTIONS_NS}Expression": return _parsetag_eq(tag[0], variables_dict, function_dict)
    if tag.tag == f"{FUNCTIONS_NS}Assertion": return _parsetag_eq(tag, variables_dict, function_dict)
    if tag.tag == f"{FUNCTIONS_NS}If": return IfThenElseifThenElse(tag, variables_dict, function_dict)