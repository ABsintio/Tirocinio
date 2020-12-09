
#ifndef BIOMD031_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD031_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[5]=((sPAR[6] * (X[2] * (X[4] / (sPAR[1] * (1.0 + (X[4] / sPAR[1])))))) - (sPAR[7] * (X[3] * (X[5] / (sPAR[2] * (1.0 + ((X[5] / sPAR[2]) + ((X[4] / sPAR[3]) + (X[0] / sPAR[4])))))))));
    F[4]=((sPAR[5] * (X[1] * (X[0] / (sPAR[0] * (1.0 + (X[0] / sPAR[0])))))) + ((sPAR[7] * (X[3] * (X[5] / (sPAR[2] * (1.0 + ((X[5] / sPAR[2]) + ((X[4] / sPAR[3]) + (X[0] / sPAR[4])))))))) + (((-(sPAR[6])) * (X[2] * (X[4] / ((1.0 + (X[4] / sPAR[1])) * sPAR[1])))) - (sPAR[8] * (X[3] * (X[4] / (sPAR[3] * (1.0 + ((X[5] / sPAR[2]) + ((X[4] / sPAR[3]) + (X[0] / sPAR[4])))))))))));
    F[0]=((sPAR[8] * (X[3] * (X[4] / (sPAR[3] * (1.0 + ((X[5] / sPAR[2]) + ((X[4] / sPAR[3]) + (X[0] / sPAR[4])))))))) - (sPAR[5] * (X[1] * (X[0] / (sPAR[0] * (1.0 + (X[0] / sPAR[0])))))));
    F[3]=0.0;
    F[2]=0.0;
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
    sPAR[0]=50.0; //Km1
    sPAR[1]=500.0; //Km2
    sPAR[2]=5.0; //Km3
    sPAR[3]=18.0; //Km4
    sPAR[4]=78.0; //Km5
    sPAR[5]=0.01; //k1cat
    sPAR[6]=15.0; //k2cat
    sPAR[7]=0.08400000000000001; //k3cat
    sPAR[8]=0.06; //k4cat
    X[0]=500.0; //M
    X[1]=100.0; //MAPKK1
    X[2]=1.0; //MAPKK2
    X[3]=100.0; //MKP3
    X[4]=0.0; //Mp
    X[5]=0.0; //Mpp

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
