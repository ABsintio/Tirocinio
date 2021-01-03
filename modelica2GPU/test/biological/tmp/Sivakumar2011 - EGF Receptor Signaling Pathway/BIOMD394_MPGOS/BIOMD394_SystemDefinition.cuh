
#ifndef BIOMD394_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD394_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[8]=((-(sPAR[6])) * (sPAR[0] * (X[5] * (X[8] / (((sPAR[18] * (sPAR[39] + X[5])) + (X[8] * (sPAR[17] + X[5]))) * (sPAR[6] + X[6]))))));
    F[7]=(sPAR[6] * (sPAR[0] * (X[5] * (X[8] / (((sPAR[18] * (sPAR[39] + X[5])) + (X[8] * (sPAR[17] + X[5]))) * (sPAR[6] + X[6]))))));
    F[6]=0.0;
    F[5]=((X[18] * ((sPAR[20] * pow(X[0],2.0)) - (sPAR[35] * X[5]))) - (sPAR[6] * (sPAR[0] * (X[5] * (X[8] / ((sPAR[6] + X[6]) * ((sPAR[18] * (sPAR[39] + X[5])) + (X[8] * (sPAR[17] + X[5])))))))));
    F[4]=0.0;
    F[3]=(X[7] * (X[1] * ((sPAR[21] * X[2]) - (sPAR[36] * X[3]))));
    F[2]=((-(X[7])) * (X[1] * ((sPAR[21] * X[2]) - (sPAR[36] * X[3]))));
    F[1]=0.0;
    F[0]=(-2.0 * (X[18] * ((sPAR[20] * pow(X[0],2.0)) - (sPAR[35] * X[5]))));
    F[18]=0.0;
    F[12]=(sPAR[3] * (sPAR[4] * (sPAR[5] * (((X[1] * (((sPAR[31] * (X[11] / sPAR[11])) - (sPAR[26] * (X[12] / sPAR[12]))) / (1.0 + ((X[11] / sPAR[11]) + (X[12] / sPAR[12]))))) + (X[20] * (((sPAR[32] * (X[11] / sPAR[13])) - (sPAR[27] * (X[12] / sPAR[14]))) / (1.0 + ((X[11] / sPAR[13]) + (X[12] / sPAR[14])))))) / (((sPAR[4] + X[17]) * (sPAR[3] + X[10])) * (sPAR[5] + X[21]))))));
    F[11]=((-(sPAR[3])) * (sPAR[4] * (sPAR[5] * (((X[1] * (((sPAR[31] * (X[11] / sPAR[11])) - (sPAR[26] * (X[12] / sPAR[12]))) / (1.0 + ((X[11] / sPAR[11]) + (X[12] / sPAR[12]))))) + (X[20] * (((sPAR[32] * (X[11] / sPAR[13])) - (sPAR[27] * (X[12] / sPAR[14]))) / (1.0 + ((X[11] / sPAR[13]) + (X[12] / sPAR[14])))))) / (((sPAR[4] + X[17]) * (sPAR[3] + X[10])) * (sPAR[5] + X[21]))))));
    F[22]=((sPAR[19] * X[16]) - (sPAR[34] * X[22]));
    F[21]=0.0;
    F[20]=0.0;
    F[19]=(X[4] * (((sPAR[29] * (X[17] / sPAR[7])) - (sPAR[24] * (X[19] / sPAR[8]))) / (1.0 + ((X[17] / sPAR[7]) + (X[19] / sPAR[8])))));
    F[17]=(X[4] * (((sPAR[24] * (X[19] / sPAR[8])) - (sPAR[29] * (X[17] / sPAR[7]))) / (1.0 + ((X[17] / sPAR[7]) + (X[19] / sPAR[8])))));
    F[16]=((X[14] * (((sPAR[30] * (X[15] / sPAR[9])) - (sPAR[25] * (X[16] / sPAR[10]))) / (1.0 + ((X[15] / sPAR[9]) + (X[16] / sPAR[10]))))) + ((sPAR[34] * X[22]) - (sPAR[19] * X[16])));
    F[15]=(X[14] * (((sPAR[25] * (X[16] / sPAR[10])) - (sPAR[30] * (X[15] / sPAR[9]))) / (1.0 + ((X[15] / sPAR[9]) + (X[16] / sPAR[10])))));
    F[14]=(X[12] * (((sPAR[33] * (X[13] / sPAR[15])) - (sPAR[28] * (X[14] / sPAR[16]))) / (1.0 + ((X[13] / sPAR[15]) + (X[14] / sPAR[16])))));
    F[13]=(X[12] * (((sPAR[28] * (X[14] / sPAR[16])) - (sPAR[33] * (X[13] / sPAR[15]))) / (1.0 + ((X[13] / sPAR[15]) + (X[14] / sPAR[16])))));
    F[10]=(X[7] * ((sPAR[23] * X[9]) - (sPAR[38] * X[10])));
    F[9]=(X[7] * ((sPAR[38] * X[10]) - (sPAR[23] * X[9])));

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
    sPAR[0]=1.0; //Vp_re11
    sPAR[1]=1.0; //c2
    sPAR[2]=1.0; //default
    sPAR[3]=0.583; //kI_r8_s22
    sPAR[4]=1.219; //kI_r8_s29
    sPAR[5]=0.293; //kI_r8_s33
    sPAR[6]=1.0; //kI_re11_s142
    sPAR[7]=1.459; //kM_r11_s29
    sPAR[8]=1.021; //kM_r11_s30
    sPAR[9]=0.038; //kM_r14_s27
    sPAR[10]=1.65; //kM_r14_s28
    sPAR[11]=0.47; //kM_r8_s124_s23
    sPAR[12]=0.786; //kM_r8_s124_s24
    sPAR[13]=0.614; //kM_r8_s31_s23
    sPAR[14]=1.367; //kM_r8_s31_s24
    sPAR[15]=0.626; //kM_r9_s25
    sPAR[16]=0.463; //kM_r9_s26
    sPAR[17]=1.0; //kM_re11_s129
    sPAR[18]=1.0; //kM_re11_s147
    sPAR[19]=2.0; //kass_r15
    sPAR[20]=0.73; //kass_r17_s3
    sPAR[21]=1.0; //kass_r4_s144
    sPAR[22]=1.0; //kass_r6_s144
    sPAR[23]=1.0; //kass_r7_s144
    sPAR[24]=0.5659999999999999; //kcatn_r11
    sPAR[25]=0.725; //kcatn_r14
    sPAR[26]=1.083; //kcatn_r8_s124
    sPAR[27]=0.636; //kcatn_r8_s31
    sPAR[28]=0.6929999999999999; //kcatn_r9
    sPAR[29]=0.787; //kcatp_r11
    sPAR[30]=0.5580000000000001; //kcatp_r14
    sPAR[31]=0.511; //kcatp_r8_s124
    sPAR[32]=0.727; //kcatp_r8_s31
    sPAR[33]=2.0; //kcatp_r9
    sPAR[34]=0.074; //kdiss_r15
    sPAR[35]=1.13; //kdiss_r17_s3
    sPAR[36]=1.0; //kdiss_r4_s144
    sPAR[37]=1.0; //kdiss_r6_s144
    sPAR[38]=1.0; //kdiss_r7_s144
    sPAR[39]=1.0; //ki_re11_s129
    X[0]=5.0; //s123
    X[1]=5.0; //s124
    X[2]=0.5; //s125
    X[3]=0.0; //s126
    X[4]=2.0; //s127
    X[5]=0.0; //s129
    X[6]=0.5; //s142
    X[7]=0.0; //s144
    X[8]=5.0; //s147
    X[9]=5.0; //s21
    X[10]=0.0; //s22
    X[11]=5.0; //s23
    X[12]=0.0; //s24
    X[13]=5.0; //s25
    X[14]=0.0; //s26
    X[15]=5.0; //s27
    X[16]=0.0; //s28
    X[17]=5.0; //s29
    X[18]=5.0; //s3
    X[19]=0.0; //s30
    X[20]=5.0; //s31
    X[21]=5.0; //s33
    X[22]=1.0; //s34

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
