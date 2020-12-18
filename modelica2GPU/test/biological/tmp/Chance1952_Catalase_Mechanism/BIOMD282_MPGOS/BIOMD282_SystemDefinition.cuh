
#ifndef BIOMD282_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD282_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[4]=(sPAR[0] * (sPAR[3] * (X[2] * X[0])));
    F[0]=0.0;
    F[3]=(sPAR[0] * (sPAR[4] * (X[2] * X[5])));
    F[2]=(sPAR[0] * ((sPAR[1] * (X[1] * X[5])) + (((-(X[2])) * (sPAR[2] + (sPAR[4] * X[5]))) - (sPAR[3] * (X[2] * X[0])))));
    F[5]=((-(sPAR[0])) * ((sPAR[1] * (X[1] * X[5])) + (X[2] * ((sPAR[4] * X[5]) - sPAR[2]))));
    F[1]=(sPAR[0] * ((X[2] * ((sPAR[4] * X[5]) + (sPAR[3] * X[0]))) + ((sPAR[2] * X[2]) - (sPAR[1] * (X[1] * X[5])))));

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
    sPAR[1]=11.0; //k1
    sPAR[2]=0.0; //k2
    sPAR[3]=0.72; //k4
    sPAR[4]=16.6; //k4_prime
    X[0]=0.0; //a
    X[1]=1.36; //e
    X[2]=0.0; //p
    X[3]=0.0; //p1
    X[4]=0.0; //p2
    X[5]=4.0; //x

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
