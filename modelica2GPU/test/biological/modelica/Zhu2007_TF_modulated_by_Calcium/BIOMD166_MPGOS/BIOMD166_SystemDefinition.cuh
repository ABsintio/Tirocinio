
#ifndef BIOMD166_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD166_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[0]=(sPAR[4] / (1.0 + (pow(X[2],4.0) / pow(sPAR[3],4.0))));
    ACC[1]=(sPAR[15] * (1.0 + (sPAR[11] * (pow(X[2],4.0) / (pow(sPAR[2],4.0) + pow(X[2],4.0))))));
    F[2]=(sPAR[20] + ((sPAR[21] * sPAR[9]) + ((sPAR[8] * (pow(X[1],sPAR[16]) * (pow(X[2],sPAR[18]) / ((pow(sPAR[1],sPAR[18]) + pow(X[2],sPAR[18])) * (pow(sPAR[5],sPAR[16]) + pow(X[1],sPAR[16])))))) + ((sPAR[12] * X[1]) + (((-(sPAR[7])) * (pow(X[2],sPAR[17]) / (pow(sPAR[0],sPAR[17]) + pow(X[2],sPAR[17])))) - (sPAR[13] * X[2]))))));
    F[1]=((sPAR[7] * (pow(X[2],sPAR[17]) / (pow(sPAR[0],sPAR[17]) + pow(X[2],sPAR[17])))) + (((-(sPAR[8])) * (pow(X[1],sPAR[16]) * (pow(X[2],sPAR[18]) / ((pow(sPAR[1],sPAR[18]) + pow(X[2],sPAR[18])) * (pow(sPAR[5],sPAR[16]) + pow(X[1],sPAR[16])))))) - (sPAR[12] * X[1])));
    F[0]=((ACC[1] * (pow(X[0],2.0) / (pow(X[0],2.0) + ACC[0]))) + (sPAR[6] - (sPAR[14] * X[0])));

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
    ACC[0]=0.0; //Kd
    ACC[1]=0.0; //kf
    sPAR[0]=0.5; //K2_5
    sPAR[1]=0.46; //K_A_6
    sPAR[2]=0.5; //Ka
    sPAR[3]=0.5; //Kb
    sPAR[4]=10.0; //Kd0
    sPAR[5]=1.7; //Kr_6
    sPAR[6]=0.1; //Rbas_2
    sPAR[7]=30.0; //Vm2_5
    sPAR[8]=325.0; //Vm3_6
    sPAR[9]=0.3; //beta_4
    sPAR[10]=1.0; //cytoplasm
    sPAR[11]=9.0; //gamma
    sPAR[12]=0.7; //k1_7
    sPAR[13]=10.0; //k_8
    sPAR[14]=1.0; //kd_1
    sPAR[15]=6.0; //kf0
    sPAR[16]=2.0; //m_6
    sPAR[17]=2.0; //n_5
    sPAR[18]=4.0; //p_6
    sPAR[19]=1.0; //store
    sPAR[20]=1.0; //v0_3
    sPAR[21]=5.7; //v1_4
    X[0]=15.0; //X
    X[1]=0.0; //Y
    X[2]=0.25; //Z

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
