
#ifndef BIOMD396_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD396_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[35]=(sPAR[5] * (((sPAR[31] * (X[32] * X[33])) - (sPAR[55] * X[35])) / (sPAR[5] + X[34])));
    F[34]=0.0;
    F[33]=(sPAR[5] * (((sPAR[55] * X[35]) - (sPAR[31] * (X[32] * X[33]))) / (sPAR[5] + X[34])));
    F[32]=(sPAR[5] * (((sPAR[55] * X[35]) - (sPAR[31] * (X[32] * X[33]))) / (sPAR[5] + X[34])));
    F[31]=((sPAR[29] * X[14]) + ((sPAR[30] * X[15]) - (sPAR[54] * X[31])));
    F[29]=((X[4] * (((sPAR[46] * (X[30] * (X[21] / (sPAR[16] * sPAR[58])))) - (sPAR[37] * (X[29] / sPAR[16]))) / (1.0 + (((X[30] + X[21]) / sPAR[58]) + ((X[30] * (X[21] / (sPAR[16] * sPAR[58]))) + (X[29] / sPAR[16])))))) + (X[5] * (((sPAR[38] * (X[2] * (X[1] / (sPAR[17] * sPAR[18])))) - (sPAR[47] * (X[29] / sPAR[19]))) / ((X[29] / sPAR[19]) + ((1.0 + (X[2] / sPAR[18])) * (1.0 + (X[1] / sPAR[17])))))));
    F[28]=0.0;
    F[27]=(X[28] * (((sPAR[45] * (X[9] / sPAR[14])) - (sPAR[36] * (X[27] / sPAR[15]))) / (1.0 + ((X[9] / sPAR[14]) + (X[27] / sPAR[15])))));
    F[26]=((X[35] * (((sPAR[48] * (X[1] / sPAR[20])) - (sPAR[39] * (X[3] * (X[26] / (sPAR[22] * sPAR[21]))))) / ((X[1] / sPAR[20]) + ((1.0 + (X[3] / sPAR[21])) * (1.0 + (X[26] / sPAR[22])))))) + (sPAR[3] * (((sPAR[50] * X[8]) - (sPAR[25] * X[26])) / (sPAR[3] + X[9]))));
    F[25]=(X[5] * (((sPAR[44] * (X[24] / sPAR[12])) - (sPAR[35] * (X[25] * (X[1] / (sPAR[13] * sPAR[11]))))) / ((X[24] / sPAR[12]) + ((1.0 + (X[25] / sPAR[13])) * (1.0 + (X[1] / sPAR[11]))))));
    F[24]=((sPAR[4] * (((sPAR[28] * (X[21] * X[23])) - (sPAR[53] * X[24])) / (sPAR[4] + X[4]))) + (X[5] * (((sPAR[35] * (X[25] * (X[1] / (sPAR[11] * sPAR[13])))) - (sPAR[44] * (X[24] / sPAR[12]))) / ((X[24] / sPAR[12]) + ((1.0 + (X[25] / sPAR[13])) * (1.0 + (X[1] / sPAR[11])))))));
    F[23]=(sPAR[4] * (((sPAR[53] * X[24]) - (sPAR[28] * (X[21] * X[23]))) / (sPAR[4] + X[4])));
    F[22]=0.0;
    F[21]=((X[22] * (((sPAR[43] * (X[0] * (X[19] / (sPAR[57] * sPAR[10])))) - (sPAR[34] * (X[21] / sPAR[10]))) / (1.0 + (((X[0] + X[19]) / sPAR[57]) + ((X[0] * (X[19] / (sPAR[57] * sPAR[10]))) + (X[21] / sPAR[10])))))) + ((sPAR[4] * (((sPAR[53] * X[24]) - (sPAR[28] * (X[21] * X[23]))) / (sPAR[4] + X[4]))) + (X[4] * (((sPAR[37] * (X[29] / sPAR[16])) - (sPAR[46] * (X[30] * (X[21] / (sPAR[16] * sPAR[58]))))) / (1.0 + (((X[30] + X[21]) / sPAR[58]) + ((X[30] * (X[21] / (sPAR[16] * sPAR[58]))) + (X[29] / sPAR[16]))))))));
    F[2]=(X[5] * (((sPAR[47] * (X[29] / sPAR[19])) - (sPAR[38] * (X[2] * (X[1] / (sPAR[18] * sPAR[17]))))) / ((X[29] / sPAR[19]) + ((1.0 + (X[2] / sPAR[18])) * (1.0 + (X[1] / sPAR[17]))))));
    F[0]=(X[22] * (((sPAR[34] * (X[21] / sPAR[10])) - (sPAR[43] * (X[0] * (X[19] / (sPAR[57] * sPAR[10]))))) / (1.0 + (((X[0] + X[19]) / sPAR[57]) + ((X[0] * (X[19] / (sPAR[57] * sPAR[10]))) + (X[21] / sPAR[10]))))));
    F[20]=((sPAR[27] * X[16]) - (sPAR[52] * X[20]));
    F[18]=(X[17] * (((sPAR[33] * (X[16] / sPAR[9])) - (sPAR[42] * (X[8] * (X[18] / (sPAR[56] * sPAR[9]))))) / (1.0 + (((X[8] + X[18]) / sPAR[56]) + ((X[8] * (X[18] / (sPAR[56] * sPAR[9]))) + (X[16] / sPAR[9]))))));
    F[17]=0.0;
    F[16]=((X[17] * (((sPAR[42] * (X[8] * (X[18] / (sPAR[9] * sPAR[56])))) - (sPAR[33] * (X[16] / sPAR[9]))) / (1.0 + (((X[8] + X[18]) / sPAR[56]) + ((X[8] * (X[18] / (sPAR[9] * sPAR[56]))) + (X[16] / sPAR[9])))))) + ((sPAR[52] * X[20]) - (sPAR[27] * X[16])));
    F[15]=((sPAR[26] * (X[8] * (X[10] * (X[11] * X[13])))) + ((sPAR[54] * X[31]) + (((-(sPAR[30])) - sPAR[51]) * X[15])));
    F[8]=((sPAR[3] * (((sPAR[25] * X[26]) - (sPAR[50] * X[8])) / (sPAR[3] + X[9]))) + ((sPAR[51] * X[15]) + ((X[17] * (((sPAR[33] * (X[16] / sPAR[9])) - (sPAR[42] * (X[8] * (X[18] / (sPAR[9] * sPAR[56]))))) / (1.0 + (((X[8] + X[18]) / sPAR[56]) + ((X[8] * (X[18] / (sPAR[9] * sPAR[56]))) + (X[16] / sPAR[9])))))) - (sPAR[26] * (X[8] * (X[10] * (X[11] * X[13])))))));
    F[13]=((sPAR[51] * X[15]) - (sPAR[26] * (X[8] * (X[10] * (X[11] * X[13])))));
    F[14]=((X[8] * (((sPAR[32] * (X[10] * (X[12] / (sPAR[7] * sPAR[6])))) - (sPAR[41] * (X[14] / sPAR[8]))) / ((X[14] / sPAR[8]) + ((1.0 + (X[10] / sPAR[6])) * (1.0 + (X[12] / sPAR[7])))))) - (sPAR[29] * X[14]));
    F[12]=(X[8] * (((sPAR[41] * (X[14] / sPAR[8])) - (sPAR[32] * (X[10] * (X[12] / (sPAR[6] * sPAR[7]))))) / ((X[14] / sPAR[8]) + ((1.0 + (X[10] / sPAR[6])) * (1.0 + (X[12] / sPAR[7]))))));
    F[10]=((X[8] * (((sPAR[41] * (X[14] / sPAR[8])) - (sPAR[32] * (X[10] * (X[12] / (sPAR[7] * sPAR[6]))))) / ((X[14] / sPAR[8]) + ((1.0 + (X[10] / sPAR[6])) * (1.0 + (X[12] / sPAR[7])))))) + ((sPAR[51] * X[15]) - (sPAR[26] * (X[8] * (X[10] * (X[11] * X[13]))))));
    F[11]=((sPAR[51] * X[15]) - (sPAR[26] * (X[8] * (X[10] * (X[11] * X[13])))));
    F[9]=(X[28] * (((sPAR[36] * (X[27] / sPAR[15])) - (sPAR[45] * (X[9] / sPAR[14]))) / (1.0 + ((X[9] / sPAR[14]) + (X[27] / sPAR[15])))));
    F[7]=0.0;
    F[6]=(X[7] * (((sPAR[49] * (X[30] / sPAR[24])) - (sPAR[40] * (X[6] / sPAR[23]))) / (1.0 + ((X[30] / sPAR[24]) + (X[6] / sPAR[23])))));
    F[5]=0.0;
    F[3]=(X[35] * (((sPAR[48] * (X[1] / sPAR[20])) - (sPAR[39] * (X[3] * (X[26] / (sPAR[21] * sPAR[22]))))) / ((X[1] / sPAR[20]) + ((1.0 + (X[3] / sPAR[21])) * (1.0 + (X[26] / sPAR[22]))))));
    F[1]=((X[5] * ((((sPAR[44] * (X[24] / sPAR[12])) - (sPAR[35] * (X[25] * (X[1] / (sPAR[13] * sPAR[11]))))) / ((X[24] / sPAR[12]) + ((1.0 + (X[25] / sPAR[13])) * (1.0 + (X[1] / sPAR[11]))))) + (((sPAR[47] * (X[29] / sPAR[19])) - (sPAR[38] * (X[2] * (X[1] / (sPAR[18] * sPAR[17]))))) / ((X[29] / sPAR[19]) + ((1.0 + (X[2] / sPAR[18])) * (1.0 + (X[1] / sPAR[17]))))))) + (X[35] * (((sPAR[39] * (X[3] * (X[26] / (sPAR[22] * sPAR[21])))) - (sPAR[48] * (X[1] / sPAR[20]))) / ((X[1] / sPAR[20]) + ((1.0 + (X[3] / sPAR[21])) * (1.0 + (X[26] / sPAR[22])))))));
    F[30]=((X[7] * (((sPAR[40] * (X[6] / sPAR[23])) - (sPAR[49] * (X[30] / sPAR[24]))) / (1.0 + ((X[30] / sPAR[24]) + (X[6] / sPAR[23]))))) + (X[4] * (((sPAR[37] * (X[29] / sPAR[16])) - (sPAR[46] * (X[30] * (X[21] / (sPAR[16] * sPAR[58]))))) / (1.0 + (((X[30] + X[21]) / sPAR[58]) + ((X[30] * (X[21] / (sPAR[16] * sPAR[58]))) + (X[29] / sPAR[16])))))));
    F[19]=(X[22] * (((sPAR[34] * (X[21] / sPAR[10])) - (sPAR[43] * (X[0] * (X[19] / (sPAR[57] * sPAR[10]))))) / (1.0 + (((X[0] + X[19]) / sPAR[57]) + ((X[0] * (X[19] / (sPAR[57] * sPAR[10]))) + (X[21] / sPAR[10]))))));
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
    sPAR[0]=1.0; //c1
    sPAR[1]=1.0; //c5
    sPAR[2]=1.0; //default
    sPAR[3]=1.0; //kI_r10_s25
    sPAR[4]=1.5; //kI_r21_s2
    sPAR[5]=0.00594; //kI_re16_s81
    sPAR[6]=1.5; //kM_r11_s26
    sPAR[7]=1.0; //kM_r11_s28
    sPAR[8]=1.0; //kM_r11_s32
    sPAR[9]=1.0; //kM_r16_s39
    sPAR[10]=1.0; //kM_r18_s4
    sPAR[11]=1.5; //kM_r25_s15
    sPAR[12]=1.5; //kM_r25_s53
    sPAR[13]=1.25; //kM_r25_s60
    sPAR[14]=1.7; //kM_r26_s25
    sPAR[15]=1.61; //kM_r26_s64
    sPAR[16]=1.64; //kM_r28_s41
    sPAR[17]=1.87; //kM_r29_s15
    sPAR[18]=0.15; //kM_r29_s18
    sPAR[19]=1.61; //kM_r29_s67
    sPAR[20]=1.0; //kM_r8_s15
    sPAR[21]=2.0; //kM_r8_s19
    sPAR[22]=1.5; //kM_r8_s63
    sPAR[23]=0.05; //kM_r9_s22
    sPAR[24]=1.0; //kM_r9_s7
    sPAR[25]=2.0; //kass_r10
    sPAR[26]=0.5; //kass_r13
    sPAR[27]=1.5; //kass_r17
    sPAR[28]=1.5; //kass_r21
    sPAR[29]=1.95; //kass_r30
    sPAR[30]=0.055; //kass_r31
    sPAR[31]=0.004; //kass_re16
    sPAR[32]=0.5; //kcatn_r11
    sPAR[33]=1.0; //kcatn_r16
    sPAR[34]=1.5; //kcatn_r18
    sPAR[35]=1.5; //kcatn_r25
    sPAR[36]=1.0; //kcatn_r26
    sPAR[37]=1.48; //kcatn_r28
    sPAR[38]=1.78; //kcatn_r29
    sPAR[39]=1.5; //kcatn_r8
    sPAR[40]=0.04; //kcatn_r9
    sPAR[41]=0.5; //kcatp_r11
    sPAR[42]=1.0; //kcatp_r16
    sPAR[43]=1.0; //kcatp_r18
    sPAR[44]=1.0; //kcatp_r25
    sPAR[45]=0.5; //kcatp_r26
    sPAR[46]=1.71; //kcatp_r28
    sPAR[47]=1.86; //kcatp_r29
    sPAR[48]=0.5; //kcatp_r8
    sPAR[49]=1.5; //kcatp_r9
    sPAR[50]=0.01; //kdiss_r10
    sPAR[51]=2.0; //kdiss_r13
    sPAR[52]=1.5; //kdiss_r17
    sPAR[53]=1.5; //kdiss_r21
    sPAR[54]=2.0; //kdiss_r31
    sPAR[55]=2.0; //kdiss_re16
    sPAR[56]=1.0; //ki_r16_s39
    sPAR[57]=1.5; //ki_r18_s4
    sPAR[58]=1.28; //ki_r28_s41
    X[0]=5.0; //s1
    X[1]=5.0; //s15
    X[2]=0.0; //s18
    X[3]=0.0; //s19
    X[4]=5.0; //s2
    X[5]=0.5; //s21
    X[6]=0.0; //s22
    X[7]=0.5; //s23
    X[8]=0.0; //s24
    X[9]=0.64; //s25
    X[10]=5.0; //s26
    X[11]=0.5; //s27
    X[12]=5.0; //s28
    X[13]=0.5; //s29
    X[14]=0.0; //s32
    X[15]=0.0; //s35
    X[16]=0.0; //s37
    X[17]=0.6; //s38
    X[18]=0.5; //s39
    X[19]=5.0; //s4
    X[20]=0.0; //s40
    X[21]=0.0; //s41
    X[22]=5.0; //s42
    X[23]=5.0; //s48
    X[24]=0.0; //s53
    X[25]=0.0; //s60
    X[26]=0.0; //s63
    X[27]=0.0; //s64
    X[28]=0.33; //s65
    X[29]=0.0; //s67
    X[30]=5.0; //s7
    X[31]=0.0; //s75
    X[32]=5.0; //s76
    X[33]=5.0; //s77
    X[34]=0.0; //s81
    X[35]=0.0; //s82

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
