
#ifndef BIOMD004_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD004_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[1]=(X[1] * sPAR[9]);
    ACC[0]=(X[0] * (sPAR[8] / (X[0] + sPAR[4])));
    F[0]=(sPAR[12] - (X[0] * (sPAR[10] + (sPAR[11] * (X[2] / (X[0] + sPAR[5]))))));
    F[2]=((ACC[1] * ((1.0 - X[2]) / (1.0 + (sPAR[2] - X[2])))) - (sPAR[7] * (X[2] / (sPAR[3] + X[2]))));
    F[1]=(((1.0 - X[1]) * (ACC[0] / (1.0 + (sPAR[0] - X[1])))) - (X[1] * (sPAR[6] / (sPAR[1] + X[1]))));

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
    ACC[0]=0.0; //V1
    ACC[1]=0.0; //V3
    sPAR[0]=0.005; //K1
    sPAR[1]=0.005; //K2
    sPAR[2]=0.005; //K3
    sPAR[3]=0.005; //K4
    sPAR[4]=0.5; //Kc
    sPAR[5]=0.02; //Kd
    sPAR[6]=1.5; //V2
    sPAR[7]=0.5; //V4
    sPAR[8]=3.0; //VM1
    sPAR[9]=1.0; //VM3
    sPAR[10]=0.01; //kd
    sPAR[11]=0.25; //vd
    sPAR[12]=0.025; //vi
    X[0]=0.0; //C
    X[1]=0.0; //M
    X[2]=0.01; //X

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
