
#ifndef BIOMD047_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD047_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[0]=pow(3.141592653589793,((-(sPAR[9])) * T));
    ACC[3]=(X[1] / (sPAR[4] + X[1]));
    ACC[1]=(sPAR[10] * (ACC[0] + (sPAR[8] * (1.0 - ACC[0]))));
    ACC[2]=(sPAR[11] + (sPAR[12] * (ACC[1] / (sPAR[3] + ACC[1]))));
    F[2]=(sPAR[7] * ((sPAR[5] * (1.0 - X[2])) - (X[1] * X[2])));
    F[0]=((sPAR[2] * (X[1] / (sPAR[6] + X[1]))) + (((-(sPAR[0])) * (ACC[2] * (ACC[3] * X[2]))) - sPAR[1]));
    F[1]=(sPAR[1] + ((sPAR[0] * (ACC[2] * (ACC[3] * X[2]))) - (sPAR[2] * (X[1] / (sPAR[6] + X[1])))));

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
    ACC[0]=1.0; //$cse1
    ACC[1]=1.0; //n
    ACC[2]=0.0; //p1
    ACC[3]=0.0; //p2
    sPAR[0]=8.0; //Fch_0
    sPAR[1]=0.5; //Fleak
    sPAR[2]=2.0; //Fpump_0
    sPAR[3]=5.0; //K1
    sPAR[4]=0.7; //K2
    sPAR[5]=0.7; //K3
    sPAR[6]=0.1; //Kpump
    sPAR[7]=0.5; //k31
    sPAR[8]=5.0; //kappa
    sPAR[9]=0.5; //kbN
    sPAR[10]=1.0; //n0
    sPAR[11]=0.2; //p11
    sPAR[12]=0.8; //p12
    X[0]=0.0; //CaER
    X[1]=0.0; //Ca_Cyt
    X[2]=0.95; //p3

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
