
#ifndef BIOMD299_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD299_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[0]=pow(sPAR[1],sPAR[8]); // Non presente nell'XML
    ACC[1]=pow(X[1],sPAR[8]);
    ACC[2]=(X[0] + X[1]);
    F[1]=((sPAR[5] * X[0]) - (sPAR[6] * X[1]));
    F[0]=((sPAR[7] * X[2]) + ((sPAR[6] * X[1]) - (X[0] * ((sPAR[9] / (sPAR[2] + X[0])) + sPAR[5]))));
    F[2]=((sPAR[11] * (ACC[0] / (ACC[0] + ACC[1]))) - (sPAR[10] * (X[2] / (sPAR[3] + X[2]))));

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
    ACC[0]=0.0; //$cse1
    ACC[1]=0.0; //$cse2
    ACC[2]=0.0; //Ft
    sPAR[0]=1.0; //Cytoplasm
    sPAR[1]=1.0; //KI
    sPAR[2]=0.13; //Kd
    sPAR[3]=0.5; //Km
    sPAR[4]=1.0; //Nucleus
    sPAR[5]=0.5; //k1
    sPAR[6]=0.6; //k2
    sPAR[7]=0.5; //ks
    sPAR[8]=4.0; //n
    sPAR[9]=1.4; //vd
    sPAR[10]=0.505; //vm
    sPAR[11]=1.6; //vs
    X[0]=0.1; //FC
    X[1]=0.1; //FN
    X[2]=0.1; //M

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
