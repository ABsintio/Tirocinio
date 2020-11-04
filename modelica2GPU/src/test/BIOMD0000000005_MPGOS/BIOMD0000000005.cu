

#include <iostream>
#include <vector>
#include <iomanip>
#include <string>
#include <fstream>

#define PI 3.14159265358979323846

#include "BIOMD0000000005_SystemDefinition.cuh"
#include "SingleSystem_PerThread_Interface.cuh"

using namespace std;

#define SOLVER RKCK45
#define PRECISION double
const int NT   = 1000;
const int SD   = 28;
const int NCP  = 1;
const int NSP  = 10;
const int NISP = 0;
const int NE   = 0;
const int NA   = 20;
const int NIA  = 0;
const int NDO  = 1000;


void FillSolverObject(
    ProblemSolver<NT,SD,NCP,NSP,NISP,NE,NA,NIA,NDO,SOLVER,PRECISION>& Solver, 
    int FirstProblemNumber, int NumberOfThreads
) {
    int k_begin = FirstProblemNumber;
    int k_end   = FirstProblemNumber + NumberOfThreads;
	
    int ProblemNumber = 0;
    while (k_begin < k_end) {
        Solver.SetHost(ProblemNumber, TimeDomain, 0, 0.0);
        Solver.SetHost(ProblemNumber, TimeDomain, 1, 100.0);  

        // Settaggio dei valori iniziali degli ActualState
        Solver.SetHost(ProblemNumber, ActualState, 0, 1.0);
        Solver.SetHost(ProblemNumber, ActualState, 1, 1.0);
        Solver.SetHost(ProblemNumber, ActualState, 2, 1.0);
        Solver.SetHost(ProblemNumber, ActualState, 3, 1.0);
        Solver.SetHost(ProblemNumber, ActualState, 4, 1.0);
        Solver.SetHost(ProblemNumber, ActualState, 5, 1.0);
        Solver.SetHost(ProblemNumber, ActualState, 6, 1.0);
        Solver.SetHost(ProblemNumber, ActualState, 7, 1.0);
        Solver.SetHost(ProblemNumber, ActualState, 8, 1.0);
        Solver.SetHost(ProblemNumber, ActualState, 9, 1.0);
        Solver.SetHost(ProblemNumber, ActualState, 10, 1.0);
        Solver.SetHost(ProblemNumber, ActualState, 11, 1.0);
        Solver.SetHost(ProblemNumber, ActualState, 12, 1.0);
        Solver.SetHost(ProblemNumber, ActualState, 13, 1.0);
        Solver.SetHost(ProblemNumber, ActualState, 14, 1.0);
        Solver.SetHost(ProblemNumber, ActualState, 15, 1.0);
        Solver.SetHost(ProblemNumber, ActualState, 16, 1.0);
        Solver.SetHost(ProblemNumber, ActualState, 17, 1.0);
        Solver.SetHost(ProblemNumber, ActualState, 18, 1.0);
        Solver.SetHost(ProblemNumber, ActualState, 19, 1.0);
        Solver.SetHost(ProblemNumber, ActualState, 26, 1.0); 

        Solver.SetHost(ProblemNumber, ActualTime, 0.0);
        Solver.SetHost(ProblemNumber, ControlParameters, 0, 0.0);
        Solver.SetHost(ProblemNumber, DenseIndex, 0 );

        // Settaggio dei valori iniziali per ACC (se presenti)
        Solver.SetHost(ProblemNumber, Accessories, 1, 0.0);
        Solver.SetHost(ProblemNumber, Accessories, 4, 0.0);
        Solver.SetHost(ProblemNumber, Accessories, 5, 0.0);
        Solver.SetHost(ProblemNumber, Accessories, 15, 0.0);
        Solver.SetHost(ProblemNumber, Accessories, 18, 0.0);

        // Settaggio dei valori iniziali per ACCi (se presenti)

		
        ProblemNumber++;
        k_begin++;
    }

    // Settaggio dei valori iniziali per sPAR (se presenti)
    Solver.SetHost(SharedParameters, 0, 1.0);
    Solver.SetHost(SharedParameters, 1, 1000000.0);
    Solver.SetHost(SharedParameters, 2, 1000.0);
    Solver.SetHost(SharedParameters, 3, 200.0);
    Solver.SetHost(SharedParameters, 4, 0.0);
    Solver.SetHost(SharedParameters, 5, 0.015);
    Solver.SetHost(SharedParameters, 6, 0.0);
    Solver.SetHost(SharedParameters, 7, 0.6);
    Solver.SetHost(SharedParameters, 8, 180.0);
    Solver.SetHost(SharedParameters, 9, 0.018);

    // Settaggio dei valori iniziali per sPARi (se presenti)

}


