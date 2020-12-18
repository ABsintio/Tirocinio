
#ifndef BIOMD296_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD296_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[0]=pow(X[4],2.0);
    ACC[2]=(0.02 + (0.03 * (ACC[0] / (25.0 + ACC[0]))));
    ACC[1]=(0.5 + (ACC[0] / (25.0 + ACC[0])));
    F[0]=(sPAR[7] * ((sPAR[8] * X[2]) + (((-(sPAR[5])) - sPAR[1]) * X[0])));
    F[3]=(sPAR[7] * (X[3] * ((sPAR[10] * (1.0 - ((X[2] + X[3]) / sPAR[0]))) + ((-(sPAR[1])) - (sPAR[4] * (pow(X[0],2.0) / (sPAR[3] + pow(X[0],2.0))))))));
    F[4]=0.0;
    F[1]=(sPAR[7] * ((ACC[2] * X[3]) + (((-(sPAR[6])) - sPAR[1]) * X[1])));
    F[2]=(sPAR[7] * (X[2] * ((sPAR[9] * (1.0 - ((X[2] + X[3]) / sPAR[0]))) + ((-(sPAR[1])) - (ACC[1] * (sPAR[2] / (sPAR[2] + pow(X[1],2.0))))))));
    F[5]=0.0;
    F[6]=0.0;

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
    ACC[0]=-8.333333333333334; //$cse1
    ACC[1]=0.0; //d1
    ACC[2]=0.0; //kA2
    sPAR[0]=100.0; //Cm
    sPAR[1]=0.1125; //D
    sPAR[2]=10.0; //K1
    sPAR[3]=10.0; //K2
    sPAR[4]=0.3; //d2
    sPAR[5]=0.017; //dAA1
    sPAR[6]=0.11; //dAA2
    sPAR[7]=1.0; //environment
    sPAR[8]=0.1; //kA1
    sPAR[9]=0.8; //kc1
    sPAR[10]=0.4; //kc2
    X[0]=0.1; //A1
    X[1]=0.1; //A2
    X[2]=20.0; //C1
    X[3]=20.0; //C2
    X[4]=5.0; //IPTG
    X[5]=0.0; //sink
    X[6]=0.0; //source

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
