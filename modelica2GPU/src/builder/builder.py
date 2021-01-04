from tagclasses.variables import *
from utils.notifier import *
import os
from os import path
import sys
from model import model


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
	Precision     T, Precision    dT, Precision*    TD, Precision*	X, \\
	Precision* cPAR, Precision* sPAR, int*       sPARi, Precision* ACC, int* ACCi  		
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
#include "Functions.cuh"

%s

#endif
"""


#--------------------------# DEFINIZIONE DEI PATTERN PER IL FILE CHE DESCRIVE IL MODELLO # --------------------------#	 


MPGOS_Model_Macro = """
#include <iostream>
#include <vector>
#include <iomanip>
#include <string>
#include <fstream>

#include "{model_sysdef_file}"
#include "SingleSystem_PerThread_Interface.cuh"

using namespace std;

#define SOLVER {solver} // Runge-Kutta Order 4th
#define PRECISION double
const int NT   = {numberOfThreads};
const int SD   = {systemDimension};
const int NCP  = 1;
const int NSP  = {numberOfSharedParameter};
const int NISP = {numberOfIntegerSharedParameter};
const int NE   = {numberOfEvents};
const int NA   = {numberOfAccessories};
const int NIA  = {numberOfIntegerAccessories};
const int NDO  = {numberOfDenseOutput};
"""


MPGOS_SaveDataFunction = """
void SaveData(
    ProblemSolver<NT,SD,NCP,NSP,NISP,NE,NA,NIA,NDO,SOLVER,PRECISION>& Solver, 
    ofstream& DataFile, int NumberOfThreads
) {
    int Width = 18;
    DataFile.precision(10);
    DataFile.flags(ios::scientific);
	
    for (int tid=0; tid<NumberOfThreads; tid++)
    {
%s
        DataFile.width(Width); DataFile << endl;
%s
        DataFile << '\\n';
    }
}
"""


MPGOS_MainFunction = """
int main() {
    int NumberOfProblems = NT; // Numero di problemi da risolvere, uno per thread
    int blockSize        = %d; // Numero di Thread per blocchi
    
    // Listing dei Device CUDA
    ListCUDADevices();

    int MajorVersion = %d; // Major version della CUDA compute capability
    int MinorVersion = %d; // Minor version della CUDA compute capability

    // Seleziona il Device da utilizzare dando in input la CUDA compute capability e ne stampa le caratteristiche
    int SelectedDevice = SelectDeviceByClosestRevision(MajorVersion, MinorVersion);
    PrintPropertiesOfSpecificDevice(SelectedDevice);

    ProblemSolver<NT,SD,NCP,NSP,NISP,NE,NA,NIA,NDO,SOLVER,PRECISION> Solver(SelectedDevice);
    Solver.SolverOption(ThreadsPerBlock, blockSize);
    Solver.SolverOption(PreferSharedMemory, %d);
    Solver.SolverOption(InitialTimeStep, %s);
    Solver.SolverOption(ActiveNumberOfThreads, NT);
    Solver.SolverOption(MaximumTimeStep, %s);
    Solver.SolverOption(MinimumTimeStep, %s);
%s
%s

%s
    Solver.SolverOption(DenseOutputMinimumTimeStep, %s);
    Solver.SolverOption(DenseOutputSaveFrequency, %s);
%s
%s   
    
    int NumberOfSimulationLaunches = NumberOfProblems / NT + (NumberOfProblems %s == 0 ? 0:1);
    ofstream DataFile;
    DataFile.open ( "%s.csv" );
    clock_t SimulationStart = clock();
    clock_t TransientStart;
    clock_t TransientEnd;    
    for (int i=0; i < NumberOfSimulationLaunches; i++) {
        FillSolverObject(Solver, i*NT, NT);
        Solver.SynchroniseFromHostToDevice(All);
        Solver.InsertSynchronisationPoint();
        Solver.SynchroniseSolver();

        TransientStart = clock();
        for (int j=0; j < 1; j++) {
            Solver.Solve();
            Solver.InsertSynchronisationPoint();
            Solver.SynchroniseSolver();
        }
        TransientEnd = clock();
        cout << "Launches: " << i << "  Simulation time: ";
        cout << 1000.0*(TransientEnd-TransientStart) / CLOCKS_PER_SEC << "ms" << endl << endl;
        for (int j=0; j<1; j++)
        {
            Solver.Solve();
            Solver.SynchroniseFromDeviceToHost(All);
            Solver.InsertSynchronisationPoint();
            Solver.SynchroniseSolver();
            SaveData(Solver, DataFile, NT);
        }
    }

    clock_t SimulationEnd = clock();
    cout << "Total simulation time: " << 1000.0*(SimulationEnd-SimulationStart) / CLOCKS_PER_SEC << "ms";
    cout << endl;
	
    DataFile.close();
    
    Solver.Print(DenseOutput, 0);
    Solver.Print(ActualState);
    Solver.Print(ActualTime);
	
    cout << "Test finished!" << endl;

    return 0;
}
"""

MPGOS_FillFunction_Definition = """
void FillSolverObject(
    ProblemSolver<NT,SD,NCP,NSP,NISP,NE,NA,NIA,NDO,SOLVER,PRECISION>& Solver, 
    int FirstProblemNumber, int NumberOfThreads
) {
    int k_begin = FirstProblemNumber;
    int k_end   = FirstProblemNumber + NumberOfThreads;
	
    int ProblemNumber = 0;
    while (k_begin < k_end) {
        Solver.SetHost(ProblemNumber, TimeDomain, 0, %s);
        Solver.SetHost(ProblemNumber, TimeDomain, 1, %s);  

        // Settaggio dei valori iniziali degli ActualState
%s 

        Solver.SetHost(ProblemNumber, ActualTime, 0.0);
        Solver.SetHost(ProblemNumber, ControlParameters, 0, 0.0);
        Solver.SetHost(ProblemNumber, DenseIndex, 0 );

        // Settaggio dei valori iniziali per ACC (se presenti)
%s

        // Settaggio dei valori iniziali per ACCi (se presenti)
%s
		
        ProblemNumber++;
        k_begin++;
    }

    // Settaggio dei valori iniziali per sPAR (se presenti)
%s

    // Settaggio dei valori iniziali per sPARi (se presenti)
%s
}
"""

MPGOS_ModelFileDefinition = """
{MPGOS_ModelMacro}
{MPGOS_FillFunctionDefinition}
{MPGOS_SaveDataFunction}
{MPGOS_MainFunction}
"""


#--------------------------# DEFINIZIONE DEI PATTERN PER IL FILE CHE DESCRIVE IL MAKEFILE    # --------------------------#


MPGOS_MakeFile = """
INCL_DIR = -I{MPGOSsourcedir}
CMPL_OPT = -O3 --std=c++11 --ptxas-options=-v --gpu-architecture=sm_{GPU} -lineinfo -w -maxrregcount=80

