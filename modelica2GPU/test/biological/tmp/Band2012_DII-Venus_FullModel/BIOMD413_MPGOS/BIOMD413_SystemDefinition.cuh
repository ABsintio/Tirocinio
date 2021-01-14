
#ifndef BIOMD413_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD413_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[1]=(0.486 + ((4.49 * X[4]) + ((-1.15 * (X[3] * X[1])) + (-0.00316 * X[1]))));
    F[4]=((1.15 * (X[3] * X[1])) + (-4.665 * X[4]));
    F[3]=((0.000822 * (X[2] * X[0])) + ((4.665 * X[4]) + (X[3] * (-0.334 + (-1.15 * X[1])))));
    F[0]=((0.334 * X[3]) + (-0.000822 * (X[2] * X[0])));
    F[2]=(30.5 + ((0.334 * X[3]) + (X[2] * (-0.79 + (-0.000822 * X[0])))));

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
    sPAR[0]=18.5; //TIR1T
    sPAR[1]=30.5; //alpha_tr
    sPAR[2]=1.0; //cell
    sPAR[3]=0.486; //delta
    sPAR[4]=0.000822; //ka
    sPAR[5]=0.334; //kd
    sPAR[6]=1.15; //la
    sPAR[7]=0.00316; //lambda
    sPAR[8]=4.49; //ld
    sPAR[9]=0.175; //lm
    sPAR[10]=0.79; //mu
    X[0]=15.4; //TIR1
    X[1]=40.4; //VENUS
    X[2]=7.38; //auxin
    X[3]=0.28; //auxinTIR1
    X[4]=2.78; //auxinTIR1VENUS

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
