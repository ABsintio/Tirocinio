

#include <iostream>
#include <vector>
#include <iomanip>
#include <string>
#include <fstream>

#define PI 3.14159265358979323846

#include "BIOMD373_SystemDefinition.cuh"
#include "SingleSystem_PerThread_Interface.cuh"

using namespace std;

#define SOLVER RKCK45 // Runge-Kutta Order 4th
#define PRECISION double
const int NT   = 1;
const int SD   = 7;
const int NCP  = 1;
const int NSP  = 43;
const int NISP = 0;
const int NE   = 0;
const int NA   = 71;
const int NIA  = 0;
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
        Solver.SetHost(ProblemNumber, TimeDomain, 1, 100.0);  

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
        DataFile.width(Width); DataFile << "X_V" << ',';
        DataFile.width(Width); DataFile << "X_adp" << ',';
        DataFile.width(Width); DataFile << "X_c" << ',';
        DataFile.width(Width); DataFile << "X_cer" << ',';
        DataFile.width(Width); DataFile << "X_fbp" << ',';
        DataFile.width(Width); DataFile << "X_g6p" << ',';
        DataFile.width(Width); DataFile << "X_n" << ',';
        DataFile.width(Width); DataFile << "sPAR_COMpartment" << ',';
        DataFile.width(Width); DataFile << "sPAR_Cm" << ',';
        DataFile.width(Width); DataFile << "sPAR_Kserca" << ',';
        DataFile.width(Width); DataFile << "sPAR_Rgk" << ',';
        DataFile.width(Width); DataFile << "sPAR_VCa" << ',';
        DataFile.width(Width); DataFile << "sPAR_VK" << ',';
        DataFile.width(Width); DataFile << "sPAR_alpha" << ',';
        DataFile.width(Width); DataFile << "sPAR_atot" << ',';
        DataFile.width(Width); DataFile << "sPAR_bottom1" << ',';
        DataFile.width(Width); DataFile << "sPAR_cat" << ',';
        DataFile.width(Width); DataFile << "sPAR_epser" << ',';
        DataFile.width(Width); DataFile << "sPAR_famp" << ',';
        DataFile.width(Width); DataFile << "sPAR_fatp" << ',';
        DataFile.width(Width); DataFile << "sPAR_fbt" << ',';
        DataFile.width(Width); DataFile << "sPAR_fcyt" << ',';
        DataFile.width(Width); DataFile << "sPAR_fer" << ',';
        DataFile.width(Width); DataFile << "sPAR_ffbp" << ',';
        DataFile.width(Width); DataFile << "sPAR_fmt" << ',';
        DataFile.width(Width); DataFile << "sPAR_gCa" << ',';
        DataFile.width(Width); DataFile << "sPAR_gK" << ',';
        DataFile.width(Width); DataFile << "sPAR_gKCa" << ',';
        DataFile.width(Width); DataFile << "sPAR_gkatpbar" << ',';
        DataFile.width(Width); DataFile << "sPAR_k1" << ',';
        DataFile.width(Width); DataFile << "sPAR_k2" << ',';
        DataFile.width(Width); DataFile << "sPAR_k3" << ',';
        DataFile.width(Width); DataFile << "sPAR_k4" << ',';
        DataFile.width(Width); DataFile << "sPAR_kd" << ',';
        DataFile.width(Width); DataFile << "sPAR_kdd" << ',';
        DataFile.width(Width); DataFile << "sPAR_kg" << ',';
        DataFile.width(Width); DataFile << "sPAR_kpmca" << ',';
        DataFile.width(Width); DataFile << "sPAR_ktd" << ',';
        DataFile.width(Width); DataFile << "sPAR_ktt" << ',';
        DataFile.width(Width); DataFile << "sPAR_lambda" << ',';
        DataFile.width(Width); DataFile << "sPAR_lambdaer" << ',';
        DataFile.width(Width); DataFile << "sPAR_pfkbas" << ',';
        DataFile.width(Width); DataFile << "sPAR_pleak" << ',';
        DataFile.width(Width); DataFile << "sPAR_r" << ',';
        DataFile.width(Width); DataFile << "sPAR_r1" << ',';
        DataFile.width(Width); DataFile << "sPAR_sigmaV" << ',';
        DataFile.width(Width); DataFile << "sPAR_taua" << ',';
        DataFile.width(Width); DataFile << "sPAR_taun" << ',';
        DataFile.width(Width); DataFile << "sPAR_topa1" << ',';
        DataFile.width(Width); DataFile << "sPAR_vg" << ',';
        DataFile.width(Width); DataFile << "ACC_ICa" << ',';
        DataFile.width(Width); DataFile << "ACC_IK" << ',';
        DataFile.width(Width); DataFile << "ACC_IKATP" << ',';
        DataFile.width(Width); DataFile << "ACC_IKCa" << ',';
        DataFile.width(Width); DataFile << "ACC_Jer" << ',';
        DataFile.width(Width); DataFile << "ACC_Jleak" << ',';
        DataFile.width(Width); DataFile << "ACC_Jmem" << ',';
        DataFile.width(Width); DataFile << "ACC_Jserca" << ',';
        DataFile.width(Width); DataFile << "ACC_adp3m" << ',';
        DataFile.width(Width); DataFile << "ACC_amp" << ',';
        DataFile.width(Width); DataFile << "ACC_atp" << ',';
        DataFile.width(Width); DataFile << "ACC_atp4m" << ',';
        DataFile.width(Width); DataFile << "ACC_bottom10" << ',';
        DataFile.width(Width); DataFile << "ACC_bottom11" << ',';
        DataFile.width(Width); DataFile << "ACC_bottom12" << ',';
        DataFile.width(Width); DataFile << "ACC_bottom13" << ',';
        DataFile.width(Width); DataFile << "ACC_bottom14" << ',';
        DataFile.width(Width); DataFile << "ACC_bottom15" << ',';
        DataFile.width(Width); DataFile << "ACC_bottom16" << ',';
        DataFile.width(Width); DataFile << "ACC_bottom2" << ',';
        DataFile.width(Width); DataFile << "ACC_bottom3" << ',';
        DataFile.width(Width); DataFile << "ACC_bottom4" << ',';
        DataFile.width(Width); DataFile << "ACC_bottom5" << ',';
        DataFile.width(Width); DataFile << "ACC_bottom6" << ',';
        DataFile.width(Width); DataFile << "ACC_bottom7" << ',';
        DataFile.width(Width); DataFile << "ACC_bottom8" << ',';
        DataFile.width(Width); DataFile << "ACC_bottom9" << ',';
        DataFile.width(Width); DataFile << "ACC_bottomo" << ',';
        DataFile.width(Width); DataFile << "ACC_f6p" << ',';
        DataFile.width(Width); DataFile << "ACC_fback" << ',';
        DataFile.width(Width); DataFile << "ACC_katpo" << ',';
        DataFile.width(Width); DataFile << "ACC_mgadp" << ',';
        DataFile.width(Width); DataFile << "ACC_minf" << ',';
        DataFile.width(Width); DataFile << "ACC_ninf" << ',';
        DataFile.width(Width); DataFile << "ACC_pfk" << ',';
        DataFile.width(Width); DataFile << "ACC_rad" << ',';
        DataFile.width(Width); DataFile << "ACC_ratio" << ',';
        DataFile.width(Width); DataFile << "ACC_rgpdh" << ',';
        DataFile.width(Width); DataFile << "ACC_topa10" << ',';
        DataFile.width(Width); DataFile << "ACC_topa11" << ',';
        DataFile.width(Width); DataFile << "ACC_topa12" << ',';
        DataFile.width(Width); DataFile << "ACC_topa13" << ',';
        DataFile.width(Width); DataFile << "ACC_topa14" << ',';
        DataFile.width(Width); DataFile << "ACC_topa15" << ',';
        DataFile.width(Width); DataFile << "ACC_topa16" << ',';
        DataFile.width(Width); DataFile << "ACC_topa2" << ',';
        DataFile.width(Width); DataFile << "ACC_topa3" << ',';
        DataFile.width(Width); DataFile << "ACC_topa4" << ',';
        DataFile.width(Width); DataFile << "ACC_topa5" << ',';
        DataFile.width(Width); DataFile << "ACC_topa6" << ',';
        DataFile.width(Width); DataFile << "ACC_topa7" << ',';
        DataFile.width(Width); DataFile << "ACC_topa8" << ',';
        DataFile.width(Width); DataFile << "ACC_topa9" << ',';
        DataFile.width(Width); DataFile << "ACC_topb" << ',';
        DataFile.width(Width); DataFile << "ACC_topo" << ',';
        DataFile.width(Width); DataFile << "ACC_weight10" << ',';
        DataFile.width(Width); DataFile << "ACC_weight11" << ',';
        DataFile.width(Width); DataFile << "ACC_weight12" << ',';
        DataFile.width(Width); DataFile << "ACC_weight13" << ',';
        DataFile.width(Width); DataFile << "ACC_weight14" << ',';
        DataFile.width(Width); DataFile << "ACC_weight15" << ',';
        DataFile.width(Width); DataFile << "ACC_weight16" << ',';
        DataFile.width(Width); DataFile << "ACC_weight2" << ',';
        DataFile.width(Width); DataFile << "ACC_weight3" << ',';
        DataFile.width(Width); DataFile << "ACC_weight4" << ',';
        DataFile.width(Width); DataFile << "ACC_weight5" << ',';
        DataFile.width(Width); DataFile << "ACC_weight6" << ',';
        DataFile.width(Width); DataFile << "ACC_weight7" << ',';
        DataFile.width(Width); DataFile << "ACC_weight8" << ',';
        DataFile.width(Width); DataFile << "ACC_weight9" << ',';
        DataFile.width(Width); DataFile << "ACC_y" << ',';
        DataFile.width(Width); DataFile << endl;
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 0) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 1) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 2) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 3) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 4) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 5) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 6) << ',';
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
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 10) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 11) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 12) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 13) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 14) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 15) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 16) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 17) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 18) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 19) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 20) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 21) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 22) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 23) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 24) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 25) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 26) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 27) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 28) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 29) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 30) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 31) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 32) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 33) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 34) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 35) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 36) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 37) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 38) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 39) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 40) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 41) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 42) << ',';
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
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 20) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 21) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 22) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 23) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 24) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 25) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 26) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 27) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 28) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 29) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 30) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 31) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 32) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 33) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 34) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 35) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 36) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 37) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 38) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 39) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 40) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 41) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 42) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 43) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 44) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 45) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 46) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 47) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 48) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 49) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 50) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 51) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 52) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 53) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 54) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 55) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 56) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 57) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 58) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 59) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 60) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 61) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 62) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 63) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 64) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 65) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 66) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 67) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 68) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 69) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 70) << ',';

        DataFile << '\n';
    }
}


int main() {
    int NumberOfProblems = NT; // Numero di problemi da risolvere, uno per thread
    int blockSize        = 512; // Numero di Thread per blocchi
    
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
    Solver.SolverOption(TimeStepGrowLimit, 5.0);

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

    Solver.SolverOption(RelativeTolerance, 0, 1e-06);
    Solver.SolverOption(RelativeTolerance, 1, 1e-06);
    Solver.SolverOption(RelativeTolerance, 2, 1e-06);
    Solver.SolverOption(RelativeTolerance, 3, 1e-06);
    Solver.SolverOption(RelativeTolerance, 4, 1e-06);
    Solver.SolverOption(RelativeTolerance, 5, 1e-06);
    Solver.SolverOption(RelativeTolerance, 6, 1e-06);
   
    
    int NumberOfSimulationLaunches = NumberOfProblems / NT + (NumberOfProblems % NT == 0 ? 0:1);
    ofstream DataFile;
    DataFile.open ( "BIOMD373.csv" );
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

