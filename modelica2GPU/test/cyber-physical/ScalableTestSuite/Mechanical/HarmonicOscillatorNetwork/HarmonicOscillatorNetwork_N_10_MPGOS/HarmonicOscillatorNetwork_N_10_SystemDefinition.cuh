
#ifndef HARMONICOSCILLATORNETWORK_N_10_PERTHREAD_SYSTEMDEFINITION_H
#define HARMONICOSCILLATORNETWORK_N_10_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[9]=((sPAR[0] * (ACC[9] - X[19])) / sPAR[1]);
    F[19]=X[9];
    F[8]=((sPAR[0] * (ACC[8] - X[18])) / sPAR[1]);
    F[18]=X[8];
    F[7]=((sPAR[0] * (ACC[7] - X[17])) / sPAR[1]);
    F[17]=X[7];
    F[6]=((sPAR[0] * (ACC[6] - X[16])) / sPAR[1]);
    F[16]=X[6];
    F[5]=((sPAR[0] * (ACC[5] - X[15])) / sPAR[1]);
    F[15]=X[5];
    F[4]=((sPAR[0] * (ACC[4] - X[14])) / sPAR[1]);
    F[14]=X[4];
    F[3]=((sPAR[0] * (ACC[3] - X[13])) / sPAR[1]);
    F[13]=X[3];
    F[2]=((sPAR[0] * (ACC[2] - X[12])) / sPAR[1]);
    F[12]=X[2];
    F[1]=((sPAR[0] * (ACC[1] - X[11])) / sPAR[1]);
    F[11]=X[1];
    F[0]=((sPAR[0] * (ACC[0] - X[10])) / sPAR[1]);
    F[10]=X[0];

    // Non esistenti nell'XML, non so perché
    ACC[0]=(X[10] + ACC[1]) / 3;
    for (int i=1; i < sPARi[0] - 1; i++) {
        ACC[i]=(X[i + 10] + ACC[i + 1] + ACC[i - 1]) / 3;
    }
    ACC[9]=(X[19] + ACC[8]) / 3;

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
    ACC[0]=0.0; //xs[1]
    ACC[1]=0.0; //xs[2]
    ACC[2]=0.0; //xs[3]
    ACC[3]=0.0; //xs[4]
    ACC[4]=0.0; //xs[5]
    ACC[5]=0.0; //xs[6]
    ACC[6]=0.0; //xs[7]
    ACC[7]=0.0; //xs[8]
    ACC[8]=0.0; //xs[9]
    ACC[9]=0.0; //xs[10]
    sPAR[0]=10.0; //k
    sPAR[1]=1.0; //m
    sPARi[0]=10; //N
    X[0]=0.0; //v[1]
    X[1]=0.0; //v[2]
    X[2]=0.0; //v[3]
    X[3]=0.0; //v[4]
    X[4]=0.0; //v[5]
    X[5]=0.0; //v[6]
    X[6]=0.0; //v[7]
    X[7]=0.0; //v[8]
    X[8]=0.0; //v[9]
    X[9]=0.0; //v[10]
    X[10]=10.0; //xm[1]
    X[11]=0.0; //xm[2]
    X[12]=0.0; //xm[3]
    X[13]=0.0; //xm[4]
    X[14]=0.0; //xm[5]
    X[15]=0.0; //xm[6]
    X[16]=0.0; //xm[7]
    X[17]=0.0; //xm[8]
    X[18]=0.0; //xm[9]
    X[19]=0.0; //xm[10]

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
