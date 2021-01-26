
#ifndef BIOMD545_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD545_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[0]=((2.0 * (X[9] + X[1])) + X[4]);
    ACC[1]=((2.0 * X[9]) + (X[12] + X[10]));
    F[13]=0.0;
    F[3]=0.0;
    F[2]=((10.1285 * (X[0] * X[5])) + (-1.1999 * X[2]));
    F[5]=((-10.1285 * (X[0] * X[5])) + (1.1999 * X[2]));
    F[6]=0.0;
    F[7]=(1.3191 + (-1.246 * (((X[1] / (0.9735 + X[1])) + ((X[2] / (0.406 + X[2])) - (X[9] / (0.7537 + X[9])))) * X[7])));
    F[10]=((4.7207 * (X[12] * X[8])) + (-1.1016 * pow(X[10],2.0)));
    F[8]=((4.0526 * (1.0 + X[9])) + ((-0.2118 * X[8]) + ((1.1016 * pow(X[10],2.0)) + (-4.7207 * (X[12] * X[8])))));
    F[11]=((0.0043 * pow(X[12],2.0)) + ((0.5508 * pow(X[10],2.0)) + (-161.62 * X[11])));
    F[9]=((0.0372 * (pow(X[4],2.0) * pow(X[12],2.0))) + (-94.3524 * X[9]));
    F[12]=((323.24 * X[11]) + ((-0.0086 * pow(X[12],2.0)) + ((-0.07439999999999999 * (pow(X[4],2.0) * pow(X[12],2.0))) + ((94.3524 * X[9]) + (-4.7207 * (X[12] * X[8]))))));
    F[1]=((0.0611 * (pow(X[4],2.0) * X[0])) + (-50.6973 * X[1]));
    F[0]=((-0.0611 * (pow(X[4],2.0) * X[0])) + ((50.6973 * X[1]) + ((-10.1285 * (X[0] * X[5])) + (1.1999 * X[2]))));
    F[4]=((0.23 * (1.0 + (3.5 * (X[7] + X[6])))) + ((-0.4 * X[4]) + ((-0.07439999999999999 * (pow(X[4],2.0) * pow(X[12],2.0))) + ((94.3524 * X[9]) + ((-0.1222 * (pow(X[4],2.0) * X[0])) + (50.6973 * X[1]))))));

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
    ACC[0]=0.0; //COP1_Total
    ACC[1]=0.0; //UM_Total
    X[0]=10.0; //CD
    X[1]=2.0; //CDCS
    X[2]=0.0; //CDW
    X[3]=4.2; //COP1
    X[4]=0.2; //CS
    X[5]=20.0; //DWD
    X[6]=5.0; //FHY3
    X[7]=0.25; //HY5
    X[8]=0.0; //RUP
    X[9]=0.0; //UCS
    X[10]=0.0; //UR
    X[11]=20.0; //UVR8D
    X[12]=0.0; //UVR8M
    X[13]=0.0; //UVR8_M

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
