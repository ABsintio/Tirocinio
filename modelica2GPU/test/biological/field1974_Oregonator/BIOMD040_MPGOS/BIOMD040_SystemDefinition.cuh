
#ifndef BIOMD040_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD040_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[4]=0.0;
    F[3]=X[0]*X[1]*sPAR[1] + 2.0*X[1]*X[3]*sPAR[3] - X[0]*X[3]*sPAR[2] - 2*pow(X[3], 2.0)*sPAR[4];
    F[2]=X[1]*X[3]*sPAR[3] - X[2]*sPAR[5];
    F[0]=sPAR[0]*X[2]*sPAR[5] - X[0]*X[1]*sPAR[1] - X[0]*X[3]*sPAR[2];
    F[1]=0.0;

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
    sPAR[0]=1.0; //f
    sPAR[1]=1.34; //k1
    sPAR[2]=1600000000.0; //k2
    sPAR[3]=8000.0; //k3
    sPAR[4]=40000000.0; //k4
    sPAR[5]=1.0; //k5
    X[0]=1e-07; //Br
    X[1]=0.06; //BrO3
    X[2]=0.05; //Ce
    X[3]=5.0e-11; //HBrO2
    X[4]=0.0; //HOBr

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
