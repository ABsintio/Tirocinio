from typing import List, Tuple
import sys
import re

START_EQUATION = r"\s+equation"              # Matcha quando nel file modelica iniziano le equazioni
START_ALGORITHM = r"\s+algorithm"            # Matcha quando nel file modelica iniziano gli algoritmi
INITIAL_EQUATION = r"\s+initial equation"    # Matcha quando nel file modelica ci sono le initial equation
END_FILE = r"end\s*\S+"                      # Matcha quando nel file modelica terminano le equazioni
EQ_RHS_RE = r"([^0-9]{1,}\w*[(+*)]{1,}){1,}" # Matcha nel file modelica la parte destra di una equazione
EQ_LHS_RE = r"der\(\w+\)"                    # Matcha nel file modelica la parte sinitra di una equazione


global MPGOS_PerThread_OdeFunction

MPGOS_PerThread_OdeFunction = """                                                     
template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(    
    int tid, int NT, \                                                              
    Precision*    F, Precision*    X, Precision     T, \                            
    Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi   
) {                                                                                 
%s                                                                                  
}                                                                                   
"""


class LHS: # LEFT HAND SIDE OF EQUATIONS
    def __init__(self, lhsString):
        self.value = lhsString
        
    def __str__(self): return self.value


class RHS: # RIGHT HAND SIDE OF EQUATIONS
    def __init__(self, rhsString):
        self.value = rhsString
        
    def __str__(self): return self.value


class ODESystem:

    def __init__(self, initial:List[Tuple[LHS, RHS]], lhs:List[LHS], rhs:List[RHS]):
        try:
            assert len(rhs) == len(lhs)
        except AssertionError:
            print("Errore nella creazione del sistema di ODE")
            sys.exit(200)

        self.system = dict(zip(lhs, rhs))
        self.sd = len(lhs)
        self.initial_eq = initial
    
    def printODESystem(self):
        print("Initial Equation (")
        for x, y in self.initial_eq:
            print(f"\t{x} = {y}")
        print(")\nInit ODE(")
        for l, r in self.system.items():
            print(f"\t{l} = {r}")
        print(")")
        
    def buildMPGOS_PerThread_String(self):
        global MPGOS_PerThread_OdeFunction
        forFormatting = ""
        for i, r in enumerate(self.system.values()):
            forFormatting += f"\tF[{i}] = {r}\n"
        MPGOS_PerThread_OdeFunction = MPGOS_PerThread_OdeFunction % (forFormatting)


class ParserModelica(object):
    def __init__(self, infile, outfile):
        self.inputFile = infile
        self.outputFile = outfile
    
    def parse_initial_equations(self):
        stream = open(self.inputFile, mode="r", encoding="utf-8")
        init_equations = []
        start, end = False, False
        lines = stream.readlines()
        for line in lines:
            if end: break
            if re.match(INITIAL_EQUATION, line): start = True
            elif re.match(START_EQUATION, line) or \
                 re.match(START_ALGORITHM, line) or \
                 re.match(END_FILE, line): end = True
            if start and "initial equation" not in line and \
               line != '\n' and not end:
                splittedEq = line.split("=")
                couple = (LHS(splittedEq[0].strip()), RHS(splittedEq[1][:-2]))
                init_equations.append(couple)
                
        return init_equations
    
    def parse_equations(self):
        stream = open(self.inputFile, mode="r", encoding="utf-8")
        rhs, lhs = [], []
        start, end = False, False
        lines = stream.readlines()
        for line in lines:
            if end: break
            if re.match(START_EQUATION, line): start = True
            elif re.match(START_ALGORITHM, line) or \
                 re.match(END_FILE, line): end = True
            if start and "equation" not in line and \
               line != '\n' and not end:
                splittedEq = line.split("=")
                lhs.append(LHS(splittedEq[0].strip()))
                rhs.append(RHS(splittedEq[1][:-2]))
        
        for l, r in zip(lhs, rhs):
            matchLHS = re.match(EQ_LHS_RE, l.__str__())
            matchRHS = re.match(EQ_RHS_RE, r.__str__())
            if matchLHS and matchRHS: # matching delle ODE
                print(l.__str__() + " = " + r.__str__())
            
        return rhs, lhs
                


if __name__ == "__main__":
    # ~ print("----- PARSING FILE: Class_elmt_compartment_0000004.mo -----\n")
    # ~ pm = ParserModelica("Class_elmt_compartment_0000004.mo", "output")
    # ~ rhs, lhs = pm.parse_equations()
    # ~ init_eq = pm.parse_initial_equations()
        
    # ~ print("\n----- BUILDING ODE SYSTEM FOR: Class_elmt_compartment_0000004.mo -----\n\n")
    # ~ odes = ODESystem(init_eq, lhs, rhs)
    # ~ odes.printODESystem()
    
    # ~ print("\n")
    
    print("----- PARSING FILE: Class_elmt_CYTOPLASM.mo -----\n")
    pm = ParserModelica("Class_elmt_CYTOPLASM.mo", "output")
    rhs, lhs = pm.parse_equations()
    init_eq = pm.parse_initial_equations()
        
    print("\n----- BUILDING ODE SYSTEM FOR: Class_elmt_CYTOPLASM.mo -----\n\n")
    odes = ODESystem(init_eq, lhs, rhs)
    odes.printODESystem()
    
    print("\n")
    odes.buildMPGOS_PerThread_String()
    print(MPGOS_PerThread_OdeFunction)
    
    # ~ print("----- PARSING FILE: Class_elmt_default.mo -----\n")
    # ~ pm = ParserModelica("Class_elmt_default.mo", "output")
    # ~ rhs, lhs = pm.parse_equations()
    # ~ init_eq = pm.parse_initial_equations()
    
    # ~ print("\n----- BUILDING ODE SYSTEM FOR: Class_elmt_default.mo -----\n\n")
    # ~ odes = ODESystem(init_eq, lhs, rhs)
    # ~ odes.printODESystem()
    
    # ~ print("\n")
        
    print("\n----- PARSING FILE: Reactions.mo -----\n")
    pm = ParserModelica("Reactions.mo", "output")
    rhs, lhs = pm.parse_equations()
    init_eq = pm.parse_initial_equations()
        
    print("\n----- BUILDING ODE SYSTEM FOR: Reactions.mo -----\n\n")
    odes = ODESystem(init_eq, lhs, rhs)
    odes.printODESystem()
