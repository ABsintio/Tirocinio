import math
import exceptions.builtExceptions
from tagclasses.variables import *
import xml.etree.ElementTree as ET
from tagclasses.genop import *


# ----------------------------------------------------- # XML NAMESPACES # ------------------------------------------------------------- #


EQUATION_NS   = "{https://svn.jmodelica.org/trunk/XML/daeEquations.xsd}"    # Namespace per Dynamic, Bingind e Initial Equations
EXPRESSION_NS = "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}"  # Namespace per le espressioni (operatori)
OPTIMIZ_NS    = "{https://svn.jmodelica.org/trunk/XML/daeOptimization.xsd}" # Namespace per il tag di ottimizzazione
FUNCTIONS_NS  = "{https://svn.jmodelica.org/trunk/XML/daeFunctions.xsd}"    # Namespace per le funzioni e gli algoritmi
LITERALS = [
    f"{EXPRESSION_NS}RealLiteral",
    f"{EXPRESSION_NS}IntegerLiteral", 
    f"{EXPRESSION_NS}BooleanLiteral",
    f"{EXPRESSION_NS}StringLiteral"
]

# ----------------------------------------- # DEFINIZIONE OPERATORI MATEMATICI SEMPLICI  # ----------------------------------------- #


class Add(BinaryOperator):
    """ Rappresenta l'operatore di somma """
    def __init__(self, l, r):
        super().__init__(l, r)
    
    def __str__(self): return "(" + self.left.__str__() + " + " + self.right.__str__() + ")"


class Sub(BinaryOperator):
    """ Rappresenta l'operatore di sottrazione """
    def __init__(self, l, r):
        super().__init__(l, r)
    
    def __str__(self): return "(" + self.left.__str__() + " - " + self.right.__str__() + ")"


class Mul(BinaryOperator):
    """ Rappresenta l'operatore di moltiplicazione """
    def __init__(self, l, r):
        super().__init__(l, r)
    
    def __str__(self): return "(" + self.left.__str__() + " * " + self.right.__str__() + ")"


class Div(BinaryOperator):
    """ Rappresenta l'operatore di divisione """
    def __init__(self, l, r):
        super().__init__(l, r)
    
    def __str__(self): return "(" + self.left.__str__() + " / " + self.right.__str__() + ")"


class Pow(BinaryOperator):
    """ Rappresenta l'operatore potenza """
    def __init__(self, l, r):
        super().__init__(l, r)
    
    def __str__(self): return "pow(" + self.left.__str__() + "," + self.right.__str__() + ")"


class Neg(UnaryOperator):
    """ Rappresenta l'operatore di negazione per una quantità algebrica """
    def __init__(self, value):
        super().__init__(value)

    def __str__(self): return "(-" + "(" + self.value.__str__() + "))"


# ----------------------------------------- # DEFINIZIONE OPERATORI BOOLEANI SEMPLICI  # ----------------------------------------- #


class And(BinaryOperator):
    """ Rappresenta l'operatore booleano and """
    def __init__(self, l, r):
        super().__init__(l, r)
    
    def __str__(self): return "(" + self.left.__str__() + " && " + self.right.__str__() + ")"


class Or(BinaryOperator):
    """ Rappresenta l'operatore booleano or """
    def __init__(self, l, r):
        super().__init__(l, r)
    
    def __str__(self): return "(" + self.left.__str__() + " || " + self.right.__str__() + ")"


class Not(UnaryOperator):
    """ Rappresenta l'operatore booleano not """
    def __init__(self, value):
        super().__init__(value)

    def __str__(self): return "(" + "!" + self.value.__str__() + ")"


# ----------------------------------------- # DEFINIZIONE OPERATORI DI RELAZIONE # ----------------------------------------- #


class LogLt(BinaryOperator):
    """ Rappresenta l'operatore di minore """
    def __init__(self, l, r):
        super().__init__(l, r)
    
    def __str__(self): return self.left.__str__() + " < " + self.right.__str__()


