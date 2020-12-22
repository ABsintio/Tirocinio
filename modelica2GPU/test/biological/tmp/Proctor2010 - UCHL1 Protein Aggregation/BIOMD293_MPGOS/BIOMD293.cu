

#include <iostream>
#include <vector>
#include <iomanip>
#include <string>
#include <fstream>

#define PI 3.14159265358979323846

#include "BIOMD293_SystemDefinition.cuh"
#include "SingleSystem_PerThread_Interface.cuh"

using namespace std;

#define SOLVER RKCK45 // Runge-Kutta Order 4th
#define PRECISION double
const int NT   = 1;
const int SD   = 137;
const int NCP  = 1;
const int NSP  = 83;
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
        DataFile.width(Width); DataFile << "X_ADP" << ',';
        DataFile.width(Width); DataFile << "X_AMP" << ',';
        DataFile.width(Width); DataFile << "X_ATP" << ',';
        DataFile.width(Width); DataFile << "X_AggA1" << ',';
        DataFile.width(Width); DataFile << "X_AggA2" << ',';
        DataFile.width(Width); DataFile << "X_AggA3" << ',';
        DataFile.width(Width); DataFile << "X_AggA4" << ',';
        DataFile.width(Width); DataFile << "X_AggA5" << ',';
        DataFile.width(Width); DataFile << "X_AggD1" << ',';
        DataFile.width(Width); DataFile << "X_AggD2" << ',';
        DataFile.width(Width); DataFile << "X_AggD3" << ',';
        DataFile.width(Width); DataFile << "X_AggD4" << ',';
        DataFile.width(Width); DataFile << "X_AggD5" << ',';
        DataFile.width(Width); DataFile << "X_AggP1" << ',';
        DataFile.width(Width); DataFile << "X_AggP2" << ',';
        DataFile.width(Width); DataFile << "X_AggP3" << ',';
        DataFile.width(Width); DataFile << "X_AggP4" << ',';
        DataFile.width(Width); DataFile << "X_AggP5" << ',';
        DataFile.width(Width); DataFile << "X_AggP_Proteasome" << ',';
        DataFile.width(Width); DataFile << "X_AggS1" << ',';
        DataFile.width(Width); DataFile << "X_AggS2" << ',';
        DataFile.width(Width); DataFile << "X_AggS3" << ',';
        DataFile.width(Width); DataFile << "X_AggS4" << ',';
        DataFile.width(Width); DataFile << "X_AggS5" << ',';
        DataFile.width(Width); DataFile << "X_AggU1" << ',';
        DataFile.width(Width); DataFile << "X_AggU2" << ',';
        DataFile.width(Width); DataFile << "X_AggU3" << ',';
        DataFile.width(Width); DataFile << "X_AggU4" << ',';
        DataFile.width(Width); DataFile << "X_AggU5" << ',';
        DataFile.width(Width); DataFile << "X_DUB" << ',';
        DataFile.width(Width); DataFile << "X_E1" << ',';
        DataFile.width(Width); DataFile << "X_E1_Ub" << ',';
        DataFile.width(Width); DataFile << "X_E2" << ',';
        DataFile.width(Width); DataFile << "X_E2_Ub" << ',';
        DataFile.width(Width); DataFile << "X_E3" << ',';
        DataFile.width(Width); DataFile << "X_E3SUB" << ',';
        DataFile.width(Width); DataFile << "X_E3SUB_SUB_misfolded" << ',';
        DataFile.width(Width); DataFile << "X_E3SUB_SUB_misfolded_Ub" << ',';
        DataFile.width(Width); DataFile << "X_E3SUB_SUB_misfolded_Ub2" << ',';
        DataFile.width(Width); DataFile << "X_E3SUB_SUB_misfolded_Ub2_UCHL1" << ',';
        DataFile.width(Width); DataFile << "X_E3SUB_SUB_misfolded_Ub3" << ',';
        DataFile.width(Width); DataFile << "X_E3SUB_SUB_misfolded_Ub3_UCHL1" << ',';
        DataFile.width(Width); DataFile << "X_E3SUB_SUB_misfolded_Ub4" << ',';
        DataFile.width(Width); DataFile << "X_E3SUB_SUB_misfolded_Ub4_UCHL1" << ',';
        DataFile.width(Width); DataFile << "X_E3SUB_SUB_misfolded_Ub5" << ',';
        DataFile.width(Width); DataFile << "X_E3SUB_SUB_misfolded_Ub5_UCHL1" << ',';
        DataFile.width(Width); DataFile << "X_E3SUB_SUB_misfolded_Ub6" << ',';
        DataFile.width(Width); DataFile << "X_E3SUB_SUB_misfolded_Ub6_UCHL1" << ',';
        DataFile.width(Width); DataFile << "X_E3SUB_SUB_misfolded_Ub7" << ',';
        DataFile.width(Width); DataFile << "X_E3SUB_SUB_misfolded_Ub7_UCHL1" << ',';
        DataFile.width(Width); DataFile << "X_E3SUB_SUB_misfolded_Ub8" << ',';
        DataFile.width(Width); DataFile << "X_E3SUB_SUB_misfolded_Ub8_UCHL1" << ',';
        DataFile.width(Width); DataFile << "X_E3SUB_SUB_misfolded_Ub_UCHL1" << ',';
        DataFile.width(Width); DataFile << "X_E3_MisP" << ',';
        DataFile.width(Width); DataFile << "X_E3_MisP_Ub" << ',';
        DataFile.width(Width); DataFile << "X_E3_MisP_Ub2" << ',';
        DataFile.width(Width); DataFile << "X_E3_MisP_Ub2_DUB" << ',';
        DataFile.width(Width); DataFile << "X_E3_MisP_Ub3" << ',';
        DataFile.width(Width); DataFile << "X_E3_MisP_Ub3_DUB" << ',';
        DataFile.width(Width); DataFile << "X_E3_MisP_Ub4" << ',';
        DataFile.width(Width); DataFile << "X_E3_MisP_Ub4_DUB" << ',';
        DataFile.width(Width); DataFile << "X_E3_MisP_Ub5" << ',';
        DataFile.width(Width); DataFile << "X_E3_MisP_Ub5_DUB" << ',';
        DataFile.width(Width); DataFile << "X_E3_MisP_Ub6" << ',';
        DataFile.width(Width); DataFile << "X_E3_MisP_Ub6_DUB" << ',';
        DataFile.width(Width); DataFile << "X_E3_MisP_Ub7" << ',';
        DataFile.width(Width); DataFile << "X_E3_MisP_Ub7_DUB" << ',';
        DataFile.width(Width); DataFile << "X_E3_MisP_Ub8" << ',';
        DataFile.width(Width); DataFile << "X_E3_MisP_Ub8_DUB" << ',';
        DataFile.width(Width); DataFile << "X_E3_MisP_Ub_DUB" << ',';
        DataFile.width(Width); DataFile << "X_Lamp2a" << ',';
        DataFile.width(Width); DataFile << "X_Lamp2a_UCHL1_damaged" << ',';
        DataFile.width(Width); DataFile << "X_Lysosome" << ',';
        DataFile.width(Width); DataFile << "X_MisP" << ',';
        DataFile.width(Width); DataFile << "X_MisP_Ub4_Proteasome" << ',';
        DataFile.width(Width); DataFile << "X_MisP_Ub5_Proteasome" << ',';
        DataFile.width(Width); DataFile << "X_MisP_Ub6_Proteasome" << ',';
        DataFile.width(Width); DataFile << "X_MisP_Ub7_Proteasome" << ',';
        DataFile.width(Width); DataFile << "X_MisP_Ub8_Proteasome" << ',';
        DataFile.width(Width); DataFile << "X_NatP" << ',';
        DataFile.width(Width); DataFile << "X_Parkin" << ',';
        DataFile.width(Width); DataFile << "X_Parkin_asyn_dam" << ',';
        DataFile.width(Width); DataFile << "X_Parkin_asyn_dam_Ub" << ',';
        DataFile.width(Width); DataFile << "X_Parkin_asyn_dam_Ub2" << ',';
        DataFile.width(Width); DataFile << "X_Parkin_asyn_dam_Ub2_DUB" << ',';
        DataFile.width(Width); DataFile << "X_Parkin_asyn_dam_Ub3" << ',';
        DataFile.width(Width); DataFile << "X_Parkin_asyn_dam_Ub3_DUB" << ',';
        DataFile.width(Width); DataFile << "X_Parkin_asyn_dam_Ub4" << ',';
        DataFile.width(Width); DataFile << "X_Parkin_asyn_dam_Ub4_DUB" << ',';
        DataFile.width(Width); DataFile << "X_Parkin_asyn_dam_Ub5" << ',';
        DataFile.width(Width); DataFile << "X_Parkin_asyn_dam_Ub5_DUB" << ',';
        DataFile.width(Width); DataFile << "X_Parkin_asyn_dam_Ub6" << ',';
        DataFile.width(Width); DataFile << "X_Parkin_asyn_dam_Ub6_DUB" << ',';
        DataFile.width(Width); DataFile << "X_Parkin_asyn_dam_Ub7" << ',';
        DataFile.width(Width); DataFile << "X_Parkin_asyn_dam_Ub7_DUB" << ',';
        DataFile.width(Width); DataFile << "X_Parkin_asyn_dam_Ub8" << ',';
        DataFile.width(Width); DataFile << "X_Parkin_asyn_dam_Ub8_DUB" << ',';
        DataFile.width(Width); DataFile << "X_Parkin_asyn_dam_Ub_DUB" << ',';
        DataFile.width(Width); DataFile << "X_Proteasome" << ',';
        DataFile.width(Width); DataFile << "X_ROS" << ',';
        DataFile.width(Width); DataFile << "X_SUB" << ',';
        DataFile.width(Width); DataFile << "X_SUB_misfolded" << ',';
        DataFile.width(Width); DataFile << "X_SUB_misfolded_Ub4_Proteasome" << ',';
        DataFile.width(Width); DataFile << "X_SUB_misfolded_Ub5_Proteasome" << ',';
        DataFile.width(Width); DataFile << "X_SUB_misfolded_Ub6_Proteasome" << ',';
        DataFile.width(Width); DataFile << "X_SUB_misfolded_Ub7_Proteasome" << ',';
        DataFile.width(Width); DataFile << "X_SUB_misfolded_Ub8_Proteasome" << ',';
        DataFile.width(Width); DataFile << "X_SeqAggP" << ',';
        DataFile.width(Width); DataFile << "X_Sink" << ',';
        DataFile.width(Width); DataFile << "X_Source" << ',';
        DataFile.width(Width); DataFile << "X_UCHL1" << ',';
        DataFile.width(Width); DataFile << "X_UCHL1_Proteasome" << ',';
        DataFile.width(Width); DataFile << "X_UCHL1_damaged" << ',';
        DataFile.width(Width); DataFile << "X_UCHL1_damaged_Proteasome" << ',';
        DataFile.width(Width); DataFile << "X_Ub" << ',';
        DataFile.width(Width); DataFile << "X_Ub_UCHL1" << ',';
        DataFile.width(Width); DataFile << "X_aggDUB" << ',';
        DataFile.width(Width); DataFile << "X_aggE3" << ',';
        DataFile.width(Width); DataFile << "X_aggMisP" << ',';
        DataFile.width(Width); DataFile << "X_aggParkin" << ',';
        DataFile.width(Width); DataFile << "X_aggSUB" << ',';
        DataFile.width(Width); DataFile << "X_aggUb" << ',';
        DataFile.width(Width); DataFile << "X_aggUchl1" << ',';
        DataFile.width(Width); DataFile << "X_aggUchl1dam" << ',';
        DataFile.width(Width); DataFile << "X_aggasyn" << ',';
        DataFile.width(Width); DataFile << "X_aggasyndam" << ',';
        DataFile.width(Width); DataFile << "X_asyn" << ',';
        DataFile.width(Width); DataFile << "X_asyn_Lamp2a" << ',';
        DataFile.width(Width); DataFile << "X_asyn_Proteasome" << ',';
        DataFile.width(Width); DataFile << "X_asyn_dam" << ',';
        DataFile.width(Width); DataFile << "X_asyn_dam_Ub4_Proteasome" << ',';
        DataFile.width(Width); DataFile << "X_asyn_dam_Ub5_Proteasome" << ',';
        DataFile.width(Width); DataFile << "X_asyn_dam_Ub6_Proteasome" << ',';
        DataFile.width(Width); DataFile << "X_asyn_dam_Ub7_Proteasome" << ',';
        DataFile.width(Width); DataFile << "X_asyn_dam_Ub8_Proteasome" << ',';
        DataFile.width(Width); DataFile << "X_kproteff" << ',';
        DataFile.width(Width); DataFile << "X_upregUb" << ',';
        DataFile.width(Width); DataFile << "sPAR_cytosol" << ',';
        DataFile.width(Width); DataFile << "sPAR_kCMAasyn" << ',';
        DataFile.width(Width); DataFile << "sPAR_kactDUB" << ',';
        DataFile.width(Width); DataFile << "sPAR_kactDUBProt" << ',';
        DataFile.width(Width); DataFile << "sPAR_kactProt" << ',';
        DataFile.width(Width); DataFile << "sPAR_kactUchl1" << ',';
        DataFile.width(Width); DataFile << "sPAR_kagg1" << ',';
        DataFile.width(Width); DataFile << "sPAR_kagg1dam" << ',';
        DataFile.width(Width); DataFile << "sPAR_kagg2" << ',';
        DataFile.width(Width); DataFile << "sPAR_kagg2dam" << ',';
        DataFile.width(Width); DataFile << "sPAR_kaggSUB1" << ',';
        DataFile.width(Width); DataFile << "sPAR_kaggSUB2" << ',';
        DataFile.width(Width); DataFile << "sPAR_kaggasyn1" << ',';
        DataFile.width(Width); DataFile << "sPAR_kaggasyn2" << ',';
        DataFile.width(Width); DataFile << "sPAR_kbinAggProt" << ',';
        DataFile.width(Width); DataFile << "sPAR_kbinE1Ub" << ',';
        DataFile.width(Width); DataFile << "sPAR_kbinE2Ub" << ',';
        DataFile.width(Width); DataFile << "sPAR_kbinE3SUB" << ',';
        DataFile.width(Width); DataFile << "sPAR_kbinLamp2aUCHL1dam" << ',';
        DataFile.width(Width); DataFile << "sPAR_kbinMisPDUB" << ',';
        DataFile.width(Width); DataFile << "sPAR_kbinMisPE3" << ',';
        DataFile.width(Width); DataFile << "sPAR_kbinProt" << ',';
        DataFile.width(Width); DataFile << "sPAR_kbinSUBUCHL1" << ',';
        DataFile.width(Width); DataFile << "sPAR_kbinUCHL1Prot" << ',';
        DataFile.width(Width); DataFile << "sPAR_kbinUbUCHL1" << ',';
        DataFile.width(Width); DataFile << "sPAR_kbinasynDUB" << ',';
        DataFile.width(Width); DataFile << "sPAR_kbinasynLamp2a" << ',';
        DataFile.width(Width); DataFile << "sPAR_kbinasynParkin" << ',';
        DataFile.width(Width); DataFile << "sPAR_kbinasynProt" << ',';
        DataFile.width(Width); DataFile << "sPAR_kdamUCHL1" << ',';
        DataFile.width(Width); DataFile << "sPAR_kdamasyn" << ',';
        DataFile.width(Width); DataFile << "sPAR_kdegLysUCHL1" << ',';
        DataFile.width(Width); DataFile << "sPAR_kdegLysUCHL1dam" << ',';
        DataFile.width(Width); DataFile << "sPAR_kdegProtUCHL1" << ',';
        DataFile.width(Width); DataFile << "sPAR_kdegasynProt" << ',';
        DataFile.width(Width); DataFile << "sPAR_kdisagg1" << ',';
        DataFile.width(Width); DataFile << "sPAR_kdisagg2" << ',';
        DataFile.width(Width); DataFile << "sPAR_kdisagg3" << ',';
        DataFile.width(Width); DataFile << "sPAR_kdisagg4" << ',';
        DataFile.width(Width); DataFile << "sPAR_kdisagg5" << ',';
        DataFile.width(Width); DataFile << "sPAR_kdisaggSUB1" << ',';
        DataFile.width(Width); DataFile << "sPAR_kdisaggSUB2" << ',';
        DataFile.width(Width); DataFile << "sPAR_kdisaggSUB3" << ',';
        DataFile.width(Width); DataFile << "sPAR_kdisaggSUB4" << ',';
        DataFile.width(Width); DataFile << "sPAR_kdisaggSUB5" << ',';
        DataFile.width(Width); DataFile << "sPAR_kdisaggasyn1" << ',';
        DataFile.width(Width); DataFile << "sPAR_kdisaggasyn2" << ',';
        DataFile.width(Width); DataFile << "sPAR_kdisaggasyn3" << ',';
        DataFile.width(Width); DataFile << "sPAR_kdisaggasyn4" << ',';
        DataFile.width(Width); DataFile << "sPAR_kdisaggasyn5" << ',';
        DataFile.width(Width); DataFile << "sPAR_kdisaggasyndam1" << ',';
        DataFile.width(Width); DataFile << "sPAR_kdisaggasyndam2" << ',';
        DataFile.width(Width); DataFile << "sPAR_kdisaggasyndam3" << ',';
        DataFile.width(Width); DataFile << "sPAR_kdisaggasyndam4" << ',';
        DataFile.width(Width); DataFile << "sPAR_kdisaggasyndam5" << ',';
        DataFile.width(Width); DataFile << "sPAR_kdisagguchl1dam1" << ',';
        DataFile.width(Width); DataFile << "sPAR_kdisagguchl1dam2" << ',';
        DataFile.width(Width); DataFile << "sPAR_kdisagguchl1dam3" << ',';
        DataFile.width(Width); DataFile << "sPAR_kdisagguchl1dam4" << ',';
        DataFile.width(Width); DataFile << "sPAR_kdisagguchl1dam5" << ',';
        DataFile.width(Width); DataFile << "sPAR_kgenROS" << ',';
        DataFile.width(Width); DataFile << "sPAR_kgenROSAggP" << ',';
        DataFile.width(Width); DataFile << "sPAR_kigrowth1" << ',';
        DataFile.width(Width); DataFile << "sPAR_kigrowth2" << ',';
        DataFile.width(Width); DataFile << "sPAR_kmisfold" << ',';
        DataFile.width(Width); DataFile << "sPAR_kmisfoldSUB" << ',';
        DataFile.width(Width); DataFile << "sPAR_kmonoUb" << ',';
        DataFile.width(Width); DataFile << "sPAR_kpolyUb" << ',';
        DataFile.width(Width); DataFile << "sPAR_krefold" << ',';
        DataFile.width(Width); DataFile << "sPAR_krefoldSUB" << ',';
        DataFile.width(Width); DataFile << "sPAR_krelE3SUB" << ',';
        DataFile.width(Width); DataFile << "sPAR_krelLamp2aUCHL1dam" << ',';
        DataFile.width(Width); DataFile << "sPAR_krelMisPE3" << ',';
        DataFile.width(Width); DataFile << "sPAR_krelUbUCHL1" << ',';
        DataFile.width(Width); DataFile << "sPAR_krelasynParkin" << ',';
        DataFile.width(Width); DataFile << "sPAR_kremROS" << ',';
        DataFile.width(Width); DataFile << "sPAR_ksynNatP" << ',';
        DataFile.width(Width); DataFile << "sPAR_ksynSUB" << ',';
        DataFile.width(Width); DataFile << "sPAR_ksynUCHL1" << ',';
        DataFile.width(Width); DataFile << "sPAR_ksynasyn" << ',';
        DataFile.width(Width); DataFile << "sPAR_kubd" << ',';
        DataFile.width(Width); DataFile << "sPAR_kubs" << ',';
        DataFile.width(Width); DataFile << "sPAR_kubss" << ',';
        DataFile.width(Width); DataFile << "ACC_AggP" << ',';
        DataFile.width(Width); DataFile << "ACC_Tot_MisP" << ',';
        DataFile.width(Width); DataFile << "ACC_Tot_Protein" << ',';
        DataFile.width(Width); DataFile << "ACC_Tot_UCHL1" << ',';
        DataFile.width(Width); DataFile << "ACC_Tot_Ub" << ',';
        DataFile.width(Width); DataFile << "ACC_Tot_asyn" << ',';
        DataFile.width(Width); DataFile << "ACC_Tot_asyn_dam" << ',';
        DataFile.width(Width); DataFile << "ACC_UCHL1_substrate" << ',';
        DataFile.width(Width); DataFile << "ACC_Ub_Conjugates" << ',';
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
    DataFile.open ( "BIOMD293.csv" );
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

