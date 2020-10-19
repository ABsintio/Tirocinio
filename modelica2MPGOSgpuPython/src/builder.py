from parser import Parser, Var
import os
from os import path

#--------------------------# DEFINIZIONE DEL PATTERN DELLE FUNZIONI DA UTILIZZARE IN MPGOS    # --------------------------#
				           

# X
MPGOS_PerThread_OdeFunction = """
template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \\
	Precision*    F, Precision*    X, Precision     T, \\
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
%s
}
"""

MPGOS_PerThread_EventFunction = """
template<class Precision> __forceinline__ __device__ void PerThread_EventFunction(
	int tid, int NT, Precision*	  EF, \\
	Precision     T, Precision    dT, Precision    TD, Precision*	X, \\
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
%s
}
"""

MPGOS_PerThread_ActionAfterEventDetection = """
template<class Precision> __forceinline__ __device__ void PerThread_ActionAfterEventDetection(
    int tid, int NT, int IDX, int& UDT, \\
    Precision    &T, Precision   &dT, Precision*    TD, Precision*   X, \\
    Precision* cPAR, Precision* sPAR, int*       sPARi, Precision* ACC, int* ACCi
) {
%s
}
"""

# ACC, cPAR
MPGOS_PerThread_ActionAfterSuccessfulTimeStep = """
template<class Precision> __forceinline__ __device__ void PerThread_ActionAfterSuccessfulTimeStep(
    int tid, int NT, int& UDT, \\
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \\
    Precision* cPAR, Precision* sPAR, int*       sPARi, Precision* ACC, int* ACCi
) {
%s
}
"""

MPGOS_PerThread_Initialization = """
template<class Precision> __forceinline__ __device__ void PerThread_Initialization(
    int tid, int NT, int& DOIDX, \\
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \\
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
    T     = TD[0];
    DOIDX = 0;
%s
}
"""

MPGOS_PerThread_Finalization = """
template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \\
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \\
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
%s	
}
"""

MPGOS_Model_SystemDefinition = """
#ifndef %s_PERTHREAD_SYSTEMDEFINITION_H
#define %s_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>

%s

#endif
"""


#--------------------------# DEFINIZIONE DELLA CLASSE PER LA BUILD DELLA DEFINIZIONE DEL SISTEMA # --------------------------#

class SystemDefinition:
    """ Classe per la costruzione della definizione del sistema (File SystemDefinition.cuh) """
    def __init__(self, xmlfile, workdir):
        self.xmlfile = xmlfile
        self.workdir = workdir
        self.parser = Parser(xmlfile, workdir)
        self.parser.parse()
        self.accs, self.xs, self.spars, self.cpars = self.parser.buildSystem() # Prende tutti i parametri

    def buildMPGOS_PerThread_OdeFunction(self):
        """ Formatta la stringa per la funzione PerThread_OdeFunction """
        global MPGOS_PerThread_OdeFunction
        string = Var.createCodeLineMPGOS(self.xs)
        return MPGOS_PerThread_OdeFunction % (string)

    def buildMPGOS_PerThread_EventFunction(self):
        """ Formatta la stringa per la funzione PerThread_EventFunction """
        global MPGOS_PerThread_EventFunction
        return MPGOS_PerThread_EventFunction % ("")

    def buildMPGOS_PerThread_ActionAfterEventDetection(self):
        """ Formatta la stringa per la funzione PerThread_ActionAfterEventDetection """
        global MPGOS_PerThread_ActionAfterEventDetection
        return MPGOS_PerThread_ActionAfterEventDetection % ("")

    def buildMPGOS_PerThread_ActionAfterSuccessfulTimeStep(self):
        """ Formatta la stringa per la funzione PerThread_ActionAfterSuccessfulTimeStep """
        global MPGOS_PerThread_ActionAfterSuccessfulTimeStep
        string = Var.createCodeLineMPGOS(self.accs, self.cpars)
        return MPGOS_PerThread_ActionAfterSuccessfulTimeStep % (string)

    def buildMPGOS_PerThread_Initialization(self):
        """ Formatta la stringa per la funzione PerThread_Initialization """
        global MPGOS_PerThread_Initialization
        return MPGOS_PerThread_Initialization % ("")

    def buildMPGOS_PerThread_Finalization(self):
        """ Formatta la stringa per la funzione PerThread_Finalization """
        global MPGOS_PerThread_Finalization
        return MPGOS_PerThread_Finalization % ("")

    def getparameters(self):
        """ Ritorna la lista dei parametri """
        return [self.accs, self.xs, self.spars, self.cpars]

    def createSystemDefinitionFile(self):
        """ Crea il file <Model>_SystemDefinition.cuh nel quale è presente il sistema di ODE """
        global MPGOS_Model_SystemDefinition
        functions = "{}\n{}\n{}\n{}\n{}\n{}\n".format(
            self.buildMPGOS_PerThread_OdeFunction(),
            self.buildMPGOS_PerThread_EventFunction(),
            self.buildMPGOS_PerThread_ActionAfterEventDetection(),
            self.buildMPGOS_PerThread_ActionAfterSuccessfulTimeStep(),
            self.buildMPGOS_PerThread_Initialization(),
            self.buildMPGOS_PerThread_Finalization()
        )
        directory, model = self.parser.modelname.split(".")
        newdir = "/".join(directory.split("/")[:-1]) + "/" + model + "_MPGOS"
        try:
            os.mkdir(newdir)
        except Exception as e:
            print(e)
        try:
            with open(newdir + "/" + model + "_SystemDefinition.cuh", mode="w") as stream:
                stream.write(MPGOS_Model_SystemDefinition % (model, model, functions))
        except Exception as e:
            print(e)
