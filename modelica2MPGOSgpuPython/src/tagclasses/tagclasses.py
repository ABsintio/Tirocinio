import math
import exceptions.builtExceptions


# ----------------------------------------------------- # XML NAMESPACES # ------------------------------------------------------------- #


EQUATION_NS   = "{https://svn.jmodelica.org/trunk/XML/daeEquations.xsd}"    # Namespace per Dynamic, Bingind e Initial Equations
EXPRESSION_NS = "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}"  # Namespace per le espressioni (operatori)
FUNCTIONS_NS  = "{https://svn.jmodelica.org/trunk/XML/daeFunctions.xsd}"    # Namespace per le funzioni e gli algoritmi
OPTIMIZ_NS    = "{https://svn.jmodelica.org/trunk/XML/daeOptimization.xsd}" # Namespace per il tag di ottimizzazione
LITERALS = [
    f"{EXPRESSION_NS}RealLiteral",
    f"{EXPRESSION_NS}IntegerLiteral", 
    f"{EXPRESSION_NS}BooleanLiteral",
    f"{EXPRESSION_NS}StringLiteral"
]


# ----------------------------------------- # CLASSI DI DEFINIZIONE GENERALE DEGLI OPERATORI # ----------------------------------------- #


class UnaryOperator:
    """ Rappresenta un operatore unario """
    def __init__(self, value):
        self.value = value   # Valore dell'operatore unario. Ex. Der(x), Not(x)

    def __str__(self): return "UnaryOperator(" + self.value + ")"

    def setvalue(self, new_value): self.value = new_value


class BinaryOperator:
    """ Rappresenta un operatore binario """
    def __init__(self, left, right):
        self.left = left    # Valore dell'operatore a sinistra
        self.right = right  # Valore dell'operatore a destra
    
    def __str__(self): return "BinaryOperator(" + self.left + "," + self.right + ")"

    def setleft(self, new_left): self.left = new_left

    def setright(self, new_right): self.right = new_right


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
    
    def __str__(self): return self.left.__str__() + " && " + self.right.__str__()


class Or(BinaryOperator):
    """ Rappresenta l'operatore booleano or """
    def __init__(self, l, r):
        super().__init__(l, r)
    
    def __str__(self): return self.left.__str__() + " || " + self.right.__str__()


class Not(UnaryOperator):
    """ Rappresenta l'operatore booleano not """
    def __init__(self, value):
        super().__init__(value)

    def __str__(self): return "!" + self.value.__str__()


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

    def __str__(self): return Pow(math.pi, self.value).__str__()


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


# ----------------------------------------- # CLASSI CHE DEFINISCONO ALTRI TAG GENERICI # ----------------------------------------------- #


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
    
    def _parse_qnp(self):
        """ Parsa i tag <exp:QualifiedNamePart> sia auto-chiusi che con <exp:ArraySubscripts> """
        qualified_name_parts = []
        for qnp in list(self.id_tag_element):
            name = qnp.attrib['name']
            if list(qnp):
                # In caso parsiamo solo array semplici del tipo x[<index>]
                name += f"[{_parsetag_eq(qnp[0][0][0]).__str__()}]"
            qualified_name_parts.append(name)
        return qualified_name_parts
    
    def __str__(self): 
        string = ".".join(self._parse_qnp())
        return self.variables_dict[string].createMPGOSname() if self.variables_dict is not None and string in self.variables_dict \
               else string


class Identifier(QualifiedName):
    """ Rappresenta l'operatore di identificazione di una variabile in un'equazione """
    def __init__(self, id_tag_element, variables_dict=None):
        super().__init__(id_tag_element, variables_dict)


class Der(QualifiedName):
    """ Rappresenta l'operatore di derivazione e quindi il tag <exp:Der>...</exp:Der> """
    def __init__(self, der_tag_element, variables_dict=None):
        super().__init__(der_tag_element[0], None)
        self.super_str = super().__str__()
        self.variables_dict = variables_dict

    def __str__(self): 
        return self.variables_dict[f"der({self.super_str})"].createMPGOSname()


class Literal(UnaryOperator):
    """ Rappresenta il tag unario per i valori letterali. Quindi 1, 1.1, "1" """
    def __init__(self, value):
        super().__init__(value)
    
    def __str__(self): return self.value.__str__()


class Pre(UnaryOperator):
    """ Rappresenta l'operatore pre, che serve ad ottenere il valore precedente di una variabile """
    def __init__(self, value):
        super().__init__(value)
    
    def __str__(self): return f"{self.value.__str__()}"


class Reinit(BinaryOperator):
    """ Rappresenta l'operatore reinit, che server per reinizializzare una variabile ad un dato valore """
    def __init__(self, l, r):
        super().__init__(l, r)
    
    def __str__(self): return Equation(self.left, self.right).__str__()


class Time(UnaryOperator):
    """ Rappesenta il tempo """
    def __init__(self, value):
        super().__init__(value)
    
    def __str__(self): return "T"


class IfThenElse:
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
        fun_name = QualifiedName(self.fun_call_tag[0], self.variables_dict).__str__() # Prendo il nome della funzione chiamata
        # Prendo gli input della funzione
        inputs_var = []
        for x in self.fun_call_tag[1]:
            class_op, arity = getoperatorclass(x.tag)
            el = _parsetag_eq(x, self.variables_dict)
            inputs_var.append(el.__str__())
        # Controllo che la funzione non sia builtin (ad es. pow, sin, cos, tan, ...)
        try:
            name = fun_name.split(".")[-1].capitalize()
            class_op, _ = getoperatorclass(f"{EXPRESSION_NS}{name}")
            return class_op(*inputs_var)
        except exceptions.builtExceptions.OperatorNotFoundException:
            pass
        fun = self.fun_dict[fun_name]
        fun.setinput(inputs_var)
        return fun
    
    def __str__(self): return self._parsefuncall_tag().__str__()


