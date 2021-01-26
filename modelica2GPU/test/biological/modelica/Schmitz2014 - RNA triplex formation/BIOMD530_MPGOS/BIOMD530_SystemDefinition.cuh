
#ifndef BIOMD530_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD530_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[1]=(function_4(1.0,X[0]) - X[1]);
    F[9]=0.0;
    F[8]=0.0;
    F[7]=0.0;
    F[6]=((0.999534 * (X[0] * (X[2] * X[3]))) + (-1.187796 * X[6]));
    F[5]=((1.30837e-05 * (X[0] * X[3])) + (-1.241033 * X[5]));
    F[4]=((0.00045298 * (X[0] * X[2])) + (-1.249955 * X[4]));
    F[3]=(function_3(1.0,X[9]) + ((0.241033 * X[5]) + ((0.187796 * X[6]) + ((X[0] * ((-1.30837e-05 * X[3]) + (-0.999534 * (X[2] * X[3])))) - X[3]))));
    F[2]=(function_2(1.0,X[8]) + ((0.249955 * X[4]) + ((0.187796 * X[6]) + ((X[0] * (X[2] * (-0.00045298 + (-0.999534 * X[3])))) - X[2]))));
    F[0]=(function_1(1.0,X[7]) + ((0.249955 * X[4]) + ((0.241033 * X[5]) + ((0.187796 * X[6]) + ((X[0] * ((-0.00045298 * X[2]) + (-1.30837e-05 * X[3]))) + ((-0.999534 * (X[0] * (X[2] * X[3]))) - X[0]))))));

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
    X[0]=1.0; //species_1
    X[1]=1.0; //species_10
    X[2]=0.0; //species_2
    X[3]=0.0; //species_3
    X[4]=0.0; //species_4
    X[5]=0.0; //species_5
    X[6]=0.0; //species_6
    X[7]=1.0; //species_7
    X[8]=1.0; //species_8
    X[9]=1.0; //species_9

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
