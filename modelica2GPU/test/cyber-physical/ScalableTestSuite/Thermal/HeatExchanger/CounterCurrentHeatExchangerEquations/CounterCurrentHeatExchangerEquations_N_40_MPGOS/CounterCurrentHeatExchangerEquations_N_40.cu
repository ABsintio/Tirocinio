

#include <iostream>
#include <vector>
#include <iomanip>
#include <string>
#include <fstream>

#include "CounterCurrentHeatExchangerEquations_N_40_SystemDefinition.cuh"
#include "SingleSystem_PerThread_Interface.cuh"

using namespace std;

#define SOLVER RKCK45 // Runge-Kutta Order 4th
#define PRECISION double
const int NT   = 1;
const int SD   = 117;
const int NCP  = 1;
const int NSP  = 13;
const int NISP = 1;
const int NE   = 0;
const int NA   = 83;
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
        DataFile.width(Width); DataFile << "X_TA[21]" << ',';
        DataFile.width(Width); DataFile << "X_TA[22]" << ',';
        DataFile.width(Width); DataFile << "X_TA[23]" << ',';
        DataFile.width(Width); DataFile << "X_TA[24]" << ',';
        DataFile.width(Width); DataFile << "X_TA[25]" << ',';
        DataFile.width(Width); DataFile << "X_TA[26]" << ',';
        DataFile.width(Width); DataFile << "X_TA[27]" << ',';
        DataFile.width(Width); DataFile << "X_TA[28]" << ',';
        DataFile.width(Width); DataFile << "X_TA[29]" << ',';
        DataFile.width(Width); DataFile << "X_TA[30]" << ',';
        DataFile.width(Width); DataFile << "X_TA[31]" << ',';
        DataFile.width(Width); DataFile << "X_TA[32]" << ',';
        DataFile.width(Width); DataFile << "X_TA[33]" << ',';
        DataFile.width(Width); DataFile << "X_TA[34]" << ',';
        DataFile.width(Width); DataFile << "X_TA[35]" << ',';
        DataFile.width(Width); DataFile << "X_TA[36]" << ',';
        DataFile.width(Width); DataFile << "X_TA[37]" << ',';
        DataFile.width(Width); DataFile << "X_TA[38]" << ',';
        DataFile.width(Width); DataFile << "X_TA[39]" << ',';
        DataFile.width(Width); DataFile << "X_TA[40]" << ',';
        DataFile.width(Width); DataFile << "X_TB[1]" << ',';
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
        DataFile.width(Width); DataFile << "X_TB[21]" << ',';
        DataFile.width(Width); DataFile << "X_TB[22]" << ',';
        DataFile.width(Width); DataFile << "X_TB[23]" << ',';
        DataFile.width(Width); DataFile << "X_TB[24]" << ',';
        DataFile.width(Width); DataFile << "X_TB[25]" << ',';
        DataFile.width(Width); DataFile << "X_TB[26]" << ',';
        DataFile.width(Width); DataFile << "X_TB[27]" << ',';
        DataFile.width(Width); DataFile << "X_TB[28]" << ',';
        DataFile.width(Width); DataFile << "X_TB[29]" << ',';
        DataFile.width(Width); DataFile << "X_TB[30]" << ',';
        DataFile.width(Width); DataFile << "X_TB[31]" << ',';
        DataFile.width(Width); DataFile << "X_TB[32]" << ',';
        DataFile.width(Width); DataFile << "X_TB[33]" << ',';
        DataFile.width(Width); DataFile << "X_TB[34]" << ',';
        DataFile.width(Width); DataFile << "X_TB[35]" << ',';
        DataFile.width(Width); DataFile << "X_TB[36]" << ',';
        DataFile.width(Width); DataFile << "X_TB[37]" << ',';
        DataFile.width(Width); DataFile << "X_TB[38]" << ',';
        DataFile.width(Width); DataFile << "X_TB[39]" << ',';
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
        DataFile.width(Width); DataFile << "X_TW[20]" << ',';
        DataFile.width(Width); DataFile << "X_TW[21]" << ',';
        DataFile.width(Width); DataFile << "X_TW[22]" << ',';
        DataFile.width(Width); DataFile << "X_TW[23]" << ',';
        DataFile.width(Width); DataFile << "X_TW[24]" << ',';
        DataFile.width(Width); DataFile << "X_TW[25]" << ',';
        DataFile.width(Width); DataFile << "X_TW[26]" << ',';
        DataFile.width(Width); DataFile << "X_TW[27]" << ',';
        DataFile.width(Width); DataFile << "X_TW[28]" << ',';
        DataFile.width(Width); DataFile << "X_TW[29]" << ',';
        DataFile.width(Width); DataFile << "X_TW[30]" << ',';
        DataFile.width(Width); DataFile << "X_TW[31]" << ',';
        DataFile.width(Width); DataFile << "X_TW[32]" << ',';
        DataFile.width(Width); DataFile << "X_TW[33]" << ',';
        DataFile.width(Width); DataFile << "X_TW[34]" << ',';
        DataFile.width(Width); DataFile << "X_TW[35]" << ',';
        DataFile.width(Width); DataFile << "X_TW[36]" << ',';
        DataFile.width(Width); DataFile << "X_TW[37]" << ',';
        DataFile.width(Width); DataFile << "X_TW[38]" << ',';
        DataFile.width(Width); DataFile << "X_TW[39]" << ',';
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
        DataFile.width(Width); DataFile << "ACC_QA[20]" << ',';
        DataFile.width(Width); DataFile << "ACC_QA[21]" << ',';
        DataFile.width(Width); DataFile << "ACC_QA[22]" << ',';
        DataFile.width(Width); DataFile << "ACC_QA[23]" << ',';
        DataFile.width(Width); DataFile << "ACC_QA[24]" << ',';
        DataFile.width(Width); DataFile << "ACC_QA[25]" << ',';
        DataFile.width(Width); DataFile << "ACC_QA[26]" << ',';
        DataFile.width(Width); DataFile << "ACC_QA[27]" << ',';
        DataFile.width(Width); DataFile << "ACC_QA[28]" << ',';
        DataFile.width(Width); DataFile << "ACC_QA[29]" << ',';
        DataFile.width(Width); DataFile << "ACC_QA[30]" << ',';
        DataFile.width(Width); DataFile << "ACC_QA[31]" << ',';
        DataFile.width(Width); DataFile << "ACC_QA[32]" << ',';
        DataFile.width(Width); DataFile << "ACC_QA[33]" << ',';
        DataFile.width(Width); DataFile << "ACC_QA[34]" << ',';
        DataFile.width(Width); DataFile << "ACC_QA[35]" << ',';
        DataFile.width(Width); DataFile << "ACC_QA[36]" << ',';
        DataFile.width(Width); DataFile << "ACC_QA[37]" << ',';
        DataFile.width(Width); DataFile << "ACC_QA[38]" << ',';
        DataFile.width(Width); DataFile << "ACC_QA[39]" << ',';
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
        DataFile.width(Width); DataFile << "ACC_QB[20]" << ',';
        DataFile.width(Width); DataFile << "ACC_QB[21]" << ',';
        DataFile.width(Width); DataFile << "ACC_QB[22]" << ',';
        DataFile.width(Width); DataFile << "ACC_QB[23]" << ',';
        DataFile.width(Width); DataFile << "ACC_QB[24]" << ',';
        DataFile.width(Width); DataFile << "ACC_QB[25]" << ',';
        DataFile.width(Width); DataFile << "ACC_QB[26]" << ',';
        DataFile.width(Width); DataFile << "ACC_QB[27]" << ',';
        DataFile.width(Width); DataFile << "ACC_QB[28]" << ',';
        DataFile.width(Width); DataFile << "ACC_QB[29]" << ',';
        DataFile.width(Width); DataFile << "ACC_QB[30]" << ',';
        DataFile.width(Width); DataFile << "ACC_QB[31]" << ',';
        DataFile.width(Width); DataFile << "ACC_QB[32]" << ',';
        DataFile.width(Width); DataFile << "ACC_QB[33]" << ',';
        DataFile.width(Width); DataFile << "ACC_QB[34]" << ',';
        DataFile.width(Width); DataFile << "ACC_QB[35]" << ',';
        DataFile.width(Width); DataFile << "ACC_QB[36]" << ',';
        DataFile.width(Width); DataFile << "ACC_QB[37]" << ',';
        DataFile.width(Width); DataFile << "ACC_QB[38]" << ',';
        DataFile.width(Width); DataFile << "ACC_QB[39]" << ',';
        DataFile.width(Width); DataFile << "ACC_QtotA" << ',';
        DataFile.width(Width); DataFile << "ACC_QtotB" << ',';
        DataFile.width(Width); DataFile << "ACC_TA[1]" << ',';
        DataFile.width(Width); DataFile << "ACC_TB[40]" << ',';
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
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 75) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 76) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 77) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 78) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 79) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 80) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 81) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 82) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 83) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 84) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 85) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 86) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 87) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 88) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 89) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 90) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 91) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 92) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 93) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 94) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 95) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 96) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 97) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 98) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 99) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 100) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 101) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 102) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 103) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 104) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 105) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 106) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 107) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 108) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 109) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 110) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 111) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 112) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 113) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 114) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 115) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 116) << ',';
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
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 71) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 72) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 73) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 74) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 75) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 76) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 77) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 78) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 79) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 80) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 81) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 82) << ',';

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
    Solver.SolverOption(AbsoluteTolerance, 75, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 76, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 77, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 78, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 79, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 80, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 81, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 82, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 83, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 84, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 85, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 86, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 87, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 88, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 89, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 90, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 91, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 92, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 93, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 94, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 95, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 96, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 97, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 98, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 99, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 100, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 101, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 102, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 103, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 104, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 105, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 106, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 107, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 108, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 109, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 110, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 111, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 112, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 113, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 114, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 115, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 116, 1e-06);

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
    Solver.SolverOption(RelativeTolerance, 75, 1e-06);
    Solver.SolverOption(RelativeTolerance, 76, 1e-06);
    Solver.SolverOption(RelativeTolerance, 77, 1e-06);
    Solver.SolverOption(RelativeTolerance, 78, 1e-06);
    Solver.SolverOption(RelativeTolerance, 79, 1e-06);
    Solver.SolverOption(RelativeTolerance, 80, 1e-06);
    Solver.SolverOption(RelativeTolerance, 81, 1e-06);
    Solver.SolverOption(RelativeTolerance, 82, 1e-06);
    Solver.SolverOption(RelativeTolerance, 83, 1e-06);
    Solver.SolverOption(RelativeTolerance, 84, 1e-06);
    Solver.SolverOption(RelativeTolerance, 85, 1e-06);
    Solver.SolverOption(RelativeTolerance, 86, 1e-06);
    Solver.SolverOption(RelativeTolerance, 87, 1e-06);
    Solver.SolverOption(RelativeTolerance, 88, 1e-06);
    Solver.SolverOption(RelativeTolerance, 89, 1e-06);
    Solver.SolverOption(RelativeTolerance, 90, 1e-06);
    Solver.SolverOption(RelativeTolerance, 91, 1e-06);
    Solver.SolverOption(RelativeTolerance, 92, 1e-06);
    Solver.SolverOption(RelativeTolerance, 93, 1e-06);
    Solver.SolverOption(RelativeTolerance, 94, 1e-06);
    Solver.SolverOption(RelativeTolerance, 95, 1e-06);
    Solver.SolverOption(RelativeTolerance, 96, 1e-06);
    Solver.SolverOption(RelativeTolerance, 97, 1e-06);
    Solver.SolverOption(RelativeTolerance, 98, 1e-06);
    Solver.SolverOption(RelativeTolerance, 99, 1e-06);
    Solver.SolverOption(RelativeTolerance, 100, 1e-06);
    Solver.SolverOption(RelativeTolerance, 101, 1e-06);
    Solver.SolverOption(RelativeTolerance, 102, 1e-06);
    Solver.SolverOption(RelativeTolerance, 103, 1e-06);
    Solver.SolverOption(RelativeTolerance, 104, 1e-06);
    Solver.SolverOption(RelativeTolerance, 105, 1e-06);
    Solver.SolverOption(RelativeTolerance, 106, 1e-06);
    Solver.SolverOption(RelativeTolerance, 107, 1e-06);
    Solver.SolverOption(RelativeTolerance, 108, 1e-06);
    Solver.SolverOption(RelativeTolerance, 109, 1e-06);
    Solver.SolverOption(RelativeTolerance, 110, 1e-06);
    Solver.SolverOption(RelativeTolerance, 111, 1e-06);
    Solver.SolverOption(RelativeTolerance, 112, 1e-06);
    Solver.SolverOption(RelativeTolerance, 113, 1e-06);
    Solver.SolverOption(RelativeTolerance, 114, 1e-06);
    Solver.SolverOption(RelativeTolerance, 115, 1e-06);
    Solver.SolverOption(RelativeTolerance, 116, 1e-06);
   
    
    int NumberOfSimulationLaunches = NumberOfProblems / NT + (NumberOfProblems % NT == 0 ? 0:1);
    ofstream DataFile;
    DataFile.open ( "CounterCurrentHeatExchangerEquations_N_40.csv" );
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

