
#ifndef BIOMD039_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD039_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[4]=((sPAR[7] * X[2]) - (sPAR[9] * (X[3] * X[4])));
    F[2]=((sPAR[9] * (X[3] * X[4])) - (sPAR[7] * X[2]));
    F[1]=(0.25 * ((sPAR[4] * (pow(X[3],8.0) / (pow(sPAR[1],8.0) + pow(X[3],8.0)))) - (X[1] * ((sPAR[8] * (pow(X[3],2.0) / (pow(sPAR[2],2.0) + pow(X[3],2.0)))) + sPAR[6]))));
    F[0]=(0.25 * ((sPAR[10] * X[3]) + ((sPAR[5] * (X[3] - X[0])) - (sPAR[3] * (pow(X[3],2.0) * ((X[0] - X[3]) / (pow(sPAR[0],2.0) + pow(X[3],2.0))))))));
    F[3]=((sPAR[3] * (pow(X[3],2.0) * ((X[0] - X[3]) / (pow(sPAR[0],2.0) + pow(X[3],2.0))))) + ((sPAR[5] * (X[0] - X[3])) + ((X[1] * ((sPAR[8] * (pow(X[3],2.0) / (pow(sPAR[2],2.0) + pow(X[3],2.0)))) + sPAR[6])) + ((sPAR[7] * X[2]) + ((X[3] * (((-(sPAR[9])) * X[4]) - sPAR[10])) - (sPAR[4] * (pow(X[3],8.0) / (pow(sPAR[1],8.0) + pow(X[3],8.0)))))))));

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
    sPAR[0]=5.0; //K1
    sPAR[1]=0.8; //K2
    sPAR[2]=5.0; //K3
    sPAR[3]=4100.0; //Kch
    sPAR[4]=300.0; //Kin
    sPAR[5]=0.05; //Kleak
    sPAR[6]=0.006; //Km
    sPAR[7]=0.01; //Kminus
    sPAR[8]=125.0; //Kout
    sPAR[9]=0.1; //Kplus
    sPAR[10]=20.0; //Kpump
    X[0]=0.76; //CaER
    X[1]=0.29; //CaM
    X[2]=85.45; //CaPr
    X[3]=0.35; //Ca_cyt
    X[4]=34.55; //Pr

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
