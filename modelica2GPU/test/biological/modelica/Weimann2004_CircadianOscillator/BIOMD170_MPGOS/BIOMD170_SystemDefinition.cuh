
#ifndef BIOMD170_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD170_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[2]=(X[4] + (X[5] + X[6]));
    ACC[0]=(sPAR[25] * (pow(X[2],sPAR[23]) / (pow(sPAR[12],sPAR[23]) + pow(X[2],sPAR[23]))));
    ACC[1]=(sPAR[24] * ((X[6] + sPAR[2]) / ((sPAR[4] * (1.0 + pow((X[2] / sPAR[6]),sPAR[3]))) + (X[6] + sPAR[2]))));
    F[6]=(sPAR[1] * ((sPAR[17] * X[5]) + (((-(sPAR[20])) - sPAR[21]) * X[6])));
    F[5]=((sPAR[0] * (sPAR[16] * X[4])) + (sPAR[1] * ((sPAR[20] * X[6]) + ((((-(sPAR[18])) - sPAR[17]) - sPAR[19]) * X[5]))));
    F[4]=((sPAR[0] * (sPAR[14] * X[3])) + ((sPAR[1] * (sPAR[19] * X[5])) - (sPAR[0] * (X[4] * (sPAR[15] + sPAR[16])))));
    F[2]=((sPAR[0] * (sPAR[9] * X[1])) - (sPAR[1] * (X[2] * (sPAR[11] + sPAR[10]))));
    F[1]=((sPAR[0] * (sPAR[7] * pow(X[0],sPAR[22]))) + ((sPAR[1] * (sPAR[11] * X[2])) - (sPAR[0] * (X[1] * (sPAR[8] + sPAR[9])))));
    F[3]=(sPAR[0] * (ACC[0] - (sPAR[13] * X[3])));
    F[0]=(sPAR[0] * (ACC[1] - (sPAR[5] * X[0])));

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
    ACC[0]=0.0; //trans_Bmal1
    ACC[1]=0.0; //trans_per2_cry
    ACC[2]=3.05; //y5_y6_y7
    sPAR[0]=1.0; //Cytoplasm
    sPAR[1]=1.0; //Nucleus
    sPAR[2]=0.01; //c
    sPAR[3]=8.0; //hill_coeff
    sPAR[4]=1.0; //k1b
    sPAR[5]=0.12; //k1d
    sPAR[6]=0.5600000000000001; //k1i
    sPAR[7]=0.3; //k2b
    sPAR[8]=0.05; //k2d
    sPAR[9]=0.24; //k2t
    sPAR[10]=0.12; //k3d
    sPAR[11]=0.02; //k3t
    sPAR[12]=2.16; //k4b
    sPAR[13]=0.75; //k4d
    sPAR[14]=0.24; //k5b
    sPAR[15]=0.06; //k5d
    sPAR[16]=0.45; //k5t
    sPAR[17]=0.09; //k6a
    sPAR[18]=0.12; //k6d
    sPAR[19]=0.06; //k6t
    sPAR[20]=0.003; //k7a
    sPAR[21]=0.09; //k7d
    sPAR[22]=2.0; //q
    sPAR[23]=3.0; //r
    sPAR[24]=9.0; //v1b
    sPAR[25]=3.6; //v4b
    X[0]=0.2; //y1
    X[1]=0.0; //y2
    X[2]=1.1; //y3
    X[3]=0.8; //y4
    X[4]=1.0; //y5
    X[5]=1.0; //y6
    X[6]=1.05; //y7

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