all: {modelname}.exe

{modelname}.exe: {modelname}.cu
\tnvcc -o {modelname}.exe {modelname}.cu $(INCL_DIR) $(CMPL_OPT)

clean:
\trm -f {modelname}.exe
\trm -f *.txt
\trm -f *.csv
"""


#--------------------------# DEFINIZIONE DEI PATTERN PER IL FILE CHE DESCRIVE LE FUNZIONI    # --------------------------#


FUNCTION_PATTERN_FILE = """
#ifndef %s_FUNCTIONS_H
#define %s_FUNCTIONS_H

#include <iostream>

#define PRECISION double

%s

#endif
"""


#--------------------------# DEFINIZIONE DELLE CLASSI PER LA CREAZIONE DEI DUE FILE NECESSARI # --------------------------#


class ModelBuilder:
    """ Classe per la costruzione del file cpp Model.cu """
    def __init__(self, sysdef_filename,   # Nome del file di definizione del sistema
                       config_dict,       # Dizionario con tutti i parametri di configurazione
                       initial_equations, # Lista con tutte le equazioni iniziali di tipo "initial"
                       model_name,        # Nome del modello
                       logger,            # oggetto di tipo utils.logger.Logger
                       odes,              # Lista di tutte le ODE del sistema
                       variables,         # Lista di tutte le variabili del sistema
                       n_events           # Numero di eventi presenti del modello
                ):
        self.sysdef_filename   = sysdef_filename
        self.config_dict       = config_dict
        self.initial_equations = initial_equations
        self.model_name        = model_name
        self.odes              = odes
        self.logger            = logger
        self.variables         = variables
        self.variables_dict    = {x.nome.replace(".", "_"): x for x in self.variables}
        self.samples           =  any(filter(lambda x: "sample" in x.nome, self.variables_dict.values()))
        self.nevents           = n_events
        # START LOG
        msg = "Chiamata alla classe ModelBuilder"
        self.logger.info(msg, msg)
        # END LOG
    

    def buildMPGOS_MacroPattern(self):
        """ Formatta la stringa della defizione delle MACRO e delle costanti """
        global MPGOS_Model_Macro
        # START LOG
        msg = "Formattazione della stringa per la definizione delle MACRO"
        self.logger.info(msg, msg)
        # END LOG
        MPGOS_Model_Macro = MPGOS_Model_Macro.format(
            model_sysdef_file=self.sysdef_filename.split("/")[-1],
            solver="RKCK45" if not self.samples else "RK4",
            numberOfThreads=self.config_dict['numberOfThreads'],
            systemDimension=int(self.config_dict['numberOfContinuousState']), 
            numberOfSharedParameter=len(list(filter(lambda x: isinstance(x, sPAR), self.variables))),
            numberOfIntegerSharedParameter=len(list(filter(lambda x: isinstance(x, sPARi), self.variables))),
            numberOfEvents=self.nevents,
            numberOfAccessories=len(list(filter(lambda x: isinstance(x, ACC), self.variables))),
            numberOfIntegerAccessories=len(list(filter(lambda x: isinstance(x, ACCi), self.variables))),
            numberOfDenseOutput=self.config_dict['numberOfDenseOutput']
        )
        return MPGOS_Model_Macro

    
    def buildMPGOS_SaveDataFunction(self):
        """ Formatta la stringa per la funzione di salvataggio dell'output su file """
        global MPGOS_SaveDataFunction
        # START LOG
        msg = "Formattazione della stringa per la funzione di salvataggio dell'output su file"
        self.logger.info(msg, msg)
        # END LOG
        str2format_title  = " "*8 + "DataFile.width(Width); DataFile << \"{name}\" << ',';"
        params_list = [[x for x in self.variables if isinstance(x, X)],
                       [x for x in self.variables if isinstance(x, sPAR)],
                       [x for x in self.variables if isinstance(x, sPARi)],
                       [x for x in self.variables if isinstance(x, ACC)],
                       [x for x in self.variables if isinstance(x, ACCi)]]
        title_field = "\n".join([str2format_title.format(name=f"{x.__class__.__name__}_{x.nome}") for y in params_list for x in y])
        actualstategh_str = " "*8 + "DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, {id}) << ',';"
        actual_state      = "\n".join([actualstategh_str.format(id=i) for i, _ in enumerate(params_list[0])])
        spargh_str = " "*8 + "DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, {id}) << ',';"
        spar       = "\n".join([spargh_str.format(id=i) for i, _ in enumerate(params_list[1])])
        sparigh_str = " "*8 + "DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(IntegerSharedParameters, {id}) << ',';"
        spari       = "\n".join([sparigh_str.format(id=i) for i, _ in enumerate(params_list[2])])
        accgh_str = " "*8 + "DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, {id}) << ',';"
        acc       = "\n".join([accgh_str.format(id=i) for i, _ in enumerate(params_list[3])])
        accigh_str = " "*8 + "DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, IntegerAccessories, {id}) << ',';"
        acci       = "\n".join([accigh_str.format(id=i) for i, _ in enumerate(params_list[4])])
        total_str = ""
        for param in [actual_state, spar, spari, acc, acci]:
            if param != "": total_str += param + "\n"
        MPGOS_SaveDataFunction = MPGOS_SaveDataFunction % (
            title_field,
            total_str
        )
        return MPGOS_SaveDataFunction


    def buildMPGOS_MainFunction(self):
        """ Formatta la stringa per la il main """
        global MPGOS_MainFunction
        # START LOG
        msg = "Formattazione della stringa per la funzione di main"
        self.logger.info(msg, msg)
        # END LOG
        nop = self.config_dict['numberOfProblems']
        block_size = self.config_dict['threadsPerBlock']
        GPUMajor = self.config_dict['GPU information'].compute_capability()[0]
        GPUMinor = self.config_dict['GPU information'].compute_capability()[1]
        # Formatta i parametri per la funzione SolverOption
        preferSharedMemory = self.config_dict['preferSharedMemory']
        initialTimeStep = self.config_dict['initialTimeStep']
        maxTimeStep = self.config_dict['maximumTimeStep']
        minTimeStep = self.config_dict['minimumTimeStep']
        event_str = " "*4 + "Solver.SolverOption(EventDirection, %d, %d);\n"
        eventDirections = "".join([event_str % (x, y) for x, y in enumerate(self.config_dict['eventDirection'])]) if self.nevents > 0 else ""
        denseOutputMiniumumTimeStep = self.config_dict['denseOutputMinimumTimeStep']
        denseOutputSaveFrequency = self.config_dict['denseOutputSaveFrequency']
        abs_tolerance = " "*4 + "Solver.SolverOption(AbsoluteTolerance, %d, %s);\n"
        relative_tolerance = " "*4 + "Solver.SolverOption(RelativeTolerance, %d, %s);\n"
        absoluteTolerances = "".join([abs_tolerance % (x, y) for x, y in enumerate(self.config_dict['tolerance'])])
        relativeTolerances = "".join([relative_tolerance % (x, y) for x, y in enumerate(self.config_dict['tolerance'])])
        timeStepGrowLimit = " "*4 + "Solver.SolverOption(TimeStepGrowLimit, 5.0);\n" if not self.samples else ""
        timeStepShrinkLimit = " "*4 + "Solver.SolverOption(TimeStepShrinkLimit, 0.2);\n" if not self.samples else ""
        MPGOS_MainFunction = MPGOS_MainFunction % (
            block_size, GPUMajor, GPUMinor, preferSharedMemory, 
            initialTimeStep, maxTimeStep, minTimeStep,
            timeStepGrowLimit, timeStepShrinkLimit,
            eventDirections, denseOutputMiniumumTimeStep, 
            denseOutputSaveFrequency, absoluteTolerances,
            relativeTolerances, "% NT", self.model_name
        )
        return MPGOS_MainFunction


    def build_FSOstr(self, str2format, tipo):
        """ Costruisce le stringhe per ACC, ACCi, X, sPAR e sPARi per la funzione FillSolverObject """
        init = model.Model.get_var_by_lhsinit(self.initial_equations, self.variables_dict, tipo)
        string = "\n".join([str2format % (x.id, x.init) for x in init])
        return string


    def buildMPGOS_FillFunction_Definition(self):
        """ Formatta la stringa per la definizione della funzione fillSolverObject """
        global MPGOS_FillFunction_Definition
        # START LOG
        msg = "Formattazione della stringa per la funzione fillSolverObject"
        self.logger.info(msg, msg)
        # END LOG
        # Prendo i valori per i time domain
        timeDomainStart = self.config_dict['timeDomainStart']
        timeDomainEnd   = self.config_dict['timeDomainEnd']
        # Creo le inizializzazioni per gli ActualState
        state_str = self.build_FSOstr(" "*8 + "Solver.SetHost(ProblemNumber, ActualState, %d, %s);", X)
        # Creo le inizializzazioni per gli accessories ACC
        acc_str = self.build_FSOstr(" "*8 + "Solver.SetHost(ProblemNumber, Accessories, %d, %s);", ACC)
        # Creo le inizializzazioni per gli accessories ACCi
        acci_str = self.build_FSOstr(" "*8 + "Solver.SetHost(ProblemNumber, IntegerAccessories, %d, %s);", ACCi)
        # Creo le inizializzazioni per i parametri sPAR
        spar_str = self.build_FSOstr(" "*4 + "Solver.SetHost(SharedParameters, %d, %s);", sPAR)
        # Creo le inizializzazioni per i parametri sPARi
        spari_str = self.build_FSOstr(" "*4 + "Solver.SetHost(IntegerSharedParameters, %d, %s);", sPARi)

        MPGOS_FillFunction_Definition = MPGOS_FillFunction_Definition % (
            timeDomainStart, timeDomainEnd, state_str, acc_str, acci_str, spar_str, spari_str
        )
        return MPGOS_FillFunction_Definition
    

    @notifier(
        NOTIFICATION,
        "Creazione del file Model.cu",
        "Formattazione di tutte le parti che compongono il file (main, fillSolverObject ...)",
        "Creazione del file Model.cu",
        "Terminata formattazione del contenuto del file"
    )
    def createModelDefinitionFile(self):
        """ Richiama tutte le funzioni di formattazione e crea la stringa per il file del modello """
        global MPGOS_ModelFileDefinition
        # START LOG
        msg = f"Formattazione della stringa per il file {self.model_name}.cu"
        self.logger.debug(msg, msg)
        # END LOG
        MPGOS_ModelFileDefinition = MPGOS_ModelFileDefinition.format(
            MPGOS_ModelMacro=self.buildMPGOS_MacroPattern(),
            MPGOS_FillFunctionDefinition=self.buildMPGOS_FillFunction_Definition(),
            MPGOS_SaveDataFunction=self.buildMPGOS_SaveDataFunction(),
            MPGOS_MainFunction=self.buildMPGOS_MainFunction(),
        )
        # START LOG
        msg = "Terminata formattazione"
        self.logger.debug(msg, msg)
        # END LOG
        return MPGOS_ModelFileDefinition



