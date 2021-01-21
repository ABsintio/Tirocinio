
#ifndef BIOMD447_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD447_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[4]=((0.07000000000000001 * (X[11] * X[6])) + (-0.021 * X[4]));
    F[3]=((0.035 * (X[11] * X[7])) + (-0.021 * X[3]));
    F[2]=((24.5 * (X[1] * X[5])) + (-0.028 * X[2]));
    F[1]=(0.0035 + ((-24.5 * (X[1] * X[5])) + ((0.0105 * X[2]) + (-0.0175 * X[1]))));
    F[12]=((17.5 * (X[10] * X[5])) + (-24.892 * X[12]));
    F[11]=((1.05 * X[9]) + ((-0.035 * (X[11] * X[7])) + ((0.0035 * X[3]) + ((-0.07000000000000001 * (X[11] * X[6])) + ((0.0035 * X[4]) + (-0.0175 * X[11]))))));
    F[10]=((0.35 * X[9]) + ((-24.5 * (X[10] * X[8])) + ((-17.5 * (X[10] * X[5])) + ((0.0245 * X[12]) + (-0.0175 * X[10])))));
    F[9]=((0.035 * (X[5] * X[8])) + ((24.5 * (X[10] * X[8])) + ((0.005 * X[8]) + (-0.2275000000000002 * X[9]))));
    F[8]=(0.0035 + ((-0.035 * (X[5] * X[8])) + ((-24.5 * (X[10] * X[8])) + (-0.0225 * X[8]))));
    F[7]=((0.35 * (X[5] * X[6])) + ((-0.035 * (X[11] * X[7])) + ((0.0035 * X[3]) + (-0.0525 * X[7]))));
    F[6]=(0.0035 + ((-0.35 * (X[5] * X[6])) + ((-0.07000000000000001 * (X[11] * X[6])) + ((0.0035 * X[4]) + (-0.0525 * X[6])))));
    F[5]=((0.035 * (X[6] * X[0])) + ((1.4 * (X[7] * X[0])) + ((0.3745 * X[12]) + ((-17.5 * (X[10] * X[5])) + ((-24.5 * (X[1] * X[5])) + ((0.0105 * X[2]) + (-0.0525 * X[5])))))));
    F[0]=(0.035 + ((-0.035 * (X[6] * X[0])) + ((-1.4 * (X[7] * X[0])) + (-0.0175 * X[0]))));

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
    X[0]=0.003; //species_1
    X[1]=0.005; //species_10
    X[2]=0.0; //species_11
    X[3]=0.0; //species_12
    X[4]=0.0; //species_13
    X[5]=0.0; //species_2
    X[6]=0.001; //species_3
    X[7]=0.0; //species_4
    X[8]=0.001; //species_5
    X[9]=0.0; //species_6
    X[10]=0.0; //species_7
    X[11]=0.0; //species_8
    X[12]=0.0; //species_9

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
