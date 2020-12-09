
#ifndef BIOMD060_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD060_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[0]=(X[2] + X[3]);
    F[2]=((sPAR[2] * (pow(sPAR[0],sPAR[8]) * X[0])) + ((sPAR[3] * X[3]) + ((sPAR[5] * X[1]) + ((((-(sPAR[4])) * (pow(sPAR[0],sPAR[7]) * X[2])) - (sPAR[6] * X[2])) - (sPAR[1] * X[2])))));
    F[1]=((sPAR[6] * X[2]) - (sPAR[5] * X[1]));
    F[3]=((sPAR[4] * (pow(sPAR[0],sPAR[7]) * X[2])) - (sPAR[3] * X[3]));
    F[0]=((sPAR[1] * X[2]) - (sPAR[2] * (pow(sPAR[0],sPAR[8]) * X[0])));

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
    ACC[0]=0.0; //open_probability
    sPAR[0]=0.9; //Ca
    sPAR[1]=28.8; //ka_minus
    sPAR[2]=1500.0; //ka_plus
    sPAR[3]=385.9; //kb_minus
    sPAR[4]=1500.0; //kb_plus
    sPAR[5]=0.1; //kc_minus
    sPAR[6]=1.75; //kc_plus
    sPAR[7]=3.0; //m
    sPAR[8]=4.0; //n
    X[0]=0.963; //Pc1
    X[1]=0.037; //Pc2
    X[2]=0.0; //Po1
    X[3]=0.0; //Po2

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
