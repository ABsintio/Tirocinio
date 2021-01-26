
#ifndef BIOMD518_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD518_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[4]=(0.1469108903829008 / (1.5709821429 + X[3]));
    ACC[5]=0.172622515189057;
    ACC[3]=(0.184310665192792 - (0.1469108903829008 / (1.5709821429 + X[3])));
    ACC[0]=(X[0] + (X[1] + (X[2] + X[3])));
    ACC[1]=(1.99862442375025 * (X[0] * (1.0 + (-0.008333333333333333 * ACC[0]))));
    ACC[2]=(6.09173180099314 * (X[1] * (1.0 + (-0.008333333333333333 * ACC[0]))));
    F[0]=((2.0 * (ACC[3] * ACC[1])) + ((ACC[4] * ACC[1]) + ((-0.31419642858 * (X[0] / (1.5709821429 + X[3]))) + (((-(ACC[3])) - ACC[4]) * ACC[1]))));
    F[3]=((ACC[4] * ACC[1]) + (-0.0379622536021846 * X[3]));
    F[1]=((0.815689334807208 * ACC[1]) + ((2.0 * (ACC[5] * ACC[2])) + ((-1.32109258830295 * (X[1] / (1.5709821429 + X[3]))) - (ACC[5] * ACC[2]))));
    F[2]=((0.827377484810943 * ACC[2]) + (-3.460513427447383 * (X[2] / (1.5709821429 + X[3]))));

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
    ACC[4]=0.0; //p03
    ACC[5]=0.0; //p11
    X[0]=1.75444831412765; //N0
    X[1]=27.40585059; //N1
    X[2]=45.6191494109; //N2
    X[3]=1.5709821429; //N3

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
