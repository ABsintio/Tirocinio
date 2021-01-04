

#include <iostream>
#include <vector>
#include <iomanip>
#include <string>
#include <fstream>

#include "BIOMD370_SystemDefinition.cuh"
#include "SingleSystem_PerThread_Interface.cuh"

using namespace std;

#define SOLVER RKCK45 // Runge-Kutta Order 4th
#define PRECISION double
const int NT   = 10000;
const int SD   = 26;
const int NCP  = 1;
const int NSP  = 94;
const int NISP = 0;
const int NE   = 0;
const int NA   = 18;
const int NIA  = 0;
const int NDO  = 100;


void FillSolverObject(
    ProblemSolver<NT,SD,NCP,NSP,NISP,NE,NA,NIA,NDO,SOLVER,PRECISION>& Solver, 
    int FirstProblemNumber, int NumberOfThreads
) {
    int k_begin = FirstProblemNumber;
    int k_end   = FirstProblemNumber + NumberOfThreads;
	
    int ProblemNumber = 0;
    while (k_begin < k_end) {
        Solver.SetHost(ProblemNumber, TimeDomain, 0, 0.0);
        Solver.SetHost(ProblemNumber, TimeDomain, 1, 500.0);  

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
        DataFile.width(Width); DataFile << "X_Cdc14n_1" << ',';
        DataFile.width(Width); DataFile << "X_Cdc15_1" << ',';
        DataFile.width(Width); DataFile << "X_Cdc20_1" << ',';
        DataFile.width(Width); DataFile << "X_Cdh1_1" << ',';
        DataFile.width(Width); DataFile << "X_Clb2T_1" << ',';
        DataFile.width(Width); DataFile << "X_Clb5T_1" << ',';
        DataFile.width(Width); DataFile << "X_Cln_1" << ',';
        DataFile.width(Width); DataFile << "X_Esp1T_1" << ',';
        DataFile.width(Width); DataFile << "X_Esp1b_1" << ',';
        DataFile.width(Width); DataFile << "X_MBF_1" << ',';
        DataFile.width(Width); DataFile << "X_MEN_1" << ',';
        DataFile.width(Width); DataFile << "X_Mcm_1" << ',';
        DataFile.width(Width); DataFile << "X_Net1dep_1" << ',';
        DataFile.width(Width); DataFile << "X_Net1p_1" << ',';
        DataFile.width(Width); DataFile << "X_Net1pp_1" << ',';
        DataFile.width(Width); DataFile << "X_Pds1T_1" << ',';
        DataFile.width(Width); DataFile << "X_PoloT_1" << ',';
        DataFile.width(Width); DataFile << "X_Polo_1" << ',';
        DataFile.width(Width); DataFile << "X_RENT_1" << ',';
        DataFile.width(Width); DataFile << "X_RENTp_1" << ',';
        DataFile.width(Width); DataFile << "X_Sic1T_1" << ',';
        DataFile.width(Width); DataFile << "X_Swi5_1" << ',';
        DataFile.width(Width); DataFile << "X_Tem1_1" << ',';
        DataFile.width(Width); DataFile << "X_Trim2_1" << ',';
        DataFile.width(Width); DataFile << "X_Trim5_1" << ',';
        DataFile.width(Width); DataFile << "X_lamen_1" << ',';
        DataFile.width(Width); DataFile << "sPAR_Cdc14T_1" << ',';
        DataFile.width(Width); DataFile << "sPAR_Clb2nd_1" << ',';
        DataFile.width(Width); DataFile << "sPAR_Jcdc15_1" << ',';
        DataFile.width(Width); DataFile << "sPAR_Jcdh_1" << ',';
        DataFile.width(Width); DataFile << "sPAR_Jmbf_1" << ',';
        DataFile.width(Width); DataFile << "sPAR_Jmcm_1" << ',';
        DataFile.width(Width); DataFile << "sPAR_Jnet_1" << ',';
        DataFile.width(Width); DataFile << "sPAR_Jpolo_1" << ',';
        DataFile.width(Width); DataFile << "sPAR_Jswi_1" << ',';
        DataFile.width(Width); DataFile << "sPAR_Jtem1_1" << ',';
        DataFile.width(Width); DataFile << "sPAR_Net1T_1" << ',';
        DataFile.width(Width); DataFile << "sPAR_PPT_1" << ',';
        DataFile.width(Width); DataFile << "sPAR_Swi5T_1" << ',';
        DataFile.width(Width); DataFile << "sPAR_cell_1" << ',';
        DataFile.width(Width); DataFile << "sPAR_kac15_1" << ',';
        DataFile.width(Width); DataFile << "sPAR_kac15_2" << ',';
        DataFile.width(Width); DataFile << "sPAR_kambf_1" << ',';
        DataFile.width(Width); DataFile << "sPAR_kapolo_1" << ',';
        DataFile.width(Width); DataFile << "sPAR_kapolo_2" << ',';
        DataFile.width(Width); DataFile << "sPAR_kasic2_1" << ',';
        DataFile.width(Width); DataFile << "sPAR_kasic5_1" << ',';
        DataFile.width(Width); DataFile << "sPAR_kaswi_1" << ',';
        DataFile.width(Width); DataFile << "sPAR_kaswi_2" << ',';
        DataFile.width(Width); DataFile << "sPAR_katem_1" << ',';
        DataFile.width(Width); DataFile << "sPAR_katem_2" << ',';
        DataFile.width(Width); DataFile << "sPAR_kd20_1" << ',';
        DataFile.width(Width); DataFile << "sPAR_kd20_2" << ',';
        DataFile.width(Width); DataFile << "sPAR_kd_1" << ',';
        DataFile.width(Width); DataFile << "sPAR_kd_2" << ',';
        DataFile.width(Width); DataFile << "sPAR_kdcdh_1" << ',';
        DataFile.width(Width); DataFile << "sPAR_kdcdh_2" << ',';
        DataFile.width(Width); DataFile << "sPAR_kdclb2_1" << ',';
        DataFile.width(Width); DataFile << "sPAR_kdclb2_2" << ',';
        DataFile.width(Width); DataFile << "sPAR_kdclb2_3" << ',';
        DataFile.width(Width); DataFile << "sPAR_kdclb5_1" << ',';
        DataFile.width(Width); DataFile << "sPAR_kdclb5_2" << ',';
        DataFile.width(Width); DataFile << "sPAR_kdcln_1" << ',';
        DataFile.width(Width); DataFile << "sPAR_kdesp_1" << ',';
        DataFile.width(Width); DataFile << "sPAR_kdmcm_1" << ',';
        DataFile.width(Width); DataFile << "sPAR_kdpds_1" << ',';
        DataFile.width(Width); DataFile << "sPAR_kdpds_2" << ',';
        DataFile.width(Width); DataFile << "sPAR_kdpolo_1" << ',';
        DataFile.width(Width); DataFile << "sPAR_kdpolo_2" << ',';
        DataFile.width(Width); DataFile << "sPAR_kdsic2_1" << ',';
        DataFile.width(Width); DataFile << "sPAR_kdsic5_1" << ',';
        DataFile.width(Width); DataFile << "sPAR_kdsic_1" << ',';
        DataFile.width(Width); DataFile << "sPAR_kdsic_2" << ',';
        DataFile.width(Width); DataFile << "sPAR_kdsic_3" << ',';
        DataFile.width(Width); DataFile << "sPAR_kdsic_4" << ',';
        DataFile.width(Width); DataFile << "sPAR_kexp_1" << ',';
        DataFile.width(Width); DataFile << "sPAR_kexp_2" << ',';
        DataFile.width(Width); DataFile << "sPAR_ki_1" << ',';
        DataFile.width(Width); DataFile << "sPAR_kic15_1" << ',';
        DataFile.width(Width); DataFile << "sPAR_kic15_2" << ',';
        DataFile.width(Width); DataFile << "sPAR_kimbf_1" << ',';
        DataFile.width(Width); DataFile << "sPAR_kimbf_2" << ',';
        DataFile.width(Width); DataFile << "sPAR_kimbf_3" << ',';
        DataFile.width(Width); DataFile << "sPAR_kimp_1" << ',';
        DataFile.width(Width); DataFile << "sPAR_kipolo_1" << ',';
        DataFile.width(Width); DataFile << "sPAR_kiswi_1" << ',';
        DataFile.width(Width); DataFile << "sPAR_kiswi_2" << ',';
        DataFile.width(Width); DataFile << "sPAR_kiswi_3" << ',';
        DataFile.width(Width); DataFile << "sPAR_kitem_1" << ',';
        DataFile.width(Width); DataFile << "sPAR_kitem_2" << ',';
        DataFile.width(Width); DataFile << "sPAR_kitem_3" << ',';
        DataFile.width(Width); DataFile << "sPAR_kp_1" << ',';
        DataFile.width(Width); DataFile << "sPAR_kp_3" << ',';
        DataFile.width(Width); DataFile << "sPAR_kp_4" << ',';
        DataFile.width(Width); DataFile << "sPAR_kpcdh_1" << ',';
        DataFile.width(Width); DataFile << "sPAR_kpcdh_2" << ',';
        DataFile.width(Width); DataFile << "sPAR_kpcdh_3" << ',';
        DataFile.width(Width); DataFile << "sPAR_kpp_1" << ',';
        DataFile.width(Width); DataFile << "sPAR_ks20_1" << ',';
        DataFile.width(Width); DataFile << "sPAR_ks20_2" << ',';
        DataFile.width(Width); DataFile << "sPAR_ksclb2_1" << ',';
        DataFile.width(Width); DataFile << "sPAR_ksclb2_2" << ',';
        DataFile.width(Width); DataFile << "sPAR_ksclb5_1" << ',';
        DataFile.width(Width); DataFile << "sPAR_ksclb5_2" << ',';
        DataFile.width(Width); DataFile << "sPAR_kscln_1" << ',';
        DataFile.width(Width); DataFile << "sPAR_kscln_2" << ',';
        DataFile.width(Width); DataFile << "sPAR_ksesp_1" << ',';
        DataFile.width(Width); DataFile << "sPAR_ksmcm_1" << ',';
        DataFile.width(Width); DataFile << "sPAR_ksmcm_3" << ',';
        DataFile.width(Width); DataFile << "sPAR_kspds_1" << ',';
        DataFile.width(Width); DataFile << "sPAR_kspds_2" << ',';
        DataFile.width(Width); DataFile << "sPAR_kspolo_1" << ',';
        DataFile.width(Width); DataFile << "sPAR_kspolo_2" << ',';
        DataFile.width(Width); DataFile << "sPAR_kssic_1" << ',';
        DataFile.width(Width); DataFile << "sPAR_kssic_2" << ',';
        DataFile.width(Width); DataFile << "sPAR_lanet_1" << ',';
        DataFile.width(Width); DataFile << "sPAR_lapds_1" << ',';
        DataFile.width(Width); DataFile << "sPAR_ldmen_1" << ',';
        DataFile.width(Width); DataFile << "sPAR_ldnet_1" << ',';
        DataFile.width(Width); DataFile << "sPAR_ldpds_1" << ',';
        DataFile.width(Width); DataFile << "ACC_Cdc14c_1" << ',';
        DataFile.width(Width); DataFile << "ACC_Clb2_2" << ',';
        DataFile.width(Width); DataFile << "ACC_Clb5_1" << ',';
        DataFile.width(Width); DataFile << "ACC_Esp1_1" << ',';
        DataFile.width(Width); DataFile << "ACC_Net1_2" << ',';
        DataFile.width(Width); DataFile << "ACC_PP_1" << ',';
        DataFile.width(Width); DataFile << "ACC_Pds1_1" << ',';
        DataFile.width(Width); DataFile << "ACC_Sic1_1" << ',';
        DataFile.width(Width); DataFile << "ACC_V2_1" << ',';
        DataFile.width(Width); DataFile << "ACC_V6_1" << ',';
        DataFile.width(Width); DataFile << "ACC_Vacdh_1" << ',';
        DataFile.width(Width); DataFile << "ACC_Vaswi_1" << ',';
        DataFile.width(Width); DataFile << "ACC_Vd_1" << ',';
        DataFile.width(Width); DataFile << "ACC_Vdsic_1" << ',';
        DataFile.width(Width); DataFile << "ACC_Vexp_1" << ',';
        DataFile.width(Width); DataFile << "ACC_Vicdh_1" << ',';
        DataFile.width(Width); DataFile << "ACC_Viswi_1" << ',';
        DataFile.width(Width); DataFile << "ACC_Vp_1" << ',';
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
    DataFile.open ( "BIOMD370.csv" );
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

