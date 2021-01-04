

#include <iostream>
#include <vector>
#include <iomanip>
#include <string>
#include <fstream>

#include "BIOMD268_SystemDefinition.cuh"
#include "SingleSystem_PerThread_Interface.cuh"

using namespace std;

#define SOLVER RKCK45 // Runge-Kutta Order 4th
#define PRECISION double
const int NT   = 1;
const int SD   = 42;
const int NCP  = 1;
const int NSP  = 156;
const int NISP = 0;
const int NE   = 0;
const int NA   = 9;
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
        DataFile.width(Width); DataFile << "X_BET" << ',';
        DataFile.width(Width); DataFile << "X_CO" << ',';
        DataFile.width(Width); DataFile << "X_DUMP" << ',';
        DataFile.width(Width); DataFile << "X_Fol" << ',';
        DataFile.width(Width); DataFile << "X_GAR" << ',';
        DataFile.width(Width); DataFile << "X_H2O2" << ',';
        DataFile.width(Width); DataFile << "X_HCHO" << ',';
        DataFile.width(Width); DataFile << "X_NADPH" << ',';
        DataFile.width(Width); DataFile << "X_aic" << ',';
        DataFile.width(Width); DataFile << "X_b_cys" << ',';
        DataFile.width(Width); DataFile << "X_b_glu" << ',';
        DataFile.width(Width); DataFile << "X_b_gly" << ',';
        DataFile.width(Width); DataFile << "X_b_gsg" << ',';
        DataFile.width(Width); DataFile << "X_b_gsh" << ',';
        DataFile.width(Width); DataFile << "X_c_10f" << ',';
        DataFile.width(Width); DataFile << "X_c_1cf" << ',';
        DataFile.width(Width); DataFile << "X_c_2cf" << ',';
        DataFile.width(Width); DataFile << "X_c_5mf" << ',';
        DataFile.width(Width); DataFile << "X_c_coo" << ',';
        DataFile.width(Width); DataFile << "X_c_cys" << ',';
        DataFile.width(Width); DataFile << "X_c_dhf" << ',';
        DataFile.width(Width); DataFile << "X_c_glu" << ',';
        DataFile.width(Width); DataFile << "X_c_gly" << ',';
        DataFile.width(Width); DataFile << "X_c_gsg" << ',';
        DataFile.width(Width); DataFile << "X_c_gsh" << ',';
        DataFile.width(Width); DataFile << "X_c_ser" << ',';
        DataFile.width(Width); DataFile << "X_c_thf" << ',';
        DataFile.width(Width); DataFile << "X_cyt" << ',';
        DataFile.width(Width); DataFile << "X_dmg" << ',';
        DataFile.width(Width); DataFile << "X_glc" << ',';
        DataFile.width(Width); DataFile << "X_hcy" << ',';
        DataFile.width(Width); DataFile << "X_m_10f" << ',';
        DataFile.width(Width); DataFile << "X_m_1cf" << ',';
        DataFile.width(Width); DataFile << "X_m_2cf" << ',';
        DataFile.width(Width); DataFile << "X_m_coo" << ',';
        DataFile.width(Width); DataFile << "X_m_gly" << ',';
        DataFile.width(Width); DataFile << "X_m_ser" << ',';
        DataFile.width(Width); DataFile << "X_m_thf" << ',';
        DataFile.width(Width); DataFile << "X_met" << ',';
        DataFile.width(Width); DataFile << "X_sah" << ',';
        DataFile.width(Width); DataFile << "X_sam" << ',';
        DataFile.width(Width); DataFile << "X_src" << ',';
        DataFile.width(Width); DataFile << "sPAR_K_10f_ART" << ',';
        DataFile.width(Width); DataFile << "sPAR_K_10f_FTD" << ',';
        DataFile.width(Width); DataFile << "sPAR_K_10f_MTCH" << ',';
        DataFile.width(Width); DataFile << "sPAR_K_10f_PGT" << ',';
        DataFile.width(Width); DataFile << "sPAR_K_10f_mFTS" << ',';
        DataFile.width(Width); DataFile << "sPAR_K_1cf_MTCH" << ',';
        DataFile.width(Width); DataFile << "sPAR_K_1cf_MTD" << ',';
        DataFile.width(Width); DataFile << "sPAR_K_2cf_MTD" << ',';
        DataFile.width(Width); DataFile << "sPAR_K_2cf_MTHFR" << ',';
        DataFile.width(Width); DataFile << "sPAR_K_2cf_SHMT" << ',';
        DataFile.width(Width); DataFile << "sPAR_K_2cf_TS" << ',';
        DataFile.width(Width); DataFile << "sPAR_K_5mf_MS" << ',';
        DataFile.width(Width); DataFile << "sPAR_K_DUMP_TS" << ',';
        DataFile.width(Width); DataFile << "sPAR_K_GAR_PGT" << ',';
        DataFile.width(Width); DataFile << "sPAR_K_H2O2_GPX" << ',';
        DataFile.width(Width); DataFile << "sPAR_K_NADPH_DHFR" << ',';
        DataFile.width(Width); DataFile << "sPAR_K_NADPH_GR" << ',';
        DataFile.width(Width); DataFile << "sPAR_K_NADPH_MTHFR" << ',';
        DataFile.width(Width); DataFile << "sPAR_K_aic_ART" << ',';
        DataFile.width(Width); DataFile << "sPAR_K_bcysc" << ',';
        DataFile.width(Width); DataFile << "sPAR_K_bet_BHMT" << ',';
        DataFile.width(Width); DataFile << "sPAR_K_bglutc" << ',';
        DataFile.width(Width); DataFile << "sPAR_K_bglyc" << ',';
        DataFile.width(Width); DataFile << "sPAR_K_bmetc" << ',';
        DataFile.width(Width); DataFile << "sPAR_K_bserc" << ',';
        DataFile.width(Width); DataFile << "sPAR_K_cgly" << ',';
        DataFile.width(Width); DataFile << "sPAR_K_coo_cFTS" << ',';
        DataFile.width(Width); DataFile << "sPAR_K_coo_mFTS" << ',';
        DataFile.width(Width); DataFile << "sPAR_K_cser" << ',';
        DataFile.width(Width); DataFile << "sPAR_K_cys_GCS" << ',';
        DataFile.width(Width); DataFile << "sPAR_K_cyt_CTGL" << ',';
        DataFile.width(Width); DataFile << "sPAR_K_dhf_DHFR" << ',';
        DataFile.width(Width); DataFile << "sPAR_K_dmg_DMGD" << ',';
        DataFile.width(Width); DataFile << "sPAR_K_glc_GS" << ',';
        DataFile.width(Width); DataFile << "sPAR_K_glu_GCS" << ',';
        DataFile.width(Width); DataFile << "sPAR_K_gly_GDC" << ',';
        DataFile.width(Width); DataFile << "sPAR_K_gly_GNMT" << ',';
        DataFile.width(Width); DataFile << "sPAR_K_gly_GS" << ',';
        DataFile.width(Width); DataFile << "sPAR_K_gly_SHMT" << ',';
        DataFile.width(Width); DataFile << "sPAR_K_gsgHb" << ',';
        DataFile.width(Width); DataFile << "sPAR_K_gsgLb" << ',';
        DataFile.width(Width); DataFile << "sPAR_K_gsg_GR" << ',';
        DataFile.width(Width); DataFile << "sPAR_K_gshHb" << ',';
        DataFile.width(Width); DataFile << "sPAR_K_gshLb" << ',';
        DataFile.width(Width); DataFile << "sPAR_K_gsh_GPX" << ',';
        DataFile.width(Width); DataFile << "sPAR_K_hcy_BHMT" << ',';
        DataFile.width(Width); DataFile << "sPAR_K_hcy_CBS" << ',';
        DataFile.width(Width); DataFile << "sPAR_K_hcy_MS" << ',';
        DataFile.width(Width); DataFile << "sPAR_K_hcy_SAHH" << ',';
        DataFile.width(Width); DataFile << "sPAR_K_mgly" << ',';
        DataFile.width(Width); DataFile << "sPAR_K_mser" << ',';
        DataFile.width(Width); DataFile << "sPAR_K_sah_SAHH" << ',';
        DataFile.width(Width); DataFile << "sPAR_K_sam_GNMT" << ',';
        DataFile.width(Width); DataFile << "sPAR_K_ser_CBS" << ',';
        DataFile.width(Width); DataFile << "sPAR_K_ser_SHMT" << ',';
        DataFile.width(Width); DataFile << "sPAR_K_src_SDH" << ',';
        DataFile.width(Width); DataFile << "sPAR_K_thf_DMGD" << ',';
        DataFile.width(Width); DataFile << "sPAR_K_thf_GDC" << ',';
        DataFile.width(Width); DataFile << "sPAR_K_thf_SDH" << ',';
        DataFile.width(Width); DataFile << "sPAR_K_thf_SHMT" << ',';
        DataFile.width(Width); DataFile << "sPAR_K_thf_cFTS" << ',';
        DataFile.width(Width); DataFile << "sPAR_K_thf_mFTS" << ',';
        DataFile.width(Width); DataFile << "sPAR_Ka_CBS" << ',';
        DataFile.width(Width); DataFile << "sPAR_Ka_GCS" << ',';
        DataFile.width(Width); DataFile << "sPAR_Ka_MAT3" << ',';
        DataFile.width(Width); DataFile << "sPAR_Ke_GCS" << ',';
        DataFile.width(Width); DataFile << "sPAR_Ke_GS" << ',';
        DataFile.width(Width); DataFile << "sPAR_Ki_BHMT" << ',';
        DataFile.width(Width); DataFile << "sPAR_Ki_DNMT" << ',';
        DataFile.width(Width); DataFile << "sPAR_Ki_GCS" << ',';
        DataFile.width(Width); DataFile << "sPAR_Ki_GNMT" << ',';
        DataFile.width(Width); DataFile << "sPAR_Ki_MAT1" << ',';
        DataFile.width(Width); DataFile << "sPAR_Ki_MAT3" << ',';
        DataFile.width(Width); DataFile << "sPAR_Ki_MS" << ',';
        DataFile.width(Width); DataFile << "sPAR_Km_DNMT" << ',';
        DataFile.width(Width); DataFile << "sPAR_Km_MAT1" << ',';
        DataFile.width(Width); DataFile << "sPAR_Km_MAT3" << ',';
        DataFile.width(Width); DataFile << "sPAR_Kp_GCS" << ',';
        DataFile.width(Width); DataFile << "sPAR_Kp_GS" << ',';
        DataFile.width(Width); DataFile << "sPAR_V_bcysc" << ',';
        DataFile.width(Width); DataFile << "sPAR_V_bglutc" << ',';
        DataFile.width(Width); DataFile << "sPAR_V_bglyc" << ',';
        DataFile.width(Width); DataFile << "sPAR_V_bmetc" << ',';
        DataFile.width(Width); DataFile << "sPAR_V_bserc" << ',';
        DataFile.width(Width); DataFile << "sPAR_V_cgly" << ',';
        DataFile.width(Width); DataFile << "sPAR_V_cser" << ',';
        DataFile.width(Width); DataFile << "sPAR_V_gsgHb" << ',';
        DataFile.width(Width); DataFile << "sPAR_V_gsgLb" << ',';
        DataFile.width(Width); DataFile << "sPAR_V_gshHb" << ',';
        DataFile.width(Width); DataFile << "sPAR_V_gshLb" << ',';
        DataFile.width(Width); DataFile << "sPAR_V_mgly" << ',';
        DataFile.width(Width); DataFile << "sPAR_V_mser" << ',';
        DataFile.width(Width); DataFile << "sPAR_V_oCys_b_basal" << ',';
        DataFile.width(Width); DataFile << "sPAR_V_oGlu_b_basal" << ',';
        DataFile.width(Width); DataFile << "sPAR_V_oGly_b_basal" << ',';
        DataFile.width(Width); DataFile << "sPAR_Vf_SAHH" << ',';
        DataFile.width(Width); DataFile << "sPAR_Vf_cMTCH" << ',';
        DataFile.width(Width); DataFile << "sPAR_Vf_cMTD" << ',';
        DataFile.width(Width); DataFile << "sPAR_Vf_cSHMT" << ',';
        DataFile.width(Width); DataFile << "sPAR_Vf_mFTS" << ',';
        DataFile.width(Width); DataFile << "sPAR_Vf_mMTCH" << ',';
        DataFile.width(Width); DataFile << "sPAR_Vf_mMTD" << ',';
        DataFile.width(Width); DataFile << "sPAR_Vf_mSHMT" << ',';
        DataFile.width(Width); DataFile << "sPAR_Vm_ART" << ',';
        DataFile.width(Width); DataFile << "sPAR_Vm_BHMT" << ',';
        DataFile.width(Width); DataFile << "sPAR_Vm_CBS" << ',';
        DataFile.width(Width); DataFile << "sPAR_Vm_CTGL" << ',';
        DataFile.width(Width); DataFile << "sPAR_Vm_DHFR" << ',';
        DataFile.width(Width); DataFile << "sPAR_Vm_DMGD" << ',';
        DataFile.width(Width); DataFile << "sPAR_Vm_DNMT" << ',';
        DataFile.width(Width); DataFile << "sPAR_Vm_GCS" << ',';
        DataFile.width(Width); DataFile << "sPAR_Vm_GDC" << ',';
        DataFile.width(Width); DataFile << "sPAR_Vm_GNMT" << ',';
        DataFile.width(Width); DataFile << "sPAR_Vm_GPX" << ',';
        DataFile.width(Width); DataFile << "sPAR_Vm_GR" << ',';
        DataFile.width(Width); DataFile << "sPAR_Vm_GS" << ',';
        DataFile.width(Width); DataFile << "sPAR_Vm_MAT1" << ',';
        DataFile.width(Width); DataFile << "sPAR_Vm_MAT3" << ',';
        DataFile.width(Width); DataFile << "sPAR_Vm_MS" << ',';
        DataFile.width(Width); DataFile << "sPAR_Vm_MTHFR" << ',';
        DataFile.width(Width); DataFile << "sPAR_Vm_PGT" << ',';
        DataFile.width(Width); DataFile << "sPAR_Vm_SDH" << ',';
        DataFile.width(Width); DataFile << "sPAR_Vm_TS" << ',';
        DataFile.width(Width); DataFile << "sPAR_Vm_cFTD" << ',';
        DataFile.width(Width); DataFile << "sPAR_Vm_cFTS" << ',';
        DataFile.width(Width); DataFile << "sPAR_Vm_mFTD" << ',';
        DataFile.width(Width); DataFile << "sPAR_Vr_MTCH" << ',';
        DataFile.width(Width); DataFile << "sPAR_Vr_MTD" << ',';
        DataFile.width(Width); DataFile << "sPAR_Vr_SAHH" << ',';
        DataFile.width(Width); DataFile << "sPAR_Vr_cMTD" << ',';
        DataFile.width(Width); DataFile << "sPAR_Vr_cSHMT" << ',';
        DataFile.width(Width); DataFile << "sPAR_Vr_mFTS" << ',';
        DataFile.width(Width); DataFile << "sPAR_Vr_mSHMT" << ',';
        DataFile.width(Width); DataFile << "sPAR_b_met_basal" << ',';
        DataFile.width(Width); DataFile << "sPAR_b_ser_basal" << ',';
        DataFile.width(Width); DataFile << "sPAR_blood" << ',';
        DataFile.width(Width); DataFile << "sPAR_breakfast" << ',';
        DataFile.width(Width); DataFile << "sPAR_cell" << ',';
        DataFile.width(Width); DataFile << "sPAR_cytosol" << ',';
        DataFile.width(Width); DataFile << "sPAR_dinner" << ',';
        DataFile.width(Width); DataFile << "sPAR_fasting" << ',';
        DataFile.width(Width); DataFile << "sPAR_h_gshLb" << ',';
        DataFile.width(Width); DataFile << "sPAR_k1_cNE" << ',';
        DataFile.width(Width); DataFile << "sPAR_k1_mNE" << ',';
        DataFile.width(Width); DataFile << "sPAR_k2_cNE" << ',';
        DataFile.width(Width); DataFile << "sPAR_k2_mNE" << ',';
        DataFile.width(Width); DataFile << "sPAR_k_in_coo" << ',';
        DataFile.width(Width); DataFile << "sPAR_k_out_coo" << ',';
        DataFile.width(Width); DataFile << "sPAR_k_out_cys" << ',';
        DataFile.width(Width); DataFile << "sPAR_k_out_glu" << ',';
        DataFile.width(Width); DataFile << "sPAR_k_out_gly" << ',';
        DataFile.width(Width); DataFile << "sPAR_k_out_met" << ',';
        DataFile.width(Width); DataFile << "sPAR_k_out_ser" << ',';
        DataFile.width(Width); DataFile << "sPAR_lunch" << ',';
        DataFile.width(Width); DataFile << "sPAR_mito" << ',';
        DataFile.width(Width); DataFile << "sPAR_ssH2O2" << ',';
        DataFile.width(Width); DataFile << "ACC_V_oCys_b" << ',';
        DataFile.width(Width); DataFile << "ACC_V_oGlu_b" << ',';
        DataFile.width(Width); DataFile << "ACC_V_oGly_b" << ',';
        DataFile.width(Width); DataFile << "ACC_aa_input" << ',';
        DataFile.width(Width); DataFile << "ACC_b_met" << ',';
        DataFile.width(Width); DataFile << "ACC_b_ser" << ',';
        DataFile.width(Width); DataFile << "ACC_daytime" << ',';
        DataFile.width(Width); DataFile << "ACC_tot_cfol" << ',';
        DataFile.width(Width); DataFile << "ACC_tot_mfol" << ',';
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
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 136) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 137) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 138) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 139) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 140) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 141) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 142) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 143) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 144) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 145) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 146) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 147) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 148) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 149) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 150) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 151) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 152) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 153) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 154) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(SharedParameters, 155) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 0) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 1) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 2) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 3) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 4) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 5) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 6) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 7) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 8) << ',';

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
   
    
    int NumberOfSimulationLaunches = NumberOfProblems / NT + (NumberOfProblems % NT == 0 ? 0:1);
    ofstream DataFile;
    DataFile.open ( "BIOMD268.csv" );
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

