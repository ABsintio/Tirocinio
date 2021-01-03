
#ifndef BIOMD381_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD381_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[1]=pow((-3.0 + (0.3333333333333333 * T)),2.0);
    ACC[0]=(sPAR[2] * pow(2.718281828459045,(-(ACC[1]))));
    F[2]=((sPAR[3] * (X[1] * X[4])) - (sPAR[8] * X[2]));
    F[1]=((sPAR[7] * X[0]) + ((((-(sPAR[11])) * X[3]) - (sPAR[12] * X[4])) * X[1]));
    F[4]=((sPAR[11] * (X[3] * X[0])) - (X[4] * (sPAR[14] + (sPAR[10] * (X[3] + X[4])))));
    F[3]=(sPAR[1] + (((sPAR[14] + sPAR[4]) * X[4]) + (((-(X[3])) * (sPAR[5] + (sPAR[11] * X[0]))) - (sPAR[9] * (X[3] * (X[3] + X[4]))))));
    F[0]=(ACC[0] + ((sPAR[0] * (X[2] / (sPAR[15] + X[2]))) + (((((-(sPAR[11])) * X[3]) - (sPAR[12] * X[4])) - sPAR[7]) * X[0])));

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
    ACC[0]=4936.39216346718; //W
    ACC[1]=9.0; //parameter_1
    sPAR[0]=20000000.0; //Amax
    sPAR[1]=50000.0; //J
    sPAR[2]=40000000.0; //Wmax
    sPAR[3]=5e-09; //alpha
    sPAR[4]=0.09; //b
    sPAR[5]=0.1; //c
    sPAR[6]=1.0; //compartment1
    sPAR[7]=0.5; //d
    sPAR[8]=25.0; //delta
    sPAR[9]=1e-08; //e1
    sPAR[10]=1e-08; //e2
    sPAR[11]=1e-05; //f1
    sPAR[12]=1e-05; //f2
    sPAR[13]=1e-05; //g
    sPAR[14]=0.4; //k
    sPAR[15]=1.0; //kc
    X[0]=0.0; //Ba
    X[1]=0.0; //Bn
    X[2]=0.0; //Cy
    X[3]=477000.0; //M
    X[4]=0.0; //Ma

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
