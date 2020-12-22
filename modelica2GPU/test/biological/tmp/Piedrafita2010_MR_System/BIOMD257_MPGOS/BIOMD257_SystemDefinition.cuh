
#ifndef BIOMD257_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD257_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[1]=sPAR[9];
    ACC[0]=sPAR[9];
    F[6]=(sPAR[0] * ((sPAR[14] * X[8]) + ((sPAR[2] * X[5]) + ((sPAR[11] * X[7]) + (((((-(sPAR[10])) * (X[1] * X[6])) - (sPAR[15] * (X[2] * X[6]))) - (sPAR[3] * (X[2] * X[6]))) - (sPAR[9] * X[6]))))));
    F[1]=(sPAR[0] * ((sPAR[7] * X[4]) + ((sPAR[11] * X[7]) + ((X[1] * (((-(sPAR[8])) * X[2]) - sPAR[9])) - (sPAR[10] * (X[1] * X[6]))))));
    F[0]=0.0;
    F[10]=0.0;
    F[9]=0.0;
    F[2]=(sPAR[0] * ((sPAR[7] * X[4]) + ((sPAR[14] * X[8]) + ((sPAR[2] * X[5]) + ((sPAR[4] * X[3]) + ((X[2] * (((-(sPAR[3])) * X[6]) - sPAR[9])) + ((((-(sPAR[1])) * (X[0] * X[2])) - (sPAR[8] * (X[1] * X[2]))) - (sPAR[15] * (X[2] * X[6])))))))));
    F[3]=(sPAR[0] * ((sPAR[1] * (X[0] * X[2])) + ((sPAR[6] * X[4]) + ((sPAR[17] * X[5]) + ((((-(sPAR[5])) * (X[9] * X[3])) - (sPAR[16] * (X[10] * X[3]))) - (sPAR[4] * X[3]))))));
    F[4]=(sPAR[0] * ((sPAR[5] * (X[9] * X[3])) + ((sPAR[8] * (X[1] * X[2])) + (((-(sPAR[7])) - sPAR[6]) * X[4]))));
    F[5]=(sPAR[0] * ((sPAR[16] * (X[10] * X[3])) + ((sPAR[3] * (X[2] * X[6])) + (((-(sPAR[2])) - sPAR[17]) * X[5]))));
    F[7]=(sPAR[0] * ((sPAR[10] * (X[1] * X[6])) + ((sPAR[13] * X[8]) + (((-(sPAR[12])) * (X[10] * X[7])) - (sPAR[11] * X[7])))));
    F[8]=(sPAR[0] * ((sPAR[12] * (X[10] * X[7])) + ((sPAR[15] * (X[2] * X[6])) + (((-(sPAR[14])) - sPAR[13]) * X[8]))));

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
    ACC[0]=0.0; //k11
    ACC[1]=0.0; //k8
    sPAR[0]=1.0; //env
    sPAR[1]=10.0; //k1
    sPAR[2]=0.05; //k10
    sPAR[3]=0.05; //k10r
    sPAR[4]=10.0; //k1r
    sPAR[5]=10.0; //k2
    sPAR[6]=10.0; //k2r
    sPAR[7]=2.0; //k3
    sPAR[8]=1.0; //k3r
    sPAR[9]=0.3; //k4
    sPAR[10]=1.0; //k5
    sPAR[11]=1.0; //k5r
    sPAR[12]=1.0; //k6
    sPAR[13]=1.0; //k6r
    sPAR[14]=0.1; //k7
    sPAR[15]=0.1; //k7r
    sPAR[16]=0.1; //k9
    sPAR[17]=0.05; //k9r
    X[0]=4.0; //S
    X[1]=0.0; //ST
    X[2]=5.0; //STU
    X[3]=0.0; //STUS
    X[4]=0.0; //STUST
    X[5]=0.0; //STUSU
    X[6]=0.0; //SU
    X[7]=0.0; //SUST
    X[8]=0.0; //SUSTU
    X[9]=2.0; //T
    X[10]=1.0; //U

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
