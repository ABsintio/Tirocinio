
#ifndef BIOMD054_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD054_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    // T = (A + 3*E - sqrt(6*A*E - 3*E^2 + A^2))/6;
    // M = (7*A - 3*E - sqrt(6*A*E - 3*E^2 + A^2))/6;
    ACC[0]=(7*X[0] - 3*X[1] - sqrt(6*X[0]*X[1] - 3*pow(X[1], 2.0) + pow(X[0], 2.0)))/6;
    ACC[1]=(X[0] + 3*X[1] - sqrt(6*X[0]*X[1] - 3*pow(X[1], 2.0) + pow(X[0], 2.0)))/6;
    F[2]=((sPAR[1] * sPAR[0]) + (-3.0 * (sPAR[4] * (X[2] * ACC[1]))));
    F[1]=((sPAR[5] * (pow(ACC[1],0.52) * pow(ACC[0],0.41))) + ((-2.0 * sPAR[2]) - (sPAR[4] * (X[2] * ACC[1]))));
    F[0]=(sPAR[2] * (1.0 - (sPAR[3] * (pow(ACC[1],sPAR[7]) * pow(ACC[0],sPAR[6])))));

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
    ACC[0]=0.01; //M
    ACC[1]=1.0; //T
    sPAR[0]=100.0; //J
    sPAR[1]=0.121; //P
    sPAR[2]=0.02; //U
    sPAR[3]=0.01; //W
    sPAR[4]=0.2; //W2
    sPAR[5]=13.48; //W3
    sPAR[6]=-1.0; //k
    sPAR[7]=1.2; //n
    X[0]=1.11; //A
    X[1]=2.1; //E
    X[2]=10.0; //I

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
