
#ifndef BIOMD365_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD365_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[28]=(sPAR[0] * ((sPAR[7] * X[14]) + ((sPAR[7] * X[19]) + ((sPAR[7] * X[13]) + ((sPAR[7] * (X[18] - (X[26] * X[28]))) + ((sPAR[1] * (X[27] * X[0])) + (X[28] * (((-(sPAR[8])) * (X[23] + (X[25] + X[24]))) - sPAR[3]))))))));
    F[27]=(sPAR[0] * ((sPAR[7] * X[11]) + ((sPAR[7] * X[16]) + ((sPAR[7] * X[12]) + ((sPAR[7] * X[17]) + ((sPAR[3] * X[28]) + (X[27] * (((-(sPAR[8])) * (X[25] + (X[26] + (X[23] + X[24])))) - (sPAR[1] * X[0])))))))));
    F[26]=(sPAR[0] * ((sPAR[7] * X[17]) + ((sPAR[7] * (X[18] - (X[26] * X[28]))) - (sPAR[8] * (X[26] * X[27])))));
    F[24]=(sPAR[0] * ((sPAR[7] * X[12]) + ((sPAR[7] * X[13]) - (sPAR[8] * (X[24] * (X[28] + X[27]))))));
    F[25]=(sPAR[0] * ((sPAR[7] * X[16]) + ((sPAR[7] * X[19]) - (sPAR[8] * (X[25] * (X[28] + X[27]))))));
    F[23]=(sPAR[0] * ((sPAR[7] * X[11]) + ((sPAR[7] * X[14]) - (sPAR[8] * (X[23] * (X[28] + X[27]))))));
    F[5]=(sPAR[0] * ((sPAR[9] * X[16]) - (sPAR[2] * (X[5] * X[8]))));
    F[9]=(sPAR[0] * ((sPAR[1] * (X[8] * X[0])) - (sPAR[3] * X[9])));
    F[6]=(sPAR[0] * ((sPAR[9] * X[17]) - (sPAR[2] * (X[6] * X[8]))));
    F[3]=(sPAR[0] * ((sPAR[9] * X[12]) - (sPAR[2] * (X[3] * X[8]))));
    F[7]=(sPAR[0] * ((sPAR[9] * X[20]) - (sPAR[2] * (X[7] * X[8]))));
    F[2]=(sPAR[0] * ((sPAR[9] * X[11]) - (sPAR[2] * (X[2] * X[8]))));
    F[4]=(sPAR[0] * ((sPAR[9] * X[15]) - (sPAR[2] * (X[4] * X[8]))));
    F[8]=(sPAR[0] * ((sPAR[9] * X[10]) + ((sPAR[9] * X[15]) + ((sPAR[9] * X[11]) + ((sPAR[9] * X[20]) + ((sPAR[9] * X[16]) + ((sPAR[9] * X[12]) + ((sPAR[9] * X[17]) + ((sPAR[3] * X[9]) + (X[8] * (((-(sPAR[2])) * (X[5] + (X[6] + (X[2] + (X[1] + (X[4] + (X[7] + X[3]))))))) - (sPAR[1] * X[0]))))))))))));
    F[1]=(sPAR[0] * ((sPAR[9] * X[10]) - (sPAR[2] * (X[1] * X[8]))));
    F[18]=(sPAR[0] * ((sPAR[1] * (X[17] * X[0])) + ((sPAR[4] * X[21]) + ((sPAR[6] * X[19]) + ((sPAR[5] * X[13]) + ((sPAR[7] * ((X[26] * X[28]) - X[18])) - (sPAR[3] * X[18])))))));
    F[17]=((-(sPAR[0])) * ((sPAR[1] * (X[17] * X[0])) + ((sPAR[9] * X[17]) + ((sPAR[7] * X[17]) + ((((-(sPAR[2])) * (X[6] * X[8])) - (sPAR[8] * (X[26] * X[27]))) - (sPAR[3] * X[18]))))));
    F[13]=(sPAR[0] * ((sPAR[1] * (X[12] * X[0])) + ((sPAR[6] * X[14]) + ((((-(sPAR[3])) - sPAR[5]) * X[13]) + ((sPAR[8] * (X[24] * X[28])) - (sPAR[7] * X[13]))))));
    F[12]=((-(sPAR[0])) * ((sPAR[1] * (X[12] * X[0])) + ((sPAR[9] * X[12]) + ((sPAR[7] * X[12]) + ((((-(sPAR[2])) * (X[3] * X[8])) - (sPAR[8] * (X[24] * X[27]))) - (sPAR[3] * X[13]))))));
    F[21]=(sPAR[0] * ((sPAR[1] * (X[20] * X[0])) + ((sPAR[6] * X[22]) + (((-(sPAR[3])) - sPAR[4]) * X[21]))));
    F[20]=((-(sPAR[0])) * ((sPAR[1] * (X[20] * X[0])) + ((sPAR[9] * X[20]) + (((-(sPAR[2])) * (X[7] * X[8])) - (sPAR[3] * X[21])))));
    F[19]=(sPAR[0] * ((sPAR[1] * (X[16] * X[0])) + ((sPAR[4] * X[22]) + ((sPAR[5] * X[14]) + ((((-(sPAR[3])) - sPAR[6]) * X[19]) + ((sPAR[8] * (X[25] * X[28])) - (sPAR[7] * X[19])))))));
    F[16]=((-(sPAR[0])) * ((sPAR[1] * (X[16] * X[0])) + ((sPAR[9] * X[16]) + ((sPAR[7] * X[16]) + ((((-(sPAR[2])) * (X[5] * X[8])) - (sPAR[8] * (X[25] * X[27]))) - (sPAR[3] * X[19]))))));
    F[22]=(sPAR[0] * ((sPAR[1] * (X[15] * X[0])) + ((sPAR[5] * X[29]) + ((((-(sPAR[4])) - sPAR[3]) - sPAR[6]) * X[22]))));
    F[15]=((-(sPAR[0])) * ((sPAR[1] * (X[15] * X[0])) + ((sPAR[9] * X[15]) + (((-(sPAR[2])) * (X[4] * X[8])) - (sPAR[3] * X[22])))));
    F[14]=(sPAR[0] * ((sPAR[1] * (X[11] * X[0])) + ((sPAR[4] * X[29]) + (((((-(sPAR[3])) - sPAR[6]) - sPAR[5]) * X[14]) + ((sPAR[8] * (X[23] * X[28])) - (sPAR[7] * X[14]))))));
    F[11]=((-(sPAR[0])) * ((sPAR[1] * (X[11] * X[0])) + ((sPAR[9] * X[11]) + ((sPAR[7] * X[11]) + ((((-(sPAR[2])) * (X[2] * X[8])) - (sPAR[8] * (X[23] * X[27]))) - (sPAR[3] * X[14]))))));
    F[29]=(sPAR[0] * ((sPAR[1] * (X[10] * X[0])) + ((((-(sPAR[4])) - sPAR[3]) - sPAR[5]) * X[29])));
    F[10]=((-(sPAR[0])) * ((sPAR[1] * (X[10] * X[0])) + ((sPAR[9] * X[10]) + (((-(sPAR[2])) * (X[1] * X[8])) - (sPAR[3] * X[29])))));
    F[0]=((-(sPAR[0])) * ((sPAR[1] * (X[10] * X[0])) + ((sPAR[1] * (X[11] * X[0])) + ((sPAR[1] * (X[15] * X[0])) + ((sPAR[1] * (X[16] * X[0])) + ((sPAR[1] * (X[20] * X[0])) + ((sPAR[1] * (X[12] * X[0])) + ((sPAR[1] * (X[17] * X[0])) + ((sPAR[1] * (X[8] * X[0])) + ((sPAR[1] * (X[27] * X[0])) - (sPAR[3] * (X[13] + (X[9] + (X[19] + (X[14] + (X[29] + (X[22] + (X[21] + (X[18] + X[28])))))))))))))))))));

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
    sPAR[0]=1.0; //compartment_1
    sPAR[1]=100000000.0; //k1
    sPAR[2]=2630.0; //k10
    sPAR[3]=0.7; //k2
    sPAR[4]=0.064; //k3
    sPAR[5]=1.0; //k5
    sPAR[6]=0.00052; //k6
    sPAR[7]=0.028; //k7
    sPAR[8]=2570.0; //k8
    sPAR[9]=1.72e-05; //k9
    X[0]=1e-08; //APC
    X[1]=0.0; //HC
    X[2]=0.0; //HC3
    X[3]=0.0; //HC36
    X[4]=0.0; //HC5
    X[5]=0.0; //HC53
    X[6]=0.0; //HC536
    X[7]=0.0; //HC56
    X[8]=0.0; //LC
    X[9]=0.0; //LC_APC
    X[10]=2e-07; //Va
    X[11]=0.0; //Va3
    X[12]=0.0; //Va36
    X[13]=0.0; //Va36_APC
    X[14]=0.0; //Va3_APC
    X[15]=0.0; //Va5
    X[16]=0.0; //Va53
    X[17]=0.0; //Va536
    X[18]=0.0; //Va536_APC
    X[19]=0.0; //Va53_APC
    X[20]=0.0; //Va56
    X[21]=0.0; //Va56_APC
    X[22]=0.0; //Va5_APC
    X[23]=0.0; //VaA3
    X[24]=0.0; //VaA36
    X[25]=0.0; //VaA53
    X[26]=0.0; //VaA536
    X[27]=0.0; //VaLCA1
    X[28]=0.0; //VaLCA1_APC
    X[29]=0.0; //Va_APC

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
