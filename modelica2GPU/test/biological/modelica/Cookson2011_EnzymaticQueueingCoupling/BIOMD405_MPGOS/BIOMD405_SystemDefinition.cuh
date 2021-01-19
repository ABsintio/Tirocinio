
#ifndef BIOMD405_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD405_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[4]=((10.0 * (X[2] + X[3])) + (-1000.0 * (X[4] * (X[0] + X[1]))));
    F[3]=((1000.0 * (X[1] * X[4])) + (-10.0 * X[3]));
    F[2]=((1000.0 * (X[0] * X[4])) + (-10.0 * X[2]));
    F[1]=(500.0 + (X[1] * (-0.03465735902799 + (-1000.0 * X[4]))));
    F[0]=(500.0 + (X[0] * (-0.03465735902799 + (-1000.0 * X[4]))));
    F[5]=0.0;

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
    sPAR[0]=1.0; //compartment_1
    sPAR[1]=500.0; //parameter_1
    sPAR[2]=500.0; //parameter_2
    sPAR[3]=10.0; //parameter_3
    sPAR[4]=1000.0; //parameter_4
    sPAR[5]=0.03465735902799; //parameter_5
    X[0]=0.0; //species_1
    X[1]=0.0; //species_2
    X[2]=0.0; //species_3
    X[3]=0.0; //species_4
    X[4]=100.0; //species_5
    X[5]=1.0; //species_6

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
