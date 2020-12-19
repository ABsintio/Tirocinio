
#ifndef BIOMD284_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD284_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[8]=0.0;
    F[7]=0.0;
    F[6]=0.0;
    F[5]=(sPAR[0] * ((((5.0 * X[4]) - X[5]) / (1.0 + (X[4] + X[5]))) + ((X[8] + (-10.0 * X[5])) / (1.0 + (X[5] + X[8])))));
    F[4]=(sPAR[0] * (((X[1] - X[4]) / (1.0 + (X[1] + (X[4] + pow(X[5],2.0))))) + ((X[5] + (-5.0 * X[4])) / (1.0 + (X[4] + X[5])))));
    F[3]=(sPAR[0] * ((((5.0 * X[2]) - X[3]) / (1.0 + (X[2] + X[3]))) + ((X[7] + (-10.0 * X[3])) / (1.0 + (X[3] + X[7])))));
    F[2]=(sPAR[0] * (((X[1] - X[2]) / (1.0 + (X[1] + (X[2] + pow(X[3],2.0))))) + ((X[3] + (-5.0 * X[2])) / (1.0 + (X[2] + X[3])))));
    F[1]=(sPAR[0] * ((((2.0 * X[0]) - X[1]) / (1.0 + (X[0] + X[1]))) + (((X[2] - X[1]) / (1.0 + (X[1] + (X[2] + pow(X[3],2.0))))) + ((X[4] - X[1]) / (1.0 + (X[1] + (X[4] + pow(X[5],2.0))))))));
    F[0]=(sPAR[0] * ((((10.0 * X[6]) - X[0]) / (1.0 + (X[6] + (X[0] + pow(X[1],2.0))))) + ((X[1] + (-2.0 * X[0])) / (1.0 + (X[0] + X[1])))));

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
    sPAR[0]=1.0; //cell
    X[0]=0.0; //A
    X[1]=0.0; //B
    X[2]=0.0; //C
    X[3]=0.0; //D
    X[4]=0.0; //E
    X[5]=0.0; //F
    X[6]=10.0; //X
    X[7]=2.0; //Y
    X[8]=1.0; //Z

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