class LogLeq(BinaryOperator):
    """ Rappresenta l'operatore di minore o uguale """
    def __init__(self, l, r):
        super().__init__(l, r)
    
    def __str__(self): return self.left.__str__() + " <= " + self.right.__str__()


class LogGt(BinaryOperator):
    """ Rappresenta l'operatore di maggiore """
    def __init__(self, l, r):
        super().__init__(l, r)
    
    def __str__(self): return self.left.__str__() + " > " + self.right.__str__()


class LogGeq(BinaryOperator):
    """ Rappresenta l'operatore di maggiore o uguale """
    def __init__(self, l, r):
        super().__init__(l, r)
    
    def __str__(self): return self.left.__str__() + " >= " + self.right.__str__()


class LogEq(BinaryOperator):
    """ Rappresenta l'operatore di uguaglianza """
    def __init__(self, l, r):
        super().__init__(l, r)
    
    def __str__(self): return self.left.__str__() + " == " + self.right.__str__()


class LogNeq(BinaryOperator):
    """ Rappresenta l'operatore di uguaglianza """
    def __init__(self, l, r):
        super().__init__(l, r)
    
    def __str__(self): return self.left.__str__() + " != " + self.right.__str__()


# ----------------------------------------- # DEFINIZIONE FUNZIONI PRINCIPALI  # ----------------------------------------- #


class Sin(UnaryOperator):
    """ Rappresenta la funzione seno """
    def __init__(self, value):
        super().__init__(value)
    
    def __str__(self): return "sin(" + self.value.__str__() + ")"


class Asin(UnaryOperator):
    """ Rappresenta la funzione arcoseno """
    def __init__(self, value):
        super().__init__(value)
    
    def __str__(self): return "asin(" + self.value.__str__() + ")"


class Sinh(UnaryOperator):
    """ Rappresenta la funzione seno iperbolico """
    def __init__(self, value):
        super().__init__(value)
    
    def __str__(self): return "sinh(" + self.value.__str__() + ")"


class Cos(UnaryOperator):
    """ Rappresenta la funzione coseno """
    def __init__(self, value):
        super().__init__(value)
    
    def __str__(self): return "cos(" + self.value.__str__() + ")"


class Acos(UnaryOperator):
    """ Rappresenta la funzione arcocoseno """
    def __init__(self, value):
        super().__init__(value)
    
    def __str__(self): return "acos(" + self.value.__str__() + ")"


class Cosh(UnaryOperator):
    """ Rappresenta la funzione coseno iperbolico """
    def __init__(self, value):
        super().__init__(value)
    
    def __str__(self): return "cosh(" + self.value.__str__() + ")"


class Tan(UnaryOperator):
    """ Rappresenta la funzione tangente """
    def __init__(self, value):
        super().__init__(value)
    
    def __str__(self): return "tan(" + self.value.__str__() + ")"


class Atan(UnaryOperator):
    """ Rappresenta la funzione arcotangente """
    def __init__(self, value):
        super().__init__(value)
    
    def __str__(self): return "atan(" + self.value.__str__() + ")"


class Tanh(UnaryOperator):
    """ Rappresenta la funzione tangente iperbolica """
    def __init__(self, value):
        super().__init__(value)
    
    def __str__(self): return "tanh(" + self.value.__str__() + ")"


class Sqrt(UnaryOperator):
    """ Rappresenta la funzione radice """
    def __init__(self, value):
        super().__init__(value)
    
    def __str__(self): return "sqrt(" + self.value.__str__() + ")"


class Exp(UnaryOperator):
    """ Rappresenta la funzione esponenziale """
    def __init__(self, value):
        super().__init__(value)

    def __str__(self): return Pow(math.e, self.value).__str__()


class Log(UnaryOperator):
    """ Rappresenta la funzione logaritmo """
    def __init__(self, value):
        super().__init__(value)
    
    def __str__(self): return f"log({self.value.__str__()})"


class Log10(UnaryOperator):
    """ Rappresenta la funzione logaritmo in base 10 """
    def __init__(self, value):
        super().__init__(value)
    
    def __str__(self): return f"log10({self.value.__str__()})"


