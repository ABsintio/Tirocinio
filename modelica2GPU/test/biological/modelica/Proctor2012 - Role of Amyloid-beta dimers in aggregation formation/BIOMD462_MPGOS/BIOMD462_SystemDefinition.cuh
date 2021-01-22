
#ifndef BIOMD462_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD462_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[4]=0.0;
    F[3]=(-1.8e-10 * X[3]);
    F[5]=0.0;
    F[1]=((5.57e-06 * (X[0] * (-1.0 + X[0]))) + ((0.00574 * (X[2] * (pow(X[1],2.0) / (16.0 + pow(X[1],2.0))))) + (-5.4357e-05 * X[1])));
    F[0]=((5.8915e-08 * (X[2] * (-1.0 + X[2]))) + (X[0] * (-8.465500000000001e-06 + (-2.785e-06 * (-1.0 + X[0])))));
    F[2]=((1.86e-05 * X[5]) + ((1.6931e-05 * X[0]) + ((5.4357e-05 * X[1]) + ((X[2] * ((-2.1e-08 * X[3]) + (-1.1783e-07 * (-1.0 + X[2])))) + (-0.00574 * (X[2] * (pow(X[1],2.0) / (16.0 + pow(X[1],2.0)))))))));

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
    X[0]=0.0; //AbDim
    X[1]=0.0; //AbP
    X[2]=0.0; //Abeta
    X[3]=1000.0; //Nep
    X[4]=1.0; //Sink
    X[5]=1.0; //Source

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
