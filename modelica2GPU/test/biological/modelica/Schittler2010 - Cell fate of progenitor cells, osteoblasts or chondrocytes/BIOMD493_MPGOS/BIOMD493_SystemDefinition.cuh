
#ifndef BIOMD493_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD493_PERTHREAD_SYSTEMDEFINITION_H

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
    F[3]=0.0;
    F[0]=(((1.0 + (0.1 * pow(X[0],2.0))) / (1.0 + ((0.1 * pow(X[1],2.0)) + ((0.5 * pow(X[2],2.0)) + (0.1 * pow(X[0],2.0)))))) + (-0.1 * X[0]));
    F[1]=(((1.0 + ((0.1 * pow(X[1],2.0)) + X[4])) / (1.0 + ((0.1 * pow(X[0],2.0)) + ((0.5 * pow(X[2],2.0)) + (0.1 * pow(X[1],2.0)))))) + (-0.1 * X[1]));
    F[2]=(((0.5 + (0.2 * pow(X[2],2.0))) / (10.0 + (X[3] + (0.1 * pow(X[2],2.0))))) + (-0.1 * X[2]));

}

template<class Precision> __forceinline__ __device__ void PerThread_EventFunction(
	int tid, int NT, Precision*	  EF, \
	Precision     T, Precision    dT, Precision*    TD, Precision*	X, \
	Precision* cPAR, Precision* sPAR, int*       sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[0]=X[2] > 12.03;

    EF[0] = (! (ACC[0]));
    EF[2] = (! (ACC[0]));
    EF[1] = (! (ACC[0]));
    EF[3] = (! (ACC[0]));
}

template<class Precision> __forceinline__ __device__ void PerThread_ActionAfterEventDetection(
    int tid, int NT, int IDX, int& UDT, \
    Precision    &T, Precision   &dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR, int*       sPARi, Precision* ACC, int* ACCi
) {
    if (IDX == 0){
	    X[3]=0.8;
    }
    if (IDX == 1){
	    X[4]=1.0;
    }
    if (IDX == 2){
	    X[3]=0.0;
    }
    if (IDX == 3){
	    X[4]=0.0;
    }

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
    ACC[0]=0.0; //$whenCondition1
    X[0]=0.14; //C
    X[1]=0.14; //O
    X[2]=12.03; //P
    X[3]=0.0; //zD
    X[4]=0.0; //zO

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
