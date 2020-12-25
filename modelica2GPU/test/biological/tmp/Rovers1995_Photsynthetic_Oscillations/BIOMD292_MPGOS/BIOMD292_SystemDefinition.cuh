
#ifndef BIOMD292_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD292_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[0]=(sPAR[0] - X[0]);
    ACC[1]=(sPAR[1] - X[1]);
    F[2]=(sPAR[2] * ((sPAR[4] * X[0]) - (sPAR[3] * X[2])));
    F[1]=(sPAR[2] * ((sPAR[6] * ACC[1]) - (sPAR[4] * X[0])));
    F[0]=(sPAR[2] * ((2.0 * (sPAR[5] * (ACC[0] * ACC[1]))) + (((-(sPAR[4])) * X[0]) - (sPAR[3] * X[2]))));
    F[3]=0.0;

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
    ACC[0]=0.0; //ADP
    ACC[1]=0.0; //NADP
    sPAR[0]=2.5; //A0
    sPAR[1]=1.2; //N0
    sPAR[2]=1.0; //c
    sPAR[3]=0.123; //k1
    sPAR[4]=0.625; //k2
    sPAR[5]=0.3; //k3
    sPAR[6]=0.614; //k4
    X[0]=0.5; //ATP
    X[1]=0.7; //NADPH
    X[2]=2.0; //X
    X[3]=1.0; //Y

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
