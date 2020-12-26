
#ifndef BIOMD195_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD195_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[1]=1.0;
    ACC[0]=(X[4] + (-2.0 * (X[4] * (X[0] / (X[4] + (X[0] + ((1.0 / sPAR[7]) + pow((pow((X[4] + (X[0] + (1.0 / sPAR[7]))),2.0) + (-4.0 * (X[4] * X[0]))),0.5))))))));
    ACC[2]=GK(((sPAR[17] * X[7]) + (sPAR[18] * X[6])),(sPAR[19] + (sPAR[20] * (X[7] * ACC[0]))),sPAR[0],sPAR[1]);
    ACC[3]=(2.0 * (X[4] * (X[0] / (X[4] + (X[0] + ((1.0 / sPAR[7]) + pow((pow((X[4] + (X[0] + (1.0 / sPAR[7]))),2.0) + (-4.0 * (X[4] * X[0]))),0.5)))))));
    F[6]=((sPAR[15] * ACC[2]) - (sPAR[16] * X[6]));
    F[3]=(((sPAR[24] + (sPAR[25] * X[1])) * ((1.0 - X[3]) / (1.0 + (sPAR[2] - X[3])))) + ((((-(sPAR[27])) * (X[6] * X[3])) - (sPAR[26] * (X[7] * (ACC[0] * X[3])))) / (sPAR[3] + X[3])));
    F[2]=(sPAR[28] + ((sPAR[29] * (pow((ACC[0] * (X[7] / sPAR[4])),sPAR[36]) / (1.0 + pow((ACC[0] * (X[7] / sPAR[4])),sPAR[36])))) - (sPAR[30] * X[2])));
    F[5]=((sPAR[33] * (X[7] * (ACC[0] * (1.0 - X[5])))) - (sPAR[10] * X[5]));
    F[0]=(sPAR[11] + ((((-(sPAR[12])) * X[0]) - (sPAR[13] * (X[6] * X[0]))) - (sPAR[14] * (X[7] * (ACC[0] * X[0])))));
    F[1]=((sPAR[31] * (X[5] * ((X[2] - X[1]) / (sPAR[5] + (X[2] - X[1]))))) + (X[1] * (((-(sPAR[32])) / (sPAR[6] + X[1])) - sPAR[30])));
    F[4]=(sPAR[9] + ((((-(sPAR[21])) * X[4]) - (sPAR[22] * (X[3] * X[4]))) - (sPAR[23] * (X[1] * X[4]))));
    F[7]=(sPAR[35] * (X[7] * (1.0 - (X[7] / sPAR[34]))));

}

template<class Precision> __forceinline__ __device__ void PerThread_EventFunction(
	int tid, int NT, Precision*	  EF, \
	Precision     T, Precision    dT, Precision*    TD, Precision*	X, \
	Precision* cPAR, Precision* sPAR, int*       sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[4]=ACC[0] < 0.1;

    EF[0] = (! (ACC[4]));
}

template<class Precision> __forceinline__ __device__ void PerThread_ActionAfterEventDetection(
    int tid, int NT, int IDX, int& UDT, \
    Precision    &T, Precision   &dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR, int*       sPARi, Precision* ACC, int* ACCi
) {
    if (IDX == 0){
	    X[7]=(0.5 * X[7]);
    }

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
    ACC[0]=0.0; //CycB
    ACC[1]=1.0; //Mad
    ACC[2]=0.0; //TF
    ACC[3]=0.0; //Trimer
    ACC[4]=0.0; //$whenCondition1
    sPAR[0]=0.01; //J15
    sPAR[1]=0.01; //J16
    sPAR[2]=0.04; //J3
    sPAR[3]=0.04; //J4
    sPAR[4]=0.3; //J5
    sPAR[5]=0.001; //J7
    sPAR[6]=0.001; //J8
    sPAR[7]=1000.0; //Keq
    sPAR[8]=1.0; //cell
    sPAR[9]=0.04; //k1
    sPAR[10]=0.02; //k10
    sPAR[11]=1.0; //k11
    sPAR[12]=0.2; //k12p
    sPAR[13]=50.0; //k12pp
    sPAR[14]=100.0; //k12ppp
    sPAR[15]=1.0; //k13
    sPAR[16]=1.0; //k14
    sPAR[17]=1.5; //k15p
    sPAR[18]=0.05; //k15pp
    sPAR[19]=1.0; //k16p
    sPAR[20]=3.0; //k16pp
    sPAR[21]=0.04; //k2p
    sPAR[22]=1.0; //k2pp
    sPAR[23]=1.0; //k2ppp
    sPAR[24]=1.0; //k3p
    sPAR[25]=10.0; //k3pp
    sPAR[26]=35.0; //k4
    sPAR[27]=2.0; //k4p
    sPAR[28]=0.005; //k5p
    sPAR[29]=0.2; //k5pp
    sPAR[30]=0.1; //k6
    sPAR[31]=1.0; //k7
    sPAR[32]=0.5; //k8
    sPAR[33]=0.1; //k9
    sPAR[34]=10.0; //mmax
    sPAR[35]=0.005; //mu
    sPAR[36]=4.0; //n
    X[0]=0.001; //CKIt
    X[1]=0.001; //Cdc20a
    X[2]=0.001; //Cdc20t
    X[3]=0.001; //Cdh1
    X[4]=0.001; //CycBt
    X[5]=0.001; //IEP
    X[6]=0.001; //SK
    X[7]=0.5; //m

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
