
#ifndef BIOMD300_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD300_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[0]=(sPAR[11] * sPAR[2]);
    ACC[1]=(1.0 / sPAR[3]);
    ACC[11]=(X[0] - X[2]);
    ACC[9]=(ACC[11] / (sPAR[9] + X[0]));
    ACC[12]=(X[4] - X[3]);
    ACC[3]=(sPAR[6] * ((sPAR[7] + (X[3] + (sPAR[10] * ACC[12]))) / sPAR[7]));
    ACC[13]=0.5 * (X[2] - X[5] - ACC[3] + sqrt((pow((ACC[3] + (X[5] - X[2])),2.0) + (4.0 * (X[2] * ACC[3])))));
    ACC[4]=(sPAR[7] * ((sPAR[6] + ACC[13]) / sPAR[6]));
    ACC[6]=((sPAR[6] + ACC[13]) / (ACC[3] + ACC[13]));
    ACC[5]=0.5 * (X[0] - X[6] - sPAR[8] + sqrt((pow((sPAR[8] + (X[6] - X[0])),2.0) + (4.0 * (X[0] * sPAR[8])))));
    ACC[7]=(X[2] / (sPAR[9] + X[0]));
    ACC[8]=(X[0] / (sPAR[9] + X[0]));
    ACC[10]=(X[3] / X[4]);
    ACC[2]=(X[4] / sPAR[3]);
    F[0]=(sPAR[0] * (function_1(sPAR[5]) + (((-(sPAR[4])) * X[0]) - function_2(sPAR[11],X[6],X[1],sPAR[8],X[0],ACC[5]))));
    F[2]=(sPAR[0] * (function_1(sPAR[5]) + ((((-(sPAR[4])) * X[2]) - function_3(X[2],sPAR[11],X[6],X[1],sPAR[8],ACC[5])) - vFH(X[5],X[1],sPAR[1],X[2],ACC[3],ACC[13],ACC[0]))));
    F[3]=(sPAR[0] * (function_1(ACC[2]) + (((-(ACC[1])) * X[3]) - vFA(X[5],X[1],sPAR[1],X[3],sPAR[10],X[4],ACC[4],ACC[0]))));
    F[4]=0.0;
    F[5]=0.0;
    F[6]=0.0;
    F[1]=0.0;

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
    ACC[0]=500.0; //parameter_13
    ACC[1]=0.2; //parameter_14
    ACC[2]=20.0; //parameter_16
    ACC[3]=101.0; //parameter_7
    ACC[4]=1.0; //parameter_9
    ACC[5]=0.0; //species_10
    ACC[6]=0.009900990099009901; //species_12
    ACC[7]=0.0; //species_13
    ACC[8]=0.0; //species_14
    ACC[9]=0.0; //species_15
    ACC[10]=0.0; //species_16
    ACC[11]=0.0; //species_4
    ACC[12]=0.0; //species_6
    ACC[13]=0.0; //species_9
    sPAR[0]=1.0; //compartment_1
    sPAR[1]=0.33; //parameter_1
    sPAR[2]=1.0; //parameter_10
    sPAR[3]=5.0; //parameter_11
    sPAR[4]=1.0; //parameter_17
    sPAR[5]=1.0; //parameter_18
    sPAR[6]=1.0; //parameter_2
    sPAR[7]=1.0; //parameter_3
    sPAR[8]=1.0; //parameter_4
    sPAR[9]=0.3; //parameter_5
    sPAR[10]=0.0; //parameter_6
    sPAR[11]=500.0; //parameter_8
    X[0]=0.0; //species_1
    X[1]=0.0; //species_11
    X[2]=0.0; //species_2
    X[3]=100.0; //species_3
    X[4]=100.0; //species_5
    X[5]=1.0; //species_7
    X[6]=0.2; //species_8

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
