
#ifndef BIOMD052_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD052_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[8]=(sPAR[2] * X[0]);
    F[10]=((sPAR[9] * X[2]) + (((-(sPAR[8])) * (X[7] * X[10])) - (sPAR[1] * (X[6] * X[10]))));
    F[3]=((sPAR[4] * X[7]) + (sPAR[5] * X[6]));
    F[0]=((sPAR[10] * X[2]) + ((sPAR[1] * (X[6] * X[10])) - (sPAR[2] * X[0])));
    F[2]=((sPAR[8] * (X[7] * X[10])) + (((-(sPAR[9])) - sPAR[10]) * X[2]));
    F[4]=(sPAR[7] * X[9]);
    F[1]=((sPAR[7] * X[9]) + (sPAR[9] * X[2]));
    F[9]=((2.0 * (sPAR[6] * X[6])) - (sPAR[7] * X[9]));
    F[5]=((sPAR[4] * X[7]) + (sPAR[5] * X[6]));
    F[6]=((sPAR[0] * X[7]) + (X[6] * ((((-(sPAR[6])) - sPAR[5]) - (sPAR[1] * X[10])) - sPAR[3])));
    F[7]=((sPAR[3] * X[6]) + (X[7] * ((((-(sPAR[8])) * X[10]) - sPAR[0]) - sPAR[4])));

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
    sPAR[0]=0.01; //K1
    sPAR[1]=0.00015; //K10
    sPAR[2]=0.125; //K11
    sPAR[3]=0.005; //K2
    sPAR[4]=0.00047; //K3
    sPAR[5]=0.001; //K4
    sPAR[6]=0.007; //K5
    sPAR[7]=0.004; //K6
    sPAR[8]=0.00018; //K7
    sPAR[9]=0.111; //K8
    sPAR[10]=0.144; //K9
    X[0]=0.0; //AMP
    X[1]=0.0; //Acetic_acid
    X[2]=0.0; //Amadori
    X[3]=0.0; //C5
    X[4]=0.0; //Cn
    X[5]=0.0; //Formic_acid
    X[6]=0.0; //Fru
    X[7]=160.0; //Glu
    X[8]=0.0; //Melanoidin
    X[9]=0.0; //Triose
    X[10]=15.0; //lys_R

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
