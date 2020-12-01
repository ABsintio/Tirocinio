
#ifndef BIOMD045_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD045_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[3]=(sPAR[12] + ((sPAR[13] * sPAR[11]) + ((sPAR[9] * (pow((X[2] * X[3]),2.0) / ((pow(sPAR[4],2.0) + pow(X[2],2.0)) * (pow(sPAR[5],2.0) + pow(X[3],2.0))))) + ((sPAR[6] * (X[2] + X[1])) + ((sPAR[11] * (sPAR[10] * (pow(X[1],2.0) / (pow(sPAR[3],2.0) + pow(X[1],2.0))))) + ((pow(X[3],2.0) * (((-(sPAR[8])) / (pow(sPAR[2],2.0) + pow(X[3],2.0))) - (sPAR[7] / (pow(sPAR[1],2.0) + pow(X[3],2.0))))) - (sPAR[0] * X[3])))))));
    F[2]=((sPAR[7] * (pow(X[3],2.0) / (pow(sPAR[1],2.0) + pow(X[3],2.0)))) + (((-(sPAR[9])) * (pow((X[2] * X[3]),2.0) / ((pow(sPAR[5],2.0) + pow(X[3],2.0)) * (pow(sPAR[4],2.0) + pow(X[2],2.0))))) - (sPAR[6] * X[2])));
    F[1]=((sPAR[8] * (pow(X[3],2.0) / (pow(sPAR[2],2.0) + pow(X[3],2.0)))) + (((-(sPAR[6])) * X[1]) - (sPAR[11] * (sPAR[10] * (pow(X[1],2.0) / (pow(sPAR[3],2.0) + pow(X[1],2.0)))))));
    F[0]=((sPAR[0] * X[3]) + ((-(sPAR[12])) - (sPAR[13] * sPAR[11])));

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
    sPAR[0]=1.0; //K
    sPAR[1]=0.005; //K2i
    sPAR[2]=0.027; //K2s
    sPAR[3]=0.1; //K3s
    sPAR[4]=0.065; //K3y
    sPAR[5]=0.022; //K3z
    sPAR[6]=0.5; //Kf
    sPAR[7]=3.1; //Vm2i
    sPAR[8]=1.5; //Vm2s
    sPAR[9]=25.0; //Vm3i
    sPAR[10]=0.169; //Vm3s
    sPAR[11]=1.0; //beta
    sPAR[12]=0.015; //v0
    sPAR[13]=0.012; //v1
    X[0]=0.0; //EC
    X[1]=0.5; //X
    X[2]=0.0; //Y
    X[3]=0.0; //Z

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
