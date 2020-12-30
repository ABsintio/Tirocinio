
#ifndef BIOMD351_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD351_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[3]=(sPAR[2] * sPAR[15]);
    ACC[2]=(sPAR[1] * sPAR[14]);
    ACC[1]=(1.0 / ((-1.0 + sPAR[12]) * sPAR[3]));
    ACC[0]=piecewise(5.0,gt(T,1000.0),0.0);
    F[3]=((sPAR[12] * (sPAR[6] * (sPAR[3] * (ACC[0] * (X[2] / (1.0 + (sPAR[3] * ACC[0]))))))) + ((sPAR[17] * X[4]) + ((ACC[2] * X[1]) + ((2.0 * (ACC[3] * X[2])) + ((2.0 * ((-(sPAR[15])) * pow(X[3],2.0))) + (((-(sPAR[14])) * (X[3] * X[0])) - (sPAR[12] * (sPAR[6] * (sPAR[3] * (ACC[0] * (X[3] / (1.0 + (sPAR[3] * ACC[0])))))))))))));
    F[0]=((sPAR[12] * (sPAR[6] * (sPAR[3] * (ACC[0] * (X[1] / (1.0 + (sPAR[3] * ACC[0]))))))) + (sPAR[16] + ((ACC[2] * X[1]) + (((-(sPAR[14])) * (X[3] * X[0])) - (sPAR[5] * X[0])))));
    F[2]=((sPAR[15] * pow(X[3],2.0)) + ((((-(ACC[3])) - sPAR[8]) * X[2]) - (sPAR[12] * (sPAR[6] * (sPAR[3] * (ACC[0] * (X[2] / (1.0 + (sPAR[3] * ACC[0])))))))));
    F[1]=((sPAR[14] * (X[3] * X[0])) + ((((-(ACC[2])) - sPAR[7]) * X[1]) - (sPAR[12] * (sPAR[6] * (sPAR[3] * (ACC[0] * (X[1] / (1.0 + (sPAR[3] * ACC[0])))))))));
    F[4]=(((1.0 + (sPAR[11] * (X[0] * ((1.0 + (sPAR[18] * (sPAR[10] * (X[0] / sPAR[0])))) / sPAR[0])))) / (1.0 + ((X[0] * ((1.0 + (sPAR[18] * (X[0] / sPAR[0]))) / sPAR[0])) + ((sPAR[20] * (X[0] * (X[3] / (sPAR[1] * sPAR[0])))) + ((sPAR[19] * (X[1] / sPAR[0])) + sPAR[13]))))) - (sPAR[9] * X[4]));

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
    ACC[0]=0.0; //aux
    ACC[1]=0.11; //aux_basal
    ACC[2]=10.0; //kprime_IA
    ACC[3]=10.0; //kprime_II
    sPAR[0]=100.0; //B_d
    sPAR[1]=10.0; //K_IA
    sPAR[2]=10.0; //K_II
    sPAR[3]=1.0; //K_aux
    sPAR[4]=1.0; //compartment_0000001
    sPAR[5]=0.003; //d_A
    sPAR[6]=0.05; //d_I
    sPAR[7]=0.003; //d_IA
    sPAR[8]=0.003; //d_II
    sPAR[9]=0.007; //d_r
    sPAR[10]=10.0; //f_A
    sPAR[11]=10.0; //f_c
    sPAR[12]=10.0; //gamma_I
    sPAR[13]=10.0; //k_Am
    sPAR[14]=1.0; //k_IA
    sPAR[15]=1.0; //k_II
    sPAR[16]=1.0; //pi_A
    sPAR[17]=1.0; //pi_I
    sPAR[18]=10.0; //w_A
    sPAR[19]=10.0; //w_D
    sPAR[20]=10.0; //w_I
    X[0]=10.0; //A
    X[1]=10.0; //D_IA
    X[2]=10.0; //D_II
    X[3]=10.0; //I
    X[4]=1.0; //R

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
