
#ifndef BIOMD319_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD319_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[2]=((0.02 * (sPAR[6] * (X[1] * ((1.0 + (sPAR[3] * X[1])) * (pow((1.0 + X[2]),2.0) / (sPAR[1] + pow(((1.0 + (sPAR[3] * X[1])) * (1.0 + X[2])),2.0))))))) - (sPAR[4] * X[2]));
    F[1]=((50.0 * (sPAR[5] * (X[0] * ((1.0 + X[0]) * (pow((1.0 + X[1]),2.0) / (sPAR[0] + pow(((1.0 + X[0]) * (1.0 + X[1])),2.0))))))) - (sPAR[6] * (X[1] * ((1.0 + (sPAR[3] * X[1])) * (pow((1.0 + X[2]),2.0) / (sPAR[1] + pow(((1.0 + (sPAR[3] * X[1])) * (1.0 + X[2])),2.0)))))));
    F[0]=(sPAR[7] - (sPAR[5] * (X[0] * ((1.0 + X[0]) * (pow((1.0 + X[1]),2.0) / (sPAR[0] + pow(((1.0 + X[0]) * (1.0 + X[1])),2.0)))))));

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
    sPAR[0]=500000000.0; //L1_1
    sPAR[1]=100.0; //L2_2
    sPAR[2]=1.0; //cell
    sPAR[3]=0.0; //d_2
    sPAR[4]=1.99; //ks_3
    sPAR[5]=10.0; //sigma1_1
    sPAR[6]=10.0; //sigma2_2
    sPAR[7]=0.45; //v_Km1_0
    X[0]=29.19988; //alpha
    X[1]=188.8; //beta
    X[2]=0.3367; //gamma

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
