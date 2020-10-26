import xml.etree.ElementTree as ET
import variables
from tagclasses import tagclasses
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
    
    @staticmethod
    def getTagElementByName(tag_name, tag_root):
        """
        Si estrapolano dall'XML tutti i tag che matchano il nome dato in input
        :param str tag_name: il nome del tag che si vuol estrarre
        :param str tag_root: Il tag radice di tutti i tag
        """
        return list(filter(lambda x: x.tag == tag_name, list(tag_root)))[0]


    def associate_var2MPGOSparameter(self):
        """
        Tale funzione parsa le variabili presenti nel modello e le associa a parametri MPGOS, 
        ossia i parametri ACC, ACCi, sPAR, sPARi e cPAR. Associa anche alle variabili X ed F.
        Il mapping viene fatto in base alla seguente regola sulla categoria delle variabili:
        state -> X, derivative -> F, independentParameter -> sPAR/i, independentConstant -> sPAR/i,
        algebraic -> ACC/i.
        """
        acc_id, accs     = 0, []
        acci_id, accis   = 0, []
        spar_id, spars   = 0, []
        spari_id, sparis = 0, []
        cpar_id, cpars   = 0, []
        x_id, xs         = 0, []
        f_id, fs         = 0, []
        for variable in self.scalar_variables:
            if variable.alias == "noAlias":
                if variable.categoryType == variables.VariableCategory.ALGEBRAIC:
                    if isinstance(variable, variables.RealScalarVariable):
                        accs.append(variables.ACC(variable.name, acc_id, variable.qualifiedName, variable.alias, variable.start))
                        acc_id += 1
                    else:
                        accis.append(variables.ACCi(variable.name, acci_id, variable.qualifiedName, variable.alias, variable.start))
                        acci_id += 1
                elif variable.categoryType == variables.VariableCategory.INDEPENDENT_CONSTANT or \
                    variable.categoryType == variables.VariableCategory.INDEPENDENT_PARAMETER:
                    if isinstance(variable, variables.RealScalarVariable):
                        spars.append(variables.sPAR(variable.name, spar_id, variable.qualifiedName, variable.alias, variable.start))
                        spar_id += 1
                    else:
                        sparis.append(variables.sPARi(variable.name, spari_id, variable.qualifiedName, variable.alias, variable.start))
                        spari_id += 1
                elif variable.categoryType == variables.VariableCategory.STATE:
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
        
        return accs, accis, spars, sparis, cpars, xs, fs

    
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
                print(self.dynamic_equations['equations'][-1])
            # Parsing degli eventi

    
    def parse_initial_equations(self):
        """ Esegue il parsing di tutti i tag interni a <equ:InitialEquations> """
        initial_equantions_roottag = Parser.getTagElementByName(f"{tagclasses.EQUATION_NS}InitialEquations", self.root)
        for x in initial_equantions_roottag:
            # Controlliamo che non siano tag vuoti, ossia <equ:Equation><exp:Sub></exp:Sub></equ:Equation>
            if list(x[0]): self.initial_equations.append(tagclasses._parsetag_eq(x))


if __name__ == "__main__":
    p = Parser("./XMLs/BouncingBall.xml")
    p.parse_scalar_variables()
    lista = p.associate_var2MPGOSparameter()
    #variables.Var.forEach(lista, lambda x: variables.Var.forEach(x, print))
    #print()
    #p.parse_dynamic_equations()
    p.parse_initial_equations()
    variables.Var.forEach(p.initial_equations, print)