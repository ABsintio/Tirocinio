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


MPGOS_Model_Macro = """
#include <iostream>
#include <vector>
#include <iomanip>
#include <string>
#include <fstream>

#define PI 3.14159265358979323846

#include "{model_sysdef_file}"
#include "SingleSystem_PerThread_Interface.cuh"

using namespace std;

#define SOLVER RKCK45
#define PRECISION double
const int NT   = {numberOfThreads};
const int SD   = {systemDimension};
const int NCP  = 0;
const int NSP  = {numberOfSharedParameter};
const int NISP = {numberOfIntegerSharedParameter};
const int NE   = {numberOfEvents};
const int NA   = {numberOfAccessories};
const int NIA  = {numberOfIntegerAccessories};
const int NDO  = {numberOfDenseOutput};
"""


MPGOS_FillFunction_Prototype = """
void FillSolverObject(
    ProblemSolver<NT,SD,NCP,NSP,NISP,NE,NA,NIA,NDO,SOLVER,PRECISION>&, 
    vector<PRECISION>&, vector<PRECISION>&, int, int
);
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
    int numberOfProblems = %d; // Numero di problemi da risolvere, uno per thread
    int blockSize        = %d;        // Numero di Thread per blocchi
    
    // Listing dei Device CUDA
    ListCUDADevices();

    int MajorVersion = %d;             // Major version della CUDA compute capability
    int MinorVersion = %d;             // Minor version della CUDA compute capability

    // Seleziona il Device da utilizzare dando in input la CUDA compute capability e ne stampa le caratteristiche
    int SelectedDevice = SelectDeviceByClosestRevision(MajorVersion, MinorVersion);
    PrintPropertiesOfSpecificDevice(SelectedDevice);

%s

    ProblemSolver<NT,SD,NCP,NSP,NISP,NE,NA,NIA,NDO,SOLVER,PRECISION> Solver(SelectedDevice);
    Solver.SolverOption(ThreadsPerBlock, BlockSize);
    Solver.SolverOption(PreferSharedMemory, %d);
    Solver.SolverOption(InitialTimeStep, %f);
    Solver.SolverOption(ActiveNumberOfThreads, NT);
    Solver.SolverOption(MaximumTimeStep, %f);
    Solver.SolverOption(MinimumTimeStep, %f);
    Solver.SolverOption(TimeStepGrowLimit, %f);
    Solver.SolverOption(TimeStepShrinkLimit, %f);
%s
    Solver.SolverOption(DenseOutputMinimumTimeStep, %f);
    Solver.SolverOption(DenseOutputSaveFrequency, %f);
%s

    int NumberOfSimulationLaunches = NumberOfProblems / NT + (NumberOfProblems % NT == 0 ? 0:1);
    ofstream DataFile;
    DataFile.open ( "%s.csv" );
    clock_t SimulationStart = clock();
	clock_t TransientStart;
    clock_t TransientEnd;

    for (int i=0; i < NumberOfSimulationLaunches; i++) {
        %s;
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

MPGOS_FillFunction_Defionition = """
void FillSolverObject(
    ProblemSolver<NT,SD,NCP,NSP,NISP,NE,NA,NIA,NDO,SOLVER,PRECISION>& Solver, 
    {sharedParametersList}, {sharedIntegerParameterList}, vector<PRECISION>& Variable_X, 
    int FirstProblemNumber, int NumberOfThreads
) {
    int k_begin = FirstProblemNumber;
	int k_end   = FirstProblemNumber + NumberOfThreads;
	
    int ProblemNumber = 0;
    while (k_begin < k_end) {
        Solver.SetHost(ProblemNumber, TimeDomain, 0, {timeDomainStart});
        Solver.SetHost(ProblemNumber, TimeDomain, 1, {timeDomainEnd});  

        int i = 0;
        for (PRECISION x : Variable_X) {
            Solver.SetHost(ProblemNumber, ActualState, i++, x);
        }

        Solver.SetHost(ProblemNumber, ActualTime, 0.0);
        Solver.SetHost(ProblemNumber, ControlParameters, 0, 0.0);
        Solver.SetHost(ProblemNumber, DenseIndex, 0 );

        {accessoriesAddLoop}
        {accessoriesIntegerAddLoop}
		
		ProblemNumber++;
        k_begin++;
    }

    {sharedAddLoop}
    {sharedIntegerAddLoop}
}
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
                       variables          # Lista di tutte le variabili del sistema
                ):
        self.sysdef_filename   = sysdef_filename
        self.config_dict       = config_dict
        self.initial_equations = initial_equations
        self.model_name        = model_name
        self.odes              = odes
        self.logger            = logger
        self.variables         = variables
        self.variables_dict    = {x.nome: x for x in self.variables}
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
            numberOfThreads=self.config_dict['numberOfThreads'],
            systemDimension=len(self.odes), 
            numberOfSharedParameter=len(list(filter(lambda x: isinstance(x, sPAR), self.variables))),
            numberOfIntegerSharedParameter=len(list(filter(lambda x: isinstance(x, sPARi), self.variables))),
            numberOfEvents=len(self.config_dict['eventDirection']) if self.config_dict['eventDirection'] is not None else 0,
            numberOfAccessories=len(list(filter(lambda x: isinstance(x, ACC), self.variables))),
            numberOfIntegerAccessories=len(list(filter(lambda x: isinstance(x, ACCi), self.variables))),
            numberOfDenseOutput=self.config_dict['numberOfDenseOutput']
        )
        return MPGOS_Model_Macro

    
    def buildMPGOS_SaveDataFunction(self):
        """ Formatta la stringa per la funzione di salvataggio dell'output su file """
        global MPGOS_SaveDataFunction
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
        nop = self.config_dict['numberOfProblems']
        block_size = self.config_dict['threadsPerBlock']
        GPUMajor = self.config_dict['GPU information'].compute_capability()[0]
        GPUMinor = self.config_dict['GPU information'].compute_capability()[1]
        # Formatto la stringa delle equazioni iniziali con implementazione del vettore delle equazioni
        str2format = " "*4 + "PRECISION InitialCondtition_%s\n"
        initial_eq = [
            [(str2format % (str(eq)), str(eq.left)) for eq in self.initial_equations if isinstance(self.variables_dict[eq.left], X)],
            [(str2format % (str(eq)), str(eq.left)) for eq in self.initial_equations if isinstance(self.variables_dict[eq.left], sPAR)],
            [(str2format % (str(eq)), str(eq.left)) for eq in self.initial_equations if isinstance(self.variables_dict[eq.left], sPARi)],
        ]
        vector_X     = " "*4 + "vector<PRECISION> Parameter_X = {%s};\n"
        vector_sPAR  = " "*4 + "vector<PRECISION> Parameter_sPAR = {%s};\n"
        vector_sPARi = " "*4 + "vector<PRECISION> Parameter_sPARi = {%s};\n"
        stringa = ""
        xs = [f"InitialCondition_{x[1]}" for x in initial_eq[0]]
        spars = [f"InitialCondition_{x[1]}" for x in initial_eq[1]]
        sparis = [f"InitialCondition_{x[1]}" for x in initial_eq[2]]
        vectors = [
            vector_X % (",".join(xs)) if len(xs) > 0 else "",
            vector_sPAR % (",".join(spars)) if len(spars) > 0 else "",
            vector_sPARi % (",".join(sparis)) if len(sparis) > 0 else ""
        ]
        initialEquation = "".join(["%s%s" % ("".join(x[0][0]), y) for x, y in zip(initial_eq, vectors) if x or y])
        print("\n\n" +initialEquation)
        preferSharedMemory = self.config_dict['preferSharedMemory']
        initialTimeStep = self.config_dict['initialTimeStep']
        maxTimeStep = self.config_dict['maximumTimeStep']
        minTimeStep = self.config_dict['minimumTimeStep']



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
            Var.createMPGOScodeline([x.__str__() for x in self.abstract_model.init['initialization']]))
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
    def __init__(self, model_file_paramsdict, abstract_model, workindir, logger):
        self.abstract_model    = abstract_model
        self.workingdir        = workindir
        self.logger            = logger
        self.modelparams_dict  = model_file_paramsdict
        # START LOG
        msg = "Chiamata alla classe Builder"
        self.logger.info(msg, msg)
        # END LOG
        self.newdir = self.createnewdir() # Crea la nuova directory nella quale salvare i file
        self.sysdeffile = self.newdir + f"/{self.abstract_model.model_name}_SystemDefinition.cuh"
        
        # Creo il builder per il file di definizione del sistema
        self.systemdef_builder = SystemDefinitionBuilder(self.abstract_model, self.logger)

        # Creo il builder per il file di definizione del modello e di settaggio delle opzioni MPGOS
        self.model_builder = ModelBuilder(
            self.sysdeffile, self.modelparams_dict, self.abstract_model.init['initial'],
            self.abstract_model.model_name, self.logger, self.abstract_model.odes, self.abstract_model.variables
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
        #self.save_sysdef()
