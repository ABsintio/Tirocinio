
#ifndef BIOMD517_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD517_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[4]=(0.7328360968825605 / (0.783656669828271 + X[3]));
    ACC[5]=0.1949540411;
    ACC[3]=(0.3686219072 - (0.7328360968825605 / (0.783656669828271 + X[3])));
    ACC[0]=(X[0] + (X[1] + (X[2] + X[3])));
    ACC[1]=(1.998624424 * (X[0] * (1.0 + (-0.009425919929459662 * ACC[0]))));
    ACC[2]=(10.58581849 * (X[1] * (1.0 + (-0.009425919929459662 * ACC[0]))));
    F[0]=((2.0 * (ACC[3] * ACC[1])) + ((ACC[4] * ACC[1]) + ((-0.00307292531823536 * (X[0] / (0.153646265911768 + X[3]))) + (((-(ACC[3])) - ACC[4]) * ACC[1]))));
    F[3]=((ACC[4] * ACC[1]) + (-0.1677359306 * X[3]));
    F[1]=((0.6313780928 * ACC[1]) + ((2.0 * (ACC[5] * ACC[2])) + ((-8.420698779761672 * (X[1] / (15.3645644864404 + X[3]))) - (ACC[5] * ACC[2]))));
    F[2]=((0.8050459589 * ACC[2]) + (-5.107091835149229 * (X[2] / (2.70405837954268 + X[3]))));

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
    ACC[0]=0.0; //T
    ACC[1]=0.0; //f0
    ACC[2]=0.0; //f1
    ACC[3]=0.0; //p00
    ACC[4]=0.0; //p03
    ACC[5]=0.0; //p11
    X[0]=1.71589842441293; //N0
    X[1]=26.8036712557471; //N1
    X[2]=44.6167755224769; //N2
    X[3]=1.53646349229917; //N3

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