class When:
    """ Classe che rappresenta un tag <equ:When> ... </equ:When> """
    def __init__(self, when_tag, variables_dict):
        self.when_tag = when_tag
        self.variables_dict = variables_dict
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
        # Una volta parsate le condizioni posso parsare l'equazione interna.
        equation = _parsetag_eq(self.when_tag[1], self.variables_dict)
        return condition, equation
    
    def __str__(self): return f"if ({self.condition})" + "{\n" + f"\t    {self.equation}\n" + "    }"

    def setcondition(self, new_condition): self.condition = new_condition

    def setequation(self, new_equation): self.equation = new_equation


class Expression(UnaryOperator):
    """ classe che rappresenta il tag <fun:Expression>...</fun:Expression> """
    def __init__(self, value):
        super().__init__(value)
    
    def __str__(self): return self.value.__str__()


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
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}Sin"            : (Sin,           1),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}Sinh"           : (Sinh,          1),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}Asin"           : (Asin,          1),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}Cos"            : (Cos,           1),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}Cosh"           : (Cosh,          1),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}Acos"           : (Acos,          1),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}Tan"            : (Tan,           1),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}Tanh"           : (Tanh,          1),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}Atan"           : (Atan,          1),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}Not"            : (Not,           1),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}Neg"            : (Neg,           1),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}Sqrt"           : (Sqrt,          1),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}Exp"            : (Exp,           1),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}Log"            : (Log,           1),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}Log10"          : (Log10,         1),
    # BinaryOperator
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}Add"            : (Add,           0),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}Sub"            : (Sub,           0),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}Mul"            : (Mul,           0),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}Div"            : (Div,           0),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}And"            : (And,           0),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}Or"             : (Or,            0),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}Pow"            : (Pow,           0),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}LogLt"          : (LogLt,         0),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}LogLeq"         : (LogLeq,        0),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}LogGt"          : (LogGt,         0),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}LogGeq"         : (LogGeq,        0),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}LogEq"          : (LogEq,         0),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}LogNeq"         : (LogNeq,        0),
    # Other generic tag classes
    "{https://svn.jmodelica.org/trunk/XML/daeEquations.xsd}Equation"         : (Equation,      0),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}Identifier"     : (Identifier,    2),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}RealLiteral"    : (Literal,       1),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}IntegerLiteral" : (Literal,       1),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}StringLiteral"  : (Literal,       1),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}BooleanLiteral" : (Literal,       1),
    "{https://svn.jmodelica.org/trunk/XML/daeFunctions.xsd}If"               : (IfThenElse,    3),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}Pre"            : (Pre,           1),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}Reinit"         : (Reinit,        0),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}Time"           : (Time,          1),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}QualifiedName"  : (QualifiedName, 2),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}FunctionCall"   : (FunctionCall,  4),
    "{https://svn.jmodelica.org/trunk/XML/daeFunctions.xsd}Expression"       : (Expression,    1),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}Der"            : (Der,           2),
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
        if arity == 4 or arity == 3: return class_op(function_dict, tag, variables_dict)
        if arity == 1: return class_op(_parsetag_eq(tag[0], variables_dict, function_dict))
        sub_element = list(tag)
        return class_op(
            _parsetag_eq(sub_element[0], variables_dict, function_dict=function_dict), 
            _parsetag_eq(sub_element[1], variables_dict, function_dict=function_dict)
            )


# ----------------------------------------- # CLASSI PER IL PARSE DELLE FUNZIONI  # ----------------------------------------- #


class Function:
    """ Classe che rappresenta una funzione definita dall'utente estrapolata da <fun:Function> ... </fun:Function> """
    def __init__(self, name, inputs, output, algorithm):
        self.name = name        # Nome della funzione
        self.inputs = inputs    # Inputs come coppia (nome, tipo)
        self.output = output    # Output come coppia singola (nome, tipo)
        self.alg = algorithm    # L'algoritmo come sequenza di assign (senza loop, senza if annidati e senza nient'altro)
    
    def __str__(self): return f"{self.name}(" + ",".join([x[0] for x in self.inputs]) + ")" 
    
    def _forcpp(self): return self.name + f"(output={self.output}, inputs={self.inputs}) do\n\t{self.alg}\ndone"

    def setinput(self, inputs): self.inputs = inputs


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
    fun_name = QualifiedName(tag[0]).__str__()                                     # Prima prendo il nome della funzione
    output_var_name = (QualifiedName(tag[1][0]).__str__(), tag[1].attrib['type'])  # Poi prendo l'unica variabil di output
    # Poi parso tutte le variabili di input
    inputs_var = []
    for input_tag in tag.iter("{https://svn.jmodelica.org/trunk/XML/daeFunctions.xsd}InputVariable"):
        inputs_var.append((QualifiedName(input_tag[0]).__str__(), input_tag.attrib['type']))
    # Infine parso l'algoritmo
    assign_list = []
    alg_tag = tag.find("{https://svn.jmodelica.org/trunk/XML/daeFunctions.xsd}Algorithm")
    for assign_tag in alg_tag:
        assign_list.append(Assign(Identifier(assign_tag[0]), _parsetag_eq(assign_tag[1][0], variables_dict)))
    algorithm = "\n".join([x.__str__() for x in assign_list])
    return Function(fun_name, inputs_var, output_var_name, algorithm)