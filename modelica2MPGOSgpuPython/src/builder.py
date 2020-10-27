from parser import Parser
from tagclasses.variables import *
import os
from os import path
from notifier import Notifier, notifier
import time
import sys


#--------------------------# DEFINIZIONE DELLE MACRO DA UTILIZZARE ALL'INTERNO DEL PROGRAMMA # --------------------------#


NOTIFICATION = True if int(sys.argv[-2]) == 1 else False


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
    def __init__(self, xmlfile, logger):
        self.xmlfile = xmlfile
        self.parser = Parser(xmlfile, logger)
        self.parser.parseXML()
        self.accs, self.xs, self.spars, self.cpars = self.parser.buildSystem() # Prende tutti i parametri
        self.logger = logger
        self.logger.info("Chiamata a builder.SystemDefinition", "Chiamata a builder.SystemDefinition")

    def buildMPGOS_PerThread_OdeFunction(self):
        """ Formatta la stringa per la funzione PerThread_OdeFunction """
        global MPGOS_PerThread_OdeFunction
        # START LOGGING
        msg = "Formatta la stringa per la funzione PerThread_OdeFunction"
        self.logger.debug(msg, msg)
        # END LOGGING
        string = Var.createCodeLineMPGOS(self.xs)
        return MPGOS_PerThread_OdeFunction % (string)

    def buildMPGOS_PerThread_EventFunction(self):
        """ Formatta la stringa per la funzione PerThread_EventFunction """
        global MPGOS_PerThread_EventFunction
        # START LOGGING
        msg = "Formatta la stringa per la funzione PerThread_EventFunction"
        self.logger.debug(msg, msg)
        # END LOGGING
        return MPGOS_PerThread_EventFunction % ("")

    def buildMPGOS_PerThread_ActionAfterEventDetection(self):
        """ Formatta la stringa per la funzione PerThread_ActionAfterEventDetection """
        global MPGOS_PerThread_ActionAfterEventDetection
        # START LOGGING
        msg = "Formatta la stringa per la funzione PerThread_ActionAfterEventDetection"
        self.logger.debug(msg, msg)
        # END LOGGING
        return MPGOS_PerThread_ActionAfterEventDetection % ("")

    def buildMPGOS_PerThread_ActionAfterSuccessfulTimeStep(self):
        """ Formatta la stringa per la funzione PerThread_ActionAfterSuccessfulTimeStep """
        global MPGOS_PerThread_ActionAfterSuccessfulTimeStep
        # START LOGGING
        msg = "Formatta la stringa per la funzione PerThread_ActionAfterSuccessfulTimeStep"
        self.logger.debug(msg, msg)
        # END LOGGING
        string = Var.createCodeLineMPGOS(self.accs, self.cpars)
        return MPGOS_PerThread_ActionAfterSuccessfulTimeStep % (string)

    def buildMPGOS_PerThread_Initialization(self):
        """ Formatta la stringa per la funzione PerThread_Initialization """
        global MPGOS_PerThread_Initialization
        # START LOGGING
        msg = "Formatta la stringa per la funzione PerThread_Initialization"
        self.logger.debug(msg, msg)
        # END LOGGING
        return MPGOS_PerThread_Initialization % ("")

    def buildMPGOS_PerThread_Finalization(self):
        """ Formatta la stringa per la funzione PerThread_Finalization """
        global MPGOS_PerThread_Finalization
        # START LOGGING
        msg = "Formatta la stringa per la funzione PerThread_Finalization "
        self.logger.debug(msg, msg)
        # END LOGGING
        return MPGOS_PerThread_Finalization % ("")

    def getparameters(self):
        """ Ritorna la lista dei parametri """
        return [self.accs, self.xs, self.spars, self.cpars]

    def createnewdir(self):
        """ Ritorna il path della nuova directory dove salvare i file """
        directory, model = self.parser.modelname.split(".")
        newdir = "/".join(directory.split("/")[:-1]) + "/" + model + "_MPGOS"
        return newdir

    @notifier(
        NOTIFICATION, 
        "Build SistemDefinition File",
        "Creazione del file di definizione del sistema con tutte le relative funzioni",
        "Build SystemDefinition File",
        "Terminata creazione del file di definizione del sistema"
    )
    def createSystemDefinitionFile(self):
        """ Crea il file <Model>_SystemDefinition.cuh nel quale è presente il sistema di ODE """
        global MPGOS_Model_SystemDefinition
        # START LOGGING 
        msg = "Creazione del file di definizione del sistema con tutte le relative funzioni"
        self.logger.debug(msg, msg)
        # END LOGGING
        functions = "{}\n{}\n{}\n{}\n{}\n{}\n".format(
            self.buildMPGOS_PerThread_OdeFunction(),
            self.buildMPGOS_PerThread_EventFunction(),
            self.buildMPGOS_PerThread_ActionAfterEventDetection(),
            self.buildMPGOS_PerThread_ActionAfterSuccessfulTimeStep(),
            self.buildMPGOS_PerThread_Initialization(),
            self.buildMPGOS_PerThread_Finalization()
        )
        directory, model = self.parser.modelname.split(".")
        try:
            os.mkdir(self.createnewdir())
        except FileExistsError as e:
            # START NOTIFYINH
            n = Notifier("modelica2GPU")
            n.setupforerror("Error: FileExistsError", e.__str__())
            n.show()
            # END NOTIFYING
            # START LOGGING 
            msg = "Errore durante la creazione del file -> " + e.__str__()
            self.logger.debug(msg, msg)
            # END LOGGING
            time.sleep(3)
        try:
            with open(self.createnewdir() + "/" + model + "_SystemDefinition.cuh", mode="w") as stream:
                stream.write(MPGOS_Model_SystemDefinition % (model, model, functions))
            return self.createnewdir() + "/" + model + "_SystemDefinition.cuh"
        except Exception as e:
            # START NOTIFYING
            n = Notifier("modelica2GPU")
            n.setupforerror("Error: Exception", e.__str__())
            n.show()
            # END NOTIFYING
            # START LOGGING 
            msg = "Errore durante la scrittura nel file -> " + e.__str__()
            self.logger.debug(msg, msg)
            # END LOGGING
            time.sleep(2)
