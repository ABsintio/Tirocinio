import xml.etree.ElementTree as ET
from tagclasses import tagclasses, variables
import exceptions.builtExceptions
import sys # temporane per eseguire i test
from utils.logger import *
from utils.notifier import *


NOTIFICATION = int(sys.argv[-1]) == 1


# ----------------------------------------------------- # CLASSI PER IL PARSING # ------------------------------------------------------ #


class Parser:
    """ Classe che esegue il parser dell'XML """
    def __init__(self, filename, logger):
        self.logger = logger
        self.root = ET.parse(filename).getroot()
        self.dynamic_equations = {"equations": [], "events": []}
        self.binding_equations = []
        self.initial_equations = []
        self.scalar_variables  = []
        self.userdefined_func  = dict()
        self.algorithms        = []
        self.unique_dict       = dict()
        self.event_conditions  = []
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
                                                             isinstance(x, variables.RealScalarVariable)]
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
                                                             not isinstance(x, variables.RealScalarVariable)]
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

    
    def parse_dynamic_equations(self, variables_dict, MPGOSparams_dict):
        """ Esegue il parsing di tutti i tag <equ:DynamicEquations> """
        # START LOG
        msg = "Ottenimento delle equazioni e degli eventi, rispettivamente sotto i tag <equ:Equation> e <equ:When>"
        self.logger.debug(msg, msg)
        # END LOG
        dynamic_equations_roottag = Parser.getTagElementByName(f"{tagclasses.EQUATION_NS}DynamicEquations", self.root)
        for x in dynamic_equations_roottag:
            # Parsing delle equazioni
            if x.tag == f"{tagclasses.EQUATION_NS}Equation":
                eq = tagclasses._parsetag_eq(x, variables_dict)
                self.dynamic_equations["equations"].append(eq)
                # Se la parte destra dell'equazione è di tipo Sample
                # allora controllo se l'attributo new_var della parte destra
                # sia pari a None oppure no. Questo perché se non è pari a 
                # None allora devo aggiungere una nuova equazione.
                if isinstance(eq.right, tagclasses.Sample) and eq.right.new_var is not None:
                    self.dynamic_equations["equations"].append(eq.right.new_var.value)
                    MPGOSparams_dict[eq.right.new_var.createMPGOSname()] = eq.right.new_var
            elif x.tag == f"{tagclasses.EQUATION_NS}When":
                # Parsing degli eventi. Uno per equazione presente nel blocco When
                when_eq = tagclasses.When(x, variables_dict, self.event_conditions)
                when_eq.setcondition((when_eq.condition[0], " "*4 + "EF[{id}] = (! ({cond}))".format(
                    id=when_eq.condition[0], cond=when_eq.condition[1]
                )))
                # Mano a mano che trovo nuove condizioni per gli eventi le appendo
                # questo servirà nel momento in cui si dovranno ancdare a formattare
                # le funzioni C++ per gli eventi in quanto si dovrà utilizzare il 
                # vettore EF (event function) e quindi devo tenere il conto di quanti eventi trovo
                if when_eq.condition[1] not in self.event_conditions:
                    self.event_conditions.append(when_eq.condition)
                self.dynamic_equations["events"].append(when_eq)

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
        initial_equantions_roottag = Parser.getTagElementByName(f"{tagclasses.EQUATION_NS}InitialEquations", self.root)
        for x in initial_equantions_roottag:
            # Controlliamo che non siano tag vuoti, ossia <equ:Equation><exp:Sub></exp:Sub></equ:Equation>
            if list(x[0]): 
                ieqs = tagclasses._parsetag_eq(x, variables_dict)
                try:
                    var = MPGOSparameter_dict[ieqs.left.__str__()]
                    if var.init is None:
                        self.initial_equations.append(ieqs)
                        var.setivalue(ieqs.right.__str__())
                except KeyError:
                    pass
        return MPGOSparameter_dict

    
    def parse_userdefined_function(self, variables_dict):
        """ Esegue il parsing delle funzioni definite dall'utente trattate con il tag <fun:FunctionCall> """
        # START LOG
        msg = "Parsing delle funzioni definite dall'utente"
        self.logger.debug(msg, msg)
        # END LOG
        functionlist_rottag = Parser.getTagElementByName(f"{tagclasses.FUNCTIONS_NS}FunctionsList", self.root)
        for x in functionlist_rottag:
            fun = tagclasses._parsetag_fun(x, variables_dict)
            self.userdefined_func[fun.name] = fun
    

    def parse_algorithm(self, variables_dict):
        """ Esegue il parsing di tutti gli algoritmi. Questi sono interni al tag <fun:Algorithm> """
        # START LOG
        msg = "Parsing degli algoritmi sotto il tag <fun:Algorithm>"
        self.logger.debug(msg, msg)
        # END LOG
        algorithm_roottag = Parser.getTagElementByName(f"{tagclasses.FUNCTIONS_NS}Algorithm", self.root)
        for x in algorithm_roottag:
            if x.tag != f"{tagclasses.FUNCTIONS_NS}Assertion":
                self.algorithms.append(tagclasses._parsetag_eq(x, variables_dict, self.userdefined_func))


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
        self.parse_userdefined_function(unique_dict)
        MPGOSparams_dict = self.parse_dynamic_equations(unique_dict, MPGOSparams_dict)
        self.parse_algorithm(unique_dict)
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
            "\n\nALGORITHMS\n" + "\n".join([x.__str__() for x in self.algorithms])
        return string
