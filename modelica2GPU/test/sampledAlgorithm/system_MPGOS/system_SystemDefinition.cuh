
#ifndef SYSTEM_PERTHREAD_SYSTEMDEFINITION_H
#define SYSTEM_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[0]=(1.0 - X[0]);
    F[1]=0.0;
    F[2]=0.0;
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
    ACC[1]=ACC[0];
    ACC[0]=ACC[1];
    ACCi[3]=ACCi[0];
    ACCi[0]=ACCi[3];
    ACCi[5]=ACCi[1];
    ACCi[6]=ACCi[1] ? 1 + ACCi[6] : ACCi[6];
    ACCi[4]=ACCi[2];
    ACCi[7]=ACCi[2] ? 1 + ACCi[7] : ACCi[7];
    if (ACCi[1]){
        ACCi[3]=ACCi[0];
        ACCi[0]=(1 + ACCi[3]);
        X[2]=ACCi[0];
    }
    ACCi[1]=abs(T - ((round(0.0 * 100) / 100) + ACCi[6] * (round(sPAR[0] * 100) / 100))) < 9.0e-10;
    if (ACCi[2]){
        ACC[1]=ACC[0];
        ACC[0]=X[0];
        X[1]=ACC[0];
    }
    ACCi[2]=abs(T - ((round(0.0 * 100) / 100) + ACCi[7] * (round(sPAR[0] * 100) / 100))) < 9.0e-10;

}

template<class Precision> __forceinline__ __device__ void PerThread_Initialization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
    T     = TD[0];
    DOIDX = 0;
    sPAR[1]=2.0;
    ACC[0]=sPAR[1];
    ACCi[0]=0;
    ACCi[1]=1;
    ACCi[2]=1;
    sPAR[0]=0.3;
    X[0]=sPAR[1];
    ACCi[3]=0;
    ACC[1]=sPAR[1];
    ACCi[4]=0;
    ACCi[5]=0;
    ACCi[6]=0;
    ACCi[7]=0;
    X[1]=ACC[0];
    X[2]=ACCi[0];
}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
