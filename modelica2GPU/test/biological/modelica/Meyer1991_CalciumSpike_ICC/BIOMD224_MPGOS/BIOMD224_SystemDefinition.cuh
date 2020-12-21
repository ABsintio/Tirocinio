
#ifndef BIOMD224_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD224_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[3]=((sPAR[4] * (pow((0.01 * X[0]),4.0) * (1.0 - X[3]))) - sPAR[6]);
    F[1]=((sPAR[1] * (pow((0.01 * X[0]),2.0) / (pow((0.01 * X[0]),2.0) + pow(sPAR[11],2.0)))) + ((-1.0 + X[3]) * (((0.0625 * (sPAR[0] * pow((X[2] / ((0.5 * X[2]) + sPAR[10])),4.0))) + sPAR[7]) * X[1])));
    F[2]=((sPAR[2] * (1.0 - (sPAR[12] / ((1.0 + sPAR[8]) * ((0.01 * X[0]) + sPAR[12]))))) + (-0.5 * (sPAR[3] * X[2])));
    F[0]=(((1.0 - X[3]) * (((0.0625 * (sPAR[0] * pow((X[2] / ((0.5 * X[2]) + sPAR[10])),4.0))) + sPAR[7]) * X[1])) - (sPAR[1] * (pow((0.01 * X[0]),2.0) / (pow((0.01 * X[0]),2.0) + pow(sPAR[11],2.0)))));

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
    sPAR[0]=20.0; //A
    sPAR[1]=40.0; //B
    sPAR[2]=1.1; //C
    sPAR[3]=2.0; //D
    sPAR[4]=1.0; //E
    sPAR[5]=1.0; //ER_store
    sPAR[6]=0.02; //F
    sPAR[7]=0.01; //L
    sPAR[8]=0.09; //R
    sPAR[9]=1.0; //cytosol
    sPAR[10]=0.5; //k1
    sPAR[11]=0.15; //k2
    sPAR[12]=1.0; //k3
    X[0]=0.1; //CaI
    X[1]=1100.0; //CaS
    X[2]=0.05; //IP3
    X[3]=0.0; //g

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
