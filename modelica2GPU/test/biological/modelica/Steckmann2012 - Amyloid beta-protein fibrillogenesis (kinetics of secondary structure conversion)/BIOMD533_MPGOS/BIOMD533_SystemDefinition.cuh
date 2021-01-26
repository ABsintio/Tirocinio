
#ifndef BIOMD533_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD533_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[1]=(X[0] + (X[1] + (X[2] + (X[3] + (X[4] + X[5])))));
    ACC[0]=(X[6] + X[7]);
    F[7]=(0.59 * (X[0] * X[6]));
    F[0]=(0.554 * X[5]);
    F[5]=((0.1568 * X[4]) + (-0.554 * X[5]));
    F[4]=(0.1568 * (X[3] - X[4]));
    F[3]=(0.1568 * (X[2] - X[3]));
    F[2]=(0.1568 * (X[1] - X[2]));
    F[1]=((0.678 * (pow(X[5],2.0) * X[8])) + (-0.1568 * X[1]));
    F[8]=((0.672 * (X[5] * X[6])) + (-0.678 * (pow(X[5],2.0) * X[8])));
    F[6]=((-0.59 * (X[0] * X[6])) + (-0.672 * (X[5] * X[6])));

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
    ACC[0]=0.0; //RC
    ACC[1]=0.0; //beta
    X[0]=0.0; //BM
    X[1]=11.9; //BN1
    X[2]=0.0; //BN2
    X[3]=0.0; //BN3
    X[4]=0.0; //BN4
    X[5]=0.0; //BTX
    X[6]=88.09999999999999; //RCT0
    X[7]=0.0; //RCT1
    X[8]=0.0; //alpha

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