class Floor(UnaryOperator):
    """ Rappresenta l'operatore di floor """
    def __init__(self, value):
        super().__init__(value)

    def __str__(self): return f"floor({self.value.__str__()})"

class Ceil(UnaryOperator):
    """ Rappresenta l'operatore di ceil """
    def __init__(self, value):
        super().__init__(value)

    def __str__(self): return f"ceil({self.value.__str__()})"


class Abs(UnaryOperator):
    """ Rappresenta l'operatore di valore assoluto """
    def __init__(self, value):
        super().__init__(value)

    def __str__(self): return f"abs({self.value.__str__()})"

# ----------------------------------------- # CLASSI CHE DEFINISCONO ALTRI TAG GENERICI # ----------------------------------------------- #


class Max:
    """ Rappresenta l'operatore di massimo """
    def __init__(self, function_dict, max_tag, variables_dict):
        self.max_tag = max_tag
        self.values = self.get_values(variables_dict, function_dict)
        
    def get_values(self, variabile_dict, functions_dict):
        values = []
        for child in self.max_tag:
            values.append(_parsetag_eq(child, variabile_dict, functions_dict))
        return values

    def __str__(self): return "max(%s)" % (",".join([str(x) for x in self.values]))


class Equation(BinaryOperator):
    """ Rappresenta il tag dell'equazione """
    def __init__(self, l, r):
        super().__init__(l, r)
    
    def __str__(self): return self.left.__str__() + "=" + self.right.__str__() + ";"


class QualifiedName:
    """ Rappresenta il tag <QualifiedName>...</QualifiedName> """
    def __init__(self, id_tag_element, variables_dict=None):
        self.id_tag_element = id_tag_element
        self.variables_dict = variables_dict
        self.indexs = None
    
    def _parse_qnp(self):
        """ Parsa i tag <exp:QualifiedNamePart> sia auto-chiusi che con <exp:ArraySubscripts> """
        qualified_name_parts = []
        for tag in list(self.id_tag_element):
            qualified_name_parts.append(QualifiedNamePart(tag, self.variables_dict).__str__())
        return qualified_name_parts
    
    def __str__(self): 
        string = ".".join(self._parse_qnp())
        # Se trovo una variabile di tipo PRE, allora devo considerare 
        # il fatto di caricarla tra tutte le altre variabili
        # Ovviamente nel momento della creazione, la variabile pre deve avere
        # tutte le caratteristiche della variabile alla quale fa riferimento
        # Importante fare attenzione al fatto che qui stiamo inserendo specificatamente
        # solo variabili di tipo $PRE. Questo perchè si presuppone che tutte le variabili
        # del modello siano state parsate durante la prima fase di parsing del tag <ModelVariable>
        if string.startswith("$PRE") and string not in self.variables_dict:
            var = self.variables_dict[string[5:]]
            obj = var.__class__ if not isinstance(var, X) else ACC
            obj_list = [x.id for x in self.variables_dict.values() if isinstance(x, obj)]
            self.indexs = obj_list[-1] + 1 if obj_list else 0
            pre_var = obj(string, self.indexs, string, None, var.category, var.init)
            self.variables_dict[string] = pre_var
        return self.variables_dict[string].createMPGOSname() if self.variables_dict is not None and string in self.variables_dict \
               else string


class QualifiedNamePart:
    def __init__(self, qnp_tag, variables_dict):
        self.qnp_tag = qnp_tag
        self.variables_dict = variables_dict
    
    def _get_name(self):
        name = self.qnp_tag.attrib['name']
        if list(self.qnp_tag):
            for tag in list(self.qnp_tag):
                if tag.tag == f"{EXPRESSION_NS}ArraySubscripts":
                    indexes = []
                    for x in list(tag):
                        indexes.append(_parsetag_eq(x[0], self.variables_dict).__str__())
                    name += "[" + ",".join(indexes) + "]"
                elif tag.tag == f"{EXPRESSION_NS}QualifiedNamePart":
                    name += "." + QualifiedNamePart(tag, self.variables_dict).__str__()
        return name
    
    def __str__(self):
        return self._get_name()


