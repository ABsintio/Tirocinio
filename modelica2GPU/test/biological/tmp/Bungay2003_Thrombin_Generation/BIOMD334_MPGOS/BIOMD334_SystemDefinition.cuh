
#ifndef BIOMD334_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD334_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[30]=0.0;
    F[19]=((-100.0 * (sPAR[0] * ((sPAR[94] * (X[6] * (X[19] / sPAR[110]))) + ((sPAR[109] * (X[72] * (X[19] / sPAR[110]))) + ((sPAR[99] * (X[52] * (X[19] / sPAR[110]))) + ((sPAR[105] * (X[55] * (X[19] / sPAR[110]))) + ((sPAR[100] * (X[46] * (X[19] / sPAR[110]))) + ((sPAR[104] * (X[48] * (X[19] / sPAR[110]))) + ((sPAR[101] * (X[38] * (X[19] / sPAR[110]))) + ((sPAR[102] * (X[41] * (X[19] / sPAR[110]))) + ((sPAR[95] * (X[12] * (X[19] / sPAR[110]))) + ((sPAR[96] * (X[17] * (X[19] / sPAR[110]))) + ((sPAR[107] * (X[63] * (X[19] / sPAR[110]))) + ((((((((((((-(sPAR[79])) * X[18]) - (sPAR[85] * X[42])) - (sPAR[87] * X[49])) - (sPAR[88] * X[56])) - (sPAR[92] * X[73])) - (sPAR[77] * X[7])) - (sPAR[82] * X[53])) - (sPAR[83] * X[47])) - (sPAR[84] * X[39])) - (sPAR[90] * X[64])) - (sPAR[78] * X[13]))))))))))))))) + ((-100.0 * (sPAR[108] * (X[69] * (X[19] / sPAR[110])))) + ((sPAR[91] * X[70]) + (-100.0 * (sPAR[0] * ((sPAR[93] * (X[3] * (X[19] / sPAR[110]))) + ((sPAR[98] * (X[22] * (X[19] / sPAR[110]))) + ((sPAR[103] * (X[43] * (X[19] / sPAR[110]))) + ((sPAR[106] * (X[57] * (X[19] / sPAR[110]))) + ((sPAR[97] * (X[20] * (X[19] / sPAR[110]))) + ((((((-(sPAR[81])) * X[23]) - (sPAR[89] * X[58])) - (sPAR[76] * X[4])) - (sPAR[86] * X[44])) - (sPAR[80] * X[21]))))))))))));
    F[61]=(sPAR[0] * ((sPAR[70] * (X[62] * X[13])) + (((-(sPAR[71])) - sPAR[72]) * X[61])));
    F[71]=(sPAR[0] * (sPAR[66] * (X[72] * X[5])));
    F[9]=(sPAR[0] * ((sPAR[63] * (X[10] * X[21])) + (((-(sPAR[64])) - sPAR[65]) * X[9])));
    F[10]=(sPAR[0] * ((sPAR[61] * (X[11] * X[35])) + ((sPAR[65] * X[9]) + ((sPAR[64] * X[9]) + (X[10] * (((-(sPAR[63])) * X[21]) - sPAR[62]))))));
    F[35]=(sPAR[0] * ((sPAR[62] * X[10]) - (sPAR[61] * (X[11] * X[35]))));
    F[40]=(sPAR[0] * ((sPAR[58] * (X[39] * X[73])) + (((-(sPAR[59])) - sPAR[60]) * X[40])));
    F[54]=(sPAR[0] * ((sPAR[54] * (X[53] * X[73])) + (((-(sPAR[55])) - sPAR[57]) * X[54])));
    F[45]=(sPAR[0] * ((sPAR[33] * (X[47] * X[70])) + (((-(sPAR[35])) - sPAR[36]) * X[45])));
    F[65]=(sPAR[0] * (sPAR[52] * (X[69] * X[5])));
    F[14]=(sPAR[0] * (sPAR[51] * (X[17] * X[5])));
    F[1]=(sPAR[0] * ((sPAR[43] * (X[2] * X[56])) + (((-(sPAR[44])) - sPAR[46]) * X[1])));
    F[24]=(sPAR[0] * ((sPAR[49] * (X[25] * X[33])) - (sPAR[50] * X[24])));
    F[25]=(sPAR[0] * ((sPAR[47] * (X[26] * X[69])) + ((sPAR[50] * X[24]) + (X[25] * (((-(sPAR[49])) * X[33]) - sPAR[48])))));
    F[8]=(sPAR[0] * (sPAR[53] * (X[11] * X[5])));
    F[5]=((-(sPAR[0])) * ((sPAR[51] * (X[17] * X[5])) + ((sPAR[52] * (X[69] * X[5])) + ((sPAR[53] * (X[11] * X[5])) + (sPAR[66] * (X[72] * X[5]))))));
    F[26]=(sPAR[0] * ((sPAR[48] * X[25]) - (sPAR[47] * (X[26] * X[69]))));
    F[0]=(sPAR[0] * ((sPAR[40] * (X[2] * X[42])) + (((-(sPAR[41])) - sPAR[42]) * X[0])));
    F[2]=(sPAR[0] * ((sPAR[42] * X[0]) + ((sPAR[46] * X[1]) + ((sPAR[68] * (X[4] * X[23])) + ((sPAR[41] * X[0]) + ((sPAR[44] * X[1]) + (((-(X[2])) * (sPAR[69] + (sPAR[40] * X[42]))) - (sPAR[43] * (X[2] * X[56])))))))));
    F[62]=(sPAR[0] * ((sPAR[39] * X[59]) + ((sPAR[72] * X[61]) + ((sPAR[71] * X[61]) - (sPAR[70] * (X[62] * X[13]))))));
    F[59]=(sPAR[0] * ((sPAR[37] * (X[60] * X[11])) + (((-(sPAR[38])) - sPAR[39]) * X[59])));
    F[60]=(sPAR[0] * ((sPAR[38] * X[59]) - (sPAR[37] * (X[60] * X[11]))));
    F[68]=(sPAR[0] * ((sPAR[29] * (X[67] * X[73])) + ((sPAR[31] * X[66]) + (((-(sPAR[30])) - sPAR[32]) * X[68]))));
    F[66]=(sPAR[0] * ((sPAR[27] * (X[67] * X[7])) + (((-(sPAR[28])) - sPAR[31]) * X[66])));
    F[36]=(sPAR[0] * ((sPAR[24] * (X[39] * X[11])) + (((-(sPAR[25])) - sPAR[26]) * X[36])));
    F[50]=(sPAR[0] * ((sPAR[20] * (X[53] * X[11])) + (((-(sPAR[21])) - sPAR[22]) * X[50])));
    F[11]=(sPAR[0] * ((sPAR[22] * X[50]) + ((sPAR[26] * X[36]) + ((sPAR[32] * X[68]) + ((sPAR[39] * X[59]) + ((sPAR[21] * X[50]) + ((sPAR[25] * X[36]) + ((sPAR[38] * X[59]) + ((sPAR[62] * X[10]) + ((((((-(sPAR[37])) * (X[60] * X[11])) - (sPAR[61] * (X[11] * X[35]))) - (sPAR[20] * (X[53] * X[11]))) - (sPAR[24] * (X[39] * X[11]))) - (sPAR[53] * (X[11] * X[5]))))))))))));
    F[37]=((sPAR[17] * (X[39] * X[70])) + (((-(sPAR[18])) * X[37]) - (sPAR[0] * (sPAR[19] * X[37]))));
    F[51]=(sPAR[0] * ((sPAR[14] * (X[53] * X[70])) + (((-(sPAR[15])) - sPAR[16]) * X[51])));
    F[15]=(sPAR[0] * ((sPAR[10] * (X[16] * X[64])) + (((-(sPAR[11])) - sPAR[13]) * X[15])));
    F[67]=(sPAR[0] * ((sPAR[8] * (X[70] * X[56])) + ((sPAR[32] * X[68]) + ((sPAR[28] * X[66]) + ((sPAR[30] * X[68]) + (((-(X[67])) * (sPAR[9] + (sPAR[27] * X[7]))) - (sPAR[29] * (X[67] * X[73]))))))));
    F[16]=(sPAR[0] * ((sPAR[6] * (X[18] * X[42])) + ((sPAR[13] * X[15]) + ((sPAR[11] * X[15]) + (X[16] * (((-(sPAR[10])) * X[64]) - sPAR[7]))))));
    F[27]=(sPAR[0] * ((sPAR[3] * (X[28] * X[70])) + (((-(sPAR[4])) - sPAR[5]) * X[27])));
    F[32]=(sPAR[0] * ((sPAR[2] * X[31]) - (sPAR[73] * X[32])));
    F[31]=(sPAR[0] * ((sPAR[74] * (X[33] * X[64])) + (((-(sPAR[75])) - sPAR[2]) * X[31])));
    F[29]=(sPAR[0] * ((sPAR[45] * (X[33] * X[13])) + (((-(sPAR[56])) - sPAR[67]) * X[29])));
    F[28]=(sPAR[0] * ((sPAR[23] * (X[34] * X[47])) + ((sPAR[4] * X[27]) + (X[28] * (((-(sPAR[3])) * X[70]) - sPAR[34])))));
    F[33]=(sPAR[0] * ((sPAR[1] * (X[34] * X[49])) + ((sPAR[67] * X[29]) + ((sPAR[73] * X[32]) + ((sPAR[5] * X[27]) + ((sPAR[56] * X[29]) + ((sPAR[75] * X[31]) + ((sPAR[50] * X[24]) + ((((-(sPAR[45])) * (X[33] * X[13])) - (sPAR[49] * (X[25] * X[33]))) - (X[33] * (sPAR[12] + (sPAR[74] * X[64]))))))))))));
    F[34]=((-(sPAR[0])) * ((sPAR[1] * (X[34] * X[49])) + ((sPAR[23] * (X[34] * X[47])) + (((-(sPAR[34])) * X[28]) - (sPAR[12] * X[33])))));
    F[21]=(sPAR[0] * ((sPAR[97] * (X[20] * (X[19] / sPAR[110]))) + ((sPAR[64] * X[9]) + (((-(sPAR[63])) * (X[10] * X[21])) - (sPAR[80] * X[21])))));
    F[20]=(sPAR[0] * ((sPAR[80] * X[21]) - (sPAR[97] * (X[20] * (X[19] / sPAR[110])))));
    F[58]=(sPAR[0] * ((sPAR[106] * (X[57] * (X[19] / sPAR[110]))) + ((sPAR[46] * X[1]) - (sPAR[89] * X[58]))));
    F[57]=(sPAR[0] * ((sPAR[89] * X[58]) - (sPAR[106] * (X[57] * (X[19] / sPAR[110])))));
    F[44]=(sPAR[0] * ((sPAR[103] * (X[43] * (X[19] / sPAR[110]))) + ((sPAR[42] * X[0]) - (sPAR[86] * X[44]))));
    F[43]=(sPAR[0] * ((sPAR[86] * X[44]) - (sPAR[103] * (X[43] * (X[19] / sPAR[110])))));
    F[23]=(sPAR[0] * ((sPAR[98] * (X[22] * (X[19] / sPAR[110]))) + ((sPAR[69] * X[2]) + (((-(sPAR[68])) * (X[4] * X[23])) - (sPAR[81] * X[23])))));
    F[22]=(sPAR[0] * ((sPAR[81] * X[23]) - (sPAR[98] * (X[22] * (X[19] / sPAR[110])))));
    F[4]=(sPAR[0] * ((sPAR[93] * (X[3] * (X[19] / sPAR[110]))) + ((sPAR[65] * X[9]) + ((sPAR[69] * X[2]) + (X[4] * (((-(sPAR[68])) * X[23]) - sPAR[76]))))));
    F[3]=(sPAR[0] * ((sPAR[76] * X[4]) - (sPAR[93] * (X[3] * (X[19] / sPAR[110])))));
    F[70]=((sPAR[108] * (X[69] * (X[19] / sPAR[110]))) + ((sPAR[0] * (sPAR[73] * X[32])) + ((sPAR[0] * (sPAR[5] * X[27])) + ((sPAR[0] * (sPAR[13] * X[15])) + ((sPAR[0] * (sPAR[16] * X[51])) + ((sPAR[0] * (sPAR[19] * X[37])) + ((sPAR[0] * (sPAR[36] * X[45])) + ((sPAR[0] * ((sPAR[4] * X[27]) - (sPAR[3] * (X[28] * X[70])))) + ((sPAR[0] * ((sPAR[9] * X[67]) - (sPAR[8] * (X[70] * X[56])))) + ((sPAR[0] * ((sPAR[15] * X[51]) - (sPAR[14] * (X[53] * X[70])))) + ((sPAR[18] * X[37]) + ((sPAR[0] * ((sPAR[35] * X[45]) - (sPAR[33] * (X[47] * X[70])))) + (((-(sPAR[91])) * X[70]) - (sPAR[17] * (X[39] * X[70])))))))))))))));
    F[69]=((sPAR[91] * X[70]) + ((sPAR[0] * ((sPAR[48] * X[25]) - (sPAR[47] * (X[26] * X[69])))) + (((-(sPAR[108])) * (X[69] * (X[19] / sPAR[110]))) - (sPAR[0] * (sPAR[52] * (X[69] * X[5]))))));
    F[64]=(sPAR[0] * ((sPAR[107] * (X[63] * (X[19] / sPAR[110]))) + ((sPAR[75] * X[31]) + ((sPAR[11] * X[15]) + ((((-(sPAR[74])) * (X[33] * X[64])) - (sPAR[10] * (X[16] * X[64]))) - (sPAR[90] * X[64]))))));
    F[63]=(sPAR[0] * ((sPAR[90] * X[64]) - (sPAR[107] * (X[63] * (X[19] / sPAR[110])))));
    F[18]=(sPAR[0] * ((sPAR[96] * (X[17] * (X[19] / sPAR[110]))) + ((sPAR[67] * X[29]) + ((sPAR[72] * X[61]) + ((sPAR[7] * X[16]) + (X[18] * (((-(sPAR[6])) * X[42]) - sPAR[79])))))));
    F[17]=((-(sPAR[0])) * ((sPAR[96] * (X[17] * (X[19] / sPAR[110]))) + ((sPAR[51] * (X[17] * X[5])) - (sPAR[79] * X[18]))));
    F[13]=(sPAR[0] * ((sPAR[95] * (X[12] * (X[19] / sPAR[110]))) + ((sPAR[56] * X[29]) + ((sPAR[71] * X[61]) + ((((-(sPAR[45])) * (X[33] * X[13])) - (sPAR[70] * (X[62] * X[13]))) - (sPAR[78] * X[13]))))));
    F[12]=(sPAR[0] * ((sPAR[78] * X[13]) - (sPAR[95] * (X[12] * (X[19] / sPAR[110])))));
    F[42]=(sPAR[0] * ((sPAR[102] * (X[41] * (X[19] / sPAR[110]))) + ((sPAR[19] * X[37]) + ((sPAR[26] * X[36]) + ((sPAR[60] * X[40]) + ((sPAR[7] * X[16]) + ((sPAR[41] * X[0]) + ((((-(sPAR[6])) * (X[18] * X[42])) - (sPAR[40] * (X[2] * X[42]))) - (sPAR[85] * X[42])))))))));
    F[41]=(sPAR[0] * ((sPAR[85] * X[42]) - (sPAR[102] * (X[41] * (X[19] / sPAR[110])))));
    F[39]=((sPAR[0] * ((sPAR[101] * (X[38] * (X[19] / sPAR[110]))) - (sPAR[84] * X[39]))) + ((sPAR[18] * X[37]) + ((sPAR[0] * ((sPAR[25] * X[36]) - (sPAR[24] * (X[39] * X[11])))) + ((sPAR[0] * ((sPAR[59] * X[40]) - (sPAR[58] * (X[39] * X[73])))) - (sPAR[17] * (X[39] * X[70]))))));
    F[38]=(sPAR[0] * ((sPAR[84] * X[39]) - (sPAR[101] * (X[38] * (X[19] / sPAR[110])))));
    F[49]=(sPAR[0] * ((sPAR[104] * (X[48] * (X[19] / sPAR[110]))) + ((sPAR[36] * X[45]) + ((sPAR[12] * X[33]) + (((-(sPAR[1])) * (X[34] * X[49])) - (sPAR[87] * X[49]))))));
    F[48]=(sPAR[0] * ((sPAR[87] * X[49]) - (sPAR[104] * (X[48] * (X[19] / sPAR[110])))));
    F[47]=(sPAR[0] * ((sPAR[100] * (X[46] * (X[19] / sPAR[110]))) + ((sPAR[34] * X[28]) + ((sPAR[35] * X[45]) + ((((-(sPAR[23])) * (X[34] * X[47])) - (sPAR[33] * (X[47] * X[70]))) - (sPAR[83] * X[47]))))));
    F[46]=(sPAR[0] * ((sPAR[83] * X[47]) - (sPAR[100] * (X[46] * (X[19] / sPAR[110])))));
    F[56]=(sPAR[0] * ((sPAR[105] * (X[55] * (X[19] / sPAR[110]))) + ((sPAR[16] * X[51]) + ((sPAR[22] * X[50]) + ((sPAR[57] * X[54]) + ((sPAR[9] * X[67]) + ((sPAR[44] * X[1]) + ((((-(sPAR[8])) * (X[70] * X[56])) - (sPAR[43] * (X[2] * X[56]))) - (sPAR[88] * X[56])))))))));
    F[55]=(sPAR[0] * ((sPAR[88] * X[56]) - (sPAR[105] * (X[55] * (X[19] / sPAR[110])))));
    F[53]=(sPAR[0] * ((sPAR[99] * (X[52] * (X[19] / sPAR[110]))) + ((sPAR[15] * X[51]) + ((sPAR[21] * X[50]) + ((sPAR[55] * X[54]) + (X[53] * ((((-(sPAR[14])) * X[70]) - (sPAR[54] * X[73])) - (sPAR[82] + (sPAR[20] * X[11])))))))));
    F[52]=(sPAR[0] * ((sPAR[82] * X[53]) - (sPAR[99] * (X[52] * (X[19] / sPAR[110])))));
    F[73]=(sPAR[0] * ((sPAR[109] * (X[72] * (X[19] / sPAR[110]))) + ((sPAR[57] * X[54]) + ((sPAR[60] * X[40]) + ((sPAR[30] * X[68]) + ((sPAR[55] * X[54]) + ((sPAR[59] * X[40]) + (((((-(sPAR[29])) * (X[67] * X[73])) - (sPAR[58] * (X[39] * X[73]))) - (sPAR[54] * (X[53] * X[73]))) - (sPAR[92] * X[73])))))))));
    F[72]=((-(sPAR[0])) * ((sPAR[109] * (X[72] * (X[19] / sPAR[110]))) + ((sPAR[66] * (X[72] * X[5])) - (sPAR[92] * X[73]))));
    F[7]=(sPAR[0] * ((sPAR[94] * (X[6] * (X[19] / sPAR[110]))) + ((sPAR[28] * X[66]) + (((-(sPAR[27])) * (X[67] * X[7])) - (sPAR[77] * X[7])))));
    F[6]=(sPAR[0] * ((sPAR[77] * X[7]) - (sPAR[94] * (X[6] * (X[19] / sPAR[110])))));

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
    sPAR[0]=1.0; //compartment
    sPAR[1]=0.5; //k1
    sPAR[2]=1.5; //k10
    sPAR[3]=0.05; //k11
    sPAR[4]=44.8; //k12
    sPAR[5]=15.2; //k13
    sPAR[6]=0.1; //k14
    sPAR[7]=0.2; //k15
    sPAR[8]=1.0; //k16
    sPAR[9]=1.0; //k17
    sPAR[10]=0.1; //k18
    sPAR[11]=10.7; //k19
    sPAR[12]=0.005; //k2
    sPAR[13]=8.300000000000001; //k20
    sPAR[14]=0.1; //k21
    sPAR[15]=1.0; //k22
    sPAR[16]=0.043; //k23
    sPAR[17]=0.1; //k24
    sPAR[18]=2.1; //k25
    sPAR[19]=0.023; //k26
    sPAR[20]=0.1; //k27
    sPAR[21]=6.94; //k28
    sPAR[22]=0.23; //k29
    sPAR[23]=0.005; //k3
    sPAR[24]=0.1; //k30
    sPAR[25]=13.8; //k31
    sPAR[26]=0.9; //k32
    sPAR[27]=0.1; //k33
    sPAR[28]=100.0; //k34
    sPAR[29]=0.1; //k35
    sPAR[30]=66.0; //k36
    sPAR[31]=13.0; //k37
    sPAR[32]=15.0; //k38
    sPAR[33]=0.05; //k39
    sPAR[34]=0.005; //k4
    sPAR[35]=44.8; //k40
    sPAR[36]=15.2; //k41
    sPAR[37]=0.1; //k42
    sPAR[38]=10.0; //k43
    sPAR[39]=1.43; //k44
    sPAR[40]=0.1; //k45
    sPAR[41]=1.6; //k46
    sPAR[42]=0.4; //k47
    sPAR[43]=0.1; //k48
    sPAR[44]=1.6; //k49
    sPAR[45]=0.01; //k5
    sPAR[46]=0.4; //k50
    sPAR[47]=0.016; //k51
    sPAR[48]=0.00033; //k52
    sPAR[49]=0.01; //k53
    sPAR[50]=0.0011; //k54
    sPAR[51]=4.9e-07; //k55
    sPAR[52]=2.3e-06; //k56
    sPAR[53]=6.830000000000001e-05; //k57
    sPAR[54]=0.1; //k58
    sPAR[55]=6.94; //k59
    sPAR[56]=2.09; //k6
    sPAR[57]=1.035; //k60
    sPAR[58]=0.1; //k61
    sPAR[59]=13.8; //k62
    sPAR[60]=0.9; //k63
    sPAR[61]=1.0; //k64
    sPAR[62]=0.5; //k65
    sPAR[63]=0.1; //k66
    sPAR[64]=6.4; //k67
    sPAR[65]=3.6; //k68
    sPAR[66]=6.83e-06; //k69
    sPAR[67]=0.34; //k7
    sPAR[68]=0.1; //k70
    sPAR[69]=0.5; //k71
    sPAR[70]=0.01; //k72
    sPAR[71]=1.417; //k73
    sPAR[72]=0.183; //k74
    sPAR[73]=1.0; //k75
    sPAR[74]=0.1; //k8
    sPAR[75]=32.5; //k9
    sPAR[76]=3.5; //koffAPC
    sPAR[77]=1.0; //koffII
    sPAR[78]=0.115; //koffIX
    sPAR[79]=0.115; //koffIXa
    sPAR[80]=11.5; //koffPC
    sPAR[81]=0.2; //koffPS
    sPAR[82]=0.145; //koffV
    sPAR[83]=0.66; //koffVII
    sPAR[84]=0.1; //koffVIII
    sPAR[85]=0.335; //koffVIIIa
    sPAR[86]=0.335; //koffVIIIai
    sPAR[87]=0.227; //koffVIIa
    sPAR[88]=0.17; //koffVa
    sPAR[89]=0.17; //koffVai
    sPAR[90]=1.9; //koffX
    sPAR[91]=3.3; //koffXa
    sPAR[92]=0.475; //koffmIIa
    sPAR[93]=0.05; //konAPC
    sPAR[94]=0.0043; //konII
    sPAR[95]=0.05; //konIX
    sPAR[96]=0.05; //konIXa
    sPAR[97]=0.05; //konPC
    sPAR[98]=0.05; //konPS
    sPAR[99]=0.05; //konV
    sPAR[100]=0.05; //konVII
    sPAR[101]=0.05; //konVIII
    sPAR[102]=0.05; //konVIIIa
    sPAR[103]=0.05; //konVIIIai
    sPAR[104]=0.05; //konVIIa
    sPAR[105]=0.057; //konVa
    sPAR[106]=0.057; //konVai
    sPAR[107]=0.01; //konX
    sPAR[108]=0.029; //konXa
    sPAR[109]=0.05; //konmIIa
    sPAR[110]=100.0; //nva
    X[0]=0.0; //APC_PS_VIIIa_l
    X[1]=0.0; //APC_PS_Va_l
    X[2]=0.0; //APC_PS_l
    X[3]=0.0; //APC_f
    X[4]=0.0; //APC_l
    X[5]=3400.0; //AT_f
    X[6]=1400.0; //II_f
    X[7]=0.0; //II_l
    X[8]=0.0; //IIa_AT_f
    X[9]=0.0; //IIa_TM_PC_l
    X[10]=0.0; //IIa_TM_l
    X[11]=0.0; //IIa_f
    X[12]=90.0; //IX_f
    X[13]=0.0; //IX_l
    X[14]=0.0; //IXa_AT_f
    X[15]=0.0; //IXa_VIIIa_X_l
    X[16]=0.0; //IXa_VIIIa_l
    X[17]=0.0; //IXa_f
    X[18]=0.0; //IXa_l
    X[19]=849079.0; //LIPID
    X[20]=60.0; //PC_f
    X[21]=0.0; //PC_l
    X[22]=300.0; //PS_f
    X[23]=0.0; //PS_l
    X[24]=0.0; //TFPI_Xa_TF_VIIa_l
    X[25]=0.0; //TFPI_Xa_l
    X[26]=2.5; //TFPI_f
    X[27]=0.0; //TF_VII_Xa_l
    X[28]=0.0; //TF_VII_l
    X[29]=0.0; //TF_VIIa_IX_l
    X[30]=0.0; //TF_VIIa_IXa_l
    X[31]=0.0; //TF_VIIa_X_l
    X[32]=0.0; //TF_VIIa_Xa_l
    X[33]=0.0; //TF_VIIa_l
    X[34]=0.005; //TF_l
    X[35]=1.0; //TM_l
    X[36]=0.0; //VIII_IIa_l
    X[37]=0.0; //VIII_Xa_l
    X[38]=0.7; //VIII_f
    X[39]=0.0; //VIII_l
    X[40]=0.0; //VIII_mIIa_l
    X[41]=0.0; //VIIIa_f
    X[42]=0.0; //VIIIa_l
    X[43]=0.0; //VIIIai_f
    X[44]=0.0; //VIIIai_l
    X[45]=0.0; //VII_Xa_l
    X[46]=10.0; //VII_f
    X[47]=0.0; //VII_l
    X[48]=0.1; //VIIa_f
    X[49]=0.0; //VIIa_l
    X[50]=0.0; //V_IIa_l
    X[51]=0.0; //V_Xa_l
    X[52]=20.0; //V_f
    X[53]=0.0; //V_l
    X[54]=0.0; //V_mIIa_l
    X[55]=0.0; //Va_f
    X[56]=0.0; //Va_l
    X[57]=0.0; //Vai_f
    X[58]=0.0; //Vai_l
    X[59]=0.0; //XI_IIa_l
    X[60]=30.0; //XI_f
    X[61]=0.0; //XIa_IX_l
    X[62]=0.0; //XIa_l
    X[63]=170.0; //X_f
    X[64]=0.0; //X_l
    X[65]=0.0; //Xa_AT_f
    X[66]=0.0; //Xa_Va_II_l
    X[67]=0.0; //Xa_Va_l
    X[68]=0.0; //Xa_Va_mIIa_l
    X[69]=0.0; //Xa_f
    X[70]=0.0; //Xa_l
    X[71]=0.0; //mIIa_AT_l
    X[72]=0.0; //mIIa_f
    X[73]=0.0; //mIIa_l

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
