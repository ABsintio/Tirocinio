
#ifndef BIOMD206_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD206_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[8]=(sPAR[1] * ((0.1 * (sPAR[4] * (X[7] - X[8]))) - (sPAR[15] * X[8])));
    F[7]=(sPAR[1] * ((sPAR[11] * X[6]) + ((sPAR[4] * (X[8] - X[7])) - (sPAR[12] * (X[7] * (sPAR[18] - X[1]))))));
    F[6]=(sPAR[1] * ((sPAR[10] * (X[5] * (sPAR[0] - X[0]))) - (sPAR[11] * X[6])));
    F[5]=(sPAR[1] * ((((sPAR[6] * (sPAR[7] * (X[4] * (X[1] * (sPAR[0] - X[0]))))) - (sPAR[8] * (sPAR[9] * (X[5] * (X[0] * (sPAR[18] - X[1])))))) / ((sPAR[8] * (sPAR[18] - X[1])) + (sPAR[7] * (sPAR[0] - X[0])))) - (sPAR[10] * (X[5] * (sPAR[0] - X[0])))));
    F[1]=(sPAR[1] * ((sPAR[14] * (X[4] * (sPAR[18] - X[1]))) + ((sPAR[12] * (X[7] * (sPAR[18] - X[1]))) + (((sPAR[8] * (sPAR[9] * (X[5] * (X[0] * (sPAR[18] - X[1]))))) - (sPAR[6] * (sPAR[7] * (X[4] * (X[1] * (sPAR[0] - X[0])))))) / ((sPAR[8] * (sPAR[18] - X[1])) + (sPAR[7] * (sPAR[0] - X[0])))))));
    F[4]=(sPAR[1] * ((2.0 * (sPAR[5] * X[3])) + ((((sPAR[8] * (sPAR[9] * (X[5] * (X[0] * (sPAR[18] - X[1]))))) - (sPAR[6] * (sPAR[7] * (X[4] * (X[1] * (sPAR[0] - X[0])))))) / ((sPAR[8] * (sPAR[18] - X[1])) + (sPAR[7] * (sPAR[0] - X[0])))) - (sPAR[14] * (X[4] * (sPAR[18] - X[1]))))));
    F[3]=(sPAR[1] * ((sPAR[3] * (X[2] * (X[0] / (1.0 + pow((X[0] / sPAR[16]),sPAR[17]))))) - (sPAR[5] * X[3])));
    F[0]=(sPAR[1] * ((((sPAR[6] * (sPAR[7] * (X[4] * (X[1] * (sPAR[0] - X[0]))))) - (sPAR[8] * (sPAR[9] * (X[5] * (X[0] * (sPAR[18] - X[1])))))) / ((sPAR[8] * (sPAR[18] - X[1])) + (sPAR[7] * (sPAR[0] - X[0])))) + ((sPAR[10] * (X[5] * (sPAR[0] - X[0]))) + ((-2.0 * (sPAR[3] * (X[2] * (X[0] / (1.0 + pow((X[0] / sPAR[16]),sPAR[17])))))) - (sPAR[13] * X[0])))));
    F[2]=(sPAR[1] * (sPAR[2] - (sPAR[3] * (X[2] * (X[0] / (1.0 + pow((X[0] / sPAR[16]),sPAR[17])))))));

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
    sPAR[0]=4.0; //atot
    sPAR[1]=1.0; //compartment
    sPAR[2]=50.0; //k0
    sPAR[3]=550.0; //k1
    sPAR[4]=375.0; //k10
    sPAR[5]=9.800000000000001; //k2
    sPAR[6]=323.8; //k31
    sPAR[7]=76411.10000000001; //k32
    sPAR[8]=57823.1; //k33
    sPAR[9]=23.7; //k34
    sPAR[10]=80.0; //k4
    sPAR[11]=9.699999999999999; //k5
    sPAR[12]=2000.0; //k6
    sPAR[13]=28.0; //k7
    sPAR[14]=85.7; //k8
    sPAR[15]=80.0; //k9
    sPAR[16]=1.0; //ki
    sPAR[17]=4.0; //n
    sPAR[18]=1.0; //ntot
    X[0]=2.0; //at
    X[1]=0.6; //na
    X[2]=1.0; //s1
    X[3]=5.0; //s2
    X[4]=0.6; //s3
    X[5]=0.7; //s4
    X[6]=8.0; //s5
    X[7]=0.08; //s6
    X[8]=0.02; //s6o

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
