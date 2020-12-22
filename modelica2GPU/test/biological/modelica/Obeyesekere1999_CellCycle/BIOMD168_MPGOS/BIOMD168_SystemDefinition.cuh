
#ifndef BIOMD168_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD168_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[2]=(X[3] + X[2]);
    ACC[1]=(sPAR[1] + ((-(X[2])) - X[3]));
    ACC[0]=(sPAR[20] - X[2]);
    F[0]=((sPAR[2] * (sPAR[12] * (sPAR[0] / (1.0 + (sPAR[12] * sPAR[0]))))) - (sPAR[7] * (X[1] * X[0])));
    F[1]=((sPAR[3] * (1.0 + (sPAR[5] * ACC[0]))) - (sPAR[8] * (X[4] * X[1])));
    F[2]=((sPAR[15] * (ACC[0] * X[3])) + (X[2] * (((-(sPAR[13])) * (X[0] / (sPAR[17] + (X[2] + X[0])))) - (sPAR[14] * (X[1] / (sPAR[18] + (X[2] + X[1])))))));
    F[3]=((sPAR[16] * (ACC[1] * (X[4] / (sPAR[19] + (ACC[1] + X[4]))))) - (sPAR[15] * (ACC[0] * X[3])));
    F[4]=((sPAR[4] * X[1]) + ((sPAR[10] * ACC[0]) + ((sPAR[11] * (pow(X[4],2.0) * X[1])) - (sPAR[9] * X[4]))));

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
    ACC[0]=0.0; //E2F_1
    ACC[1]=0.0; //RP_1
    ACC[2]=0.0; //unpho_RB
    sPAR[0]=6.3; //GF_1
    sPAR[1]=2.5; //RT_1
    sPAR[2]=0.4; //aD_1
    sPAR[3]=0.16; //aE_1
    sPAR[4]=0.08; //aX_1
    sPAR[5]=0.9; //af_1
    sPAR[6]=1.0; //cell_1
    sPAR[7]=0.4; //dD_1
    sPAR[8]=0.2; //dE_1
    sPAR[9]=1.04; //dX_1
    sPAR[10]=0.2; //f_1
    sPAR[11]=0.528; //g_1
    sPAR[12]=0.05; //k_1
    sPAR[13]=0.48; //pD_1
    sPAR[14]=0.096; //pE_1
    sPAR[15]=0.6; //pS_1
    sPAR[16]=0.48; //pX_1
    sPAR[17]=0.6; //qD_1
    sPAR[18]=0.6; //qE_1
    sPAR[19]=0.8; //qX_1
    sPAR[20]=1.5; //theta_1
    X[0]=0.1; //D_1
    X[1]=0.6; //E_1
    X[2]=1.0; //RS_1
    X[3]=0.5; //R_1
    X[4]=0.7; //X_1

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
