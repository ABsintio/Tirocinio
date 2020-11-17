from tagclasses.variables import *
import re
from utils.graph import *
from tagclasses import dynequations
from tagclasses.dynequations import *
from utils.notifier import notifier
import sys


NOTIFICATION = True if int(sys.argv[-1]) == 1 else False


class Model:
    """ Rappresenta in modo schematico e astratto il modello in studio """
    @notifier(
        NOTIFICATION,
        "Creazione dell'astrazione del modello in studio",
        "Estrapolazione delle ODE, equazioni iniziali, eventi e altre equazioni di appoggio",
        "Creazione dell'astrazione del modello in studio",
        "Terminata estrapolazione delle informazioni necessarie."
    )
    def __init__(self, name, equations, events, algorithms, variables_dict, logger):
        self.logger = logger
        # START LOG
        msg = "Chiamata alla classe Model e costruzione del modello astratto"
        self.logger.info(msg, msg)
        # END LOG
        self.model_name = name
        self.init       = Model.getinit(variables_dict, logger)            # Prendo le equazioni iniziali
        self.odes       = Model.getODE(equations, self.init, variables_dict, logger)  # Crea il sistema di ODE
        self.events     = events['when']                                     # Prendo gli eventi
        # Prendo le altre equazioni rimanenti
        self.othereq    = Model.getOtherEq(
            algorithms["assign"], equations + events['other'], 
            algorithms["when"],
            self.init, variables_dict, logger
            )
        self.variables  = list(variables_dict.values())                    # Prendo la lista delle variabili
        if self.init['initialization']:
            # Ordino le equazioni initiali per initialization
            result = self.init_equations_sort(variables_dict)
            if result is not None:
                self.init['initialization'] = result


    @staticmethod
    def getODE(equations_list, init_equations, variables_dict, logger):
        """ Prende da tutta la lista di equazioni, soltanto quelle che sono della forma F[i] = <expr> """
        # START LOG
        msg = "Ottengo le ODE per il modello"
        logger.debug(msg, msg)
        # END LOG
        odes = []
        for eq in equations_list:
            var = variables_dict[eq.left.__str__()]
            if not re.match(r"\$whenCondition\d+", var.nome):
                odes.append(eq)
            # Se la variabile parte sinistra dell'equazione non ha un valore iniziale allora inseriamo
            # tale equazione come valore iniziale nella funzione PerThread_Initialization
            if var.init is None and var.category != VariableCategory.DERIVATIVE:
                init_equations['initialization'].append(eq)
        # Elimino le ODE dalle equazioni normali
        for ode in odes: equations_list.remove(ode)
        return odes


    @staticmethod
    def getinit(variables_dict, logger):
        """ Dato il dizionario con tutte le variabili crea un lista di equazioni iniziali """
        # START LOG
        msg = "Ottengo le equazioni iniziali per il modello"
        logger.debug(msg, msg)
        # END LOG
        init_eqs = {'initial':[], "initialization": []}
        name_var_dict = {x.qualifiedName : x for _, x in variables_dict.items()}
        for k, value in variables_dict.items():
            varname, ivalue = value.nome, str(value.init)
            # In caso troviamo dei "." facciamo il replace con "_"
            if value.category != VariableCategory.DERIVATIVE:
                if ivalue == "None":
                    # Controllo che non ci siano variabili con valori iniziali None
                    # Se queste variabili sono presenti, il valore sarà impostato a 0
                    init_value = "0" if not "sample" in varname else "1"
                    if value.__class__ in [X, ACC, sPAR]: init_value += ".0"
                    # START LOG
                    msg = "La variabile " + varname + f" non ha alcun valore iniziale. Verrà impostata a {init_value}"
                    logger.warning(msg, msg)
                    # END LOG
                    value.setivalue(init_value)
                ivalue = value.init.__str__()
                # Potrebbe accadere che durante il parsing delle variabili, sotto il tag ScalarVariable, 
                # a queste venga dato un valore iniziale letterale (es. x0, x1, ...), il quale non verrà
                # cambiato nel momento in cui si andranno a parsare le equazioni iniziali (chi te lo dice 
                # che tale inizializzazione sta anche in initial equation? nessuno). Per questo motivo, 
                # una volta ottenute tutte le variabili e creati i corrispettivi MPGOSname, possiamo 
                # settare il nuovo valore iniziale in linea con la politica di valutazione delle variabili di MPGOs.
                if not re.match(r"[-]?\d+\.*\d*", ivalue.strip()) and ivalue.strip() not in variables_dict.keys() and \
                    ivalue.strip() != "T" and not isinstance(value.init, UnaryOperator) and not isinstance(value.init, BinaryOperator):
                    # Trovare la variabile referenziata
                    ref = name_var_dict[ivalue.strip()]
                    value.setivalue(ref.createMPGOSname())
                ivalue = value.init.__str__()
                # Inseriamo tutte le equazioni iniziali nel file SystemDefinition in 
                # quanto, in diverse simulazioni verranno reinizializzate ogni volta.
                # Altrimenti facendo diverse simulazioni seriali i valore della
                # simulazione successiva partirà con quelli della simulazione precedente.
                init_eqs["initialization"].append(Equation(k.strip(), ivalue.strip()))
        return init_eqs


    @staticmethod
    def getOtherEq(assign, equations, when_assign, init_equations, variables_dict, logger):
        """ Prende le equazioni restanti e le divide tra quelle che scatenano eventi e quelle normali """
        # START LOG
        msg = "Ottengo le equazioni restanti e gli algoritmi per il modello"
        logger.debug(msg, msg)
        # END LOG
        othereq_dict = {"trigger": [], "normal": []}
        # Classifichiamo le equazioni
        for equ in equations:
            lhs = variables_dict[equ.left.__str__()].nome
            typeeq = 'trigger' if re.match(r"\$whenCondition\d+", lhs) else 'normal'
            # Se la variabile parte sinistra dell'equazione non ha un valore iniziale allora inseriamo
            # tale equazione come valore iniziale nella funzione PerThread_Initialization
            if typeeq != 'trigger' and variables_dict[str(equ.left)].init is None:
                init_equations['initialization'].append(equ)
            # E' possibile che la condizione sia su variabili $PRE, di conseguenza
            # queste variabili devono essere inserite prima della condizione stessa
            # e quindi se questa condizione è una when allora vuol dire che viene
            # inserito in EventFunction, di conseguenza anche il PRE deve essere inserito 
            # nello stessa posizione in quanto il valore dello stato che si vuole mantenere
            # non è quello aggiornato al termine del time step corrente.
            if typeeq == "trigger":
                involved_vars = re.finditer(r"(ACC|sPAR|X|ACCi)\[[0-9]+\]", equ.right.__str__().strip())
                for var in involved_vars:
                    pre = variables_dict[var.group()]
                    if "$PRE" in pre.nome:
                        nonpre = variables_dict[var.group()].nome[5:]
                        nonpre_mpgos = [x.createMPGOSname() for x in variables_dict.values() if x.nome == nonpre][-1]
                        othereq_dict[typeeq].append(Equation(pre.createMPGOSname(), nonpre_mpgos))
            othereq_dict[typeeq].append(equ)
        # Inseriamo le espressioni di assegnamento
        for ass in assign:
            othereq_dict["normal"].append(ass.__str__())
        # Inseriamo gli eventi
        for when_ass in when_assign:
            othereq_dict["normal"].append(when_ass.__str__())
        return othereq_dict


    def init_equations_sort(self, MPGOSparams_dict):
        """ Sorta le equazioni initiali con tag "initialization" """
        init_str = [str(x) for x in self.init['initialization']]
        equ_dipendency_dag = DAG(init_str, MPGOSparams_dict) # Crea un DAG
        if equ_dipendency_dag.dipendence_dag is not None:
            top_sort = equ_dipendency_dag.topological_sort() # Esegue l'algoritmo di ordinamento topologico
            new_init_eq = []
            init_eq_dict = {x.left.__str__(): x.right.__str__() for x in self.init['initialization']}
            for lhs in top_sort:
                # Devo prendere l'equazione iniziale associata
                new_init_eq.append(Equation(lhs, init_eq_dict[lhs]))
            return new_init_eq if new_init_eq != [] else self.init['initialization']
        return None

    
    @staticmethod
    def get_var_by_lhsinit(initial_equation, variables_dict, tipo):
        """ 
        Estrapola da tutte le equazioni iniziali di tipo 'initial' una lista
        di variabili che sono istanze del tipo dato in input
        """
        return [variables_dict[str(x.left)] for x in initial_equation if isinstance(variables_dict[str(x.left)], tipo)]
