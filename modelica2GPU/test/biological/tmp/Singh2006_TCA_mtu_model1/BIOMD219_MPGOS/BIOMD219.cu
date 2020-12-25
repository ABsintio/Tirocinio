

#include <iostream>
#include <vector>
#include <iomanip>
#include <string>
#include <fstream>

#define PI 3.14159265358979323846

#include "BIOMD219_SystemDefinition.cuh"
#include "SingleSystem_PerThread_Interface.cuh"

using namespace std;

#define SOLVER RKCK45 // Runge-Kutta Order 4th
#define PRECISION double
const int NT   = 1;
const int SD   = 13;
const int NCP  = 1;
const int NSP  = 71;
const int NISP = 0;
const int NE   = 0;
const int NA   = 0;
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
        DataFile.width(Width); DataFile << "X_aca" << ',';
        DataFile.width(Width); DataFile << "X_akg" << ',';
        DataFile.width(Width); DataFile << "X_biosyn" << ',';
        DataFile.width(Width); DataFile << "X_cit" << ',';
        DataFile.width(Width); DataFile << "X_coa" << ',';
        DataFile.width(Width); DataFile << "X_fa" << ',';
        DataFile.width(Width); DataFile << "X_gly" << ',';
        DataFile.width(Width); DataFile << "X_icit" << ',';
        DataFile.width(Width); DataFile << "X_mal" << ',';
        DataFile.width(Width); DataFile << "X_oaa" << ',';
        DataFile.width(Width); DataFile << "X_sca" << ',';
        DataFile.width(Width); DataFile << "X_ssa" << ',';
        DataFile.width(Width); DataFile << "X_suc" << ',';
        DataFile.width(Width); DataFile << "sPAR_Kaca_cs_CS" << ',';
        DataFile.width(Width); DataFile << "sPAR_Kaca_ms_MS" << ',';
        DataFile.width(Width); DataFile << "sPAR_Kakg_icd1_ICD1" << ',';
        DataFile.width(Width); DataFile << "sPAR_Kakg_icd1_SYN" << ',';
        DataFile.width(Width); DataFile << "sPAR_Kakg_icd2_ICD2" << ',';
        DataFile.width(Width); DataFile << "sPAR_Kakg_icd2_SYN" << ',';
        DataFile.width(Width); DataFile << "sPAR_Kakg_kdh_KDH" << ',';
        DataFile.width(Width); DataFile << "sPAR_Kakg_kgd_KGD" << ',';
        DataFile.width(Width); DataFile << "sPAR_Kcit_acn_ACN" << ',';
        DataFile.width(Width); DataFile << "sPAR_Kcit_cs_CS" << ',';
        DataFile.width(Width); DataFile << "sPAR_Kcoa_cs_CS" << ',';
        DataFile.width(Width); DataFile << "sPAR_Kcoa_ms_MS" << ',';
        DataFile.width(Width); DataFile << "sPAR_Kfa_fum_FUM" << ',';
        DataFile.width(Width); DataFile << "sPAR_Kfa_sdh_SDH" << ',';
        DataFile.width(Width); DataFile << "sPAR_Kgly_icl1_ICL1" << ',';
        DataFile.width(Width); DataFile << "sPAR_Kgly_icl2_ICL2" << ',';
        DataFile.width(Width); DataFile << "sPAR_Kgly_ms_MS" << ',';
        DataFile.width(Width); DataFile << "sPAR_Kicit_acn_ACN" << ',';
        DataFile.width(Width); DataFile << "sPAR_Kicit_icd1_ICD1" << ',';
        DataFile.width(Width); DataFile << "sPAR_Kicit_icd1_SYN" << ',';
        DataFile.width(Width); DataFile << "sPAR_Kicit_icd2_ICD2" << ',';
        DataFile.width(Width); DataFile << "sPAR_Kicit_icd2_SYN" << ',';
        DataFile.width(Width); DataFile << "sPAR_Kicit_icl1_ICL1" << ',';
        DataFile.width(Width); DataFile << "sPAR_Kicit_icl2_ICL2" << ',';
        DataFile.width(Width); DataFile << "sPAR_Kmal_fum_FUM" << ',';
        DataFile.width(Width); DataFile << "sPAR_Kmal_mdh_MDH" << ',';
        DataFile.width(Width); DataFile << "sPAR_Kmal_ms_MS" << ',';
        DataFile.width(Width); DataFile << "sPAR_Koaa_cs_CS" << ',';
        DataFile.width(Width); DataFile << "sPAR_Koaa_mdh_MDH" << ',';
        DataFile.width(Width); DataFile << "sPAR_Ksca_kdh_KDH" << ',';
        DataFile.width(Width); DataFile << "sPAR_Ksca_scas_ScAS" << ',';
        DataFile.width(Width); DataFile << "sPAR_Kssa_kgd_KGD" << ',';
        DataFile.width(Width); DataFile << "sPAR_Kssa_ssadh_SSADH" << ',';
        DataFile.width(Width); DataFile << "sPAR_Ksuc_icl1_ICL1" << ',';
        DataFile.width(Width); DataFile << "sPAR_Ksuc_icl2_ICL2" << ',';
        DataFile.width(Width); DataFile << "sPAR_Ksuc_scas_ScAS" << ',';
        DataFile.width(Width); DataFile << "sPAR_Ksuc_sdh_SDH" << ',';
        DataFile.width(Width); DataFile << "sPAR_Ksuc_ssadh_SSADH" << ',';
        DataFile.width(Width); DataFile << "sPAR_Vf_acn_ACN" << ',';
        DataFile.width(Width); DataFile << "sPAR_Vf_cs_CS" << ',';
        DataFile.width(Width); DataFile << "sPAR_Vf_fum_FUM" << ',';
        DataFile.width(Width); DataFile << "sPAR_Vf_icd1_ICD1" << ',';
        DataFile.width(Width); DataFile << "sPAR_Vf_icd1_SYN" << ',';
        DataFile.width(Width); DataFile << "sPAR_Vf_icd2_ICD2" << ',';
        DataFile.width(Width); DataFile << "sPAR_Vf_icd2_SYN" << ',';
        DataFile.width(Width); DataFile << "sPAR_Vf_icl1_ICL1" << ',';
        DataFile.width(Width); DataFile << "sPAR_Vf_icl2_ICL2" << ',';
        DataFile.width(Width); DataFile << "sPAR_Vf_kdh_KDH" << ',';
        DataFile.width(Width); DataFile << "sPAR_Vf_kgd_KGD" << ',';
        DataFile.width(Width); DataFile << "sPAR_Vf_mdh_MDH" << ',';
        DataFile.width(Width); DataFile << "sPAR_Vf_ms_MS" << ',';
        DataFile.width(Width); DataFile << "sPAR_Vf_scas_ScAS" << ',';
        DataFile.width(Width); DataFile << "sPAR_Vf_sdh_SDH" << ',';
        DataFile.width(Width); DataFile << "sPAR_Vf_ssadh_SSADH" << ',';
        DataFile.width(Width); DataFile << "sPAR_Vr_acn_ACN" << ',';
        DataFile.width(Width); DataFile << "sPAR_Vr_cs_CS" << ',';
        DataFile.width(Width); DataFile << "sPAR_Vr_fum_FUM" << ',';
        DataFile.width(Width); DataFile << "sPAR_Vr_icd1_ICD1" << ',';
        DataFile.width(Width); DataFile << "sPAR_Vr_icd1_SYN" << ',';
        DataFile.width(Width); DataFile << "sPAR_Vr_icd2_ICD2" << ',';
        DataFile.width(Width); DataFile << "sPAR_Vr_icd2_SYN" << ',';
        DataFile.width(Width); DataFile << "sPAR_Vr_icl1_ICL1" << ',';
        DataFile.width(Width); DataFile << "sPAR_Vr_icl2_ICL2" << ',';
        DataFile.width(Width); DataFile << "sPAR_Vr_kdh_KDH" << ',';
        DataFile.width(Width); DataFile << "sPAR_Vr_kgd_KGD" << ',';
        DataFile.width(Width); DataFile << "sPAR_Vr_mdh_MDH" << ',';
        DataFile.width(Width); DataFile << "sPAR_Vr_ms_MS" << ',';
        DataFile.width(Width); DataFile << "sPAR_Vr_scas_ScAS" << ',';
        DataFile.width(Width); DataFile << "sPAR_Vr_sdh_SDH" << ',';
        DataFile.width(Width); DataFile << "sPAR_Vr_ssadh_SSADH" << ',';
        DataFile.width(Width); DataFile << "sPAR_cell" << ',';
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
   
    
    int NumberOfSimulationLaunches = NumberOfProblems / NT + (NumberOfProblems % NT == 0 ? 0:1);
    ofstream DataFile;
    DataFile.open ( "BIOMD219.csv" );
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

