
#ifndef BIOMD395_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD395_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[7]=0.0;
    F[12]=((sPAR[9] * X[11]) + ((sPAR[24] * X[19]) - (X[12] * (sPAR[10] + (sPAR[23] * X[17])))));
    F[11]=((X[13] * ((sPAR[8] * X[10]) - (sPAR[22] * (X[16] * X[11])))) + ((sPAR[23] * (X[12] * X[17])) - (sPAR[9] * X[11])));
    F[10]=((X[8] * (sPAR[16] * (X[5] * X[6]))) + (X[13] * ((sPAR[22] * (X[16] * X[11])) - (sPAR[8] * X[10]))));
    F[9]=((sPAR[13] * (X[19] * X[20])) + (((-(sPAR[27])) - sPAR[14]) * X[9]));
    F[8]=0.0;
    F[6]=((-(X[8])) * (sPAR[16] * (X[5] * X[6])));
    F[5]=((-(X[8])) * (sPAR[16] * (X[5] * X[6])));
    F[4]=((sPAR[11] * (X[3] * X[2])) + ((sPAR[26] * X[21]) + (((-(sPAR[12])) - sPAR[25]) * X[4])));
    F[2]=((sPAR[25] * X[4]) - (sPAR[11] * (X[3] * X[2])));
    F[19]=((X[15] * ((sPAR[20] - sPAR[18]) * (X[19] / ((1.0 + (2.0 * (X[19] / sPAR[6]))) * sPAR[6])))) + ((sPAR[10] * X[12]) + ((sPAR[27] * X[9]) + (((-(X[19])) * (sPAR[24] + (sPAR[13] * X[20]))) - (X[15] * ((sPAR[20] - sPAR[18]) * (X[19] / (sPAR[6] * (1.0 + (2.0 * (X[19] / sPAR[6])))))))))));
    F[16]=(X[13] * ((sPAR[8] * X[10]) - (sPAR[22] * (X[16] * X[11]))));
    F[20]=((sPAR[27] * X[9]) - (sPAR[13] * (X[19] * X[20])));
    F[17]=((sPAR[9] * X[11]) + ((X[13] * (((sPAR[17] * (X[14] / sPAR[4])) - (sPAR[19] * (X[17] / sPAR[5]))) / (1.0 + ((X[17] / sPAR[5]) + (X[14] / sPAR[4]))))) - (sPAR[23] * (X[12] * X[17]))));
    F[15]=(X[13] * ((sPAR[7] * (X[14] * X[22])) - (sPAR[21] * (X[15] * X[1]))));
    F[14]=(X[13] * ((((sPAR[19] * (X[17] / sPAR[5])) - (sPAR[17] * (X[14] / sPAR[4]))) / (1.0 + ((X[17] / sPAR[5]) + (X[14] / sPAR[4])))) + ((sPAR[21] * (X[15] * X[1])) - (sPAR[7] * (X[14] * X[22])))));
    F[13]=((sPAR[15] * (X[18] * X[0])) - (sPAR[28] * X[13]));
    F[18]=((sPAR[28] * X[13]) - (sPAR[15] * (X[18] * X[0])));
    F[3]=((sPAR[25] * X[4]) - (sPAR[11] * (X[3] * X[2])));
    F[21]=((sPAR[12] * X[4]) + ((sPAR[14] * X[9]) - (sPAR[26] * X[21])));
    F[0]=((sPAR[28] * X[13]) - (sPAR[15] * (X[18] * X[0])));
    F[1]=(X[13] * ((sPAR[7] * (X[14] * X[22])) - (sPAR[21] * (X[15] * X[1]))));
    F[22]=(X[13] * ((sPAR[21] * (X[15] * X[1])) - (sPAR[7] * (X[14] * X[22]))));

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
    sPAR[0]=1.0; //c1
    sPAR[1]=1.0; //c4
    sPAR[2]=1.0; //c5
    sPAR[3]=1.0; //default
    sPAR[4]=0.215; //kM_r14_s46
    sPAR[5]=1.03; //kM_r14_s69
    sPAR[6]=0.79; //kM_r53_s70
    sPAR[7]=1.53; //kass_r15_s21
    sPAR[8]=1.0; //kass_r23_s21
    sPAR[9]=1.27; //kass_r25
    sPAR[10]=1.33; //kass_r26
    sPAR[11]=1.23; //kass_r51
    sPAR[12]=0.6; //kass_r52
    sPAR[13]=1.28; //kass_r54
    sPAR[14]=1.56; //kass_r55
    sPAR[15]=1.13; //kass_r7
    sPAR[16]=1.0; //kass_re24_s157
    sPAR[17]=1.75; //kcatn_r14
    sPAR[18]=1.62; //kcatn_r53
    sPAR[19]=1.146; //kcatp_r14
    sPAR[20]=1.29; //kcatp_r53
    sPAR[21]=0.89; //kdiss_r15_s21
    sPAR[22]=1.0; //kdiss_r23_s21
    sPAR[23]=0.73; //kdiss_r25
    sPAR[24]=0.61; //kdiss_r26
    sPAR[25]=0.46; //kdiss_r51
    sPAR[26]=1.67; //kdiss_r52
    sPAR[27]=0.71; //kdiss_r54
    sPAR[28]=1.122; //kdiss_r7
    X[0]=5.0; //s1
    X[1]=0.0; //s10
    X[2]=2.5; //s128
    X[3]=2.5; //s135
    X[4]=0.0; //s140
    X[5]=3.0; //s148
    X[6]=3.0; //s150
    X[7]=0.0; //s152
    X[8]=0.5; //s157
    X[9]=0.0; //s158
    X[10]=0.0; //s159
    X[11]=0.0; //s160
    X[12]=0.0; //s161
    X[13]=0.0; //s21
    X[14]=0.0; //s46
    X[15]=0.0; //s48
    X[16]=0.0; //s68
    X[17]=0.0; //s69
    X[18]=5.0; //s7
    X[19]=0.0; //s70
    X[20]=2.0; //s71
    X[21]=0.0; //s75
    X[22]=2.0; //s9

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
