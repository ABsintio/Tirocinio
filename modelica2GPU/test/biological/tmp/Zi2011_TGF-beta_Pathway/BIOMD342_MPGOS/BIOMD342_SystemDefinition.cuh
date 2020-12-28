
#ifndef BIOMD342_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD342_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[0]=(sPAR[23] * sPAR[0]);
    ACC[2]=(X[8] + ((2.0 * X[4]) + X[6]));
    ACC[8]=(X[10] + ACC[2]);
    ACC[4]=((1384.6 * (X[7] + ((2.0 * X[3]) + X[5]))) + (602.0 * ACC[2]));
    ACC[5]=(1384.6 * (X[14] + (X[13] + (X[2] + X[1]))));
    ACC[6]=(1384.6 * (X[16] + (X[15] + (X[2] + X[1]))));
    ACC[3]=(1384.6 * (X[2] + X[1]));
    ACC[7]=(X[9] + (X[7] + ((2.0 * X[3]) + X[5])));
    ACC[1]=(600000000000000.0 * (X[19] * sPAR[2]));
    F[2]=(sPAR[1] * ((sPAR[7] * (X[19] * (X[16] * X[14]))) - (X[2] * (sPAR[16] + (sPAR[20] * ACC[2])))));
    F[20]=(sPAR[2] * ((sPAR[23] * X[19]) - (ACC[0] * X[20])));
    F[19]=((sPAR[2] * ((ACC[0] * X[20]) - (sPAR[23] * X[19]))) - (sPAR[1] * (sPAR[7] * (X[19] * (X[16] * X[14])))));
    F[14]=(sPAR[1] * (sPAR[5] + ((sPAR[25] * X[13]) + (((-(sPAR[16])) * X[14]) - (sPAR[7] * (X[19] * (X[16] * X[14])))))));
    F[13]=(sPAR[1] * ((sPAR[16] * X[14]) + ((sPAR[13] * X[1]) + (((-(sPAR[25])) - sPAR[9]) * X[13]))));
    F[16]=(sPAR[1] * (sPAR[6] + ((sPAR[25] * X[15]) + (((-(sPAR[16])) * X[16]) - (sPAR[7] * (X[19] * (X[16] * X[14])))))));
    F[15]=(sPAR[1] * ((sPAR[16] * X[16]) + ((sPAR[13] * X[1]) + (((-(sPAR[25])) - sPAR[10]) * X[15]))));
    F[1]=(sPAR[1] * ((sPAR[16] * X[2]) + (((-(sPAR[8])) - sPAR[13]) * X[1])));
    F[9]=((sPAR[3] * (sPAR[14] * X[10])) - (sPAR[1] * (X[9] * (sPAR[17] + (sPAR[24] * X[1])))));
    F[10]=((sPAR[1] * (sPAR[17] * X[9])) + (sPAR[3] * ((sPAR[12] * X[8]) - (sPAR[14] * X[10]))));
    F[11]=((sPAR[3] * (sPAR[15] * X[12])) + (sPAR[1] * ((sPAR[21] * X[5]) + (((-(sPAR[22])) * (X[7] * X[11])) - (sPAR[18] * X[11])))));
    F[12]=((sPAR[1] * (sPAR[18] * X[11])) + (sPAR[3] * ((sPAR[21] * X[6]) + (((-(sPAR[22])) * (X[8] * X[12])) - (sPAR[15] * X[12])))));
    F[7]=((sPAR[1] * (sPAR[24] * (X[9] * X[1]))) + ((sPAR[3] * (sPAR[14] * X[8])) + ((sPAR[1] * ((sPAR[21] * X[5]) + (X[7] * (((-(sPAR[22])) * X[11]) - sPAR[17])))) + (-2.0 * (sPAR[1] * ((sPAR[22] * pow(X[7],2.0)) - (sPAR[21] * X[3])))))));
    F[3]=(sPAR[1] * ((sPAR[22] * pow(X[7],2.0)) + (((-(sPAR[21])) - sPAR[19]) * X[3])));
    F[5]=(sPAR[1] * ((sPAR[22] * (X[7] * X[11])) + (((-(sPAR[21])) - sPAR[19]) * X[5])));
    F[8]=((sPAR[1] * (sPAR[17] * X[7])) + (sPAR[3] * ((sPAR[21] * X[6]) + ((2.0 * ((sPAR[21] * X[4]) - (sPAR[22] * pow(X[8],2.0)))) + (X[8] * (((-(sPAR[12])) - sPAR[14]) - (sPAR[22] * X[12])))))));
    F[4]=((sPAR[1] * (sPAR[19] * X[3])) + (sPAR[3] * ((sPAR[22] * pow(X[8],2.0)) - (sPAR[21] * X[4]))));
    F[6]=((sPAR[1] * (sPAR[19] * X[5])) + (sPAR[3] * ((sPAR[22] * (X[8] * X[12])) - (sPAR[21] * X[6]))));
    F[18]=(sPAR[1] * ((sPAR[13] * X[1]) - (sPAR[11] * X[18])));
    F[0]=0.0;
    F[21]=0.0;
    F[17]=0.0;

}

