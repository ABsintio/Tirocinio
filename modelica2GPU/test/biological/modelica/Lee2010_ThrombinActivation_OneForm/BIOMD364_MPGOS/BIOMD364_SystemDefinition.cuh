
#ifndef BIOMD364_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD364_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[4]=(sPAR[0] * ((sPAR[17] * (X[0] * X[11])) + (((-(sPAR[6])) - sPAR[19]) * X[4])));
    F[5]=(sPAR[0] * ((sPAR[16] * (X[0] * X[12])) + (((-(sPAR[5])) - sPAR[18]) * X[5])));
    F[12]=(sPAR[0] * ((sPAR[8] * X[11]) + ((sPAR[5] * X[5]) - (sPAR[16] * (X[0] * X[12])))));
    F[11]=(sPAR[0] * ((sPAR[15] * X[7]) + ((sPAR[6] * X[4]) + (((-(sPAR[17])) * (X[0] * X[11])) - (sPAR[8] * X[11])))));
    F[7]=(sPAR[0] * ((sPAR[14] * (X[0] * X[10])) + ((((-(sPAR[22])) - sPAR[4]) - sPAR[15]) * X[7])));
    F[13]=(sPAR[0] * ((sPAR[12] * X[2]) + ((sPAR[13] * X[1]) + ((sPAR[18] * X[5]) + ((sPAR[19] * X[4]) + ((sPAR[21] * X[6]) + (sPAR[22] * X[7])))))));
    F[1]=(sPAR[0] * ((sPAR[11] * (X[0] * X[8])) + (((-(sPAR[3])) - sPAR[13]) * X[1])));
    F[2]=(sPAR[0] * ((sPAR[10] * (X[0] * X[9])) + (((-(sPAR[2])) - sPAR[12]) * X[2])));
    F[9]=(sPAR[0] * ((sPAR[20] * X[8]) + ((sPAR[2] * X[2]) - (sPAR[10] * (X[0] * X[9])))));
    F[8]=(sPAR[0] * ((sPAR[9] * X[6]) + ((sPAR[3] * X[1]) + (((-(sPAR[11])) * (X[0] * X[8])) - (sPAR[20] * X[8])))));
    F[10]=((-(sPAR[0])) * ((sPAR[7] * (X[0] * X[10])) + ((sPAR[14] * (X[0] * X[10])) + (((-(sPAR[4])) * X[7]) - (sPAR[1] * X[6])))));
    F[6]=(sPAR[0] * ((sPAR[7] * (X[0] * X[10])) + ((((-(sPAR[21])) - sPAR[1]) - sPAR[9]) * X[6])));
    F[0]=(sPAR[0] * ((sPAR[9] * X[6]) + ((sPAR[12] * X[2]) + ((sPAR[13] * X[1]) + ((sPAR[15] * X[7]) + ((sPAR[18] * X[5]) + ((sPAR[19] * X[4]) + ((sPAR[1] * X[6]) + ((sPAR[2] * X[2]) + ((sPAR[3] * X[1]) + ((sPAR[4] * X[7]) + ((sPAR[5] * X[5]) + ((sPAR[6] * X[4]) + ((X[0] * (((-(sPAR[11])) * X[8]) - (sPAR[16] * X[12]))) + (((X[0] * (((-(sPAR[14])) * X[10]) - (sPAR[17] * X[11]))) - (sPAR[10] * (X[0] * X[9]))) - (sPAR[7] * (X[0] * X[10])))))))))))))))));
    F[3]=0.0;

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
    sPAR[2]=1.58e-06; //j3
    sPAR[3]=0.185; //j3a
    sPAR[4]=21.8; //j5
    sPAR[5]=4.46e-09; //j7
    sPAR[6]=2.66e-05; //j7a
    sPAR[7]=91.8; //k1
    sPAR[8]=7.23e-10; //k10
    sPAR[9]=82.40000000000001; //k2
    sPAR[10]=38.1; //k3
    sPAR[11]=151.5; //k3a
    sPAR[12]=38.1; //k4
    sPAR[13]=209.9; //k4a
    sPAR[14]=5.16; //k5
    sPAR[15]=32.3; //k6
    sPAR[16]=6.76e-08; //k7
    sPAR[17]=4.7; //k7a
    sPAR[18]=0.00599; //k8
    sPAR[19]=42.6; //k8a
    sPAR[20]=3.12e-08; //k9
    sPAR[21]=2.39e-06; //kC1
    sPAR[22]=0.031; //kC2
    X[0]=0.00015; //E
    X[1]=0.0; //E_M
    X[2]=0.0; //E_M1
    X[3]=0.0; //E_P1
    X[4]=0.0; //E_P2
    X[5]=0.0; //E_P21
    X[6]=0.0; //E_P_1
    X[7]=0.0; //E_P_2
    X[8]=0.0; //M
    X[9]=0.0; //M1
    X[10]=1.0; //P
    X[11]=0.0; //P2
    X[12]=0.0; //P21
    X[13]=0.0; //T

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
