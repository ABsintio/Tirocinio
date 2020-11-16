
#ifndef HYSTERESISCONTROLWITHALGORITHMS_PERTHREAD_SYSTEMDEFINITION_H
#define HYSTERESISCONTROLWITHALGORITHMS_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[0]=(ACCi[2] ? sPAR[1] : 0.0);
    F[0]=((ACC[0] + (sPAR[4] * (sPAR[2] - X[0]))) / sPAR[0]);
    F[1]=0.0;
    X[1]=ACC[0];
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
    ACCi[3]=ACCi[2];
    ACCi[2]=ACCi[3];
    ACCi[5]=ACCi[0];
    ACCi[0]=X[0] < (-1.0 + sPAR[3]);
    ACCi[4]=ACCi[1];
    ACCi[1]=X[0] > (1.0 + sPAR[3]);
    if (ACCi[0]){
        ACCi[3]=ACCi[2];
        ACCi[2]=1;
    }
    if (ACCi[1]){
        ACCi[3]=ACCi[2];
        ACCi[2]=0;
    }

}

template<class Precision> __forceinline__ __device__ void PerThread_Initialization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
    T     = TD[0];
    DOIDX = 0;
    ACC[0]=0.0;
    ACCi[0]=0;
    ACCi[1]=0;
    ACCi[2]=0;
    sPAR[0]=1.0;
    sPAR[1]=25.0;
    sPAR[2]=285.0;
    sPAR[3]=295.0;
    sPAR[4]=2.0;
    X[0]=(5.0 + sPAR[3]);
    ACCi[3]=0;
    ACCi[4]=0;
    ACCi[5]=0;
    X[1]=ACC[0];
}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
