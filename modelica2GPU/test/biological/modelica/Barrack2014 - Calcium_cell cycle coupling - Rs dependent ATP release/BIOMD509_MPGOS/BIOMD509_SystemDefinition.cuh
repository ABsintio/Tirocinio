
#ifndef BIOMD509_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD509_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[1]=(0.0159835 + ((0.514987 * (pow(X[3],24.1946) / (729.2696670610974 + pow(X[3],24.1946)))) + (0.332195 * (pow(X[3],9.791829999999999) / (0.09688876282069581 + pow(X[3],9.791829999999999))))));
    ACC[7]=(0.5 + (0.5 * tanh((100.0 + (-100.0 * X[5])))));
    ACC[4]=(0.5 + (0.5 * tanh((-1.2 + (100.0 * X[3])))));
    ACC[6]=(X[0] / (25.0 + X[0]));
    ACC[5]=8.823529411764705;
    ACC[2]=(0.001356002920621675 * ACC[5]);
    ACC[3]=((ACC[6] + ACC[2]) / (ACC[5] + (ACC[2] + ACC[6])));
    ACC[0]=(0.3940165 + ACC[1]);
    F[6]=((0.08 * X[2]) + ((0.2 * (1.5 - X[5])) + ((0.528 * (pow(X[6],2.0) * X[2])) + (-1.04 * X[6]))));
    F[5]=((0.6 * ((1.5 - X[5]) * X[4])) + (X[5] * ((-0.48 * (X[1] / (0.6 + (X[5] + X[1])))) + (-0.096 * (X[2] / (0.6 + (X[5] + X[2])))))));
    F[4]=((0.48 * ((2.5 - (X[5] + X[4])) * (X[6] / (3.3 + (X[6] + ((-(X[4])) - X[5])))))) + (-0.6 * ((1.5 - X[5]) * X[4])));
    F[2]=((0.16 * (1.0 + (0.9 * (1.5 - X[5])))) + (-0.2 * (X[6] * X[2])));
    F[0]=(3600.0 * ((50.0 * ((X[7] - X[0]) * (ACC[7] * (ACC[4] * ((-0.012 + X[3]) / (10.0 + X[3])))))) + (-2.0 * (X[0] / (50.0 + X[0])))));
    F[7]=(3600.0 * ((0.083 * (500.0 - X[7])) + (-50.0 * (ACC[7] * (ACC[4] * ((X[7] - X[0]) * ((-0.012 + X[3]) / (10.0 + X[3]))))))));
    F[3]=(3600.0 * ((0.6 * ACC[3]) + (-0.0625 * X[3])));
    F[1]=((0.2395437262357415 * ACC[0]) + (-0.4 * (X[2] * X[1])));

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
    ACC[0]=0.0; //ad
    ACC[1]=0.0; //ca
    ACC[2]=0.01196473165254419; //delta
    ACC[3]=0.0; //gstar
    ACC[4]=0.0; //ip3con
    ACC[5]=8.823529411764705; //kg
    ACC[6]=0.0; //ro
    ACC[7]=0.0; //rscon
    X[0]=0.0; //atp
    X[1]=0.0; //d
    X[2]=1.0; //e
    X[3]=0.0; //ip3
    X[4]=0.0; //r
    X[5]=1.1; //rs
    X[6]=0.0; //x
    X[7]=0.0; //y

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
