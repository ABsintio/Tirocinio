from tagclasses.variables import *
from utils.notifier import *
import os
from os import path
import sys


#--------------------------# DEFINIZIONE DELLE MACRO DA UTILIZZARE ALL'INTERNO DEL PROGRAMMA # --------------------------#


NOTIFICATION = True if int(sys.argv[-1]) == 1 else False


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


#--------------------------# DEFINIZIONE DEI PATTERN PER IL FILE CHE DESCRIVE IL MODELLO    # --------------------------#	 





#--------------------------# DEFINIZIONE DELLE CLASSI PER LA CREAZIONE DEI DUE FILE NECESSARI # --------------------------#


class ModelBuilder:
    """ Classe per la costruzione del file cpp Model.cu """
    pass


class SystemDefinitionBuilder:
    """ Classe per la costruzione della definizione del sistema (File Model_SystemDefinition.cuh) 
    Attributes:
        abstract_model -- Rappresentazione astratta a schematica del modello (istanza di classe Model)
        logger -- Istanza di classe logger per rappresentare il log
    """
    def __init__(self, abstract_model, logger):
        self.abstract_model = abstract_model
        self.logger = logger
        # START LOG
        msg = "Chiamata alla classe SystemDefinitionBuilder"
        self.logger.info(msg, msg)
        # END LOG


    def buildMPGOS_PerThread_OdeFunction(self):
        """ Formatta la stringa per la funzione PerThread_OdeFunction """
        # START LOG
        msg = "Formattazione della stringa per la funzione PerThread_OdeFunction"
        self.logger.debug(msg, msg)
        # END LOG
        global MPGOS_PerThread_OdeFunction
        MPGOSPerThread_OdeFunction = MPGOS_PerThread_OdeFunction % (
            Var.createMPGOScodeline(self.abstract_model.odes))
        return MPGOSPerThread_OdeFunction


    def buildMPGOS_PerThread_EventFunction(self):
        """ Formatta la stringa per la funzione PerThread_EventFunction """
        # START LOG
        msg = "Formattazione della stringa per la funzione PerThread_EventFunction"
        self.logger.debug(msg, msg)
        # END LOG
        global MPGOS_PerThread_EventFunction
        MPGOS_PerThread_EventFunction = MPGOS_PerThread_EventFunction % (
            Var.createMPGOScodeline(self.abstract_model.othereq['trigger']))
        return MPGOS_PerThread_EventFunction


    def buildMPGOS_PerThread_ActionAfterEventDetection(self):
        """ Formatta la stringa per la funzione PerThread_ActionAfterEventDetection """
        # START LOG
        msg = "Formattazione della stringa per la funzione PerThread_ActionAfterEventDetection"
        self.logger.debug(msg, msg)
        # END LOG
        global MPGOS_PerThread_ActionAfterEventDetection
        MPGOS_PerThread_ActionAfterEventDetection = MPGOS_PerThread_ActionAfterEventDetection % (
            Var.createMPGOScodeline(self.abstract_model.events))
        return MPGOS_PerThread_ActionAfterEventDetection


    def buildMPGOS_PerThread_ActionAfterSuccessfulTimeStep(self):
        """ Formatta la stringa per la funzione PerThread_ActionAfterSuccessfulTimeStep """
        # START LOG
        msg = "Formattazione della stringa per la funzione PerThread_ActionAfterSuccessfulTimeStep"
        self.logger.debug(msg, msg)
        # END LOG
        global MPGOS_PerThread_ActionAfterSuccessfulTimeStep
        MPGOS_PerThread_ActionAfterSuccessfulTimeStep = MPGOS_PerThread_ActionAfterSuccessfulTimeStep % (
            Var.createMPGOScodeline(self.abstract_model.othereq['normal']))
        return MPGOS_PerThread_ActionAfterSuccessfulTimeStep


    def buildMPGOS_PerThread_Initialization(self):
        """ Formatta la stringa per la funzione PerThread_Initialization """
        # START LOG
        msg = "Formattazione della stringa per la funzione PerThread_Initialization"
        self.logger.debug(msg, msg)
        # END LOG
        global MPGOS_PerThread_Initialization
        MPGOS_PerThread_Initialization = MPGOS_PerThread_Initialization % (
            Var.createMPGOScodeline(self.abstract_model.init['initialization']))
        return MPGOS_PerThread_Initialization


    def buildMPGOS_PerThread_Finalization(self):
        """ Formatta la stringa per la funzione PerThread_Finalization """
        # START LOG
        msg = "Formattazione della stringa per la funzione PerThread_Finalization"
        self.logger.debug(msg, msg)
        # END LOG
        global MPGOS_PerThread_Finalization
        MPGOS_PerThread_Finalization = MPGOS_PerThread_Finalization % ("")
        return MPGOS_PerThread_Finalization

    @notifier(
        NOTIFICATION, 
        "Build SistemDefinition File",
        "Creazione del file di definizione del sistema con tutte le relative funzioni",
        "Build SystemDefinition File",
        "Terminata creazione del file di definizione del sistema"
    )
    def createSystemDefinitionFile(self):
        """ Crea il file <Model>_SystemDefinition.cuh nel quale è presente il sistema di ODE """
        # START LOG
        msg = f"Formattazione della stringa per il file {self.abstract_model.model_name}_SystemDefinition.cuh"
        self.logger.debug(msg, msg)
        # END LOG
        global MPGOS_Model_SystemDefinition
        MPGOSfunction_list = [
            self.buildMPGOS_PerThread_OdeFunction(),
            self.buildMPGOS_PerThread_EventFunction(),
            self.buildMPGOS_PerThread_ActionAfterEventDetection(),
            self.buildMPGOS_PerThread_ActionAfterSuccessfulTimeStep(),
            self.buildMPGOS_PerThread_Initialization(),
            self.buildMPGOS_PerThread_Finalization()
        ]
        MPGOS_Model_SystemDefinition = MPGOS_Model_SystemDefinition % (
            self.abstract_model.model_name, 
            self.abstract_model.model_name,
            "".join(MPGOSfunction_list)
        )
        # START LOG
        msg = "Terminata formattazione"
        self.logger.debug(msg, msg)
        # END LOG
        return MPGOS_Model_SystemDefinition



