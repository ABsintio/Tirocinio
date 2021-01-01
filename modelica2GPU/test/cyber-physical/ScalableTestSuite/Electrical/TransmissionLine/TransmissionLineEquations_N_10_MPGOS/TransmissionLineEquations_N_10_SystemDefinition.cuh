
#ifndef TRANSMISSIONLINEEQUATIONS_N_10_PERTHREAD_SYSTEMDEFINITION_H
#define TRANSMISSIONLINEEQUATIONS_N_10_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[1]=((-(X[18])) / -50.04948046732858);
    ACC[0]=(T > 0.0 ? 1.0 : 0.0);
    F[8]=((395256.9169960474 * (X[17] - X[18])) - (3952569.169960474 * (sPAR[6] * X[8])));
    F[7]=((395256.9169960474 * (X[16] - X[17])) - (3952569.169960474 * (sPAR[6] * X[7])));
    F[17]=(990099009.9009901 * (X[7] - X[8]));
    F[6]=((395256.9169960474 * (X[15] - X[16])) - (3952569.169960474 * (sPAR[6] * X[6])));
    F[16]=(990099009.9009901 * (X[6] - X[7]));
    F[5]=((395256.9169960474 * (X[14] - X[15])) - (3952569.169960474 * (sPAR[6] * X[5])));
    F[15]=(990099009.9009901 * (X[5] - X[6]));
    F[4]=((395256.9169960474 * (X[13] - X[14])) - (3952569.169960474 * (sPAR[6] * X[4])));
    F[14]=(990099009.9009901 * (X[4] - X[5]));
    F[3]=((395256.9169960474 * (X[12] - X[13])) - (3952569.169960474 * (sPAR[6] * X[3])));
    F[13]=(990099009.9009901 * (X[3] - X[4]));
    F[2]=((395256.9169960474 * (X[11] - X[12])) - (3952569.169960474 * (sPAR[6] * X[2])));
    F[12]=(990099009.9009901 * (X[2] - X[3]));
    F[1]=((395256.9169960474 * (X[10] - X[11])) - (3952569.169960474 * (sPAR[6] * X[1])));
    F[11]=(990099009.9009901 * (X[1] - X[2]));
    F[0]=((395256.9169960474 * (X[9] - X[10])) - (3952569.169960474 * (sPAR[6] * X[0])));
    F[10]=(990099009.9009901 * (X[0] - X[1]));
    F[18]=(990099009.9009901 * (X[8] - ACC[1]));
    F[9]=X[19];
    F[19]=((ACC[0] - (X[9] + (2.0 * (X[19] / sPAR[8])))) * pow(sPAR[8],2.0));

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
    ACC[0]=0.0; //Vstep
    ACC[1]=0.0; //cur[10]
    sPAR[0]=100.0; //L
    sPAR[1]=50.04948046732858; //RL
    sPAR[2]=5.054997527200187e-07; //TD
    sPAR[3]=1.01e-10; //cap
    sPAR[4]=2.53e-07; //ind
    sPAR[5]=10.0; //l
    sPAR[6]=4.8e-05; //res
    sPAR[7]=197824033.4677019; //v
    sPAR[8]=5000000.0; //w
    sPARi[0]=10; //N
    X[0]=0.0; //cur[1]
    X[1]=0.0; //cur[2]
    X[2]=0.0; //cur[3]
    X[3]=0.0; //cur[4]
    X[4]=0.0; //cur[5]
    X[5]=0.0; //cur[6]
    X[6]=0.0; //cur[7]
    X[7]=0.0; //cur[8]
    X[8]=0.0; //cur[9]
    X[9]=0.0; //vol[1]
    X[10]=0.0; //vol[2]
    X[11]=0.0; //vol[3]
    X[12]=0.0; //vol[4]
    X[13]=0.0; //vol[5]
    X[14]=0.0; //vol[6]
    X[15]=0.0; //vol[7]
    X[16]=0.0; //vol[8]
    X[17]=0.0; //vol[9]
    X[18]=0.0; //vol[10]
    X[19]=0.0; //vvol

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
