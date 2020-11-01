

#include <iostream>
#include <vector>
#include <iomanip>
#include <string>
#include <fstream>

#define PI 3.14159265358979323846

#include "Goldbeter1995_SystemDefinition.cuh"
#include "SingleSystem_PerThread_Interface.cuh"

using namespace std;

#define SOLVER RKCK45
#define PRECISION double
const int NT   = 1000;
const int SD   = 29;
const int NCP  = 0;
const int NSP  = 18;
const int NISP = 0;
const int NE   = 0;
const int NA   = 20;
const int NIA  = 0;
const int NDO  = 1000;


void FillSolverObject(
    ProblemSolver<NT,SD,NCP,NSP,NISP,NE,NA,NIA,NDO,SOLVER,PRECISION>&, 
    vector<PRECISION>&, vector<PRECISION>&, int, int
);


void SaveData(
    ProblemSolver<NT,SD,NCP,NSP,NISP,NE,NA,NIA,NDO,SOLVER,PRECISION>& Solver, 
    ofstream& DataFile, int NumberOfThreads
) {
    int Width = 18;
    DataFile.precision(10);
    DataFile.flags(ios::scientific);
	
    for (int tid=0; tid<NumberOfThreads; tid++)
    {
        DataFile.width(Width); DataFile << "X_Reacs.elmt_product1" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_product11" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_product13" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_product15" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_product17" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_product19" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_product3" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_product5" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_product7" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_product9" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_reactant0" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_reactant10" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_reactant12" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_reactant14" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_reactant16" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_reactant18" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_reactant2" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_reactant4" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_reactant6" << ',';
        DataFile.width(Width); DataFile << "X_Reacs.elmt_reactant8" << ',';
        DataFile.width(Width); DataFile << "X_elmt_CYTOPLASM.elmt_CYTOPLASM" << ',';
        DataFile.width(Width); DataFile << "X_elmt_CYTOPLASM.elmt_M_amount" << ',';
        DataFile.width(Width); DataFile << "X_elmt_CYTOPLASM.elmt_P0_amount" << ',';
        DataFile.width(Width); DataFile << "X_elmt_CYTOPLASM.elmt_P1_amount" << ',';
        DataFile.width(Width); DataFile << "X_elmt_CYTOPLASM.elmt_P2_amount" << ',';
        DataFile.width(Width); DataFile << "X_elmt_compartment_0000004.elmt_Pn_amount" << ',';
        DataFile.width(Width); DataFile << "X_elmt_compartment_0000004.elmt_compartment_0000004" << ',';
        DataFile.width(Width); DataFile << "X_elmt_default.elmt_EmptySet_amount" << ',';
        DataFile.width(Width); DataFile << "X_elmt_default.elmt_default" << ',';
        DataFile.width(Width); DataFile << "sPAR_Reacs.elmt_rM_elmt_KI" << ',';
        DataFile.width(Width); DataFile << "sPAR_Reacs.elmt_rM_elmt_Vs" << ',';
        DataFile.width(Width); DataFile << "sPAR_Reacs.elmt_rM_elmt_n" << ',';
        DataFile.width(Width); DataFile << "sPAR_Reacs.elmt_rP01_elmt_K1" << ',';
        DataFile.width(Width); DataFile << "sPAR_Reacs.elmt_rP01_elmt_V1" << ',';
        DataFile.width(Width); DataFile << "sPAR_Reacs.elmt_rP10_elmt_K2" << ',';
        DataFile.width(Width); DataFile << "sPAR_Reacs.elmt_rP10_elmt_V2" << ',';
        DataFile.width(Width); DataFile << "sPAR_Reacs.elmt_rP12_elmt_K3" << ',';
        DataFile.width(Width); DataFile << "sPAR_Reacs.elmt_rP12_elmt_V3" << ',';
        DataFile.width(Width); DataFile << "sPAR_Reacs.elmt_rP21_elmt_K4" << ',';
        DataFile.width(Width); DataFile << "sPAR_Reacs.elmt_rP21_elmt_V4" << ',';
        DataFile.width(Width); DataFile << "sPAR_Reacs.elmt_rP2n_elmt_k1" << ',';
        DataFile.width(Width); DataFile << "sPAR_Reacs.elmt_rPn2_elmt_k2" << ',';
        DataFile.width(Width); DataFile << "sPAR_Reacs.elmt_rTL_elmt_ks" << ',';
        DataFile.width(Width); DataFile << "sPAR_Reacs.elmt_rVd_elmt_Kd" << ',';
        DataFile.width(Width); DataFile << "sPAR_Reacs.elmt_rVd_elmt_Vd" << ',';
        DataFile.width(Width); DataFile << "sPAR_Reacs.elmt_rmRNAd_elmt_Km" << ',';
        DataFile.width(Width); DataFile << "sPAR_Reacs.elmt_rmRNAd_elmt_Vm" << ',';
        DataFile.width(Width); DataFile << "ACC_$cse1" << ',';
        DataFile.width(Width); DataFile << "ACC_$cse2" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_CYTOPLASM.elmt_M_conc" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_CYTOPLASM.elmt_P0_conc" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_CYTOPLASM.elmt_P1_conc" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_CYTOPLASM.elmt_P2_conc" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_CYTOPLASM.elmt_Pt_amount" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_CYTOPLASM.elmt_Pt_conc" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_CYTOPLASM.elmt_rM" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_CYTOPLASM.elmt_rP01" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_CYTOPLASM.elmt_rP10" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_CYTOPLASM.elmt_rP12" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_CYTOPLASM.elmt_rP21" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_CYTOPLASM.elmt_rTL" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_CYTOPLASM.elmt_rVd" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_CYTOPLASM.elmt_rmRNAd" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_compartment_0000004.elmt_Pn_conc" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_compartment_0000004.elmt_rP2n" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_compartment_0000004.elmt_rPn2" << ',';
        DataFile.width(Width); DataFile << "ACC_elmt_default.elmt_EmptySet_conc" << ',';
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

        DataFile << '\n';
    }
}