template<class Precision> __forceinline__ __device__ void PerThread_EventFunction(
	int tid, int NT, Precision*	  EF, \
	Precision     T, Precision    dT, Precision*    TD, Precision*	X, \
	Precision* cPAR, Precision* sPAR, int*       sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[9]=(compareReal(sPAR[27], 2.0,1e-10,1e-05) && compareReal(T,sPAR[26],1e-10,1e-05));

    EF[0] = (! (ACC[9]));
}

template<class Precision> __forceinline__ __device__ void PerThread_ActionAfterEventDetection(
    int tid, int NT, int IDX, int& UDT, \
    Precision    &T, Precision   &dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR, int*       sPARi, Precision* ACC, int* ACCi
) {
    if (IDX == 0){
	    X[19]=0.0;
    }

}

template<class Precision> __forceinline__ __device__ void PerThread_ActionAfterSuccessfulTimeStep(
    int tid, int NT, int& UDT, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR, int*       sPARi, Precision* ACC, int* ACCi
) {
    
}

template<class Precision> __forceinline__ __device__ void PerThread_Initialization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
    T     = TD[0];
    DOIDX = 0;
    ACC[0]=2.03306; //koff_ns
    ACC[1]=0.0; //medium_TGF_beta_amount
    ACC[2]=0.0; //totalNuclearPSmad2
    ACC[3]=0.0; //totalNumLRC
    ACC[4]=0.0; //totalNumPSmad2
    ACC[5]=10005.0; //totalNumT1R
    ACC[6]=2272.0; //totalNumT2R
    ACC[7]=60.6; //totalSmad2c
    ACC[8]=28.5; //totalSmad2n
    ACC[9]=0; //$whenCondition1
    sPAR[0]=40.2257; //KD_ns
    sPAR[1]=1.0; //Vcyt
    sPAR[2]=1.0; //Vmed
    sPAR[3]=1.0; //Vnuc
    sPAR[4]=1.0; //default
    sPAR[5]=0.0167; //k_T1R
    sPAR[6]=0.0190076; //k_T2R
    sPAR[7]=117.897; //ka_LRC
    sPAR[8]=0.00256; //kdeg_LRC
    sPAR[9]=0.00256; //kdeg_T1R
    sPAR[10]=0.0132; //kdeg_T2R
    sPAR[11]=0.347; //kdeg_TGF_beta
    sPAR[12]=0.394; //kdepho_Smad2
    sPAR[13]=0.0438111; //kdiss_LRC
    sPAR[14]=0.763; //kexp_Smad2
    sPAR[15]=0.359; //kexp_Smad4
    sPAR[16]=0.333; //ki
    sPAR[17]=0.156; //kimp_Smad2
    sPAR[18]=0.156; //kimp_Smad4
    sPAR[19]=0.889; //kimp_Smads
    sPAR[20]=0.0233678; //klid
    sPAR[21]=1.0; //koff_Smads
    sPAR[22]=0.198472; //kon_Smads
    sPAR[23]=0.0505413; //kon_ns
    sPAR[24]=0.0488268; //kpho_Smad2
    sPAR[25]=0.0333; //kr
    sPAR[26]=0.5; //single_pulse_duration
    sPAR[27]=1.0; //stimulation_type
    X[0]=0.0; //AA
    X[1]=0.0; //LRC_endo
    X[2]=0.0; //LRC_surf
    X[3]=0.0; //PSmad2_PSmad2_c
    X[4]=0.0; //PSmad2_PSmad2_n
    X[5]=0.0; //PSmad2_Smad4_c
    X[6]=0.0; //PSmad2_Smad4_n
    X[7]=0.0; //PSmad2c
    X[8]=0.0; //PSmad2n
    X[9]=60.6; //Smad2c
    X[10]=28.5; //Smad2n
    X[11]=50.8; //Smad4c
    X[12]=50.8; //Smad4n
    X[13]=(sPAR[5] / sPAR[9]); //T1R_endo
    X[14]=(sPAR[5] * ((sPAR[9] + sPAR[25]) / (sPAR[16] * sPAR[9]))); //T1R_surf
    X[15]=(sPAR[6] / sPAR[10]); //T2R_endo
    X[16]=(sPAR[6] * ((sPAR[10] + sPAR[25]) / (sPAR[16] * sPAR[10]))); //T2R_surf
    X[17]=30040000000000.0; //TGF_beta_dose_mol_per_cell
    X[18]=0.0; //TGF_beta_endo
    X[19]=0.5; //TGF_beta_ex
    X[20]=0.0; //TGF_beta_ns
    X[21]=0.0; //empty_degraded

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
