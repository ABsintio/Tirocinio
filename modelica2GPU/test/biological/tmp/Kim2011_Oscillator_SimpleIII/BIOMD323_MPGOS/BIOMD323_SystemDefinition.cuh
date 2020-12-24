
#ifndef BIOMD323_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD323_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[2]=(sPAR[3] * (function_1(sPAR[4],sPAR[0],sPAR[6],X[0]) - function_3(X[2],sPAR[5])));
    F[1]=(sPAR[3] * (function_1(sPAR[4],sPAR[2],sPAR[6],X[2]) - function_3(X[1],sPAR[5])));
    F[0]=(sPAR[3] * (function_1(sPAR[4],sPAR[1],sPAR[6],X[1]) - function_3(X[0],sPAR[5])));

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
    sPAR[0]=1.0; //Shalve_0
    sPAR[1]=1.0; //Shalve_1
    sPAR[2]=1.0; //Shalve_2
    sPAR[3]=1.0; //compartment_1
    sPAR[4]=1.0; //parameter_1
    sPAR[5]=0.3; //parameter_2
    sPAR[6]=5.0; //parameter_3
    X[0]=0.0; //species_1
    X[1]=0.0; //species_2
    X[2]=0.33; //species_3

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
