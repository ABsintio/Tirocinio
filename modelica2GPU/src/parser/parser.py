import xml.etree.ElementTree as ET
from tagclasses import dynequations, algorithms, variables, functions
import exceptions.builtExceptions
import sys # temporane per eseguire i test
from utils.logger import *
from utils.notifier import *
import re


NOTIFICATION = int(sys.argv[-1]) == 1


# ----------------------------------------------------- # CLASSI PER IL PARSING # ------------------------------------------------------ #


class Parser:
    """ Classe che esegue il parser dell'XML """
    def __init__(self, filename, logger):
        self.logger = logger
        self.root = ET.parse(filename).getroot()
        self.dynamic_equations = {"equations": [], "events": {"when": [], "other": []}}
        self.binding_equations = []
        self.initial_equations = []
        self.scalar_variables  = []
        self.userdefined_func  = dict()
        self.algorithms_dict   = {"assign": [], "when": []}
        self.unique_dict       = dict()
        self.event_conditions  = []
        self.sampler           = []
        # START LOG
        msg = "Chiamata alla classe Parser"
        self.logger.info(msg, msg)
        # END LOG
    
    
    @staticmethod
    def getTagElementByName(tag_name, tag_root):
        """
        Si estrapolano dall'XML tutti i tag che matchano il nome dato in input
        :param str tag_name: il nome del tag che si vuol estrarre
        :param str tag_root: Il tag radice di tutti i tag
        """
        return list(filter(lambda x: x.tag == tag_name, list(tag_root)))[0]

    
    def createACC(self):
        """ Associa a tutte le variabili algebraic un'istanza ACC """
        # START LOG
        msg = "Creazione dei parametri ACC dalle variabili di categoria algebraic di tipo Real"
        self.logger.debug(msg, msg)
        # END LOG
        acc_id, accs, acc_dict = 0, [], dict()
        variable_list = [x for x in self.scalar_variables if x.alias == "noAlias" and \
                                                             x.categoryType == variables.VariableCategory.ALGEBRAIC and \
                                                             (isinstance(x, variables.RealScalarVariable) or isinstance(x, variables.BooleanScalarVariable))]
        for variable in variable_list:
            acc = variables.ACC(variable.name, acc_id, variable.qualifiedName, variable.alias, variable.categoryType, variable.start)
            accs.append(acc)
            acc_id += 1
            acc_dict[variable.name] = acc
        
        return accs, acc_dict

    
    def createACCi(self):
        """ Associa a tutte le variabili algebraic con tipo no Real un'istanza ACCi """
        # START LOG
        msg = "Creazione dei parametri ACCi dalle variabili di categoria algebraic di tipo Integer"
        self.logger.debug(msg, msg)
        # END LOG
        acci_id, accis, acci_dict = 0, [], dict()
        variable_list = [x for x in self.scalar_variables if x.alias == "noAlias" and \
                                                             x.categoryType == variables.VariableCategory.ALGEBRAIC and \
                                                             isinstance(x, variables.IntegerScalarVariable)]
        for variable in variable_list:
            acci = variables.ACCi(variable.name, acci_id, variable.qualifiedName, variable.alias, variable.categoryType, variable.start)
            accis.append(acci)
            acci_id += 1
            acci_dict[variable.name] = acci
        
        return accis, acci_dict


    def create_sPAR(self):
        """ Associa a tutte le variabili independentParameter/Constant un'istanza sPAR """
        # START LOG
        msg = "Creazione dei parametri sPAR dalle variabili di categoria independent di tipo Real"
        self.logger.debug(msg, msg)
        # END LOG
        spar_id, spars, spar_dict = 0, [], dict()
        variable_list = [x for x in self.scalar_variables if x.alias == "noAlias" and \
                                                            (x.categoryType == variables.VariableCategory.INDEPENDENT_CONSTANT or \
                                                             x.categoryType == variables.VariableCategory.INDEPENDENT_PARAMETER) and \
                                                             isinstance(x, variables.RealScalarVariable)]
        
        for variable in variable_list:
            spar = variables.sPAR(variable.name, spar_id, variable.qualifiedName, variable.alias, variable.categoryType, variable.start)
            spars.append(spar)
            spar_id += 1
            spar_dict[variable.name] = spar
        
        return spars, spar_dict
    

    def create_sPARi(self):
        """ Associa a tutte le variabili independentParameter/Constant di tipo no Real un'istanza sPARi """
        # START LOG
        msg = "Creazione dei parametri sPAR dalle variabili di categoria independent di tipo Integer"
        self.logger.debug(msg, msg)
        # END LOG
        spari_id, sparis, spari_dict = 0, [], dict()
        variable_list = [x for x in self.scalar_variables if x.alias == "noAlias" and \
                                                            (x.categoryType == variables.VariableCategory.INDEPENDENT_CONSTANT or \
                                                             x.categoryType == variables.VariableCategory.INDEPENDENT_PARAMETER) and \
                                                             not isinstance(x, variables.RealScalarVariable)]
        
        for variable in variable_list:
            spari = variables.sPARi(variable.name, spari_id, variable.qualifiedName, variable.alias, variable.categoryType, variable.start)
            sparis.append(spari)
            spari_id += 1
            spari_dict[variable.name] = spari
        
        return sparis, spari_dict


    def createX_and_F(self):
        """ Associa a tutte le variabili derivate un'istanza di tipo F, mentre per quelle di tipo state ->  X"""
        # START LOG
        msg = "Creazione dei parametri X ed F, rispettivamente variabile di stato e la sua derivata"
        self.logger.debug(msg, msg)
        # END LOG
        x_id, xs, x_dict = 0, [], dict()
        f_id, fs, f_dict = 0, [], dict()
        variable_list = [x for x in self.scalar_variables if x.alias == "noAlias"]
        for variable in variable_list:
            if variable.categoryType == variables.VariableCategory.STATE:
                # Se è uno stato vedo se è presente una variable tra quelle già inserite in 
                # fs che è una sua derivative, per prendere il suo stesso identificativo.
                associate_der = list(filter(lambda x: x.qualifiedName == variable.qualifiedName, fs))
                identificativo = x_id
                if associate_der: identificativo = associate_der[-1].id # Se esiste una tale classe allora imposto l'identificativo
                x_id += 1 if not associate_der else 0 # altrimenti aumento quello delle variabili X
                x = variables.X(variable.name, identificativo, variable.qualifiedName, variable.alias, variable.categoryType, variable.start)
                xs.append(x)
                x_dict[variable.name] = x
            elif variable.categoryType == variables.VariableCategory.DERIVATIVE:
                # Faccio la stessa cosa che ho fatto per le variabili X parsato precedentemente
                associate_x = list(filter(lambda x: x.qualifiedName == variable.qualifiedName, xs))
                identificativo = f_id 
                if associate_der: identificativo = associate_x[-1].id
                f_id += 1 if associate_x else 0
                f = variables.F(variable.name, identificativo, variable.qualifiedName, variable.alias, variable.categoryType, variable.start)
                fs.append(f)
                f_dict[variable.name] = f

        return xs, x_dict, fs, f_dict


    @notifier(
        NOTIFICATION,
        "Creazione parametri MPGOS",
        "Associazione delle variabili parsate dal modello XML ai parametri (X, ACC, ACCi, sPAR, sPARi) MPGOS",
        "Creazione parametri MPGOS",
        "Terminazione dell'associazione variabile-parametro"
    )
    def associate_var2MPGOSparameter(self):
        """
        Tale funzione parsa le variabili presenti nel modello e le associa a parametri MPGOS, 
        ossia i parametri ACC, ACCi, sPAR, sPARi e cPAR. Associa anche alle variabili X ed F.
        Il mapping viene fatto in base alla seguente regola sulla categoria delle variabili:
        state -> X, derivative -> F, independentParameter -> sPAR/i, independentConstant -> sPAR/i,
        algebraic -> ACC/i.
        """
        return self.createACC() + self.createACCi() + self.create_sPAR() + self.create_sPARi() + self.createX_and_F()

    
    def parse_scalar_variables(self):
        """ Esegue il parsing di tutti i tag interni a <ModelVariables> """
        # START LOG
        msg = "Ottenimento delle variabili dai tag <ScalarVariable> interni a <ModelVariables>"
        self.logger.debug(msg, msg)
        # END LOG
        scalar_valriable_roottag = Parser.getTagElementByName("ModelVariables", self.root)
        for x in scalar_valriable_roottag:
            self.scalar_variables.append(variables._parsetag_var(x))

    
    def parse_equation(self, root, variables_dict, MPGOSparams_dict):
        """ Parsa le equazioni """
        for x in root:
            if x.tag == f"{dynequations.EQUATION_NS}Equation":
                eq = dynequations._parsetag_eq(x, variables_dict, self.userdefined_func)
                # Se la parte sinistra dell'equazione ha associata una variable $PRE
                # allora devo creare una seconda equazione, nella quale alla variabile
                # $PRE viene associato il valore corrente della variabile lhs
                pre = None
                # Controllo l'esistenze della variabile $PRE associata
                var = MPGOSparams_dict[eq.left.__str__()]
                for k, v in MPGOSparams_dict.items():
                    if "$PRE." + var.nome == v.nome:
                        pre = k
                if pre is not None:
                    self.dynamic_equations['equations'].append(dynequations.Equation(pre, eq.left))
                # Se la parte destra dell'equazione è di tipo Sample
                # allora controllo se l'attributo new_var della parte destra
                # sia pari a None oppure no. Questo perché se non è pari a 
                # None allora devo aggiungere una nuova equazione.
                if isinstance(eq.right, dynequations.Sample):
                    self.dynamic_equations['equations'].append(eq)
                    # Nel momento in cui l'equazione considera la variabile whenCondition
                    # come una condizione su un evento che neanche viene considerato dal
                    # compilatore gli andiamo a cambiare nome in sampleCondition
                    old_name = MPGOSparams_dict[str(eq.left)].nome
                    MPGOSparams_dict[str(eq.left)].setname(old_name.replace("when", "sample"))
                    MPGOSparams_dict[eq.right.new_var.createMPGOSname()] = eq.right.new_var
                    # Inserisco l'equazione per l'aggiornamento del contatore del sampler negli eventi other
                    self.dynamic_equations['equations'].append(dynequations.Equation(
                        eq.right.new_var.createMPGOSname(),
                        "{cond} ? 1 + {lhs} : {lhs}".format(cond=str(eq.left),lhs=eq.right.new_var.createMPGOSname())
                    ))
                else:
                    self.dynamic_equations['equations'].append(eq)


    def parse_when(self, root, variables_dict, MPGOSparams_dict):
        """ Parsa le when equations"""
        for x in root:
            if x.tag == f"{dynequations.EQUATION_NS}When" or x.tag == f"{dynequations.EQUATION_NS}ElseWhen":
                # Parsing degli eventi. Uno per equazione presente nel blocco When
                when_eq = dynequations.When(x, variables_dict, self.event_conditions, self.userdefined_func)
                # Se la parte sinistra dell'equazione ha associata una variable $PRE
                # allora devo creare una seconda equazione, nella quale alla variabile
                # $PRE viene associato il valore corrente della variabile lhs
                pre = None
                # Controllo l'esistenze della variabile $PRE associata
                var = MPGOSparams_dict[when_eq.equation.left.__str__()]
                for k, v in MPGOSparams_dict.items():
                    if "$PRE." + var.qualifiedName == v.qualifiedName:
                        pre = k
                if pre is not None:
                    self.dynamic_equations['events']['other'].append(dynequations.Equation(pre, when_eq.equation.left))
                # In via puramente eccezionale, se la condizione è di tipo Sample allora
                # non lo inserisco come evento in quanto il compilatore non lo riconosce come tale.
                # Prima però devo prendere l'equazione corrispondente della condizione
                eq_cond = None
                for eq in self.dynamic_equations['equations']:
                    if str(eq.left) == when_eq.condition[1]:
                        eq_cond = eq.right
                        break
                if not isinstance(eq_cond, dynequations.Sample):
                    when_eq.setcondition((when_eq.condition[0]," "*4 + "EF[{id}] = (! ({cond}))".format(
                        id=when_eq.condition[0], cond=when_eq.condition[1]
                    )))
                    # Mano a mano che trovo nuove condizioni per gli eventi le appendo
                    # questo servirà nel momento in cui si dovranno ancdare a formattare
                    # le funzioni C++ per gli eventi in quanto si dovrà utilizzare il 
                    # vettore EF (event function) e quindi devo tenere il conto di quanti eventi trovo
                    if when_eq.condition[1] not in self.event_conditions:
                        self.event_conditions.append(when_eq.condition)
                    self.dynamic_equations["events"]['when'].append(when_eq)
                else:
                    # Se invece la parte destra della condizione è di tipo sample allora
                    # devo prendere l'equazione che sarebbe dovuto essere dell'evento e
                    # Inserirla all'interno di un blocco ifThen, con la parte sinistra 
                    # della condizione come condizione del blocco If.
                    new_eq = "({cond} ? {rhs} : {lhs})".format(
                        lhs=when_eq.equation.left.__str__(),
                        cond=when_eq.condition[1],
                        rhs=when_eq.equation.right.__str__()
                    )
                    eq = dynequations.Equation(when_eq.equation.left, new_eq)
                    self.dynamic_equations['equations'].append(eq)

    
    def parse_dynamic_equations(self, variables_dict, MPGOSparams_dict):
        """ Esegue il parsing di tutti i tag <equ:DynamicEquations> """
        # START LOG
        msg = "Ottenimento delle equazioni e degli eventi, rispettivamente sotto i tag <equ:Equation> e <equ:When>"
        self.logger.debug(msg, msg)
        # END LOG
        dynamic_equations_roottag = Parser.getTagElementByName(f"{dynequations.EQUATION_NS}DynamicEquations", self.root)
        # Parso le equazioni
        self.parse_equation(dynamic_equations_roottag, variables_dict, MPGOSparams_dict)
        # Parso gli eventi
        self.parse_when(dynamic_equations_roottag, variables_dict, MPGOSparams_dict)
        return MPGOSparams_dict
                

    def parse_initial_equations(self, variables_dict, MPGOSparameter_dict):
        """ 
        Esegue il parsing di tutti i tag interni a <equ:InitialEquations> ed associati i valori
        estrapolati dalle equazioni iniziali alle variabili che non hanno l'attributo start diverso da None.
        """
        # START LOG
        msg = "Ottenimento delle equazioni iniziali del sistema e aggiornamento delle variabili con i valori iniziali"
        self.logger.debug(msg, msg)
        # END LOG
        initial_equantions_roottag = Parser.getTagElementByName(f"{dynequations.EQUATION_NS}InitialEquations", self.root)
        for x in initial_equantions_roottag:
            # Controlliamo che non siano tag vuoti, ossia <equ:Equation><exp:Sub></exp:Sub></equ:Equation>
            if list(x[0]) and x[0][0].tag != f"{dynequations.EQUATION_NS}Equation":
                ieqs = dynequations._parsetag_eq(x, variables_dict)
                # Se la variabile non esiste nel dizionario di tutte le
                # variabili (solitamente le variabili non esistenti sono i $PRE)
                # la aggiungi con valore iniziale pari a None ed in caso cambi il right di ieqs.
                if str(ieqs.left) not in MPGOSparameter_dict:
                    associated_var = [x for x in variables_dict.values() if x.id == ieqs.left.indexs]
                    MPGOSparameter_dict[str(ieqs.left)] = associated_var[-1]
                var = MPGOSparameter_dict[ieqs.left.__str__()]
                # Se il valore iniziale di una variabile è $START allora vuol dire che 
                # nel modello Modelica non ha alcun valore iniziale. Di conseguenza lo
                # lasciamo None di modo che il valore iniziale pari a 0 venga
                # impostato durante la creazione del modello.
                if var.init is None and not str(ieqs.right).startswith("$START"):
                    self.initial_equations.append(ieqs)
                    var.setivalue(ieqs.right)
        return MPGOSparameter_dict

    
    def parse_userdefined_function(self, variables_dict, MPGOSparam_dict):
        """ Esegue il parsing delle funzioni definite dall'utente trattate con il tag <fun:FunctionCall> """
        # START LOG
        msg = "Parsing delle funzioni definite dall'utente"
        self.logger.debug(msg, msg)
        # END LOG
        functionlist_rottag = Parser.getTagElementByName(f"{dynequations.FUNCTIONS_NS}FunctionsList", self.root)
        for x in functionlist_rottag:
            fun = functions._parsetag_fun(x, variables_dict, MPGOSparam_dict)
            self.userdefined_func[fun.name] = fun


    def parse_assign(self, assign_tag, variables_dict, MPGOSparams_dict):
        """ Parsa tutti gli altri tag a parte quello dell'When degli algoritmi """
        for x in assign_tag:
            if x.tag == f"{algorithms.FUNCTIONS_NS}Assign":
                algo = algorithms._parsealgorithm_tag(x, variables_dict, self.userdefined_func, self.userdefined_func)
                # Controllo, perchè per qualche assurdo motivo succede, che se l'assegnamento è
                # del tipo x = pre(x) allora la variabile pre(x) esista, se non esiste allora
                # l'assegnamento non è valido.
                if isinstance(algo.right, dynequations.Pre) and not algo.right.__str__() in MPGOSparams_dict:
                    # Se è un PRE che non è presente in MPGOSparams_dict allora lo aggiungo
                    # tanto la variabile è stat aggiunta da QualifiedNamePart in variables_dict
                    MPGOSparams_dict[algo.right.__str__()] = variables_dict[list(variables_dict.keys())[-1]]
                elif not "$START" in str(algo.right): # $START non deve essere inserito (non vuol dire niente)
                    # Controllo l'esistenze della variabile $PRE associata
                    pre = None
                    var = MPGOSparams_dict[algo.left.__str__()]
                    for k, v in MPGOSparams_dict.items():
                        if "$PRE." + var.qualifiedName == v.qualifiedName:
                            pre = k
                    if pre is not None:
                        self.algorithms_dict["assign"].append(dynequations.Equation(pre, algo.left))
                    self.algorithms_dict["assign"].append(algo)
                    if isinstance(algo.right, dynequations.Sample):
                        old_name = MPGOSparams_dict[str(algo.left)].nome
                        if old_name.replace("when", "sample") != old_name:
                            # Allora la variabile già esiste e non faccio niente
                            MPGOSparams_dict[str(algo.left)].setname(old_name.replace("when", "sample"))
                            MPGOSparams_dict[algo.right.new_var.createMPGOSname()] = algo.right.new_var
                            # Inserisco l'equazione per l'aggiornamento del contatore del sampler negli eventi other
                            self.algorithms_dict['assign'].append(dynequations.Equation(
                                algo.right.new_var.createMPGOSname(),
                                "{cond} ? 1 + {lhs} : {lhs}".format(cond=str(algo.left),lhs=algo.right.new_var.createMPGOSname())
                            ))
        return MPGOSparams_dict
                
    
    def parse_when_alg(self, when_tag, variables_dict, MPGOSparameter_dict):
        """ Parsa il tag <fun:When> """
        for x in when_tag:
            if x.tag == f"{algorithms.FUNCTIONS_NS}When":
                algo = algorithms.WhenAlgorithm(x, variables_dict, self.userdefined_func)
                self.algorithms_dict["when"].append(algo)
                condition = algo.condition
                conditions = re.finditer(r"(ACC|sPAR|X|ACCi)\[[0-9]+\]", condition.__str__())
                for cond in conditions:
                    cond = cond.group()
                    # Cerco l'espressione con la parte sinistra associata alla condizione
                    alg = [x for x in self.algorithms_dict['assign'] if str(x.left) == cond][-1]
                    # Se la parte destra è di tipo Sample allora la appendo all'evento appena inserito
                    # altrimenti non faccio niente. Ovviamente la rimuovo dagli assegnamenti normali
                    if isinstance(alg.right, dynequations.Sample):
                        self.algorithms_dict['assign'].remove(alg)
                        self.algorithms_dict["when"].append(alg)


    def parse_algorithm(self, variables_dict, MPGOSparameter_dict):
        """ Esegue il parsing di tutti gli algoritmi. Questi sono interni al tag <fun:Algorithm> """
        # START LOG
        msg = "Parsing degli algoritmi sotto il tag <fun:Algorithm>"
        self.logger.debug(msg, msg)
        # END LOG
        algorithm_roottag = Parser.getTagElementByName(f"{algorithms.FUNCTIONS_NS}Algorithm", self.root)
        self.parse_assign(algorithm_roottag, variables_dict, MPGOSparameter_dict)
        self.parse_when_alg(algorithm_roottag, variables_dict, MPGOSparameter_dict)
        return MPGOSparameter_dict


    @notifier(
        NOTIFICATION,
        "Parsing dell'XML che descrive il modello",
        "Estrapolazione dall'XML delle variabili, equazioni dinamiche ed iniziali, funzioni e algoritmi",
        "Parsing dell'XML che descrive il modello",
        "Terminazione estrapolazione delle informazioni necessarie"
    )
    def parseXML(self):
        """ Chiama i diversi metodi di parsing dell'XML """
        # START LOG
        msg = "Parsing totale dell'XML"
        self.logger.debug(msg, msg)
        # END LOG
        self.parse_scalar_variables()
        # Prendo i parametri
        MPGOSparameters    = self.associate_var2MPGOSparameter()
        accs,   acc_dict   = MPGOSparameters[ 0: 2] # Prendo i parametri ACC   (Reali)
        accis,  acci_dict  = MPGOSparameters[ 2: 4] # Prendo i parametri ACCi  (Interi)
        spars,  spar_dict  = MPGOSparameters[ 4: 6] # Prendo i parametri sPAR  (Reali)
        sparis, spari_dict = MPGOSparameters[ 6: 8] # Prendo i parametri sPARi (Interi)
        xs,     x_dict     = MPGOSparameters[ 8:10] # Prendo le variabili X 
        fs,     f_dict     = MPGOSparameters[10:12] # Prendo le variabili F, derivate di X

        params_dict = [acc_dict, acci_dict, spar_dict, spari_dict, x_dict, f_dict]
        unique_dict = {y: x[y] for x in params_dict for y in x}
        self.unique_dict = unique_dict
        MPGOSparams_dict = {unique_dict[x].createMPGOSname(): unique_dict[x] for x in unique_dict}
                
        # Parso tutte le altre cose ed intanto formatto le variabili
        MPGOSparams_dict = self.parse_initial_equations(unique_dict, MPGOSparams_dict)
        self.parse_userdefined_function(unique_dict, MPGOSparams_dict)
        MPGOSparams_dict = self.parse_dynamic_equations(unique_dict, MPGOSparams_dict)
        MPGOSparams_dict = self.parse_algorithm(unique_dict, MPGOSparams_dict) 
        # Ordino anche le equazioni when che vanno in equations
        der_eq = []
        index = 0
        while index < len(self.dynamic_equations['equations']):
            if isinstance(self.dynamic_equations['equations'][index].left, dynequations.Der):
                element = self.dynamic_equations['equations'][index]
                self.dynamic_equations['equations'].remove(element)
                der_eq.append(element)
            else:
                index += 1
        self.dynamic_equations['equations'].extend(der_eq)
        # Devo prendere le sampleCondition e le devo inserire come ultime equazioni
        sample_conditions = []
        index = 0
        while index < len(self.dynamic_equations['equations']):
            element = self.dynamic_equations['equations'][index]
            if isinstance(element.right, dynequations.Sample):
                self.dynamic_equations['equations'].remove(element)
                sample_conditions.append(element)
            else:
                index += 1
        self.dynamic_equations['equations'].extend(sample_conditions)
        # Devo fare la stessa cosa per quanto riguarda gli algoritmi
        sample_conditions = []
        index = 0
        while index < len(self.algorithms_dict['assign']):
            algo = self.algorithms_dict['assign'][index]
            if isinstance(algo.right, dynequations.Sample):
                self.algorithms_dict['assign'].remove(algo)
                sample_conditions.append(algo)
            else:
                index += 1
        self.algorithms_dict['assign'].extend(sample_conditions)
        # Ritorno un dizionario di variabili 
        self.unique_dict = MPGOSparams_dict
        # START LOG
        msg = "Terminato parsing totale"
        self.logger.debug(msg, msg)
        # END LOG


    def __str__(self):
        string = "" + \
            "VARIABLE\n" + "\n".join([self.unique_dict[x].__str__() for x in self.unique_dict]) + \
            "\n\nINITIAL EQUATIONS\n" + "\n".join([x.__str__() for x in self.initial_equations]) + \
            "\n\nFUNCTIONS\n" + "\n".join([self.userdefined_func[x]._forcpp() for x in self.userdefined_func]) + \
            "\n\nEQUATIONS\n" + "\n".join([x.__str__() for x in self.dynamic_equations["equations"]]) + \
            "\n\nEVENTS\n" + "\n".join([x.__str__() for x in self.dynamic_equations["events"]]) + \
            "\n\nALGORITHMS\n" + "\n".join([x.__str__() for x in self.algorithms_dict["assign"]])
        return string
