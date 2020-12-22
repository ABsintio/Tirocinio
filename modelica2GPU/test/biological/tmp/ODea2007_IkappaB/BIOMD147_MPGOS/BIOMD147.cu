

#include <iostream>
#include <vector>
#include <iomanip>
#include <string>
#include <fstream>

#define PI 3.14159265358979323846

#include "BIOMD147_SystemDefinition.cuh"
#include "SingleSystem_PerThread_Interface.cuh"

using namespace std;

#define SOLVER RKCK45 // Runge-Kutta Order 4th
#define PRECISION double
const int NT   = 1;
const int SD   = 24;
const int NCP  = 1;
const int NSP  = 72;
const int NISP = 0;
const int NE   = 0;
const int NA   = 3;
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
        DataFile.width(Width); DataFile << "X_IKK" << ',';
        DataFile.width(Width); DataFile << "X_IkBaIKK" << ',';
        DataFile.width(Width); DataFile << "X_IkBaIKKNFkB" << ',';
        DataFile.width(Width); DataFile << "X_IkBaNFkB_cytoplasm" << ',';
        DataFile.width(Width); DataFile << "X_IkBaNFkB_nucleus" << ',';
        DataFile.width(Width); DataFile << "X_IkBa_cytoplasm" << ',';
        DataFile.width(Width); DataFile << "X_IkBa_mRNA" << ',';
        DataFile.width(Width); DataFile << "X_IkBa_nucleus" << ',';
        DataFile.width(Width); DataFile << "X_IkBbIKK" << ',';
        DataFile.width(Width); DataFile << "X_IkBbIKKNFkB" << ',';
        DataFile.width(Width); DataFile << "X_IkBbNFkB_cytoplasm" << ',';
        DataFile.width(Width); DataFile << "X_IkBbNFkB_nucleus" << ',';
        DataFile.width(Width); DataFile << "X_IkBb_cytoplasm" << ',';
        DataFile.width(Width); DataFile << "X_IkBb_mRNA" << ',';
        DataFile.width(Width); DataFile << "X_IkBb_nucleus" << ',';
        DataFile.width(Width); DataFile << "X_IkBeIKK" << ',';
        DataFile.width(Width); DataFile << "X_IkBeIKKNFkB" << ',';
        DataFile.width(Width); DataFile << "X_IkBeNFkB_cytoplasm" << ',';
        DataFile.width(Width); DataFile << "X_IkBeNFkB_nucleus" << ',';
        DataFile.width(Width); DataFile << "X_IkBe_cytoplasm" << ',';
        DataFile.width(Width); DataFile << "X_IkBe_mRNA" << ',';
        DataFile.width(Width); DataFile << "X_IkBe_nucleus" << ',';
        DataFile.width(Width); DataFile << "X_NFkB_cytoplasm" << ',';
        DataFile.width(Width); DataFile << "X_NFkB_nucleus" << ',';
        DataFile.width(Width); DataFile << "sPAR_a1_int_ai" << ',';
        DataFile.width(Width); DataFile << "sPAR_a2_int_bi" << ',';
        DataFile.width(Width); DataFile << "sPAR_a3_int_ei" << ',';
        DataFile.width(Width); DataFile << "sPAR_a4_1_int_an" << ',';
        DataFile.width(Width); DataFile << "sPAR_a4_2_int_an_n" << ',';
        DataFile.width(Width); DataFile << "sPAR_a4_3_int_2ain" << ',';
        DataFile.width(Width); DataFile << "sPAR_a5_1_int_bn" << ',';
        DataFile.width(Width); DataFile << "sPAR_a5_2_int_bn_n" << ',';
        DataFile.width(Width); DataFile << "sPAR_a5_3_int_2bin" << ',';
        DataFile.width(Width); DataFile << "sPAR_a6_1_int_en" << ',';
        DataFile.width(Width); DataFile << "sPAR_a6_2_int_en_n" << ',';
        DataFile.width(Width); DataFile << "sPAR_a6_3_int_2ein" << ',';
        DataFile.width(Width); DataFile << "sPAR_a7_int_2ani" << ',';
        DataFile.width(Width); DataFile << "sPAR_a8_int_2bni" << ',';
        DataFile.width(Width); DataFile << "sPAR_a9_int_2eni" << ',';
        DataFile.width(Width); DataFile << "sPAR_cytoplasm" << ',';
        DataFile.width(Width); DataFile << "sPAR_d1_1_int_ai" << ',';
        DataFile.width(Width); DataFile << "sPAR_d1_2_int_2ani" << ',';
        DataFile.width(Width); DataFile << "sPAR_d2_1_int_bi" << ',';
        DataFile.width(Width); DataFile << "sPAR_d2_2_int_2bni" << ',';
        DataFile.width(Width); DataFile << "sPAR_d3_1_int_ei" << ',';
        DataFile.width(Width); DataFile << "sPAR_d3_2_int_2eni" << ',';
        DataFile.width(Width); DataFile << "sPAR_d4_1_int_an" << ',';
        DataFile.width(Width); DataFile << "sPAR_d4_2_int_an_n" << ',';
        DataFile.width(Width); DataFile << "sPAR_d4_3_int_2ain" << ',';
        DataFile.width(Width); DataFile << "sPAR_d5_1_int_bn" << ',';
        DataFile.width(Width); DataFile << "sPAR_d5_2_int_bn_n" << ',';
        DataFile.width(Width); DataFile << "sPAR_d5_3_int_2bin" << ',';
        DataFile.width(Width); DataFile << "sPAR_d6_1_int_en" << ',';
        DataFile.width(Width); DataFile << "sPAR_d6_2_int_en_n" << ',';
        DataFile.width(Width); DataFile << "sPAR_d6_3_int_2ein" << ',';
        DataFile.width(Width); DataFile << "sPAR_deg1_c_deg_a" << ',';
        DataFile.width(Width); DataFile << "sPAR_deg1_n_deg_a_n" << ',';
        DataFile.width(Width); DataFile << "sPAR_deg2_c_deg_b" << ',';
        DataFile.width(Width); DataFile << "sPAR_deg2_n_deg_b_n" << ',';
        DataFile.width(Width); DataFile << "sPAR_deg3_c_deg_e" << ',';
        DataFile.width(Width); DataFile << "sPAR_deg3_n_deg_e_n" << ',';
        DataFile.width(Width); DataFile << "sPAR_deg4_c_deg_an" << ',';
        DataFile.width(Width); DataFile << "sPAR_deg4_n_deg_an_n" << ',';
        DataFile.width(Width); DataFile << "sPAR_deg5_c_deg_bn" << ',';
        DataFile.width(Width); DataFile << "sPAR_deg5_n_deg_bn_n" << ',';
        DataFile.width(Width); DataFile << "sPAR_deg6_c_deg_en" << ',';
        DataFile.width(Width); DataFile << "sPAR_deg6_n_deg_en_n" << ',';
        DataFile.width(Width); DataFile << "sPAR_k1_1_loc_n" << ',';
        DataFile.width(Width); DataFile << "sPAR_k1_2_loc_n" << ',';
        DataFile.width(Width); DataFile << "sPAR_k2_a_loc_an" << ',';
        DataFile.width(Width); DataFile << "sPAR_k2_b_loc_bn" << ',';
        DataFile.width(Width); DataFile << "sPAR_k2_e_loc_en" << ',';
        DataFile.width(Width); DataFile << "sPAR_k_IKK_deg_IKK_deg" << ',';
        DataFile.width(Width); DataFile << "sPAR_nucleus" << ',';
        DataFile.width(Width); DataFile << "sPAR_r1_deg_ai" << ',';
        DataFile.width(Width); DataFile << "sPAR_r2_deg_bi" << ',';
        DataFile.width(Width); DataFile << "sPAR_r3_deg_ei" << ',';
        DataFile.width(Width); DataFile << "sPAR_r4_deg_ain" << ',';
        DataFile.width(Width); DataFile << "sPAR_r5_deg_bin" << ',';
        DataFile.width(Width); DataFile << "sPAR_r6_deg_ein" << ',';
        DataFile.width(Width); DataFile << "sPAR_tp1a_loc_a" << ',';
        DataFile.width(Width); DataFile << "sPAR_tp1b_loc_b" << ',';
        DataFile.width(Width); DataFile << "sPAR_tp1e_loc_e" << ',';
        DataFile.width(Width); DataFile << "sPAR_tp2a_loc_a" << ',';
        DataFile.width(Width); DataFile << "sPAR_tp2b_loc_b" << ',';
        DataFile.width(Width); DataFile << "sPAR_tp2e_loc_e" << ',';
        DataFile.width(Width); DataFile << "sPAR_tr1a_tsl_a" << ',';
        DataFile.width(Width); DataFile << "sPAR_tr1b_tsl_b" << ',';
        DataFile.width(Width); DataFile << "sPAR_tr1e_tsl_e" << ',';
        DataFile.width(Width); DataFile << "sPAR_tr2a_i_itxn_a" << ',';
        DataFile.width(Width); DataFile << "sPAR_tr2a_txn_a" << ',';
        DataFile.width(Width); DataFile << "sPAR_tr2b_txn_b" << ',';
        DataFile.width(Width); DataFile << "sPAR_tr2e_txn_e" << ',';
        DataFile.width(Width); DataFile << "sPAR_tr3a_mdeg_a" << ',';
        DataFile.width(Width); DataFile << "sPAR_tr3b_mdeg_b" << ',';
        DataFile.width(Width); DataFile << "sPAR_tr3e_mdeg_e" << ',';
        DataFile.width(Width); DataFile << "ACC_Total_IkBalpha" << ',';
        DataFile.width(Width); DataFile << "ACC_Total_IkBbeta" << ',';
        DataFile.width(Width); DataFile << "ACC_Total_IkBeps" << ',';
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
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 0) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 1) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 2) << ',';

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
   
    
    int NumberOfSimulationLaunches = NumberOfProblems / NT + (NumberOfProblems % NT == 0 ? 0:1);
    ofstream DataFile;
    DataFile.open ( "BIOMD147.csv" );
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

