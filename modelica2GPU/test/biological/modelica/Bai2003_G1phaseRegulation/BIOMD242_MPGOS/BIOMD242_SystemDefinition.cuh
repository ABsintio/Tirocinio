
#ifndef BIOMD242_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD242_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[0]=(sPAR[1] + ((-(X[2])) - X[3]));
    F[4]=(sPAR[7] * ((sPAR[5] * X[1]) + ((sPAR[13] * X[5]) + ((sPAR[14] * (pow(X[4],2.0) * X[1])) - (sPAR[10] * X[4])))));
    F[5]=(sPAR[7] * ((X[2] * ((sPAR[18] * (X[0] / (sPAR[22] + (X[2] + X[0])))) + (sPAR[19] * (X[1] / (sPAR[23] + (X[2] + X[1])))))) + ((sPAR[6] * ((sPAR[0] / ((1.0 / sPAR[17]) + sPAR[0])) + (sPAR[12] * X[5]))) + ((-(Mass_Action_2_1(sPAR[20],X[3],X[5]))) - (sPAR[11] * (X[4] * (X[5] / (sPAR[25] + X[4]))))))));
    F[2]=(sPAR[7] * (Mass_Action_2_1(sPAR[20],X[3],X[5]) + (X[2] * (((-(sPAR[18])) * (X[0] / (sPAR[22] + (X[2] + X[0])))) - (sPAR[19] * (X[1] / (sPAR[23] + (X[2] + X[1]))))))));
    F[1]=(sPAR[7] * ((sPAR[3] * ((sPAR[0] / ((1.0 / sPAR[16]) + sPAR[0])) + (sPAR[4] * X[5]))) - (sPAR[9] * (X[4] * X[1]))));
    F[0]=(sPAR[7] * ((sPAR[2] * (sPAR[0] / ((1.0 / sPAR[15]) + sPAR[0]))) - (sPAR[8] * (X[1] * X[0]))));
    F[3]=(sPAR[7] * ((sPAR[21] * (ACC[0] * (X[4] / (sPAR[24] + (sPAR[1] + (X[4] + ((-(X[3])) - X[2]))))))) - Mass_Action_2_1(sPAR[20],X[3],X[5])));

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
    ACC[0]=0.0; //Rb_phos
    sPAR[0]=6.3; //GF_1
    sPAR[1]=2.5; //RT_1
    sPAR[2]=0.4; //aD_1
    sPAR[3]=0.16; //aE_1
    sPAR[4]=0.9; //aF_1
    sPAR[5]=0.08; //aX_1
    sPAR[6]=0.05; //atheta_1
    sPAR[7]=1.0; //cell
    sPAR[8]=0.4; //dD_1
    sPAR[9]=0.2; //dE_1
    sPAR[10]=1.04; //dX_1
    sPAR[11]=0.12; //dtheta_1
    sPAR[12]=0.003; //fC_1_1
    sPAR[13]=0.35; //f_1
    sPAR[14]=0.528; //g_1
    sPAR[15]=0.05; //k1_1
    sPAR[16]=1000.0; //k2_1
    sPAR[17]=1.5; //k3_1
    sPAR[18]=0.48; //pD_1
    sPAR[19]=0.096; //pE_1
    sPAR[20]=0.6; //pS_1
    sPAR[21]=0.48; //pX_1
    sPAR[22]=0.6; //qD_1
    sPAR[23]=0.6; //qE_1
    sPAR[24]=0.8; //qX_1
    sPAR[25]=0.3; //qtheta_1
    X[0]=0.0; //D_1
    X[1]=0.0; //E_1
    X[2]=0.0; //RS_1
    X[3]=2.5; //R_1
    X[4]=0.0; //X_1
    X[5]=0.0; //theta_1

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
