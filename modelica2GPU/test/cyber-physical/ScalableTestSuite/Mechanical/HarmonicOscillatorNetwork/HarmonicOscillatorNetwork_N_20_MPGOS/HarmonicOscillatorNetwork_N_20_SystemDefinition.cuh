
#ifndef HARMONICOSCILLATORNETWORK_N_20_PERTHREAD_SYSTEMDEFINITION_H
#define HARMONICOSCILLATORNETWORK_N_20_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[19]=((sPAR[0] * (ACC[19] - X[39])) / sPAR[1]);
    F[39]=X[19];
    F[18]=((sPAR[0] * (ACC[18] - X[38])) / sPAR[1]);
    F[38]=X[18];
    F[17]=((sPAR[0] * (ACC[17] - X[37])) / sPAR[1]);
    F[37]=X[17];
    F[16]=((sPAR[0] * (ACC[16] - X[36])) / sPAR[1]);
    F[36]=X[16];
    F[15]=((sPAR[0] * (ACC[15] - X[35])) / sPAR[1]);
    F[35]=X[15];
    F[14]=((sPAR[0] * (ACC[14] - X[34])) / sPAR[1]);
    F[34]=X[14];
    F[13]=((sPAR[0] * (ACC[13] - X[33])) / sPAR[1]);
    F[33]=X[13];
    F[12]=((sPAR[0] * (ACC[12] - X[32])) / sPAR[1]);
    F[32]=X[12];
    F[11]=((sPAR[0] * (ACC[11] - X[31])) / sPAR[1]);
    F[31]=X[11];
    F[10]=((sPAR[0] * (ACC[10] - X[30])) / sPAR[1]);
    F[30]=X[10];
    F[9]=((sPAR[0] * (ACC[9] - X[29])) / sPAR[1]);
    F[29]=X[9];
    F[8]=((sPAR[0] * (ACC[8] - X[28])) / sPAR[1]);
    F[28]=X[8];
    F[7]=((sPAR[0] * (ACC[7] - X[27])) / sPAR[1]);
    F[27]=X[7];
    F[6]=((sPAR[0] * (ACC[6] - X[26])) / sPAR[1]);
    F[26]=X[6];
    F[5]=((sPAR[0] * (ACC[5] - X[25])) / sPAR[1]);
    F[25]=X[5];
    F[4]=((sPAR[0] * (ACC[4] - X[24])) / sPAR[1]);
    F[24]=X[4];
    F[3]=((sPAR[0] * (ACC[3] - X[23])) / sPAR[1]);
    F[23]=X[3];
    F[2]=((sPAR[0] * (ACC[2] - X[22])) / sPAR[1]);
    F[22]=X[2];
    F[1]=((sPAR[0] * (ACC[1] - X[21])) / sPAR[1]);
    F[21]=X[1];
    F[0]=((sPAR[0] * (ACC[0] - X[20])) / sPAR[1]);
    F[20]=X[0];

    // Non esistenti nell'XML, non so perché
    ACC[0]=(X[20] + ACC[1]) / 3;
    for (int i=1; i < sPARi[0] - 1; i++) {
        ACC[i]=(X[i + sPARi[0]] + ACC[i + 1] + ACC[i - 1]) / 3;
    }
    ACC[19]=(X[39] + ACC[18]) / 3;

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
    ACC[10]=0.0; //xs[11]
    ACC[11]=0.0; //xs[12]
    ACC[12]=0.0; //xs[13]
    ACC[13]=0.0; //xs[14]
    ACC[14]=0.0; //xs[15]
    ACC[15]=0.0; //xs[16]
    ACC[16]=0.0; //xs[17]
    ACC[17]=0.0; //xs[18]
    ACC[18]=0.0; //xs[19]
    ACC[19]=0.0; //xs[20]
    sPAR[0]=10.0; //k
    sPAR[1]=1.0; //m
    sPARi[0]=20; //N
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
    X[10]=0.0; //v[11]
    X[11]=0.0; //v[12]
    X[12]=0.0; //v[13]
    X[13]=0.0; //v[14]
    X[14]=0.0; //v[15]
    X[15]=0.0; //v[16]
    X[16]=0.0; //v[17]
    X[17]=0.0; //v[18]
    X[18]=0.0; //v[19]
    X[19]=0.0; //v[20]
    X[20]=20.0; //xm[1]
    X[21]=0.0; //xm[2]
    X[22]=0.0; //xm[3]
    X[23]=0.0; //xm[4]
    X[24]=0.0; //xm[5]
    X[25]=0.0; //xm[6]
    X[26]=0.0; //xm[7]
    X[27]=0.0; //xm[8]
    X[28]=0.0; //xm[9]
    X[29]=0.0; //xm[10]
    X[30]=0.0; //xm[11]
    X[31]=0.0; //xm[12]
    X[32]=0.0; //xm[13]
    X[33]=0.0; //xm[14]
    X[34]=0.0; //xm[15]
    X[35]=0.0; //xm[16]
    X[36]=0.0; //xm[17]
    X[37]=0.0; //xm[18]
    X[38]=0.0; //xm[19]
    X[39]=0.0; //xm[20]

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
