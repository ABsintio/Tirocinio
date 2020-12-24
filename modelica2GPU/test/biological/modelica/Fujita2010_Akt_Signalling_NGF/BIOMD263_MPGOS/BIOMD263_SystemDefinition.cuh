
#ifndef BIOMD263_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD263_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[0]=(sPAR[3] + (piecewise(sPAR[1], T <= sPAR[20], 0.0) + (sPAR[2] * (T / sPAR[21]))));
    ACC[3]=((X[7] + X[8]) * sPAR[19]);
    ACC[1]=((X[4] + X[5]) * sPAR[17]);
    ACC[2]=(X[6] * sPAR[18]);
    F[9]=0.0;
    F[6]=(sPAR[0] * ((sPAR[10] * X[5]) - (sPAR[12] * X[6])));
    F[5]=(sPAR[0] * ((sPAR[9] * (X[4] * X[2])) + (((-(sPAR[16])) - sPAR[10]) * X[5])));
    F[2]=(sPAR[0] * ((sPAR[12] * X[6]) + ((sPAR[16] * X[5]) - (sPAR[9] * (X[4] * X[2])))));
    F[4]=(sPAR[0] * ((sPAR[7] * X[8]) + ((sPAR[10] * X[5]) + ((sPAR[16] * X[5]) + (X[4] * (((-(sPAR[9])) * X[2]) - sPAR[11]))))));
    F[0]=(sPAR[0] * ((sPAR[11] * X[4]) + ((sPAR[15] * X[8]) - (sPAR[6] * (X[7] * X[0])))));
    F[8]=(sPAR[0] * ((sPAR[6] * (X[7] * X[0])) + (((-(sPAR[15])) - sPAR[7]) * X[8])));
    F[7]=(sPAR[0] * ((sPAR[7] * X[8]) + ((sPAR[13] * X[1]) + ((sPAR[15] * X[8]) + (X[7] * (((-(sPAR[6])) * X[0]) - sPAR[8]))))));
    F[3]=(sPAR[0] * ((sPAR[4] * X[9]) + ((sPAR[14] * X[1]) + (((-(sPAR[5])) * (ACC[0] * X[3])) - (sPAR[4] * X[3])))));
    F[1]=(sPAR[0] * ((sPAR[5] * (ACC[0] * X[3])) + (((-(sPAR[14])) - sPAR[13]) * X[1])));

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
    ACC[0]=0.0; //NGF
    ACC[1]=0.0; //pAkt_total
    ACC[2]=0.0; //pS6_total
    ACC[3]=0.0; //pTrkA_total
    sPAR[0]=1.0; //Cell
    sPAR[1]=0.0; //NGF_conc_pulse
    sPAR[2]=30.0; //NGF_conc_ramp
    sPAR[3]=0.0; //NGF_conc_step
    sPAR[4]=0.0011032440769796; //TrkA_turnover
    sPAR[5]=0.00269408; //k1_0
    sPAR[6]=0.0882701; //k1_1
    sPAR[7]=0.0202517; //k1_2
    sPAR[8]=0.06840839999999999; //k1_3
    sPAR[9]=68.36660000000001; //k1_4
    sPAR[10]=0.0056515; //k1_5
    sPAR[11]=1.28135; //k1_6
    sPAR[12]=0.000293167; //k1_7
    sPAR[13]=0.00833178; //k1_9
    sPAR[14]=0.0133747; //k2_0
    sPAR[15]=1.47518e-10; //k2_1
    sPAR[16]=5.23519; //k2_4
    sPAR[17]=2.42381211094508; //pAkt_scaleFactor
    sPAR[18]=0.5258427182630691; //pS6_scaleFactor
    sPAR[19]=0.848783474941268; //pTrkA_scaleFactor
    sPAR[20]=60.0; //pulse_time
    sPAR[21]=3600.0; //ramp_time
    X[0]=1.15594897919397; //Akt
    X[1]=0.0; //NGF_TrkA
    X[2]=3.552336039555; //S6
    X[9]=8.520650905182761; //pro_TrkA
    X[3]=X[9]; //TrkA
    X[4]=0.0; //pAkt
    X[5]=0.0; //pAkt_S6
    X[6]=0.0; //pS6
    X[7]=0.0; //pTrkA
    X[8]=0.0; //pTrkA_Akt

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
