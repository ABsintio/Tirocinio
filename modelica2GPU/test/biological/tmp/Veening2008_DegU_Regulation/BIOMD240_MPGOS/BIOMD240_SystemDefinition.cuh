
#ifndef BIOMD240_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD240_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[1]=(sPAR[18] / sPAR[19]);
    ACC[2]=(sPAR[19] * sPAR[17]);
    ACC[0]=(X[1] + (X[2] + (2.0 * X[3])));
    F[2]=((2.0 * (sPAR[11] * X[3])) + ((ACC[2] * X[1]) + ((-2.0 * (sPAR[10] * pow(X[2],2.0))) + (X[2] * (((-(sPAR[12])) * sPAR[20]) - ACC[1])))));
    F[1]=((ACC[1] * X[2]) + ((sPAR[16] * (X[5] * sPAR[20])) + (X[1] * (((-(sPAR[12])) * sPAR[20]) - ACC[2]))));
    F[0]=((sPAR[15] * (X[4] * sPAR[20])) - (sPAR[12] * X[0]));
    F[3]=((sPAR[10] * pow(X[2],2.0)) - (X[3] * (sPAR[11] + (sPAR[12] * sPAR[20]))));
    F[4]=((sPAR[7] * (((sPAR[3] * ((1.0 + (X[3] * (sPAR[20] / sPAR[5]))) / (1.0 + ((X[3] * (sPAR[20] / sPAR[5])) + (pow((X[3] * (sPAR[20] / sPAR[5])),2.0) + (sPAR[8] / sPAR[6])))))) + (sPAR[2] * (pow((X[3] * (sPAR[20] / sPAR[5])),2.0) / (1.0 + ((X[3] * (sPAR[20] / sPAR[5])) + (pow((X[3] * (sPAR[20] / sPAR[5])),2.0) + (sPAR[8] / sPAR[6]))))))) / (sPAR[8] + sPAR[7]))) - (sPAR[14] * X[4]));
    F[5]=((sPAR[1] * (sPAR[4] / ((X[3] * sPAR[20]) + sPAR[4]))) + ((sPAR[0] * (X[3] * (sPAR[20] / ((X[3] * sPAR[20]) + sPAR[4])))) - (sPAR[14] * X[5])));

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
    ACC[0]=0.0; //DegU_Total
    ACC[1]=0.0; //kdephos
    ACC[2]=0.0; //kphos
    sPAR[0]=0.048; //Imax
    sPAR[1]=0.004; //Io
    sPAR[2]=0.4; //Irmax
    sPAR[3]=0.02; //Iro
    sPAR[4]=7.0; //K
    sPAR[5]=12.0; //Kdim
    sPAR[6]=7.0; //Kr
    sPAR[7]=7.0; //Kr1
    sPAR[8]=7.0; //R
    sPAR[9]=1.0; //V
    sPAR[10]=0.025; //ka
    sPAR[11]=0.1; //kd
    sPAR[12]=0.0004; //kdeg
    sPAR[13]=0.0001; //kdegA
    sPAR[14]=0.01; //kdegm
    sPAR[15]=0.04; //ksyn
    sPAR[16]=0.04; //ksyn1
    sPAR[17]=0.15; //p
    sPAR[18]=0.004; //q
    sPAR[19]=0.026666667; //ratio
    sPAR[20]=1.0; //univ
    X[0]=0.0; //AprE
    X[1]=10.0; //DegU
    X[2]=0.0; //DegUP
    X[3]=0.0; //Dim
    X[4]=0.0; //mAprE
    X[5]=0.0; //mDegU

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
