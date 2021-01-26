
#ifndef BIOMD522_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD522_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[5]=1.0;
    ACC[4]=(pow((10.0 * X[3]),3.0) / (1.0 + pow((10.0 * X[3]),3.0)));
    ACC[6]=ACC[4];
    ACC[3]=(pow((4.0 * X[4]),2.0) / (1.0 + pow((4.0 * X[4]),2.0)));
    ACC[2]=(1.0 / (1.0 + pow((20.0 * X[6]),5.0)));
    ACC[1]=(pow((2.0 * X[7]),2.0) / (1.0 + (pow((2.0 * X[7]),2.0) + pow((25.0 * X[1]),3.0))));
    ACC[0]=(pow((4.0 * X[4]),2.0) / (1.0 + (pow((4.0 * X[4]),2.0) + pow((2.5 * X[11]),3.0))));
    F[12]=0.0;
    F[13]=0.0;
    F[5]=0.0;
    F[6]=(X[5] - X[6]);
    F[11]=(X[10] - X[11]);
    F[3]=(10.0 * (X[2] - X[3]));
    F[9]=(10.0 * (X[8] - X[9]));
    F[1]=(X[0] - X[1]);
    F[10]=(2.0 + ((-10.0 * (X[10] * X[15])) - X[10]));
    F[15]=0.0;
    F[4]=(0.06 - X[4]);
    F[14]=(ACC[6] - X[14]);
    F[8]=(10.0 * (ACC[3] - X[8]));
    F[7]=((2.0 * ACC[2]) + (-10.0 * X[7]));
    F[2]=((20.0 * ACC[1]) + (-10.0 * X[2]));
    F[0]=((2.0 * ACC[0]) - X[0]);

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
    ACC[0]=0.0; //F_AHP6
    ACC[1]=0.0; //F_ARR5
    ACC[2]=0.0; //F_CK
    ACC[3]=0.0; //F_IAA2
    ACC[4]=0.0; //F_PIN1
    ACC[5]=0.0; //F_PIN3
    ACC[6]=0.0; //F_PIN7
    X[0]=0.0; //AHP6m
    X[1]=0.0; //AHP6p
    X[2]=0.0; //ARR5m
    X[3]=0.0; //ARR5p
    X[4]=0.0; //Auxin
    X[5]=0.0; //CKX3m
    X[6]=0.0; //CKX3p
    X[7]=0.0; //Cytokinin
    X[8]=0.0; //IAA2m
    X[9]=0.0; //IAA2p
    X[10]=0.0; //PHBm
    X[11]=0.0; //PHBp
    X[12]=0.0; //PIN1m
    X[13]=0.0; //PIN3m
    X[14]=0.0; //PIN7m
    X[15]=0.0; //miRNA

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
