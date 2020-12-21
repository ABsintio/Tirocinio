
#ifndef BIOMD251_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD251_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[0]=(X[7] - X[8]);
    F[2]=(sPAR[3] * ((sPAR[14] * X[3]) - (sPAR[15] * X[2])));
    F[3]=(sPAR[3] * ((pow((X[6] * X[4]),sPAR[18]) / (pow(sPAR[13],sPAR[18]) + pow((X[6] * X[4]),sPAR[18]))) - (sPAR[14] * X[3])));
    F[4]=(sPAR[3] * ((sPAR[11] * X[6]) - (sPAR[12] * X[4])));
    F[0]=(sPAR[3] * (sPAR[17] * X[6]));
    F[8]=(sPAR[3] * ((sPAR[1] * (sPAR[2] / sPAR[20])) - (X[8] / sPAR[20])));
    F[7]=(sPAR[3] * ((sPAR[0] * (sPAR[2] / sPAR[19])) - (X[7] / sPAR[19])));
    F[6]=(sPAR[3] * ((sPAR[8] * ACC[0]) + (((-(sPAR[9])) * X[6]) - (sPAR[10] * (X[0] * X[6])))));
    F[1]=(sPAR[3] * ((sPAR[16] * X[2]) + ((sPAR[7] * X[5]) - (X[1] * (sPAR[4] + (sPAR[5] * ACC[0]))))));
    F[5]=(sPAR[3] * ((sPAR[5] * (X[1] * ACC[0])) + (((-(sPAR[6])) - sPAR[7]) * X[5])));

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
    ACC[0]=0.0; //ppERKc
    sPAR[0]=1.09; //K1
    sPAR[1]=2.89; //K2
    sPAR[2]=1.0; //L
    sPAR[3]=1.0; //compartment
    sPAR[4]=0.3; //k10_7
    sPAR[5]=0.11; //k11
    sPAR[6]=0.001; //k12_8
    sPAR[7]=0.06; //k13
    sPAR[8]=15.0; //k1_2
    sPAR[9]=50.0; //k2_2
    sPAR[10]=14.0; //k3_2
    sPAR[11]=0.1; //k4_4
    sPAR[12]=0.15; //k5_4
    sPAR[13]=0.13; //k6_5
    sPAR[14]=0.5; //k7
    sPAR[15]=0.08; //k8_6
    sPAR[16]=0.3; //k9_7
    sPAR[17]=1.0; //k_3
    sPAR[18]=1.1; //n_5
    sPAR[19]=3.07; //tau1
    sPAR[20]=472.0; //tau2
    X[0]=0.0; //DUSP
    X[1]=0.0; //cFOS
    X[2]=0.0; //cFOSm
    X[3]=0.0; //cFOSp
    X[4]=0.0; //pRSKn
    X[5]=0.0; //pcFOS
    X[6]=0.0; //ppERKn
    X[7]=0.0; //x1
    X[8]=0.0; //x2

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
