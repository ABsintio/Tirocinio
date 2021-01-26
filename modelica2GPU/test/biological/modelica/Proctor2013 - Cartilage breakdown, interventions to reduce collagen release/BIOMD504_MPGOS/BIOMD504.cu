

#include <iostream>
#include <vector>
#include <iomanip>
#include <string>
#include <fstream>

#include "BIOMD504_SystemDefinition.cuh"
#include "SingleSystem_PerThread_Interface.cuh"

using namespace std;

#define SOLVER RKCK45
#define PRECISION double
const int NT   = 1;
const int SD   = 75;
const int NCP  = 1;
const int NSP  = 0;
const int NISP = 0;
const int NE   = 0;
const int NA   = 0;
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

        Solver.SetHost(ProblemNumber, ActualTime, 0.0);
        Solver.SetHost(ProblemNumber, ControlParameters, 0, 0.0);
        Solver.SetHost(ProblemNumber, DenseIndex, 0 );

        ProblemNumber++;
        k_begin++;
    }
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
        DataFile.width(Width); DataFile << "X_ADAMTS4" << ',';
        DataFile.width(Width); DataFile << "X_ADAMTS4_TIMP1" << ',';
        DataFile.width(Width); DataFile << "X_ADAMTS4_TIMP3" << ',';
        DataFile.width(Width); DataFile << "X_ADAMTS4_mRNA" << ',';
        DataFile.width(Width); DataFile << "X_AggFrag" << ',';
        DataFile.width(Width); DataFile << "X_Aggrecan" << ',';
        DataFile.width(Width); DataFile << "X_Aggrecan_Collagen2" << ',';
        DataFile.width(Width); DataFile << "X_ColFrag" << ',';
        DataFile.width(Width); DataFile << "X_Collagen2" << ',';
        DataFile.width(Width); DataFile << "X_DUSP16" << ',';
        DataFile.width(Width); DataFile << "X_IL1" << ',';
        DataFile.width(Width); DataFile << "X_IL1R" << ',';
        DataFile.width(Width); DataFile << "X_IL1Ra" << ',';
        DataFile.width(Width); DataFile << "X_IL1_IL1R" << ',';
        DataFile.width(Width); DataFile << "X_IL1_IL1R_IRAK2" << ',';
        DataFile.width(Width); DataFile << "X_IL1_IL1Ra" << ',';
        DataFile.width(Width); DataFile << "X_IRAK2" << ',';
        DataFile.width(Width); DataFile << "X_IRAK2_TRAF6" << ',';
        DataFile.width(Width); DataFile << "X_IRAK2_TRAF6_PP4" << ',';
        DataFile.width(Width); DataFile << "X_JAK1" << ',';
        DataFile.width(Width); DataFile << "X_JAK1_P" << ',';
        DataFile.width(Width); DataFile << "X_JNK" << ',';
        DataFile.width(Width); DataFile << "X_JNK_P" << ',';
        DataFile.width(Width); DataFile << "X_MKP1" << ',';
        DataFile.width(Width); DataFile << "X_MMP1" << ',';
        DataFile.width(Width); DataFile << "X_MMP13" << ',';
        DataFile.width(Width); DataFile << "X_MMP13_TIMP1" << ',';
        DataFile.width(Width); DataFile << "X_MMP13_TIMP3" << ',';
        DataFile.width(Width); DataFile << "X_MMP13_mRNA" << ',';
        DataFile.width(Width); DataFile << "X_MMP1_TIMP1" << ',';
        DataFile.width(Width); DataFile << "X_MMP1_TIMP3" << ',';
        DataFile.width(Width); DataFile << "X_MMP1_mRNA" << ',';
        DataFile.width(Width); DataFile << "X_MMP3" << ',';
        DataFile.width(Width); DataFile << "X_MMP3_TIMP1" << ',';
        DataFile.width(Width); DataFile << "X_MMP3_TIMP3" << ',';
        DataFile.width(Width); DataFile << "X_MMP3_mRNA" << ',';
        DataFile.width(Width); DataFile << "X_Matriptase" << ',';
        DataFile.width(Width); DataFile << "X_OSM" << ',';
        DataFile.width(Width); DataFile << "X_OSMR" << ',';
        DataFile.width(Width); DataFile << "X_OSMR_SOCS3" << ',';
        DataFile.width(Width); DataFile << "X_OSMRa" << ',';
        DataFile.width(Width); DataFile << "X_OSM_OSMR" << ',';
        DataFile.width(Width); DataFile << "X_OSM_OSMRa" << ',';
        DataFile.width(Width); DataFile << "X_PP4" << ',';
        DataFile.width(Width); DataFile << "X_PTPRT" << ',';
        DataFile.width(Width); DataFile << "X_SOCS3" << ',';
        DataFile.width(Width); DataFile << "X_SOCS3_mRNA" << ',';
        DataFile.width(Width); DataFile << "X_SP1" << ',';
        DataFile.width(Width); DataFile << "X_SP1_TIMP1_DNA" << ',';
        DataFile.width(Width); DataFile << "X_STAT3_P_cyt" << ',';
        DataFile.width(Width); DataFile << "X_STAT3_P_nuc" << ',';
        DataFile.width(Width); DataFile << "X_STAT3_cyt" << ',';
        DataFile.width(Width); DataFile << "X_STAT3_nuc" << ',';
        DataFile.width(Width); DataFile << "X_Sink" << ',';
        DataFile.width(Width); DataFile << "X_Source" << ',';
        DataFile.width(Width); DataFile << "X_TIMP1" << ',';
        DataFile.width(Width); DataFile << "X_TIMP1_DNA" << ',';
        DataFile.width(Width); DataFile << "X_TIMP1_mRNA" << ',';
        DataFile.width(Width); DataFile << "X_TIMP3" << ',';
        DataFile.width(Width); DataFile << "X_TIMP3_mRNA" << ',';
        DataFile.width(Width); DataFile << "X_TRAF6" << ',';
        DataFile.width(Width); DataFile << "X_TRAF6_PP4" << ',';
        DataFile.width(Width); DataFile << "X_cFos" << ',';
        DataFile.width(Width); DataFile << "X_cFos_P" << ',';
        DataFile.width(Width); DataFile << "X_cFos_cJun" << ',';
        DataFile.width(Width); DataFile << "X_cFos_mRNA" << ',';
        DataFile.width(Width); DataFile << "X_cJun" << ',';
        DataFile.width(Width); DataFile << "X_cJun_P" << ',';
        DataFile.width(Width); DataFile << "X_cJun_dimer" << ',';
        DataFile.width(Width); DataFile << "X_cJun_mRNA" << ',';
        DataFile.width(Width); DataFile << "X_p38" << ',';
        DataFile.width(Width); DataFile << "X_p38_P" << ',';
        DataFile.width(Width); DataFile << "X_proMMP1" << ',';
        DataFile.width(Width); DataFile << "X_proMMP13" << ',';
        DataFile.width(Width); DataFile << "X_proMMP3" << ',';
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
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 28) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 29) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 30) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 31) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 32) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 33) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 34) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 35) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 36) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 37) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 38) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 39) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 40) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 41) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 42) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 43) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 44) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 45) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 46) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 47) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 48) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 49) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 50) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 51) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 52) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 53) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 54) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 55) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 56) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 57) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 58) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 59) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 60) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 61) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 62) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 63) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 64) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 65) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 66) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 67) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 68) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 69) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 70) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 71) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 72) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 73) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 74) << ',';

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
    Solver.SolverOption(AbsoluteTolerance, 22, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 23, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 24, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 25, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 26, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 27, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 28, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 29, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 30, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 31, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 32, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 33, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 34, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 35, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 36, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 37, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 38, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 39, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 40, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 41, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 42, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 43, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 44, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 45, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 46, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 47, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 48, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 49, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 50, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 51, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 52, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 53, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 54, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 55, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 56, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 57, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 58, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 59, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 60, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 61, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 62, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 63, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 64, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 65, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 66, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 67, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 68, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 69, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 70, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 71, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 72, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 73, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 74, 1e-06);

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
    Solver.SolverOption(RelativeTolerance, 28, 1e-06);
    Solver.SolverOption(RelativeTolerance, 29, 1e-06);
    Solver.SolverOption(RelativeTolerance, 30, 1e-06);
    Solver.SolverOption(RelativeTolerance, 31, 1e-06);
    Solver.SolverOption(RelativeTolerance, 32, 1e-06);
    Solver.SolverOption(RelativeTolerance, 33, 1e-06);
    Solver.SolverOption(RelativeTolerance, 34, 1e-06);
    Solver.SolverOption(RelativeTolerance, 35, 1e-06);
    Solver.SolverOption(RelativeTolerance, 36, 1e-06);
    Solver.SolverOption(RelativeTolerance, 37, 1e-06);
    Solver.SolverOption(RelativeTolerance, 38, 1e-06);
    Solver.SolverOption(RelativeTolerance, 39, 1e-06);
    Solver.SolverOption(RelativeTolerance, 40, 1e-06);
    Solver.SolverOption(RelativeTolerance, 41, 1e-06);
    Solver.SolverOption(RelativeTolerance, 42, 1e-06);
    Solver.SolverOption(RelativeTolerance, 43, 1e-06);
    Solver.SolverOption(RelativeTolerance, 44, 1e-06);
    Solver.SolverOption(RelativeTolerance, 45, 1e-06);
    Solver.SolverOption(RelativeTolerance, 46, 1e-06);
    Solver.SolverOption(RelativeTolerance, 47, 1e-06);
    Solver.SolverOption(RelativeTolerance, 48, 1e-06);
    Solver.SolverOption(RelativeTolerance, 49, 1e-06);
    Solver.SolverOption(RelativeTolerance, 50, 1e-06);
    Solver.SolverOption(RelativeTolerance, 51, 1e-06);
    Solver.SolverOption(RelativeTolerance, 52, 1e-06);
    Solver.SolverOption(RelativeTolerance, 53, 1e-06);
    Solver.SolverOption(RelativeTolerance, 54, 1e-06);
    Solver.SolverOption(RelativeTolerance, 55, 1e-06);
    Solver.SolverOption(RelativeTolerance, 56, 1e-06);
    Solver.SolverOption(RelativeTolerance, 57, 1e-06);
    Solver.SolverOption(RelativeTolerance, 58, 1e-06);
    Solver.SolverOption(RelativeTolerance, 59, 1e-06);
    Solver.SolverOption(RelativeTolerance, 60, 1e-06);
    Solver.SolverOption(RelativeTolerance, 61, 1e-06);
    Solver.SolverOption(RelativeTolerance, 62, 1e-06);
    Solver.SolverOption(RelativeTolerance, 63, 1e-06);
    Solver.SolverOption(RelativeTolerance, 64, 1e-06);
    Solver.SolverOption(RelativeTolerance, 65, 1e-06);
    Solver.SolverOption(RelativeTolerance, 66, 1e-06);
    Solver.SolverOption(RelativeTolerance, 67, 1e-06);
    Solver.SolverOption(RelativeTolerance, 68, 1e-06);
    Solver.SolverOption(RelativeTolerance, 69, 1e-06);
    Solver.SolverOption(RelativeTolerance, 70, 1e-06);
    Solver.SolverOption(RelativeTolerance, 71, 1e-06);
    Solver.SolverOption(RelativeTolerance, 72, 1e-06);
    Solver.SolverOption(RelativeTolerance, 73, 1e-06);
    Solver.SolverOption(RelativeTolerance, 74, 1e-06);
   
    
    int NumberOfSimulationLaunches = NumberOfProblems / NT + (NumberOfProblems % NT == 0 ? 0:1);
    ofstream DataFile;
    DataFile.open ( "BIOMD504.csv" );
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

