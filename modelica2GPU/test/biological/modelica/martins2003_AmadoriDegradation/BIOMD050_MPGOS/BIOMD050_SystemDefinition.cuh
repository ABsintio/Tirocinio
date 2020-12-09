
#ifndef BIOMD050_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD050_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[6]=(sPAR[7] * X[4]);
    F[11]=(sPAR[5] * (X[1] * X[8]));
    F[9]=(sPAR[6] * X[1]);
    F[7]=((sPAR[2] * X[3]) + ((sPAR[3] * X[10]) - (sPAR[4] * X[7])));
    F[10]=((sPAR[1] * X[3]) + (sPAR[6] * X[1]));
    F[0]=((sPAR[15] * X[12]) + (sPAR[6] * X[1]));
    F[12]=((sPAR[13] * X[4]) + (((-(sPAR[14])) - sPAR[15]) * X[12]));
    F[5]=((sPAR[12] * X[13]) + (sPAR[6] * X[1]));
    F[13]=((sPAR[10] * X[3]) + ((sPAR[4] * X[7]) + (((-(sPAR[11])) - sPAR[12]) * X[13])));
    F[8]=((sPAR[9] * X[2]) + ((sPAR[10] * X[3]) + ((sPAR[13] * X[4]) + ((X[3] * (sPAR[1] + sPAR[2])) + ((sPAR[7] * X[4]) - (sPAR[5] * (X[1] * X[8])))))));
    F[1]=((sPAR[9] * X[2]) + ((sPAR[11] * X[13]) + (sPAR[14] * X[12])));
    F[4]=((sPAR[8] * X[2]) + (((-(sPAR[13])) - sPAR[7]) * X[4]));
    F[3]=((sPAR[0] * X[2]) + ((((-(sPAR[2])) - sPAR[10]) - sPAR[1]) * X[3]));
    F[2]=((((-(sPAR[0])) - sPAR[8]) - sPAR[9]) * X[2]);

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
    sPAR[0]=0.006; //k1
    sPAR[1]=0.07099999999999999; //k10
    sPAR[2]=0.113; //k11
    sPAR[3]=0.0008; //k12
    sPAR[4]=0.002; //k13
    sPAR[5]=0.003; //k14
    sPAR[6]=0.016; //k15
    sPAR[7]=0.013; //k16
    sPAR[8]=0.016; //k2
    sPAR[9]=0.016; //k3
    sPAR[10]=0.079; //k4
    sPAR[11]=0.091; //k5
    sPAR[12]=0.027; //k6
    sPAR[13]=0.213; //k7
    sPAR[14]=0.0; //k8
    sPAR[15]=1.909; //k9
    X[0]=0.0; //AA
    X[1]=0.0; //Cn
    X[2]=9.0; //DFG
    X[3]=0.0; //E1
    X[4]=0.0; //E2
    X[5]=0.0; //FA
    X[6]=0.0; //Fru
    X[7]=0.0; //Glu
    X[8]=0.0; //Gly
    X[9]=0.0; //MG
    X[10]=0.0; //Man
    X[11]=0.0; //Mel
    X[12]=0.0; //_1DG
    X[13]=0.0; //_3DG

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
