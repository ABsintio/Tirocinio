

#include <iostream>
#include <vector>
#include <iomanip>
#include <string>
#include <fstream>

#include "TransmissionLineEquations_N_80_SystemDefinition.cuh"
#include "SingleSystem_PerThread_Interface.cuh"

using namespace std;

#define SOLVER RKCK45 // Runge-Kutta Order 4th
#define PRECISION double
const int NT   = 1;
const int SD   = 160;
const int NCP  = 1;
const int NSP  = 9;
const int NISP = 1;
const int NE   = 0;
const int NA   = 2;
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
        Solver.SetHost(ProblemNumber, TimeDomain, 1, 4e-06);  

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
        DataFile.width(Width); DataFile << "X_cur[1]" << ',';
        DataFile.width(Width); DataFile << "X_cur[2]" << ',';
        DataFile.width(Width); DataFile << "X_cur[3]" << ',';
        DataFile.width(Width); DataFile << "X_cur[4]" << ',';
        DataFile.width(Width); DataFile << "X_cur[5]" << ',';
        DataFile.width(Width); DataFile << "X_cur[6]" << ',';
        DataFile.width(Width); DataFile << "X_cur[7]" << ',';
        DataFile.width(Width); DataFile << "X_cur[8]" << ',';
        DataFile.width(Width); DataFile << "X_cur[9]" << ',';
        DataFile.width(Width); DataFile << "X_cur[10]" << ',';
        DataFile.width(Width); DataFile << "X_cur[11]" << ',';
        DataFile.width(Width); DataFile << "X_cur[12]" << ',';
        DataFile.width(Width); DataFile << "X_cur[13]" << ',';
        DataFile.width(Width); DataFile << "X_cur[14]" << ',';
        DataFile.width(Width); DataFile << "X_cur[15]" << ',';
        DataFile.width(Width); DataFile << "X_cur[16]" << ',';
        DataFile.width(Width); DataFile << "X_cur[17]" << ',';
        DataFile.width(Width); DataFile << "X_cur[18]" << ',';
        DataFile.width(Width); DataFile << "X_cur[19]" << ',';
        DataFile.width(Width); DataFile << "X_cur[20]" << ',';
        DataFile.width(Width); DataFile << "X_cur[21]" << ',';
        DataFile.width(Width); DataFile << "X_cur[22]" << ',';
        DataFile.width(Width); DataFile << "X_cur[23]" << ',';
        DataFile.width(Width); DataFile << "X_cur[24]" << ',';
        DataFile.width(Width); DataFile << "X_cur[25]" << ',';
        DataFile.width(Width); DataFile << "X_cur[26]" << ',';
        DataFile.width(Width); DataFile << "X_cur[27]" << ',';
        DataFile.width(Width); DataFile << "X_cur[28]" << ',';
        DataFile.width(Width); DataFile << "X_cur[29]" << ',';
        DataFile.width(Width); DataFile << "X_cur[30]" << ',';
        DataFile.width(Width); DataFile << "X_cur[31]" << ',';
        DataFile.width(Width); DataFile << "X_cur[32]" << ',';
        DataFile.width(Width); DataFile << "X_cur[33]" << ',';
        DataFile.width(Width); DataFile << "X_cur[34]" << ',';
        DataFile.width(Width); DataFile << "X_cur[35]" << ',';
        DataFile.width(Width); DataFile << "X_cur[36]" << ',';
        DataFile.width(Width); DataFile << "X_cur[37]" << ',';
        DataFile.width(Width); DataFile << "X_cur[38]" << ',';
        DataFile.width(Width); DataFile << "X_cur[39]" << ',';
        DataFile.width(Width); DataFile << "X_cur[40]" << ',';
        DataFile.width(Width); DataFile << "X_cur[41]" << ',';
        DataFile.width(Width); DataFile << "X_cur[42]" << ',';
        DataFile.width(Width); DataFile << "X_cur[43]" << ',';
        DataFile.width(Width); DataFile << "X_cur[44]" << ',';
        DataFile.width(Width); DataFile << "X_cur[45]" << ',';
        DataFile.width(Width); DataFile << "X_cur[46]" << ',';
        DataFile.width(Width); DataFile << "X_cur[47]" << ',';
        DataFile.width(Width); DataFile << "X_cur[48]" << ',';
        DataFile.width(Width); DataFile << "X_cur[49]" << ',';
        DataFile.width(Width); DataFile << "X_cur[50]" << ',';
        DataFile.width(Width); DataFile << "X_cur[51]" << ',';
        DataFile.width(Width); DataFile << "X_cur[52]" << ',';
        DataFile.width(Width); DataFile << "X_cur[53]" << ',';
        DataFile.width(Width); DataFile << "X_cur[54]" << ',';
        DataFile.width(Width); DataFile << "X_cur[55]" << ',';
        DataFile.width(Width); DataFile << "X_cur[56]" << ',';
        DataFile.width(Width); DataFile << "X_cur[57]" << ',';
        DataFile.width(Width); DataFile << "X_cur[58]" << ',';
        DataFile.width(Width); DataFile << "X_cur[59]" << ',';
        DataFile.width(Width); DataFile << "X_cur[60]" << ',';
        DataFile.width(Width); DataFile << "X_cur[61]" << ',';
        DataFile.width(Width); DataFile << "X_cur[62]" << ',';
        DataFile.width(Width); DataFile << "X_cur[63]" << ',';
        DataFile.width(Width); DataFile << "X_cur[64]" << ',';
        DataFile.width(Width); DataFile << "X_cur[65]" << ',';
        DataFile.width(Width); DataFile << "X_cur[66]" << ',';
        DataFile.width(Width); DataFile << "X_cur[67]" << ',';
        DataFile.width(Width); DataFile << "X_cur[68]" << ',';
        DataFile.width(Width); DataFile << "X_cur[69]" << ',';
        DataFile.width(Width); DataFile << "X_cur[70]" << ',';
        DataFile.width(Width); DataFile << "X_cur[71]" << ',';
        DataFile.width(Width); DataFile << "X_cur[72]" << ',';
        DataFile.width(Width); DataFile << "X_cur[73]" << ',';
        DataFile.width(Width); DataFile << "X_cur[74]" << ',';
        DataFile.width(Width); DataFile << "X_cur[75]" << ',';
        DataFile.width(Width); DataFile << "X_cur[76]" << ',';
        DataFile.width(Width); DataFile << "X_cur[77]" << ',';
        DataFile.width(Width); DataFile << "X_cur[78]" << ',';
        DataFile.width(Width); DataFile << "X_cur[79]" << ',';
        DataFile.width(Width); DataFile << "X_vol[1]" << ',';
        DataFile.width(Width); DataFile << "X_vol[2]" << ',';
        DataFile.width(Width); DataFile << "X_vol[3]" << ',';
        DataFile.width(Width); DataFile << "X_vol[4]" << ',';
        DataFile.width(Width); DataFile << "X_vol[5]" << ',';
        DataFile.width(Width); DataFile << "X_vol[6]" << ',';
        DataFile.width(Width); DataFile << "X_vol[7]" << ',';
        DataFile.width(Width); DataFile << "X_vol[8]" << ',';
        DataFile.width(Width); DataFile << "X_vol[9]" << ',';
        DataFile.width(Width); DataFile << "X_vol[10]" << ',';
        DataFile.width(Width); DataFile << "X_vol[11]" << ',';
        DataFile.width(Width); DataFile << "X_vol[12]" << ',';
        DataFile.width(Width); DataFile << "X_vol[13]" << ',';
        DataFile.width(Width); DataFile << "X_vol[14]" << ',';
        DataFile.width(Width); DataFile << "X_vol[15]" << ',';
        DataFile.width(Width); DataFile << "X_vol[16]" << ',';
        DataFile.width(Width); DataFile << "X_vol[17]" << ',';
        DataFile.width(Width); DataFile << "X_vol[18]" << ',';
        DataFile.width(Width); DataFile << "X_vol[19]" << ',';
        DataFile.width(Width); DataFile << "X_vol[20]" << ',';
        DataFile.width(Width); DataFile << "X_vol[21]" << ',';
        DataFile.width(Width); DataFile << "X_vol[22]" << ',';
        DataFile.width(Width); DataFile << "X_vol[23]" << ',';
        DataFile.width(Width); DataFile << "X_vol[24]" << ',';
        DataFile.width(Width); DataFile << "X_vol[25]" << ',';
        DataFile.width(Width); DataFile << "X_vol[26]" << ',';
        DataFile.width(Width); DataFile << "X_vol[27]" << ',';
        DataFile.width(Width); DataFile << "X_vol[28]" << ',';
        DataFile.width(Width); DataFile << "X_vol[29]" << ',';
        DataFile.width(Width); DataFile << "X_vol[30]" << ',';
        DataFile.width(Width); DataFile << "X_vol[31]" << ',';
        DataFile.width(Width); DataFile << "X_vol[32]" << ',';
        DataFile.width(Width); DataFile << "X_vol[33]" << ',';
        DataFile.width(Width); DataFile << "X_vol[34]" << ',';
        DataFile.width(Width); DataFile << "X_vol[35]" << ',';
        DataFile.width(Width); DataFile << "X_vol[36]" << ',';
        DataFile.width(Width); DataFile << "X_vol[37]" << ',';
        DataFile.width(Width); DataFile << "X_vol[38]" << ',';
        DataFile.width(Width); DataFile << "X_vol[39]" << ',';
        DataFile.width(Width); DataFile << "X_vol[40]" << ',';
        DataFile.width(Width); DataFile << "X_vol[41]" << ',';
        DataFile.width(Width); DataFile << "X_vol[42]" << ',';
        DataFile.width(Width); DataFile << "X_vol[43]" << ',';
        DataFile.width(Width); DataFile << "X_vol[44]" << ',';
        DataFile.width(Width); DataFile << "X_vol[45]" << ',';
        DataFile.width(Width); DataFile << "X_vol[46]" << ',';
        DataFile.width(Width); DataFile << "X_vol[47]" << ',';
        DataFile.width(Width); DataFile << "X_vol[48]" << ',';
        DataFile.width(Width); DataFile << "X_vol[49]" << ',';
        DataFile.width(Width); DataFile << "X_vol[50]" << ',';
        DataFile.width(Width); DataFile << "X_vol[51]" << ',';
        DataFile.width(Width); DataFile << "X_vol[52]" << ',';
        DataFile.width(Width); DataFile << "X_vol[53]" << ',';
        DataFile.width(Width); DataFile << "X_vol[54]" << ',';
        DataFile.width(Width); DataFile << "X_vol[55]" << ',';
        DataFile.width(Width); DataFile << "X_vol[56]" << ',';
        DataFile.width(Width); DataFile << "X_vol[57]" << ',';
        DataFile.width(Width); DataFile << "X_vol[58]" << ',';
        DataFile.width(Width); DataFile << "X_vol[59]" << ',';
        DataFile.width(Width); DataFile << "X_vol[60]" << ',';
        DataFile.width(Width); DataFile << "X_vol[61]" << ',';
        DataFile.width(Width); DataFile << "X_vol[62]" << ',';
        DataFile.width(Width); DataFile << "X_vol[63]" << ',';
        DataFile.width(Width); DataFile << "X_vol[64]" << ',';
        DataFile.width(Width); DataFile << "X_vol[65]" << ',';
        DataFile.width(Width); DataFile << "X_vol[66]" << ',';
        DataFile.width(Width); DataFile << "X_vol[67]" << ',';
        DataFile.width(Width); DataFile << "X_vol[68]" << ',';
        DataFile.width(Width); DataFile << "X_vol[69]" << ',';
        DataFile.width(Width); DataFile << "X_vol[70]" << ',';
        DataFile.width(Width); DataFile << "X_vol[71]" << ',';
        DataFile.width(Width); DataFile << "X_vol[72]" << ',';
        DataFile.width(Width); DataFile << "X_vol[73]" << ',';
        DataFile.width(Width); DataFile << "X_vol[74]" << ',';
        DataFile.width(Width); DataFile << "X_vol[75]" << ',';
        DataFile.width(Width); DataFile << "X_vol[76]" << ',';
        DataFile.width(Width); DataFile << "X_vol[77]" << ',';
        DataFile.width(Width); DataFile << "X_vol[78]" << ',';
        DataFile.width(Width); DataFile << "X_vol[79]" << ',';
        DataFile.width(Width); DataFile << "X_vol[80]" << ',';
        DataFile.width(Width); DataFile << "X_vvol" << ',';
        DataFile.width(Width); DataFile << "sPAR_L" << ',';
        DataFile.width(Width); DataFile << "sPAR_RL" << ',';
        DataFile.width(Width); DataFile << "sPAR_TD" << ',';
        DataFile.width(Width); DataFile << "sPAR_cap" << ',';
        DataFile.width(Width); DataFile << "sPAR_ind" << ',';
        DataFile.width(Width); DataFile << "sPAR_l" << ',';
        DataFile.width(Width); DataFile << "sPAR_res" << ',';
        DataFile.width(Width); DataFile << "sPAR_v" << ',';
        DataFile.width(Width); DataFile << "sPAR_w" << ',';
        DataFile.width(Width); DataFile << "sPARi_N" << ',';
        DataFile.width(Width); DataFile << "ACC_Vstep" << ',';
        DataFile.width(Width); DataFile << "ACC_cur[80]" << ',';
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
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 117) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 118) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 119) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 120) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 121) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 122) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 123) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 124) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 125) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 126) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 127) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 128) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 129) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 130) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 131) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 132) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 133) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 134) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 135) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 136) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 137) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 138) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 139) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 140) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 141) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 142) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 143) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 144) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 145) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 146) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 147) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 148) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 149) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 150) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 151) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 152) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 153) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 154) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 155) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 156) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 157) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 158) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 159) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 0) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 1) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 2) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 3) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 4) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 5) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 6) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 7) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 8) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(IntegerSharedParameters, 0) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 0) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 1) << ',';

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
    Solver.SolverOption(MinimumTimeStep, 1e-30);
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
    Solver.SolverOption(AbsoluteTolerance, 117, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 118, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 119, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 120, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 121, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 122, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 123, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 124, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 125, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 126, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 127, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 128, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 129, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 130, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 131, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 132, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 133, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 134, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 135, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 136, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 137, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 138, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 139, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 140, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 141, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 142, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 143, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 144, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 145, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 146, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 147, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 148, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 149, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 150, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 151, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 152, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 153, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 154, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 155, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 156, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 157, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 158, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 159, 1e-06);

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
    Solver.SolverOption(RelativeTolerance, 117, 1e-06);
    Solver.SolverOption(RelativeTolerance, 118, 1e-06);
    Solver.SolverOption(RelativeTolerance, 119, 1e-06);
    Solver.SolverOption(RelativeTolerance, 120, 1e-06);
    Solver.SolverOption(RelativeTolerance, 121, 1e-06);
    Solver.SolverOption(RelativeTolerance, 122, 1e-06);
    Solver.SolverOption(RelativeTolerance, 123, 1e-06);
    Solver.SolverOption(RelativeTolerance, 124, 1e-06);
    Solver.SolverOption(RelativeTolerance, 125, 1e-06);
    Solver.SolverOption(RelativeTolerance, 126, 1e-06);
    Solver.SolverOption(RelativeTolerance, 127, 1e-06);
    Solver.SolverOption(RelativeTolerance, 128, 1e-06);
    Solver.SolverOption(RelativeTolerance, 129, 1e-06);
    Solver.SolverOption(RelativeTolerance, 130, 1e-06);
    Solver.SolverOption(RelativeTolerance, 131, 1e-06);
    Solver.SolverOption(RelativeTolerance, 132, 1e-06);
    Solver.SolverOption(RelativeTolerance, 133, 1e-06);
    Solver.SolverOption(RelativeTolerance, 134, 1e-06);
    Solver.SolverOption(RelativeTolerance, 135, 1e-06);
    Solver.SolverOption(RelativeTolerance, 136, 1e-06);
    Solver.SolverOption(RelativeTolerance, 137, 1e-06);
    Solver.SolverOption(RelativeTolerance, 138, 1e-06);
    Solver.SolverOption(RelativeTolerance, 139, 1e-06);
    Solver.SolverOption(RelativeTolerance, 140, 1e-06);
    Solver.SolverOption(RelativeTolerance, 141, 1e-06);
    Solver.SolverOption(RelativeTolerance, 142, 1e-06);
    Solver.SolverOption(RelativeTolerance, 143, 1e-06);
    Solver.SolverOption(RelativeTolerance, 144, 1e-06);
    Solver.SolverOption(RelativeTolerance, 145, 1e-06);
    Solver.SolverOption(RelativeTolerance, 146, 1e-06);
    Solver.SolverOption(RelativeTolerance, 147, 1e-06);
    Solver.SolverOption(RelativeTolerance, 148, 1e-06);
    Solver.SolverOption(RelativeTolerance, 149, 1e-06);
    Solver.SolverOption(RelativeTolerance, 150, 1e-06);
    Solver.SolverOption(RelativeTolerance, 151, 1e-06);
    Solver.SolverOption(RelativeTolerance, 152, 1e-06);
    Solver.SolverOption(RelativeTolerance, 153, 1e-06);
    Solver.SolverOption(RelativeTolerance, 154, 1e-06);
    Solver.SolverOption(RelativeTolerance, 155, 1e-06);
    Solver.SolverOption(RelativeTolerance, 156, 1e-06);
    Solver.SolverOption(RelativeTolerance, 157, 1e-06);
    Solver.SolverOption(RelativeTolerance, 158, 1e-06);
    Solver.SolverOption(RelativeTolerance, 159, 1e-06);
   
    
    int NumberOfSimulationLaunches = NumberOfProblems / NT + (NumberOfProblems % NT == 0 ? 0:1);
    ofstream DataFile;
    DataFile.open ( "TransmissionLineEquations_N_80.csv" );
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

