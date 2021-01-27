

#include <iostream>
#include <vector>
#include <iomanip>
#include <string>
#include <fstream>

#include "BIOMD554_SystemDefinition.cuh"
#include "SingleSystem_PerThread_Interface.cuh"

using namespace std;

#define SOLVER RKCK45
#define PRECISION double
const int NT   = 1;
const int SD   = 45;
const int NCP  = 1;
const int NSP  = 0;
const int NISP = 0;
const int NE   = 0;
const int NA   = 64;
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

        Solver.SetHost(ProblemNumber, ActualTime, 0.0);
        Solver.SetHost(ProblemNumber, ControlParameters, 0, 0.0);
        Solver.SetHost(ProblemNumber, DenseIndex, 0 );

        ProblemNumber++;
        k_begin++;
    }
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
        DataFile.width(Width); DataFile << "X_ATPg" << ',';
        DataFile.width(Width); DataFile << "X_ATPn" << ',';
        DataFile.width(Width); DataFile << "X_CO2a" << ',';
        DataFile.width(Width); DataFile << "X_CO2c" << ',';
        DataFile.width(Width); DataFile << "X_F6Pg" << ',';
        DataFile.width(Width); DataFile << "X_F6Pn" << ',';
        DataFile.width(Width); DataFile << "X_G6Pg" << ',';
        DataFile.width(Width); DataFile << "X_G6Pn" << ',';
        DataFile.width(Width); DataFile << "X_GAPg" << ',';
        DataFile.width(Width); DataFile << "X_GAPn" << ',';
        DataFile.width(Width); DataFile << "X_GLCa" << ',';
        DataFile.width(Width); DataFile << "X_GLCc" << ',';
        DataFile.width(Width); DataFile << "X_GLCe" << ',';
        DataFile.width(Width); DataFile << "X_GLCg" << ',';
        DataFile.width(Width); DataFile << "X_GLCn" << ',';
        DataFile.width(Width); DataFile << "X_GLUe" << ',';
        DataFile.width(Width); DataFile << "X_GLUg" << ',';
        DataFile.width(Width); DataFile << "X_GLUn" << ',';
        DataFile.width(Width); DataFile << "X_GLYg" << ',';
        DataFile.width(Width); DataFile << "X_LACa" << ',';
        DataFile.width(Width); DataFile << "X_LACc" << ',';
        DataFile.width(Width); DataFile << "X_LACe" << ',';
        DataFile.width(Width); DataFile << "X_LACg" << ',';
        DataFile.width(Width); DataFile << "X_LACn" << ',';
        DataFile.width(Width); DataFile << "X_NADH_g_tot" << ',';
        DataFile.width(Width); DataFile << "X_NADH_n_tot" << ',';
        DataFile.width(Width); DataFile << "X_NADHg" << ',';
        DataFile.width(Width); DataFile << "X_NADHn" << ',';
        DataFile.width(Width); DataFile << "X_NAe" << ',';
        DataFile.width(Width); DataFile << "X_NAg" << ',';
        DataFile.width(Width); DataFile << "X_NAn" << ',';
        DataFile.width(Width); DataFile << "X_O2a" << ',';
        DataFile.width(Width); DataFile << "X_O2c" << ',';
        DataFile.width(Width); DataFile << "X_O2g" << ',';
        DataFile.width(Width); DataFile << "X_O2n" << ',';
        DataFile.width(Width); DataFile << "X_PCrg" << ',';
        DataFile.width(Width); DataFile << "X_PCrg_tot" << ',';
        DataFile.width(Width); DataFile << "X_PCrn" << ',';
        DataFile.width(Width); DataFile << "X_PCrn_tot" << ',';
        DataFile.width(Width); DataFile << "X_PEPg" << ',';
        DataFile.width(Width); DataFile << "X_PEPn" << ',';
        DataFile.width(Width); DataFile << "X_PYRg" << ',';
        DataFile.width(Width); DataFile << "X_PYRn" << ',';
        DataFile.width(Width); DataFile << "X_Vv" << ',';
        DataFile.width(Width); DataFile << "X_dHb" << ',';
        DataFile.width(Width); DataFile << "ACC_ADPg" << ',';
        DataFile.width(Width); DataFile << "ACC_ADPn" << ',';
        DataFile.width(Width); DataFile << "ACC_AMPg" << ',';
        DataFile.width(Width); DataFile << "ACC_AMPn" << ',';
        DataFile.width(Width); DataFile << "ACC_BOLD" << ',';
        DataFile.width(Width); DataFile << "ACC_CRg" << ',';
        DataFile.width(Width); DataFile << "ACC_CRn" << ',';
        DataFile.width(Width); DataFile << "ACC_Fin_t" << ',';
        DataFile.width(Width); DataFile << "ACC_Fout_t" << ',';
        DataFile.width(Width); DataFile << "ACC_NADg" << ',';
        DataFile.width(Width); DataFile << "ACC_NADn" << ',';
        DataFile.width(Width); DataFile << "ACC_V_en_GLC" << ',';
        DataFile.width(Width); DataFile << "ACC_Vc_CO2" << ',';
        DataFile.width(Width); DataFile << "ACC_Vc_GLC" << ',';
        DataFile.width(Width); DataFile << "ACC_Vc_LAC" << ',';
        DataFile.width(Width); DataFile << "ACC_Vc_O2" << ',';
        DataFile.width(Width); DataFile << "ACC_Vce_GLC" << ',';
        DataFile.width(Width); DataFile << "ACC_Vcg_GLC" << ',';
        DataFile.width(Width); DataFile << "ACC_Vcg_O2" << ',';
        DataFile.width(Width); DataFile << "ACC_Vcn_O2" << ',';
        DataFile.width(Width); DataFile << "ACC_Vec_LAC" << ',';
        DataFile.width(Width); DataFile << "ACC_Veg_GLC" << ',';
        DataFile.width(Width); DataFile << "ACC_Veg_GLU" << ',';
        DataFile.width(Width); DataFile << "ACC_Vg_ATPase" << ',';
        DataFile.width(Width); DataFile << "ACC_Vg_ck" << ',';
        DataFile.width(Width); DataFile << "ACC_Vg_glyp" << ',';
        DataFile.width(Width); DataFile << "ACC_Vg_glys" << ',';
        DataFile.width(Width); DataFile << "ACC_Vg_gs" << ',';
        DataFile.width(Width); DataFile << "ACC_Vg_hk" << ',';
        DataFile.width(Width); DataFile << "ACC_Vg_ldh" << ',';
        DataFile.width(Width); DataFile << "ACC_Vg_leak_Na" << ',';
        DataFile.width(Width); DataFile << "ACC_Vg_mito" << ',';
        DataFile.width(Width); DataFile << "ACC_Vg_pfk" << ',';
        DataFile.width(Width); DataFile << "ACC_Vg_pgi" << ',';
        DataFile.width(Width); DataFile << "ACC_Vg_pgk" << ',';
        DataFile.width(Width); DataFile << "ACC_Vg_pk" << ',';
        DataFile.width(Width); DataFile << "ACC_Vg_pump" << ',';
        DataFile.width(Width); DataFile << "ACC_Vgc_CO2" << ',';
        DataFile.width(Width); DataFile << "ACC_Vgc_LAC" << ',';
        DataFile.width(Width); DataFile << "ACC_Vge_LAC" << ',';
        DataFile.width(Width); DataFile << "ACC_Vn_ATPase" << ',';
        DataFile.width(Width); DataFile << "ACC_Vn_ck" << ',';
        DataFile.width(Width); DataFile << "ACC_Vn_hk" << ',';
        DataFile.width(Width); DataFile << "ACC_Vn_ldh" << ',';
        DataFile.width(Width); DataFile << "ACC_Vn_leak_Na" << ',';
        DataFile.width(Width); DataFile << "ACC_Vn_mito" << ',';
        DataFile.width(Width); DataFile << "ACC_Vn_pfk" << ',';
        DataFile.width(Width); DataFile << "ACC_Vn_pgi" << ',';
        DataFile.width(Width); DataFile << "ACC_Vn_pgk" << ',';
        DataFile.width(Width); DataFile << "ACC_Vn_pk" << ',';
        DataFile.width(Width); DataFile << "ACC_Vn_pump" << ',';
        DataFile.width(Width); DataFile << "ACC_Vn_stim" << ',';
        DataFile.width(Width); DataFile << "ACC_Vn_stim_GLU" << ',';
        DataFile.width(Width); DataFile << "ACC_Vnc_CO2" << ',';
        DataFile.width(Width); DataFile << "ACC_Vne_LAC" << ',';
        DataFile.width(Width); DataFile << "ACC_dAMP_dATPg" << ',';
        DataFile.width(Width); DataFile << "ACC_dAMP_dATPn" << ',';
        DataFile.width(Width); DataFile << "ACC_deltaVt_GLY" << ',';
        DataFile.width(Width); DataFile << "ACC_u_g" << ',';
        DataFile.width(Width); DataFile << "ACC_u_n" << ',';
        DataFile.width(Width); DataFile << "ACC_unitpulseSB" << ',';
        DataFile.width(Width); DataFile << "ACC_unitstepSB" << ',';
        DataFile.width(Width); DataFile << "ACC_unitstepSB2" << ',';
        DataFile.width(Width); DataFile << "ACC_v_stim" << ',';
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
   
    
    int NumberOfSimulationLaunches = NumberOfProblems / NT + (NumberOfProblems % NT == 0 ? 0:1);
    ofstream DataFile;
    DataFile.open ( "BIOMD554.csv" );
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

