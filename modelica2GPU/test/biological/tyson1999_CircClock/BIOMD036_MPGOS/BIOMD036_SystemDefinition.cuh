
#ifndef BIOMD036_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD036_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[1]=((sPAR[5] * X[0]) + ((((-2.0 * (sPAR[7] * (X[1] / (1.0 + pow((1.0 + (8.0 * (sPAR[2] * X[1]))),0.5))))) - (sPAR[8] * X[1])) / (sPAR[1] + X[1])) - (sPAR[0] * X[1])));
    F[0]=((sPAR[6] / (1.0 + (0.25 * pow((X[1] * ((1.0 + (-2.0 / (1.0 + pow((1.0 + (8.0 * (sPAR[2] * X[1]))),0.5)))) / sPAR[4])),2.0)))) - (sPAR[0] * X[0]));

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
    sPAR[0]=0.1; //D
    sPAR[1]=0.05; //J
    sPAR[2]=200.0; //Keq
    sPAR[3]=6.0221367e+23; //N_A
    sPAR[4]=0.1; //Pcrit
    sPAR[5]=0.5; //V
    sPAR[6]=1.0; //Vm
    sPAR[7]=10.0; //k1
    sPAR[8]=0.03; //k2
    X[0]=1.0; //M
    X[1]=1.0; //P

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
