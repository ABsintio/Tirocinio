
#ifndef BIOMD113_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD113_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[0]=pow(X[3],sPAR[14]);
    ACC[1]=pow(sPAR[3],sPAR[14]); // Non viene inserita nell'XML
    ACC[2]=(X[4] * (pow(X[3],sPAR[14]) / (pow(sPAR[3],sPAR[14]) + pow(X[3],sPAR[14]))));
    F[4]=0.0;
    F[1]=0.0;
    F[2]=((sPAR[8] * (sPAR[6] * (pow(X[3],sPAR[12]) / (pow(sPAR[4],sPAR[12]) + pow(X[3],sPAR[12]))))) - (sPAR[15] * ((sPAR[7] * (pow(X[2],sPAR[11]) * (pow(X[3],sPAR[13]) / ((pow(sPAR[5],sPAR[11]) + pow(X[2],sPAR[11])) * (pow(sPAR[2],sPAR[13]) + pow(X[3],sPAR[13])))))) + (sPAR[10] * X[2]))));
    F[3]=((sPAR[8] * (sPAR[16] + sPAR[17])) + ((sPAR[15] * ((sPAR[7] * (pow(X[2],sPAR[11]) * (pow(X[3],sPAR[13]) / ((pow(sPAR[5],sPAR[11]) + pow(X[2],sPAR[11])) * (pow(sPAR[2],sPAR[13]) + pow(X[3],sPAR[13])))))) + (sPAR[10] * X[2]))) - (sPAR[8] * ((sPAR[6] * (pow(X[3],sPAR[12]) / (pow(sPAR[4],sPAR[12]) + pow(X[3],sPAR[12])))) + (sPAR[9] * X[3])))));
    F[0]=(sPAR[8] * (sPAR[18] * (((ACC[2] * ((1.0 - X[0]) / ((1.0 + (sPAR[0] - X[0])) * sPAR[18]))) - (X[0] / (sPAR[1] + X[0]))) / X[1])));

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
    ACC[0]=pow(X[3],sPAR[14]); //$cse1
    ACC[1]=pow(sPAR[3],sPAR[14]); //$cse2
    ACC[2]=0.0; //vk
    sPAR[0]=0.01; //K1
    sPAR[1]=0.01; //K2
    sPAR[2]=0.9; //K_A
    sPAR[3]=2.5; //Ka
    sPAR[4]=1.0; //Kp
    sPAR[5]=2.0; //Kr
    sPAR[6]=65.0; //Vm2
    sPAR[7]=500.0; //Vm3
    sPAR[8]=1.0; //cytosol
    sPAR[9]=10.0; //k
    sPAR[10]=1.0; //kf
    sPAR[11]=2.0; //m
    sPAR[12]=2.0; //n
    sPAR[13]=4.0; //p
    sPAR[14]=1.0; //q
    sPAR[15]=1.0; //store
    sPAR[16]=1.0; //v0
    sPAR[17]=2.7; //v1_beta
    sPAR[18]=2.5; //vp
    X[0]=0.0; //W_star
    X[1]=1.0; //Wt
    X[2]=1.6; //Y
    X[3]=0.15; //Z
    X[4]=20.0; //vMK

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
