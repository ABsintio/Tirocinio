
#ifndef BIOMD500_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD500_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[0]=(X[2] + (X[3] + (X[7] + (X[8] + (X[4] + (X[10] + (X[11] + (X[9] + X[12]))))))));
    F[12]=(function_4_DNA53(X[9],X[12],100.0,60000.0,1.0) + function_4_DNA54(X[11],X[12],100.0,60000.0,1.0));
    F[9]=(function_4_DNA51(X[8],X[9],100.0,60000.0,1.0) - function_4_DNA53(X[9],X[12],100.0,60000.0,1.0));
    F[11]=(function_4_DNA52(X[8],X[11],100.0,60000.0,1.0) - function_4_DNA54(X[11],X[12],100.0,60000.0,1.0));
    F[4]=function_4_DNA50(X[3],X[4],100.0,60000.0,1.0);
    F[10]=function_4_DNA49(X[7],X[10],100.0,60000.0,1.0);
    F[8]=(function_4_DNA10(X[7],X[8],20000.0,20000000000.0,X[13],1.0) + (function_4_DNA11(X[6],X[8],100.0,20000000000.0,X[13],1.0) + (function_4_DNA12(X[3],X[8],20000.0,20000000000.0,X[13],1.0) + ((-(function_4_DNA51(X[8],X[9],100.0,60000.0,1.0))) - function_4_DNA52(X[8],X[11],100.0,60000.0,1.0)))));
    F[3]=(function_4_DNA7(X[2],X[3],20000.0,20000000000.0,X[13],1.0) + (function_4_DNA9(X[1],X[3],100.0,20000000000.0,X[13],1.0) + ((-(function_4_DNA12(X[3],X[8],20000.0,20000000000.0,X[13],1.0))) - function_4_DNA50(X[3],X[4],100.0,60000.0,1.0))));
    F[6]=(function_4_DNA5(X[5],X[6],20000.0,20000000000.0,X[13],1.0) + (function_4_DNA8(X[1],X[6],20000.0,20000000000.0,X[13],1.0) - function_4_DNA11(X[6],X[8],100.0,20000000000.0,X[13],1.0)));
    F[7]=(function_4_DNA4(X[5],X[7],100.0,20000000000.0,X[13],1.0) + (function_4_DNA6(X[2],X[7],20000.0,20000000000.0,X[13],1.0) + ((-(function_4_DNA10(X[7],X[8],20000.0,20000000000.0,X[13],1.0))) - function_4_DNA49(X[7],X[10],100.0,60000.0,1.0))));
    F[1]=(function_4_DNA3(X[0],X[1],20000.0,20000000000.0,X[13],1.0) + ((-(function_4_DNA8(X[1],X[6],20000.0,20000000000.0,X[13],1.0))) - function_4_DNA9(X[1],X[3],100.0,20000000000.0,X[13],1.0)));
    F[2]=(function_4_DNA2(X[0],X[2],100.0,20000000000.0,X[13],1.0) + ((-(function_4_DNA6(X[2],X[7],20000.0,20000000000.0,X[13],1.0))) - function_4_DNA7(X[2],X[3],20000.0,20000000000.0,X[13],1.0)));
    F[5]=(function_4_DNA1(X[0],X[5],20000.0,20000000000.0,X[13],1.0) + ((-(function_4_DNA4(X[5],X[7],100.0,20000000000.0,X[13],1.0))) - function_4_DNA5(X[5],X[6],20000.0,20000000000.0,X[13],1.0)));
    F[0]=(((-(function_4_DNA1(X[0],X[5],20000.0,20000000000.0,X[13],1.0))) - function_4_DNA2(X[0],X[2],100.0,20000000000.0,X[13],1.0)) - function_4_DNA3(X[0],X[1],20000.0,20000000000.0,X[13],1.0));
    F[13]=((((((((((((-(function_4_DNA12(X[3],X[8],20000.0,20000000000.0,X[13],1.0))) - function_4_DNA1(X[0],X[5],20000.0,20000000000.0,X[13],1.0)) - function_4_DNA10(X[7],X[8],20000.0,20000000000.0,X[13],1.0)) - function_4_DNA8(X[1],X[6],20000.0,20000000000.0,X[13],1.0)) - function_4_DNA6(X[2],X[7],20000.0,20000000000.0,X[13],1.0)) - function_4_DNA4(X[5],X[7],100.0,20000000000.0,X[13],1.0)) - function_4_DNA3(X[0],X[1],20000.0,20000000000.0,X[13],1.0)) - function_4_DNA5(X[5],X[6],20000.0,20000000000.0,X[13],1.0)) - function_4_DNA7(X[2],X[3],20000.0,20000000000.0,X[13],1.0)) - function_4_DNA9(X[1],X[3],100.0,20000000000.0,X[13],1.0)) - function_4_DNA2(X[0],X[2],100.0,20000000000.0,X[13],1.0)) - function_4_DNA11(X[6],X[8],100.0,20000000000.0,X[13],1.0));

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
    ACC[0]=0.0; //parameter_1
    X[0]=1e-10; //DNA_000
    X[1]=0.0; //DNA_001
    X[2]=0.0; //DNA_010
    X[3]=0.0; //DNA_011
    X[4]=0.0; //DNA_01B1
    X[5]=0.0; //DNA_100
    X[6]=0.0; //DNA_101
    X[7]=0.0; //DNA_110
    X[8]=0.0; //DNA_111
    X[9]=0.0; //DNA_11B1
    X[10]=0.0; //DNA_1B10
    X[11]=0.0; //DNA_1B11
    X[12]=0.0; //DNA_1B1B1
    X[13]=1e-10; //S1

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
