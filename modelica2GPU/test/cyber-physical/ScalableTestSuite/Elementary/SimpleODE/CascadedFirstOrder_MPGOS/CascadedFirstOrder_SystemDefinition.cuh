
#ifndef CASCADEDFIRSTORDER_PERTHREAD_SYSTEMDEFINITION_H
#define CASCADEDFIRSTORDER_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[9]=((X[8] - X[9]) / sPAR[1]);
    F[8]=((X[7] - X[8]) / sPAR[1]);
    F[7]=((X[6] - X[7]) / sPAR[1]);
    F[6]=((X[5] - X[6]) / sPAR[1]);
    F[5]=((X[4] - X[5]) / sPAR[1]);
    F[4]=((X[3] - X[4]) / sPAR[1]);
    F[3]=((X[2] - X[3]) / sPAR[1]);
    F[2]=((X[1] - X[2]) / sPAR[1]);
    F[1]=((X[0] - X[1]) / sPAR[1]);
    F[0]=((1.0 - X[0]) / sPAR[1]);

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
    sPAR[0]=1.0; //Ti
    sPAR[1]=0.1; //tau
    sPARi[0]=10; //N
    X[0]=0.0; //x[1]
    X[1]=0.0; //x[2]
    X[2]=0.0; //x[3]
    X[3]=0.0; //x[4]
    X[4]=0.0; //x[5]
    X[5]=0.0; //x[6]
    X[6]=0.0; //x[7]
    X[7]=0.0; //x[8]
    X[8]=0.0; //x[9]
    X[9]=0.0; //x[10]

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
