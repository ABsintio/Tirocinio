import math


# ----------------------------------------- # CLASSI DI DEFINIZIONE GENERALE DEGLI OPERATORI # ----------------------------------------- #


class UnaryOperator:
    """ Rappresenta un operatore unario """
    def __init__(self, value):
        self.value = value   # Valore dell'operatore unario. Ex. Der(x), Not(x)

    def __str__(self): return "UnaryOperator(" + self.value + ")"


class BinaryOperator:
    """ Rappresenta un operatore binario """
    def __init__(self, left, right):
        self.left = left    # Valore dell'operatore a sinistra
        self.right = right  # Valore dell'operatore a destra
    
    def __str__(self): return "BinaryOperator(" + self.left + "," + self.right + ")"


# ----------------------------------------- # DEFINIZIONE OPERATORI MATEMATICI SEMPLICI  # ----------------------------------------- #


class Add(BinaryOperator):
    """ Rappresenta l'operatore di somma """
    def __init__(self, l, r):
        super().__init__(l, r)
    
    def __str__(self): return self.left.__str__() + " + " + self.right.__str__()


class Sub(BinaryOperator):
    """ Rappresenta l'operatore di sottrazione """
    def __init__(self, l, r):
        super().__init__(l, r)
    
    def __str__(self): return self.left.__str__() + " - " + self.right.__str__()


class Mul(BinaryOperator):
    """ Rappresenta l'operatore di moltiplicazione """
    def __init__(self, l, r):
        super().__init__(l, r)
    
    def __str__(self): return self.left.__str__() + " * " + self.right.__str__()


class Div(BinaryOperator):
    """ Rappresenta l'operatore di divisione """
    def __init__(self, l, r):
        super().__init__(l, r)
    
    def __str__(self): return self.left.__str__() + " / " + self.right.__str__()


class Pow(BinaryOperator):
    """ Rappresenta l'operatore potenza """
    def __init__(self, l, r):
        super().__init__(l, r)
    
    def __str__(self): return "pow(" + self.left.__str__() + "," + self.right.__str__() + ")"


class Neg(UnaryOperator):
    """ Rappresenta l'operatore di negazione per una quantità algebrica """
    def __init__(self, value):
        super().__init__(value)

    def __str__(self): return "-" + self.value.__str__()


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


class Der(UnaryOperator):
    """ Rappresenta la funzione di derivata """
    def __init__(self, value):
        super().__init__(value)
    
    def __str__(self): return "der(" + self.value.__str__() + ")"


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


# ----------------------------------------- # CLASSI CHE DEFINISCONO ALTRI TAG GENERICI # ----------------------------------------------- #


class Equation(BinaryOperator):
    """ Rappresenta il tag dell'equazione """
    def __init__(self, l, r):
        super().__init__(l, r)
    
    def __str__(self): return self.left.__str__() + "=" + self.right.__str__()


class Identifier:
    """ Rappresenta l'operatore di identificazione di una variabile in un'equazione """
    def __init__(self, id_tag_element):
        self.id_tag_element = id_tag_element
    
    def __str__(self):
        return ".".join(list(map(lambda x: x.attrib['name'], list(self.id_tag_element))))


class Literal(UnaryOperator):
    """ Rappresenta il tag unario per i valori letterali. Quindi 1, 1.1, "1" """
    def __init__(self, value):
        super().__init__(value)
    
    def __str__(self): return self.value.__str__()


class IfThenElse:
    """ Rappresenta il blocco di tag <fun:If> ... </fun:If> """
    


# ----------------------------------------- # FUNZIONE DI SELEZIONE DELLA CLASSE  # ----------------------------------------- #


OPERATOR_CLASSES = {
    # UnaryOperator
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}Der"            : (Der,        1),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}Sin"            : (Sin,        1),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}Sinh"           : (Sinh,       1),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}Asin"           : (Asin,       1),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}Cos"            : (Cos,        1),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}Cosh"           : (Cosh,       1),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}Acos"           : (Acos,       1),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}Tan"            : (Tan,        1),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}Tanh"           : (Tanh,       1),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}Atan"           : (Atan,       1),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}Not"            : (Not,        1),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}Neg"            : (Neg,        1),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}Sqrt"           : (Sqrt,       1),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}Exp"            : (Exp,        1),
    # BinaryOperator
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}Add"            : (Add,        0),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}Sub"            : (Sub,        0),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}Mul"            : (Mul,        0),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}Div"            : (Div,        0),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}And"            : (And,        0),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}Or"             : (Or,         0),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}Pow"            : (Pow,        0),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}LogLt"          : (LogLt,      0),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}LogLeq"         : (LogLeq,     0),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}LogGt"          : (LogGt,      0),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}LogGeq"         : (LogGeq,     0),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}LogEq"          : (LogEq,      0),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}LogNeq"         : (LogNeq,     0),
    # Other generic tag classes
    "{https://svn.jmodelica.org/trunk/XML/daeEquations.xsd}Equation"         : (Equation,   0),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}Identifier"     : (Identifier, 2),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}RealLiteral"    : (Literal,    1),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}IntegerLiteral" : (Literal,    1),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}StringLiteral"  : (Literal,    1),
    "{https://svn.jmodelica.org/trunk/XML/daeExpressions.xsd}BooleanLiteral" : (Literal,    1)
}


def getclass(tag):
    """ Dato in input un tag, ritorna un operatore """
    return OPERATOR_CLASSES[tag]
