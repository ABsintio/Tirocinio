
#ifndef BIOMD062_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD062_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[0]=(sPAR[4] * (sPAR[3] / ((sPAR[3] * (1.0 + (X[1] / sPAR[6]))) + sPAR[5])));
    ACC[1]=(ACC[0] + X[1]);
    F[0]=((sPAR[8] * (pow(sPAR[10],sPAR[12]) * (sPAR[2] / (pow(sPAR[10],sPAR[12]) + pow(ACC[1],sPAR[12]))))) - (sPAR[11] * X[0]));
    F[1]=((sPAR[9] * (X[0] * (sPAR[1] / (sPAR[1] + ACC[1])))) + (X[1] * (((-(sPAR[7])) / (sPAR[0] + X[1])) - sPAR[11])));

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
    ACC[0]=0.0; //To
    ACC[1]=0.0; //Tt
    sPAR[0]=0.2; //Kg
    sPAR[1]=810.0; //Ki2
    sPAR[2]=0.003; //Ot
    sPAR[3]=0.14; //Tex
    sPAR[4]=100.0; //Tomax
    sPAR[5]=0.9; //e_val
    sPAR[6]=380.0; //f_val
    sPAR[7]=25.0; //g
    sPAR[8]=65.0; //k1
    sPAR[9]=25.0; //k2
    sPAR[10]=3.53; //ki1
    sPAR[11]=0.01; //mu
    sPAR[12]=1.92; //nH
    X[0]=0.0; //Enz
    X[1]=0.0; //Ts

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
