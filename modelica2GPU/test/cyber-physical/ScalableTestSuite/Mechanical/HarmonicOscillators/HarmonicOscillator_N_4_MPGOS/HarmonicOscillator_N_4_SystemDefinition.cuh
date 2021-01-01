
#ifndef HARMONICOSCILLATOR_N_4_PERTHREAD_SYSTEMDEFINITION_H
#define HARMONICOSCILLATOR_N_4_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[3]=((sPAR[0] * (X[6] - X[7])) / sPAR[1]);
    F[2]=((sPAR[0] * (X[5] + ((-2.0 * X[6]) + X[7]))) / sPAR[1]);
    F[1]=((sPAR[0] * (X[4] + ((-2.0 * X[5]) + X[6]))) / sPAR[1]);
    F[0]=((sPAR[0] * (X[5] - X[4])) / sPAR[1]);
    F[7]=X[3];
    F[6]=X[2];
    F[5]=X[1];
    F[4]=X[0];

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
    sPAR[0]=10.0; //k
    sPAR[1]=1.0; //m
    sPARi[0]=4; //N
    X[0]=0.0; //v[1]
    X[1]=0.0; //v[2]
    X[2]=0.0; //v[3]
    X[3]=0.0; //v[4]
    X[4]=4.0; //x[1]
    X[5]=0.0; //x[2]
    X[6]=0.0; //x[3]
    X[7]=0.0; //x[4]

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
