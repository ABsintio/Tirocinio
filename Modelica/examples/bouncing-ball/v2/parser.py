class ScalarVariable:
    """ Rappresenta una ScalarVariable all'interno dell'XML """
    def __init__(self, name,             # Nome univoco della variabile
                       valueIdentifier,  # Identificativo fra le variabili
                       variability,      # Indica la variabilità della variabile (constant, parameter, ..., continous)
                       causality,        # Come la variabile è visibile fuori dal modello (input, output, internal, none)
                       alias,            # Inserisce l'alias, se esiste, settando propriamente il valueIdentifier
                       description=None  # Descrizione opzionale della variabile
                ):
        self.name            = name
        self.valueIdentifier = valueIdentifier
        self.variability     = variability
        self.causality       = causality
        self.alias           = alias
        self.description     = description


class RealScalarVariable(ScalarVariable):
    """ Rappresenta una variabile Real """
    def __init__(self, *scalarvalue,  # Dati per ScalarVariable
                       min=None,      # Valore minimo per la variabile
                       max=None,      # Valore massimo per la variabile
                       start=None,    # Valore di partenza. Solo se presenta start nel file modelica
                       fixed=False    # Definisce il comportamento di start.
                ):
        super(RealScalarVariable, self).__init__(*scalarvalue)
        self.range   = (min, max)
        self.start   = start
        self.fixed   = fixed


class BooleanScalarVariable(ScalarVariable):
    """ Rappresenta una variabile Boolean """
    def __init__(self, *scalarvalue, start=None, fixed=False):
        super(BooleanScalarVariable, self).__init__(*scalarvalue)
        self.start = start
        self.fixed = fixed