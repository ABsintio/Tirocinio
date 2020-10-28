from parser import Parser
from tagclasses.variables import *
from utils.notifier import *
import os
from os import path
import time
import sys


#--------------------------# DEFINIZIONE DELLE MACRO DA UTILIZZARE ALL'INTERNO DEL PROGRAMMA # --------------------------#


NOTIFICATION = True if int(sys.argv[1]) == 1 else False


#--------------------------# DEFINIZIONE DEL PATTERN DELLE FUNZIONI DA UTILIZZARE IN MPGOS    # --------------------------#	           

# X, F
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

# ACC
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


#--------------------------# DEFINIZIONE DELLE CLASSI PER LA CREAZIONE DEI DUE FILE NECESSARI # --------------------------#


class ModelBuilder:
    """ Classe per la costruzione del file cpp Model.cu """
    pass


class SystemDefinitionBuilder:
    """ Classe per la costruzione della definizione del sistema (File Model_SystemDefinition.cuh) """
    def __init__(self, MPGOSparams_dict, logger):
        self.MPGOSparams_dict = MPGOSparams_dict
        self.logger = logger

    def buildMPGOS_PerThread_OdeFunction(self):
        """ Formatta la stringa per la funzione PerThread_OdeFunction """
        pass

    def buildMPGOS_PerThread_EventFunction(self):
        """ Formatta la stringa per la funzione PerThread_EventFunction """
        pass

    def buildMPGOS_PerThread_ActionAfterEventDetection(self):
        """ Formatta la stringa per la funzione PerThread_ActionAfterEventDetection """
        pass

    def buildMPGOS_PerThread_ActionAfterSuccessfulTimeStep(self):
        """ Formatta la stringa per la funzione PerThread_ActionAfterSuccessfulTimeStep """
        pass

    def buildMPGOS_PerThread_Initialization(self):
        """ Formatta la stringa per la funzione PerThread_Initialization """
        pass

    def buildMPGOS_PerThread_Finalization(self):
        """ Formatta la stringa per la funzione PerThread_Finalization """
        pass

    @notifier(
        NOTIFICATION, 
        "Build SistemDefinition File",
        "Creazione del file di definizione del sistema con tutte le relative funzioni",
        "Build SystemDefinition File",
        "Terminata creazione del file di definizione del sistema"
    )
    def createSystemDefinitionFile(self):
        """ Crea il file <Model>_SystemDefinition.cuh nel quale è presente il sistema di ODE """
        pass


class Builder:
    """ Classe principale che richiama le due classi SystemDefinitionBuilder e ModelBuilder """
    def __init__(self, xmlfile, workindir, logger):
        self.xmlfile = xmlfile
        self.workdir = workindir
        self.logger  = logger
        self.parser  = Parser(xmlfile)
        self.parser.parseXML()
        self.systemdef_builder = SystemDefinitionBuilder(self.parser.unique_dict)

    def createnewdir(self):
        """ Ritorna il path della nuova directory dove salvare i file """
        directory, model = self.parser.modelname.split(".")
        newdir = "/".join(directory.split("/")[:-1]) + "/" + model + "_MPGOS"
        return newdir