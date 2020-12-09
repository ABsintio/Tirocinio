
#ifndef BIOMD016_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD016_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[0]=(X[1] + (X[2] + (X[3] + X[4])));
    F[4]=((sPAR[15] * X[3]) - (sPAR[16] * X[4]));
    F[3]=((sPAR[10] * (X[2] / (sPAR[2] + X[2]))) + ((sPAR[16] * X[4]) + ((X[3] * (((-(sPAR[11])) / (sPAR[3] + X[3])) - sPAR[15])) - (sPAR[12] * (X[3] / (sPAR[5] + X[3]))))));
    F[2]=((sPAR[8] * (X[1] / (sPAR[0] + X[1]))) + ((sPAR[11] * (X[3] / (sPAR[3] + X[3]))) + (X[2] * (((-(sPAR[9])) / (sPAR[1] + X[2])) - (sPAR[10] / (sPAR[2] + X[2]))))));
    F[1]=((sPAR[7] * X[0]) + ((sPAR[9] * (X[2] / (sPAR[1] + X[2]))) - (sPAR[8] * (X[1] / (sPAR[0] + X[1])))));
    F[0]=((sPAR[14] * (pow(sPAR[4],sPAR[17]) / (pow(sPAR[4],sPAR[17]) + pow(X[4],sPAR[17])))) - (sPAR[13] * (X[0] / (sPAR[6] + X[0]))));
    F[5]=0.0;
    X[5]=ACC[0];
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
    ACC[0]=0.0; //Pt
    sPAR[0]=2.0; //K1
    sPAR[1]=2.0; //K2
    sPAR[2]=2.0; //K3
    sPAR[3]=2.0; //K4
    sPAR[4]=1.0; //KI
    sPAR[5]=0.2; //Kd
    sPAR[6]=0.5; //Km
    sPAR[7]=0.38; //Ks
    sPAR[8]=3.2; //V1
    sPAR[9]=1.58; //V2
    sPAR[10]=5.0; //V3
    sPAR[11]=2.5; //V4
    sPAR[12]=0.95; //Vd
    sPAR[13]=0.65; //Vm
    sPAR[14]=0.76; //Vs
    sPAR[15]=1.9; //k1
    sPAR[16]=1.3; //k2
    sPAR[17]=4.0; //n
    X[0]=0.1; //M
    X[1]=0.25; //P0
    X[2]=0.25; //P1
    X[3]=0.25; //P2
    X[4]=0.25; //Pn
    X[5]=ACC[0];

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
