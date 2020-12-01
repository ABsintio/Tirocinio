
#ifndef BIOMD042_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD042_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[12]=((sPAR[15] * X[6]) - (sPAR[14] * X[12]));
    F[5]=((sPAR[22] * (X[11] * X[0])) + (((-(sPAR[21])) * (X[10] * X[5])) - (sPAR[14] * X[5])));
    F[0]=((sPAR[13] * (X[14] / (sPAR[8] + X[14]))) + ((sPAR[21] * (X[10] * X[5])) + (((-(sPAR[22])) * (X[11] * X[0])) - (sPAR[14] * X[0]))));
    F[14]=((sPAR[12] * (X[1] * (X[13] / ((sPAR[6] + X[1]) * (sPAR[7] + X[13]))))) - (X[14] * (sPAR[14] + (sPAR[13] / (sPAR[8] + X[14])))));
    F[13]=((sPAR[20] * (X[4] * X[1])) + ((X[13] * (((-(sPAR[19])) * X[3]) - sPAR[14])) - (sPAR[12] * (X[1] * (X[13] / ((sPAR[7] + X[13]) * (sPAR[6] + X[1])))))));
    F[4]=((sPAR[11] * (X[10] * (X[8] / ((sPAR[5] + X[10]) * (sPAR[4] + X[8]))))) + ((sPAR[19] * (X[13] * X[3])) + (X[4] * (((-(sPAR[20])) * X[1]) - sPAR[14]))));
    F[11]=((sPAR[14] * (0.24 - X[11])) + ((sPAR[11] * (X[10] * (X[8] / ((sPAR[5] + X[10]) * (sPAR[4] + X[8]))))) + ((sPAR[21] * (X[10] * X[5])) - (sPAR[22] * (X[11] * X[0])))));
    F[10]=((sPAR[14] * (4.0 - X[10])) + ((sPAR[22] * (X[11] * X[0])) + (X[10] * (((-(sPAR[21])) * X[5]) - (sPAR[11] * (X[8] / ((sPAR[4] + X[8]) * (sPAR[5] + X[10]))))))));
    F[8]=((2.0 * ((sPAR[18] * X[7]) - (sPAR[17] * pow(X[8],2.0)))) + (((-(sPAR[14])) * X[8]) - (sPAR[11] * (X[10] * (X[8] / ((sPAR[4] + X[8]) * (sPAR[5] + X[10])))))));
    F[7]=((sPAR[10] * (X[3] * (pow(X[6],2.0) / ((sPAR[3] + X[3]) * ((sPAR[2] * (1.0 + (sPAR[16] * pow((X[3] / X[2]),2.0)))) + pow(X[6],2.0)))))) + ((sPAR[17] * pow(X[8],2.0)) + (((-(sPAR[18])) - sPAR[14]) * X[7])));
    F[6]=((sPAR[9] * (X[3] * (X[9] / ((sPAR[1] + X[9]) * (sPAR[0] + X[3]))))) + ((((-(sPAR[15])) - sPAR[14]) * X[6]) - (sPAR[10] * (X[3] * (pow(X[6],2.0) / ((sPAR[3] + X[3]) * ((sPAR[2] * (1.0 + (sPAR[16] * pow((X[3] / X[2]),2.0)))) + pow(X[6],2.0))))))));
    F[9]=((sPAR[14] * (50.0 - X[9])) - (sPAR[9] * (X[3] * (X[9] / ((sPAR[1] + X[9]) * (sPAR[0] + X[3]))))));
    F[2]=((sPAR[23] * pow(X[1],2.0)) + (X[2] * (((-(sPAR[24])) * X[3]) - sPAR[14])));
    F[1]=((sPAR[14] * (1.1 - X[1])) + ((X[3] * ((sPAR[9] * (X[9] / ((sPAR[1] + X[9]) * (sPAR[0] + X[3])))) + (sPAR[10] * (pow(X[6],2.0) / ((sPAR[3] + X[3]) * ((sPAR[2] * (1.0 + (sPAR[16] * pow((X[3] / X[2]),2.0)))) + pow(X[6],2.0))))))) + ((2.0 * ((sPAR[24] * (X[2] * X[3])) - (sPAR[23] * pow(X[1],2.0)))) + ((sPAR[19] * (X[13] * X[3])) + (((-(sPAR[20])) * (X[4] * X[1])) - (sPAR[12] * (X[1] * (X[13] / ((sPAR[7] + X[13]) * (sPAR[6] + X[1]))))))))));
    F[3]=((sPAR[14] * (3.5 - X[3])) + ((sPAR[20] * (X[4] * X[1])) + ((sPAR[12] * (X[1] * (X[13] / ((sPAR[6] + X[1]) * (sPAR[7] + X[13]))))) + ((X[3] * (((-(sPAR[9])) * (X[9] / ((sPAR[1] + X[9]) * (sPAR[0] + X[3])))) - (sPAR[10] * (pow(X[6],2.0) / ((sPAR[3] + X[3]) * ((sPAR[2] * (1.0 + (sPAR[16] * pow((X[3] / X[2]),2.0)))) + pow(X[6],2.0))))))) + ((sPAR[23] * pow(X[1],2.0)) + (((-(sPAR[24])) * (X[2] * X[3])) - (sPAR[19] * (X[13] * X[3]))))))));

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
    sPAR[0]=0.063; //K1ATP
    sPAR[1]=0.1; //K1GLC
    sPAR[2]=0.002; //K2
    sPAR[3]=0.01; //K2ATP
    sPAR[4]=1.0; //K4GAP
    sPAR[5]=1.0; //K4NAD
    sPAR[6]=0.3; //K6ADP
    sPAR[7]=0.2; //K6PEP
    sPAR[8]=0.3; //K7PYR
    sPAR[9]=0.5; //V1
    sPAR[10]=1.5; //V2
    sPAR[11]=10.0; //V4
    sPAR[12]=10.0; //V6
    sPAR[13]=2.0; //V7
    sPAR[14]=0.011; //fl
    sPAR[15]=0.05; //k10
    sPAR[16]=0.017; //k2
    sPAR[17]=50.0; //k3b
    sPAR[18]=1.0; //k3f
    sPAR[19]=0.5; //k5b
    sPAR[20]=1.0; //k5f
    sPAR[21]=0.000143; //k8b
    sPAR[22]=1.0; //k8f
    sPAR[23]=10.0; //k9b
    sPAR[24]=10.0; //k9f
    X[0]=0.07383339999999999; //ACA
    X[1]=0.108367; //ADP
    X[2]=0.00261149; //AMP
    X[3]=4.49064; //ATP
    X[4]=0.299109; //DPG
    X[5]=0.33981; //EtOH
    X[6]=0.65939; //F6P
    X[7]=0.00770135; //FBP
    X[8]=0.00190919; //GAP
    X[9]=0.0112817; //GLC
    X[10]=3.62057; //NAD
    X[11]=0.6161180000000001; //NADH
    X[12]=0.0; //P
    X[13]=0.0021125; //PEP
    X[14]=0.00422702; //PYR

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
