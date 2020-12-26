
#ifndef BIOMD082_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD082_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[7]=(sPAR[0] * ((sPAR[6] * X[3]) - (sPAR[7] * X[7])));
    F[6]=(sPAR[0] * ((sPAR[7] * X[7]) + ((sPAR[9] * X[2]) - (sPAR[3] * (X[0] * X[6])))));
    F[8]=(sPAR[0] * ((sPAR[8] * X[0]) - (sPAR[2] * (X[9] * X[8]))));
    F[5]=(sPAR[0] * ((sPAR[1] * X[3]) - (sPAR[5] * (X[1] * X[5]))));
    F[3]=(sPAR[0] * ((sPAR[5] * (X[1] * X[5])) + (((-(sPAR[1])) - sPAR[6]) * X[3])));
    F[4]=(sPAR[0] * ((sPAR[4] * X[2]) - (sPAR[10] * (X[1] * X[4]))));
    F[1]=(sPAR[0] * ((sPAR[4] * X[2]) + ((sPAR[1] * X[3]) + (X[1] * (((-(sPAR[5])) * X[5]) - (sPAR[10] * X[4]))))));
    F[2]=(sPAR[0] * ((sPAR[3] * (X[0] * X[6])) + ((sPAR[10] * (X[1] * X[4])) + (((-(sPAR[4])) - sPAR[9]) * X[2]))));
    F[0]=(sPAR[0] * ((sPAR[2] * (X[9] * X[8])) + ((sPAR[6] * X[3]) + ((sPAR[9] * X[2]) + (X[0] * (((-(sPAR[3])) * X[6]) - sPAR[8]))))));
    F[9]=(sPAR[0] * ((sPAR[8] * X[0]) - (sPAR[2] * (X[9] * X[8]))));

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
    sPAR[1]=0.1; //k10_reaction_3
    sPAR[2]=5000000.0; //k1_Forming
    sPAR[3]=100000000.0; //k2_reaction_1
    sPAR[4]=0.1; //k3_reaction_2
    sPAR[5]=10000000.0; //k4_reaction_3
    sPAR[6]=0.05; //k5_reaction_4
    sPAR[7]=0.1; //k6_reaction_5
    sPAR[8]=0.5; //k7_Forming
    sPAR[9]=0.1; //k8_reaction_1
    sPAR[10]=100000.0; //k9_reaction_2
    X[0]=0.0; //DR
    X[1]=0.0; //DRG
    X[2]=0.0; //DRG_GDP
    X[3]=0.0; //DRG_GTP
    X[4]=0.0; //GDP
    X[5]=1e-05; //GTP
    X[6]=1e-09; //G_GDP
    X[7]=0.0; //G_GTP
    X[8]=1e-09; //Recptor
    X[9]=1e-08; //agonist

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
