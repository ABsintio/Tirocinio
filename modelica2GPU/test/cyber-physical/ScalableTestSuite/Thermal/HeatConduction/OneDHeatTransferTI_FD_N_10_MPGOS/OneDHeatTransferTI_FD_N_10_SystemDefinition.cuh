
#ifndef ONEDHEATTRANSFERTI_FD_N_10_PERTHREAD_SYSTEMDEFINITION_H
#define ONEDHEATTRANSFERTI_FD_N_10_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[0]=sPAR[2];
    F[8]=(2025.0 * (sPAR[5] * ((sPAR[2] + ((-2.0 * X[8]) + X[7])) / (sPAR[3] * sPAR[6]))));
    F[1]=(2025.0 * (sPAR[5] * ((X[2] + ((-2.0 * X[1]) + X[0])) / (sPAR[6] * sPAR[3]))));
    F[2]=(2025.0 * (sPAR[5] * ((X[3] + ((-2.0 * X[2]) + X[1])) / (sPAR[6] * sPAR[3]))));
    F[3]=(2025.0 * (sPAR[5] * ((X[4] + ((-2.0 * X[3]) + X[2])) / (sPAR[6] * sPAR[3]))));
    F[4]=(2025.0 * (sPAR[5] * ((X[5] + ((-2.0 * X[4]) + X[3])) / (sPAR[6] * sPAR[3]))));
    F[5]=(2025.0 * (sPAR[5] * ((X[6] + ((-2.0 * X[5]) + X[4])) / (sPAR[6] * sPAR[3]))));
    F[6]=(2025.0 * (sPAR[5] * ((X[7] + ((-2.0 * X[6]) + X[5])) / (sPAR[6] * sPAR[3]))));
    F[7]=(2025.0 * (sPAR[5] * ((X[8] + ((-2.0 * X[7]) + X[6])) / (sPAR[6] * sPAR[3]))));
    F[0]=(2025.0 * (sPAR[5] * ((X[1] - X[0]) / (sPAR[6] * sPAR[3]))));

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
    ACC[0]=330.0; //T[10]
    sPAR[0]=0.2; //L
    sPAR[1]=273.15; //T0
    sPAR[2]=330.0; //TN
    sPAR[3]=910.0; //cp
    sPAR[4]=0.02222222222222222; //dx
    sPAR[5]=237.0; //lambda
    sPAR[6]=2712.0; //rho
    sPARi[0]=10; //N
    X[0]=sPAR[1]; //T[1]
    X[1]=sPAR[1]; //T[2]
    X[2]=sPAR[1]; //T[3]
    X[3]=sPAR[1]; //T[4]
    X[4]=sPAR[1]; //T[5]
    X[5]=sPAR[1]; //T[6]
    X[6]=sPAR[1]; //T[7]
    X[7]=sPAR[1]; //T[8]
    X[8]=sPAR[1]; //T[9]

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
