
#ifndef BIOMD046_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD046_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[4]=0.0;
    F[3]=0.0;
    F[9]=0.0;
    F[13]=((sPAR[1] * (X[14] * X[7])) - (sPAR[2] * (X[13] * X[8])));
    F[12]=((sPAR[11] * (X[15] * X[14])) + ((sPAR[2] * (X[13] * X[8])) - (sPAR[13] * (X[12] * X[7]))));
    F[15]=((sPAR[10] * (X[7] * X[8])) + ((-2.0 * (sPAR[12] * pow(X[15],2.0))) - (sPAR[11] * (X[15] * X[14]))));
    F[7]=((sPAR[6] * (X[0] * X[5])) + ((-2.0 * (sPAR[14] * pow(X[7],2.0))) + ((((-(sPAR[13])) * (X[12] * X[7])) - (sPAR[10] * (X[7] * X[8]))) - (sPAR[1] * (X[14] * X[7])))));
    F[0]=((sPAR[8] * (X[10] * X[1])) + ((sPAR[9] * (X[11] * X[1])) - (sPAR[6] * (X[0] * X[5]))));
    F[11]=((sPAR[8] * (X[10] * X[1])) - (sPAR[9] * (X[11] * X[1])));
    F[1]=((sPAR[6] * (X[0] * X[5])) + (((-(sPAR[8])) * (X[10] * X[1])) - (sPAR[9] * (X[11] * X[1]))));
    F[10]=((sPAR[7] * (X[2] * X[14])) + ((sPAR[13] * (X[12] * X[7])) - (sPAR[8] * (X[10] * X[1]))));
    F[14]=((sPAR[9] * (X[11] * X[1])) + ((((-(sPAR[7])) * (X[2] * X[14])) - (sPAR[11] * (X[15] * X[14]))) - (sPAR[1] * (X[14] * X[7]))));
    F[2]=((sPAR[0] * (X[5] * X[8])) + ((sPAR[12] * pow(X[15],2.0)) - (sPAR[7] * (X[2] * X[14]))));
    F[8]=((sPAR[12] * pow(X[15],2.0)) + ((sPAR[5] * X[9]) + (((((-(sPAR[4])) * X[8]) - (sPAR[0] * (X[5] * X[8]))) - (sPAR[10] * (X[7] * X[8]))) - (sPAR[2] * (X[13] * X[8])))));
    F[5]=(sPAR[3] + (((-(sPAR[0])) * (X[5] * X[8])) - (sPAR[6] * (X[0] * X[5]))));
    F[6]=0.0;

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
    sPAR[0]=3e-06; //k1
    sPAR[1]=1.8; //k10
    sPAR[2]=0.1; //k11
    sPAR[3]=0.08; //k12
    sPAR[4]=0.006; //k13b
    sPAR[5]=0.006; //k13f
    sPAR[6]=0.7; //k14
    sPAR[7]=18.0; //k2
    sPAR[8]=0.15; //k3
    sPAR[9]=0.005; //k4
    sPAR[10]=20.0; //k5
    sPAR[11]=17.0; //k6
    sPAR[12]=20.0; //k7
    sPAR[13]=40.0; //k8
    sPAR[14]=60.0; //k9
    X[0]=0.0; //Ar
    X[1]=500.0; //ArH
    X[2]=0.0; //H2O2
    X[3]=0.0; //NAD
    X[4]=0.0; //NAD2
    X[5]=0.0; //NADH
    X[6]=0.0; //NADHres
    X[7]=0.0; //NADrad
    X[8]=0.0; //O2
    X[9]=12.0; //O2g
    X[10]=0.0; //coI
    X[11]=0.0; //coII
    X[12]=0.0; //coIII
    X[13]=0.0; //per2
    X[14]=1.4; //per3
    X[15]=0.0; //super

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