int main() {
    int numberOfProblems = 2000; // Numero di problemi da risolvere, uno per thread
    int blockSize        = 1024; // Numero di Thread per blocchi
    
    // Listing dei Device CUDA
    ListCUDADevices();

    int MajorVersion = 7; // Major version della CUDA compute capability
    int MinorVersion = 5; // Minor version della CUDA compute capability

    // Seleziona il Device da utilizzare dando in input la CUDA compute capability e ne stampa le caratteristiche
    int SelectedDevice = SelectDeviceByClosestRevision(MajorVersion, MinorVersion);
    PrintPropertiesOfSpecificDevice(SelectedDevice);

    PRECISION InitialCondtition_Reacs_elmt_product1=1.0;
    PRECISION InitialCondtition_Reacs_elmt_product11=1.0;
    PRECISION InitialCondtition_Reacs_elmt_product13=1.0;
    PRECISION InitialCondtition_Reacs_elmt_product15=1.0;
    PRECISION InitialCondtition_Reacs_elmt_product17=1.0;
    PRECISION InitialCondtition_Reacs_elmt_product19=1.0;
    PRECISION InitialCondtition_Reacs_elmt_product3=1.0;
    PRECISION InitialCondtition_Reacs_elmt_product5=1.0;
    PRECISION InitialCondtition_Reacs_elmt_product7=1.0;
    PRECISION InitialCondtition_Reacs_elmt_product9=1.0;
    PRECISION InitialCondtition_Reacs_elmt_reactant0=1.0;
    PRECISION InitialCondtition_Reacs_elmt_reactant10=1.0;
    PRECISION InitialCondtition_Reacs_elmt_reactant12=1.0;
    PRECISION InitialCondtition_Reacs_elmt_reactant14=1.0;
    PRECISION InitialCondtition_Reacs_elmt_reactant16=1.0;
    PRECISION InitialCondtition_Reacs_elmt_reactant18=1.0;
    PRECISION InitialCondtition_Reacs_elmt_reactant2=1.0;
    PRECISION InitialCondtition_Reacs_elmt_reactant4=1.0;
    PRECISION InitialCondtition_Reacs_elmt_reactant6=1.0;
    PRECISION InitialCondtition_Reacs_elmt_reactant8=1.0;
    PRECISION InitialCondtition_elmt_CYTOPLASM_elmt_CYTOPLASM=1e-15;
    PRECISION InitialCondtition_elmt_compartment_0000004_elmt_compartment_0000004=1e-15;
    PRECISION InitialCondtition_elmt_default_elmt_default=1e-15;
    vector<PRECISION> Parameter_X = {InitialCondition_Reacs_elmt_product1,InitialCondition_Reacs_elmt_product11,InitialCondition_Reacs_elmt_product13,InitialCondition_Reacs_elmt_product15,InitialCondition_Reacs_elmt_product17,InitialCondition_Reacs_elmt_product19,InitialCondition_Reacs_elmt_product3,InitialCondition_Reacs_elmt_product5,InitialCondition_Reacs_elmt_product7,InitialCondition_Reacs_elmt_product9,InitialCondition_Reacs_elmt_reactant0,InitialCondition_Reacs_elmt_reactant10,InitialCondition_Reacs_elmt_reactant12,InitialCondition_Reacs_elmt_reactant14,InitialCondition_Reacs_elmt_reactant16,InitialCondition_Reacs_elmt_reactant18,InitialCondition_Reacs_elmt_reactant2,InitialCondition_Reacs_elmt_reactant4,InitialCondition_Reacs_elmt_reactant6,InitialCondition_Reacs_elmt_reactant8,InitialCondition_elmt_CYTOPLASM_elmt_CYTOPLASM,InitialCondition_elmt_compartment_0000004_elmt_compartment_0000004,InitialCondition_elmt_default_elmt_default};
    PRECISION InitialCondtition_Reacs_elmt_rM_elmt_KI=1.0;
    PRECISION InitialCondtition_Reacs_elmt_rM_elmt_Vs=0.76;
    PRECISION InitialCondtition_Reacs_elmt_rM_elmt_n=4.0;
    PRECISION InitialCondtition_Reacs_elmt_rP01_elmt_K1=2.0;
    PRECISION InitialCondtition_Reacs_elmt_rP01_elmt_V1=3.2;
    PRECISION InitialCondtition_Reacs_elmt_rP10_elmt_K2=2.0;
    PRECISION InitialCondtition_Reacs_elmt_rP10_elmt_V2=1.58;
    PRECISION InitialCondtition_Reacs_elmt_rP12_elmt_K3=2.0;
    PRECISION InitialCondtition_Reacs_elmt_rP12_elmt_V3=5.0;
    PRECISION InitialCondtition_Reacs_elmt_rP21_elmt_K4=2.0;
    PRECISION InitialCondtition_Reacs_elmt_rP21_elmt_V4=2.5;
    PRECISION InitialCondtition_Reacs_elmt_rP2n_elmt_k1=1.9;
    PRECISION InitialCondtition_Reacs_elmt_rPn2_elmt_k2=1.3;
    PRECISION InitialCondtition_Reacs_elmt_rTL_elmt_ks=0.38;
    PRECISION InitialCondtition_Reacs_elmt_rVd_elmt_Kd=0.2;
    PRECISION InitialCondtition_Reacs_elmt_rVd_elmt_Vd=0.95;
    PRECISION InitialCondtition_Reacs_elmt_rmRNAd_elmt_Km=0.5;
    PRECISION InitialCondtition_Reacs_elmt_rmRNAd_elmt_Vm=0.65;
    vector<PRECISION> Parameter_sPAR = {InitialCondition_Reacs_elmt_rM_elmt_KI,InitialCondition_Reacs_elmt_rM_elmt_Vs,InitialCondition_Reacs_elmt_rM_elmt_n,InitialCondition_Reacs_elmt_rP01_elmt_K1,InitialCondition_Reacs_elmt_rP01_elmt_V1,InitialCondition_Reacs_elmt_rP10_elmt_K2,InitialCondition_Reacs_elmt_rP10_elmt_V2,InitialCondition_Reacs_elmt_rP12_elmt_K3,InitialCondition_Reacs_elmt_rP12_elmt_V3,InitialCondition_Reacs_elmt_rP21_elmt_K4,InitialCondition_Reacs_elmt_rP21_elmt_V4,InitialCondition_Reacs_elmt_rP2n_elmt_k1,InitialCondition_Reacs_elmt_rPn2_elmt_k2,InitialCondition_Reacs_elmt_rTL_elmt_ks,InitialCondition_Reacs_elmt_rVd_elmt_Kd,InitialCondition_Reacs_elmt_rVd_elmt_Vd,InitialCondition_Reacs_elmt_rmRNAd_elmt_Km,InitialCondition_Reacs_elmt_rmRNAd_elmt_Vm};


    ProblemSolver<NT,SD,NCP,NSP,NISP,NE,NA,NIA,NDO,SOLVER,PRECISION> Solver(SelectedDevice);
    Solver.SolverOption(ThreadsPerBlock, blockSize);
    Solver.SolverOption(PreferSharedMemory, 1);
    Solver.SolverOption(InitialTimeStep, 0.01);
    Solver.SolverOption(ActiveNumberOfThreads, NT);
    Solver.SolverOption(MaximumTimeStep, 1000000.0);
    Solver.SolverOption(MinimumTimeStep, 1e-14);
    Solver.SolverOption(TimeStepGrowLimit, 10.0);
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
   
    
    int NumberOfSimulationLaunches = NumberOfProblems / NT + (NumberOfProblems % NT == 0 ? 0:1);
    ofstream DataFile;
    DataFile.open ( "Goldbeter1995.csv" );
    clock_t SimulationStart = clock();
    clock_t TransientStart;
    clock_t TransientEnd;    
    for (int i=0; i < NumberOfSimulationLaunches; i++) {
        fillSolverObject(Solver, Parameter_sPAR, Parameter_X, i*NT, NT);
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


void FillSolverObject(
    ProblemSolver<NT,SD,NCP,NSP,NISP,NE,NA,NIA,NDO,SOLVER,PRECISION>& Solver, 
    vector<PRECISION>& Parameter_sPAR,  vector<PRECISION>& Variable_X, 
    int FirstProblemNumber, int NumberOfThreads
) {
    int k_begin = FirstProblemNumber;
    int k_end   = FirstProblemNumber + NumberOfThreads;
	
    int ProblemNumber = 0;
    while (k_begin < k_end) {
        Solver.SetHost(ProblemNumber, TimeDomain, 0, 0.0);
        Solver.SetHost(ProblemNumber, TimeDomain, 1, 10.0);  

        int i = 0;
        for (PRECISION x : Variable_X) {
            Solver.SetHost(ProblemNumber, ActualState, i++, x);
        }

        Solver.SetHost(ProblemNumber, ActualTime, 0.0);
        Solver.SetHost(ProblemNumber, ControlParameters, 0, 0.0);
        Solver.SetHost(ProblemNumber, DenseIndex, 0 );

        Solver.SetHost(ProblemNumber, Accessories, 0, 0.1);
        Solver.SetHost(ProblemNumber, Accessories, 1, 0.25);
        Solver.SetHost(ProblemNumber, Accessories, 2, 0.25);
        Solver.SetHost(ProblemNumber, Accessories, 3, 0.25);
        Solver.SetHost(ProblemNumber, Accessories, 4, 0.25);
        Solver.SetHost(ProblemNumber, Accessories, 5, 0.0);

		
		ProblemNumber++;
        k_begin++;
    }

    int spar_i{0};
    for (PRECISION spar: Parameter_sPAR){
        Solver.SetHost(SharedParameters, spar_i++, spar);
    }


}