class Identifier(QualifiedName):
    """ Rappresenta l'operatore di identificazione di una variabile in un'equazione """
    def __init__(self, id_tag_element, variables_dict=None):
        super().__init__(id_tag_element, variables_dict)


class Der:
    """ Rappresenta l'operatore di derivazione e quindi il tag <exp:Der>...</exp:Der> """
    def __init__(self, der_tag_element, variables_dict=None):
        
        self.super_str = Der(der_tag_element[0], variables_dict).__str__() if der_tag_element[0].tag == f"{EXPRESSION_NS}Der" else \
            QualifiedName(der_tag_element[0], None).__str__()
        self.variables_dict = variables_dict

    def __str__(self): 
        return self.variables_dict[f"der({self.super_str})"].createMPGOSname()


class Literal(UnaryOperator):
    """ Rappresenta il tag unario per i valori letterali. Quindi 1, 1.1, "1" """
    def __init__(self, value):
        super().__init__(value)
    
    def __str__(self): return self.value.__str__()


class Pre:
    """ Rappresenta l'operatore pre, che serve ad ottenere il valore precedente di una variabile """
    def __init__(self, function_dict, tag_id_element, variables_dict):
        self.tag_element = tag_id_element[0]
        self.tag_element.insert(0, ET.Element(f"{EXPRESSION_NS}QualifiedNamePart", {"name": "$PRE"}))
        self.variables   = variables_dict
    
    def __str__(self): return Identifier(self.tag_element, self.variables).__str__()


class Reinit(BinaryOperator):
    """ Rappresenta l'operatore reinit, che server per reinizializzare una variabile ad un dato valore """
    def __init__(self, l, r):
        super().__init__(l, r)
    
    def __str__(self): return Equation(self.left, self.right).__str__()


class Sample:
    """ Rappresenta l'operatore sample(start, interval) di Modelica """
    def __init__(self, function_dict, tag_id_element, variables_dict):
        self.tag_element = tag_id_element
        self.variables   = variables_dict
        self.value, self.new_var = self.createsample_str()
    
    def parse_interval(self):
        """ L'operatore sample(x, y) ha due elementi Real che devono essere presi """
        # E' bene immaginare, anche se non sia possibile, che uno (o entrambi)
        # dei due valori possa essere una equazione è quindi va parsata con 
        # la funzione apposita, ossia _parsetag_eq.
        start = _parsetag_eq(self.tag_element[1], self.variables)
        interval = _parsetag_eq(self.tag_element[2], self.variables)
        return (start, interval)


    def createsample_str(self): 
        values = self.parse_interval()
        # Dal momento che sample(1, n) vuol dire che un evento viene triggerato
        # ogni 1 + i * n, ho bisogno in qualche modo di tenermi in memoria quel 
        # contatore "i". Questo lo posso fare aggiungendo una variabile ACCi 
        # che ad ogni timeStep viene incrementata di 1. Quindi per aggiungere un 
        # sample devo creare il sample stesso, una nuova variabile e una nuova equazione.
        ACCi_vars = [v for k, v in self.variables.items() if isinstance(v, ACCi)]
        sample_acc_index = len(ACCi_vars)
        # Prima dobbiamo 'normalizzare' (ridurre a sole 2 cifre dopo la virgola) il valore di start 
        # e quello dell'intervallo. Il motivo principale della normalizzazione è che il solver utilizzato, 
        # ossia RK4 Runge-Kutta 4, presenta fixed time-step di 0.01 ottenendo istanti di tempo del tipo
        # k * 0.01 (k = 1, 2, 3, 4, ...). Di conseguenza avere siano uno start che un interval che superano
        # le due cifre dopo la virgola non avrebbe senso in quanto gli istanti di tempo memorizzati non
        # andranno mai a matchare il sample voluto.
        normalize_start = f"(round({values[0]} * 100) / 100)"
        normalize_interval = f"(round({values[1]} * 100) / 100)"
        sample_str = f"abs(T - ({normalize_start} + ACCi[{sample_acc_index}] * {normalize_interval})) < 9.0e-10" # Stringa
        # Se l'indice del nuovo ACCi non è un nuovo indice allora la variabile che dovrei
        # creare già esiste e di conseguenza non la devo riandare ad inserire.
        nome = f"sample_ACCi_{sample_acc_index}"
        sample_var = ACCi(nome, sample_acc_index, "sample_ACCi", None, VariableCategory.ALGEBRAIC, "0") # Variabile
        return sample_str, sample_var
    
    def __str__(self): return self.value