class SystemDefinitionBuilder:
    """ Classe per la costruzione della definizione del sistema (File Model_SystemDefinition.cuh) 
    Attributes:
        abstract_model -- Rappresentazione astratta a schematica del modello (istanza di classe Model)
        logger -- Istanza di classe logger per rappresentare il log
    """
    def __init__(self, abstract_model, logger):
        self.abstract_model = abstract_model
        self.logger = logger
        self.variables_dict = {x.createMPGOSname(): x for x in self.abstract_model.variables}
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
        triggers = self.abstract_model.othereq['trigger']
        # Prendo prima tutte le equazioni che definiscono i trigger per gli eventi
        trigger_str = Var.createMPGOScodeline(triggers)
        # Poi devo formattare le stringhe che riempiono il vettore EF nel quale 
        # saranno valutate le condizioni degli eventi, le quali devono essere pari a 0
        EF_str = "\n".join(list(set([x.condition[1] + ";" for x in self.abstract_model.events]))) 
        MPGOS_PerThread_EventFunction = MPGOS_PerThread_EventFunction % (
            f"{trigger_str}\n{EF_str}")
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
            Var.createMPGOScodeline([x.__str__() + f" //{self.variables_dict[x.left.__str__()].nome}" for x in self.abstract_model.init['initialization']]))
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
            self.abstract_model.model_name.upper(), 
            self.abstract_model.model_name.upper(),
            "".join(MPGOSfunction_list)
        )
        # START LOG
        msg = "Terminata formattazione"
        self.logger.debug(msg, msg)
        # END LOG
        return MPGOS_Model_SystemDefinition


