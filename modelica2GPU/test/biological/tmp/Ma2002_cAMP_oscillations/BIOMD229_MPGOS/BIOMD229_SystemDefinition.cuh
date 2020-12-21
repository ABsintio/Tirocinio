
#ifndef BIOMD229_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD229_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[5]=((sPAR[3] * X[0]) - (sPAR[4] * X[5]));
    F[4]=(sPAR[12] - (sPAR[13] * (X[2] * X[4])));
    F[2]=((sPAR[10] * X[1]) - (sPAR[11] * (X[3] * X[2])));
    F[6]=((sPAR[14] * X[0]) - (sPAR[2] * (X[4] * X[6])));
    F[3]=((sPAR[8] * X[6]) - (sPAR[9] * X[3]));
    F[1]=((sPAR[5] * X[5]) - (sPAR[6] * X[1]));
    F[0]=((sPAR[1] * X[1]) - (sPAR[7] * (X[0] * X[3])));

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
    sPAR[0]=1.0; //compartment
    sPAR[1]=2.0; //k1
    sPAR[2]=0.8; //k10
    sPAR[3]=0.7; //k11
    sPAR[4]=4.9; //k12
    sPAR[5]=23.0; //k13
    sPAR[6]=4.5; //k14
    sPAR[7]=0.9; //k2
    sPAR[8]=2.5; //k3
    sPAR[9]=1.5; //k4
    sPAR[10]=0.6; //k5
    sPAR[11]=0.8; //k6
    sPAR[12]=1.0; //k7
    sPAR[13]=1.3; //k8
    sPAR[14]=0.3; //k9
    X[0]=3.39; //ACA
    X[1]=2.45; //CAR1
    X[2]=1.13; //ERK2
    X[3]=1.6; //PKA
    X[4]=0.9; //REGA
    X[5]=0.48; //excAMP
    X[6]=1.2; //incAMP

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