class Time(UnaryOperator):
    """ Rappesenta il tempo """
    def __init__(self, value):
        super().__init__(value)
    
    def __str__(self): return "T"


class IfThenElseInLine:
    """ Rappresenta il blocco di tag <fun:If>...</fun:If>"""
    def __init__(self, function_dict, if_tag_element, variables_dict):
        self.if_tag_element = if_tag_element
        self.function_dict  = function_dict
        self.variables_dict = variables_dict
    
    def parse_condition(self, condition_tag):
        """ Parsa il blocco condition """
        return _parsetag_eq(condition_tag, self.variables_dict, self.function_dict)
        
    def parse_statement1(self, statement_tag):
        """ Parsa il blocco statements """
        return _parsetag_eq(statement_tag, self.variables_dict, self.function_dict)

    def parse_statement2(self, else_tag):
        """ Parsa il blocco Else """
        return _parsetag_eq(else_tag, self.variables_dict, self.function_dict)

    def __str__(self):
        """ Costruzione della stringa com <condition> ? <statement1> : <statement2> """
        condition  = self.parse_condition(self.if_tag_element[0][0])
        statement1 = self.parse_statement1(self.if_tag_element[1][0])
        statement2 = self.parse_statement2(self.if_tag_element[2][0])
        return f"({condition.__str__()} ? {statement1.__str__()} : {statement2.__str__()})"


class FunctionCall:
    """ Classe che rappresenta il tag <exp:FunctionCall> ... <exp:FunctionCall> """
    def __init__(self, fun_dict, fun_call_tag, variables_dict):
        self.fun_call_tag   = fun_call_tag
        self.fun_dict       = fun_dict
        self.variables_dict = variables_dict 
    
    def _parsefuncall_tag(self):
        """ Parsa il tag <exp:FunctionCall> ... <exp:FunctionCall> """
        fun_name = QualifiedName(self.fun_call_tag[0], self.variables_dict).__str__().split(".")[-1]
        # Prendo gli input della funzione
        inputs_var = []
        for x in self.fun_call_tag[1]:
            # class_op, arity = getoperatorclass(x.tag)
            el = _parsetag_eq(x, self.variables_dict)
            inputs_var.append(el.__str__())
        # Controllo che la funzione non sia builtin (ad es. pow, sin, cos, tan, ...)
        try:
            if not fun_name in self.fun_dict:
                name = fun_name.capitalize()
                class_op, _ = getoperatorclass(f"{EXPRESSION_NS}{name}")
                return class_op(*inputs_var)
        except exceptions.builtExceptions.OperatorNotFoundException:
            pass
        return f"{fun_name}(" + ",".join([x for x in inputs_var]) + ")"
    
    def __str__(self): return self._parsefuncall_tag().__str__()