class Builder:
    """ Classe principale che richiama le due classi SystemDefinitionBuilder e ModelBuilder """
    def __init__(self, model_file_paramsdict, abstract_model, workindir, logger, functions_list, nevents):
        self.abstract_model    = abstract_model
        self.workingdir        = workindir
        self.logger            = logger
        self.modelparams_dict  = model_file_paramsdict
        self.functions_list    = functions_list
        self.nevents           = nevents
        # START LOG
        msg = "Chiamata alla classe Builder"
        self.logger.info(msg, msg)
        # END LOG
        self.newdir = self.createnewdir() # Crea la nuova directory nella quale salvare i file
        self.sysdeffile = self.newdir + f"/{self.abstract_model.model_name}_SystemDefinition.cuh"
        self.modeldeffile = self.newdir + f"/{self.abstract_model.model_name}.cu"
        self.makefile = self.newdir + "/makefile"
        self.functions_file = self.newdir + "/Functions.cuh"
        # Creo il builder per il file di definizione del sistema
        self.systemdef_builder = SystemDefinitionBuilder(self.abstract_model, self.logger)

        # Creo il builder per il file di definizione del modello e di settaggio delle opzioni MPGOS
        self.model_builder = ModelBuilder(
            self.sysdeffile, self.modelparams_dict, self.abstract_model.init['initial'],
            self.abstract_model.model_name, self.logger, self.abstract_model.odes, self.abstract_model.variables, self.nevents
        )


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
        # START LOG
        msg = f"Salvataggio del contenuto del file di definizione del sistema in {self.sysdeffile}"
        self.logger.debug(msg, msg)
        # END LOG
        with open(self.sysdeffile, mode="w") as f:
            f.write(file_content)
        # START LOG
        msg = f"Contenuto salvato correttamente"
        self.logger.debug(msg, msg)
        # END LOG

    
    def save_modeldef(self):
        """ Crea il contenuto e lo salva nel file di definizione del modello e delle configurazioni """
        file_content = self.model_builder.createModelDefinitionFile()
        # START LOG
        msg = f"Salvataggio del contenuto del file di definizione del modello in {self.modeldeffile}"
        self.logger.debug(msg, msg)
        # END LOG
        with open(self.modeldeffile, mode="w") as f:
            f.write(file_content)
        # START LOG
        msg = f"Contenuto salvato correttamente"
        self.logger.debug(msg, msg)
        # END LOG

    
    @notifier(
        NOTIFICATION,
        "Creazione del file Makefile.",
        "Formattazione del contenuto del file makefile",
        "Creazione del file Makefile",
        "Terminata formattazione del contenuto del file"
    )
    def createMPGOS_MakeFile(self):
        """ Crea il file per la compilazione del codice C++ e la generazione dell'eseguibile """
        # START LOG
        msg = f"Creazione del file MakeFile"
        self.logger.debug(msg, msg)
        # END LOG
        global MPGOS_MakeFile
        CUDA_capability = self.modelparams_dict['GPU information'].compute_capability()
        MPGOS_MakeFile = MPGOS_MakeFile.format(
            MPGOSsourcedir=self.modelparams_dict['MPGOSsourcedir'],
            GPU=f"{CUDA_capability[0]}{CUDA_capability[1]}",
            modelname=self.abstract_model.model_name
        )
        # START LOG
        msg = f"Terminata formattazione del file MakeFile"
        self.logger.debug(msg, msg)
        # END LOG
        return MPGOS_MakeFile

    
    @notifier(
        NOTIFICATION,
        "Creazione del file functions.cuh.",
        "Formattazione del contenuto del file functions.cuh",
        "Creazione del file functions.cuh",
        "Terminata formattazione del contenuto del file functions.cuh"
    )
    def createMPGOS_Functions_file(self):
        # START LOG
        msg = f"Creazione del file function.cuh"
        self.logger.debug(msg, msg)
        # END LOG
        global FUNCTION_PATTERN_FILE
        perFunction_format = "__device__ %s %s(%s){\n%s\n}"
        file_content = []
        input_format = "{type} {name}"
        types_map = {"Real": "PRECISION", "Boolean": "bool", "Integer": "int"}
        for func_name, func_obj in self.functions_list.items():
            return_type = types_map[func_obj.output[1]]
            inputs = ",".join([input_format.format(type=types_map[x[1]],name=x[0]) for x in func_obj.inputs])
            body_operations = "\n".join([f"    {return_type} {func_obj.output[0]} = 0.0;"] + \
                ["    " + x.__str__() for x in func_obj.assign_list] + [f"    return {func_obj.output[0]};"])
            file_content.append(perFunction_format % (return_type, func_name, inputs, body_operations))
        # START LOG
        msg = f"Terminata formattazione del file function.cuh"
        self.logger.debug(msg, msg)
        # END LOG
        return FUNCTION_PATTERN_FILE % (self.abstract_model.model_name, self.abstract_model.model_name, "\n".join(file_content))


    
    def save_makefile(self):
        """ Crea il contenuto e lo salva nel MakeFile """
        # START LOG
        msg = "Salvataggio del MakeFile"
        self.logger.debug(msg, msg)
        # END LOG
        file_content = self.createMPGOS_MakeFile()
        with open(self.makefile, mode="w") as stream:
            stream.write(file_content)
        # START LOG
        msg = "Termianto salvataggio del file MakeFile"
        self.logger.debug(msg, msg)
        # END LOG


    def save_functions_file(self):
        """ Crea il contenuto e lo salva nel file .cuh con tutte le funzioni """
        # START LOG
        msg = "Salvataggio del file functions.cuh"
        self.logger.debug(msg, msg)
        # END LOG
        file_content = self.createMPGOS_Functions_file()
        with open(self.functions_file, mode="w") as stream:
            stream.write(file_content)
        # START LOG
        msg = "Termianto salvataggio del file function.cuh"
        self.logger.debug(msg, msg)
        # END LOG


    @notifier(
        NOTIFICATION,
        "Creazione dei file",
        "Creazione dei tre file: Model.cu, Model_SystemDefintion.cuh e makefile",
        "Creazione dei file",
        "Terminata creazione dei file"
    )
    def builfiles(self):
        """ Costruisce entrambi i file """
        self.save_sysdef()
        self.save_modeldef()
        self.save_makefile()
        self.save_functions_file()
