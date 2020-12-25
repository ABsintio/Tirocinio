
#ifndef BIOMD199_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD199_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[0]=(X[1] + X[3]);
    F[8]=0.0;
    F[12]=0.0;
    F[4]=(sPAR[0] * ((sPAR[9] * X[2]) - (X[4] * (sPAR[10] + (sPAR[2] * X[12])))));
    F[2]=(sPAR[0] * ((sPAR[7] * X[7]) + (((-(sPAR[8])) - sPAR[9]) * X[2])));
    F[7]=(sPAR[0] * ((sPAR[6] * (X[6] * X[12])) - (sPAR[7] * X[7])));
    F[6]=(sPAR[0] * ((sPAR[5] * X[3]) - (sPAR[6] * (X[6] * X[12]))));
    F[3]=(sPAR[0] * ((sPAR[4] * X[5]) - (sPAR[5] * X[3])));
    F[5]=(sPAR[0] * ((sPAR[3] * (X[0] * X[12])) - (sPAR[4] * X[5])));
    F[0]=(sPAR[0] * ((sPAR[1] * X[1]) + ((sPAR[10] * X[4]) - (sPAR[3] * (X[0] * X[12])))));
    F[1]=(sPAR[0] * ((sPAR[8] * X[2]) + ((sPAR[2] * (X[4] * X[12])) - (sPAR[1] * X[1]))));
    F[13]=0.0;
    F[11]=0.0;
    F[10]=0.0;
    F[9]=0.0;

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
    ACC[0]=0.0; //FeIII_t
    sPAR[0]=1.0; //cytosol
    sPAR[1]=2.6; //k1
    sPAR[2]=0.0013; //k10
    sPAR[3]=0.9; //k2
    sPAR[4]=26.0; //k3
    sPAR[5]=2.6; //k4
    sPAR[6]=0.9; //k5
    sPAR[7]=26.0; //k6
    sPAR[8]=5.0; //k7
    sPAR[9]=2.6; //k8
    sPAR[10]=0.0001; //k9
    X[0]=0.0; //FeII
    X[1]=1.0; //FeIII
    X[2]=0.0; //FeIII_NO
    X[3]=0.0; //FeIII_star
    X[4]=0.0; //FeII_NO
    X[5]=0.0; //FeII_O2
    X[6]=0.0; //FeII_star
    X[7]=0.0; //FeII_star_O2
    X[8]=40.0; //NADPH
    X[9]=0.0; //NADPplus
    X[10]=0.0; //NO
    X[11]=0.0; //NO3
    X[12]=140.0; //O2
    X[13]=0.0; //citrulline

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