class When:
    """ Classe che rappresenta un tag <equ:When> ... </equ:When> """
    def __init__(self, when_tag, variables_dict, event_conditions, functions):
        self.when_tag = when_tag
        self.variables_dict = variables_dict
        self.event_conditions = [x for x in event_conditions]
        self.functions_dict = functions
        self.condition, self.equation = self._parsewhen_tag()

    @staticmethod
    def parsecondition(identifier_list, variables_dict):
        """ 
        Dal momento che le condizioni in or possono andare da 2 ad N è necessaria
        una funzione di appoggio che iterativamente/ricorsivamente costruisca N - 1
        oggetti OR concatenati tra di loro, ognuno contenente come parte, sia destra
        che sinistra, una variabile $whencondition. 
        """
        a, b = identifier_list[0], identifier_list[1]
        index = 2
        condition = Or(Identifier(a, variables_dict), Identifier(b, variables_dict))
        while index < len(identifier_list):
            a, b = condition, identifier_list[index]
            condition = Or(a, Identifier(b, variables_dict))
            index += 1
        return condition

    def _parsewhen_tag(self):
        """ Parsa il tag when estrapolando le condizioni e l'equzione associata """
        # Come prima cosa parsa le condizioni. La cosa principale è che 
        # è possibile avere più di una condizione. In quel caso tutte le condizioni
        # sono in OR, in quanto quelle in AND supponiamo siano gestite all'interno 
        # di variabili $whencondition.
        identifier_list = self.when_tag[0].findall("{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}Identifier")
        condition = Identifier(identifier_list[0], self.variables_dict) if len(identifier_list) == 1 \
                    else When.parsecondition(identifier_list, self.variables_dict)
        # Prende l'indice di un elemento dell'array se la condizione è già esistente, altrimenti len 
        identifier = -1
        for i in range(len(self.event_conditions)):
            string = " "*4 + f"EF[{i}] = (! ({condition.__str__()}))"
            if string in self.event_conditions:
                identifier = i
                break
        identifier = identifier if identifier != -1 else len(self.event_conditions)
        condition = (identifier, str(condition))
        # Una volta parsate le condizioni posso parsare l'equazione interna.
        equation = _parsetag_eq(self.when_tag[1], self.variables_dict, self.functions_dict)
        return condition, equation
    
    def __str__(self): return f"if (IDX == {self.condition[0]})" + "{\n" + f"\t    {self.equation}\n" + "    }"

    def setcondition(self, new_condition): self.condition = new_condition

    def setequation(self, new_equation): self.equation = new_equation


class Assertion:
    """ Classe che descrive l'operatore di assertion(<condizione>, "messaggio") """
    def __init__(self, functions_dict, assert_tag, variables_dict):
        self.assert_tag = assert_tag
        self.variables_dict = variables_dict
        self.functions_dict = functions_dict
    
    def _parse_tag(self):
        # Prendiamo la condizione
        condition_tag = self.assert_tag[0]
        return _parsetag_eq(condition_tag[0], self.variables_dict, self.functions_dict)
    
    def __str__(self): 
        condition = self._parse_tag()
        return f"if (! {condition})" + "{\n\tUDT = 1;\n}"


# ----------------------------------------- # FUNZIONE DI SELEZIONE DELLA CLASSE  # ----------------------------------------- #


