

#include <iostream>
#include <vector>
#include <iomanip>
#include <string>
#include <fstream>

#include "CocurrentHeatExchangerEquations_N_20_SystemDefinition.cuh"
#include "SingleSystem_PerThread_Interface.cuh"

using namespace std;

#define SOLVER RKCK45 // Runge-Kutta Order 4th
#define PRECISION double
const int NT   = 1;
const int SD   = 57;
const int NCP  = 1;
const int NSP  = 13;
const int NISP = 1;
const int NE   = 0;
const int NA   = 43;
const int NIA  = 0;
const int NDO  = 2000000.0;


void FillSolverObject(
    ProblemSolver<NT,SD,NCP,NSP,NISP,NE,NA,NIA,NDO,SOLVER,PRECISION>& Solver, 
    int FirstProblemNumber, int NumberOfThreads
) {
    int k_begin = FirstProblemNumber;
    int k_end   = FirstProblemNumber + NumberOfThreads;
	
    int ProblemNumber = 0;
    while (k_begin < k_end) {
        Solver.SetHost(ProblemNumber, TimeDomain, 0, 0.0);
        Solver.SetHost(ProblemNumber, TimeDomain, 1, 20.0);  

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
        DataFile.width(Width); DataFile << "X_TA[2]" << ',';
        DataFile.width(Width); DataFile << "X_TA[3]" << ',';
        DataFile.width(Width); DataFile << "X_TA[4]" << ',';
        DataFile.width(Width); DataFile << "X_TA[5]" << ',';
        DataFile.width(Width); DataFile << "X_TA[6]" << ',';
        DataFile.width(Width); DataFile << "X_TA[7]" << ',';
        DataFile.width(Width); DataFile << "X_TA[8]" << ',';
        DataFile.width(Width); DataFile << "X_TA[9]" << ',';
        DataFile.width(Width); DataFile << "X_TA[10]" << ',';
        DataFile.width(Width); DataFile << "X_TA[11]" << ',';
        DataFile.width(Width); DataFile << "X_TA[12]" << ',';
        DataFile.width(Width); DataFile << "X_TA[13]" << ',';
        DataFile.width(Width); DataFile << "X_TA[14]" << ',';
        DataFile.width(Width); DataFile << "X_TA[15]" << ',';
        DataFile.width(Width); DataFile << "X_TA[16]" << ',';
        DataFile.width(Width); DataFile << "X_TA[17]" << ',';
        DataFile.width(Width); DataFile << "X_TA[18]" << ',';
        DataFile.width(Width); DataFile << "X_TA[19]" << ',';
        DataFile.width(Width); DataFile << "X_TA[20]" << ',';
        DataFile.width(Width); DataFile << "X_TB[2]" << ',';
        DataFile.width(Width); DataFile << "X_TB[3]" << ',';
        DataFile.width(Width); DataFile << "X_TB[4]" << ',';
        DataFile.width(Width); DataFile << "X_TB[5]" << ',';
        DataFile.width(Width); DataFile << "X_TB[6]" << ',';
        DataFile.width(Width); DataFile << "X_TB[7]" << ',';
        DataFile.width(Width); DataFile << "X_TB[8]" << ',';
        DataFile.width(Width); DataFile << "X_TB[9]" << ',';
        DataFile.width(Width); DataFile << "X_TB[10]" << ',';
        DataFile.width(Width); DataFile << "X_TB[11]" << ',';
        DataFile.width(Width); DataFile << "X_TB[12]" << ',';
        DataFile.width(Width); DataFile << "X_TB[13]" << ',';
        DataFile.width(Width); DataFile << "X_TB[14]" << ',';
        DataFile.width(Width); DataFile << "X_TB[15]" << ',';
        DataFile.width(Width); DataFile << "X_TB[16]" << ',';
        DataFile.width(Width); DataFile << "X_TB[17]" << ',';
        DataFile.width(Width); DataFile << "X_TB[18]" << ',';
        DataFile.width(Width); DataFile << "X_TB[19]" << ',';
        DataFile.width(Width); DataFile << "X_TB[20]" << ',';
        DataFile.width(Width); DataFile << "X_TW[1]" << ',';
        DataFile.width(Width); DataFile << "X_TW[2]" << ',';
        DataFile.width(Width); DataFile << "X_TW[3]" << ',';
        DataFile.width(Width); DataFile << "X_TW[4]" << ',';
        DataFile.width(Width); DataFile << "X_TW[5]" << ',';
        DataFile.width(Width); DataFile << "X_TW[6]" << ',';
        DataFile.width(Width); DataFile << "X_TW[7]" << ',';
        DataFile.width(Width); DataFile << "X_TW[8]" << ',';
        DataFile.width(Width); DataFile << "X_TW[9]" << ',';
        DataFile.width(Width); DataFile << "X_TW[10]" << ',';
        DataFile.width(Width); DataFile << "X_TW[11]" << ',';
        DataFile.width(Width); DataFile << "X_TW[12]" << ',';
        DataFile.width(Width); DataFile << "X_TW[13]" << ',';
        DataFile.width(Width); DataFile << "X_TW[14]" << ',';
        DataFile.width(Width); DataFile << "X_TW[15]" << ',';
        DataFile.width(Width); DataFile << "X_TW[16]" << ',';
        DataFile.width(Width); DataFile << "X_TW[17]" << ',';
        DataFile.width(Width); DataFile << "X_TW[18]" << ',';
        DataFile.width(Width); DataFile << "X_TW[19]" << ',';
        DataFile.width(Width); DataFile << "sPAR_L" << ',';
        DataFile.width(Width); DataFile << "sPAR_areaA" << ',';
        DataFile.width(Width); DataFile << "sPAR_areaB" << ',';
        DataFile.width(Width); DataFile << "sPAR_cpA" << ',';
        DataFile.width(Width); DataFile << "sPAR_cpB" << ',';
        DataFile.width(Width); DataFile << "sPAR_cpW" << ',';
        DataFile.width(Width); DataFile << "sPAR_gammaA" << ',';
        DataFile.width(Width); DataFile << "sPAR_gammaB" << ',';
        DataFile.width(Width); DataFile << "sPAR_l" << ',';
        DataFile.width(Width); DataFile << "sPAR_omega" << ',';
        DataFile.width(Width); DataFile << "sPAR_rhoA" << ',';
        DataFile.width(Width); DataFile << "sPAR_rhoB" << ',';
        DataFile.width(Width); DataFile << "sPAR_wB" << ',';
        DataFile.width(Width); DataFile << "sPARi_N" << ',';
        DataFile.width(Width); DataFile << "ACC_QA[1]" << ',';
        DataFile.width(Width); DataFile << "ACC_QA[2]" << ',';
        DataFile.width(Width); DataFile << "ACC_QA[3]" << ',';
        DataFile.width(Width); DataFile << "ACC_QA[4]" << ',';
        DataFile.width(Width); DataFile << "ACC_QA[5]" << ',';
        DataFile.width(Width); DataFile << "ACC_QA[6]" << ',';
        DataFile.width(Width); DataFile << "ACC_QA[7]" << ',';
        DataFile.width(Width); DataFile << "ACC_QA[8]" << ',';
        DataFile.width(Width); DataFile << "ACC_QA[9]" << ',';
        DataFile.width(Width); DataFile << "ACC_QA[10]" << ',';
        DataFile.width(Width); DataFile << "ACC_QA[11]" << ',';
        DataFile.width(Width); DataFile << "ACC_QA[12]" << ',';
        DataFile.width(Width); DataFile << "ACC_QA[13]" << ',';
        DataFile.width(Width); DataFile << "ACC_QA[14]" << ',';
        DataFile.width(Width); DataFile << "ACC_QA[15]" << ',';
        DataFile.width(Width); DataFile << "ACC_QA[16]" << ',';
        DataFile.width(Width); DataFile << "ACC_QA[17]" << ',';
        DataFile.width(Width); DataFile << "ACC_QA[18]" << ',';
        DataFile.width(Width); DataFile << "ACC_QA[19]" << ',';
        DataFile.width(Width); DataFile << "ACC_QB[1]" << ',';
        DataFile.width(Width); DataFile << "ACC_QB[2]" << ',';
        DataFile.width(Width); DataFile << "ACC_QB[3]" << ',';
        DataFile.width(Width); DataFile << "ACC_QB[4]" << ',';
        DataFile.width(Width); DataFile << "ACC_QB[5]" << ',';
        DataFile.width(Width); DataFile << "ACC_QB[6]" << ',';
        DataFile.width(Width); DataFile << "ACC_QB[7]" << ',';
        DataFile.width(Width); DataFile << "ACC_QB[8]" << ',';
        DataFile.width(Width); DataFile << "ACC_QB[9]" << ',';
        DataFile.width(Width); DataFile << "ACC_QB[10]" << ',';
        DataFile.width(Width); DataFile << "ACC_QB[11]" << ',';
        DataFile.width(Width); DataFile << "ACC_QB[12]" << ',';
        DataFile.width(Width); DataFile << "ACC_QB[13]" << ',';
        DataFile.width(Width); DataFile << "ACC_QB[14]" << ',';
        DataFile.width(Width); DataFile << "ACC_QB[15]" << ',';
        DataFile.width(Width); DataFile << "ACC_QB[16]" << ',';
        DataFile.width(Width); DataFile << "ACC_QB[17]" << ',';
        DataFile.width(Width); DataFile << "ACC_QB[18]" << ',';
        DataFile.width(Width); DataFile << "ACC_QB[19]" << ',';
        DataFile.width(Width); DataFile << "ACC_QtotA" << ',';
        DataFile.width(Width); DataFile << "ACC_QtotB" << ',';
        DataFile.width(Width); DataFile << "ACC_TA[1]" << ',';
        DataFile.width(Width); DataFile << "ACC_TB[1]" << ',';
        DataFile.width(Width); DataFile << "ACC_wA" << ',';
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
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(IntegerSharedParameters, 0) << ',';
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
   
    
    int NumberOfSimulationLaunches = NumberOfProblems / NT + (NumberOfProblems % NT == 0 ? 0:1);
    ofstream DataFile;
    DataFile.open ( "CocurrentHeatExchangerEquations_N_20.csv" );
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

