
#ifndef BIOMD098_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD098_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[0]=((sPAR[6] * (sPAR[3] * (pow(X[1],sPAR[10]) / (pow(sPAR[0],sPAR[10]) + pow(X[1],sPAR[10]))))) - (sPAR[12] * ((sPAR[4] * (pow(X[0],sPAR[9]) * (pow(X[1],sPAR[11]) / ((pow(sPAR[2],sPAR[9]) + pow(X[0],sPAR[9])) * (pow(sPAR[1],sPAR[11]) + pow(X[1],sPAR[11])))))) + (sPAR[8] * X[0]))));
    F[1]=((sPAR[6] * (sPAR[13] + (sPAR[14] * sPAR[5]))) + ((sPAR[12] * ((sPAR[4] * (pow(X[0],sPAR[9]) * (pow(X[1],sPAR[11]) / ((pow(sPAR[2],sPAR[9]) + pow(X[0],sPAR[9])) * (pow(sPAR[1],sPAR[11]) + pow(X[1],sPAR[11])))))) + (sPAR[8] * X[0]))) - (sPAR[6] * ((sPAR[3] * (pow(X[1],sPAR[10]) / (pow(sPAR[0],sPAR[10]) + pow(X[1],sPAR[10])))) + (sPAR[7] * X[1])))));

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
    sPAR[0]=1.0; //K2
    sPAR[1]=0.9; //Ka
    sPAR[2]=2.0; //Kr
    sPAR[3]=65.0; //Vm2
    sPAR[4]=500.0; //Vm3
    sPAR[5]=0.301; //beta
    sPAR[6]=1.0; //cytosol
    sPAR[7]=10.0; //k
    sPAR[8]=1.0; //kf
    sPAR[9]=2.0; //m
    sPAR[10]=2.0; //n
    sPAR[11]=4.0; //p
    sPAR[12]=1.0; //store
    sPAR[13]=1.0; //v0
    sPAR[14]=7.3; //v1
    X[0]=1.6; //Y
    X[1]=0.15; //Z

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
