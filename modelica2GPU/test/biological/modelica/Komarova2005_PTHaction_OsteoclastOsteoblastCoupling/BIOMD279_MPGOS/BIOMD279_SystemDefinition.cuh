
#ifndef BIOMD279_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD279_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[0]=((sPAR[6] * sPAR[7]) + ((-1.0 + sPAR[5]) * (1.0 - sPAR[8])));
    ACC[2]=(pow((sPAR[3] / sPAR[1]),(sPAR[6] / ACC[0])) * pow((sPAR[4] / sPAR[2]),((1.0 - sPAR[5]) / ACC[0])));
    ACC[1]=(pow((sPAR[3] / sPAR[1]),((1.0 - sPAR[8]) / ACC[0])) * pow((sPAR[4] / sPAR[2]),(sPAR[7] / ACC[0])));
    ACC[3]=piecewise(X[0] - ACC[1], X[0] > ACC[1], 0.0);
    ACC[4]=piecewise(X[1] - ACC[2], X[1] > ACC[2], 0.0);
    F[2]=((sPAR[10] * ACC[4]) - (sPAR[9] * ACC[3]));
    F[0]=((sPAR[1] * (pow(X[0],sPAR[5]) * pow(X[1],sPAR[7]))) - (sPAR[3] * X[0]));
    F[1]=((sPAR[2] * (pow(X[0],sPAR[6]) * pow(X[1],sPAR[8]))) - (sPAR[4] * X[1]));

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
    ACC[0]=0.0; //gamma
    ACC[1]=0.0; //x1_bar
    ACC[2]=0.0; //x2_bar
    ACC[3]=0.0; //y1
    ACC[4]=0.0; //y2
    sPAR[0]=1.0; //Compartment
    sPAR[1]=3.0; //alpha1
    sPAR[2]=4.0; //alpha2
    sPAR[3]=0.2; //beta1
    sPAR[4]=0.02; //beta2
    sPAR[5]=0.5; //g11
    sPAR[6]=1.0; //g12
    sPAR[7]=-0.5; //g21
    sPAR[8]=0.0; //g22
    sPAR[9]=0.24; //k1
    sPAR[10]=0.0017; //k2
    X[0]=1.06066; //x1
    X[1]=212.132; //x2
    X[2]=100.0; //z

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
