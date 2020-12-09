
#ifndef BIOMD008_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD008_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[1]=(X[1] * sPAR[8]);
    ACC[0]=(X[0] * (sPAR[6] / (X[0] + sPAR[5])));
    F[4]=((sPAR[10] * (X[0] * X[3])) + (X[4] * (((-(sPAR[12])) * (sPAR[13] + sPAR[15])) - sPAR[11])));
    F[3]=((sPAR[11] * X[4]) + ((sPAR[12] * (sPAR[15] * X[4])) + (sPAR[17] + (((-(sPAR[10])) * (X[0] * X[3])) - (sPAR[13] * X[3])))));
    F[0]=(sPAR[16] + ((sPAR[11] * X[4]) + ((sPAR[12] * (sPAR[13] * X[4])) + ((X[0] * ((sPAR[14] * (X[2] / (X[0] + sPAR[4]))) - sPAR[15])) - (sPAR[10] * (X[0] * X[3]))))));
    F[2]=((ACC[1] * ((1.0 - X[2]) / (1.0 + (sPAR[2] - X[2])))) - (sPAR[9] * (X[2] / (sPAR[3] + X[2]))));
    F[1]=(((1.0 - X[1]) * (ACC[0] / (1.0 + (sPAR[0] - X[1])))) - (X[1] * (sPAR[7] / (sPAR[1] + X[1]))));

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
    sPAR[0]=0.1; //K1
    sPAR[1]=0.25; //K2
    sPAR[2]=0.2; //K3
    sPAR[3]=0.1; //K4
    sPAR[4]=0.02; //K5
    sPAR[5]=0.3; //K6
    sPAR[6]=0.75; //V1p
    sPAR[7]=0.1; //V2
    sPAR[8]=0.3; //V3p
    sPAR[9]=0.1; //V4
    sPAR[10]=0.05; //a1
    sPAR[11]=0.05; //a2
    sPAR[12]=0.1; //alpha
    sPAR[13]=0.05; //d1
    sPAR[14]=0.5; //k1
    sPAR[15]=0.02; //kd
    sPAR[16]=0.1; //vi
    sPAR[17]=0.2; //vs
    X[0]=0.0; //C
    X[1]=0.0; //M
    X[2]=0.0; //X
    X[3]=1.0; //Y
    X[4]=1.0; //Z

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
