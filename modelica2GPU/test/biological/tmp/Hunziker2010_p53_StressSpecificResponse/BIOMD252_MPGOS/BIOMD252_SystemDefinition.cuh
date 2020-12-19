
#ifndef BIOMD252_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD252_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[0]=pow(X[2],2.0);
    F[3]=((sPAR[7] * (X[2] * X[0])) + ((((-(sPAR[5])) - sPAR[6]) - sPAR[4]) * X[3]));
    F[0]=((sPAR[9] * X[1]) + (((sPAR[6] + sPAR[4]) * X[3]) + (((-(sPAR[7])) * (X[2] * X[0])) - (sPAR[5] * X[0]))));
    F[1]=((sPAR[8] * ACC[0]) - (sPAR[2] * X[1]));
    F[2]=(sPAR[0] + ((X[2] * (((-(sPAR[7])) * X[0]) - sPAR[1])) + ((sPAR[6] + sPAR[5]) * X[3])));

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
    ACC[0]=0.0; //$cse1
    sPAR[0]=1000.0; //S
    sPAR[1]=0.1; //alpha
    sPAR[2]=0.6; //beta
    sPAR[3]=1.0; //compartment_1
    sPAR[4]=11.0; //delta
    sPAR[5]=0.2; //gamma
    sPAR[6]=7200.0; //k_b
    sPAR[7]=5000.0; //k_f
    sPAR[8]=0.03; //k_t
    sPAR[9]=1.4; //k_tl
    X[0]=1.0; //m
    X[1]=1.0; //mm
    X[2]=1.0; //p
    X[3]=1.0; //pm

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
