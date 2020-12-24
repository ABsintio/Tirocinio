
#ifndef BIOMD336_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD336_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[0]=(X[3] + (1.2 * X[18]));
    F[18]=(sPAR[0] * ((sPAR[6] * X[2]) + ((sPAR[12] * (X[8] * X[18])) + ((sPAR[15] * (X[9] * X[18])) + ((((-(sPAR[16])) * (X[18] * X[13])) - (sPAR[12] * (X[8] * X[18]))) - (sPAR[15] * (X[9] * X[18])))))));
    F[13]=(sPAR[0] * ((sPAR[6] * X[2]) + ((sPAR[16] * (X[18] * X[13])) + ((sPAR[17] * (X[12] * X[17])) + ((sPAR[7] * (X[4] * X[13])) + ((sPAR[11] * X[2]) + (((((-(sPAR[7])) * (X[4] * X[13])) - (sPAR[17] * (X[1] * X[13]))) - (sPAR[2] * X[13])) - (sPAR[16] * (X[18] * X[13])))))))));
    F[2]=(sPAR[0] * ((sPAR[17] * (X[1] * X[13])) + (((-(sPAR[11])) - sPAR[6]) * X[2])));
    F[1]=(sPAR[0] * ((sPAR[11] * X[2]) - (sPAR[17] * (X[1] * X[13]))));
    F[3]=(sPAR[0] * ((sPAR[12] * (X[8] * X[3])) + ((sPAR[15] * (X[9] * X[3])) + ((sPAR[16] * (X[18] * X[13])) + (((-(sPAR[12])) * (X[8] * X[3])) - (sPAR[15] * (X[9] * X[3])))))));
    F[10]=(sPAR[0] * ((X[9] * ((sPAR[14] * X[17]) + (sPAR[15] * X[3]))) + ((sPAR[15] * (X[9] * X[18])) + ((sPAR[20] * X[11]) - (sPAR[18] * (X[10] * X[6]))))));
    F[9]=((-(sPAR[0])) * ((X[9] * ((sPAR[14] * X[17]) + (sPAR[15] * X[3]))) + (sPAR[15] * (X[9] * X[18]))));
    F[12]=(sPAR[0] * ((X[8] * ((sPAR[1] * X[17]) + (sPAR[12] * X[3]))) + ((sPAR[12] * (X[8] * X[18])) + ((sPAR[2] * X[13]) - (sPAR[17] * (X[12] * X[17]))))));
    F[8]=((-(sPAR[0])) * ((X[8] * ((sPAR[1] * X[17]) + (sPAR[12] * X[3]))) + (sPAR[12] * (X[8] * X[18]))));
    F[16]=(sPAR[0] * ((sPAR[17] * (X[14] * X[11])) + (((-(sPAR[10])) - sPAR[5]) * X[16])));
    F[11]=(sPAR[0] * ((sPAR[5] * X[16]) + ((sPAR[18] * (X[10] * X[6])) + ((sPAR[10] * X[16]) + ((((-(sPAR[17])) * (X[14] * X[11])) - (sPAR[20] * X[11])) - function_4_VIIIa_IXa_degradation_2(X[0],X[11],sPAR[0]))))));
    F[17]=(sPAR[0] * ((sPAR[4] * X[15]) + ((sPAR[5] * X[16]) + ((sPAR[7] * (X[4] * X[17])) + ((sPAR[1] * (X[8] * X[17])) + ((sPAR[14] * (X[9] * X[17])) + ((sPAR[2] * X[13]) + (((((-(sPAR[7])) * (X[4] * X[17])) - (sPAR[17] * (X[12] * X[17]))) - (sPAR[1] * (X[8] * X[17]))) - (sPAR[14] * (X[9] * X[17]))))))))));
    F[15]=(sPAR[0] * ((sPAR[17] * (X[14] * X[7])) + (((-(sPAR[9])) - sPAR[4]) * X[15])));
    F[14]=((-(sPAR[0])) * ((sPAR[17] * (X[14] * X[7])) + ((sPAR[17] * (X[14] * X[11])) + (((-(sPAR[10])) * X[16]) - (sPAR[9] * X[15])))));
    F[6]=(sPAR[0] * ((sPAR[3] * X[5]) + ((sPAR[7] * (X[4] * (X[17] + X[13]))) + ((sPAR[20] * X[11]) - (sPAR[18] * (X[10] * X[6]))))));
    F[7]=(sPAR[0] * ((sPAR[3] * X[5]) + ((sPAR[4] * X[15]) + ((sPAR[8] * X[5]) + ((sPAR[9] * X[15]) - (sPAR[17] * (X[7] * (X[14] + X[4]))))))));
    F[5]=(sPAR[0] * ((sPAR[17] * (X[4] * X[7])) + (((-(sPAR[8])) - sPAR[3]) * X[5])));
    F[4]=((-(sPAR[0])) * ((sPAR[17] * (X[4] * X[7])) + ((sPAR[7] * (X[4] * X[17])) + ((sPAR[7] * (X[4] * X[13])) - (sPAR[8] * X[5])))));
    F[0]=((X[0] + ((-(X[11])) - abs((X[0] - X[11])))) * sPAR[13]);

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
    ACC[0]=0.0; //IIa_plus_1_2mIIa
    sPAR[0]=1.0; //compartment_1
    sPAR[1]=20000000.0; //k1
    sPAR[2]=0.4; //k10
    sPAR[3]=0.3; //k11
    sPAR[4]=1.15; //k12
    sPAR[5]=8.199999999999999; //k13
    sPAR[6]=32.0; //k14
    sPAR[7]=100000.0; //k15
    sPAR[8]=24.0; //k16
    sPAR[9]=44.0; //k17
    sPAR[10]=0.001; //k18
    sPAR[11]=70.0; //k19
    sPAR[12]=20000000.0; //k2
    sPAR[13]=0.02; //k20
    sPAR[14]=10000000.0; //k3
    sPAR[15]=20000000.0; //k4
    sPAR[16]=10000000.0; //k5
    sPAR[17]=100000000.0; //k6
    sPAR[18]=10000000.0; //k7
    sPAR[19]=400000000.0; //k8
    sPAR[20]=0.005; //k9
    X[0]=0.0; //I
    X[1]=1.4e-06; //II
    X[2]=0.0; //II_Va_Xa
    X[3]=0.0; //IIa
    X[4]=9e-08; //IX
    X[5]=0.0; //IX_TF_VIIa
    X[6]=0.0; //IXa
    X[7]=5e-09; //TF_VIIa
    X[8]=2e-08; //V
    X[9]=7e-10; //VIII
    X[10]=0.0; //VIIIa
    X[11]=0.0; //VIIIa_IXa
    X[12]=0.0; //Va
    X[13]=0.0; //Va_Xa
    X[14]=1.7e-07; //X
    X[15]=0.0; //X_TF_VIIa
    X[16]=0.0; //X_VIIIa_IXa
    X[17]=0.0; //Xa
    X[18]=0.0; //mIIa

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
