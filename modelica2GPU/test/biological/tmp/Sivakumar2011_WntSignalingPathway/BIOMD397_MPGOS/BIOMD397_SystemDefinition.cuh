
#ifndef BIOMD397_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD397_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[22]=((sPAR[40] * X[47]) - (sPAR[11] * X[22]));
    F[34]=((sPAR[43] * X[30]) - (sPAR[14] * (X[34] * X[9])));
    F[30]=((sPAR[14] * (X[34] * X[9])) - (sPAR[43] * X[30]));
    F[0]=((sPAR[34] * X[9]) - (sPAR[5] * (X[47] * X[0])));
    F[9]=((sPAR[5] * (X[47] * X[0])) + ((sPAR[43] * X[30]) + (((-(sPAR[14])) * (X[34] * X[9])) - (sPAR[34] * X[9]))));
    F[47]=((sPAR[11] * X[22]) + ((sPAR[34] * X[9]) + (X[47] * (((-(sPAR[5])) * X[0]) - sPAR[40]))));
    F[40]=((sPAR[21] * (X[19] * X[13])) + (((-(sPAR[50])) - sPAR[22]) * X[40]));
    F[39]=0.0;
    F[28]=((sPAR[27] * X[27]) + ((sPAR[56] * (X[48] * X[26])) + (((-(sPAR[28])) * X[28]) - (sPAR[55] * (X[7] * X[28])))));
    F[27]=((sPAR[26] * (X[25] * X[29])) + ((sPAR[55] * (X[7] * X[28])) + (((-(sPAR[27])) - sPAR[54]) * X[27])));
    F[25]=((sPAR[25] * (X[24] * X[48])) + ((sPAR[54] * X[27]) + (X[25] * (((-(sPAR[26])) * X[29]) - sPAR[53]))));
    F[48]=((sPAR[28] * X[28]) + ((sPAR[53] * X[25]) + (((-(sPAR[25])) * (X[24] * X[48])) - (sPAR[56] * (X[48] * X[26])))));
    F[37]=((sPAR[7] * (X[36] * X[2])) + ((sPAR[38] * X[45]) + (((-(sPAR[9])) - sPAR[36]) * X[37])));
    F[36]=((sPAR[6] * (X[35] * X[41])) + ((sPAR[36] * X[37]) + (X[36] * (((-(sPAR[7])) * X[2]) - sPAR[35]))));
    F[35]=((X[38] * ((sPAR[8] * (X[3] * X[42])) - (sPAR[37] * (X[35] * X[43])))) + ((sPAR[35] * X[36]) + ((sPAR[39] * X[38]) - (X[35] * (sPAR[10] + (sPAR[6] * X[41]))))));
    F[33]=((sPAR[30] * X[32]) + ((sPAR[59] * (X[10] * X[31])) + (((-(sPAR[31])) * X[33]) - (sPAR[58] * (X[1] * X[33])))));
    F[32]=((sPAR[29] * (X[8] * X[29])) + ((sPAR[58] * (X[1] * X[33])) + (((-(sPAR[30])) - sPAR[57]) * X[32])));
    F[31]=((sPAR[31] * X[33]) + (((-(sPAR[59])) * (X[10] * X[31])) - (sPAR[32] * X[31])));
    F[26]=((sPAR[28] * X[28]) + (((-(sPAR[56])) * (X[48] * X[26])) - (sPAR[33] * X[26])));
    F[29]=((sPAR[54] * X[27]) + ((sPAR[57] * X[32]) + (((-(sPAR[29])) * (X[8] * X[29])) - (sPAR[26] * (X[25] * X[29])))));
    F[24]=((sPAR[4] * (X[45] * (((sPAR[24] * (X[23] * pow(X[42],3.0))) - (sPAR[52] * (X[24] * pow(X[43],3.0)))) / (sPAR[4] + X[39])))) + ((sPAR[53] * X[25]) - (sPAR[25] * (X[24] * X[48]))));
    F[23]=((X[38] * ((sPAR[23] * (X[6] * X[42])) - (sPAR[51] * (X[23] * X[43])))) - (sPAR[4] * (X[45] * (((sPAR[24] * (X[23] * pow(X[42],3.0))) - (sPAR[52] * (X[24] * pow(X[43],3.0)))) / (sPAR[4] + X[39])))));
    F[19]=((sPAR[20] * (X[18] * X[14])) + ((sPAR[50] * X[40]) + (X[19] * (((-(sPAR[21])) * X[13]) - sPAR[49]))));
    F[18]=((sPAR[19] * (X[17] * X[12])) + ((sPAR[49] * X[19]) + (X[18] * (((-(sPAR[20])) * X[14]) - sPAR[48]))));
    F[17]=((sPAR[18] * (X[16] * X[11])) + ((sPAR[48] * X[18]) + (X[17] * (((-(sPAR[19])) * X[12]) - sPAR[47]))));
    F[16]=((sPAR[17] * (X[15] * X[21])) + ((sPAR[47] * X[17]) + (X[16] * (((-(sPAR[18])) * X[11]) - sPAR[46]))));
    F[21]=((sPAR[16] * X[44]) + ((sPAR[33] * X[26]) + ((sPAR[32] * X[31]) + ((sPAR[46] * X[16]) + (((-(sPAR[17])) * (X[15] * X[21])) - (sPAR[45] * X[21]))))));
    F[8]=((sPAR[15] * (X[5] * X[49])) + ((sPAR[57] * X[32]) + (X[8] * (((-(sPAR[29])) * X[29]) - sPAR[44]))));
    F[6]=((sPAR[13] * (X[5] * X[46])) + ((X[38] * ((sPAR[51] * (X[23] * X[43])) - (sPAR[23] * (X[6] * X[42])))) - (sPAR[42] * X[6])));
    F[5]=((sPAR[12] * (X[4] * X[44])) + ((sPAR[42] * X[6]) + ((sPAR[44] * X[8]) + (((-(X[5])) * (sPAR[41] + (sPAR[13] * X[46]))) - (sPAR[15] * (X[5] * X[49]))))));
    F[44]=((sPAR[41] * X[5]) + ((sPAR[45] * X[21]) + (((-(sPAR[16])) * X[44]) - (sPAR[12] * (X[4] * X[44])))));
    F[15]=((sPAR[46] * X[16]) - (sPAR[17] * (X[15] * X[21])));
    F[20]=(sPAR[22] * X[40]);
    F[11]=((sPAR[47] * X[17]) - (sPAR[18] * (X[16] * X[11])));
    F[14]=((sPAR[49] * X[19]) - (sPAR[20] * (X[18] * X[14])));
    F[13]=((sPAR[50] * X[40]) - (sPAR[21] * (X[19] * X[13])));
    F[12]=((sPAR[48] * X[18]) - (sPAR[19] * (X[17] * X[12])));
    F[10]=((sPAR[31] * X[33]) - (sPAR[59] * (X[10] * X[31])));
    F[7]=((sPAR[27] * X[27]) - (sPAR[55] * (X[7] * X[28])));
    F[4]=((sPAR[41] * X[5]) - (sPAR[12] * (X[4] * X[44])));
    F[3]=(X[38] * ((sPAR[37] * (X[35] * X[43])) - (sPAR[8] * (X[3] * X[42]))));
    F[2]=((sPAR[36] * X[37]) - (sPAR[7] * (X[36] * X[2])));
    F[1]=((sPAR[30] * X[32]) - (sPAR[58] * (X[1] * X[33])));
    F[49]=((sPAR[44] * X[8]) - (sPAR[15] * (X[5] * X[49])));
    F[46]=((sPAR[42] * X[6]) - (sPAR[13] * (X[5] * X[46])));
    F[45]=((sPAR[9] * X[37]) - (sPAR[38] * X[45]));
    F[43]=((X[38] * ((sPAR[8] * (X[3] * X[42])) + ((sPAR[23] * (X[6] * X[42])) + (((-(sPAR[51])) * (X[23] * X[43])) - (sPAR[37] * (X[35] * X[43])))))) + (3.0 * (sPAR[4] * (X[45] * (((sPAR[24] * (X[23] * pow(X[42],3.0))) - (sPAR[52] * (X[24] * pow(X[43],3.0)))) / (sPAR[4] + X[39]))))));
    F[42]=((3.0 * ((-(sPAR[4])) * (X[45] * (((sPAR[24] * (X[23] * pow(X[42],3.0))) - (sPAR[52] * (X[24] * pow(X[43],3.0)))) / (sPAR[4] + X[39]))))) - (X[38] * ((sPAR[8] * (X[3] * X[42])) + ((sPAR[23] * (X[6] * X[42])) + (((-(sPAR[51])) * (X[23] * X[43])) - (sPAR[37] * (X[35] * X[43])))))));
    F[41]=((sPAR[35] * X[36]) - (sPAR[6] * (X[35] * X[41])));
    F[38]=((sPAR[10] * X[35]) - (sPAR[39] * X[38]));

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
    sPAR[1]=1.0; //c3
    sPAR[2]=1.0; //c4
    sPAR[3]=1.0; //default
    sPAR[4]=1.43; //kI_r86_s304
    sPAR[5]=0.784; //kass_r1
    sPAR[6]=0.163; //kass_r102
    sPAR[7]=0.45; //kass_r103
    sPAR[8]=0.39; //kass_r104_s30
    sPAR[9]=0.48; //kass_r105
    sPAR[10]=0.05; //kass_r106
    sPAR[11]=0.91; //kass_r107
    sPAR[12]=1.31; //kass_r47
    sPAR[13]=0.85; //kass_r48
    sPAR[14]=1.15; //kass_r5
    sPAR[15]=0.8; //kass_r54
    sPAR[16]=1.74; //kass_r58
    sPAR[17]=1.77; //kass_r63
    sPAR[18]=1.29; //kass_r64
    sPAR[19]=1.8; //kass_r65
    sPAR[20]=1.99; //kass_r66
    sPAR[21]=0.86; //kass_r67
    sPAR[22]=2.0; //kass_r68
    sPAR[23]=0.7; //kass_r85_s30
    sPAR[24]=0.87; //kass_r86_s37
    sPAR[25]=0.2; //kass_r88
    sPAR[26]=0.27; //kass_r90
    sPAR[27]=0.36; //kass_r91
    sPAR[28]=0.58; //kass_r92
    sPAR[29]=1.45; //kass_r96
    sPAR[30]=1.97; //kass_r98
    sPAR[31]=0.51; //kass_r99
    sPAR[32]=0.83; //kass_re64
    sPAR[33]=1.68; //kass_re65
    sPAR[34]=0.82; //kdiss_r1
    sPAR[35]=1.65; //kdiss_r102
    sPAR[36]=1.277; //kdiss_r103
    sPAR[37]=1.278; //kdiss_r104_s30
    sPAR[38]=1.62; //kdiss_r105
    sPAR[39]=1.13; //kdiss_r106
    sPAR[40]=1.056; //kdiss_r107
    sPAR[41]=0.8100000000000001; //kdiss_r47
    sPAR[42]=1.36; //kdiss_r48
    sPAR[43]=0.92; //kdiss_r5
    sPAR[44]=1.7; //kdiss_r54
    sPAR[45]=0.25; //kdiss_r58
    sPAR[46]=0.61; //kdiss_r63
    sPAR[47]=0.72; //kdiss_r64
    sPAR[48]=0.004; //kdiss_r65
    sPAR[49]=0.036; //kdiss_r66
    sPAR[50]=0.7; //kdiss_r67
    sPAR[51]=0.649; //kdiss_r85_s30
    sPAR[52]=1.32; //kdiss_r86_s37
    sPAR[53]=1.09; //kdiss_r88
    sPAR[54]=1.028; //kdiss_r90
    sPAR[55]=1.16; //kdiss_r91
    sPAR[56]=0.92; //kdiss_r92
    sPAR[57]=0.183; //kdiss_r96
    sPAR[58]=1.09; //kdiss_r98
    sPAR[59]=0.854; //kdiss_r99
    X[0]=3.0; //s1
    X[1]=0.0; //s101
    X[2]=3.0; //s102
    X[3]=3.0; //s107
    X[4]=4.0; //s121
    X[5]=0.0; //s123
    X[6]=0.0; //s129
    X[7]=0.0; //s155
    X[8]=0.0; //s159
    X[9]=0.0; //s16
    X[10]=0.0; //s164
    X[11]=2.0; //s170
    X[12]=2.0; //s171
    X[13]=2.0; //s172
    X[14]=2.0; //s173
    X[15]=4.0; //s174
    X[16]=0.0; //s176
    X[17]=0.0; //s179
    X[18]=0.0; //s183
    X[19]=0.0; //s188
    X[20]=0.0; //s195
    X[21]=0.0; //s232
    X[22]=5.0; //s239
    X[23]=0.0; //s245
    X[24]=5.0; //s252
    X[25]=0.0; //s259
    X[26]=0.0; //s260
    X[27]=0.0; //s266
    X[28]=0.0; //s267
    X[29]=1.0; //s268
    X[30]=0.0; //s27
    X[31]=0.0; //s270
    X[32]=0.0; //s275
    X[33]=0.0; //s278
    X[34]=3.0; //s28
    X[35]=0.0; //s286
    X[36]=0.0; //s288
    X[37]=0.0; //s292
    X[38]=1.0; //s30
    X[39]=0.5; //s304
    X[40]=0.0; //s305
    X[41]=3.0; //s31
    X[42]=1.0; //s32
    X[43]=0.0; //s33
    X[44]=5.0; //s36
    X[45]=0.0; //s37
    X[46]=1.0; //s46
    X[47]=0.0; //s5
    X[48]=2.0; //s61
    X[49]=3.0; //s75

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
