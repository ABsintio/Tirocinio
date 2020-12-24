
#ifndef BIOMD207_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD207_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[1]=(X[3] * sPAR[17]);
    ACC[0]=(X[1] * (sPAR[16] / (sPAR[11] + X[1])));
    ACC[3]=(X[2] * sPAR[21]);
    ACC[2]=(X[0] * (sPAR[20] / (sPAR[10] + X[0])));
    F[1]=(sPAR[22] * ((sPAR[28] * (sPAR[13] / (sPAR[13] + X[2]))) + (((-(sPAR[26])) * (X[5] * (X[1] / (sPAR[9] + X[1])))) - (sPAR[24] * X[1]))));
    F[0]=(sPAR[22] * ((sPAR[27] * (sPAR[12] / (sPAR[12] + X[3]))) + (((-(sPAR[25])) * (X[4] * (X[0] / (sPAR[8] + X[0])))) - (sPAR[23] * X[0]))));
    F[5]=((ACC[1] * ((1.0 - X[5]) / (1.0 + (sPAR[2] - X[5])))) - (sPAR[15] * (X[5] / (sPAR[3] + X[5]))));
    F[3]=((ACC[0] * ((1.0 - X[3]) / (1.0 + (sPAR[0] - X[3])))) - (sPAR[14] * (X[3] / (sPAR[1] + X[3]))));
    F[4]=((ACC[3] * ((1.0 - X[4]) / (1.0 + (sPAR[6] - X[4])))) - (sPAR[19] * (X[4] / (sPAR[7] + X[4]))));
    F[2]=((ACC[2] * ((1.0 - X[2]) / (1.0 + (sPAR[4] - X[2])))) - (sPAR[18] * (X[2] / (sPAR[5] + X[2]))));

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
    ACC[0]=0.0; //U1
    ACC[1]=0.0; //U3
    ACC[2]=0.0; //V1
    ACC[3]=0.0; //V3
    sPAR[0]=0.01; //H1
    sPAR[1]=0.01; //H2
    sPAR[2]=0.01; //H3
    sPAR[3]=0.01; //H4
    sPAR[4]=0.01; //K1
    sPAR[5]=0.01; //K2
    sPAR[6]=0.01; //K3
    sPAR[7]=0.01; //K4
    sPAR[8]=0.02; //K_d1
    sPAR[9]=0.02; //K_d2
    sPAR[10]=0.5; //Kc1
    sPAR[11]=0.5; //Kc2
    sPAR[12]=0.03; //Kim1
    sPAR[13]=0.03; //Kim2
    sPAR[14]=0.15; //U2
    sPAR[15]=0.05; //U4
    sPAR[16]=0.3; //U_M1
    sPAR[17]=0.1; //U_M3
    sPAR[18]=0.15; //V2
    sPAR[19]=0.05; //V4
    sPAR[20]=0.3; //V_M1
    sPAR[21]=0.1; //V_M3
    sPAR[22]=1.0; //compartment
    sPAR[23]=0.001; //kd1
    sPAR[24]=0.001; //kd2
    sPAR[25]=0.025; //vd1
    sPAR[26]=0.025; //vd2
    sPAR[27]=0.05; //vi1
    sPAR[28]=0.05; //vi2
    X[0]=2.0; //C1
    X[1]=0.0; //C2
    X[2]=1.0; //M1
    X[3]=0.0; //M2
    X[4]=0.0; //X1
    X[5]=0.0; //X2

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
