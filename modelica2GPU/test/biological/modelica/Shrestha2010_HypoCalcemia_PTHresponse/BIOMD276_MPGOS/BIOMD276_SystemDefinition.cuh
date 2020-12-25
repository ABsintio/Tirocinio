
#ifndef BIOMD276_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD276_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[4]=((sPAR[9] * sPAR[16]) + (sPAR[8] * sPAR[13]));
    ACC[0]=(sPAR[8] * (sPAR[9] * (sPAR[14] / (ACC[4] - (sPAR[9] * sPAR[14])))));
    ACC[1]=(sPAR[8] * (sPAR[9] * (sPAR[15] / (ACC[4] - (sPAR[9] * sPAR[15])))));
    ACC[2]=piecewise(sPAR[0], T < sPAR[12], sPAR[0] - sPAR[2] * (1 - exp(-sPAR[6] * (T - sPAR[12]))));
    ACC[6]=((sPAR[10] / (1.0 + pow(2.718281828459045,(sPAR[7] * (ACC[2] - sPAR[5]))))) + sPAR[11]);
    ACC[3]=(sPAR[1] * pow((((sPAR[9] * sPAR[16]) - (sPAR[13] * ACC[1])) / ((sPAR[13] * ACC[0]) - (sPAR[9] * sPAR[16]))),(1.0 / ACC[6])));
    ACC[5]=(((ACC[0] - ACC[1]) / (1.0 + pow((ACC[2] / ACC[3]),ACC[6]))) + ACC[1]);
    F[0]=(ACC[4] + (((-(ACC[5])) - sPAR[8]) * X[0]));
    F[1]=((ACC[5] * X[0]) - (sPAR[9] * X[1]));

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
    ACC[0]=0.04945; //A
    ACC[1]=0.00049; //B
    ACC[2]=0.0; //Ca
    ACC[3]=1.2159; //S
    ACC[4]=9.8436755; //k
    ACC[5]=170.0; //lambda_Ca
    ACC[6]=170.0; //m_Ca
    sPAR[0]=1.255; //Ca0
    sPAR[1]=1.255; //Ca0_baseline
    sPAR[2]=0.1817; //Ca1
    sPAR[3]=1.0; //PTG_pool
    sPAR[4]=1.0; //Plasma_pool
    sPAR[5]=1.2162; //R
    sPAR[6]=0.0442; //alpha
    sPAR[7]=1000000.0; //beta
    sPAR[8]=0.0125; //lambda_1
    sPAR[9]=0.5595; //lambda_2
    sPAR[10]=112.52; //m1
    sPAR[11]=15.0; //m2
    sPAR[12]=575.0; //t0
    sPAR[13]=490.78; //x1_n
    sPAR[14]=14.043; //x2_max
    sPAR[15]=0.6697; //x2_min
    sPAR[16]=6.629; //x2_n
    X[0]=0.0; //x1
    X[1]=0.0; //x2

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
