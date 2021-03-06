

#include <iostream>
#include <vector>
#include <iomanip>
#include <string>
#include <fstream>

#define PI 3.14159265358979323846

#include "PulseCounting_SystemDefinition.cuh"
#include "SingleSystem_PerThread_Interface.cuh"

using namespace std;

#define SOLVER RK4 // Runge-Kutta Order 4th
#define PRECISION double
const int NT   = 1;
const int SD   = 6;
const int NCP  = 1;
const int NSP  = 8;
const int NISP = 1;
const int NE   = 2;
const int NA   = 6;
const int NIA  = 9;
const int NDO  = 100000;


void FillSolverObject(
    ProblemSolver<NT,SD,NCP,NSP,NISP,NE,NA,NIA,NDO,SOLVER,PRECISION>& Solver, 
    int FirstProblemNumber, int NumberOfThreads
) {
    int k_begin = FirstProblemNumber;
    int k_end   = FirstProblemNumber + NumberOfThreads;
	
    int ProblemNumber = 0;
    while (k_begin < k_end) {
        Solver.SetHost(ProblemNumber, TimeDomain, 0, 0.0);
        Solver.SetHost(ProblemNumber, TimeDomain, 1, 10.0);  

        // Settaggio dei valori iniziali degli ActualState
 

        Solver.SetHost(ProblemNumber, ActualTime, 0.0);
        Solver.SetHost(ProblemNumber, ControlParameters, 0, 0.0);
        Solver.SetHost(ProblemNumber, DenseIndex, 0 );

        // Settaggio dei valori iniziali per ACC (se presenti)


        // Settaggio dei valori iniziali per ACCi (se presenti)

		
        ProblemNumber++;
        k_begin++;
    }

    // Settaggio dei valori iniziali per sPAR (se presenti)


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
        DataFile.width(Width); DataFile << "X_omega1" << ',';
        DataFile.width(Width); DataFile << "X_omega2" << ',';
        DataFile.width(Width); DataFile << "X_phi1" << ',';
        DataFile.width(Width); DataFile << "X_phi2" << ',';
        DataFile.width(Width); DataFile << "sPAR_J1" << ',';
        DataFile.width(Width); DataFile << "sPAR_J2" << ',';
        DataFile.width(Width); DataFile << "sPAR_c1" << ',';
        DataFile.width(Width); DataFile << "sPAR_c2" << ',';
        DataFile.width(Width); DataFile << "sPAR_d1" << ',';
        DataFile.width(Width); DataFile << "sPAR_d2" << ',';
        DataFile.width(Width); DataFile << "sPAR_sample_time" << ',';
        DataFile.width(Width); DataFile << "sPAR_tooth_angle" << ',';
        DataFile.width(Width); DataFile << "sPARi_teeth" << ',';
        DataFile.width(Width); DataFile << "ACC_next_phi" << ',';
        DataFile.width(Width); DataFile << "ACC_omega1_measured" << ',';
        DataFile.width(Width); DataFile << "ACC_prev_phi" << ',';
        DataFile.width(Width); DataFile << "ACC_$PRE.prev_phi" << ',';
        DataFile.width(Width); DataFile << "ACC_$PRE.next_phi" << ',';
        DataFile.width(Width); DataFile << "ACC_$PRE.omega1_measured" << ',';
        DataFile.width(Width); DataFile << "ACCi_count" << ',';
        DataFile.width(Width); DataFile << "ACCi_$whenCondition1" << ',';
        DataFile.width(Width); DataFile << "ACCi_$whenCondition2" << ',';
        DataFile.width(Width); DataFile << "ACCi_$sampleCondition3" << ',';
        DataFile.width(Width); DataFile << "ACCi_$PRE.count" << ',';
        DataFile.width(Width); DataFile << "ACCi_$PRE.$whenCondition3" << ',';
        DataFile.width(Width); DataFile << "ACCi_$PRE.$whenCondition2" << ',';
        DataFile.width(Width); DataFile << "ACCi_$PRE.$whenCondition1" << ',';
        DataFile.width(Width); DataFile << "ACCi_sample_ACCi_8" << ',';
        DataFile.width(Width); DataFile << endl;
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 0) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 1) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 2) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 3) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 0) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 1) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 2) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 3) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 4) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 5) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 6) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 7) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(IntegerSharedParameters, 0) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 0) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 1) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 2) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 3) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 4) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 5) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, IntegerAccessories, 0) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, IntegerAccessories, 1) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, IntegerAccessories, 2) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, IntegerAccessories, 3) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, IntegerAccessories, 4) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, IntegerAccessories, 5) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, IntegerAccessories, 6) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, IntegerAccessories, 7) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, IntegerAccessories, 8) << ',';

        DataFile << '\n';
    }
}


int main() {
    int NumberOfProblems = NT; // Numero di problemi da risolvere, uno per thread
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

    Solver.SolverOption(EventDirection, 0, 0);
    Solver.SolverOption(EventDirection, 1, 0);

    Solver.SolverOption(DenseOutputMinimumTimeStep, 0.0);
    Solver.SolverOption(DenseOutputSaveFrequency, 1);
    Solver.SolverOption(AbsoluteTolerance, 0, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 1, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 2, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 3, 1e-06);

    Solver.SolverOption(RelativeTolerance, 0, 1e-06);
    Solver.SolverOption(RelativeTolerance, 1, 1e-06);
    Solver.SolverOption(RelativeTolerance, 2, 1e-06);
    Solver.SolverOption(RelativeTolerance, 3, 1e-06);
   
    
    int NumberOfSimulationLaunches = NumberOfProblems / NT + (NumberOfProblems % NT == 0 ? 0:1);
    ofstream DataFile;
    DataFile.open ( "PulseCounting.csv" );
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

