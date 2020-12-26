
#ifndef BIOMD341_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD341_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[0]=(((sPAR[6] * X[1]) + ((-(sPAR[4])) - (sPAR[7] * pow(X[1],2.0)))) * X[0]);
    F[2]=((X[0] * (sPAR[9] * (pow(X[1],2.0) / (sPAR[2] + pow(X[1],2.0))))) - (sPAR[5] * X[2]));
    F[1]=(sPAR[1] + (((-(sPAR[0])) - (sPAR[8] * X[2])) * X[1]));

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
    sPAR[0]=1.44; //Eg0
    sPAR[1]=864.0; //R0
    sPAR[2]=20000.0; //alpha
    sPAR[3]=1.0; //cell
    sPAR[4]=0.06; //d0
    sPAR[5]=432.0; //k
    sPAR[6]=0.00084; //r1
    sPAR[7]=2.4e-06; //r2
    sPAR[8]=0.72; //si
    sPAR[9]=43.2; //sigma
    X[0]=37.0; //B
    X[1]=250.0; //G
    X[2]=2.8; //I

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
