
#ifndef BIOMD519_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD519_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[4]=0.172622515189057;
    ACC[3]=0.144300144300144;
    ACC[0]=(X[0] + (X[1] + X[2]));
    ACC[1]=(1.83898685224665 * (X[0] * (1.0 + (-0.008333333333333333 * ACC[0]))));
    ACC[2]=(5.88010232010212 * (X[1] * (1.0 + (-0.008333333333333333 * ACC[0]))));
    F[0]=((2.0 * (ACC[3] * ACC[1])) + ((-0.1 * X[0]) - (ACC[3] * ACC[1])));
    F[1]=((0.855699855699856 * ACC[1]) + ((2.0 * (ACC[4] * ACC[2])) + ((-0.420467092599869 * X[1]) - (ACC[4] * ACC[2]))));
    F[2]=((0.827377484810943 * ACC[2]) + (-1.10138534772246 * X[2]));

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
    ACC[0]=0.0; //T
    ACC[1]=0.0; //f0
    ACC[2]=0.0; //f1
    ACC[3]=0.0; //p00
    ACC[4]=0.0; //p11
    X[0]=1.75444831412765; //N0
    X[1]=27.40585059; //N1
    X[2]=45.6191494109; //N2

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
