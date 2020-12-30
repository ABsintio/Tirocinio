
#ifndef BIOMD367_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD367_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[0]=(sPAR[2] * (X[2] + (sPAR[3] * (sPAR[5] - X[0]))));
    F[3]=((sPAR[7] * X[0]) + (((-(sPAR[0])) * (X[2] * X[3])) - (sPAR[7] * X[3])));
    F[2]=((sPAR[6] * (X[1] * X[2])) + (X[2] * (((-(sPAR[0])) * X[3]) - sPAR[7])));
    F[1]=((sPAR[7] * sPAR[4]) + (X[1] * (((-(sPAR[6])) * X[2]) - sPAR[7])));

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
    sPAR[0]=1.5; //b
    sPAR[1]=1.0; //compartment_1
    sPAR[2]=0.002; //epsilon
    sPAR[3]=0.4; //k
    sPAR[4]=4.0; //mu_x
    sPAR[5]=0.4; //mu_z_star
    sPAR[6]=0.2; //r
    sPAR[7]=0.5; //zeta
    X[0]=0.4; //mu_z
    X[1]=4.0; //x
    X[2]=0.2; //y
    X[3]=0.4; //z

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