void SaveData(
    ProblemSolver<NT,SD,NCP,NSP,NISP,NE,NA,NIA,NDO,SOLVER,PRECISION>& Solver, 
    ofstream& DataFile, int NumberOfThreads
) {
    int Width = 18;
    DataFile.precision(10);
    DataFile.flags(ios::scientific);
	
    for (int tid=0; tid<NumberOfThreads; tid++)
    {
        DataFile.width(Width); DataFile << "X_Reacs.elmt_product1" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_product11" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_product13" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_product15" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_product17" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_product19" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_product2" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_product4" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_product6" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_product9" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_reactant0" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_reactant10" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_reactant12" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_reactant14" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_reactant16" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_reactant18" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_reactant3" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_reactant5" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_reactant7" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_reactant8" << ',';
        DataFile.width(Width); DataFile << "X_elmt_cell.elmt_C2_amount" << ',';
        DataFile.width(Width); DataFile << "X_elmt_cell.elmt_CP_amount" << ',';
        DataFile.width(Width); DataFile << "X_elmt_cell.elmt_EmptySet_amount" << ',';
        DataFile.width(Width); DataFile << "X_elmt_cell.elmt_M_amount" << ',';
        DataFile.width(Width); DataFile << "X_elmt_cell.elmt_YP_amount" << ',';
        DataFile.width(Width); DataFile << "X_elmt_cell.elmt_Y_amount" << ',';
        DataFile.width(Width); DataFile << "X_elmt_cell.elmt_cell" << ',';
        DataFile.width(Width); DataFile << "X_elmt_cell.elmt_pM_amount" << ',';
        DataFile.width(Width); DataFile << "sPAR_Reacs.elmt_Reaction1_elmt_k6" << ',';
        DataFile.width(Width); DataFile << "sPAR_Reacs.elmt_Reaction2_elmt_k8notP" << ',';
        DataFile.width(Width); DataFile << "sPAR_Reacs.elmt_Reaction3_elmt_k9" << ',';
        DataFile.width(Width); DataFile << "sPAR_Reacs.elmt_Reaction4_elmt_k3" << ',';
        DataFile.width(Width); DataFile << "sPAR_Reacs.elmt_Reaction5_elmt_k5notP" << ',';
        DataFile.width(Width); DataFile << "sPAR_Reacs.elmt_Reaction6_elmt_k1aa" << ',';
        DataFile.width(Width); DataFile << "sPAR_Reacs.elmt_Reaction7_elmt_k2" << ',';
        DataFile.width(Width); DataFile << "sPAR_Reacs.elmt_Reaction8_elmt_k7" << ',';
        DataFile.width(Width); DataFile << "sPAR_Reacs.elmt_Reaction9_elmt_k4" << ',';
        DataFile.width(Width); DataFile << "sPAR_Reacs.elmt_Reaction9_elmt_k4prime" << ',';
        DataFile.width(Width); DataFile << "ACC_$cse1" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_cell.elmt_C2_conc" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_cell.elmt_CP_conc" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_cell.elmt_CT_amount" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_cell.elmt_EmptySet_conc" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_cell.elmt_M_conc" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_cell.elmt_Reaction1" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_cell.elmt_Reaction2" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_cell.elmt_Reaction3" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_cell.elmt_Reaction4" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_cell.elmt_Reaction5" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_cell.elmt_Reaction6" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_cell.elmt_Reaction7" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_cell.elmt_Reaction8" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_cell.elmt_Reaction9" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_cell.elmt_YP_conc" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_cell.elmt_YT_amount" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_cell.elmt_YT_conc" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_cell.elmt_Y_conc" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_cell.elmt_pM_conc" << ',';
        DataFile.width(Width); DataFile << endl;
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 0) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 1) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 2) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 3) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 4) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 5) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 6) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 7) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 8) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 9) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 10) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 11) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 12) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 13) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 14) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 15) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 16) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 17) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 18) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 19) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 20) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 21) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 22) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 23) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 24) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 25) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 26) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 27) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 0) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 1) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 2) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 3) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 4) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 5) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 6) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 7) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 8) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 9) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 0) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 1) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 2) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 3) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 4) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 5) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 6) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 7) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 8) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 9) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 10) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 11) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 12) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 13) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 14) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 15) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 16) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 17) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 18) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 19) << ',';

        DataFile << '\n';
    }
}


