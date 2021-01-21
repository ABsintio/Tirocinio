
#ifndef BIOMD456_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD456_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[8]=0.0;
    F[7]=0.0;
    F[6]=0.0;
    F[5]=0.0;
    F[4]=0.0;
    F[2]=((((10.0 * (X[4] * X[1])) - (X[0] * X[2])) / (1.0 + (X[4] + (X[1] + (X[0] + (X[2] + ((X[4] * X[1]) + (X[0] * X[2])))))))) + (((X[8] * X[1]) + (-10.0 * (X[7] * X[2]))) / (1.0 + (X[2] + (X[1] + (X[7] + (X[8] + ((X[2] * X[7]) + (X[1] * X[8])))))))));
    F[1]=((((10.0 * (X[7] * X[2])) - (X[8] * X[1])) / (1.0 + (X[2] + (X[1] + (X[7] + (X[8] + ((X[2] * X[7]) + (X[1] * X[8])))))))) + (((X[0] * X[2]) + (-10.0 * (X[4] * X[1]))) / (1.0 + (X[4] + (X[1] + (X[0] + (X[2] + ((X[4] * X[1]) + (X[0] * X[2])))))))));
    F[0]=((((10.0 * (X[4] * X[1])) - (X[0] * X[2])) / (1.0 + (X[4] + (X[1] + (X[0] + (X[2] + ((X[4] * X[1]) + (X[0] * X[2])))))))) + (((X[5] + (-50.0 * X[0])) / (1.0 + (X[0] + X[5]))) + ((X[6] + (-10.0 * X[0])) / (1.0 + (X[0] + X[6])))));
    F[3]=(-1.0 + X[9]);
    F[9]=0.0;
    F[10]=0.0;

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
    X[0]=0.05625738310526; //x1
    X[1]=0.76876151899652; //x2
    X[2]=4.23123848100348; //x3
    X[3]=1.0; //x4
    X[4]=10.0; //y1
    X[5]=0.0; //y2
    X[6]=0.0; //y3
    X[7]=1.0; //y4
    X[8]=1.0; //y5
    X[9]=1.0; //y7
    X[10]=0.0; //y8

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
