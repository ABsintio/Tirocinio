from typing import List
import sys
import re

START_EQUATION = r"\s+equation"    # Matcha quando nel file modelica iniziano le equazioni
START_ALGORITHM = r"\s+algorithm"  # Matcha quando nel file modelica iniziano gli algoritmi
END_FILE = r"end\s*\S+"            # Matcha quando nel file modelica terminano le equazioni

global MPGOS_PerThread_OdeFunction

MPGOS_PerThread_OdeFunction = """                                                     
template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(    
    int tid, int NT, \                                                              
    Precision*    F, Precision*    X, Precision     T, \                            
    Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int*A ACCi   
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

    def __init__(self, rhs:List[RHS], lhs:List[LHS]):
        try:
            assert len(rhs) == len(lhs)
        except AssertionError:
            print("Errore nella creazione del sistema di ODE")
            sys.exit(200)

        self.system = dict(zip(rhs, lhs))
        self.sd = len(rhs)

    def printODESystem(self):
        print("Init ODE(")
        for i, l in enumerate(self.system.values()):
            print(f"\tF[{i}] = {l}")
        print(")")
        
    def buildMPGOS_PerThread_String(self):
        global MPGOS_PerThread_OdeFunction
        forFormatting = ""
        for i, l in enumerate(self.system.values()):
            forFormatting += f"\tF[{i}] = {l}\n"
        MPGOS_PerThread_OdeFunction = MPGOS_PerThread_OdeFunction % (forFormatting)

class ParserModelica(object):
    def __init__(self, infile, outfile):
        self.inputFile = infile
        self.outputFile = outfile
    
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
                rhs.append(RHS(splittedEq[0].strip()))
                lhs.append(LHS(splittedEq[1][:-2]))
        
        
        return rhs, lhs
                


if __name__ == "__main__":
    print("----- PARSING FILE: Class.elmt_cell.mo -----\n\n")
    pm = ParserModelica("Class_elmt_cell.mo", "output")
    rhs, lhs = pm.parse_equations()
    
    for rhsEq, lhsEq in zip(rhs, lhs):
        print(rhsEq.__str__() + " = " + lhsEq.__str__())
        
    print("\n----- BUILDING ODE SYSTEM -----\n\n")
    odes = ODESystem(rhs, lhs)
    odes.printODESystem()
    
    print("\n")
    odes.buildMPGOS_PerThread_String()
    print(MPGOS_PerThread_OdeFunction)
        
    print("\n----- PARSING FILE: Reactions.mo -----\n\n")
    
    pm = ParserModelica("Reactions.mo", "output")
    rhs, lhs = pm.parse_equations()
    
    for rhsEq, lhsEq in zip(rhs, lhs):
        print(rhsEq.__str__() + " = " + lhsEq.__str__())
        
    
