
#ifndef ONEDHEATTRANSFERTT_FD_N_20_PERTHREAD_SYSTEMDEFINITION_H
#define ONEDHEATTRANSFERTT_FD_N_20_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[0]=sPAR[2];
    ACC[1]=sPAR[3];
    F[0]=(9025.0 * (sPAR[6] * ((sPAR[2] + ((-2.0 * X[0]) + X[1])) / (sPAR[4] * sPAR[7]))));
    F[17]=(9025.0 * (sPAR[6] * ((X[16] + ((-2.0 * X[17]) + sPAR[3])) / (sPAR[4] * sPAR[7]))));
    F[1]=(9025.0 * (sPAR[6] * ((X[0] + ((-2.0 * X[1]) + X[2])) / (sPAR[7] * sPAR[4]))));
    F[2]=(9025.0 * (sPAR[6] * ((X[1] + ((-2.0 * X[2]) + X[3])) / (sPAR[7] * sPAR[4]))));
    F[3]=(9025.0 * (sPAR[6] * ((X[2] + ((-2.0 * X[3]) + X[4])) / (sPAR[7] * sPAR[4]))));
    F[4]=(9025.0 * (sPAR[6] * ((X[3] + ((-2.0 * X[4]) + X[5])) / (sPAR[7] * sPAR[4]))));
    F[5]=(9025.0 * (sPAR[6] * ((X[4] + ((-2.0 * X[5]) + X[6])) / (sPAR[7] * sPAR[4]))));
    F[6]=(9025.0 * (sPAR[6] * ((X[5] + ((-2.0 * X[6]) + X[7])) / (sPAR[7] * sPAR[4]))));
    F[7]=(9025.0 * (sPAR[6] * ((X[6] + ((-2.0 * X[7]) + X[8])) / (sPAR[7] * sPAR[4]))));
    F[8]=(9025.0 * (sPAR[6] * ((X[7] + ((-2.0 * X[8]) + X[9])) / (sPAR[7] * sPAR[4]))));
    F[9]=(9025.0 * (sPAR[6] * ((X[8] + ((-2.0 * X[9]) + X[10])) / (sPAR[7] * sPAR[4]))));
    F[10]=(9025.0 * (sPAR[6] * ((X[9] + ((-2.0 * X[10]) + X[11])) / (sPAR[7] * sPAR[4]))));
    F[11]=(9025.0 * (sPAR[6] * ((X[10] + ((-2.0 * X[11]) + X[12])) / (sPAR[7] * sPAR[4]))));
    F[12]=(9025.0 * (sPAR[6] * ((X[11] + ((-2.0 * X[12]) + X[13])) / (sPAR[7] * sPAR[4]))));
    F[13]=(9025.0 * (sPAR[6] * ((X[12] + ((-2.0 * X[13]) + X[14])) / (sPAR[7] * sPAR[4]))));
    F[14]=(9025.0 * (sPAR[6] * ((X[13] + ((-2.0 * X[14]) + X[15])) / (sPAR[7] * sPAR[4]))));
    F[15]=(9025.0 * (sPAR[6] * ((X[14] + ((-2.0 * X[15]) + X[16])) / (sPAR[7] * sPAR[4]))));
    F[16]=(9025.0 * (sPAR[6] * ((X[15] + ((-2.0 * X[16]) + X[17])) / (sPAR[7] * sPAR[4]))));

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
    ACC[0]=330.0; //T[1]
    ACC[1]=300.0; //T[20]
    sPAR[0]=0.2; //L
    sPAR[1]=273.15; //T0
    sPAR[2]=330.0; //T1
    sPAR[3]=300.0; //TN
    sPAR[4]=910.0; //cp
    sPAR[5]=0.01052631578947368; //dx
    sPAR[6]=237.0; //lambda
    sPAR[7]=2712.0; //rho
    sPARi[0]=20; //N
    X[0]=sPAR[1]; //T[2]
    X[1]=sPAR[1]; //T[3]
    X[2]=sPAR[1]; //T[4]
    X[3]=sPAR[1]; //T[5]
    X[4]=sPAR[1]; //T[6]
    X[5]=sPAR[1]; //T[7]
    X[6]=sPAR[1]; //T[8]
    X[7]=sPAR[1]; //T[9]
    X[8]=sPAR[1]; //T[10]
    X[9]=sPAR[1]; //T[11]
    X[10]=sPAR[1]; //T[12]
    X[11]=sPAR[1]; //T[13]
    X[12]=sPAR[1]; //T[14]
    X[13]=sPAR[1]; //T[15]
    X[14]=sPAR[1]; //T[16]
    X[15]=sPAR[1]; //T[17]
    X[16]=sPAR[1]; //T[18]
    X[17]=sPAR[1]; //T[19]

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
