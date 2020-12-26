
#ifndef BIOMD198_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD198_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[2]=(X[8] + (X[1] + (X[3] + (X[9] + (X[4] + (X[6] + X[7]))))));
    ACC[0]=(X[2] + X[5]);
    ACC[1]=((sPAR[1] * (X[8] + (X[1] + (X[9] + X[4])))) + ((sPAR[2] * ACC[0]) + (sPAR[3] * (X[3] + (X[6] + X[7])))));
    F[5]=(sPAR[0] * ((sPAR[6] * X[7]) - (sPAR[7] * X[5])));
    F[7]=(sPAR[0] * ((sPAR[15] * (X[0] * X[6])) + ((sPAR[7] * X[5]) + (((-(sPAR[6])) - sPAR[5]) * X[7]))));
    F[6]=(sPAR[0] * ((sPAR[14] * X[4]) + ((sPAR[5] * X[7]) - (sPAR[15] * (X[0] * X[6])))));
    F[4]=((sPAR[0] * ((sPAR[12] * (X[0] * X[9])) - (sPAR[13] * X[4]))) - (sPAR[14] * (sPAR[0] * X[4])));
    F[9]=(sPAR[0] * ((sPAR[13] * X[4]) - (sPAR[12] * (X[0] * X[9]))));
    F[2]=(sPAR[0] * ((sPAR[10] * X[3]) - (sPAR[11] * X[2])));
    F[3]=(sPAR[0] * ((sPAR[9] * X[1]) + ((sPAR[11] * X[2]) - (sPAR[10] * X[3]))));
    F[1]=((sPAR[0] * ((sPAR[4] * (X[0] * X[8])) - (sPAR[8] * X[1]))) - (sPAR[9] * (sPAR[0] * X[1])));
    F[8]=(sPAR[0] * ((sPAR[8] * X[1]) - (sPAR[4] * (X[0] * X[8]))));
    F[0]=0.0;

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
    ACC[0]=0.0; //NO_sGC_5coord_tot
    ACC[1]=0.0; //ext
    ACC[2]=0.0; //sGC_inact_tot
    sPAR[0]=1.0; //cytosol
    sPAR[1]=0.11; //e5c
    sPAR[2]=0.025; //e5c_NO
    sPAR[3]=0.064; //e6c_NO
    sPAR[4]=700.0; //k1
    sPAR[5]=25.0; //k10
    sPAR[6]=1.6; //k11
    sPAR[7]=0.02; //k12
    sPAR[8]=800.0; //k2
    sPAR[9]=850.0; //k3
    sPAR[10]=20.0; //k4
    sPAR[11]=0.2; //k5
    sPAR[12]=700.0; //k6
    sPAR[13]=800.0; //k7
    sPAR[14]=850.0; //k8
    sPAR[15]=5.0; //k9
    X[0]=0.5; //NO
    X[1]=0.0; //NO_sGCfast
    X[2]=0.0; //NO_sGCfast_5coord
    X[3]=0.0; //NO_sGCfast_6coord
    X[4]=0.0; //NO_sGCslow
    X[5]=0.0; //NO_sGCslow_5coord
    X[6]=0.0; //NO_sGCslow_6coord
    X[7]=0.0; //NO_sGCslow_6coord_NO_int
    X[8]=0.112; //sGCfast
    X[9]=0.288; //sGCslow

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
