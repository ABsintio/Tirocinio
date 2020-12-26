
#ifndef BIOMD115_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD115_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[0]=(pow(X[1],sPAR[9]) / (pow(sPAR[3],sPAR[9]) + pow(X[1],sPAR[9])));
    F[0]=((sPAR[8] * (X[1] * sPAR[1])) + (((-(sPAR[0])) * (sPAR[7] * (X[0] - X[1]))) - (sPAR[4] * (ACC[0] * ((X[0] - X[1]) * sPAR[0])))));
    F[1]=((sPAR[0] * (sPAR[6] + (sPAR[7] * (X[0] - X[1])))) + ((sPAR[4] * (ACC[0] * ((X[0] - X[1]) * sPAR[0]))) + (X[1] * (((-(sPAR[8])) * sPAR[1]) - (sPAR[5] * sPAR[2])))));

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
    ACC[0]=0.0; //fy
    sPAR[0]=1.0; //Cytosol
    sPAR[1]=1.0; //ER
    sPAR[2]=1.0; //Extracellular
    sPAR[3]=1.4; //a
    sPAR[4]=10.0; //alpha
    sPAR[5]=1.0; //beta
    sPAR[6]=1.0; //gamma
    sPAR[7]=0.01; //k
    sPAR[8]=2.0; //k1
    sPAR[9]=4.0; //n
    X[0]=1.0; //x
    X[1]=1.0; //y

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
