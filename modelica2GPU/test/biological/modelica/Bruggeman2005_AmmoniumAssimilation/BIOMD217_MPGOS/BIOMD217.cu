

#include <iostream>
#include <vector>
#include <iomanip>
#include <string>
#include <fstream>

#define PI 3.14159265358979323846

#include "BIOMD217_SystemDefinition.cuh"
#include "SingleSystem_PerThread_Interface.cuh"

using namespace std;

#define SOLVER RKCK45 // Runge-Kutta Order 4th
#define PRECISION double
const int NT   = 1;
const int SD   = 22;
const int NCP  = 1;
const int NSP  = 95;
const int NISP = 0;
const int NE   = 0;
const int NA   = 10;
const int NIA  = 0;
const int NDO  = 1000000;


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
        DataFile.width(Width); DataFile << "X_ADP" << ',';
        DataFile.width(Width); DataFile << "X_AMP" << ',';
        DataFile.width(Width); DataFile << "X_ATP" << ',';
        DataFile.width(Width); DataFile << "X_AZGLN" << ',';
        DataFile.width(Width); DataFile << "X_AZGLU" << ',';
        DataFile.width(Width); DataFile << "X_AZgln" << ',';
        DataFile.width(Width); DataFile << "X_AZglu" << ',';
        DataFile.width(Width); DataFile << "X_GLN" << ',';
        DataFile.width(Width); DataFile << "X_GLU" << ',';
        DataFile.width(Width); DataFile << "X_GS" << ',';
        DataFile.width(Width); DataFile << "X_KG" << ',';
        DataFile.width(Width); DataFile << "X_NADP" << ',';
        DataFile.width(Width); DataFile << "X_NADPH" << ',';
        DataFile.width(Width); DataFile << "X_NH4" << ',';
        DataFile.width(Width); DataFile << "X_PII" << ',';
        DataFile.width(Width); DataFile << "X_PIIUMP" << ',';
        DataFile.width(Width); DataFile << "X_PIIUMP2" << ',';
        DataFile.width(Width); DataFile << "X_PIIUMP3" << ',';
        DataFile.width(Width); DataFile << "X_PPi" << ',';
        DataFile.width(Width); DataFile << "X_P_i" << ',';
        DataFile.width(Width); DataFile << "X_UMP" << ',';
        DataFile.width(Width); DataFile << "X_UTP" << ',';
        DataFile.width(Width); DataFile << "sPAR_ATPtot" << ',';
        DataFile.width(Width); DataFile << "sPAR_GStot" << ',';
        DataFile.width(Width); DataFile << "sPAR_Kadgln" << ',';
        DataFile.width(Width); DataFile << "sPAR_Kadgs" << ',';
        DataFile.width(Width); DataFile << "sPAR_Kadp" << ',';
        DataFile.width(Width); DataFile << "sPAR_Kadpiikg" << ',';
        DataFile.width(Width); DataFile << "sPAR_Kazglndemazgln" << ',';
        DataFile.width(Width); DataFile << "sPAR_Kazglndemazinter" << ',';
        DataFile.width(Width); DataFile << "sPAR_Kazglndemeq" << ',';
        DataFile.width(Width); DataFile << "sPAR_Kazgludemazglu" << ',';
        DataFile.width(Width); DataFile << "sPAR_Kazgludemazinter" << ',';
        DataFile.width(Width); DataFile << "sPAR_Kazgludemeq" << ',';
        DataFile.width(Width); DataFile << "sPAR_Kd1" << ',';
        DataFile.width(Width); DataFile << "sPAR_Kd1piiump" << ',';
        DataFile.width(Width); DataFile << "sPAR_Kd2" << ',';
        DataFile.width(Width); DataFile << "sPAR_Kd2piiump" << ',';
        DataFile.width(Width); DataFile << "sPAR_Kd3" << ',';
        DataFile.width(Width); DataFile << "sPAR_Kd3piiump" << ',';
        DataFile.width(Width); DataFile << "sPAR_Kdeadgln" << ',';
        DataFile.width(Width); DataFile << "sPAR_Kdeadgsa" << ',';
        DataFile.width(Width); DataFile << "sPAR_Kdeadpiikg" << ',';
        DataFile.width(Width); DataFile << "sPAR_Kdeadpiiu" << ',';
        DataFile.width(Width); DataFile << "sPAR_Keq" << ',';
        DataFile.width(Width); DataFile << "sPAR_Keqgdh" << ',';
        DataFile.width(Width); DataFile << "sPAR_Kgdhazglu" << ',';
        DataFile.width(Width); DataFile << "sPAR_Kgdhglu" << ',';
        DataFile.width(Width); DataFile << "sPAR_Kgdhkg" << ',';
        DataFile.width(Width); DataFile << "sPAR_Kgdhnadp" << ',';
        DataFile.width(Width); DataFile << "sPAR_Kgdhnadph" << ',';
        DataFile.width(Width); DataFile << "sPAR_Kgdhnh" << ',';
        DataFile.width(Width); DataFile << "sPAR_Kglndemazgln" << ',';
        DataFile.width(Width); DataFile << "sPAR_Kglndemeq" << ',';
        DataFile.width(Width); DataFile << "sPAR_Kglndemgln" << ',';
        DataFile.width(Width); DataFile << "sPAR_Kglnur" << ',';
        DataFile.width(Width); DataFile << "sPAR_Kglnut" << ',';
        DataFile.width(Width); DataFile << "sPAR_Kgludemazglu" << ',';
        DataFile.width(Width); DataFile << "sPAR_Kgludemeq" << ',';
        DataFile.width(Width); DataFile << "sPAR_Kgludemglu" << ',';
        DataFile.width(Width); DataFile << "sPAR_Kgogaz" << ',';
        DataFile.width(Width); DataFile << "sPAR_Kgoggln" << ',';
        DataFile.width(Width); DataFile << "sPAR_Kgogglu" << ',';
        DataFile.width(Width); DataFile << "sPAR_Kgogkg" << ',';
        DataFile.width(Width); DataFile << "sPAR_Kgognadp" << ',';
        DataFile.width(Width); DataFile << "sPAR_Kgognadph" << ',';
        DataFile.width(Width); DataFile << "sPAR_Kgsadp" << ',';
        DataFile.width(Width); DataFile << "sPAR_Kgsatp" << ',';
        DataFile.width(Width); DataFile << "sPAR_Kgseq" << ',';
        DataFile.width(Width); DataFile << "sPAR_Kgsgln" << ',';
        DataFile.width(Width); DataFile << "sPAR_Kgsglu" << ',';
        DataFile.width(Width); DataFile << "sPAR_Kgsnh" << ',';
        DataFile.width(Width); DataFile << "sPAR_Kgspi" << ',';
        DataFile.width(Width); DataFile << "sPAR_Kurpiiump" << ',';
        DataFile.width(Width); DataFile << "sPAR_Kurump" << ',';
        DataFile.width(Width); DataFile << "sPAR_Kutipii" << ',';
        DataFile.width(Width); DataFile << "sPAR_Kutippi" << ',';
        DataFile.width(Width); DataFile << "sPAR_Kutpii" << ',';
        DataFile.width(Width); DataFile << "sPAR_Kutpiiump" << ',';
        DataFile.width(Width); DataFile << "sPAR_Kututp" << ',';
        DataFile.width(Width); DataFile << "sPAR_PIItot" << ',';
        DataFile.width(Width); DataFile << "sPAR_UR" << ',';
        DataFile.width(Width); DataFile << "sPAR_UT" << ',';
        DataFile.width(Width); DataFile << "sPAR_Vad" << ',';
        DataFile.width(Width); DataFile << "sPAR_Vadp" << ',';
        DataFile.width(Width); DataFile << "sPAR_Vazglndem" << ',';
        DataFile.width(Width); DataFile << "sPAR_Vazgludem" << ',';
        DataFile.width(Width); DataFile << "sPAR_Vdead" << ',';
        DataFile.width(Width); DataFile << "sPAR_Vgdh" << ',';
        DataFile.width(Width); DataFile << "sPAR_Vglndem" << ',';
        DataFile.width(Width); DataFile << "sPAR_Vgludem" << ',';
        DataFile.width(Width); DataFile << "sPAR_Vgog" << ',';
        DataFile.width(Width); DataFile << "sPAR_Vgs" << ',';
        DataFile.width(Width); DataFile << "sPAR_a1" << ',';
        DataFile.width(Width); DataFile << "sPAR_aamp" << ',';
        DataFile.width(Width); DataFile << "sPAR_b1" << ',';
        DataFile.width(Width); DataFile << "sPAR_bamp" << ',';
        DataFile.width(Width); DataFile << "sPAR_c1" << ',';
        DataFile.width(Width); DataFile << "sPAR_camp" << ',';
        DataFile.width(Width); DataFile << "sPAR_compartment" << ',';
        DataFile.width(Width); DataFile << "sPAR_d1" << ',';
        DataFile.width(Width); DataFile << "sPAR_damp" << ',';
        DataFile.width(Width); DataFile << "sPAR_e1" << ',';
        DataFile.width(Width); DataFile << "sPAR_f1" << ',';
        DataFile.width(Width); DataFile << "sPAR_g1" << ',';
        DataFile.width(Width); DataFile << "sPAR_h1" << ',';
        DataFile.width(Width); DataFile << "sPAR_i1" << ',';
        DataFile.width(Width); DataFile << "sPAR_j1" << ',';
        DataFile.width(Width); DataFile << "sPAR_k1" << ',';
        DataFile.width(Width); DataFile << "sPAR_kcatur" << ',';
        DataFile.width(Width); DataFile << "sPAR_kcatut" << ',';
        DataFile.width(Width); DataFile << "sPAR_l1" << ',';
        DataFile.width(Width); DataFile << "sPAR_m1" << ',';
        DataFile.width(Width); DataFile << "sPAR_n1" << ',';
        DataFile.width(Width); DataFile << "sPAR_n1amp" << ',';
        DataFile.width(Width); DataFile << "sPAR_n2amp" << ',';
        DataFile.width(Width); DataFile << "sPAR_o1" << ',';
        DataFile.width(Width); DataFile << "ACC_$cse1" << ',';
        DataFile.width(Width); DataFile << "ACC_$cse2" << ',';
        DataFile.width(Width); DataFile << "ACC_$cse3" << ',';
        DataFile.width(Width); DataFile << "ACC_$cse4" << ',';
        DataFile.width(Width); DataFile << "ACC_$cse5" << ',';
        DataFile.width(Width); DataFile << "ACC_$cse6" << ',';
        DataFile.width(Width); DataFile << "ACC_PIIKG1" << ',';
        DataFile.width(Width); DataFile << "ACC_PIIUMP3KG3" << ',';
        DataFile.width(Width); DataFile << "ACC_nAMP" << ',';
        DataFile.width(Width); DataFile << "ACC_vAPP_GS" << ',';
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
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 43) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 44) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 45) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 46) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 47) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 48) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 49) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 50) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 51) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 52) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 53) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 54) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 55) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 56) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 57) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 58) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 59) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 60) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 61) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 62) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 63) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 64) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 65) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 66) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 67) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 68) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 69) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 70) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 71) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 72) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 73) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 74) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 75) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 76) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 77) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 78) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 79) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 80) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 81) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 82) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 83) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 84) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 85) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 86) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 87) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 88) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 89) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 90) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 91) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 92) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 93) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 94) << ',';
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
   
    
    int NumberOfSimulationLaunches = NumberOfProblems / NT + (NumberOfProblems % NT == 0 ? 0:1);
    ofstream DataFile;
    DataFile.open ( "BIOMD217.csv" );
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

