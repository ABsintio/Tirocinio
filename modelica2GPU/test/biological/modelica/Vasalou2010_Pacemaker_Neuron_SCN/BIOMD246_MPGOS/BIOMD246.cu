

#include <iostream>
#include <vector>
#include <iomanip>
#include <string>
#include <fstream>

#include "BIOMD246_SystemDefinition.cuh"
#include "SingleSystem_PerThread_Interface.cuh"

using namespace std;

#define SOLVER RKCK45 // Runge-Kutta Order 4th
#define PRECISION double
const int NT   = 10000;
const int SD   = 26;
const int NCP  = 1;
const int NSP  = 136;
const int NISP = 0;
const int NE   = 0;
const int NA   = 34;
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
        DataFile.width(Width); DataFile << "X_B_C" << ',';
        DataFile.width(Width); DataFile << "X_B_CP" << ',';
        DataFile.width(Width); DataFile << "X_B_N" << ',';
        DataFile.width(Width); DataFile << "X_B_NP" << ',';
        DataFile.width(Width); DataFile << "X_CB" << ',';
        DataFile.width(Width); DataFile << "X_C_C" << ',';
        DataFile.width(Width); DataFile << "X_C_CP" << ',';
        DataFile.width(Width); DataFile << "X_Ca_ex" << ',';
        DataFile.width(Width); DataFile << "X_Ca_in" << ',';
        DataFile.width(Width); DataFile << "X_Ca_store" << ',';
        DataFile.width(Width); DataFile << "X_Cl_ex" << ',';
        DataFile.width(Width); DataFile << "X_Cl_o" << ',';
        DataFile.width(Width); DataFile << "X_GABA_o" << ',';
        DataFile.width(Width); DataFile << "X_I_N" << ',';
        DataFile.width(Width); DataFile << "X_K_ex" << ',';
        DataFile.width(Width); DataFile << "X_M_B" << ',';
        DataFile.width(Width); DataFile << "X_M_C" << ',';
        DataFile.width(Width); DataFile << "X_M_P" << ',';
        DataFile.width(Width); DataFile << "X_Na_ex" << ',';
        DataFile.width(Width); DataFile << "X_PC_C" << ',';
        DataFile.width(Width); DataFile << "X_PC_CP" << ',';
        DataFile.width(Width); DataFile << "X_PC_N" << ',';
        DataFile.width(Width); DataFile << "X_PC_NP" << ',';
        DataFile.width(Width); DataFile << "X_P_C" << ',';
        DataFile.width(Width); DataFile << "X_P_CP" << ',';
        DataFile.width(Width); DataFile << "X_VIP" << ',';
        DataFile.width(Width); DataFile << "sPAR_C_T" << ',';
        DataFile.width(Width); DataFile << "sPAR_Cm" << ',';
        DataFile.width(Width); DataFile << "sPAR_E_K_0" << ',';
        DataFile.width(Width); DataFile << "sPAR_E_L_0" << ',';
        DataFile.width(Width); DataFile << "sPAR_E_Na_0" << ',';
        DataFile.width(Width); DataFile << "sPAR_E_ex" << ',';
        DataFile.width(Width); DataFile << "sPAR_Faraday" << ',';
        DataFile.width(Width); DataFile << "sPAR_K_1_CB" << ',';
        DataFile.width(Width); DataFile << "sPAR_K_2" << ',';
        DataFile.width(Width); DataFile << "sPAR_K_2_CB" << ',';
        DataFile.width(Width); DataFile << "sPAR_K_A" << ',';
        DataFile.width(Width); DataFile << "sPAR_K_AP" << ',';
        DataFile.width(Width); DataFile << "sPAR_K_C" << ',';
        DataFile.width(Width); DataFile << "sPAR_K_Ca" << ',';
        DataFile.width(Width); DataFile << "sPAR_K_Cl1" << ',';
        DataFile.width(Width); DataFile << "sPAR_K_Cl2" << ',';
        DataFile.width(Width); DataFile << "sPAR_K_D" << ',';
        DataFile.width(Width); DataFile << "sPAR_K_GABA" << ',';
        DataFile.width(Width); DataFile << "sPAR_K_IB" << ',';
        DataFile.width(Width); DataFile << "sPAR_K_KCa" << ',';
        DataFile.width(Width); DataFile << "sPAR_K_PK" << ',';
        DataFile.width(Width); DataFile << "sPAR_K_R" << ',';
        DataFile.width(Width); DataFile << "sPAR_K_R_Ca" << ',';
        DataFile.width(Width); DataFile << "sPAR_K_VIP" << ',';
        DataFile.width(Width); DataFile << "sPAR_K_dp" << ',';
        DataFile.width(Width); DataFile << "sPAR_K_ex1" << ',';
        DataFile.width(Width); DataFile << "sPAR_K_ex2" << ',';
        DataFile.width(Width); DataFile << "sPAR_K_gk" << ',';
        DataFile.width(Width); DataFile << "sPAR_K_kk" << ',';
        DataFile.width(Width); DataFile << "sPAR_K_mB" << ',';
        DataFile.width(Width); DataFile << "sPAR_K_mC" << ',';
        DataFile.width(Width); DataFile << "sPAR_K_mP" << ',';
        DataFile.width(Width); DataFile << "sPAR_K_p" << ',';
        DataFile.width(Width); DataFile << "sPAR_K_sC" << ',';
        DataFile.width(Width); DataFile << "sPAR_K_vo" << ',';
        DataFile.width(Width); DataFile << "sPAR_Kd" << ',';
        DataFile.width(Width); DataFile << "sPAR_PK_o" << ',';
        DataFile.width(Width); DataFile << "sPAR_P_Ca" << ',';
        DataFile.width(Width); DataFile << "sPAR_P_Cl" << ',';
        DataFile.width(Width); DataFile << "sPAR_P_Na" << ',';
        DataFile.width(Width); DataFile << "sPAR_R_g" << ',';
        DataFile.width(Width); DataFile << "sPAR_T" << ',';
        DataFile.width(Width); DataFile << "sPAR_T_abs" << ',';
        DataFile.width(Width); DataFile << "sPAR_T_room" << ',';
        DataFile.width(Width); DataFile << "sPAR_V1_B" << ',';
        DataFile.width(Width); DataFile << "sPAR_V1_C" << ',';
        DataFile.width(Width); DataFile << "sPAR_V1_P" << ',';
        DataFile.width(Width); DataFile << "sPAR_V1_PC" << ',';
        DataFile.width(Width); DataFile << "sPAR_V2_B" << ',';
        DataFile.width(Width); DataFile << "sPAR_V2_C" << ',';
        DataFile.width(Width); DataFile << "sPAR_V2_P" << ',';
        DataFile.width(Width); DataFile << "sPAR_V2_PC" << ',';
        DataFile.width(Width); DataFile << "sPAR_V3_B" << ',';
        DataFile.width(Width); DataFile << "sPAR_V3_PC" << ',';
        DataFile.width(Width); DataFile << "sPAR_V4_B" << ',';
        DataFile.width(Width); DataFile << "sPAR_V4_PC" << ',';
        DataFile.width(Width); DataFile << "sPAR_VK_Ca" << ',';
        DataFile.width(Width); DataFile << "sPAR_V_M1" << ',';
        DataFile.width(Width); DataFile << "sPAR_V_M2" << ',';
        DataFile.width(Width); DataFile << "sPAR_V_M3" << ',';
        DataFile.width(Width); DataFile << "sPAR_V_MK" << ',';
        DataFile.width(Width); DataFile << "sPAR_V_R" << ',';
        DataFile.width(Width); DataFile << "sPAR_V_b" << ',';
        DataFile.width(Width); DataFile << "sPAR_V_ex1" << ',';
        DataFile.width(Width); DataFile << "sPAR_V_ex2" << ',';
        DataFile.width(Width); DataFile << "sPAR_V_phos" << ',';
        DataFile.width(Width); DataFile << "sPAR_V_theta" << ',';
        DataFile.width(Width); DataFile << "sPAR_WT" << ',';
        DataFile.width(Width); DataFile << "sPAR_beta_IP3" << ',';
        DataFile.width(Width); DataFile << "sPAR_cytoplasm" << ',';
        DataFile.width(Width); DataFile << "sPAR_extra" << ',';
        DataFile.width(Width); DataFile << "sPAR_g_K_0" << ',';
        DataFile.width(Width); DataFile << "sPAR_g_Na" << ',';
        DataFile.width(Width); DataFile << "sPAR_g_inhib" << ',';
        DataFile.width(Width); DataFile << "sPAR_k1" << ',';
        DataFile.width(Width); DataFile << "sPAR_k2" << ',';
        DataFile.width(Width); DataFile << "sPAR_k3" << ',';
        DataFile.width(Width); DataFile << "sPAR_k4" << ',';
        DataFile.width(Width); DataFile << "sPAR_k5" << ',';
        DataFile.width(Width); DataFile << "sPAR_k6" << ',';
        DataFile.width(Width); DataFile << "sPAR_k7" << ',';
        DataFile.width(Width); DataFile << "sPAR_k8" << ',';
        DataFile.width(Width); DataFile << "sPAR_k_MK" << ',';
        DataFile.width(Width); DataFile << "sPAR_k_b" << ',';
        DataFile.width(Width); DataFile << "sPAR_k_dVIP" << ',';
        DataFile.width(Width); DataFile << "sPAR_k_f" << ',';
        DataFile.width(Width); DataFile << "sPAR_k_q" << ',';
        DataFile.width(Width); DataFile << "sPAR_kd_mB" << ',';
        DataFile.width(Width); DataFile << "sPAR_kd_mC" << ',';
        DataFile.width(Width); DataFile << "sPAR_kd_mP" << ',';
        DataFile.width(Width); DataFile << "sPAR_kd_n" << ',';
        DataFile.width(Width); DataFile << "sPAR_kd_nc" << ',';
        DataFile.width(Width); DataFile << "sPAR_ksB" << ',';
        DataFile.width(Width); DataFile << "sPAR_ks_C" << ',';
        DataFile.width(Width); DataFile << "sPAR_ks_P" << ',';
        DataFile.width(Width); DataFile << "sPAR_m_BN" << ',';
        DataFile.width(Width); DataFile << "sPAR_n_BN" << ',';
        DataFile.width(Width); DataFile << "sPAR_n_Ca" << ',';
        DataFile.width(Width); DataFile << "sPAR_n_Cl" << ',';
        DataFile.width(Width); DataFile << "sPAR_n_KCa" << ',';
        DataFile.width(Width); DataFile << "sPAR_n_M2" << ',';
        DataFile.width(Width); DataFile << "sPAR_n_M3" << ',';
        DataFile.width(Width); DataFile << "sPAR_n_PK" << ',';
        DataFile.width(Width); DataFile << "sPAR_n_VIP" << ',';
        DataFile.width(Width); DataFile << "sPAR_n_dVIP" << ',';
        DataFile.width(Width); DataFile << "sPAR_n_ex1" << ',';
        DataFile.width(Width); DataFile << "sPAR_n_ex2" << ',';
        DataFile.width(Width); DataFile << "sPAR_n_kCa" << ',';
        DataFile.width(Width); DataFile << "sPAR_n_kk" << ',';
        DataFile.width(Width); DataFile << "sPAR_n_vo" << ',';
        DataFile.width(Width); DataFile << "sPAR_nucleus" << ',';
        DataFile.width(Width); DataFile << "sPAR_p_A" << ',';
        DataFile.width(Width); DataFile << "sPAR_store" << ',';
        DataFile.width(Width); DataFile << "sPAR_vP" << ',';
        DataFile.width(Width); DataFile << "sPAR_v_Ca" << ',';
        DataFile.width(Width); DataFile << "sPAR_v_Cl1" << ',';
        DataFile.width(Width); DataFile << "sPAR_v_Cl2" << ',';
        DataFile.width(Width); DataFile << "sPAR_v_GABA" << ',';
        DataFile.width(Width); DataFile << "sPAR_v_PK" << ',';
        DataFile.width(Width); DataFile << "sPAR_v_VIP" << ',';
        DataFile.width(Width); DataFile << "sPAR_v_dCC" << ',';
        DataFile.width(Width); DataFile << "sPAR_v_dPC" << ',';
        DataFile.width(Width); DataFile << "sPAR_v_gk" << ',';
        DataFile.width(Width); DataFile << "sPAR_v_kk" << ',';
        DataFile.width(Width); DataFile << "sPAR_v_mB" << ',';
        DataFile.width(Width); DataFile << "sPAR_v_mC" << ',';
        DataFile.width(Width); DataFile << "sPAR_v_mP" << ',';
        DataFile.width(Width); DataFile << "sPAR_v_sB" << ',';
        DataFile.width(Width); DataFile << "sPAR_v_sC" << ',';
        DataFile.width(Width); DataFile << "sPAR_v_sP0" << ',';
        DataFile.width(Width); DataFile << "sPAR_v_vo" << ',';
        DataFile.width(Width); DataFile << "sPAR_vd_BC" << ',';
        DataFile.width(Width); DataFile << "sPAR_vd_BN" << ',';
        DataFile.width(Width); DataFile << "sPAR_vd_IN" << ',';
        DataFile.width(Width); DataFile << "sPAR_vd_PCC" << ',';
        DataFile.width(Width); DataFile << "sPAR_vd_PCN" << ',';
        DataFile.width(Width); DataFile << "ACC_Cl_in" << ',';
        DataFile.width(Width); DataFile << "ACC_E_Ca" << ',';
        DataFile.width(Width); DataFile << "ACC_E_K" << ',';
        DataFile.width(Width); DataFile << "ACC_E_L" << ',';
        DataFile.width(Width); DataFile << "ACC_E_Na" << ',';
        DataFile.width(Width); DataFile << "ACC_E_inhib" << ',';
        DataFile.width(Width); DataFile << "ACC_GABA" << ',';
        DataFile.width(Width); DataFile << "ACC_I_Na" << ',';
        DataFile.width(Width); DataFile << "ACC_I_Na_abs" << ',';
        DataFile.width(Width); DataFile << "ACC_I_star" << ',';
        DataFile.width(Width); DataFile << "ACC_K_in" << ',';
        DataFile.width(Width); DataFile << "ACC_Na_in" << ',';
        DataFile.width(Width); DataFile << "ACC_P_K" << ',';
        DataFile.width(Width); DataFile << "ACC_R" << ',';
        DataFile.width(Width); DataFile << "ACC_R_star" << ',';
        DataFile.width(Width); DataFile << "ACC_V_reset" << ',';
        DataFile.width(Width); DataFile << "ACC_V_rest" << ',';
        DataFile.width(Width); DataFile << "ACC_alpha" << ',';
        DataFile.width(Width); DataFile << "ACC_beta" << ',';
        DataFile.width(Width); DataFile << "ACC_beta_a" << ',';
        DataFile.width(Width); DataFile << "ACC_c" << ',';
        DataFile.width(Width); DataFile << "ACC_f_r" << ',';
        DataFile.width(Width); DataFile << "ACC_gK_Ca" << ',';
        DataFile.width(Width); DataFile << "ACC_g_Ca" << ',';
        DataFile.width(Width); DataFile << "ACC_g_K" << ',';
        DataFile.width(Width); DataFile << "ACC_g_L" << ',';
        DataFile.width(Width); DataFile << "ACC_g_ex" << ',';
        DataFile.width(Width); DataFile << "ACC_psi" << ',';
        DataFile.width(Width); DataFile << "ACC_tau_m" << ',';
        DataFile.width(Width); DataFile << "ACC_theta" << ',';
        DataFile.width(Width); DataFile << "ACC_theta_K" << ',';
        DataFile.width(Width); DataFile << "ACC_theta_Na" << ',';
        DataFile.width(Width); DataFile << "ACC_v_K" << ',';
        DataFile.width(Width); DataFile << "ACC_v_sPc" << ',';
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
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 95) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 96) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 97) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 98) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 99) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 100) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 101) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 102) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 103) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 104) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 105) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 106) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 107) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 108) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 109) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 110) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 111) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 112) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 113) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 114) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 115) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 116) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 117) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 118) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 119) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 120) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 121) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 122) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 123) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 124) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 125) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 126) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 127) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 128) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 129) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 130) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 131) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 132) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 133) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 134) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 135) << ',';
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
    Solver.SolverOption(AbsoluteTolerance, 0, 1e-10);
    Solver.SolverOption(AbsoluteTolerance, 1, 1e-10);
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
   
    
    int NumberOfSimulationLaunches = NumberOfProblems / NT + (NumberOfProblems % NT == 0 ? 0:1);
    ofstream DataFile;
    DataFile.open ( "BIOMD246.csv" );
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

