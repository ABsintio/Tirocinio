#include <iostream>
#include <vector>
#include <iomanip>
#include <string>
#include <fstream>

#define PI 3.14159265358979323846

#include "TysonModel_SystemDefinition.cuh"
#include "SingleSystem_PerThread_Interface.cuh"

using namespace std;

#define SOLVER RKCK45
#define PRECISION double
const int NT   = 1;
const int SD   = 6;     // [C2], [CP], [M], [pM], [Y], [YP]
const int NCP  = 1;
const int NSP  = 10;
const int NISP = 0;
const int NE   = 2;
const int NA   = 4;
const int NIA  = 0;
const int NDO  = 100;

void FillSolverObject(
    ProblemSolver<NT,SD,NCP,NSP,NISP,NE,NA,NIA,NDO,SOLVER,PRECISION>&, 
    vector<PRECISION>&, vector<PRECISION>&, int, int
);

void SaveData(
    ProblemSolver<NT,SD,NCP,NSP,NISP,NE,NA,NIA,NDO,SOLVER,PRECISION>& Solver, 
    ofstream& DataFile, int NumberOfThreads
) {
	int Width = 18;
	DataFile.precision(10);
	DataFile.flags(ios::scientific);
	
	for (int tid=0; tid<NumberOfThreads; tid++)
	{
        // GetHost -> valore del parametro.
        DataFile.width(Width); DataFile << "[C2]" << ',';
        DataFile.width(Width); DataFile << "[CP]" << ',';
        DataFile.width(Width); DataFile << "[M]" << ',';
        DataFile.width(Width); DataFile << "[pM]" << ',';
        DataFile.width(Width); DataFile << "[Y]" << ',';
        DataFile.width(Width); DataFile << "[YP]" << ',';
		DataFile.width(Width); DataFile << "[CT]" << ',';
		DataFile.width(Width); DataFile << "[YT]" << ',';
        DataFile.width(Width); DataFile << "[M]/[CT]" << ',';
        DataFile.width(Width); DataFile << "[YT]/[CT]" << endl;
		DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 0) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 1) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 2) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 3) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 4) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 5) << ',';
		DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 0) << ',';
		DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 1) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 2) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 3) << ',';
		DataFile << '\n';
	}
}

int main() {

    int NumberOfProblems = 1;
    int BlockSize        = 128;

    ListCUDADevices();

    int MajorVersion = 7;
    int MinorVersion = 5;

    int SelectedDevice = SelectDeviceByClosestRevision(MajorVersion, MinorVersion);
    PrintPropertiesOfSpecificDevice(SelectedDevice);
    
    PRECISION InitialCondition_C2 = 0;
    PRECISION InitialCondition_CP = 0.75;
    PRECISION InitialCondition_M  = 0;
    PRECISION InitialCondition_pM = 0.25;
    PRECISION InitialCondition_Y  = 0;
    PRECISION InitialCondition_YP = 0;
    vector<PRECISION> Parameter_X = {
        InitialCondition_C2, InitialCondition_CP, InitialCondition_M,
        InitialCondition_pM, InitialCondition_Y, InitialCondition_YP
    };

    PRECISION Parameter_k1aaCT    = 0.015;
    PRECISION Parameter_k2        = 0;
    PRECISION Parameter_k3CT      = 200;
    PRECISION Parameter_k4        = 180;
    PRECISION Parameter_k4prime   = 0.018;
    PRECISION Parameter_k5tildeP  = 0;
    PRECISION Parameter_k6        = 1;
    PRECISION Parameter_K7        = 0.6;
    PRECISION Parameter_k8tildeP  = 1e+06;
    PRECISION Parameter_k9        = 1000;
    vector<PRECISION> Parameter_shared = {
        Parameter_k1aaCT, Parameter_k2, Parameter_k3CT, Parameter_k4, Parameter_k4prime,
        Parameter_k5tildeP, Parameter_k6, Parameter_K7, Parameter_k8tildeP, Parameter_k9
    };

    ProblemSolver<NT,SD,NCP,NSP,NISP,NE,NA,NIA,NDO,SOLVER,PRECISION> Solver(SelectedDevice);
    Solver.SolverOption(ThreadsPerBlock, BlockSize);
    Solver.SolverOption(PreferSharedMemory, 0);
    Solver.SolverOption(InitialTimeStep, 1e-2);
    Solver.SolverOption(ActiveNumberOfThreads, NT);
    Solver.SolverOption(MaximumTimeStep, 1e+6);
    Solver.SolverOption(MinimumTimeStep, 1e-12);
    Solver.SolverOption(TimeStepGrowLimit, 5.0);
    Solver.SolverOption(TimeStepShrinkLimit, 0.1);
    Solver.SolverOption(EventDirection, 0, 0);
    Solver.SolverOption(EventDirection, 1, 0);
    Solver.SolverOption(DenseOutputMinimumTimeStep, 0.0);
    Solver.SolverOption(DenseOutputSaveFrequency, 1);

    int NumberOfSimulationLaunches = NumberOfProblems / NT + (NumberOfProblems % NT == 0 ? 0:1);
    ofstream DataFile;
    DataFile.open ( "TysonModel.csv" );
    clock_t SimulationStart = clock();
	clock_t TransientStart;
    clock_t TransientEnd;

    for (int i=0; i < NumberOfSimulationLaunches; i++) {
        FillSolverObject(Solver, Parameter_shared, Parameter_X, i * NT, NT);
        Solver.SynchroniseFromHostToDevice(All);
        Solver.InsertSynchronisationPoint();
        Solver.SynchroniseSolver();

        TransientStart = clock();
        for (int j=0; j < 1; j++) {
            cout << "Ciao" << endl;
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
	cout << "Total simulation time: " << 1000.0*(SimulationEnd-SimulationStart) / CLOCKS_PER_SEC << "ms" << endl << endl;
	
    DataFile.close();
    
    Solver.Print(DenseOutput, 0);
    Solver.Print(ActualState);
    Solver.Print(ActualTime);
	
	cout << "Test finished!" << endl;

    return 0;
}

void FillSolverObject(
    ProblemSolver<NT,SD,NCP,NSP,NISP,NE,NA,NIA,NDO,SOLVER,PRECISION>& Solver, 
    vector<PRECISION>& Parameters_Shared, vector<PRECISION>& Variable_X, 
    int FirstProblemNumber, int NumberOfThreads
) {
    int k_begin = FirstProblemNumber;
	int k_end   = FirstProblemNumber + NumberOfThreads;
	
    int ProblemNumber = 0;
    while (k_begin < k_end) {
        Solver.SetHost(ProblemNumber, TimeDomain, 0, 0.0);
        Solver.SetHost(ProblemNumber, TimeDomain, 1, 6);

        int i = 0;
        for (PRECISION x : Variable_X) {
            Solver.SetHost(ProblemNumber, ActualState, i++, x);
        }

        Solver.SetHost(ProblemNumber, ActualTime, 0.0);

        Solver.SetHost(ProblemNumber, ControlParameters, 0, 0.0);

        Solver.SetHost(ProblemNumber, Accessories, 0, 1.0);
        Solver.SetHost(ProblemNumber, Accessories, 1, 0.25);
        Solver.SetHost(ProblemNumber, Accessories, 2, 0.0);
        Solver.SetHost(ProblemNumber, Accessories, 3, 0.25);

        Solver.SetHost(ProblemNumber, DenseIndex, 0 );
		
		ProblemNumber++;
        k_begin++;
    }

    int s{0};
    for (PRECISION shared : Parameters_Shared) {
        Solver.SetHost(SharedParameters, s++, shared);
    }
}