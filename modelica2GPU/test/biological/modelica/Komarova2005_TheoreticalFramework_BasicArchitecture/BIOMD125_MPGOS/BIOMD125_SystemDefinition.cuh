
#ifndef BIOMD125_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD125_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[3]=0.0;
    F[0]=0.0;
    F[4]=(sPAR[4] * ((X[1] * sPAR[3]) - (sPAR[7] * X[4])));
    F[2]=(sPAR[4] * ((X[1] * sPAR[1]) - (sPAR[6] * X[2])));
    F[1]=(sPAR[4] * ((sPAR[0] * X[0]) + ((sPAR[2] * X[3]) - (sPAR[5] * X[1]))));

}

template<class Precision> __forceinline__ __device__ void PerThread_EventFunction(
	int tid, int NT, Precision*	  EF, \
	Precision     T, Precision    dT, Precision*    TD, Precision*	X, \
	Precision* cPAR, Precision* sPAR, int*       sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[0]=T > 1.0;

    EF[0] = (! (ACC[0]));
}

template<class Precision> __forceinline__ __device__ void PerThread_ActionAfterEventDetection(
    int tid, int NT, int IDX, int& UDT, \
    Precision    &T, Precision   &dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR, int*       sPARi, Precision* ACC, int* ACCi
) {
    if (IDX == 0){
	    X[0]=0.0;
    }

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
    ACC[0]=0; //$whenCondition1
    sPAR[0]=2.0; //a1
    sPAR[1]=2.0; //a2
    sPAR[2]=1.0; //b1
    sPAR[3]=1.0; //b2
    sPAR[4]=1.0; //compartment_0000001
    sPAR[5]=1.0; //d1
    sPAR[6]=1.0; //d2x
    sPAR[7]=1.0; //d2y
    X[0]=1.0; //x0
    X[1]=0.0; //x1
    X[2]=0.0; //x2
    X[3]=0.0; //y0
    X[4]=0.0; //y2

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
