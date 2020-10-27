import xml.etree.ElementTree as ET
from tagclasses import tagclasses, variables
import exceptions.builtExceptions


# ----------------------------------------------------- # CLASSI PER IL PARSING # ------------------------------------------------------ #


class Parser:
    """ Classe che esegue il parser dell'XML """
    def __init__(self, filename):
        self.root = ET.parse(filename).getroot()
        self.dynamic_equations = {"equations": [], "events": []}
        self.binding_equations = []
        self.initial_equations = []
        self.scalar_variables  = []
        self.userdefined_func  = dict()
    
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
        acc_id, accs = 0, []
        variable_list = [x for x in self.scalar_variables if x.alias == "noAlias" and \
                                                             x.categoryType == variables.VariableCategory.ALGEBRAIC and \
                                                             isinstance(x, variables.RealScalarVariable)]
        for variable in variable_list:
            accs.append(variables.ACC(variable.name, acc_id, variable.qualifiedName, variable.alias, variable.start))
            acc_id += 1
        
        return accs

    
    def createACCi(self):
        """ Associa a tutte le variabili algebraic con tipo no Real un'istanza ACCi """
        acci_id, accis = 0, []
        variable_list = [x for x in self.scalar_variables if x.alias == "noAlias" and \
                                                             x.categoryType == variables.VariableCategory.ALGEBRAIC and \
                                                             not isinstance(x, variables.RealScalarVariable)]
        for variable in variable_list:
            accis.append(variables.ACCi(variable.name, acci_id, variable.qualifiedName, variable.alias, variable.start))
            acci_id += 1
        
        return accis


    def create_sPAR(self):
        """ Associa a tutte le variabili independentParameter/Constant un'istanza sPAR """
        spar_id, spars = 0, []
        variable_list = [x for x in self.scalar_variables if x.alias == "noAlias" and \
                                                            (x.categoryType == variables.VariableCategory.INDEPENDENT_CONSTANT or \
                                                             x.categoryType == variables.VariableCategory.INDEPENDENT_PARAMETER) and \
                                                             isinstance(x, variables.RealScalarVariable)]
        
        for variable in variable_list:
            spars.append(variables.sPAR(variable.name, spar_id, variable.qualifiedName, variable.alias, variable.start))
            spar_id += 1
        
        return spars
    

    def create_sPARi(self):
        """ Associa a tutte le variabili independentParameter/Constant di tipo no Real un'istanza sPARi """
        spari_id, sparis = 0, []
        variable_list = [x for x in self.scalar_variables if x.alias == "noAlias" and \
                                                            (x.categoryType == variables.VariableCategory.INDEPENDENT_CONSTANT or \
                                                             x.categoryType == variables.VariableCategory.INDEPENDENT_PARAMETER) and \
                                                             not isinstance(x, variables.RealScalarVariable)]
        
        for variable in variable_list:
            sparis.append(variables.sPARi(variable.name, spari_id, variable.qualifiedName, variable.alias, variable.start))
            spari_id += 1
        
        return sparis


    def createX_and_F(self):
        """ Associa a tutte le variabili derivate un'istanza di tipo F, mentre per quelle di tipo state ->  X"""
        x_id, xs = 0, []
        f_id, fs = 0, []
        variable_list = [x for x in self.scalar_variables if x.alias == "noAlias"]
        for variable in variable_list:
            if variable.categoryType == variables.VariableCategory.STATE:
                # Se è uno stato vedo se è presente una variable tra quelle già inserite in 
                # fs che è una sua derivative, per prendere il suo stesso identificativo.
                associate_der = list(filter(lambda x: x.qualifiedName == variable.qualifiedName, fs))
                identificativo = x_id
                if associate_der: identificativo = associate_der[-1].id # Se esiste una tale classe allora imposto l'identificativo
                x_id += 1 if not associate_der else 0 # altrimenti aumento quello delle variabili X
                xs.append(variables.X(variable.name, identificativo, variable.qualifiedName, variable.alias, variable.start))
            elif variable.categoryType == variables.VariableCategory.DERIVATIVE:
                # Faccio la stessa cosa che ho fatto per le variabili X parsato precedentemente
                associate_x = list(filter(lambda x: x.qualifiedName == variable.qualifiedName, xs))
                identificativo = f_id 
                if associate_der: identificativo = associate_x[-1].id
                f_id += 1 if associate_x else 0
                fs.append(variables.F(variable.name, identificativo, variable.qualifiedName, variable.alias, variable.start))

        return xs, fs


    def associate_var2MPGOSparameter(self):
        """
        Tale funzione parsa le variabili presenti nel modello e le associa a parametri MPGOS, 
        ossia i parametri ACC, ACCi, sPAR, sPARi e cPAR. Associa anche alle variabili X ed F.
        Il mapping viene fatto in base alla seguente regola sulla categoria delle variabili:
        state -> X, derivative -> F, independentParameter -> sPAR/i, independentConstant -> sPAR/i,
        algebraic -> ACC/i.
        """
        
        return self.createACC(), self.createACCi(), self.create_sPAR(), self.create_sPARi(), *self.createX_and_F()

    
    def parse_scalar_variables(self):
        """ Esegue il parsing di tutti i tag interi a <ModelVariables> """
        scalar_valriable_roottag = Parser.getTagElementByName("ModelVariables", self.root)
        for x in scalar_valriable_roottag:
            self.scalar_variables.append(variables._parsetag_var(x))

    
    def parse_dynamic_equations(self):
        """ Esegue il parsing di tutti i tag <equ:DynamicEquations> """
        dynamic_equations_roottag = Parser.getTagElementByName(f"{tagclasses.EQUATION_NS}DynamicEquations", self.root)
        for x in dynamic_equations_roottag:
            # Parsing delle equazioni
            if x.tag == f"{tagclasses.EQUATION_NS}Equation":
                self.dynamic_equations["equations"].append(tagclasses._parsetag_eq(x))
            #TODO: Parsing degli eventi

    
    def parse_initial_equations(self):
        """ 
        Esegue il parsing di tutti i tag interni a <equ:InitialEquations> ed associati i valori
        estrapolati dalle equazioni iniziali alle variabili che non hanno l'attributo start diverso da None.
        """
        initial_equantions_roottag = Parser.getTagElementByName(f"{tagclasses.EQUATION_NS}InitialEquations", self.root)
        for x in initial_equantions_roottag:
            # Controlliamo che non siano tag vuoti, ossia <equ:Equation><exp:Sub></exp:Sub></equ:Equation>
            if list(x[0]): self.initial_equations.append(tagclasses._parsetag_eq(x))
        # Prendo le variabili coinvolte nelle equazioni iniziali
        variable_list = [variables.ScalarVariable.getvar(self.scalar_variables, ieqs.left.__str__()) for ieqs in self.initial_equations]
        # Inserisco i valori iniziali nelle variabili che non ne presentano
        for v, e in zip(variable_list, self.initial_equations):
            if v is not None and v.start is None:
                v.setstart(e.right.__str__())

    
    def parse_userdefined_function(self):
        """ Esegue il parsing delle funzioni definite dall'utente trattate con il tag <fun:FunctionCall> """
        functionlist_rottag = Parser.getTagElementByName(f"{tagclasses.FUNCTIONS_NS}FunctionsList", self.root)
        for x in functionlist_rottag:
            fun = tagclasses._parsetag_fun(x)
            self.userdefined_func[fun.name] = fun
    

    def parse_algorithm(self):
        """ Esegue il parsing di tutti gli algoritmi. Questi sono interni al tag <fun:Algorithm> """
        # TODO: Algorithms Parser

    
    def parseXML(self):
        """ Chiama i diversi metodi di parsing dell'XML """
        self.parse_scalar_variables()
        self.parse_initial_equations()
        self.parse_userdefined_function()
        self.parse_dynamic_equations()


    def __str__(self):
        string = "" + \
            "VARIABLE\n" + "\n".join([x.__str__() for x in self.scalar_variables]) + \
            "\n\nINITIAL EQUATIONS\n" + "\n".join([x.__str__() for x in self.initial_equations]) + \
            "\n\nFUNCTIONS\n" + "\n".join([self.userdefined_func[x]._forcpp() for x in self.userdefined_func]) + \
            "\n\nEQUATIONS\n" + "\n".join([x.__str__() for x in self.dynamic_equations["equations"]])
        return string


if __name__ == "__main__":
    p = Parser("./XMLs/MyModel.xml")
    p.parseXML()
    print(p)