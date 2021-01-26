
#ifndef BIOMD528_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD528_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[4]=(0.0001 * ((X[2] + X[0]) / ((1.0 + (2600000.0 * X[6])) * (0.0043 + (X[2] + X[0])))));
    ACC[2]=1.0;
    ACC[1]=1.0;
    ACC[3]=(pow(T,5.0) / (7776.0 + pow(T,5.0)));
    ACC[0]=((1.0 + (0.3 * pow((10.0 * ACC[3]),1.0))) / (1.0 + pow((10.0 * ACC[3]),1.0)));
    F[12]=0.0;
    F[7]=((360.0 * X[9]) + (-0.04620981203732968 * X[7]));
    F[11]=(0.0001285073883446787 * (X[10] / (0.004 + X[10])));
    F[0]=(5.977087829985058e-05 * (X[1] / (0.002 + X[1])));
    F[2]=(5.977087829985058e-05 * (X[3] / (0.002 + X[3])));
    F[8]=((0.005 * (ACC[4] * (X[7] / (0.01 + X[7])))) + (-1.237762822428474 * X[8]));
    F[1]=((0.36 * (X[4] * ACC[2])) + (-0.3465735902799726 * X[1]));
    F[5]=((((0.00036 * X[8]) + (3.204e-07 * X[4])) * ACC[1]) + (-0.6931471805599453 * X[5]));
    F[3]=((((0.001 * ACC[0]) + (3.6e-08 * X[4])) * ACC[1]) + (-0.2772588722239781 * X[3]));
    F[6]=((((1e-07 * ACC[0]) + (0.0036 * X[8])) * ACC[1]) + (-1.506841696869446 * X[6]));
    F[4]=(360.0 * (ACC[0] * X[5]));
    F[10]=((((0.0001 * ACC[0]) + (0.001 * (X[11] / (0.0005999999999999999 + X[11])))) * ACC[1]) + (-0.3465735902799726 * X[10]));
    F[9]=((((1e-05 * ACC[0]) + (0.360085 * X[8])) * ACC[1]) + (-0.6931471805599453 * X[9]));

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
    ACC[0]=0.0; //IC1
    ACC[1]=0.0; //IC2
    ACC[2]=0.0; //IC2ifa
    ACC[3]=0.0; //NS
    ACC[4]=0.0; //TJ
    X[0]=0.0; //IFNa_env
    X[1]=0.0; //IFNa_mRNA
    X[2]=0.0; //IFNb_env
    X[3]=0.0; //IFNb_mRNA
    X[4]=0.0; //IRF7Pn
    X[5]=0.0; //IRF7m
    X[6]=0.0; //SOCS1m
    X[7]=0.1; //STAT
    X[8]=0.0; //STATP2n
    X[9]=0.0; //STATm
    X[10]=0.0; //TNFam
    X[11]=0.0; //TNFenv
    X[12]=0.0; //w

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
