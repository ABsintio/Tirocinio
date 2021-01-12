

#include <iostream>
#include <vector>
#include <iomanip>
#include <string>
#include <fstream>

#include "OneDHeatTransferTI_Modelica_N_10_SystemDefinition.cuh"
#include "SingleSystem_PerThread_Interface.cuh"

using namespace std;

#define SOLVER RKCK45 // Runge-Kutta Order 4th
#define PRECISION double
const int NT   = 1;
const int SD   = 9;
const int NCP  = 1;
const int NSP  = 28;
const int NISP = 1;
const int NE   = 0;
const int NA   = 83;
const int NIA  = 0;
const int NDO  = 15000000.0;


void FillSolverObject(
    ProblemSolver<NT,SD,NCP,NSP,NISP,NE,NA,NIA,NDO,SOLVER,PRECISION>& Solver, 
    int FirstProblemNumber, int NumberOfThreads
) {
    int k_begin = FirstProblemNumber;
    int k_end   = FirstProblemNumber + NumberOfThreads;
	
    int ProblemNumber = 0;
    while (k_begin < k_end) {
        Solver.SetHost(ProblemNumber, TimeDomain, 0, 0.0);
        Solver.SetHost(ProblemNumber, TimeDomain, 1, 1500.0);  

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
        DataFile.width(Width); DataFile << "X_heatcapacitor[1].T" << ',';
        DataFile.width(Width); DataFile << "X_heatcapacitor[2].T" << ',';
        DataFile.width(Width); DataFile << "X_heatcapacitor[3].T" << ',';
        DataFile.width(Width); DataFile << "X_heatcapacitor[4].T" << ',';
        DataFile.width(Width); DataFile << "X_heatcapacitor[5].T" << ',';
        DataFile.width(Width); DataFile << "X_heatcapacitor[6].T" << ',';
        DataFile.width(Width); DataFile << "X_heatcapacitor[7].T" << ',';
        DataFile.width(Width); DataFile << "X_heatcapacitor[8].T" << ',';
        DataFile.width(Width); DataFile << "X_heatcapacitor[9].T" << ',';
        DataFile.width(Width); DataFile << "sPAR_A" << ',';
        DataFile.width(Width); DataFile << "sPAR_L" << ',';
        DataFile.width(Width); DataFile << "sPAR_T0" << ',';
        DataFile.width(Width); DataFile << "sPAR_TN" << ',';
        DataFile.width(Width); DataFile << "sPAR_cp" << ',';
        DataFile.width(Width); DataFile << "sPAR_fixedtemperature.T" << ',';
        DataFile.width(Width); DataFile << "sPAR_heatcapacitor[1].C" << ',';
        DataFile.width(Width); DataFile << "sPAR_heatcapacitor[2].C" << ',';
        DataFile.width(Width); DataFile << "sPAR_heatcapacitor[3].C" << ',';
        DataFile.width(Width); DataFile << "sPAR_heatcapacitor[4].C" << ',';
        DataFile.width(Width); DataFile << "sPAR_heatcapacitor[5].C" << ',';
        DataFile.width(Width); DataFile << "sPAR_heatcapacitor[6].C" << ',';
        DataFile.width(Width); DataFile << "sPAR_heatcapacitor[7].C" << ',';
        DataFile.width(Width); DataFile << "sPAR_heatcapacitor[8].C" << ',';
        DataFile.width(Width); DataFile << "sPAR_heatcapacitor[9].C" << ',';
        DataFile.width(Width); DataFile << "sPAR_lambda" << ',';
        DataFile.width(Width); DataFile << "sPAR_m" << ',';
        DataFile.width(Width); DataFile << "sPAR_rho" << ',';
        DataFile.width(Width); DataFile << "sPAR_thermalconductor[1].G" << ',';
        DataFile.width(Width); DataFile << "sPAR_thermalconductor[2].G" << ',';
        DataFile.width(Width); DataFile << "sPAR_thermalconductor[3].G" << ',';
        DataFile.width(Width); DataFile << "sPAR_thermalconductor[4].G" << ',';
        DataFile.width(Width); DataFile << "sPAR_thermalconductor[5].G" << ',';
        DataFile.width(Width); DataFile << "sPAR_thermalconductor[6].G" << ',';
        DataFile.width(Width); DataFile << "sPAR_thermalconductor[7].G" << ',';
        DataFile.width(Width); DataFile << "sPAR_thermalconductor[8].G" << ',';
        DataFile.width(Width); DataFile << "sPAR_thermalconductor[9].G" << ',';
        DataFile.width(Width); DataFile << "sPAR_v" << ',';
        DataFile.width(Width); DataFile << "sPARi_N" << ',';
        DataFile.width(Width); DataFile << "ACC_fixedtemperature.port.Q_flow" << ',';
        DataFile.width(Width); DataFile << "ACC_fixedtemperature.port.T" << ',';
        DataFile.width(Width); DataFile << "ACC_heatcapacitor[1].der_T" << ',';
        DataFile.width(Width); DataFile << "ACC_heatcapacitor[2].der_T" << ',';
        DataFile.width(Width); DataFile << "ACC_heatcapacitor[3].der_T" << ',';
        DataFile.width(Width); DataFile << "ACC_heatcapacitor[4].der_T" << ',';
        DataFile.width(Width); DataFile << "ACC_heatcapacitor[5].der_T" << ',';
        DataFile.width(Width); DataFile << "ACC_heatcapacitor[6].der_T" << ',';
        DataFile.width(Width); DataFile << "ACC_heatcapacitor[7].der_T" << ',';
        DataFile.width(Width); DataFile << "ACC_heatcapacitor[8].der_T" << ',';
        DataFile.width(Width); DataFile << "ACC_heatcapacitor[9].der_T" << ',';
        DataFile.width(Width); DataFile << "ACC_heatcapacitor[1].port.Q_flow" << ',';
        DataFile.width(Width); DataFile << "ACC_heatcapacitor[2].port.Q_flow" << ',';
        DataFile.width(Width); DataFile << "ACC_heatcapacitor[3].port.Q_flow" << ',';
        DataFile.width(Width); DataFile << "ACC_heatcapacitor[4].port.Q_flow" << ',';
        DataFile.width(Width); DataFile << "ACC_heatcapacitor[5].port.Q_flow" << ',';
        DataFile.width(Width); DataFile << "ACC_heatcapacitor[6].port.Q_flow" << ',';
        DataFile.width(Width); DataFile << "ACC_heatcapacitor[7].port.Q_flow" << ',';
        DataFile.width(Width); DataFile << "ACC_heatcapacitor[8].port.Q_flow" << ',';
        DataFile.width(Width); DataFile << "ACC_heatcapacitor[9].port.Q_flow" << ',';
        DataFile.width(Width); DataFile << "ACC_heatcapacitor[1].port.T" << ',';
        DataFile.width(Width); DataFile << "ACC_heatcapacitor[2].port.T" << ',';
        DataFile.width(Width); DataFile << "ACC_heatcapacitor[3].port.T" << ',';
        DataFile.width(Width); DataFile << "ACC_heatcapacitor[4].port.T" << ',';
        DataFile.width(Width); DataFile << "ACC_heatcapacitor[5].port.T" << ',';
        DataFile.width(Width); DataFile << "ACC_heatcapacitor[6].port.T" << ',';
        DataFile.width(Width); DataFile << "ACC_heatcapacitor[7].port.T" << ',';
        DataFile.width(Width); DataFile << "ACC_heatcapacitor[8].port.T" << ',';
        DataFile.width(Width); DataFile << "ACC_heatcapacitor[9].port.T" << ',';
        DataFile.width(Width); DataFile << "ACC_thermalconductor[1].Q_flow" << ',';
        DataFile.width(Width); DataFile << "ACC_thermalconductor[2].Q_flow" << ',';
        DataFile.width(Width); DataFile << "ACC_thermalconductor[3].Q_flow" << ',';
        DataFile.width(Width); DataFile << "ACC_thermalconductor[4].Q_flow" << ',';
        DataFile.width(Width); DataFile << "ACC_thermalconductor[5].Q_flow" << ',';
        DataFile.width(Width); DataFile << "ACC_thermalconductor[6].Q_flow" << ',';
        DataFile.width(Width); DataFile << "ACC_thermalconductor[7].Q_flow" << ',';
        DataFile.width(Width); DataFile << "ACC_thermalconductor[8].Q_flow" << ',';
        DataFile.width(Width); DataFile << "ACC_thermalconductor[9].Q_flow" << ',';
        DataFile.width(Width); DataFile << "ACC_thermalconductor[1].dT" << ',';
        DataFile.width(Width); DataFile << "ACC_thermalconductor[2].dT" << ',';
        DataFile.width(Width); DataFile << "ACC_thermalconductor[3].dT" << ',';
        DataFile.width(Width); DataFile << "ACC_thermalconductor[4].dT" << ',';
        DataFile.width(Width); DataFile << "ACC_thermalconductor[5].dT" << ',';
        DataFile.width(Width); DataFile << "ACC_thermalconductor[6].dT" << ',';
        DataFile.width(Width); DataFile << "ACC_thermalconductor[7].dT" << ',';
        DataFile.width(Width); DataFile << "ACC_thermalconductor[8].dT" << ',';
        DataFile.width(Width); DataFile << "ACC_thermalconductor[9].dT" << ',';
        DataFile.width(Width); DataFile << "ACC_thermalconductor[1].port_a.Q_flow" << ',';
        DataFile.width(Width); DataFile << "ACC_thermalconductor[2].port_a.Q_flow" << ',';
        DataFile.width(Width); DataFile << "ACC_thermalconductor[3].port_a.Q_flow" << ',';
        DataFile.width(Width); DataFile << "ACC_thermalconductor[4].port_a.Q_flow" << ',';
        DataFile.width(Width); DataFile << "ACC_thermalconductor[5].port_a.Q_flow" << ',';
        DataFile.width(Width); DataFile << "ACC_thermalconductor[6].port_a.Q_flow" << ',';
        DataFile.width(Width); DataFile << "ACC_thermalconductor[7].port_a.Q_flow" << ',';
        DataFile.width(Width); DataFile << "ACC_thermalconductor[8].port_a.Q_flow" << ',';
        DataFile.width(Width); DataFile << "ACC_thermalconductor[9].port_a.Q_flow" << ',';
        DataFile.width(Width); DataFile << "ACC_thermalconductor[1].port_a.T" << ',';
        DataFile.width(Width); DataFile << "ACC_thermalconductor[2].port_a.T" << ',';
        DataFile.width(Width); DataFile << "ACC_thermalconductor[3].port_a.T" << ',';
        DataFile.width(Width); DataFile << "ACC_thermalconductor[4].port_a.T" << ',';
        DataFile.width(Width); DataFile << "ACC_thermalconductor[5].port_a.T" << ',';
        DataFile.width(Width); DataFile << "ACC_thermalconductor[6].port_a.T" << ',';
        DataFile.width(Width); DataFile << "ACC_thermalconductor[7].port_a.T" << ',';
        DataFile.width(Width); DataFile << "ACC_thermalconductor[8].port_a.T" << ',';
        DataFile.width(Width); DataFile << "ACC_thermalconductor[9].port_a.T" << ',';
        DataFile.width(Width); DataFile << "ACC_thermalconductor[1].port_b.Q_flow" << ',';
        DataFile.width(Width); DataFile << "ACC_thermalconductor[2].port_b.Q_flow" << ',';
        DataFile.width(Width); DataFile << "ACC_thermalconductor[3].port_b.Q_flow" << ',';
        DataFile.width(Width); DataFile << "ACC_thermalconductor[4].port_b.Q_flow" << ',';
        DataFile.width(Width); DataFile << "ACC_thermalconductor[5].port_b.Q_flow" << ',';
        DataFile.width(Width); DataFile << "ACC_thermalconductor[6].port_b.Q_flow" << ',';
        DataFile.width(Width); DataFile << "ACC_thermalconductor[7].port_b.Q_flow" << ',';
        DataFile.width(Width); DataFile << "ACC_thermalconductor[8].port_b.Q_flow" << ',';
        DataFile.width(Width); DataFile << "ACC_thermalconductor[9].port_b.Q_flow" << ',';
        DataFile.width(Width); DataFile << "ACC_thermalconductor[1].port_b.T" << ',';
        DataFile.width(Width); DataFile << "ACC_thermalconductor[2].port_b.T" << ',';
        DataFile.width(Width); DataFile << "ACC_thermalconductor[3].port_b.T" << ',';
        DataFile.width(Width); DataFile << "ACC_thermalconductor[4].port_b.T" << ',';
        DataFile.width(Width); DataFile << "ACC_thermalconductor[5].port_b.T" << ',';
        DataFile.width(Width); DataFile << "ACC_thermalconductor[6].port_b.T" << ',';
        DataFile.width(Width); DataFile << "ACC_thermalconductor[7].port_b.T" << ',';
        DataFile.width(Width); DataFile << "ACC_thermalconductor[8].port_b.T" << ',';
        DataFile.width(Width); DataFile << "ACC_thermalconductor[9].port_b.T" << ',';
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

    Solver.SolverOption(RelativeTolerance, 0, 1e-06);
    Solver.SolverOption(RelativeTolerance, 1, 1e-06);
    Solver.SolverOption(RelativeTolerance, 2, 1e-06);
    Solver.SolverOption(RelativeTolerance, 3, 1e-06);
    Solver.SolverOption(RelativeTolerance, 4, 1e-06);
    Solver.SolverOption(RelativeTolerance, 5, 1e-06);
    Solver.SolverOption(RelativeTolerance, 6, 1e-06);
    Solver.SolverOption(RelativeTolerance, 7, 1e-06);
    Solver.SolverOption(RelativeTolerance, 8, 1e-06);
   
    
    int NumberOfSimulationLaunches = NumberOfProblems / NT + (NumberOfProblems % NT == 0 ? 0:1);
    ofstream DataFile;
    DataFile.open ( "OneDHeatTransferTI_Modelica_N_10.csv" );
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

