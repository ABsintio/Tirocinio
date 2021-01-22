
#ifndef BIOMD483_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD483_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[5]=(X[7] + (-100.0 * X[3]));
    F[4]=(X[6] + (-100.0 * X[2]));
    F[1]=((5e-06 * (X[6] * ((-1.0 + X[6]) * X[3]))) + (-0.1 * X[1]));
    F[0]=((5e-06 * (X[7] * ((-1.0 + X[7]) * X[2]))) + (-0.1 * X[0]));
    F[3]=((0.1 * X[1]) + (-5e-06 * (X[6] * ((-1.0 + X[6]) * X[3]))));
    F[2]=((0.1 * X[0]) + (-5e-06 * (X[7] * ((-1.0 + X[7]) * X[2]))));
    F[7]=((100.0 * X[3]) + ((0.2 * X[0]) + ((-1e-05 * (X[7] * ((-1.0 + X[7]) * X[2]))) - X[7])));
    F[6]=((100.0 * X[2]) + ((0.2 * X[1]) + ((-1e-05 * (X[6] * ((-1.0 + X[6]) * X[3]))) - X[6])));

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
    X[0]=0.0; //BDa
    X[1]=0.0; //BDb
    X[2]=0.0; //Da
    X[3]=0.0; //Db
    X[4]=0.0; //ESA
    X[5]=0.0; //ESB
    X[6]=0.0; //Pa
    X[7]=0.0; //Pb

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
