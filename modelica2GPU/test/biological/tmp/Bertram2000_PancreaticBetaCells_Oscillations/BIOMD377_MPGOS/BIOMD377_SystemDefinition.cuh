
#ifndef BIOMD377_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD377_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[2]=(sPAR[11] * (X[0] - sPAR[4]));
    ACC[4]=(sPAR[13] * (X[3] * (X[0] - sPAR[3])));
    ACC[9]=(1.0 / (1.0 + pow(2.718281828459045,((sPAR[8] - X[0]) / sPAR[18]))));
    ACC[3]=(sPAR[12] * (X[2] * (X[0] - sPAR[3])));
    ACC[7]=(ACC[3] + ACC[4]);
    ACC[6]=(1.0 / (1.0 + pow(2.718281828459045,((sPAR[6] - X[0]) / sPAR[16]))));
    ACC[10]=(sPAR[21] / (1.0 + pow(2.718281828459045,((X[0] - sPAR[6]) / sPAR[16]))));
    ACC[1]=(sPAR[10] * (X[1] * (X[0] - sPAR[3])));
    ACC[5]=(1.0 / (1.0 + pow(2.718281828459045,((sPAR[5] - X[0]) / sPAR[15]))));
    ACC[0]=(sPAR[9] * (ACC[5] * (X[0] - sPAR[2])));
    ACC[8]=(1.0 / (1.0 + pow(2.718281828459045,((sPAR[7] - X[0]) / sPAR[17]))));
    F[3]=((ACC[9] - X[3]) / sPAR[20]);
    F[1]=((ACC[6] - X[1]) / ACC[10]);
    F[0]=((((((-(ACC[4])) - ACC[3]) - ACC[2]) - ACC[0]) - ACC[1]) / sPAR[0]);
    F[2]=((ACC[8] - X[2]) / sPAR[19]);

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
    ACC[0]=-2295.26000299071; //ICa
    ACC[1]=1443.0; //IK
    ACC[2]=-75.0; //Il
    ACC[3]=74.0; //Is1
    ACC[4]=513.856; //Is2
    ACC[5]=0.0573241758988688; //minf
    ACC[6]=0.0322954646984505; //ninf
    ACC[7]=587.856; //parameter_1
    ACC[8]=0.00247262315663477; //s1inf
    ACC[9]=0.0758581800212435; //s2inf
    ACC[10]=8.03194764300286; //taun
    sPAR[0]=4524.0; //Cm
    sPAR[1]=1.0; //Compartment
    sPAR[2]=100.0; //VCa
    sPAR[3]=-80.0; //VK
    sPAR[4]=-40.0; //Vl
    sPAR[5]=-22.0; //Vm
    sPAR[6]=-9.0; //Vn
    sPAR[7]=-40.0; //Vs1
    sPAR[8]=-42.0; //Vs2
    sPAR[9]=280.0; //gCa
    sPAR[10]=1300.0; //gK
    sPAR[11]=25.0; //gl
    sPAR[12]=20.0; //gs1
    sPAR[13]=32.0; //gs2
    sPAR[14]=1.1; //lambda
    sPAR[15]=7.5; //sm
    sPAR[16]=10.0; //sn
    sPAR[17]=0.5; //ss1
    sPAR[18]=0.4; //ss2
    sPAR[19]=1000.0; //taus1
    sPAR[20]=120000.0; //taus2
    sPAR[21]=8.300000000000001; //tnbar
    X[0]=-43.00000000000019; //V
    X[1]=0.03000000000000016; //n
    X[2]=0.1000000000000005; //s1
    X[3]=0.4340000000000023; //s2

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
