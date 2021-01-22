
#ifndef BIOMD465_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD465_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[8]=-1.0;
    F[15]=((0.045 * (X[4] * X[3])) + ((-0.089 * X[15]) + ((0.037 * (X[13] * (X[2] / (8800.0 + X[13])))) + (-20.0 * (X[15] * (X[1] / (80000.0 + X[15])))))));
    F[14]=((20.0 * (X[13] * (X[11] / (80000.0 + X[13])))) + (-0.203 * (X[14] * (X[2] / (48000.0 + X[14])))));
    F[13]=((20.0 * (X[15] * (X[1] / (80000.0 + X[15])))) + ((0.04 * (X[14] * (X[2] / (48000.0 + X[14])))) + (X[13] * ((-20.0 * (X[11] / (80000.0 + X[13]))) + (-0.037 * (X[2] / (8800.0 + X[13])))))));
    F[12]=((0.98 * X[1]) + (-0.0007 * (X[4] * X[12])));
    F[11]=0.0;
    F[10]=1.0;
    F[9]=(-0.907 * (pow(2.718281828459045,(1.0 - pow((0.06666666666666667 * X[10]),1.8))) * (pow(X[10],0.8) * (1.0 - pow((0.06666666666666667 * X[10]),1.8)))));
    F[7]=(0.907 * (pow(2.718281828459045,(1.0 - pow((0.06666666666666667 * X[10]),1.8))) * (pow(X[10],0.8) * (1.0 - pow((0.06666666666666667 * X[10]),1.8)))));
    F[6]=((7.5 * (X[4] * (X[5] / (80.90000000000001 + X[4])))) + (-0.2 * (X[6] * (X[7] / (6170.0 + X[6])))));
    F[5]=0.0;
    F[4]=((0.2 * (X[6] * (X[7] / (6170.0 + X[6])))) + ((0.163 * (X[14] * (X[2] / (48000.0 + X[14])))) + ((-7.5 * (X[4] * (X[5] / (80.90000000000001 + X[4])))) + ((-0.045 * (X[4] * X[3])) + (0.089 * X[15])))));
    F[3]=((0.163 * (X[14] * (X[2] / (48000.0 + X[14])))) + ((-0.045 * (X[4] * X[3])) + (0.089 * X[15])));
    F[2]=0.0;
    F[1]=((0.0007 * (X[4] * X[12])) + (-0.98 * X[1]));
    F[0]=0.0;

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
    X[0]=0.0; //s119
    X[1]=0.246; //s14
    X[2]=150.0; //s15
    X[3]=167.616; //s16
    X[4]=0.345; //s17
    X[5]=0.1; //s18
    X[6]=6967.271; //s19
    X[7]=0.03; //s20
    X[8]=0.0; //s21
    X[9]=99.97; //s22
    X[10]=0.0; //s23
    X[11]=3.0; //s24
    X[12]=999.754; //s25
    X[13]=1.457; //s26
    X[14]=1.723; //s27
    X[15]=29.203; //s28

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
