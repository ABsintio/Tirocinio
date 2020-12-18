
#ifndef BIOMD289_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD289_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[0]=(sPAR[3] * (sPAR[12] * (sPAR[5] * (sPAR[4] / ((sPAR[7] * ACC[1]) * ACC[2])))));
    F[3]=((sPAR[4] * X[2]) + (((-(sPAR[12])) - sPAR[8]) * X[3]));
    F[2]=((sPAR[5] * X[0]) - (sPAR[7] * X[2]));
    F[4]=((sPAR[1] * X[0]) + ((sPAR[10] * (X[2] * X[0])) - (sPAR[9] * X[4])));
    F[0]=((sPAR[3] * (sPAR[12] * X[3])) + (X[0] * ((((-(sPAR[11])) * X[4]) - sPAR[6]) - sPAR[0])));
    F[1]=0.0;

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
    ACC[0]=0.0; //R0
    ACC[1]=0.0; //mA
    ACC[2]=0.0; //mG
    sPAR[0]=0.25; //b1
    sPAR[1]=200.0; //beta
    sPAR[2]=1.0; //body
    sPAR[3]=0.0001; //f
    sPAR[4]=2000.0; //gamma
    sPAR[5]=1000.0; //lambdaE
    sPAR[6]=0.25; //muA
    sPAR[7]=0.25; //muE
    sPAR[8]=5.0; //muG
    sPAR[9]=0.25; //muR
    sPAR[10]=0.016; //pi1
    sPAR[11]=3e-06; //sigma1
    sPAR[12]=0.0025; //v
    X[0]=1.0; //A
    X[1]=0.0; //A_im
    X[2]=0.0; //E
    X[3]=100000000.0; //G
    X[4]=0.0; //R

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
