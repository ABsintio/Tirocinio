
#ifndef BIOMD440_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD440_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[2]=0.0;
    F[10]=0.0;
    F[9]=0.0;
    F[8]=(function_4_8_1(20.0,0.1,X[5],X[6],X[7]) - function_4_9_1(200.0,0.1,X[2],X[7],X[8]));
    F[7]=(function_4_7_1(20.0,0.1,X[5],X[6],X[7]) + (function_4_9_1(200.0,0.1,X[2],X[7],X[8]) + ((-(function_4_8_1(20.0,0.1,X[5],X[6],X[7]))) - function_4_10_1(200.0,0.1,X[2],X[7],X[8]))));
    F[6]=(function_4_10_1(200.0,0.1,X[2],X[7],X[8]) - function_4_7_1(20.0,0.1,X[5],X[6],X[7]));
    F[5]=(function_4_4_1(10.0,20.0,500.0,0.1,X[1],X[3],X[4],X[8]) - function_4_5_1(200.0,0.1,X[4],X[5],X[10]));
    F[4]=(function_4_3_1(10.0,20.0,500.0,0.1,X[1],X[3],X[4],X[8]) + (function_4_5_1(200.0,0.1,X[4],X[5],X[10]) + ((-(function_4_4_1(10.0,20.0,500.0,0.1,X[1],X[3],X[4],X[8]))) - function_4_6_1(200.0,0.1,X[4],X[5],X[10]))));
    F[3]=(function_4_6_1(200.0,0.1,X[4],X[5],X[10]) - function_4_3_1(10.0,20.0,500.0,0.1,X[1],X[3],X[4],X[8]));
    F[1]=(function_4_1_1(20.0,9.0,2.5,X[0],X[8]) - function_4_2_1(200.0,0.025,X[1],X[9]));
    F[0]=(function_4_2_1(200.0,0.025,X[1],X[9]) - function_4_1_1(20.0,9.0,2.5,X[0],X[8]));

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
    X[0]=999.999903688753; //species_0
    X[1]=0.0; //species_1
    X[2]=499.999951844377; //species_10
    X[3]=3999.99961475501; //species_2
    X[4]=0.0; //species_3
    X[5]=0.0; //species_4
    X[6]=999.999903688753; //species_5
    X[7]=0.0; //species_6
    X[8]=0.0; //species_7
    X[9]=99.9999903688752; //species_8
    X[10]=499.999951844377; //species_9

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