int main() {
    int NumberOfProblems = 2000; // Numero di problemi da risolvere, uno per thread
    int blockSize        = 64; // Numero di Thread per blocchi
    
    // Listing dei Device CUDA
    ListCUDADevices();

    int MajorVersion = 7; // Major version della CUDA compute capability
    int MinorVersion = 5; // Minor version della CUDA compute capability

    // Seleziona il Device da utilizzare dando in input la CUDA compute capability e ne stampa le caratteristiche
    int SelectedDevice = SelectDeviceByClosestRevision(MajorVersion, MinorVersion);
    PrintPropertiesOfSpecificDevice(SelectedDevice);

    ProblemSolver<NT,SD,NCP,NSP,NISP,NE,NA,NIA,NDO,SOLVER,PRECISION> Solver(SelectedDevice);
    Solver.SolverOption(ThreadsPerBlock, blockSize);
    Solver.SolverOption(PreferSharedMemory, 1);
    Solver.SolverOption(InitialTimeStep, 0.01);
    Solver.SolverOption(ActiveNumberOfThreads, NT);
    Solver.SolverOption(MaximumTimeStep, 1000000.0);
    Solver.SolverOption(MinimumTimeStep, 1e-14);
    Solver.SolverOption(TimeStepGrowLimit, 1.0);
    Solver.SolverOption(TimeStepShrinkLimit, 0.2);

    Solver.SolverOption(DenseOutputMinimumTimeStep, 0.0);
    Solver.SolverOption(DenseOutputSaveFrequency, 1);
    Solver.SolverOption(AbsoluteTolerance, 0, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 1, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 2, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 3, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 4, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 5, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 6, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 7, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 8, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 9, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 10, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 11, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 12, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 13, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 14, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 15, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 16, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 17, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 18, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 19, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 20, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 21, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 22, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 23, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 24, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 25, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 26, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 27, 1e-06);

    Solver.SolverOption(RelativeTolerance, 0, 1e-06);
    Solver.SolverOption(RelativeTolerance, 1, 1e-06);
    Solver.SolverOption(RelativeTolerance, 2, 1e-06);
    Solver.SolverOption(RelativeTolerance, 3, 1e-06);
    Solver.SolverOption(RelativeTolerance, 4, 1e-06);
    Solver.SolverOption(RelativeTolerance, 5, 1e-06);
    Solver.SolverOption(RelativeTolerance, 6, 1e-06);
    Solver.SolverOption(RelativeTolerance, 7, 1e-06);
    Solver.SolverOption(RelativeTolerance, 8, 1e-06);
    Solver.SolverOption(RelativeTolerance, 9, 1e-06);
    Solver.SolverOption(RelativeTolerance, 10, 1e-06);
    Solver.SolverOption(RelativeTolerance, 11, 1e-06);
    Solver.SolverOption(RelativeTolerance, 12, 1e-06);
    Solver.SolverOption(RelativeTolerance, 13, 1e-06);
    Solver.SolverOption(RelativeTolerance, 14, 1e-06);
    Solver.SolverOption(RelativeTolerance, 15, 1e-06);
    Solver.SolverOption(RelativeTolerance, 16, 1e-06);
    Solver.SolverOption(RelativeTolerance, 17, 1e-06);
    Solver.SolverOption(RelativeTolerance, 18, 1e-06);
    Solver.SolverOption(RelativeTolerance, 19, 1e-06);
    Solver.SolverOption(RelativeTolerance, 20, 1e-06);
    Solver.SolverOption(RelativeTolerance, 21, 1e-06);
    Solver.SolverOption(RelativeTolerance, 22, 1e-06);
    Solver.SolverOption(RelativeTolerance, 23, 1e-06);
    Solver.SolverOption(RelativeTolerance, 24, 1e-06);
    Solver.SolverOption(RelativeTolerance, 25, 1e-06);
    Solver.SolverOption(RelativeTolerance, 26, 1e-06);
    Solver.SolverOption(RelativeTolerance, 27, 1e-06);
   
    
    int NumberOfSimulationLaunches = NumberOfProblems / NT + (NumberOfProblems % NT == 0 ? 0:1);
    ofstream DataFile;
    DataFile.open ( "BIOMD0000000005.csv" );
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

