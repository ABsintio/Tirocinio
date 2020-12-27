
#ifndef BIOMD231_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD231_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[4]=((-(sPAR[9])) * X[5]);
    F[5]=((sPAR[7] * (X[0] / (sPAR[4] + X[0]))) - (sPAR[9] * X[5]));
    F[0]=((2.0 * (sPAR[5] * (X[2] * (X[1] / (sPAR[0] + ((sPAR[2] * X[1]) + (X[2] * (sPAR[1] + X[1])))))))) - (sPAR[7] * (X[0] / (sPAR[4] + X[0]))));
    F[1]=(X[2] * ((sPAR[6] / (sPAR[3] + X[2])) - (sPAR[5] * (X[1] / (sPAR[0] + ((sPAR[2] * X[1]) + (X[2] * (sPAR[1] + X[1]))))))));
    F[2]=((sPAR[7] * (X[0] / (sPAR[4] + X[0]))) + (X[2] * (((-(sPAR[6])) / (sPAR[3] + X[2])) - (sPAR[5] * (X[1] / (sPAR[0] + ((sPAR[2] * X[1]) + (X[2] * (sPAR[1] + X[1])))))))));
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
    sPAR[0]=71000.0; //K
    sPAR[1]=110.0; //Km2AMP
    sPAR[2]=25.0; //Km2ATP
    sPAR[3]=700.0; //Kmapp1
    sPAR[4]=260.0; //Kmapp3
    sPAR[5]=170.0; //Vm2
    sPAR[6]=2.3; //Vmapp1
    sPAR[7]=65.0; //Vmapp3
    sPAR[8]=1.0; //compartment
    sPAR[9]=5.0; //k4
    X[0]=0.0; //ADP
    X[1]=0.0; //AMP
    X[2]=16.3; //ATP
    X[3]=0.0; //Lac
    X[4]=256.0; //NADH
    X[5]=0.0; //Pyr

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
