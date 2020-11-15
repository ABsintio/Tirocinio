
#ifndef SAMPLEANDHOLD_PERTHREAD_SYSTEMDEFINITION_H
#define SAMPLEANDHOLD_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACCi[0]=(abs(T - ((round(0.0 * 100) / 100) + ACCi[1] * (round(sPAR[6] * 100) / 100))) < 9.0e-10 ? 1.0 : 0.0);
    F[1]=(((sPAR[2] * (X[2] - X[3])) + ((sPAR[4] * (X[0] - X[1])) + (((-(sPAR[3])) * X[3]) - (sPAR[5] * X[1])))) / sPAR[1]);
    F[3]=X[1];
    F[0]=(((sPAR[2] * (X[3] - X[2])) + (sPAR[4] * (X[1] - X[0]))) / sPAR[0]);
    F[2]=X[0];
    F[4]=0.0;

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
    ACCi[1]=ACCi[0] ? 1 + ACCi[1] : ACCi[1];
    ACC[1]=ACC[0];
    ACC[0]=(ACCi[0] ? X[0] : ACC[0]);
    X[4]=ACC[0];
}   

template<class Precision> __forceinline__ __device__ void PerThread_Initialization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
    T     = TD[0];
    DOIDX = 0;
    ACC[1]=0.0;
    ACC[0]=ACC[1];
    ACCi[0]=1;
    sPAR[0]=0.4;
    sPAR[1]=1.0;
    sPAR[2]=11.0;
    sPAR[3]=5.0;
    sPAR[4]=0.2;
    sPAR[5]=1.0;
    sPAR[6]=0.1251231;
    X[0]=0.0;
    X[1]=0.0;
    X[2]=0.0;
    X[3]=1.0;
    X[4]=0.0;
    ACCi[1]=1;

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
