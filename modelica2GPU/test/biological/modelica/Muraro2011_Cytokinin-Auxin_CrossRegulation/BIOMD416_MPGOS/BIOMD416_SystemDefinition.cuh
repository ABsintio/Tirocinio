
#ifndef BIOMD416_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD416_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[10]=(10.0 * (X[8] / (1.0 + (10.0 * X[8]))));
    ACC[7]=(10.0 * (X[6] / (1.0 + (10.0 * (X[5] + X[6])))));
    ACC[3]=(1.0 + (((-(X[0])) - X[5]) - X[6]));
    ACC[2]=(1.0 - (X[0] + ACC[3]));
    ACC[1]=(2.0 - X[6]);
    ACC[0]=(1.0 + ((-2.0 * X[1]) - X[2]));
    ACC[4]=(10.0 * (ACC[0] / (1.0 + ((10.0 * ACC[0]) + ((100.0 * X[1]) + (10.0 * (X[2] + ((ACC[0] * X[16]) + (pow(ACC[0],2.0) + X[6])))))))));
    ACC[5]=(((100.0 * X[1]) + (10.0 * pow(ACC[0],2.0))) / (1.0 + ((10.0 * ACC[0]) + ((100.0 * X[1]) + (10.0 * (X[2] + ((ACC[0] * X[16]) + (pow(ACC[0],2.0) + X[6]))))))));
    ACC[6]=(10.0 * (X[6] / (1.0 + ((10.0 * ACC[0]) + ((100.0 * X[1]) + (10.0 * (X[2] + ((ACC[0] * X[16]) + (pow(ACC[0],2.0) + X[6])))))))));
    ACC[8]=(10.0 * (ACC[0] / (1.0 + ((10.0 * ACC[0]) + ((100.0 * X[1]) + (10.0 * (X[2] + ((ACC[0] * X[16]) + pow(ACC[0],2.0)))))))));
    ACC[9]=(((100.0 * X[1]) + (10.0 * pow(ACC[0],2.0))) / (1.0 + ((10.0 * ACC[0]) + ((100.0 * X[1]) + (10.0 * (X[2] + ((ACC[0] * X[16]) + pow(ACC[0],2.0))))))));
    ACC[11]=(1.0 - (X[11] + X[10]));
    F[13]=(100.0 * (X[12] - X[13]));
    F[8]=(100.0 * (X[7] - X[8]));
    F[19]=(100.0 * (X[18] - X[19]));
    F[17]=(100.0 * (X[10] - X[17]));
    F[10]=(100.0 * ((0.5 * (X[16] * X[11])) + (-1.1 * X[10])));
    F[3]=((100.0 * ACC[10]) - X[3]);
    F[12]=((2.0 * ACC[7]) - X[12]);
    F[0]=(100.0 * (ACC[3] - (X[0] * X[14])));
    F[14]=((0.1 * (1.0 - X[14])) + (-100.0 * ((X[0] * X[14]) - ACC[3])));
    F[5]=(100.0 * ((ACC[3] * X[4]) - (ACC[2] * X[5])));
    F[4]=(100.0 * (X[3] + ((ACC[2] * X[5]) + (((-(ACC[3])) * X[4]) - X[4]))));
    F[6]=(100.0 * ((ACC[3] * ACC[1]) - (ACC[2] * X[6])));
    F[15]=((100.0 * ((0.1 * ACC[4]) + (ACC[5] + (0.02 * ACC[6])))) - X[15]);
    F[18]=((100.0 * ((0.1 * ACC[8]) + ACC[9])) - X[18]);
    F[7]=((2.0 * ((0.1 * ACC[8]) + ACC[9])) - X[7]);
    F[16]=((100.0 * (X[15] + ((-0.5 * (X[16] * X[11])) + (0.1 * X[10])))) + (10.0 * (X[2] - (X[16] * ACC[0]))));
    F[2]=(10.0 * ((ACC[0] * X[16]) - X[2]));
    F[1]=(pow(ACC[0],2.0) - X[1]);
    F[11]=(100.0 * ((100.0 * (X[9] * ACC[11])) + ((1.1 * X[10]) + ((-0.5 * (X[11] * X[16])) - X[11]))));
    F[9]=((0.1 * (1.0 - X[9])) + (-1000.0 * ((100.0 * (X[9] * ACC[11])) - X[11])));

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
    ACC[0]=0.0; //ARF
    ACC[1]=0.0; //ARRBp
    ACC[2]=0.0; //CkAHK
    ACC[3]=0.0; //CkAHKph
    ACC[4]=0.0; //F1
    ACC[5]=0.0; //F2
    ACC[6]=0.0; //F3
    ACC[7]=0.0; //F4
    ACC[8]=0.0; //F5a
    ACC[9]=0.0; //F5b
    ACC[10]=0.0; //F6
    ACC[11]=0.0; //TIR1
    X[0]=1.0; //AHKph
    X[1]=0.0; //ARF2
    X[2]=0.0; //ARFIAA
    X[3]=0.0; //ARRAm
    X[4]=0.0; //ARRAp
    X[5]=0.0; //ARRAph
    X[6]=0.0; //ARRBph
    X[7]=0.0; //ARm
    X[8]=0.0; //ARp
    X[9]=1.0; //Aux
    X[10]=0.0; //AuxTIAA
    X[11]=0.0; //AuxTIR1
    X[12]=0.0; //CRm
    X[13]=0.0; //CRp
    X[14]=1.0; //Ck
    X[15]=0.0; //IAAm
    X[16]=0.0; //IAAp
    X[17]=0.0; //IAAs
    X[18]=0.0; //PINm
    X[19]=0.0; //PINp

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
