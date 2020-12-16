
#ifndef BIOMD084_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD084_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[7]=((sPAR[18] * (X[5] * (X[6] / (sPAR[8] + X[6])))) - (sPAR[14] * (X[7] / (sPAR[9] * (1.0 + ((X[7] / sPAR[9]) + (sPAR[0] / sPAR[1])))))));
    F[6]=((sPAR[14] * (X[7] / (sPAR[9] * (1.0 + ((X[7] / sPAR[9]) + (sPAR[0] / sPAR[1])))))) - (sPAR[18] * (X[5] * (X[6] / (sPAR[8] + X[6])))));
    F[5]=((sPAR[17] * (X[3] * (X[4] / (sPAR[6] + X[4])))) - (sPAR[13] * (X[5] / (sPAR[7] + X[5]))));
    F[4]=((sPAR[13] * (X[5] / (sPAR[7] + X[5]))) - (sPAR[17] * (X[3] * (X[4] / (sPAR[6] + X[4])))));
    F[3]=((sPAR[16] * (X[0] * (X[2] / (sPAR[4] + X[2])))) - (sPAR[12] * (X[3] / (sPAR[5] + X[3]))));
    F[2]=((sPAR[12] * (X[3] / (sPAR[5] + X[3]))) - (sPAR[16] * (X[0] * (X[2] / (sPAR[4] + X[2])))));
    F[1]=((sPAR[10] * (X[0] / (sPAR[2] + X[0]))) - (sPAR[11] * (X[1] / (sPAR[3] + X[1]))));
    F[0]=((sPAR[11] * (X[1] / (sPAR[3] + X[1]))) - (sPAR[10] * (X[0] / (sPAR[2] + X[0]))));

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
    sPAR[0]=0.0; //Inh_v8
    sPAR[1]=1.0; //Ki8_v8
    sPAR[2]=0.1; //Km1_v1
    sPAR[3]=0.1; //Km2_v2
    sPAR[4]=0.1; //Km3_v3
    sPAR[5]=1.0; //Km4_v4
    sPAR[6]=0.1; //Km5_v5
    sPAR[7]=1.0; //Km6_v6
    sPAR[8]=0.1; //Km7_v7
    sPAR[9]=1.0; //Km8_v8
    sPAR[10]=1.0; //Vm1_v1
    sPAR[11]=0.01; //Vm2_v2
    sPAR[12]=0.3; //Vm4_v4
    sPAR[13]=0.3; //Vm6_v6
    sPAR[14]=0.3; //Vm8_v8
    sPAR[15]=1.0; //compartment
    sPAR[16]=1.0; //k3_v3
    sPAR[17]=1.0; //k5_v5
    sPAR[18]=1.0; //k7_v7
    X[0]=0.5; //R
    X[1]=0.0; //Rin
    X[2]=1.0; //x1
    X[3]=0.0; //x1p
    X[4]=1.0; //x2
    X[5]=0.0; //x2p
    X[6]=1.0; //x3
    X[7]=0.0; //x3p

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
