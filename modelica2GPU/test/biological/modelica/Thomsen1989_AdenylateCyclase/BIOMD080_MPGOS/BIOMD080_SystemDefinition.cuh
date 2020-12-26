
#ifndef BIOMD080_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD080_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[9]=(sPAR[0] * ((sPAR[8] * X[1]) - (sPAR[2] * (X[0] * X[9]))));
    F[8]=(sPAR[0] * ((sPAR[6] * X[4]) - (sPAR[7] * X[8])));
    F[6]=(sPAR[0] * ((sPAR[1] * X[4]) - (sPAR[5] * (X[2] * X[6]))));
    F[4]=(sPAR[0] * ((sPAR[5] * (X[2] * X[6])) + (((-(sPAR[1])) - sPAR[6]) * X[4])));
    F[5]=(sPAR[0] * ((sPAR[4] * X[3]) - (sPAR[10] * (X[5] * X[2]))));
    F[2]=(sPAR[0] * ((sPAR[4] * X[3]) + ((sPAR[1] * X[4]) + (((-(sPAR[5])) * (X[2] * X[6])) - (sPAR[10] * (X[5] * X[2]))))));
    F[7]=(sPAR[0] * ((sPAR[7] * X[8]) + ((sPAR[9] * X[3]) - (sPAR[3] * (X[1] * X[7])))));
    F[3]=(sPAR[0] * ((sPAR[3] * (X[1] * X[7])) + ((sPAR[10] * (X[5] * X[2])) + (((-(sPAR[4])) - sPAR[9]) * X[3]))));
    F[1]=(sPAR[0] * ((sPAR[2] * (X[0] * X[9])) + ((sPAR[6] * X[4]) + ((sPAR[9] * X[3]) + (X[1] * (((-(sPAR[3])) * X[7]) - sPAR[8]))))));
    F[0]=(sPAR[0] * ((sPAR[8] * X[1]) - (sPAR[2] * (X[0] * X[9]))));

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
    sPAR[0]=1.0; //cell
    sPAR[1]=55.0; //k10_Reaction_4
    sPAR[2]=5000000.0; //k1_Reaction_1
    sPAR[3]=100000000.0; //k2_Reaction_2
    sPAR[4]=5.0; //k3_Reaction_3
    sPAR[5]=5000000.0; //k4_Reaction_4
    sPAR[6]=1.0; //k5_Reaction_5
    sPAR[7]=2.0; //k6_Reaction_6
    sPAR[8]=10.0; //k7_Reaction_1
    sPAR[9]=0.1; //k8_Reaction_2
    sPAR[10]=100000.0; //k9_Reaction_3
    X[0]=3.1e-05; //D
    X[1]=0.0; //DR
    X[2]=0.0; //DRG
    X[3]=0.0; //DRG_GDP
    X[4]=0.0; //DRG_GTP
    X[5]=0.0; //GDP
    X[6]=1e-05; //GTP
    X[7]=1e-06; //G_GDP
    X[8]=0.0; //G_GTP
    X[9]=1e-10; //R

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
