
#ifndef BIOMD357_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD357_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[2]=(sPAR[0] * ((sPAR[11] * (X[0] * X[7])) + (((-(sPAR[4])) - sPAR[12]) * X[2])));
    F[7]=(sPAR[0] * ((sPAR[10] * X[4]) + ((sPAR[4] * X[2]) - (sPAR[11] * (X[0] * X[7])))));
    F[4]=(sPAR[0] * ((sPAR[9] * (X[0] * X[6])) + (((-(sPAR[3])) - sPAR[10]) * X[4])));
    F[8]=(sPAR[0] * ((sPAR[8] * X[1]) + (sPAR[12] * X[2])));
    F[1]=(sPAR[0] * ((sPAR[7] * (X[0] * X[5])) + (((-(sPAR[2])) - sPAR[8]) * X[1])));
    F[5]=(sPAR[0] * ((sPAR[6] * X[3]) + ((sPAR[2] * X[1]) - (sPAR[7] * (X[0] * X[5])))));
    F[6]=((-(sPAR[0])) * ((sPAR[5] * (X[0] * X[6])) + ((sPAR[9] * (X[0] * X[6])) + (((-(sPAR[3])) * X[4]) - (sPAR[1] * X[3])))));
    F[3]=(sPAR[0] * ((sPAR[5] * (X[0] * X[6])) + (((-(sPAR[1])) - sPAR[6]) * X[3])));
    F[0]=(sPAR[0] * ((sPAR[6] * X[3]) + ((sPAR[8] * X[1]) + ((sPAR[10] * X[4]) + ((sPAR[12] * X[2]) + ((sPAR[1] * X[3]) + ((sPAR[2] * X[1]) + ((sPAR[3] * X[4]) + ((sPAR[4] * X[2]) + ((X[0] * ((((-(sPAR[5])) - sPAR[9]) * X[6]) - (sPAR[7] * X[5]))) - (sPAR[11] * (X[0] * X[7]))))))))))));

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
    sPAR[0]=1.0; //compartment
    sPAR[1]=33.4; //j1
    sPAR[2]=0.185; //j3a
    sPAR[3]=21.8; //j5
    sPAR[4]=2.66e-05; //j7a
    sPAR[5]=91.8; //k1
    sPAR[6]=82.40000000000001; //k2
    sPAR[7]=151.5; //k3a
    sPAR[8]=209.9; //k4a
    sPAR[9]=5.16; //k5
    sPAR[10]=32.3; //k6
    sPAR[11]=4.7; //k7a
    sPAR[12]=42.6; //k8a
    X[0]=0.00015; //E
    X[1]=0.0; //E_M
    X[2]=0.0; //E_P2
    X[3]=0.0; //E_P_1
    X[4]=0.0; //E_P_2
    X[5]=0.0; //M
    X[6]=1.0; //P
    X[7]=0.0; //P2
    X[8]=0.0; //T

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
