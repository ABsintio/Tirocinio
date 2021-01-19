

#include <iostream>
#include <vector>
#include <iomanip>
#include <string>
#include <fstream>

#include "PowerSystemStepLoad_N_4_M_4_SystemDefinition.cuh"
#include "SingleSystem_PerThread_Interface.cuh"

using namespace std;

#define SOLVER RKCK45 // Runge-Kutta Order 4th
#define PRECISION double
const int NT   = 1;
const int SD   = 49;
const int NCP  = 1;
const int NSP  = 83;
const int NISP = 6;
const int NE   = 0;
const int NA   = 122;
const int NIA  = 0;
const int NDO  = 10000000;


void FillSolverObject(
    ProblemSolver<NT,SD,NCP,NSP,NISP,NE,NA,NIA,NDO,SOLVER,PRECISION>& Solver, 
    int FirstProblemNumber, int NumberOfThreads
) {
    int k_begin = FirstProblemNumber;
    int k_end   = FirstProblemNumber + NumberOfThreads;
	
    int ProblemNumber = 0;
    while (k_begin < k_end) {
        Solver.SetHost(ProblemNumber, TimeDomain, 0, 0.0);
        Solver.SetHost(ProblemNumber, TimeDomain, 1, 200.0);  

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
        DataFile.width(Width); DataFile << "X_P_sfc" << ',';
        DataFile.width(Width); DataFile << "X_generator[1].T_s[1]" << ',';
        DataFile.width(Width); DataFile << "X_generator[1].T_s[2]" << ',';
        DataFile.width(Width); DataFile << "X_generator[1].T_s[3]" << ',';
        DataFile.width(Width); DataFile << "X_generator[1].T_s[4]" << ',';
        DataFile.width(Width); DataFile << "X_generator[2].T_s[1]" << ',';
        DataFile.width(Width); DataFile << "X_generator[2].T_s[2]" << ',';
        DataFile.width(Width); DataFile << "X_generator[2].T_s[3]" << ',';
        DataFile.width(Width); DataFile << "X_generator[2].T_s[4]" << ',';
        DataFile.width(Width); DataFile << "X_generator[3].T_s[1]" << ',';
        DataFile.width(Width); DataFile << "X_generator[3].T_s[2]" << ',';
        DataFile.width(Width); DataFile << "X_generator[3].T_s[3]" << ',';
        DataFile.width(Width); DataFile << "X_generator[3].T_s[4]" << ',';
        DataFile.width(Width); DataFile << "X_generator[4].T_s[1]" << ',';
        DataFile.width(Width); DataFile << "X_generator[4].T_s[2]" << ',';
        DataFile.width(Width); DataFile << "X_generator[4].T_s[3]" << ',';
        DataFile.width(Width); DataFile << "X_generator[4].T_s[4]" << ',';
        DataFile.width(Width); DataFile << "X_generator[1].err_p_int" << ',';
        DataFile.width(Width); DataFile << "X_generator[2].err_p_int" << ',';
        DataFile.width(Width); DataFile << "X_generator[3].err_p_int" << ',';
        DataFile.width(Width); DataFile << "X_generator[4].err_p_int" << ',';
        DataFile.width(Width); DataFile << "X_generator[1].err_p_t_int" << ',';
        DataFile.width(Width); DataFile << "X_generator[2].err_p_t_int" << ',';
        DataFile.width(Width); DataFile << "X_generator[3].err_p_t_int" << ',';
        DataFile.width(Width); DataFile << "X_generator[4].err_p_t_int" << ',';
        DataFile.width(Width); DataFile << "X_generator[1].omega" << ',';
        DataFile.width(Width); DataFile << "X_generator[2].omega" << ',';
        DataFile.width(Width); DataFile << "X_generator[3].omega" << ',';
        DataFile.width(Width); DataFile << "X_generator[4].omega" << ',';
        DataFile.width(Width); DataFile << "X_generator[1].p" << ',';
        DataFile.width(Width); DataFile << "X_generator[2].p" << ',';
        DataFile.width(Width); DataFile << "X_generator[3].p" << ',';
        DataFile.width(Width); DataFile << "X_generator[4].p" << ',';
        DataFile.width(Width); DataFile << "X_generator[1].p_t_lp" << ',';
        DataFile.width(Width); DataFile << "X_generator[2].p_t_lp" << ',';
        DataFile.width(Width); DataFile << "X_generator[3].p_t_lp" << ',';
        DataFile.width(Width); DataFile << "X_generator[4].p_t_lp" << ',';
        DataFile.width(Width); DataFile << "X_generator[1].q_ev" << ',';
        DataFile.width(Width); DataFile << "X_generator[2].q_ev" << ',';
        DataFile.width(Width); DataFile << "X_generator[3].q_ev" << ',';
        DataFile.width(Width); DataFile << "X_generator[4].q_ev" << ',';
        DataFile.width(Width); DataFile << "X_generator[1].theta" << ',';
        DataFile.width(Width); DataFile << "X_generator[2].theta" << ',';
        DataFile.width(Width); DataFile << "X_generator[3].theta" << ',';
        DataFile.width(Width); DataFile << "X_generator[4].theta" << ',';
        DataFile.width(Width); DataFile << "X_generator[1].y_t" << ',';
        DataFile.width(Width); DataFile << "X_generator[2].y_t" << ',';
        DataFile.width(Width); DataFile << "X_generator[3].y_t" << ',';
        DataFile.width(Width); DataFile << "X_generator[4].y_t" << ',';
        DataFile.width(Width); DataFile << "sPAR_P_d" << ',';
        DataFile.width(Width); DataFile << "sPAR_P_nom" << ',';
        DataFile.width(Width); DataFile << "sPAR_T_sfc" << ',';
        DataFile.width(Width); DataFile << "sPAR_droop" << ',';
        DataFile.width(Width); DataFile << "sPAR_f_ref" << ',';
        DataFile.width(Width); DataFile << "sPAR_generator[1].J" << ',';
        DataFile.width(Width); DataFile << "sPAR_generator[2].J" << ',';
        DataFile.width(Width); DataFile << "sPAR_generator[3].J" << ',';
        DataFile.width(Width); DataFile << "sPAR_generator[4].J" << ',';
        DataFile.width(Width); DataFile << "sPAR_generator[1].Kp_p" << ',';
        DataFile.width(Width); DataFile << "sPAR_generator[2].Kp_p" << ',';
        DataFile.width(Width); DataFile << "sPAR_generator[3].Kp_p" << ',';
        DataFile.width(Width); DataFile << "sPAR_generator[4].Kp_p" << ',';
        DataFile.width(Width); DataFile << "sPAR_generator[1].Kp_t" << ',';
        DataFile.width(Width); DataFile << "sPAR_generator[2].Kp_t" << ',';
        DataFile.width(Width); DataFile << "sPAR_generator[3].Kp_t" << ',';
        DataFile.width(Width); DataFile << "sPAR_generator[4].Kp_t" << ',';
        DataFile.width(Width); DataFile << "sPAR_generator[1].NTU" << ',';
        DataFile.width(Width); DataFile << "sPAR_generator[2].NTU" << ',';
        DataFile.width(Width); DataFile << "sPAR_generator[3].NTU" << ',';
        DataFile.width(Width); DataFile << "sPAR_generator[4].NTU" << ',';
        DataFile.width(Width); DataFile << "sPAR_generator[1].P_nom" << ',';
        DataFile.width(Width); DataFile << "sPAR_generator[2].P_nom" << ',';
        DataFile.width(Width); DataFile << "sPAR_generator[3].P_nom" << ',';
        DataFile.width(Width); DataFile << "sPAR_generator[4].P_nom" << ',';
        DataFile.width(Width); DataFile << "sPAR_generator[1].T_a" << ',';
        DataFile.width(Width); DataFile << "sPAR_generator[2].T_a" << ',';
        DataFile.width(Width); DataFile << "sPAR_generator[3].T_a" << ',';
        DataFile.width(Width); DataFile << "sPAR_generator[4].T_a" << ',';
        DataFile.width(Width); DataFile << "sPAR_generator[1].T_source" << ',';
        DataFile.width(Width); DataFile << "sPAR_generator[2].T_source" << ',';
        DataFile.width(Width); DataFile << "sPAR_generator[3].T_source" << ',';
        DataFile.width(Width); DataFile << "sPAR_generator[4].T_source" << ',';
        DataFile.width(Width); DataFile << "sPAR_generator[1].Ti_p" << ',';
        DataFile.width(Width); DataFile << "sPAR_generator[2].Ti_p" << ',';
        DataFile.width(Width); DataFile << "sPAR_generator[3].Ti_p" << ',';
        DataFile.width(Width); DataFile << "sPAR_generator[4].Ti_p" << ',';
        DataFile.width(Width); DataFile << "sPAR_generator[1].Ti_t" << ',';
        DataFile.width(Width); DataFile << "sPAR_generator[2].Ti_t" << ',';
        DataFile.width(Width); DataFile << "sPAR_generator[3].Ti_t" << ',';
        DataFile.width(Width); DataFile << "sPAR_generator[4].Ti_t" << ',';
        DataFile.width(Width); DataFile << "sPAR_generator[1].alpha" << ',';
        DataFile.width(Width); DataFile << "sPAR_generator[2].alpha" << ',';
        DataFile.width(Width); DataFile << "sPAR_generator[3].alpha" << ',';
        DataFile.width(Width); DataFile << "sPAR_generator[4].alpha" << ',';
        DataFile.width(Width); DataFile << "sPAR_generator[1].droop" << ',';
        DataFile.width(Width); DataFile << "sPAR_generator[2].droop" << ',';
        DataFile.width(Width); DataFile << "sPAR_generator[3].droop" << ',';
        DataFile.width(Width); DataFile << "sPAR_generator[4].droop" << ',';
        DataFile.width(Width); DataFile << "sPAR_generator[1].f_ref" << ',';
        DataFile.width(Width); DataFile << "sPAR_generator[2].f_ref" << ',';
        DataFile.width(Width); DataFile << "sPAR_generator[3].f_ref" << ',';
        DataFile.width(Width); DataFile << "sPAR_generator[4].f_ref" << ',';
        DataFile.width(Width); DataFile << "sPAR_generator[1].omega_ref" << ',';
        DataFile.width(Width); DataFile << "sPAR_generator[2].omega_ref" << ',';
        DataFile.width(Width); DataFile << "sPAR_generator[3].omega_ref" << ',';
        DataFile.width(Width); DataFile << "sPAR_generator[4].omega_ref" << ',';
        DataFile.width(Width); DataFile << "sPAR_generator[1].tau_b" << ',';
        DataFile.width(Width); DataFile << "sPAR_generator[2].tau_b" << ',';
        DataFile.width(Width); DataFile << "sPAR_generator[3].tau_b" << ',';
        DataFile.width(Width); DataFile << "sPAR_generator[4].tau_b" << ',';
        DataFile.width(Width); DataFile << "sPAR_generator[1].tau_q" << ',';
        DataFile.width(Width); DataFile << "sPAR_generator[2].tau_q" << ',';
        DataFile.width(Width); DataFile << "sPAR_generator[3].tau_q" << ',';
        DataFile.width(Width); DataFile << "sPAR_generator[4].tau_q" << ',';
        DataFile.width(Width); DataFile << "sPAR_generator[1].tau_sh" << ',';
        DataFile.width(Width); DataFile << "sPAR_generator[2].tau_sh" << ',';
        DataFile.width(Width); DataFile << "sPAR_generator[3].tau_sh" << ',';
        DataFile.width(Width); DataFile << "sPAR_generator[4].tau_sh" << ',';
        DataFile.width(Width); DataFile << "sPAR_generator[1].tau_t" << ',';
        DataFile.width(Width); DataFile << "sPAR_generator[2].tau_t" << ',';
        DataFile.width(Width); DataFile << "sPAR_generator[3].tau_t" << ',';
        DataFile.width(Width); DataFile << "sPAR_generator[4].tau_t" << ',';
        DataFile.width(Width); DataFile << "sPAR_generator[1].tau_y" << ',';
        DataFile.width(Width); DataFile << "sPAR_generator[2].tau_y" << ',';
        DataFile.width(Width); DataFile << "sPAR_generator[3].tau_y" << ',';
        DataFile.width(Width); DataFile << "sPAR_generator[4].tau_y" << ',';
        DataFile.width(Width); DataFile << "sPAR_omega_ref" << ',';
        DataFile.width(Width); DataFile << "sPAR_generator[1].pi" << ',';
        DataFile.width(Width); DataFile << "sPAR_generator[2].pi" << ',';
        DataFile.width(Width); DataFile << "sPAR_generator[3].pi" << ',';
        DataFile.width(Width); DataFile << "sPAR_generator[4].pi" << ',';
        DataFile.width(Width); DataFile << "sPAR_pi" << ',';
        DataFile.width(Width); DataFile << "sPARi_M" << ',';
        DataFile.width(Width); DataFile << "sPARi_N" << ',';
        DataFile.width(Width); DataFile << "sPARi_generator[1].N" << ',';
        DataFile.width(Width); DataFile << "sPARi_generator[2].N" << ',';
        DataFile.width(Width); DataFile << "sPARi_generator[3].N" << ',';
        DataFile.width(Width); DataFile << "sPARi_generator[4].N" << ',';
        DataFile.width(Width); DataFile << "ACC_P_a[1]" << ',';
        DataFile.width(Width); DataFile << "ACC_P_a[2]" << ',';
        DataFile.width(Width); DataFile << "ACC_P_a[3]" << ',';
        DataFile.width(Width); DataFile << "ACC_P_a[4]" << ',';
        DataFile.width(Width); DataFile << "ACC_P_diss[1,1]" << ',';
        DataFile.width(Width); DataFile << "ACC_P_diss[1,2]" << ',';
        DataFile.width(Width); DataFile << "ACC_P_diss[1,3]" << ',';
        DataFile.width(Width); DataFile << "ACC_P_diss[1,4]" << ',';
        DataFile.width(Width); DataFile << "ACC_P_diss[2,1]" << ',';
        DataFile.width(Width); DataFile << "ACC_P_diss[2,2]" << ',';
        DataFile.width(Width); DataFile << "ACC_P_diss[2,3]" << ',';
        DataFile.width(Width); DataFile << "ACC_P_diss[2,4]" << ',';
        DataFile.width(Width); DataFile << "ACC_P_diss[3,1]" << ',';
        DataFile.width(Width); DataFile << "ACC_P_diss[3,2]" << ',';
        DataFile.width(Width); DataFile << "ACC_P_diss[3,3]" << ',';
        DataFile.width(Width); DataFile << "ACC_P_diss[3,4]" << ',';
        DataFile.width(Width); DataFile << "ACC_P_diss[4,1]" << ',';
        DataFile.width(Width); DataFile << "ACC_P_diss[4,2]" << ',';
        DataFile.width(Width); DataFile << "ACC_P_diss[4,3]" << ',';
        DataFile.width(Width); DataFile << "ACC_P_diss[4,4]" << ',';
        DataFile.width(Width); DataFile << "ACC_P_ex[1,1]" << ',';
        DataFile.width(Width); DataFile << "ACC_P_ex[1,2]" << ',';
        DataFile.width(Width); DataFile << "ACC_P_ex[1,3]" << ',';
        DataFile.width(Width); DataFile << "ACC_P_ex[1,4]" << ',';
        DataFile.width(Width); DataFile << "ACC_P_ex[2,1]" << ',';
        DataFile.width(Width); DataFile << "ACC_P_ex[2,2]" << ',';
        DataFile.width(Width); DataFile << "ACC_P_ex[2,3]" << ',';
        DataFile.width(Width); DataFile << "ACC_P_ex[2,4]" << ',';
        DataFile.width(Width); DataFile << "ACC_P_ex[3,1]" << ',';
        DataFile.width(Width); DataFile << "ACC_P_ex[3,2]" << ',';
        DataFile.width(Width); DataFile << "ACC_P_ex[3,3]" << ',';
        DataFile.width(Width); DataFile << "ACC_P_ex[3,4]" << ',';
        DataFile.width(Width); DataFile << "ACC_P_ex[4,1]" << ',';
        DataFile.width(Width); DataFile << "ACC_P_ex[4,2]" << ',';
        DataFile.width(Width); DataFile << "ACC_P_ex[4,3]" << ',';
        DataFile.width(Width); DataFile << "ACC_P_ex[4,4]" << ',';
        DataFile.width(Width); DataFile << "ACC_P_f" << ',';
        DataFile.width(Width); DataFile << "ACC_P_load[1]" << ',';
        DataFile.width(Width); DataFile << "ACC_P_load[2]" << ',';
        DataFile.width(Width); DataFile << "ACC_P_load[3]" << ',';
        DataFile.width(Width); DataFile << "ACC_P_load[4]" << ',';
        DataFile.width(Width); DataFile << "ACC_f" << ',';
        DataFile.width(Width); DataFile << "ACC_generator[1].P_a" << ',';
        DataFile.width(Width); DataFile << "ACC_generator[2].P_a" << ',';
        DataFile.width(Width); DataFile << "ACC_generator[3].P_a" << ',';
        DataFile.width(Width); DataFile << "ACC_generator[4].P_a" << ',';
        DataFile.width(Width); DataFile << "ACC_generator[1].P_sfc" << ',';
        DataFile.width(Width); DataFile << "ACC_generator[2].P_sfc" << ',';
        DataFile.width(Width); DataFile << "ACC_generator[3].P_sfc" << ',';
        DataFile.width(Width); DataFile << "ACC_generator[4].P_sfc" << ',';
        DataFile.width(Width); DataFile << "ACC_generator[1].P_t" << ',';
        DataFile.width(Width); DataFile << "ACC_generator[2].P_t" << ',';
        DataFile.width(Width); DataFile << "ACC_generator[3].P_t" << ',';
        DataFile.width(Width); DataFile << "ACC_generator[4].P_t" << ',';
        DataFile.width(Width); DataFile << "ACC_generator[1].P_t_0" << ',';
        DataFile.width(Width); DataFile << "ACC_generator[2].P_t_0" << ',';
        DataFile.width(Width); DataFile << "ACC_generator[3].P_t_0" << ',';
        DataFile.width(Width); DataFile << "ACC_generator[4].P_t_0" << ',';
        DataFile.width(Width); DataFile << "ACC_generator[1].T_s_b[1]" << ',';
        DataFile.width(Width); DataFile << "ACC_generator[1].T_s_b[2]" << ',';
        DataFile.width(Width); DataFile << "ACC_generator[1].T_s_b[3]" << ',';
        DataFile.width(Width); DataFile << "ACC_generator[1].T_s_b[4]" << ',';
        DataFile.width(Width); DataFile << "ACC_generator[1].T_s_b[5]" << ',';
        DataFile.width(Width); DataFile << "ACC_generator[2].T_s_b[1]" << ',';
        DataFile.width(Width); DataFile << "ACC_generator[2].T_s_b[2]" << ',';
        DataFile.width(Width); DataFile << "ACC_generator[2].T_s_b[3]" << ',';
        DataFile.width(Width); DataFile << "ACC_generator[2].T_s_b[4]" << ',';
        DataFile.width(Width); DataFile << "ACC_generator[2].T_s_b[5]" << ',';
        DataFile.width(Width); DataFile << "ACC_generator[3].T_s_b[1]" << ',';
        DataFile.width(Width); DataFile << "ACC_generator[3].T_s_b[2]" << ',';
        DataFile.width(Width); DataFile << "ACC_generator[3].T_s_b[3]" << ',';
        DataFile.width(Width); DataFile << "ACC_generator[3].T_s_b[4]" << ',';
        DataFile.width(Width); DataFile << "ACC_generator[3].T_s_b[5]" << ',';
        DataFile.width(Width); DataFile << "ACC_generator[4].T_s_b[1]" << ',';
        DataFile.width(Width); DataFile << "ACC_generator[4].T_s_b[2]" << ',';
        DataFile.width(Width); DataFile << "ACC_generator[4].T_s_b[3]" << ',';
        DataFile.width(Width); DataFile << "ACC_generator[4].T_s_b[4]" << ',';
        DataFile.width(Width); DataFile << "ACC_generator[4].T_s_b[5]" << ',';
        DataFile.width(Width); DataFile << "ACC_generator[1].delta_f" << ',';
        DataFile.width(Width); DataFile << "ACC_generator[2].delta_f" << ',';
        DataFile.width(Width); DataFile << "ACC_generator[3].delta_f" << ',';
        DataFile.width(Width); DataFile << "ACC_generator[4].delta_f" << ',';
        DataFile.width(Width); DataFile << "ACC_generator[1].err_p" << ',';
        DataFile.width(Width); DataFile << "ACC_generator[2].err_p" << ',';
        DataFile.width(Width); DataFile << "ACC_generator[3].err_p" << ',';
        DataFile.width(Width); DataFile << "ACC_generator[4].err_p" << ',';
        DataFile.width(Width); DataFile << "ACC_generator[1].err_p_t" << ',';
        DataFile.width(Width); DataFile << "ACC_generator[2].err_p_t" << ',';
        DataFile.width(Width); DataFile << "ACC_generator[3].err_p_t" << ',';
        DataFile.width(Width); DataFile << "ACC_generator[4].err_p_t" << ',';
        DataFile.width(Width); DataFile << "ACC_generator[1].f" << ',';
        DataFile.width(Width); DataFile << "ACC_generator[2].f" << ',';
        DataFile.width(Width); DataFile << "ACC_generator[3].f" << ',';
        DataFile.width(Width); DataFile << "ACC_generator[4].f" << ',';
        DataFile.width(Width); DataFile << "ACC_generator[1].p_0" << ',';
        DataFile.width(Width); DataFile << "ACC_generator[2].p_0" << ',';
        DataFile.width(Width); DataFile << "ACC_generator[3].p_0" << ',';
        DataFile.width(Width); DataFile << "ACC_generator[4].p_0" << ',';
        DataFile.width(Width); DataFile << "ACC_generator[1].p_t" << ',';
        DataFile.width(Width); DataFile << "ACC_generator[2].p_t" << ',';
        DataFile.width(Width); DataFile << "ACC_generator[3].p_t" << ',';
        DataFile.width(Width); DataFile << "ACC_generator[4].p_t" << ',';
        DataFile.width(Width); DataFile << "ACC_generator[1].p_t_0" << ',';
        DataFile.width(Width); DataFile << "ACC_generator[2].p_t_0" << ',';
        DataFile.width(Width); DataFile << "ACC_generator[3].p_t_0" << ',';
        DataFile.width(Width); DataFile << "ACC_generator[4].p_t_0" << ',';
        DataFile.width(Width); DataFile << "ACC_generator[1].p_t_0_fc" << ',';
        DataFile.width(Width); DataFile << "ACC_generator[2].p_t_0_fc" << ',';
        DataFile.width(Width); DataFile << "ACC_generator[3].p_t_0_fc" << ',';
        DataFile.width(Width); DataFile << "ACC_generator[4].p_t_0_fc" << ',';
        DataFile.width(Width); DataFile << "ACC_generator[1].q_ev_0" << ',';
        DataFile.width(Width); DataFile << "ACC_generator[2].q_ev_0" << ',';
        DataFile.width(Width); DataFile << "ACC_generator[3].q_ev_0" << ',';
        DataFile.width(Width); DataFile << "ACC_generator[4].q_ev_0" << ',';
        DataFile.width(Width); DataFile << "ACC_generator[1].w_s" << ',';
        DataFile.width(Width); DataFile << "ACC_generator[2].w_s" << ',';
        DataFile.width(Width); DataFile << "ACC_generator[3].w_s" << ',';
        DataFile.width(Width); DataFile << "ACC_generator[4].w_s" << ',';
        DataFile.width(Width); DataFile << "ACC_generator[1].y_t_0" << ',';
        DataFile.width(Width); DataFile << "ACC_generator[2].y_t_0" << ',';
        DataFile.width(Width); DataFile << "ACC_generator[3].y_t_0" << ',';
        DataFile.width(Width); DataFile << "ACC_generator[4].y_t_0" << ',';
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
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(IntegerSharedParameters, 0) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(IntegerSharedParameters, 1) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(IntegerSharedParameters, 2) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(IntegerSharedParameters, 3) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(IntegerSharedParameters, 4) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(IntegerSharedParameters, 5) << ',';
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
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 83) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 84) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 85) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 86) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 87) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 88) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 89) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 90) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 91) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 92) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 93) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 94) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 95) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 96) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 97) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 98) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 99) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 100) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 101) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 102) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 103) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 104) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 105) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 106) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 107) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 108) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 109) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 110) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 111) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 112) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 113) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 114) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 115) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 116) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 117) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 118) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 119) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 120) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 121) << ',';

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
    Solver.SolverOption(AbsoluteTolerance, 0, 1e-07);
    Solver.SolverOption(AbsoluteTolerance, 1, 1e-07);
    Solver.SolverOption(AbsoluteTolerance, 2, 1e-07);
    Solver.SolverOption(AbsoluteTolerance, 3, 1e-07);
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
   
    
    int NumberOfSimulationLaunches = NumberOfProblems / NT + (NumberOfProblems % NT == 0 ? 0:1);
    ofstream DataFile;
    DataFile.open ( "PowerSystemStepLoad_N_4_M_4.csv" );
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

