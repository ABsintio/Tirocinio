
#ifndef BIOMD090_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD090_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[3]=(sPAR[6] - X[9]);
    ACC[2]=(sPAR[5] - X[7]);
    ACC[1]=(sPAR[1] - X[1]);
    ACC[0]=(sPAR[0] - X[0]);
    F[21]=0.0;
    F[14]=0.0;
    F[18]=0.0;
    F[4]=0.0;
    F[8]=0.0;
    F[2]=0.0;
    F[3]=0.0;
    F[16]=(sPAR[9] * ((sPAR[14] * X[10]) + (((-(sPAR[21])) * (X[15] * X[16])) - (sPAR[17] * X[16]))));
    F[12]=(sPAR[9] * ((sPAR[21] * (X[15] * X[16])) - (sPAR[22] * X[12])));
    F[15]=(sPAR[9] * ((sPAR[20] * (X[19] * X[7])) + (X[15] * (((-(sPAR[21])) * X[16]) - sPAR[16]))));
    F[20]=((sPAR[8] * (sPAR[26] / (1.0 + pow((X[12] / sPAR[3]),sPAR[30])))) - (sPAR[9] * (sPAR[18] * (X[20] * X[0]))));
    F[19]=(sPAR[9] * ((sPAR[19] * (X[11] * X[0])) - (sPAR[20] * (X[19] * X[7]))));
    F[11]=(sPAR[9] * ((sPAR[18] * (X[20] * X[0])) - (sPAR[19] * (X[11] * X[0]))));
    F[17]=((sPAR[8] * sPAR[27]) - (sPAR[10] * ((sPAR[13] * X[17]) + (sPAR[11] * (X[7] * (X[17] / (((sPAR[7] * X[7]) + X[17]) * (1.0 + pow((X[15] / sPAR[4]),sPAR[29])))))))));
    F[13]=((sPAR[8] * sPAR[28]) - (sPAR[9] * (sPAR[23] * (X[13] * ACC[2]))));
    F[7]=((2.0 * (sPAR[9] * (sPAR[23] * (X[13] * ACC[2])))) + ((4.0 * (sPAR[10] * (sPAR[25] * (X[9] * ACC[2])))) + ((-3.0 * (sPAR[9] * (sPAR[20] * (X[19] * X[7])))) - (sPAR[10] * (sPAR[11] * (X[7] * (X[17] / (((sPAR[7] * X[7]) + X[17]) * (1.0 + pow((X[15] / sPAR[4]),sPAR[29]))))))))));
    F[10]=((sPAR[9] * ((sPAR[23] * (X[13] * ACC[2])) - (sPAR[14] * X[10]))) - (sPAR[10] * (sPAR[24] * (X[10] * ACC[3]))));
    F[9]=(sPAR[10] * ((sPAR[24] * (X[10] * ACC[3])) - (sPAR[25] * (X[9] * ACC[2]))));
    F[0]=((sPAR[10] * (sPAR[15] * (X[1] * ACC[0]))) - (sPAR[9] * ((sPAR[18] * (X[20] * X[0])) + ((sPAR[19] * (X[11] * X[0])) + (sPAR[12] * X[0])))));
    F[1]=(sPAR[10] * ((3.0 * (sPAR[11] * (X[7] * (X[17] * (ACC[1] / ((((sPAR[7] * X[7]) + X[17]) * (1.0 + pow((X[15] / sPAR[4]),sPAR[29]))) * (sPAR[2] + ACC[1]))))))) - (sPAR[15] * (X[1] * ACC[0]))));
    F[6]=0.0;
    F[5]=0.0;

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
    ACC[0]=0.0; //A2c
    ACC[1]=0.0; //A2m
    ACC[2]=0.0; //N1
    ACC[3]=0.0; //S2
    sPAR[0]=2.0; //Ac
    sPAR[1]=2.0; //Am
    sPAR[2]=1.0; //Ka
    sPAR[3]=0.1; //Kc
    sPAR[4]=0.5; //Kh
    sPAR[5]=2.0; //N
    sPAR[6]=2.0; //S
    sPAR[7]=0.1; //a
    sPAR[8]=1.0; //c0
    sPAR[9]=1.0; //c1
    sPAR[10]=1.0; //c2
    sPAR[11]=10.0; //k11
    sPAR[12]=5.0; //k12
    sPAR[13]=10.0; //k14
    sPAR[14]=5.0; //k15
    sPAR[15]=10.0; //k16
    sPAR[16]=0.02; //k17
    sPAR[17]=1.0; //k18
    sPAR[18]=0.2; //k2
    sPAR[19]=0.2; //k3
    sPAR[20]=0.2; //k4
    sPAR[21]=0.1; //k5
    sPAR[22]=0.12; //k6
    sPAR[23]=10.0; //k7
    sPAR[24]=10.0; //k8
    sPAR[25]=10.0; //k9
    sPAR[26]=1.6; //k_v0
    sPAR[27]=80.0; //k_v10
    sPAR[28]=4.0; //k_v13
    sPAR[29]=4.0; //m
    sPAR[30]=4.0; //n
    X[0]=1.5; //A3c
    X[1]=1.5; //A3m
    X[2]=0.0; //C1
    X[3]=0.0; //C2
    X[4]=0.0; //H2O
    X[5]=0.0; //Hm
    X[6]=0.0; //Ho
    X[7]=2.0; //N2
    X[8]=0.0; //PPi
    X[9]=1.5; //S1
    X[10]=0.3; //aco
    X[11]=0.5; //aps
    X[12]=0.3; //cys
    X[13]=4.0; //eth
    X[14]=0.0; //eth_ex
    X[15]=0.5; //hyd
    X[16]=1.5; //oah
    X[17]=7.0; //oxy
    X[18]=0.0; //oxy_ex
    X[19]=0.4; //pap
    X[20]=0.4; //sul
    X[21]=0.0; //sul_ex

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
