#ifndef TYSON_PERTHREAD_SYSTEMDEFINITION_H
#define TYSON_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>

template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
    int tid, int NT, \
    Precision*    F, Precision*    X, Precision     T, \
    Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi
) {
    F[0] = sPAR[3]*(X[2] - X[0])*((sPAR[4]/sPAR[3]) + pow(X[0], 2.0)) - sPAR[6]*X[0];
    F[1] = sPAR[0] - sPAR[1]*(X[1] - X[2]) - sPAR[6]*X[0];
    F[2] = sPAR[2]*(1 - X[2])*(X[1] - X[2]) - sPAR[6]*X[0];
    F[3] = sPAR[0] - sPAR[1]*(X[1] - X[2]) - sPAR[7]*(X[3] - X[1]);
}

template<class Precision> __forceinline__ __device__ void PerThread_EventFunction(
    int tid, int NT, Precision* EF, \
        Precision     T, Precision    dT, Precision*    TD, Precision*   X, \
        Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
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
}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(\
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}

#endif
