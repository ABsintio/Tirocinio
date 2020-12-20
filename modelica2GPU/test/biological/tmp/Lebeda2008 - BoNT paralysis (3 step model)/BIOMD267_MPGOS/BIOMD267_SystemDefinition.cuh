
#ifndef BIOMD267_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD267_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[0]=(1.0 - X[2]);
    F[2]=(sPAR[3] * (X[3] * sPAR[0]));
    F[3]=((sPAR[4] * (X[0] * sPAR[1])) - (sPAR[3] * (X[3] * sPAR[0])));
    F[0]=((sPAR[2] * (X[1] * sPAR[1])) - (sPAR[4] * (X[0] * sPAR[1])));
    F[1]=((-(sPAR[2])) * (X[1] * sPAR[1]));

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
    ACC[0]=0.0; //tension
    sPAR[0]=1.0; //endosome
    sPAR[1]=1.0; //extracellular
    sPAR[2]=0.058; //kB_2
    sPAR[3]=0.013; //kL_1
    sPAR[4]=0.141; //kT_0
    sPAR[5]=1.0; //neuroplasm
    X[0]=0.0; //bound
    X[1]=1.0; //free
    X[2]=0.0; //lytic
    X[3]=0.0; //translocate

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
