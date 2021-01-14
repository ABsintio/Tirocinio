
#ifndef BIOMD415_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD415_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[0]=0.038475;
    F[5]=((0.004 * function_1(X[0],0.49,0.00825)) + ((0.016 * function_1(X[0],0.49,0.039)) + (0.097 * function_1(X[0],0.49,0.00255))));
    F[4]=((0.014 * function_1(X[0],0.49,0.00825)) + ((0.018 * function_1(X[0],0.49,0.039)) + (0.098 * function_1(X[0],0.49,0.00255))));
    F[3]=((0.04 * function_1(X[0],0.49,0.00825)) + ((0.026 * function_1(X[0],0.49,0.039)) + (0.218 * function_1(X[0],0.49,0.00255))));
    F[2]=((0.162 * function_1(X[0],0.49,0.00825)) + ((0.127 * function_1(X[0],0.49,0.039)) + (0.218 * function_1(X[0],0.49,0.00255))));
    F[1]=((0.012 * function_1(X[0],0.49,0.00825)) + ((0.015 * function_1(X[0],0.49,0.039)) + (0.107 * function_1(X[0],0.49,0.00255))));
    F[9]=((0.05 * function_1(X[0],0.49,0.00825)) + ((0.025 * function_1(X[0],0.49,0.039)) + (0.136 * function_1(X[0],0.49,0.00255))));
    F[7]=((0.574 * function_1(X[0],0.49,0.00825)) + ((0.751 * function_1(X[0],0.49,0.039)) + ((0.068 * function_1(X[0],0.49,0.00255)) - function_1(X[7],0.05,0.285))));
    F[0]=(((-(function_1(X[0],0.49,0.00825))) - function_1(X[0],0.49,0.039)) - function_1(X[0],0.49,0.00255));
    F[8]=((0.144 * function_1(X[0],0.49,0.00825)) + ((0.023 * function_1(X[0],0.49,0.039)) + ((0.059 * function_1(X[0],0.49,0.00255)) - function_1(X[8],0.05,ACC[0]))));
    F[6]=(function_1(X[7],0.05,0.285) + function_1(X[8],0.05,ACC[0]));

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
    ACC[0]=0.038475; //parameter_9
    sPAR[0]=1.0; //compartment_1
    sPAR[1]=0.49; //parameter_1
    sPAR[2]=0.00825; //parameter_2
    sPAR[3]=0.49; //parameter_3
    sPAR[4]=0.039; //parameter_4
    sPAR[5]=0.49; //parameter_5
    sPAR[6]=0.00255; //parameter_6
    sPAR[7]=0.05; //parameter_7
    sPAR[8]=0.285; //parameter_8
    X[0]=6.69999967735732e-05; //species_1
    X[1]=0.0; //species_10
    X[2]=0.0; //species_11
    X[3]=0.0; //species_12
    X[4]=0.0; //species_13
    X[5]=0.0; //species_14
    X[6]=0.0; //species_15
    X[7]=0.0; //species_7
    X[8]=0.0; //species_8
    X[9]=0.0; //species_9

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
