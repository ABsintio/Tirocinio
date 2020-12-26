
#ifndef BIOMD138_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD138_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[5]=(sPAR[7] * (X[3] * (X[0] - sPAR[23])));
    ACC[0]=(pow(X[1],2.0) / (pow(X[1],2.0) + pow(sPAR[10],2.0)));
    ACC[6]=(sPAR[8] * (ACC[0] * (X[0] - sPAR[23])));
    ACC[8]=(1.0 / (1.0 + pow(2.718281828459045,((sPAR[24] - X[0]) / sPAR[15]))));
    ACC[3]=(sPAR[5] * (ACC[8] * (X[0] - sPAR[20])));
    ACC[9]=(1.0 / (1.0 + pow(2.718281828459045,((sPAR[21] - X[0]) / sPAR[13]))));
    ACC[2]=(sPAR[6] * (ACC[9] * (X[0] - sPAR[23])));
    ACC[10]=(1.0 / (1.0 + pow(2.718281828459045,((X[0] - sPAR[22]) / sPAR[14]))));
    ACC[7]=(1.0 / (1.0 + pow(2.718281828459045,((sPAR[19] - X[0]) / sPAR[12]))));
    ACC[1]=(sPAR[4] * (ACC[7] * (X[2] * (X[0] - sPAR[23]))));
    ACC[4]=(ACC[6] + (ACC[2] + (ACC[5] + ACC[1])));
    ACC[11]=(1.0 / (1.0 + pow(2.718281828459045,((sPAR[25] - X[0]) / sPAR[16]))));
    F[1]=((-(sPAR[3])) * (((sPAR[1] * ACC[3]) + (sPAR[9] * X[1])) * sPAR[2]));
    F[2]=((ACC[10] - X[2]) / sPAR[17]);
    F[0]=(((-(ACC[3])) - ACC[4]) / sPAR[0]);
    F[3]=(sPAR[11] * ((ACC[11] - X[3]) / sPAR[18]));

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
    ACC[0]=0.0; //cinf
    ACC[1]=0.0; //ia
    ACC[2]=0.0; //ibk
    ACC[3]=0.0; //ica
    ACC[4]=0.0; //ik
    ACC[5]=0.0; //ikdr
    ACC[6]=0.0; //isk
    ACC[7]=0.0; //phia
    ACC[8]=0.0; //phical
    ACC[9]=0.0; //phif
    ACC[10]=0.0; //phih
    ACC[11]=0.0; //phik
    sPAR[0]=10.0; //Cm
    sPAR[1]=0.0015; //alpha
    sPAR[2]=1.0; //cell
    sPAR[3]=0.01; //ff
    sPAR[4]=0.0; //ga
    sPAR[5]=2.0; //gcal
    sPAR[6]=0.0; //gf
    sPAR[7]=4.0; //gk
    sPAR[8]=1.7; //gsk
    sPAR[9]=0.16; //kc
    sPAR[10]=0.5; //ks
    sPAR[11]=0.7; //lambda
    sPAR[12]=10.0; //sa
    sPAR[13]=5.6; //sf
    sPAR[14]=5.0; //sh
    sPAR[15]=12.0; //sm
    sPAR[16]=10.0; //sn
    sPAR[17]=20.0; //tauh
    sPAR[18]=30.0; //taun
    sPAR[19]=-20.0; //va
    sPAR[20]=50.0; //vca
    sPAR[21]=-20.0; //vf
    sPAR[22]=-60.0; //vh
    sPAR[23]=-75.0; //vk
    sPAR[24]=-20.0; //vm
    sPAR[25]=-5.0; //vn
    X[0]=-60.0; //V
    X[1]=0.3; //c
    X[2]=0.1; //h
    X[3]=0.1; //n

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
