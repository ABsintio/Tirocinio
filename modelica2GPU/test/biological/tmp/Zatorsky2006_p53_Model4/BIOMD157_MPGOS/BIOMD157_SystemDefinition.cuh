
#ifndef BIOMD157_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD157_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[2]=(sPAR[6] * ((sPAR[5] * (X[0] * sPAR[8])) - (sPAR[0] * X[2])));
    F[1]=(sPAR[6] * ((sPAR[0] * X[2]) - (sPAR[3] * X[1])));
    F[0]=(sPAR[6] * ((sPAR[4] * sPAR[8]) + (((-(sPAR[2])) * X[0]) - (sPAR[1] * (X[1] * (X[0] / (X[0] + sPAR[7])))))));

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
    sPAR[0]=0.8; //alpha_0
    sPAR[1]=1.7; //alpha_k
    sPAR[2]=0.0; //alpha_x
    sPAR[3]=0.8; //alpha_y
    sPAR[4]=0.9; //beta_x
    sPAR[5]=1.1; //beta_y
    sPAR[6]=1.0; //compartment
    sPAR[7]=0.0001; //k
    sPAR[8]=1.0; //psi
    X[0]=0.0; //x
    X[1]=0.8; //y
    X[2]=0.1; //y0

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