"""
Il Dizionario OPERATOR_CLASSES presenta un insieme di classi che descrivono alcuni dei tag 
principali che è possibile trovare nell'XML. Dal momento che dovranno essere gestiti degli 
XML semplici e con alcune limitazioni, ad esempio considerando solo funzioni come pre, sample
e reinit, possiamo memorizzare alcuni tag che sono utilizzati molto spesso all'interno dell'XML.
Diciamo che genericamente avremo che tutti gli operatori che possiamo considerare unari sono 
caratterizzati dal numero 1, mentre tutti quelli binari dal numero 0. Tutti gli altri operatori
che hanno caratteristiche un pò diverse sono caratterizzati da numeri diversi e crescenti. 
Per esempio, Identifier è caratterizzato dal 2, mentre L'If dal 3. 
Documentazione: {http://www.diva-portal.org/smash/get/diva2:557431/FULLTEXT01}
"""
OPERATOR_CLASSES = {
    # UnaryOperator
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}Sin"            : (Sin,              1),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}Sinh"           : (Sinh,             1),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}Asin"           : (Asin,             1),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}Cos"            : (Cos,              1),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}Cosh"           : (Cosh,             1),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}Acos"           : (Acos,             1),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}Tan"            : (Tan,              1),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}Tanh"           : (Tanh,             1),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}Atan"           : (Atan,             1),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}Not"            : (Not,              1),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}Neg"            : (Neg,              1),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}Sqrt"           : (Sqrt,             1),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}Exp"            : (Exp,              1),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}Log"            : (Log,              1),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}Log10"          : (Log10,            1),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}floor"          : (Floor,            1),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}ceil"           : (Ceil,             1),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}Abs"            : (Abs,              1),
    # BinaryOperator
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}Add"            : (Add,              0),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}Sub"            : (Sub,              0),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}Mul"            : (Mul,              0),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}Div"            : (Div,              0),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}And"            : (And,              0),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}Or"             : (Or,               0),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}Pow"            : (Pow,              0),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}LogLt"          : (LogLt,            0),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}LogLeq"         : (LogLeq,           0),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}LogGt"          : (LogGt,            0),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}LogGeq"         : (LogGeq,           0),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}LogEq"          : (LogEq,            0),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}LogNeq"         : (LogNeq,           0),
    # Other generic tag classes
    "{https://svn.jmodelica.org/trunk/XML/daeEquations.xsd}Equation"         : (Equation,         0),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}Identifier"     : (Identifier,       2),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}RealLiteral"    : (Literal,          1),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}IntegerLiteral" : (Literal,          1),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}StringLiteral"  : (Literal,          1),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}BooleanLiteral" : (Literal,          1),
    "{https://svn.jmodelica.org/trunk/XML/daeFunctions.xsd}If"               : (IfThenElseInLine, 3),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}Pre"            : (Pre,              6),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}Reinit"         : (Reinit,           0),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}Time"           : (Time,             1),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}QualifiedName"  : (QualifiedName,    2),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}FunctionCall"   : (FunctionCall,     4),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}Der"            : (Der,              2),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}Sample"         : (Sample,           5),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}Max"            : (Max,              7),
    "{https://svn.jmodelica.org/trunk/XML/daeFunctions.xsd}Assertion"        : (Assertion,        8)
}


def getoperatorclass(tag):
    """ Dato in input un tag, ritorna un operatore """
    try:
        return OPERATOR_CLASSES[tag]
    except KeyError:
        raise exceptions.builtExceptions.OperatorNotFoundException(tag)


# ----------------------------------------- # FUNZIONE PER IL PARSING DELLE EQUAZIONI # ----------------------------------------- #


def _parsetag_eq(tag, variables_dict, function_dict=dict()):
    """
    Tale funzione prende in input un tag e crea un albero sintattico utilizzando
    le classi che sono presenti nel dizionario OPERATOR_CLASSES. Serve principalmente 
    per parsare le equazioni in quanto hanno una struttura di un tipo ben specifico
    a differenza di elementi quali: ModelVariables, oppure Functions o ancora Algorithms.
    """
    if tag.tag == f"{EQUATION_NS}Equation":
        if tag[0].tag == f"{EXPRESSION_NS}Sub":
            subtag_element = list(list(tag)[0])
            return Equation(
                _parsetag_eq(subtag_element[0], variables_dict, function_dict), 
                _parsetag_eq(subtag_element[1], variables_dict, function_dict)
                )
        if tag[0].tag == f"{EXPRESSION_NS}Reinit":
            return Reinit(
                _parsetag_eq(tag[0][0], variables_dict, function_dict), 
                _parsetag_eq(tag[0][1], variables_dict, function_dict)
                )
    if tag.tag in LITERALS: return Literal(tag.text)
    if tag.tag == f"{EXPRESSION_NS}Time": return Time(tag.text)
    else:
        class_op, arity = getoperatorclass(tag.tag)
        if arity == 2: return class_op(tag, variables_dict)
        if arity in [3, 4, 5, 6, 7, 8]: 
            x = class_op(function_dict, tag, variables_dict)
            if arity == 5: # Allora è stato chiamato il sample
                variables_dict[x.new_var.qualifiedName] = x.new_var
            return x
        if arity == 1: return class_op(_parsetag_eq(tag[0], variables_dict, function_dict))
        sub_element = list(tag)
        return class_op(
            _parsetag_eq(sub_element[0], variables_dict, function_dict=function_dict), 
            _parsetag_eq(sub_element[1], variables_dict, function_dict=function_dict)
            )
