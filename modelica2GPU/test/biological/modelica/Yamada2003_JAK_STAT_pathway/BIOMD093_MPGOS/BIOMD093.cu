

#include <iostream>
#include <vector>
#include <iomanip>
#include <string>
#include <fstream>

#define PI 3.14159265358979323846

#include "BIOMD093_SystemDefinition.cuh"
#include "SingleSystem_PerThread_Interface.cuh"

using namespace std;

#define SOLVER RKCK45 // Runge-Kutta Order 4th
#define PRECISION double
const int NT   = 1;
const int SD   = 34;
const int NCP  = 1;
const int NSP  = 74;
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
        DataFile.width(Width); DataFile << "X_IFN" << ',';
        DataFile.width(Width); DataFile << "X_IFNR" << ',';
        DataFile.width(Width); DataFile << "X_IFNRJ" << ',';
        DataFile.width(Width); DataFile << "X_IFNRJ2" << ',';
        DataFile.width(Width); DataFile << "X_IFNRJ2_star" << ',';
        DataFile.width(Width); DataFile << "X_IFNRJ2_star_SHP2" << ',';
        DataFile.width(Width); DataFile << "X_IFNRJ2_star_SHP2_SOCS1" << ',';
        DataFile.width(Width); DataFile << "X_IFNRJ2_star_SHP2_SOCS1_STAT1c" << ',';
        DataFile.width(Width); DataFile << "X_IFNRJ2_star_SHP2_STAT1c" << ',';
        DataFile.width(Width); DataFile << "X_IFNRJ2_star_SOCS1" << ',';
        DataFile.width(Width); DataFile << "X_IFNRJ2_star_SOCS1_STAT1c" << ',';
        DataFile.width(Width); DataFile << "X_IFNRJ2_star_STAT1c" << ',';
        DataFile.width(Width); DataFile << "X_IFNRJ2_star_STAT1c_star" << ',';
        DataFile.width(Width); DataFile << "X_JAK" << ',';
        DataFile.width(Width); DataFile << "X_PPN" << ',';
        DataFile.width(Width); DataFile << "X_PPX" << ',';
        DataFile.width(Width); DataFile << "X_R" << ',';
        DataFile.width(Width); DataFile << "X_RJ" << ',';
        DataFile.width(Width); DataFile << "X_SHP2" << ',';
        DataFile.width(Width); DataFile << "X_SOCS1" << ',';
        DataFile.width(Width); DataFile << "X_STAT1c" << ',';
        DataFile.width(Width); DataFile << "X_STAT1c_STAT1c_star" << ',';
        DataFile.width(Width); DataFile << "X_STAT1c_star" << ',';
        DataFile.width(Width); DataFile << "X_STAT1c_star_PPX" << ',';
        DataFile.width(Width); DataFile << "X_STAT1c_star_STAT1c_star" << ',';
        DataFile.width(Width); DataFile << "X_STAT1c_star_STAT1c_star_PPX" << ',';
        DataFile.width(Width); DataFile << "X_STAT1n" << ',';
        DataFile.width(Width); DataFile << "X_STAT1n_STAT1n_star" << ',';
        DataFile.width(Width); DataFile << "X_STAT1n_star" << ',';
        DataFile.width(Width); DataFile << "X_STAT1n_star_PPN" << ',';
        DataFile.width(Width); DataFile << "X_STAT1n_star_STAT1n_star" << ',';
        DataFile.width(Width); DataFile << "X_STAT1n_star_STAT1n_star_PPN" << ',';
        DataFile.width(Width); DataFile << "X_mRNAc" << ',';
        DataFile.width(Width); DataFile << "X_mRNAn" << ',';
        DataFile.width(Width); DataFile << "sPAR_cytoplasm" << ',';
        DataFile.width(Width); DataFile << "sPAR_ka_v24" << ',';
        DataFile.width(Width); DataFile << "sPAR_kb_v1" << ',';
        DataFile.width(Width); DataFile << "sPAR_kb_v11" << ',';
        DataFile.width(Width); DataFile << "sPAR_kb_v13" << ',';
        DataFile.width(Width); DataFile << "sPAR_kb_v15" << ',';
        DataFile.width(Width); DataFile << "sPAR_kb_v17" << ',';
        DataFile.width(Width); DataFile << "sPAR_kb_v18" << ',';
        DataFile.width(Width); DataFile << "sPAR_kb_v2" << ',';
        DataFile.width(Width); DataFile << "sPAR_kb_v20" << ',';
        DataFile.width(Width); DataFile << "sPAR_kb_v22" << ',';
        DataFile.width(Width); DataFile << "sPAR_kb_v24" << ',';
        DataFile.width(Width); DataFile << "sPAR_kb_v29" << ',';
        DataFile.width(Width); DataFile << "sPAR_kb_v3" << ',';
        DataFile.width(Width); DataFile << "sPAR_kb_v30" << ',';
        DataFile.width(Width); DataFile << "sPAR_kb_v31" << ',';
        DataFile.width(Width); DataFile << "sPAR_kb_v34" << ',';
        DataFile.width(Width); DataFile << "sPAR_kb_v35" << ',';
        DataFile.width(Width); DataFile << "sPAR_kb_v36" << ',';
        DataFile.width(Width); DataFile << "sPAR_kb_v42" << ',';
        DataFile.width(Width); DataFile << "sPAR_kb_v43" << ',';
        DataFile.width(Width); DataFile << "sPAR_kb_v44" << ',';
        DataFile.width(Width); DataFile << "sPAR_kb_v45" << ',';
        DataFile.width(Width); DataFile << "sPAR_kb_v46" << ',';
        DataFile.width(Width); DataFile << "sPAR_kb_v5" << ',';
        DataFile.width(Width); DataFile << "sPAR_kb_v7" << ',';
        DataFile.width(Width); DataFile << "sPAR_kb_v8" << ',';
        DataFile.width(Width); DataFile << "sPAR_kb_v9" << ',';
        DataFile.width(Width); DataFile << "sPAR_kf_v1" << ',';
        DataFile.width(Width); DataFile << "sPAR_kf_v10" << ',';
        DataFile.width(Width); DataFile << "sPAR_kf_v11" << ',';
        DataFile.width(Width); DataFile << "sPAR_kf_v12" << ',';
        DataFile.width(Width); DataFile << "sPAR_kf_v13" << ',';
        DataFile.width(Width); DataFile << "sPAR_kf_v14" << ',';
        DataFile.width(Width); DataFile << "sPAR_kf_v15" << ',';
        DataFile.width(Width); DataFile << "sPAR_kf_v16" << ',';
        DataFile.width(Width); DataFile << "sPAR_kf_v17" << ',';
        DataFile.width(Width); DataFile << "sPAR_kf_v18" << ',';
        DataFile.width(Width); DataFile << "sPAR_kf_v19" << ',';
        DataFile.width(Width); DataFile << "sPAR_kf_v2" << ',';
        DataFile.width(Width); DataFile << "sPAR_kf_v20" << ',';
        DataFile.width(Width); DataFile << "sPAR_kf_v21" << ',';
        DataFile.width(Width); DataFile << "sPAR_kf_v22" << ',';
        DataFile.width(Width); DataFile << "sPAR_kf_v23" << ',';
        DataFile.width(Width); DataFile << "sPAR_kf_v25" << ',';
        DataFile.width(Width); DataFile << "sPAR_kf_v26" << ',';
        DataFile.width(Width); DataFile << "sPAR_kf_v27" << ',';
        DataFile.width(Width); DataFile << "sPAR_kf_v28" << ',';
        DataFile.width(Width); DataFile << "sPAR_kf_v29" << ',';
        DataFile.width(Width); DataFile << "sPAR_kf_v3" << ',';
        DataFile.width(Width); DataFile << "sPAR_kf_v30" << ',';
        DataFile.width(Width); DataFile << "sPAR_kf_v31" << ',';
        DataFile.width(Width); DataFile << "sPAR_kf_v32" << ',';
        DataFile.width(Width); DataFile << "sPAR_kf_v33" << ',';
        DataFile.width(Width); DataFile << "sPAR_kf_v34" << ',';
        DataFile.width(Width); DataFile << "sPAR_kf_v35" << ',';
        DataFile.width(Width); DataFile << "sPAR_kf_v36" << ',';
        DataFile.width(Width); DataFile << "sPAR_kf_v37" << ',';
        DataFile.width(Width); DataFile << "sPAR_kf_v38" << ',';
        DataFile.width(Width); DataFile << "sPAR_kf_v39" << ',';
        DataFile.width(Width); DataFile << "sPAR_kf_v4" << ',';
        DataFile.width(Width); DataFile << "sPAR_kf_v40" << ',';
        DataFile.width(Width); DataFile << "sPAR_kf_v41" << ',';
        DataFile.width(Width); DataFile << "sPAR_kf_v42" << ',';
        DataFile.width(Width); DataFile << "sPAR_kf_v43" << ',';
        DataFile.width(Width); DataFile << "sPAR_kf_v44" << ',';
        DataFile.width(Width); DataFile << "sPAR_kf_v45" << ',';
        DataFile.width(Width); DataFile << "sPAR_kf_v46" << ',';
        DataFile.width(Width); DataFile << "sPAR_kf_v5" << ',';
        DataFile.width(Width); DataFile << "sPAR_kf_v6" << ',';
        DataFile.width(Width); DataFile << "sPAR_kf_v7" << ',';
        DataFile.width(Width); DataFile << "sPAR_kf_v8" << ',';
        DataFile.width(Width); DataFile << "sPAR_kf_v9" << ',';
        DataFile.width(Width); DataFile << "sPAR_nucleus" << ',';
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
   
    
    int NumberOfSimulationLaunches = NumberOfProblems / NT + (NumberOfProblems % NT == 0 ? 0:1);
    ofstream DataFile;
    DataFile.open ( "BIOMD093.csv" );
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

