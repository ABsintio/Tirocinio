
#ifndef BIOMD237_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD237_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[1]=(sPAR[8] * (sPAR[5] * piecewise(1 - exp(-(T - sPAR[9]) / sPAR[7]), T >= sPAR[9] && T <= sPAR[6], piecewise(exp(-(T - sPAR[6]) / sPAR[7]), (T > sPAR[6]), 0.0))));
    ACC[0]=(sPAR[3] * piecewise(sPAR[0] * (1 - exp(-(T - sPAR[4]) / sPAR[2])), T >= sPAR[4] && T <= sPAR[1], piecewise(sPAR[0] * exp(-(T - sPAR[4]) / sPAR[2]), (T >= sPAR[1]), 0.0)));
    F[24]=0.0;
    F[25]=0.0;
    F[0]=(sPAR[10] * ((sPAR[28] * X[15]) - (sPAR[38] * X[0])));
    F[15]=(sPAR[10] * ((sPAR[26] * (X[13] * X[5])) - (sPAR[37] * X[15])));
    F[13]=(sPAR[10] * ((sPAR[24] * X[14]) + ((sPAR[37] * X[15]) + ((X[13] * (((-(sPAR[26])) * X[5]) - (sPAR[27] * X[2]))) - (sPAR[25] * (X[4] * X[13]))))));
    F[14]=(sPAR[10] * ((sPAR[25] * (X[4] * X[13])) - (sPAR[24] * X[14])));
    F[6]=(sPAR[10] * ((sPAR[23] * X[12]) - (sPAR[36] * X[6])));
    F[12]=(sPAR[10] * ((X[10] * ((sPAR[21] * X[2]) + (sPAR[32] * X[5]))) - (sPAR[35] * X[12])));
    F[10]=(sPAR[10] * ((sPAR[19] * X[11]) + ((sPAR[35] * X[12]) + (((-(sPAR[20])) * (X[4] * X[10])) - (X[10] * ((sPAR[21] * X[2]) + (sPAR[32] * X[5])))))));
    F[11]=(sPAR[10] * ((sPAR[20] * (X[4] * X[10])) - (sPAR[19] * X[11])));
    F[5]=(sPAR[10] * ((sPAR[13] * X[22]) + ((X[4] * ((sPAR[17] * X[8]) + (sPAR[34] * X[9]))) - (X[5] * (sPAR[18] + (sPAR[31] * X[2]))))));
    F[22]=(sPAR[10] * ((sPAR[12] * X[21]) + ((sPAR[14] * (X[23] * X[4])) - (sPAR[13] * X[22]))));
    F[21]=(sPAR[10] * ((sPAR[44] * (X[18] * X[4])) - (sPAR[12] * X[21])));
    F[4]=(sPAR[10] * ((X[5] * (sPAR[18] + (sPAR[31] * X[2]))) + ((2.0 * (sPAR[19] * X[11])) + ((sPAR[24] * X[14]) + ((-2.0 * (sPAR[20] * (X[4] * X[10]))) + (((((-(sPAR[14])) * (X[23] * X[4])) - (sPAR[44] * (X[18] * X[4]))) - (X[4] * ((sPAR[17] * X[8]) + (sPAR[34] * X[9])))) - (sPAR[25] * (X[4] * X[13]))))))));
    F[9]=(sPAR[10] * ((sPAR[42] * X[23]) - (sPAR[43] * X[9])));
    F[23]=(sPAR[10] * ((sPAR[40] * X[20]) + ((sPAR[13] * X[22]) + (((-(X[23])) * (sPAR[42] + (sPAR[14] * X[4]))) - (sPAR[41] * (X[1] * X[23]))))));
    F[2]=(sPAR[10] * ((sPAR[40] * X[20]) - (sPAR[29] * X[2])));
    F[20]=(sPAR[10] * ((sPAR[39] * X[19]) + ((sPAR[41] * (X[1] * X[23])) - (sPAR[40] * X[20]))));
    F[19]=(sPAR[10] * ((sPAR[33] * (X[18] * X[1])) - (sPAR[39] * X[19])));
    F[1]=(sPAR[10] * ((sPAR[29] * X[2]) + (((-(sPAR[33])) * (X[18] * X[1])) - (sPAR[41] * (X[1] * X[23])))));
    F[16]=(sPAR[10] * ((sPAR[30] * X[17]) + (((-(sPAR[11])) * (X[16] * X[7])) - (sPAR[42] * X[23]))));
    F[7]=(sPAR[10] * ((sPAR[16] * X[8]) + ((sPAR[30] * X[17]) + (((-(sPAR[11])) * (X[16] * X[7])) - (sPAR[15] * (X[7] * ACC[1]))))));
    F[8]=(sPAR[10] * ((sPAR[15] * (X[7] * ACC[1])) - (sPAR[16] * X[8])));
    F[17]=(sPAR[10] * ((sPAR[11] * (X[16] * X[7])) + (X[17] * (((-(sPAR[22])) * (X[3] * ACC[0])) - sPAR[30]))));
    F[3]=(sPAR[10] * ((sPAR[42] * X[23]) - (sPAR[22] * (X[17] * (X[3] * ACC[0])))));
    F[18]=(sPAR[10] * ((sPAR[22] * (X[17] * (X[3] * ACC[0]))) + (X[18] * (((-(sPAR[33])) * X[1]) - (sPAR[44] * X[4])))));

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
    ACC[0]=0.0; //alpha
    ACC[1]=0.0; //beta
    sPAR[0]=1.0; //alphaA
    sPAR[1]=10.0; //alphae
    sPAR[2]=2.0; //alphas
    sPAR[3]=1.0; //alphastim
    sPAR[4]=0.0; //alphat
    sPAR[5]=1.0; //betaA
    sPAR[6]=360.0; //betae
    sPAR[7]=20.0; //betas
    sPAR[8]=1.0; //betastim
    sPAR[9]=0.0; //betat
    sPAR[10]=1.0; //compartment
    sPAR[11]=0.01; //k1
    sPAR[12]=1.0; //k10
    sPAR[13]=1.0; //k11
    sPAR[14]=1.0; //k12
    sPAR[15]=1.0; //k13
    sPAR[16]=0.1; //k14
    sPAR[17]=0.1; //k15
    sPAR[18]=0.1; //k16
    sPAR[19]=1.0; //k17
    sPAR[20]=10.0; //k18
    sPAR[21]=1.0; //k19
    sPAR[22]=0.01; //k2
    sPAR[23]=1.0; //k20
    sPAR[24]=1.0; //k21
    sPAR[25]=1.0; //k22
    sPAR[26]=1.0; //k23
    sPAR[27]=0.01; //k24
    sPAR[28]=1.0; //k25
    sPAR[29]=0.1; //k26
    sPAR[30]=1.0; //k27
    sPAR[31]=0.01; //k28
    sPAR[32]=0.01; //k29
    sPAR[33]=1.0; //k3
    sPAR[34]=0.1; //k30
    sPAR[35]=1.0; //k31
    sPAR[36]=1.0; //k32
    sPAR[37]=1.0; //k33
    sPAR[38]=1.0; //k34
    sPAR[39]=1.0; //k4
    sPAR[40]=1.0; //k5
    sPAR[41]=1.0; //k6
    sPAR[42]=10.0; //k7
    sPAR[43]=0.1; //k8
    sPAR[44]=1.0; //k9
    X[0]=0.0; //FREP
    X[1]=217.0; //Fus3
    X[2]=0.0; //Fus3PP
    X[3]=53.0; //Gbg
    X[4]=54.4; //Kss1
    X[5]=0.0; //Kss1PP
    X[6]=0.0; //PREP
    X[7]=13.3; //Ste11
    X[8]=0.0; //Ste11P
    X[9]=0.0; //Ste11Ubi
    X[10]=0.07000000000000001; //Ste12
    X[11]=35.9; //Ste12Kss1
    X[12]=0.0; //Ste12P
    X[13]=0.25; //Ste12TeSte5
    X[14]=13.7; //Ste12TeSte5Kss1
    X[15]=0.0; //Ste12TeSte5P
    X[16]=42.3; //Ste5
    X[17]=5.6; //Ste5Ste11
    X[18]=0.0; //Ste5Ste11Gbg
    X[19]=0.0; //Ste5Ste11GbgFus3
    X[20]=0.0; //Ste5Ste11GbgFus3P
    X[21]=0.0; //Ste5Ste11GbgKss1
    X[22]=0.0; //Ste5Ste11GbgKss1P
    X[23]=0.0; //Ste5Ste11GbgP
    X[24]=0.0; //p
    X[25]=0.0; //s

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