class Builder:
    """ Classe principale che richiama le due classi SystemDefinitionBuilder e ModelBuilder """
    def __init__(self, abstract_model, workindir, logger):
        self.abstract_model    = abstract_model
        self.workingdir        = workindir
        self.logger            = logger
        # START LOG
        msg = "Chiamata alla classe Builder"
        self.logger.info(msg, msg)
        # END LOG
        self.newdir = self.createnewdir() # Crea la nuova directory nella quale salvare i file
        self.systemdef_builder = SystemDefinitionBuilder(self.abstract_model, self.logger)

    def createnewdir(self):
        """ Ritorna il path della nuova directory dove salvare i file """
        # START LOG
        msg = "Creazione delle directory nella quale salvare i file"
        self.logger.debug(msg, msg)
        # END LOG
        newdir = os.path.abspath(self.workingdir) + "/" + self.abstract_model.model_name + "_MPGOS"
        try:
            os.mkdir(newdir)
        except FileExistsError:
            # START LOG
            msg = f"La directory {newdir} è già stata creata in precedenza, e quindi non sarà ricreata"
            self.logger.debug(msg, msg)
            # END LOG
        finally:
            return newdir

    def save_sysdef(self):
        """ Crea il contenuto e lo salva nel file di definizione del sistema """
        file_content = self.systemdef_builder.createSystemDefinitionFile()
        sysdeffile = self.newdir + f"/{self.abstract_model.model_name}_SystemDefinition.cuh"
        # START LOG
        msg = f"Salvataggio del contenuto del file di definizione del sistema in {sysdeffile}"
        self.logger.debug(msg, msg)
        # END LOG
        with open(sysdeffile, mode="w") as f:
            f.write(file_content)
        # START LOG
        msg = f"Contenuto salvato correttamente"
        self.logger.debug(msg, msg)
        # END LOG

    def builfiles(self):
        """ Costruisce entrambi i file """
        self.save_sysdef()