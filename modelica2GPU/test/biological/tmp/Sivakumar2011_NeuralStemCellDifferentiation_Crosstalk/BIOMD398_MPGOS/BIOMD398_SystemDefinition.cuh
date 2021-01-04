
#ifndef BIOMD398_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD398_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[22]=((sPAR[16] * (X[20] * X[21])) - (sPAR[29] * X[22]));
    F[21]=((sPAR[29] * X[22]) - (sPAR[16] * (X[20] * X[21])));
    F[20]=((sPAR[29] * X[22]) - (sPAR[16] * (X[20] * X[21])));
    F[11]=0.0;
    F[10]=(sPAR[8] * (sPAR[7] * (((sPAR[23] * (X[8] * X[9])) - (sPAR[36] * X[10])) / ((sPAR[8] + X[11]) * (sPAR[7] + X[7])))));
    F[9]=((sPAR[37] * X[19]) + (((-(sPAR[24])) * X[9]) - (sPAR[8] * (sPAR[7] * (((sPAR[23] * (X[8] * X[9])) - (sPAR[36] * X[10])) / ((sPAR[7] + X[7]) * (sPAR[8] + X[11])))))));
    F[8]=((-(sPAR[8])) * (sPAR[7] * (((sPAR[23] * (X[8] * X[9])) - (sPAR[36] * X[10])) / ((sPAR[8] + X[11]) * (sPAR[7] + X[7])))));
    F[7]=(X[4] * (((sPAR[26] * (X[5] * (X[6] / (sPAR[38] * sPAR[12])))) - (sPAR[25] * (X[7] / sPAR[12]))) / (1.0 + (((X[5] + X[6]) / sPAR[38]) + ((X[5] * (X[6] / (sPAR[38] * sPAR[12]))) + (X[7] / sPAR[12]))))));
    F[6]=(X[4] * (((sPAR[25] * (X[7] / sPAR[12])) - (sPAR[26] * (X[5] * (X[6] / (sPAR[38] * sPAR[12]))))) / (1.0 + (((X[5] + X[6]) / sPAR[38]) + ((X[5] * (X[6] / (sPAR[38] * sPAR[12]))) + (X[7] / sPAR[12]))))));
    F[5]=(X[4] * (((sPAR[25] * (X[7] / sPAR[12])) - (sPAR[26] * (X[5] * (X[6] / (sPAR[38] * sPAR[12]))))) / (1.0 + (((X[5] + X[6]) / sPAR[38]) + ((X[5] * (X[6] / (sPAR[38] * sPAR[12]))) + (X[7] / sPAR[12]))))));
    F[4]=((sPAR[22] * (X[2] * X[3])) - (sPAR[35] * X[4]));
    F[3]=((sPAR[35] * X[4]) - (sPAR[22] * (X[2] * X[3])));
    F[2]=((sPAR[35] * X[4]) - (sPAR[22] * (X[2] * X[3])));
    F[1]=0.0;
    F[0]=((sPAR[6] * (((sPAR[20] * (X[25] * X[26])) - (sPAR[33] * X[0])) / (sPAR[6] + X[1]))) + ((sPAR[34] * X[19]) - (sPAR[21] * X[0])));
    F[26]=(sPAR[6] * (((sPAR[33] * X[0]) - (sPAR[20] * (X[25] * X[26]))) / (sPAR[6] + X[1])));
    F[25]=(sPAR[6] * (((sPAR[33] * X[0]) - (sPAR[20] * (X[25] * X[26]))) / (sPAR[6] + X[1])));
    F[24]=0.0;
    F[23]=(X[24] * ((sPAR[32] * X[19]) - (sPAR[19] * X[23])));
    F[19]=((sPAR[15] * X[18]) + ((sPAR[21] * X[0]) + ((sPAR[24] * X[9]) + ((X[24] * ((sPAR[19] * X[23]) - (sPAR[32] * X[19]))) + ((((-(sPAR[37])) - sPAR[34]) - sPAR[28]) * X[19])))));
    F[18]=((sPAR[14] * (X[12] * X[17])) + ((sPAR[28] * X[19]) + (((-(sPAR[15])) - sPAR[27]) * X[18])));
    F[17]=((sPAR[27] * X[18]) - (sPAR[14] * (X[12] * X[17])));
    F[16]=0.0;
    F[15]=0.0;
    F[14]=(sPAR[5] * (X[15] * (sPAR[13] * (((X[13] * (sqrt((sPAR[3] * (sPAR[10] / (((sPAR[11] * sPAR[4]) * sPAR[9]) * sPAR[2])))) / sPAR[10])) - (X[12] * (X[14] * (sqrt((sPAR[2] * (sPAR[9] * (sPAR[4] * (sPAR[11] / (sPAR[10] * sPAR[3])))))) / (sPAR[11] * sPAR[9]))))) / (((X[13] / sPAR[10]) + ((1.0 + (X[12] / sPAR[9])) * (1.0 + (X[14] / sPAR[11])))) * (sPAR[5] + X[16]))))));
    F[13]=((-(sPAR[5])) * (X[15] * (sPAR[13] * (((X[13] * (sqrt((sPAR[3] * (sPAR[10] / (((sPAR[11] * sPAR[4]) * sPAR[9]) * sPAR[2])))) / sPAR[10])) - (X[12] * (X[14] * (sqrt((sPAR[2] * (sPAR[9] * (sPAR[4] * (sPAR[11] / (sPAR[10] * sPAR[3])))))) / (sPAR[11] * sPAR[9]))))) / (((X[13] / sPAR[10]) + ((1.0 + (X[12] / sPAR[9])) * (1.0 + (X[14] / sPAR[11])))) * (sPAR[5] + X[16]))))));
    F[12]=((sPAR[5] * (X[15] * (sPAR[13] * (((X[13] * (sqrt((sPAR[3] * (sPAR[10] / (((sPAR[11] * sPAR[4]) * sPAR[9]) * sPAR[2])))) / sPAR[10])) - (X[12] * (X[14] * (sqrt((sPAR[2] * (sPAR[9] * (sPAR[4] * (sPAR[11] / (sPAR[10] * sPAR[3])))))) / (sPAR[9] * sPAR[11]))))) / ((sPAR[5] + X[16]) * ((X[13] / sPAR[10]) + ((1.0 + (X[12] / sPAR[9])) * (1.0 + (X[14] / sPAR[11]))))))))) + ((sPAR[27] * X[18]) - (sPAR[14] * (X[12] * X[17]))));

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
    sPAR[1]=1.0; //default
    sPAR[2]=1.0; //kG_s53
    sPAR[3]=1.0; //kG_s57
    sPAR[4]=1.0; //kG_s58
    sPAR[5]=1.0; //kI_re29_s61
    sPAR[6]=1.0; //kI_re36_s101
    sPAR[7]=1.0; //kI_re42_s135
    sPAR[8]=1.0; //kI_re42_s147
    sPAR[9]=1.0; //kM_re29_s60_s53
    sPAR[10]=1.0; //kM_re29_s60_s57
    sPAR[11]=1.0; //kM_re29_s60_s58
    sPAR[12]=1.0; //kM_re40_s124
    sPAR[13]=1.0; //kV_re29_s60
    sPAR[14]=1.0; //kass_re31
    sPAR[15]=1.0; //kass_re32
    sPAR[16]=1.0; //kass_re33
    sPAR[17]=1.0; //kass_re34_s85
    sPAR[18]=1.0; //kass_re34_s89
    sPAR[19]=1.0; //kass_re35_s89
    sPAR[20]=1.0; //kass_re36
    sPAR[21]=1.0; //kass_re37
    sPAR[22]=1.0; //kass_re38
    sPAR[23]=1.0; //kass_re42
    sPAR[24]=1.0; //kass_re43
    sPAR[25]=1.0; //kcatn_re40
    sPAR[26]=1.0; //kcatp_re40
    sPAR[27]=1.0; //kdiss_re31
    sPAR[28]=1.0; //kdiss_re32
    sPAR[29]=1.0; //kdiss_re33
    sPAR[30]=1.0; //kdiss_re34_s85
    sPAR[31]=1.0; //kdiss_re34_s89
    sPAR[32]=1.0; //kdiss_re35_s89
    sPAR[33]=1.0; //kdiss_re36
    sPAR[34]=1.0; //kdiss_re37
    sPAR[35]=1.0; //kdiss_re38
    sPAR[36]=1.0; //kdiss_re42
    sPAR[37]=1.0; //kdiss_re43
    sPAR[38]=1.0; //ki_re40_s124
    X[0]=0.0; //s100
    X[1]=100.0; //s101
    X[2]=5.0; //s107
    X[3]=5.0; //s109
    X[4]=0.0; //s111
    X[5]=5.0; //s122
    X[6]=5.0; //s124
    X[7]=0.0; //s135
    X[8]=5.0; //s142
    X[9]=5.0; //s144
    X[10]=0.0; //s146
    X[11]=100.0; //s147
    X[12]=0.0; //s53
    X[13]=5.0; //s57
    X[14]=0.0; //s58
    X[15]=5.0; //s60
    X[16]=100.0; //s61
    X[17]=5.0; //s68
    X[18]=0.0; //s72
    X[19]=0.0; //s73
    X[20]=5.0; //s81
    X[21]=5.0; //s83
    X[22]=0.0; //s85
    X[23]=5.0; //s88
    X[24]=0.0; //s89
    X[25]=5.0; //s96
    X[26]=5.0; //s98

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
