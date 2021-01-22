
#ifndef BIOMD458_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD458_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[5]=0.0;
    F[6]=0.0;
    F[4]=0.0;
    F[3]=0.0;
    F[2]=((1166.666666666667 * (X[6] * (X[1] / (1.0 + ((666.6666666666666 * X[1]) + (588.2352941176471 * X[2])))))) + (-953.3333333333333 * (X[5] * (X[2] / (1.0 + ((666.6666666666666 * X[2]) + (6.666666666666667 * X[3])))))));
    F[1]=((0.4583333333333334 * (X[4] * (X[0] / ((1.0 + ((0.8333333333333334 * X[0]) + (312.5 * X[1]))) * (1.0 + (263.1578947368421 * X[3])))))) + (-1166.666666666667 * (X[6] * (X[1] / (1.0 + ((666.6666666666666 * X[1]) + (588.2352941176471 * X[2])))))));
    F[0]=0.0;

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
    X[0]=2.36; //p3g
    X[1]=0.6; //php
    X[2]=0.09; //pser
    X[3]=4.9; //ser
    X[4]=1.15; //serA
    X[5]=0.25; //serB
    X[6]=0.1; //serC

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
