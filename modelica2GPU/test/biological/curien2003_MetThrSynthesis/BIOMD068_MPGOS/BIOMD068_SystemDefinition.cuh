
#ifndef BIOMD068_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD068_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[8]=0.0;
    F[3]=0.0;
    F[4]=0.0;
    F[7]=0.0;
    F[1]=0.0;
    F[0]=0.0;
    F[2]=0.0;
    F[5]=0.0;
    F[6]=(sPAR[4] + (((-(X[1])) * (sPAR[5] * (X[6] / ((X[6] + (sPAR[3] * ((1.0 + (X[5] / sPAR[0])) / (1.0 + (sPAR[2] / X[2]))))) * (1.0 + (sPAR[2] / X[2])))))) - (X[7] * ((0.00059 + (0.062 * (pow(X[0],2.9) / (23170.47500592078 + pow(X[0],2.9))))) * (X[6] / (1.0 + (X[5] / sPAR[1])))))));

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
    sPAR[0]=2000.0; //Ki2
    sPAR[1]=1000.0; //Ki3
    sPAR[2]=460.0; //KmCYS
    sPAR[3]=2500.0; //KmPHSER
    sPAR[4]=1.0; //V0
    sPAR[5]=30.0; //kcat2
    X[0]=20.0; //AdoMet
    X[1]=0.7; //CGS
    X[2]=15.0; //Cys
    X[3]=0.0; //Cystathionine
    X[4]=0.0; //Hser
    X[5]=10000.0; //Phi
    X[6]=0.0; //Phser
    X[7]=5.0; //TS
    X[8]=0.0; //Thr

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
