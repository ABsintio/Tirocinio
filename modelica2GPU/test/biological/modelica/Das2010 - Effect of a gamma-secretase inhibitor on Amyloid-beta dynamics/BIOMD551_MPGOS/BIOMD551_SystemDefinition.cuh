
#ifndef BIOMD551_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD551_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[0]=piecewise(T / 1.66 * 187.0 * pow(2.718281828459045, -0.089 * 1.66), T < 1.66, 187.0 * pow(2.718281828459045, -0.089 * T));
    ACC[1]=piecewise(T / 2.06 * 4.92 * pow(2.718281828459045, -0.259 * 2.06), T < 2.06, 4.92 * pow(2.718281828459045, -0.259 * T));
    F[1]=((0.4858999999999999 * X[0]) + (-0.55 * (X[1] * X[2])));
    F[2]=(0.0206 * ((1.0 / (1.0 + (0.522 * ACC[0]))) - X[2]));
    F[0]=((1.16 / (1.0 + (43.10344827586207 * ACC[1]))) + (-1.13 * X[0]));

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
    ACC[0]=0.0; //f_t
    ACC[1]=0.0; //g_t
    X[0]=1.0; //C
    X[1]=1.0; //P
    X[2]=1.0; //l

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
