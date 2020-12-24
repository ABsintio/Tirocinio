
#ifndef BIOMD322_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD322_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[3]=(sPAR[4] * ((sPAR[10] * X[3]) + (function_2(X[0],sPAR[1],sPAR[3],sPAR[13]) + (((-(sPAR[8])) - sPAR[10]) * X[3]))));
    F[2]=(sPAR[4] * ((sPAR[9] * X[2]) + (function_1(sPAR[2],sPAR[0],sPAR[12],X[1]) + (((-(sPAR[7])) - sPAR[9]) * X[2]))));
    F[1]=(sPAR[4] * ((sPAR[10] * X[3]) - (sPAR[6] * X[1])));
    F[0]=(sPAR[4] * ((sPAR[9] * X[2]) + ((sPAR[14] * X[3]) - (sPAR[5] * X[0]))));

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
    sPAR[0]=1.0; //Shalve_6
    sPAR[1]=1.0; //Shalve_7
    sPAR[2]=1.0; //V_6
    sPAR[3]=1.0; //V_7
    sPAR[4]=1.0; //compartment_1
    sPAR[5]=1.0; //k1_0
    sPAR[6]=1.0; //k1_1
    sPAR[7]=1.0; //k1_2
    sPAR[8]=1.0; //k1_3
    sPAR[9]=0.57; //parameter_1
    sPAR[10]=2.5; //parameter_2
    sPAR[11]=1.0; //parameter_3
    sPAR[12]=6.5; //parameter_4
    sPAR[13]=6.5; //parameter_5
    sPAR[14]=1.5; //parameter_6
    X[0]=0.1; //species_1
    X[1]=0.1; //species_2
    X[2]=0.1; //species_3
    X[3]=0.1; //species_4

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
