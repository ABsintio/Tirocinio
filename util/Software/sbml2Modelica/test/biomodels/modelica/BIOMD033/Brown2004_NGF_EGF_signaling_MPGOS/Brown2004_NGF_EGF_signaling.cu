

#include <iostream>
#include <vector>
#include <iomanip>
#include <string>
#include <fstream>

#define PI 3.14159265358979323846

#include "Brown2004_NGF_EGF_signaling_SystemDefinition.cuh"
#include "SingleSystem_PerThread_Interface.cuh"

using namespace std;

#define SOLVER RKCK45 // Runge-Kutta Order 4th
#define PRECISION double
const int NT   = 1;
const int SD   = 137;
const int NCP  = 1;
const int NSP  = 0;
const int NISP = 0;
const int NE   = 0;
const int NA   = 58;
const int NIA  = 0;
const int NDO  = 10000;


void FillSolverObject(
    ProblemSolver<NT,SD,NCP,NSP,NISP,NE,NA,NIA,NDO,SOLVER,PRECISION>& Solver, 
    int FirstProblemNumber, int NumberOfThreads
) {
    int k_begin = FirstProblemNumber;
    int k_end   = FirstProblemNumber + NumberOfThreads;
	
    int ProblemNumber = 0;
    while (k_begin < k_end) {
        Solver.SetHost(ProblemNumber, TimeDomain, 0, 0.0);
        Solver.SetHost(ProblemNumber, TimeDomain, 1, 120.0);  

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
        DataFile.width(Width); DataFile << "X_Params.elmt_KmAkt" << ',';
        DataFile.width(Width); DataFile << "X_Params.elmt_KmC3G" << ',';
        DataFile.width(Width); DataFile << "X_Params.elmt_KmC3GNGF" << ',';
        DataFile.width(Width); DataFile << "X_Params.elmt_KmEGF" << ',';
        DataFile.width(Width); DataFile << "X_Params.elmt_KmNGF" << ',';
        DataFile.width(Width); DataFile << "X_Params.elmt_KmPI3K" << ',';
        DataFile.width(Width); DataFile << "X_Params.elmt_KmPI3KRas" << ',';
        DataFile.width(Width); DataFile << "X_Params.elmt_KmRaf1ByAkt" << ',';
        DataFile.width(Width); DataFile << "X_Params.elmt_KmRap1ToBRaf" << ',';
        DataFile.width(Width); DataFile << "X_Params.elmt_KmRapGap" << ',';
        DataFile.width(Width); DataFile << "X_Params.elmt_KmRasGap" << ',';
        DataFile.width(Width); DataFile << "X_Params.elmt_KmRasToRaf1" << ',';
        DataFile.width(Width); DataFile << "X_Params.elmt_KmSos" << ',';
        DataFile.width(Width); DataFile << "X_Params.elmt_KmdBRaf" << ',';
        DataFile.width(Width); DataFile << "X_Params.elmt_KmdErk" << ',';
        DataFile.width(Width); DataFile << "X_Params.elmt_KmdMek" << ',';
        DataFile.width(Width); DataFile << "X_Params.elmt_KmdRaf1" << ',';
        DataFile.width(Width); DataFile << "X_Params.elmt_KmdSos" << ',';
        DataFile.width(Width); DataFile << "X_Params.elmt_KmpBRaf" << ',';
        DataFile.width(Width); DataFile << "X_Params.elmt_KmpMekCytoplasmic" << ',';
        DataFile.width(Width); DataFile << "X_Params.elmt_KmpP90Rsk" << ',';
        DataFile.width(Width); DataFile << "X_Params.elmt_KmpRaf1" << ',';
        DataFile.width(Width); DataFile << "X_Params.elmt_kAkt" << ',';
        DataFile.width(Width); DataFile << "X_Params.elmt_kC3G" << ',';
        DataFile.width(Width); DataFile << "X_Params.elmt_kC3GNGF" << ',';
        DataFile.width(Width); DataFile << "X_Params.elmt_kEGF" << ',';
        DataFile.width(Width); DataFile << "X_Params.elmt_kNGF" << ',';
        DataFile.width(Width); DataFile << "X_Params.elmt_kPI3K" << ',';
        DataFile.width(Width); DataFile << "X_Params.elmt_kPI3KRas" << ',';
        DataFile.width(Width); DataFile << "X_Params.elmt_kRap1ToBRaf" << ',';
        DataFile.width(Width); DataFile << "X_Params.elmt_kRapGap" << ',';
        DataFile.width(Width); DataFile << "X_Params.elmt_kRasGap" << ',';
        DataFile.width(Width); DataFile << "X_Params.elmt_kRasToRaf1" << ',';
        DataFile.width(Width); DataFile << "X_Params.elmt_kSos" << ',';
        DataFile.width(Width); DataFile << "X_Params.elmt_kdBRaf" << ',';
        DataFile.width(Width); DataFile << "X_Params.elmt_kdErk" << ',';
        DataFile.width(Width); DataFile << "X_Params.elmt_kdMek" << ',';
        DataFile.width(Width); DataFile << "X_Params.elmt_kdRaf1" << ',';
        DataFile.width(Width); DataFile << "X_Params.elmt_kdRaf1ByAkt" << ',';
        DataFile.width(Width); DataFile << "X_Params.elmt_kdSos" << ',';
        DataFile.width(Width); DataFile << "X_Params.elmt_kpBRaf" << ',';
        DataFile.width(Width); DataFile << "X_Params.elmt_kpMekCytoplasmic" << ',';
        DataFile.width(Width); DataFile << "X_Params.elmt_kpP90Rsk" << ',';
        DataFile.width(Width); DataFile << "X_Params.elmt_kpRaf1" << ',';
        DataFile.width(Width); DataFile << "X_Params.elmt_krbEGF" << ',';
        DataFile.width(Width); DataFile << "X_Params.elmt_krbNGF" << ',';
        DataFile.width(Width); DataFile << "X_Params.elmt_kruEGF" << ',';
        DataFile.width(Width); DataFile << "X_Params.elmt_kruNGF" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_product10" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_product11" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_product13" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_product15" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_product17" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_product19" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_product2" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_product21" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_product23" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_product25" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_product27" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_product29" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_product31" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_product33" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_product35" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_product37" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_product39" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_product4" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_product41" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_product43" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_product45" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_product47" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_product49" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_product5" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_product51" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_product53" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_product55" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_product8" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_reactant0" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_reactant1" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_reactant12" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_reactant14" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_reactant16" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_reactant18" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_reactant20" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_reactant22" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_reactant24" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_reactant26" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_reactant28" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_reactant3" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_reactant30" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_reactant32" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_reactant34" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_reactant36" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_reactant38" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_reactant40" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_reactant42" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_reactant44" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_reactant46" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_reactant48" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_reactant50" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_reactant52" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_reactant54" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_reactant6" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_reactant7" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_reactant9" << ',';
        DataFile.width(Width); DataFile << "X_elmt_cell.elmt_AktActive_amount" << ',';
        DataFile.width(Width); DataFile << "X_elmt_cell.elmt_AktInactive_amount" << ',';
        DataFile.width(Width); DataFile << "X_elmt_cell.elmt_BRafActive_amount" << ',';
        DataFile.width(Width); DataFile << "X_elmt_cell.elmt_BRafInactive_amount" << ',';
        DataFile.width(Width); DataFile << "X_elmt_cell.elmt_C3GActive_amount" << ',';
        DataFile.width(Width); DataFile << "X_elmt_cell.elmt_C3GInactive_amount" << ',';
        DataFile.width(Width); DataFile << "X_elmt_cell.elmt_EGF_amount" << ',';
        DataFile.width(Width); DataFile << "X_elmt_cell.elmt_ErkActive_amount" << ',';
        DataFile.width(Width); DataFile << "X_elmt_cell.elmt_ErkInactive_amount" << ',';
        DataFile.width(Width); DataFile << "X_elmt_cell.elmt_MekActive_amount" << ',';
        DataFile.width(Width); DataFile << "X_elmt_cell.elmt_MekInactive_amount" << ',';
        DataFile.width(Width); DataFile << "X_elmt_cell.elmt_NGF_amount" << ',';
        DataFile.width(Width); DataFile << "X_elmt_cell.elmt_P90RskActive_amount" << ',';
        DataFile.width(Width); DataFile << "X_elmt_cell.elmt_P90RskInactive_amount" << ',';
        DataFile.width(Width); DataFile << "X_elmt_cell.elmt_PI3KActive_amount" << ',';
        DataFile.width(Width); DataFile << "X_elmt_cell.elmt_PI3KInactive_amount" << ',';
        DataFile.width(Width); DataFile << "X_elmt_cell.elmt_PP2AActive_amount" << ',';
        DataFile.width(Width); DataFile << "X_elmt_cell.elmt_Raf1Active_amount" << ',';
        DataFile.width(Width); DataFile << "X_elmt_cell.elmt_Raf1Inactive_amount" << ',';
        DataFile.width(Width); DataFile << "X_elmt_cell.elmt_Raf1PPtase_amount" << ',';
        DataFile.width(Width); DataFile << "X_elmt_cell.elmt_Rap1Active_amount" << ',';
        DataFile.width(Width); DataFile << "X_elmt_cell.elmt_Rap1Inactive_amount" << ',';
        DataFile.width(Width); DataFile << "X_elmt_cell.elmt_RapGapActive_amount" << ',';
        DataFile.width(Width); DataFile << "X_elmt_cell.elmt_RasActive_amount" << ',';
        DataFile.width(Width); DataFile << "X_elmt_cell.elmt_RasGapActive_amount" << ',';
        DataFile.width(Width); DataFile << "X_elmt_cell.elmt_RasInactive_amount" << ',';
        DataFile.width(Width); DataFile << "X_elmt_cell.elmt_SosActive_amount" << ',';
        DataFile.width(Width); DataFile << "X_elmt_cell.elmt_SosInactive_amount" << ',';
        DataFile.width(Width); DataFile << "X_elmt_cell.elmt_boundEGFReceptor_amount" << ',';
        DataFile.width(Width); DataFile << "X_elmt_cell.elmt_boundNGFReceptor_amount" << ',';
        DataFile.width(Width); DataFile << "X_elmt_cell.elmt_cell" << ',';
        DataFile.width(Width); DataFile << "X_elmt_cell.elmt_freeEGFReceptor_amount" << ',';
        DataFile.width(Width); DataFile << "X_elmt_cell.elmt_freeNGFReceptor_amount" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_cell.elmt_AktActivationReaction" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_cell.elmt_AktActive_conc" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_cell.elmt_AktInactive_conc" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_cell.elmt_BRafActive_conc" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_cell.elmt_BRafByRap1ActivationReaction" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_cell.elmt_BRafInactive_conc" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_cell.elmt_BRafbyPPtaseDeactivationReaction" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_cell.elmt_C3GActivationReaction" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_cell.elmt_C3GActive_conc" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_cell.elmt_C3GInactive_conc" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_cell.elmt_EGFBindingReaction" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_cell.elmt_EGFUnbindingReaction" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_cell.elmt_EGF_conc" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_cell.elmt_ErkActivationReaction" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_cell.elmt_ErkActive_conc" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_cell.elmt_ErkDeactivationReaction" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_cell.elmt_ErkInactive_conc" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_cell.elmt_MekActive_conc" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_cell.elmt_MekDeactivationReaction" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_cell.elmt_MekInactive_conc" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_cell.elmt_MekbyBRafActivationReaction" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_cell.elmt_MekbyRaf1ActivationReaction" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_cell.elmt_NGFBindingReaction" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_cell.elmt_NGFUnbindingReaction" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_cell.elmt_NGF_conc" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_cell.elmt_P90RskActivationReaction" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_cell.elmt_P90RskActive_conc" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_cell.elmt_P90RskInactive_conc" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_cell.elmt_PI3KActive_conc" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_cell.elmt_PI3KInactive_conc" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_cell.elmt_PI3KbyEGFRActivationReaction" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_cell.elmt_PI3KbyRasActivationReaction" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_cell.elmt_PP2AActive_conc" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_cell.elmt_Raf1Active_conc" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_cell.elmt_Raf1ByAktDeactivationReaction" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_cell.elmt_Raf1ByRasActivationReaction" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_cell.elmt_Raf1Inactive_conc" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_cell.elmt_Raf1PPtase_conc" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_cell.elmt_Raf1byPPtaseDeactivationReaction" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_cell.elmt_Rap1ActivationReaction" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_cell.elmt_Rap1Active_conc" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_cell.elmt_Rap1DeactivationReaction" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_cell.elmt_Rap1Inactive_conc" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_cell.elmt_RapGapActive_conc" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_cell.elmt_RasActivationReaction" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_cell.elmt_RasActive_conc" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_cell.elmt_RasDeactivationReaction" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_cell.elmt_RasGapActive_conc" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_cell.elmt_RasInactive_conc" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_cell.elmt_SosActivationByEGFReaction" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_cell.elmt_SosActivationByNGFReaction" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_cell.elmt_SosActive_conc" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_cell.elmt_SosDeactivationReaction" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_cell.elmt_SosInactive_conc" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_cell.elmt_boundEGFReceptor_conc" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_cell.elmt_boundNGFReceptor_conc" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_cell.elmt_freeEGFReceptor_conc" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_cell.elmt_freeNGFReceptor_conc" << ',';
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

        DataFile << '\n';
    }
}


int main() {
    int NumberOfProblems = NT; // Numero di problemi da risolvere, uno per thread
    int blockSize        = 64; // Numero di Thread per blocchi
    
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
    Solver.SolverOption(TimeStepGrowLimit, 1.0);

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
   
    
    int NumberOfSimulationLaunches = NumberOfProblems / NT + (NumberOfProblems % NT == 0 ? 0:1);
    ofstream DataFile;
    DataFile.open ( "Brown2004_NGF_EGF_signaling.csv" );
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

