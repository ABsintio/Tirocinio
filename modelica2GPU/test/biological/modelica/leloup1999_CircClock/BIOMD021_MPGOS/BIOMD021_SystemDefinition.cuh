
#ifndef BIOMD021_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD021_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[1]=(X[0] + (X[1] + (X[7] + (X[8] + X[9]))));
    ACC[0]=(X[0] + (X[1] + (X[4] + (X[5] + X[6]))));
    F[3]=(sPAR[0] * ((sPAR[27] * (pow(sPAR[10],sPAR[38]) / (pow(sPAR[10],sPAR[38]) + pow(X[1],sPAR[38])))) + (((-(sPAR[33])) * X[3]) - (sPAR[26] * (X[2] / (sPAR[14] + X[3]))))));
    F[2]=(sPAR[0] * ((sPAR[39] * (pow(sPAR[9],sPAR[38]) / (pow(sPAR[9],sPAR[38]) + pow(X[1],sPAR[38])))) - (X[2] * (sPAR[33] + (sPAR[25] / (sPAR[13] + X[2]))))));
    F[1]=((sPAR[0] * (sPAR[29] * X[0])) - (sPAR[28] * (X[1] * (sPAR[30] + sPAR[35]))));
    F[0]=((sPAR[0] * ((sPAR[31] * (X[6] * X[9])) - (sPAR[32] * X[0]))) + ((sPAR[28] * (sPAR[30] * X[1])) - (sPAR[0] * (X[0] * (sPAR[29] + sPAR[34])))));
    F[9]=(sPAR[0] * ((sPAR[20] * (X[8] / (sPAR[6] + X[8]))) + ((X[9] * ((((-(sPAR[22])) / (sPAR[8] + X[9])) - sPAR[33]) - (sPAR[24] / (sPAR[12] + X[9])))) + ((sPAR[32] * X[0]) - (sPAR[31] * (X[6] * X[9]))))));
    F[6]=(sPAR[0] * ((sPAR[19] * (X[5] / (sPAR[5] + X[5]))) + ((X[6] * ((((-(sPAR[21])) / (sPAR[7] + X[6])) - sPAR[33]) - (sPAR[23] / (sPAR[11] + X[6])))) + ((sPAR[32] * X[0]) - (sPAR[31] * (X[6] * X[9]))))));
    F[8]=(sPAR[0] * ((sPAR[16] * (X[7] / (sPAR[2] + X[7]))) + ((sPAR[22] * (X[9] / (sPAR[8] + X[9]))) + (X[8] * (((-(sPAR[33])) - (sPAR[18] / (sPAR[4] + X[8]))) - (sPAR[20] / (sPAR[6] + X[8])))))));
    F[5]=(sPAR[0] * ((sPAR[15] * (X[4] / (sPAR[1] + X[4]))) + ((sPAR[21] * (X[6] / (sPAR[7] + X[6]))) + (X[5] * (((-(sPAR[33])) - (sPAR[17] / (sPAR[3] + X[5]))) - (sPAR[19] / (sPAR[5] + X[5])))))));
    F[7]=(sPAR[0] * ((sPAR[18] * (X[8] / (sPAR[4] + X[8]))) + ((sPAR[37] * X[3]) + (X[7] * (((-(sPAR[16])) / (sPAR[2] + X[7])) - sPAR[33])))));
    F[4]=(sPAR[0] * ((sPAR[17] * (X[5] / (sPAR[3] + X[5]))) + ((sPAR[36] * X[2]) + (X[4] * (((-(sPAR[15])) / (sPAR[1] + X[4])) - sPAR[33])))));
    F[10]=0.0;
    X[10]=ACC[0];

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
    ACC[0]=0.0; //Pt
    ACC[1]=0.0; //Tt
    sPAR[0]=1.0; //Cell
    sPAR[1]=2.0; //K1_P
    sPAR[2]=2.0; //K_1T
    sPAR[3]=2.0; //K_2P
    sPAR[4]=2.0; //K_2T
    sPAR[5]=2.0; //K_3P
    sPAR[6]=2.0; //K_3T
    sPAR[7]=2.0; //K_4P
    sPAR[8]=2.0; //K_4T
    sPAR[9]=1.0; //K_IP
    sPAR[10]=1.0; //K_IT
    sPAR[11]=0.2; //K_dP
    sPAR[12]=0.2; //K_dT
    sPAR[13]=0.2; //K_mP
    sPAR[14]=0.2; //K_mT
    sPAR[15]=8.0; //V_1P
    sPAR[16]=8.0; //V_1T
    sPAR[17]=1.0; //V_2P
    sPAR[18]=1.0; //V_2T
    sPAR[19]=8.0; //V_3P
    sPAR[20]=8.0; //V_3T
    sPAR[21]=1.0; //V_4P
    sPAR[22]=1.0; //V_4T
    sPAR[23]=2.0; //V_dP
    sPAR[24]=2.0; //V_dT
    sPAR[25]=0.7; //V_mP
    sPAR[26]=0.7; //V_mT
    sPAR[27]=1.0; //V_sT
    sPAR[28]=1.0; //compartment_0000002
    sPAR[29]=0.6; //k1
    sPAR[30]=0.2; //k2
    sPAR[31]=1.2; //k3
    sPAR[32]=0.6; //k4
    sPAR[33]=0.01; //k_d
    sPAR[34]=0.01; //k_dC
    sPAR[35]=0.01; //k_dN
    sPAR[36]=0.9; //k_sP
    sPAR[37]=0.9; //k_sT
    sPAR[38]=4.0; //n
    sPAR[39]=1.0; //v_sP
    X[0]=0.0; //CC
    X[1]=0.0; //Cn
    X[2]=0.0; //Mp
    X[3]=0.0; //Mt
    X[4]=0.0; //P0
    X[5]=0.0; //P1
    X[6]=0.0; //P2
    X[7]=0.0; //T0
    X[8]=0.0; //T1
    X[9]=0.0; //T2
    X[10]=0.0; // Pt_var

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
