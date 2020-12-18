
#ifndef BIOMD254_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD254_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[0]=(X[3] - X[2]);
    ACC[1]=(X[3] + X[2]);
    F[3]=((2.0 * (sPAR[3] * (X[1] * X[3]))) + ((sPAR[2] * (X[2] - X[3])) - (sPAR[5] * (X[3] / (sPAR[4] + X[3])))));
    F[1]=(sPAR[0] - (sPAR[3] * (X[1] * X[3])));
    F[0]=(sPAR[0] - (sPAR[3] * (X[0] * X[2])));
    F[2]=((2.0 * (sPAR[3] * (X[2] * X[0]))) + ((sPAR[2] * ACC[0]) - (sPAR[5] * (X[2] / (sPAR[4] + X[2])))));

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
    ACC[0]=0.0; //Tdiff
    ACC[1]=0.0; //Tsum
    sPAR[0]=0.36; //V_in
    sPAR[1]=1.0; //compartment
    sPAR[2]=0.01; //epsilon
    sPAR[3]=0.02; //k1
    sPAR[4]=13.0; //km
    sPAR[5]=6.0; //kp
    X[0]=6.6; //G1
    X[1]=10.3; //G2
    X[2]=7.6; //T1
    X[3]=0.41; //T2

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
