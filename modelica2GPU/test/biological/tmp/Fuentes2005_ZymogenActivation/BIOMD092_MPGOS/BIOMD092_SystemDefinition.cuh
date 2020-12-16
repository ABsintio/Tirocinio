
#ifndef BIOMD092_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD092_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[1]=(sPAR[0] * ((sPAR[2] * (X[0] * X[3])) + (((-(sPAR[3])) - sPAR[4]) * X[1])));
    F[2]=(sPAR[0] * ((sPAR[1] * X[3]) + (sPAR[4] * X[1])));
    F[0]=(sPAR[0] * ((sPAR[1] * X[3]) + ((2.0 * (sPAR[4] * X[1])) + ((sPAR[3] * X[1]) - (sPAR[2] * (X[0] * X[3]))))));
    F[3]=((-(sPAR[0])) * ((sPAR[1] * X[3]) + ((sPAR[2] * (X[0] * X[3])) - (sPAR[3] * X[1]))));

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
    sPAR[1]=0.004; //k1_v1
    sPAR[2]=1000.0; //k21_v2
    sPAR[3]=0.00021; //k22_v2
    sPAR[4]=0.00054; //k3_v3
    X[0]=0.0; //e
    X[1]=0.0; //ez
    X[2]=0.0; //w
    X[3]=2.4e-05; //z

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
