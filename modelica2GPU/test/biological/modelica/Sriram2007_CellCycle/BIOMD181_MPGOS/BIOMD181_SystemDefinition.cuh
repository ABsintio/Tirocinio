
#ifndef BIOMD181_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD181_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[2]=(sPAR[0] * ((sPAR[20] * (pow(X[5],sPAR[19]) / (pow(sPAR[4],sPAR[19]) + (pow(X[5],sPAR[19]) + pow(X[0],sPAR[19]))))) - (sPAR[15] * X[2])));
    F[1]=(sPAR[0] * ((sPAR[21] * (pow(X[4],sPAR[19]) / (pow(sPAR[5],sPAR[19]) + (pow(X[4],sPAR[19]) + pow(X[2],sPAR[19]))))) - (sPAR[14] * X[1])));
    F[0]=(sPAR[0] * ((sPAR[22] * (pow(X[3],sPAR[19]) / (pow(sPAR[6],sPAR[19]) + (pow(X[3],sPAR[19]) + pow(X[1],sPAR[19]))))) - (sPAR[13] * X[0])));
    F[5]=(sPAR[0] * (sPAR[3] + ((sPAR[25] * (pow(X[4],sPAR[19]) / (pow(sPAR[18],sPAR[19]) + pow(X[4],sPAR[19])))) + ((sPAR[9] * X[2]) - (sPAR[12] * X[5])))));
    F[4]=(sPAR[0] * (sPAR[2] + ((sPAR[24] * (pow(X[3],sPAR[19]) / (pow(sPAR[17],sPAR[19]) + pow(X[3],sPAR[19])))) + ((sPAR[8] * X[1]) - (sPAR[11] * X[4])))));
    F[3]=(sPAR[0] * (sPAR[1] + ((sPAR[23] * (pow(X[5],sPAR[19]) / (pow(sPAR[16],sPAR[19]) + pow(X[5],sPAR[19])))) + ((sPAR[7] * X[0]) - (sPAR[10] * X[3])))));

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
    sPAR[0]=1.0; //compartment
    sPAR[1]=0.9; //j1
    sPAR[2]=0.5; //j2
    sPAR[3]=0.2; //j3
    sPAR[4]=10.0; //k100
    sPAR[5]=10.0; //k110
    sPAR[6]=10.0; //k120
    sPAR[7]=0.2; //kc1
    sPAR[8]=0.22; //kc2
    sPAR[9]=0.6; //kc3
    sPAR[10]=0.8; //kd1
    sPAR[11]=0.9; //kd2
    sPAR[12]=0.8; //kd3
    sPAR[13]=0.16; //kd4
    sPAR[14]=0.16; //kd5
    sPAR[15]=0.16; //kd6
    sPAR[16]=5.0; //km1
    sPAR[17]=5.0; //km2
    sPAR[18]=5.0; //km3
    sPAR[19]=2.0; //n
    sPAR[20]=15.0; //v10
    sPAR[21]=15.0; //v11
    sPAR[22]=15.0; //v12
    sPAR[23]=6.0; //vd1
    sPAR[24]=1.052; //vd2
    sPAR[25]=3.0; //vd3
    X[0]=0.0; //C1
    X[1]=0.0; //C2
    X[2]=0.0; //C3
    X[3]=6.0; //T1
    X[4]=5.0; //T2
    X[5]=1.0; //T3

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
