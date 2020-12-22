
#ifndef BIOMD258_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD258_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[2]=(sPAR[5] * ((sPAR[9] * (X[1] / (sPAR[3] * (1.0 + ((X[0] / sPAR[1]) + (X[1] / sPAR[3])))))) - (X[2] / ((sPAR[4] * sPAR[0]) * (1.0 + ((X[2] / sPAR[4]) + (X[1] / sPAR[2])))))));
    F[1]=(sPAR[5] * ((X[0] / (sPAR[1] * (1.0 + ((X[0] / sPAR[1]) + (X[1] / sPAR[3]))))) + ((X[2] / ((sPAR[4] * sPAR[0]) * (1.0 + ((X[2] / sPAR[4]) + (X[1] / sPAR[2]))))) + (X[1] * (((-(sPAR[8])) / (((1.0 + ((X[2] / sPAR[4]) + (X[1] / sPAR[2]))) * sPAR[0]) * sPAR[2])) - (sPAR[9] / (sPAR[3] * (1.0 + ((X[0] / sPAR[1]) + (X[1] / sPAR[3]))))))))));
    F[0]=(sPAR[5] * ((sPAR[8] * (X[1] / ((sPAR[2] * sPAR[0]) * (1.0 + ((X[2] / sPAR[4]) + (X[1] / sPAR[2])))))) - (X[0] / (sPAR[1] * (1.0 + ((X[0] / sPAR[1]) + (X[1] / sPAR[3])))))));

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
    sPAR[0]=1.1; //Chi14
    sPAR[1]=0.01; //Ks1
    sPAR[2]=0.01; //Ks2
    sPAR[3]=0.01; //Ks3
    sPAR[4]=0.01; //Ks4
    sPAR[5]=1.0; //Vm1
    sPAR[6]=1.0; //cell
    sPAR[7]=1.0; //p
    sPAR[8]=1.0; //r24
    sPAR[9]=1.0; //r31
    X[0]=0.462; //alpha
    X[1]=0.2; //beta
    X[2]=0.338; //gamma

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
