
#ifndef BIOMD112_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD112_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[0]=pow(2.718281828459045,(-0.01111111111111111 * T));
    ACC[3]=(X[8] + X[3]);
    ACC[1]=(X[5] + (X[1] + X[3]));
    ACC[4]=(X[9] + X[4]);
    ACC[2]=(X[6] + (X[2] + X[4]));
    F[0]=(sPAR[3] * (X[2] / (sPAR[1] + X[2])));
    F[9]=((sPAR[13] * X[4]) + ((sPAR[8] * X[8]) - (X[9] * (sPAR[9] + (sPAR[12] * X[2])))));
    F[2]=((sPAR[13] * X[4]) + (((-(sPAR[12])) * (X[9] * X[2])) - (sPAR[3] * (X[2] / (sPAR[1] + X[2])))));
    F[6]=((sPAR[3] * (X[2] / (sPAR[1] + X[2]))) + ((sPAR[10] * X[5]) - (sPAR[11] * X[6])));
    F[4]=((sPAR[7] * X[3]) + ((sPAR[12] * (X[9] * X[2])) - (sPAR[13] * X[4])));
    F[3]=((sPAR[5] * (X[1] * X[8])) + (((-(sPAR[6])) - sPAR[7]) * X[3]));
    F[8]=((sPAR[9] * X[9]) + ((sPAR[6] * X[3]) + (((-(sPAR[5])) * (X[1] * X[8])) - (sPAR[8] * X[8]))));
    F[1]=((sPAR[2] * (X[7] * (X[5] / (sPAR[0] + X[5])))) + ((sPAR[6] * X[3]) - (sPAR[5] * (X[1] * X[8]))));
    F[5]=((sPAR[11] * X[6]) + (((-(sPAR[10])) * X[5]) - (sPAR[2] * (X[7] * (X[5] / (sPAR[0] + X[5]))))));
    F[7]=(-100.0 * ACC[0]);

}

template<class Precision> __forceinline__ __device__ void PerThread_EventFunction(
	int tid, int NT, Precision*	  EF, \
	Precision     T, Precision    dT, Precision*    TD, Precision*	X, \
	Precision* cPAR, Precision* sPAR, int*       sPARi, Precision* ACC, int* ACCi  		
) {
    

}

template<class Precision> __forceinline__ __device__ void PerThread_ActionAfterEventDetection(
    int tid, int NT, int IDX, int& UDT, \
    Precision    &T, Precision   &dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR, int*       sPARi, Precision* ACC, int* ACCi
) {
    
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
    ACC[0]=0.0; //$cse1
    ACC[1]=0.0; //sum_R_smad_cyt
    ACC[2]=0.0; //sum_R_smad_nuc
    ACC[3]=0.0; //sum_smad4_cyt
    ACC[4]=0.0; //sum_smad4_nuc
    sPAR[0]=289000.0; //K1_reaction_1
    sPAR[1]=8950.0; //K7_reaction_7
    sPAR[2]=3.51; //KCAT_reaction_1
    sPAR[3]=17100.0; //Vmax7_reaction_7
    sPAR[4]=1.0; //cytoplasm
    sPAR[5]=6.499999999999999e-05; //k2a_reaction_2
    sPAR[6]=0.0399; //k2d_reaction_2
    sPAR[7]=16.6; //k3_reaction_3
    sPAR[8]=0.00497; //k4cn_reaction_4
    sPAR[9]=0.783; //k4nc_reaction_4
    sPAR[10]=0.5629999999999999; //k5cn_reaction_5
    sPAR[11]=5.63; //k5nc_reaction_5
    sPAR[12]=0.000144; //k6a_reaction_6
    sPAR[13]=0.0492; //k6d_reaction_6
    sPAR[14]=1.0; //nucleus
    X[0]=0.0; //Pi
    X[1]=0.0; //R_smad_P_cyt
    X[2]=0.0; //R_smad_P_nuc
    X[3]=0.0; //R_smad_P_smad4_cyt
    X[4]=0.0; //R_smad_P_smad4_nuc
    X[5]=162000.0; //R_smad_cyt
    X[6]=18000.0; //R_smad_nuc
    X[7]=10000.0; //receptor
    X[8]=120000.0; //smad4_cyt
    X[9]=30000.0; //smad4_nuc

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
