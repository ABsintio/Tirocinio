
#ifndef BIOMD274_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD274_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[0]=pow(X[0],2.0);
    F[2]=(sPAR[10] * (sPAR[9] * ((sPAR[4] * X[0]) + (((-(sPAR[8])) * X[2]) - (sPAR[5] * (X[0] * (X[2] / (sPAR[13] + X[0]))))))));
    F[1]=(sPAR[10] * (X[1] * (((sPAR[2] + (sPAR[3] * X[0])) * (X[2] / (sPAR[12] + ACC[0]))) - sPAR[7])));
    F[0]=((sPAR[1] / (sPAR[11] + X[1])) - (sPAR[6] * X[0]));

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
    ACC[0]=0.0; //$cse1
    sPAR[0]=1.0; //Compartment
    sPAR[1]=0.05; //a1
    sPAR[2]=0.008999999999999999; //a2
    sPAR[3]=0.675; //a3
    sPAR[4]=0.01; //a4
    sPAR[5]=0.005; //a5
    sPAR[6]=0.1; //b1
    sPAR[7]=0.3; //b2
    sPAR[8]=0.01; //b3
    sPAR[9]=0.9; //delta
    sPAR[10]=0.1; //epsilon
    sPAR[11]=0.1; //k1
    sPAR[12]=0.5; //k2
    sPAR[13]=0.025; //k3
    X[0]=2.0; //x
    X[1]=1.0; //y
    X[2]=0.15; //z

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
