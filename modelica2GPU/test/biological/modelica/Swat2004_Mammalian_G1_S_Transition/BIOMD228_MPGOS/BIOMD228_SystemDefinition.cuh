
#ifndef BIOMD228_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD228_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[3]=(sPAR[16] * ((sPAR[29] * (X[4] * (X[3] / (sPAR[14] + X[3])))) + (((-(sPAR[30])) - sPAR[35]) * X[3])));
    F[4]=(sPAR[16] * ((sPAR[22] * (X[5] * (sPAR[5] * (sPAR[10] / ((sPAR[5] + X[6]) * (sPAR[10] + X[7])))))) + ((sPAR[30] * X[3]) + (X[4] * (((-(sPAR[29])) * (X[3] / (sPAR[14] + X[3]))) - sPAR[36])))));
    F[8]=(sPAR[16] * ((sPAR[27] * (X[7] * X[3])) + (((-(sPAR[28])) - sPAR[40]) * X[8])));
    F[0]=(sPAR[16] * (sPAR[0] + ((sPAR[21] * (X[5] * (sPAR[4] * (sPAR[9] / ((sPAR[4] + X[6]) * (sPAR[9] + X[7])))))) - (sPAR[32] * X[0]))));
    F[1]=(sPAR[16] * ((sPAR[24] * (X[2] * (X[1] / (sPAR[13] + X[1])))) + (((-(sPAR[25])) - sPAR[33]) * X[1])));
    F[2]=(sPAR[16] * ((sPAR[23] * X[0]) + ((sPAR[20] * (X[5] * (sPAR[3] * (sPAR[8] / ((sPAR[3] + X[6]) * (sPAR[8] + X[7])))))) + ((sPAR[25] * X[1]) + (X[2] * (((-(sPAR[24])) * (X[1] / (sPAR[13] + X[1]))) - sPAR[34]))))));
    F[5]=(sPAR[16] * (sPAR[31] + ((sPAR[19] * ((pow(sPAR[15],2.0) + pow(X[5],2.0)) * (sPAR[2] * (sPAR[7] / (((sPAR[2] + X[6]) * (pow(sPAR[12],2.0) + pow(X[5],2.0))) * (sPAR[7] + X[7])))))) - (sPAR[37] * X[5]))));
    F[7]=(sPAR[16] * ((sPAR[18] * (X[6] * X[1])) + ((sPAR[28] * X[8]) + (((-(X[7])) * (sPAR[26] + (sPAR[27] * X[3]))) - (sPAR[39] * X[7])))));
    F[6]=(sPAR[16] * ((sPAR[17] * (X[5] * (sPAR[1] * (sPAR[6] / (((sPAR[1] + X[6]) * (sPAR[11] + X[5])) * (sPAR[6] + X[7])))))) + ((sPAR[26] * X[7]) + (X[6] * (((-(sPAR[18])) * X[1]) - sPAR[38])))));

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
    sPAR[0]=0.005; //Fm
    sPAR[1]=0.5; //J11
    sPAR[2]=5.0; //J12
    sPAR[3]=0.002; //J13
    sPAR[4]=0.001; //J15
    sPAR[5]=0.6; //J18
    sPAR[6]=5.0; //J61
    sPAR[7]=8.0; //J62
    sPAR[8]=2.0; //J63
    sPAR[9]=6.0; //J65
    sPAR[10]=7.0; //J68
    sPAR[11]=0.5; //Km1
    sPAR[12]=4.0; //Km2
    sPAR[13]=0.3; //Km4
    sPAR[14]=0.005; //Km9
    sPAR[15]=0.04; //a
    sPAR[16]=1.0; //cell
    sPAR[17]=1.0; //k1
    sPAR[18]=0.4; //k16
    sPAR[19]=1.6; //k2
    sPAR[20]=0.3; //k23
    sPAR[21]=0.9; //k25
    sPAR[22]=0.06; //k28
    sPAR[23]=0.05; //k3
    sPAR[24]=0.04; //k34
    sPAR[25]=0.01; //k43
    sPAR[26]=0.3; //k61
    sPAR[27]=0.7; //k67
    sPAR[28]=0.1; //k76
    sPAR[29]=0.07000000000000001; //k89
    sPAR[30]=0.01; //k98
    sPAR[31]=0.05; //kp
    sPAR[32]=0.01; //phi_AP1
    sPAR[33]=0.03; //phi_CycDa
    sPAR[34]=0.023; //phi_CycDi
    sPAR[35]=0.05; //phi_CycEa
    sPAR[36]=0.06; //phi_CycEi
    sPAR[37]=0.1; //phi_E2F1
    sPAR[38]=0.005; //phi_pRB
    sPAR[39]=0.06; //phi_pRBp
    sPAR[40]=0.04; //phi_pRBpp
    X[0]=0.1; //AP1
    X[1]=0.1; //CycDa
    X[2]=0.1; //CycDi
    X[3]=0.1; //CycEa
    X[4]=0.1; //CycEi
    X[5]=0.1; //E2F1
    X[6]=0.1; //pRB
    X[7]=0.1; //pRBp
    X[8]=0.1; //pRBpp

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
