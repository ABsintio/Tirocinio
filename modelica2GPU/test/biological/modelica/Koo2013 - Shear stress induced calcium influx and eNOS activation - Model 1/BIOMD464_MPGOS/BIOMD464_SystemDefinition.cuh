
#ifndef BIOMD464_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD464_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[0]=0.0;
    F[9]=0.0;
    F[2]=-3000.0;
    F[4]=1.0;
    F[1]=(9165.0 * (X[7] / (321.0 + X[7])));
    F[13]=((2380.0 * (pow(X[7],4.0) / (20851360000.0 + pow(X[7],4.0)))) + (815.0 * (pow(X[7],2.0) / (6400.0 + pow(X[7],2.0)))));
    F[12]=X[10];
    F[11]=(-0.0005999999999999999 * (44000.0 + (-22000.0 * (pow(2.718281828459045,(-0.01515151515151515 * X[4])) + (pow(2.718281828459045,(-100.0 * X[4])) + (1.00030307622367 * (pow(2.718281828459045,(-0.01515151515151515 * X[4])) - pow(2.718281828459045,(-100.0 * X[4])))))))));
    F[10]=((0.0005999999999999999 * (44000.0 + (-22000.0 * (pow(2.718281828459045,(-0.01515151515151515 * X[4])) + (pow(2.718281828459045,(-100.0 * X[4])) + (1.00030307622367 * (pow(2.718281828459045,(-0.01515151515151515 * X[4])) - pow(2.718281828459045,(-100.0 * X[4]))))))))) - X[10]);
    F[8]=((-150.0 * X[8]) + (0.05 * (X[7] * (120000.0 - X[8]))));
    F[7]=(3000.0 + ((150.0 * X[8]) + ((-0.05 * (X[7] * (120000.0 - X[8]))) + ((3.32 * (pow((X[10] / (200.0 + X[10])),3.0) * X[6])) + ((-2500.0 * pow((X[7] / (150.0 + X[7])),2.0)) + ((5e-11 * pow(X[6],2.0)) + ((-2380.0 * (pow(X[7],4.0) / (20851360000.0 + pow(X[7],4.0)))) + ((-9165.0 * (X[7] / (321.0 + X[7]))) + (-815.0 * (pow(X[7],2.0) / (6400.0 + pow(X[7],2.0))))))))))));
    F[6]=((2500.0 * pow((X[7] / (150.0 + X[7])),2.0)) + ((-5e-11 * pow(X[6],2.0)) + (-3.32 * (pow((X[10] / (200.0 + X[10])),3.0) * X[6]))));
    F[5]=-1.0;
    F[3]=0.0;

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
    X[0]=1500000.0; //s1
    X[1]=0.0; //s10
    X[2]=0.0; //s11
    X[3]=0.0; //s119
    X[4]=0.0; //s12
    X[5]=0.0; //s13
    X[6]=2830000.0; //s2
    X[7]=117.2; //s3
    X[8]=3870.0; //s4
    X[9]=0.0; //s5
    X[10]=0.0; //s6
    X[11]=0.0; //s7
    X[12]=0.0; //s8
    X[13]=0.0; //s9

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
