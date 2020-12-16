

#include <iostream>
#include <vector>
#include <iomanip>
#include <string>
#include <fstream>

#define PI 3.14159265358979323846

#include "BIOMD109_SystemDefinition.cuh"
#include "SingleSystem_PerThread_Interface.cuh"

using namespace std;

#define SOLVER RKCK45 // Runge-Kutta Order 4th
#define PRECISION double
const int NT   = 10000;
const int SD   = 50;
const int NCP  = 1;
const int NSP  = 57;
const int NISP = 0;
const int NE   = 1;
const int NA   = 13;
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
        Solver.SetHost(ProblemNumber, TimeDomain, 1, 300.0);  

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
        DataFile.width(Width); DataFile << "X_APCC" << ',';
        DataFile.width(Width); DataFile << "X_APCCYCdk1Y00YCdk1Y01YInt" << ',';
        DataFile.width(Width); DataFile << "X_APCCYCdk1Y10YCdk1Y11YInt" << ',';
        DataFile.width(Width); DataFile << "X_APCCYCdk2Y000YCdk2Y002YInt" << ',';
        DataFile.width(Width); DataFile << "X_APCCYCdk2Y010YCdk2Y012YInt" << ',';
        DataFile.width(Width); DataFile << "X_APCCYCdk2Y100YCdk2Y102YInt" << ',';
        DataFile.width(Width); DataFile << "X_APCCYCdk2Y110YCdk2Y112YInt" << ',';
        DataFile.width(Width); DataFile << "X_APCCYCyclinAYInt" << ',';
        DataFile.width(Width); DataFile << "X_APCCYEmi1" << ',';
        DataFile.width(Width); DataFile << "X_Cdk1Y00" << ',';
        DataFile.width(Width); DataFile << "X_Cdk1Y01" << ',';
        DataFile.width(Width); DataFile << "X_Cdk1Y10" << ',';
        DataFile.width(Width); DataFile << "X_Cdk1Y11" << ',';
        DataFile.width(Width); DataFile << "X_Cdk1Y11YpRbY10YpRbY20YInt" << ',';
        DataFile.width(Width); DataFile << "X_Cdk1Y11YpRbY11YpRbY21YInt" << ',';
        DataFile.width(Width); DataFile << "X_Cdk2Y000" << ',';
        DataFile.width(Width); DataFile << "X_Cdk2Y001" << ',';
        DataFile.width(Width); DataFile << "X_Cdk2Y002" << ',';
        DataFile.width(Width); DataFile << "X_Cdk2Y010" << ',';
        DataFile.width(Width); DataFile << "X_Cdk2Y011" << ',';
        DataFile.width(Width); DataFile << "X_Cdk2Y011YpRbY10YpRbY20YInt" << ',';
        DataFile.width(Width); DataFile << "X_Cdk2Y011YpRbY11YpRbY21YInt" << ',';
        DataFile.width(Width); DataFile << "X_Cdk2Y012" << ',';
        DataFile.width(Width); DataFile << "X_Cdk2Y012YpRbY10YpRbY20YInt" << ',';
        DataFile.width(Width); DataFile << "X_Cdk2Y012YpRbY11YpRbY21YInt" << ',';
        DataFile.width(Width); DataFile << "X_Cdk2Y100" << ',';
        DataFile.width(Width); DataFile << "X_Cdk2Y101" << ',';
        DataFile.width(Width); DataFile << "X_Cdk2Y102" << ',';
        DataFile.width(Width); DataFile << "X_Cdk2Y110" << ',';
        DataFile.width(Width); DataFile << "X_Cdk2Y111" << ',';
        DataFile.width(Width); DataFile << "X_Cdk2Y112" << ',';
        DataFile.width(Width); DataFile << "X_Cdk4Y00" << ',';
        DataFile.width(Width); DataFile << "X_Cdk4Y01" << ',';
        DataFile.width(Width); DataFile << "X_Cdk4Y01YpRbY00YpRbY10YInt" << ',';
        DataFile.width(Width); DataFile << "X_Cdk4Y01YpRbY01YpRbY11YInt" << ',';
        DataFile.width(Width); DataFile << "X_Cdk4Y10" << ',';
        DataFile.width(Width); DataFile << "X_Cdk4Y11" << ',';
        DataFile.width(Width); DataFile << "X_CyclinA" << ',';
        DataFile.width(Width); DataFile << "X_CyclinD" << ',';
        DataFile.width(Width); DataFile << "X_CyclinE" << ',';
        DataFile.width(Width); DataFile << "X_E2F" << ',';
        DataFile.width(Width); DataFile << "X_Emi1" << ',';
        DataFile.width(Width); DataFile << "X_kYact" << ',';
        DataFile.width(Width); DataFile << "X_p27" << ',';
        DataFile.width(Width); DataFile << "X_pRbY00" << ',';
        DataFile.width(Width); DataFile << "X_pRbY01" << ',';
        DataFile.width(Width); DataFile << "X_pRbY10" << ',';
        DataFile.width(Width); DataFile << "X_pRbY11" << ',';
        DataFile.width(Width); DataFile << "X_pRbY20" << ',';
        DataFile.width(Width); DataFile << "X_pRbY21" << ',';
        DataFile.width(Width); DataFile << "sPAR_X" << ',';
        DataFile.width(Width); DataFile << "sPAR_k1Yact" << ',';
        DataFile.width(Width); DataFile << "sPAR_kbYA1YYpRb" << ',';
        DataFile.width(Width); DataFile << "sPAR_kbYA2YYpRb" << ',';
        DataFile.width(Width); DataFile << "sPAR_kbYAPCCYYCyclinA" << ',';
        DataFile.width(Width); DataFile << "sPAR_kbYCyclinAYYCdk1" << ',';
        DataFile.width(Width); DataFile << "sPAR_kbYCyclinAYYCdk2" << ',';
        DataFile.width(Width); DataFile << "sPAR_kbYCyclinDYYCdk4" << ',';
        DataFile.width(Width); DataFile << "sPAR_kbYCyclinEYYCdk2" << ',';
        DataFile.width(Width); DataFile << "sPAR_kbYD4YYpRb" << ',';
        DataFile.width(Width); DataFile << "sPAR_kbYE2FYYpRb" << ',';
        DataFile.width(Width); DataFile << "sPAR_kbYE2YYpRb" << ',';
        DataFile.width(Width); DataFile << "sPAR_kbYEmi1YYAPCC" << ',';
        DataFile.width(Width); DataFile << "sPAR_kbYp27YYCdk2" << ',';
        DataFile.width(Width); DataFile << "sPAR_kbYp27YYCdk4" << ',';
        DataFile.width(Width); DataFile << "sPAR_kd0YE2F" << ',';
        DataFile.width(Width); DataFile << "sPAR_kd1Yp27" << ',';
        DataFile.width(Width); DataFile << "sPAR_kdYCyclinA" << ',';
        DataFile.width(Width); DataFile << "sPAR_kdYCyclinD" << ',';
        DataFile.width(Width); DataFile << "sPAR_kdYCyclinE" << ',';
        DataFile.width(Width); DataFile << "sPAR_kdYE2F" << ',';
        DataFile.width(Width); DataFile << "sPAR_kdYEmi1" << ',';
        DataFile.width(Width); DataFile << "sPAR_kdYp27" << ',';
        DataFile.width(Width); DataFile << "sPAR_ks0YCyclinA" << ',';
        DataFile.width(Width); DataFile << "sPAR_ks0YCyclinE" << ',';
        DataFile.width(Width); DataFile << "sPAR_ks0YE2F" << ',';
        DataFile.width(Width); DataFile << "sPAR_ks0YEmi1" << ',';
        DataFile.width(Width); DataFile << "sPAR_ks1YCyclinA" << ',';
        DataFile.width(Width); DataFile << "sPAR_ks1YCyclinE" << ',';
        DataFile.width(Width); DataFile << "sPAR_ks1YE2F" << ',';
        DataFile.width(Width); DataFile << "sPAR_ks1YEmi1" << ',';
        DataFile.width(Width); DataFile << "sPAR_ksMYCyclinA" << ',';
        DataFile.width(Width); DataFile << "sPAR_ksMYCyclinE" << ',';
        DataFile.width(Width); DataFile << "sPAR_ksMYE2F" << ',';
        DataFile.width(Width); DataFile << "sPAR_ksMYEmi1" << ',';
        DataFile.width(Width); DataFile << "sPAR_ksYCyclinD" << ',';
        DataFile.width(Width); DataFile << "sPAR_ksYp27" << ',';
        DataFile.width(Width); DataFile << "sPAR_ktYpRbYYDephos" << ',';
        DataFile.width(Width); DataFile << "sPAR_kuYA1YYpRb" << ',';
        DataFile.width(Width); DataFile << "sPAR_kuYA2YYpRb" << ',';
        DataFile.width(Width); DataFile << "sPAR_kuYAPCCYYCyclinA" << ',';
        DataFile.width(Width); DataFile << "sPAR_kuYCyclinAYYCdk1" << ',';
        DataFile.width(Width); DataFile << "sPAR_kuYCyclinAYYCdk2" << ',';
        DataFile.width(Width); DataFile << "sPAR_kuYCyclinDYYCdk4" << ',';
        DataFile.width(Width); DataFile << "sPAR_kuYCyclinEYYCdk2" << ',';
        DataFile.width(Width); DataFile << "sPAR_kuYD4YYpRb" << ',';
        DataFile.width(Width); DataFile << "sPAR_kuYE2FYYpRb" << ',';
        DataFile.width(Width); DataFile << "sPAR_kuYE2YYpRb" << ',';
        DataFile.width(Width); DataFile << "sPAR_kuYEmi1YYAPCC" << ',';
        DataFile.width(Width); DataFile << "sPAR_kuYp27YYCdk2" << ',';
        DataFile.width(Width); DataFile << "sPAR_kuYp27YYCdk4" << ',';
        DataFile.width(Width); DataFile << "sPAR_kudYAPCCYYCyclinA" << ',';
        DataFile.width(Width); DataFile << "sPAR_kupYA1YYpRb" << ',';
        DataFile.width(Width); DataFile << "sPAR_kupYA2YYpRb" << ',';
        DataFile.width(Width); DataFile << "sPAR_kupYD4YYpRb" << ',';
        DataFile.width(Width); DataFile << "sPAR_kupYE2YYpRb" << ',';
        DataFile.width(Width); DataFile << "sPAR_timeYModifier" << ',';
        DataFile.width(Width); DataFile << "ACC_activeYCdk2" << ',';
        DataFile.width(Width); DataFile << "ACC_hyperphosphorylatedYpRb" << ',';
        DataFile.width(Width); DataFile << "ACC_hypophosphorylatedYpRb" << ',';
        DataFile.width(Width); DataFile << "ACC_ksYCyclinA" << ',';
        DataFile.width(Width); DataFile << "ACC_ksYCyclinE" << ',';
        DataFile.width(Width); DataFile << "ACC_ksYE2F" << ',';
        DataFile.width(Width); DataFile << "ACC_ksYEmi1" << ',';
        DataFile.width(Width); DataFile << "ACC_totalYCyclinYA" << ',';
        DataFile.width(Width); DataFile << "ACC_totalYCyclinYD" << ',';
        DataFile.width(Width); DataFile << "ACC_totalYCyclinYE" << ',';
        DataFile.width(Width); DataFile << "ACC_totalYEmi1" << ',';
        DataFile.width(Width); DataFile << "ACC_totalYp27" << ',';
        DataFile.width(Width); DataFile << "ACC_$whenCondition1" << ',';
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


    Solver.SolverOption(EventDirection, 0, 0);

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
   
    
    int NumberOfSimulationLaunches = NumberOfProblems / NT + (NumberOfProblems % NT == 0 ? 0:1);
    ofstream DataFile;
    DataFile.open ( "BIOMD109.csv" );
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

