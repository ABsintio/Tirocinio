
#ifndef BIOMD249_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD249_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[13]=(1.0 / sPAR[5]);
    ACC[11]=(365.0 / sPAR[7]);
    ACC[9]=(sPAR[1] * ACC[11]);
    ACC[10]=(365.0 / sPAR[6]);
    ACC[8]=(sPAR[0] * ACC[10]);
    ACC[12]=(1.0 / sPAR[3]);
    ACC[0]=((X[0] + X[1]) / X[4]);
    ACC[2]=(ACC[8] * ACC[0]);
    ACC[1]=((X[2] + X[3]) / X[4]);
    ACC[3]=(ACC[9] * ACC[1]);
    ACC[7]=(X[8] / X[4]);
    ACC[4]=((X[5] + X[7]) / X[4]);
    ACC[5]=((X[6] + X[7]) / X[4]);
    ACC[6]=(X[7] / X[4]);
    F[7]=((ACC[10] * X[1]) + ((ACC[11] * X[3]) + (((-(ACC[12])) - ACC[13]) * X[7])));
    F[3]=(((1.0 - sPAR[4]) * (ACC[9] * ((X[2] + X[3]) * (X[5] / X[4])))) + (((-(ACC[12])) - ACC[11]) * X[3]));
    F[1]=(((1.0 - sPAR[4]) * (ACC[8] * ((X[0] + X[1]) * (X[6] / X[4])))) + (((-(ACC[12])) - ACC[10]) * X[1]));
    F[6]=((ACC[11] * X[2]) + (((-1.0 + sPAR[4]) * (ACC[8] * ((X[0] + X[1]) * (X[6] / X[4])))) + (((-(ACC[12])) - ACC[13]) * X[6])));
    F[5]=((ACC[10] * X[0]) + (((-1.0 + sPAR[4]) * (ACC[9] * ((X[2] + X[3]) * (X[5] / X[4])))) + (((-(ACC[12])) - ACC[13]) * X[5])));
    F[8]=((ACC[12] * X[4]) + ((ACC[13] * (X[5] + (X[6] + X[7]))) + ((((-(ACC[12])) * X[8]) - (ACC[8] * ((X[0] + X[1]) * ACC[7]))) - (ACC[9] * ((X[2] + X[3]) * ACC[7])))));
    F[0]=((ACC[8] * ((X[0] + X[1]) * ACC[7])) + (((-(ACC[12])) - ACC[10]) * X[0]));
    F[2]=((ACC[9] * ((X[2] + X[3]) * ACC[7])) + (((-(ACC[12])) - ACC[11]) * X[2]));
    F[4]=0.0;

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
    ACC[0]=0.0; //I_1_frac
    ACC[1]=0.0; //I_2_frac
    ACC[2]=0.0; //Lambda_1
    ACC[3]=0.0; //Lambda_2
    ACC[4]=0.0; //R1_frac
    ACC[5]=0.0; //R2_frac
    ACC[6]=0.0; //Rp_frac
    ACC[7]=0.0; //S_frac
    ACC[8]=0.0; //beta_1
    ACC[9]=0.0; //beta_2
    ACC[10]=0.0; //gamma_1
    ACC[11]=0.0; //gamma_2
    ACC[12]=0.0; //mu
    ACC[13]=0.0; //sigma
    sPAR[0]=17.0; //R0_1
    sPAR[1]=17.0; //R0_2
    sPAR[2]=1.0; //env
    sPAR[3]=50.0; //l_e
    sPAR[4]=0.2; //psi
    sPAR[5]=20.0; //tImm
    sPAR[6]=21.0; //tInf_1
    sPAR[7]=21.0; //tInf_2
    X[0]=0.003775; //I_1
    X[1]=0.0; //I_1p
    X[2]=1e-06; //I_2
    X[3]=0.0; //I_2p
    X[4]=1.0; //N
    X[5]=0.93733; //R_1
    X[6]=0.0; //R_2
    X[7]=0.0; //R_p
    X[8]=0.0588912; //S

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
