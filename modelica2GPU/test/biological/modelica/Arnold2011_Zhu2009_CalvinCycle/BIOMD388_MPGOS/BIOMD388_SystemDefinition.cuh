
#ifndef BIOMD388_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD388_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[0]=(15.0 + ((-2.0 * (X[6] + (X[2] + X[1]))) + ((((-(X[0])) - X[5]) - X[4]) - X[3])));
    F[1]=0.0;
    F[0]=0.0;
    F[5]=(sPAR[16] * ((0.6 * function_1(X[3],sPAR[6],sPAR[11])) - function_2(sPAR[15],X[5],X[1],sPAR[1],sPAR[3])));
    F[3]=(sPAR[16] * (function_1(X[2],sPAR[5],sPAR[10]) + ((-(function_1(X[3],sPAR[6],sPAR[11]))) - function_1(X[3],sPAR[8],sPAR[13]))));
    F[2]=(sPAR[16] * (function_2(sPAR[14],X[4],X[1],sPAR[0],sPAR[2]) - function_1(X[2],sPAR[5],sPAR[10])));
    F[4]=(sPAR[16] * ((2.0 * function_1(X[6],sPAR[4],sPAR[9])) + ((-(function_2(sPAR[14],X[4],X[1],sPAR[0],sPAR[2]))) - function_1(X[4],sPAR[7],sPAR[12]))));
    F[6]=(sPAR[16] * (function_2(sPAR[15],X[5],X[1],sPAR[1],sPAR[3]) - function_1(X[6],sPAR[4],sPAR[9])));

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
    ACC[0]=0.0; //Pi
    sPAR[0]=0.24; //K1_1
    sPAR[1]=0.15; //K1_4
    sPAR[2]=0.39; //K2_1
    sPAR[3]=0.059; //K2_4
    sPAR[4]=1.0; //Km_0
    sPAR[5]=0.5; //Km_2
    sPAR[6]=0.84; //Km_3
    sPAR[7]=0.75; //Km_5
    sPAR[8]=5.0; //Km_6
    sPAR[9]=3.78; //V_0
    sPAR[10]=5.04; //V_2
    sPAR[11]=3.05; //V_3
    sPAR[12]=3.0; //V_5
    sPAR[13]=0.1; //V_6
    sPAR[14]=11.75; //Vm_1
    sPAR[15]=8.0; //Vm_4
    sPAR[16]=1.0; //chloroplast
    X[0]=0.82; //ADP
    X[1]=0.68; //ATP
    X[2]=0.0011; //DPGA
    X[3]=0.02; //GAP
    X[4]=2.4; //PGA
    X[5]=0.0501; //Ru5P
    X[6]=2.0; //RuBP

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
