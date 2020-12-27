
#ifndef BIOMD145_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD145_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[0]=X[4];
    ACC[5]=(pow(X[4],sPAR[23]) / (pow(sPAR[5],sPAR[23]) + pow(X[4],sPAR[23])));
    ACC[9]=(X[4] * (X[1] / ((sPAR[5] + X[4]) * (sPAR[9] + X[1]))));
    ACC[2]=(X[0] / (sPAR[8] + X[0]));
    ACC[7]=(pow(X[3],sPAR[24]) / (pow(sPAR[7],sPAR[24]) + pow(X[3],sPAR[24])));
    ACC[8]=(pow(X[4],3.0) / (pow(sPAR[10],3.0) + pow(X[4],3.0)));
    ACC[3]=(X[1] / (sPAR[3] + X[1]));
    ACC[4]=(X[1] / (sPAR[4] + X[1]));
    ACC[6]=(pow(X[2],sPAR[25]) / (pow(sPAR[6],sPAR[25]) + pow(X[2],sPAR[25])));
    ACC[1]=(sPAR[0] - X[0]);
    F[3]=(sPAR[1] * (sPAR[11] + ((sPAR[12] * X[3]) + (((-(sPAR[15])) * (ACC[2] * X[3])) - (sPAR[16] * (ACC[9] * X[3]))))));
    F[2]=(-0.001 * (sPAR[2] * ((sPAR[21] * (ACC[8] * ACC[6])) - (sPAR[22] * ACC[3]))));
    F[1]=((0.01 * (sPAR[2] * ((sPAR[21] * (ACC[8] * ACC[6])) - (sPAR[22] * ACC[3])))) + (sPAR[1] * ((0.05 * sPAR[14]) + (-0.05 * (sPAR[13] * ACC[4])))));
    F[0]=(sPAR[1] * ((sPAR[17] * (ACC[7] * (ACC[5] * ACC[1]))) - (sPAR[18] * X[0])));
    F[4]=(sPAR[1] * ((sPAR[19] * X[0]) - (sPAR[20] * X[4])));

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
    ACC[0]=0.0; //DG
    ACC[1]=10.0; //PLC
    ACC[2]=0.0; //Raplc
    ACC[3]=0.0; //Rcyt1
    ACC[4]=0.0; //Rcyt2
    ACC[5]=0.0; //Rdg
    ACC[6]=0.0; //Rer
    ACC[7]=0.0; //Rgalpha_gtp
    ACC[8]=0.0; //Rip3
    ACC[9]=0.0; //Rpkc
    sPAR[0]=10.0; //Cplc_total
    sPAR[1]=1.0; //Cytosol
    sPAR[2]=1.0; //ER
    sPAR[3]=1000.0; //Kc1
    sPAR[4]=2000.0; //Kc2
    sPAR[5]=10.0; //Kd
    sPAR[6]=75.0; //Ker
    sPAR[7]=25.0; //Kg
    sPAR[8]=4.0; //Kp
    sPAR[9]=200.0; //Kr
    sPAR[10]=25.0; //Ks
    sPAR[11]=0.1; //k0
    sPAR[12]=3.4; //k1
    sPAR[13]=3000.0; //k10
    sPAR[14]=260.0; //k11
    sPAR[15]=4.0; //k2
    sPAR[16]=4.5; //k3
    sPAR[17]=1.2; //k4
    sPAR[18]=0.12; //k5
    sPAR[19]=14.0; //k6
    sPAR[20]=2.0; //k7
    sPAR[21]=10500.0; //k8
    sPAR[22]=600.0; //k9
    sPAR[23]=2.0; //m
    sPAR[24]=4.0; //n
    sPAR[25]=3.0; //w
    X[0]=9.0; //APLC
    X[1]=200.0; //Ca_Cyt
    X[2]=1000.0; //Ca_ER
    X[3]=1.0; //Galpha_GTP
    X[4]=1.0; //IP3

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
