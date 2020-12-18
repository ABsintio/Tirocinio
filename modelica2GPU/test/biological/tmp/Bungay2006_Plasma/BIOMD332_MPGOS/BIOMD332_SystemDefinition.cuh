
#ifndef BIOMD332_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD332_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[31]=0.0;
    F[5]=(sPAR[0] * (sPAR[74] * (X[6] * X[63])));
    F[73]=(sPAR[0] * (sPAR[76] * (X[74] * X[70])));
    F[72]=(sPAR[0] * (sPAR[75] * (X[74] * X[12])));
    F[74]=((-(sPAR[0])) * (X[74] * ((sPAR[75] * X[12]) + (sPAR[76] * X[70]))));
    F[20]=((100.0 * (sPAR[0] * ((sPAR[32] * X[69]) + ((sPAR[80] * X[8]) + ((sPAR[95] * X[77]) + ((sPAR[85] * X[54]) + ((sPAR[91] * X[57]) + ((sPAR[86] * X[48]) + ((sPAR[90] * X[50]) + ((sPAR[87] * X[40]) + ((sPAR[88] * X[43]) + ((sPAR[81] * X[14]) + ((sPAR[82] * X[19]) + ((sPAR[93] * X[65]) + ((((((((((((-(sPAR[110])) * (X[64] * (X[20] / sPAR[113]))) - (sPAR[98] * (X[13] * (X[20] / sPAR[113])))) - (sPAR[104] * (X[39] * (X[20] / sPAR[113])))) - (sPAR[103] * (X[47] * (X[20] / sPAR[113])))) - (sPAR[102] * (X[53] * (X[20] / sPAR[113])))) - (sPAR[97] * (X[7] * (X[20] / sPAR[113])))) - (sPAR[112] * (X[76] * (X[20] / sPAR[113])))) - (sPAR[108] * (X[56] * (X[20] / sPAR[113])))) - (sPAR[107] * (X[49] * (X[20] / sPAR[113])))) - (sPAR[105] * (X[42] * (X[20] / sPAR[113])))) - (sPAR[99] * (X[18] * (X[20] / sPAR[113])))))))))))))))))) + ((-100.0 * (sPAR[111] * (X[70] * (X[20] / sPAR[113])))) + ((sPAR[94] * X[71]) + (-100.0 * (sPAR[0] * ((sPAR[96] * (X[3] * (X[20] / sPAR[113]))) + ((sPAR[101] * (X[23] * (X[20] / sPAR[113]))) + ((sPAR[106] * (X[44] * (X[20] / sPAR[113]))) + ((sPAR[109] * (X[58] * (X[20] / sPAR[113]))) + ((sPAR[100] * (X[21] * (X[20] / sPAR[113]))) + ((((((-(sPAR[84])) * X[24]) - (sPAR[92] * X[59])) - (sPAR[79] * X[4])) - (sPAR[89] * X[45])) - (sPAR[83] * X[22]))))))))))));
    F[62]=(sPAR[0] * ((sPAR[70] * (X[63] * X[14])) + (((-(sPAR[71])) - sPAR[72]) * X[62])));
    F[75]=(sPAR[0] * (sPAR[66] * (X[76] * X[6])));
    F[10]=(sPAR[0] * ((sPAR[63] * (X[11] * X[22])) + (((-(sPAR[64])) - sPAR[65]) * X[10])));
    F[11]=(sPAR[0] * ((sPAR[61] * (X[12] * X[36])) + ((sPAR[65] * X[10]) + ((sPAR[64] * X[10]) + (X[11] * (((-(sPAR[63])) * X[22]) - sPAR[62]))))));
    F[36]=(sPAR[0] * ((sPAR[62] * X[11]) - (sPAR[61] * (X[12] * X[36]))));
    F[41]=(sPAR[0] * ((sPAR[58] * (X[40] * X[77])) + (((-(sPAR[59])) - sPAR[60]) * X[41])));
    F[55]=(sPAR[0] * ((sPAR[54] * (X[54] * X[77])) + (((-(sPAR[55])) - sPAR[57]) * X[55])));
    F[46]=(sPAR[0] * ((sPAR[33] * (X[48] * X[71])) + (((-(sPAR[35])) - sPAR[36]) * X[46])));
    F[66]=(sPAR[0] * (sPAR[52] * (X[70] * X[6])));
    F[15]=(sPAR[0] * (sPAR[51] * (X[18] * X[6])));
    F[1]=(sPAR[0] * ((sPAR[43] * (X[2] * X[57])) + (((-(sPAR[44])) - sPAR[46]) * X[1])));
    F[25]=(sPAR[0] * ((sPAR[49] * (X[26] * X[34])) - (sPAR[50] * X[25])));
    F[26]=(sPAR[0] * ((sPAR[47] * (X[27] * X[70])) + ((sPAR[50] * X[25]) + (X[26] * (((-(sPAR[49])) * X[34]) - sPAR[48])))));
    F[9]=(sPAR[0] * (sPAR[53] * (X[12] * X[6])));
    F[6]=((-(sPAR[0])) * ((sPAR[51] * (X[18] * X[6])) + ((sPAR[52] * (X[70] * X[6])) + ((sPAR[53] * (X[12] * X[6])) + ((sPAR[66] * (X[76] * X[6])) + (sPAR[74] * (X[6] * X[63])))))));
    F[27]=(sPAR[0] * ((sPAR[48] * X[26]) - (sPAR[47] * (X[27] * X[70]))));
    F[0]=(sPAR[0] * ((sPAR[40] * (X[2] * X[43])) + (((-(sPAR[41])) - sPAR[42]) * X[0])));
    F[2]=(sPAR[0] * ((sPAR[42] * X[0]) + ((sPAR[46] * X[1]) + ((sPAR[68] * (X[4] * X[24])) + ((sPAR[41] * X[0]) + ((sPAR[44] * X[1]) + (((-(X[2])) * (sPAR[69] + (sPAR[40] * X[43]))) - (sPAR[43] * (X[2] * X[57])))))))));
    F[63]=(sPAR[0] * ((sPAR[39] * X[60]) + ((sPAR[72] * X[62]) + ((sPAR[71] * X[62]) + (((-(sPAR[70])) * (X[63] * X[14])) - (sPAR[74] * (X[6] * X[63])))))));
    F[60]=(sPAR[0] * ((sPAR[37] * (X[61] * X[12])) + (((-(sPAR[38])) - sPAR[39]) * X[60])));
    F[61]=(sPAR[0] * ((sPAR[38] * X[60]) - (sPAR[37] * (X[61] * X[12]))));
    F[69]=(sPAR[0] * ((sPAR[29] * (X[68] * X[77])) + ((sPAR[31] * X[67]) + (((-(sPAR[30])) - sPAR[32]) * X[69]))));
    F[67]=(sPAR[0] * ((sPAR[27] * (X[68] * X[8])) + (((-(sPAR[28])) - sPAR[31]) * X[67])));
    F[37]=(sPAR[0] * ((sPAR[24] * (X[40] * X[12])) + (((-(sPAR[25])) - sPAR[26]) * X[37])));
    F[51]=(sPAR[0] * ((sPAR[20] * (X[54] * X[12])) + (((-(sPAR[21])) - sPAR[22]) * X[51])));
    F[12]=(sPAR[0] * ((sPAR[22] * X[51]) + ((sPAR[26] * X[37]) + ((sPAR[32] * X[69]) + ((sPAR[39] * X[60]) + ((sPAR[21] * X[51]) + ((sPAR[25] * X[37]) + ((sPAR[38] * X[60]) + ((sPAR[62] * X[11]) + (((((((-(sPAR[75])) * (X[74] * X[12])) - (sPAR[24] * (X[40] * X[12]))) - (sPAR[53] * (X[12] * X[6]))) - (sPAR[20] * (X[54] * X[12]))) - (sPAR[61] * (X[12] * X[36]))) - (sPAR[37] * (X[61] * X[12]))))))))))));
    F[38]=((sPAR[17] * (X[40] * X[71])) + (((-(sPAR[18])) * X[38]) - (sPAR[0] * (sPAR[19] * X[38]))));
    F[52]=(sPAR[0] * ((sPAR[14] * (X[54] * X[71])) + (((-(sPAR[15])) - sPAR[16]) * X[52])));
    F[16]=(sPAR[0] * ((sPAR[10] * (X[17] * X[65])) + (((-(sPAR[11])) - sPAR[13]) * X[16])));
    F[68]=(sPAR[0] * ((sPAR[8] * (X[71] * X[57])) + ((sPAR[32] * X[69]) + ((sPAR[28] * X[67]) + ((sPAR[30] * X[69]) + (((-(X[68])) * (sPAR[9] + (sPAR[27] * X[8]))) - (sPAR[29] * (X[68] * X[77]))))))));
    F[17]=(sPAR[0] * ((sPAR[6] * (X[19] * X[43])) + ((sPAR[13] * X[16]) + ((sPAR[11] * X[16]) + (X[17] * (((-(sPAR[10])) * X[65]) - sPAR[7]))))));
    F[28]=(sPAR[0] * ((sPAR[3] * (X[29] * X[71])) + (((-(sPAR[4])) - sPAR[5]) * X[28])));
    F[33]=(sPAR[0] * ((sPAR[2] * X[32]) - (sPAR[73] * X[33])));
    F[32]=(sPAR[0] * ((sPAR[77] * (X[34] * X[65])) + (((-(sPAR[78])) - sPAR[2]) * X[32])));
    F[30]=(sPAR[0] * ((sPAR[45] * (X[34] * X[14])) + (((-(sPAR[56])) - sPAR[67]) * X[30])));
    F[29]=(sPAR[0] * ((sPAR[23] * (X[35] * X[48])) + ((sPAR[4] * X[28]) + (X[29] * (((-(sPAR[3])) * X[71]) - sPAR[34])))));
    F[34]=(sPAR[0] * ((sPAR[1] * (X[35] * X[50])) + ((sPAR[67] * X[30]) + ((sPAR[73] * X[33]) + ((sPAR[5] * X[28]) + ((sPAR[56] * X[30]) + ((sPAR[78] * X[32]) + ((sPAR[50] * X[25]) + ((((-(sPAR[45])) * (X[34] * X[14])) - (sPAR[49] * (X[26] * X[34]))) - (X[34] * (sPAR[12] + (sPAR[77] * X[65]))))))))))));
    F[35]=((-(sPAR[0])) * ((sPAR[1] * (X[35] * X[50])) + ((sPAR[23] * (X[35] * X[48])) + (((-(sPAR[34])) * X[29]) - (sPAR[12] * X[34])))));
    F[22]=(sPAR[0] * ((sPAR[100] * (X[21] * (X[20] / sPAR[113]))) + ((sPAR[64] * X[10]) + (((-(sPAR[63])) * (X[11] * X[22])) - (sPAR[83] * X[22])))));
    F[21]=(sPAR[0] * ((sPAR[83] * X[22]) - (sPAR[100] * (X[21] * (X[20] / sPAR[113])))));
    F[59]=(sPAR[0] * ((sPAR[109] * (X[58] * (X[20] / sPAR[113]))) + ((sPAR[46] * X[1]) - (sPAR[92] * X[59]))));
    F[58]=(sPAR[0] * ((sPAR[92] * X[59]) - (sPAR[109] * (X[58] * (X[20] / sPAR[113])))));
    F[45]=(sPAR[0] * ((sPAR[106] * (X[44] * (X[20] / sPAR[113]))) + ((sPAR[42] * X[0]) - (sPAR[89] * X[45]))));
    F[44]=(sPAR[0] * ((sPAR[89] * X[45]) - (sPAR[106] * (X[44] * (X[20] / sPAR[113])))));
    F[24]=(sPAR[0] * ((sPAR[101] * (X[23] * (X[20] / sPAR[113]))) + ((sPAR[69] * X[2]) + (((-(sPAR[68])) * (X[4] * X[24])) - (sPAR[84] * X[24])))));
    F[23]=(sPAR[0] * ((sPAR[84] * X[24]) - (sPAR[101] * (X[23] * (X[20] / sPAR[113])))));
    F[4]=(sPAR[0] * ((sPAR[96] * (X[3] * (X[20] / sPAR[113]))) + ((sPAR[65] * X[10]) + ((sPAR[69] * X[2]) + (X[4] * (((-(sPAR[68])) * X[24]) - sPAR[79]))))));
    F[3]=(sPAR[0] * ((sPAR[79] * X[4]) - (sPAR[96] * (X[3] * (X[20] / sPAR[113])))));
    F[71]=((sPAR[111] * (X[70] * (X[20] / sPAR[113]))) + ((sPAR[0] * (sPAR[73] * X[33])) + ((sPAR[0] * (sPAR[5] * X[28])) + ((sPAR[0] * (sPAR[13] * X[16])) + ((sPAR[0] * (sPAR[16] * X[52])) + ((sPAR[0] * (sPAR[19] * X[38])) + ((sPAR[0] * (sPAR[36] * X[46])) + ((sPAR[0] * ((sPAR[4] * X[28]) - (sPAR[3] * (X[29] * X[71])))) + ((sPAR[0] * ((sPAR[9] * X[68]) - (sPAR[8] * (X[71] * X[57])))) + ((sPAR[0] * ((sPAR[15] * X[52]) - (sPAR[14] * (X[54] * X[71])))) + ((sPAR[18] * X[38]) + ((sPAR[0] * ((sPAR[35] * X[46]) - (sPAR[33] * (X[48] * X[71])))) + (((-(sPAR[94])) * X[71]) - (sPAR[17] * (X[40] * X[71])))))))))))))));
    F[70]=((sPAR[94] * X[71]) + ((sPAR[0] * ((sPAR[48] * X[26]) - (sPAR[47] * (X[27] * X[70])))) + (((-(sPAR[0])) * ((sPAR[52] * (X[70] * X[6])) + (sPAR[76] * (X[74] * X[70])))) - (sPAR[111] * (X[70] * (X[20] / sPAR[113]))))));
    F[65]=(sPAR[0] * ((sPAR[110] * (X[64] * (X[20] / sPAR[113]))) + ((sPAR[78] * X[32]) + ((sPAR[11] * X[16]) + ((((-(sPAR[77])) * (X[34] * X[65])) - (sPAR[10] * (X[17] * X[65]))) - (sPAR[93] * X[65]))))));
    F[64]=(sPAR[0] * ((sPAR[93] * X[65]) - (sPAR[110] * (X[64] * (X[20] / sPAR[113])))));
    F[19]=(sPAR[0] * ((sPAR[99] * (X[18] * (X[20] / sPAR[113]))) + ((sPAR[67] * X[30]) + ((sPAR[72] * X[62]) + ((sPAR[7] * X[17]) + (X[19] * (((-(sPAR[6])) * X[43]) - sPAR[82])))))));
    F[18]=((-(sPAR[0])) * ((sPAR[99] * (X[18] * (X[20] / sPAR[113]))) + ((sPAR[51] * (X[18] * X[6])) - (sPAR[82] * X[19]))));
    F[14]=(sPAR[0] * ((sPAR[98] * (X[13] * (X[20] / sPAR[113]))) + ((sPAR[56] * X[30]) + ((sPAR[71] * X[62]) + ((((-(sPAR[45])) * (X[34] * X[14])) - (sPAR[70] * (X[63] * X[14]))) - (sPAR[81] * X[14]))))));
    F[13]=(sPAR[0] * ((sPAR[81] * X[14]) - (sPAR[98] * (X[13] * (X[20] / sPAR[113])))));
    F[43]=(sPAR[0] * ((sPAR[105] * (X[42] * (X[20] / sPAR[113]))) + ((sPAR[19] * X[38]) + ((sPAR[26] * X[37]) + ((sPAR[60] * X[41]) + ((sPAR[7] * X[17]) + ((sPAR[41] * X[0]) + ((((-(sPAR[6])) * (X[19] * X[43])) - (sPAR[40] * (X[2] * X[43]))) - (sPAR[88] * X[43])))))))));
    F[42]=(sPAR[0] * ((sPAR[88] * X[43]) - (sPAR[105] * (X[42] * (X[20] / sPAR[113])))));
    F[40]=((sPAR[0] * ((sPAR[104] * (X[39] * (X[20] / sPAR[113]))) - (sPAR[87] * X[40]))) + ((sPAR[18] * X[38]) + ((sPAR[0] * ((sPAR[25] * X[37]) - (sPAR[24] * (X[40] * X[12])))) + ((sPAR[0] * ((sPAR[59] * X[41]) - (sPAR[58] * (X[40] * X[77])))) - (sPAR[17] * (X[40] * X[71]))))));
    F[39]=(sPAR[0] * ((sPAR[87] * X[40]) - (sPAR[104] * (X[39] * (X[20] / sPAR[113])))));
    F[50]=(sPAR[0] * ((sPAR[107] * (X[49] * (X[20] / sPAR[113]))) + ((sPAR[36] * X[46]) + ((sPAR[12] * X[34]) + (((-(sPAR[1])) * (X[35] * X[50])) - (sPAR[90] * X[50]))))));
    F[49]=(sPAR[0] * ((sPAR[90] * X[50]) - (sPAR[107] * (X[49] * (X[20] / sPAR[113])))));
    F[48]=(sPAR[0] * ((sPAR[103] * (X[47] * (X[20] / sPAR[113]))) + ((sPAR[34] * X[29]) + ((sPAR[35] * X[46]) + ((((-(sPAR[23])) * (X[35] * X[48])) - (sPAR[33] * (X[48] * X[71]))) - (sPAR[86] * X[48]))))));
    F[47]=(sPAR[0] * ((sPAR[86] * X[48]) - (sPAR[103] * (X[47] * (X[20] / sPAR[113])))));
    F[57]=(sPAR[0] * ((sPAR[108] * (X[56] * (X[20] / sPAR[113]))) + ((sPAR[16] * X[52]) + ((sPAR[22] * X[51]) + ((sPAR[57] * X[55]) + ((sPAR[9] * X[68]) + ((sPAR[44] * X[1]) + ((((-(sPAR[8])) * (X[71] * X[57])) - (sPAR[43] * (X[2] * X[57]))) - (sPAR[91] * X[57])))))))));
    F[56]=(sPAR[0] * ((sPAR[91] * X[57]) - (sPAR[108] * (X[56] * (X[20] / sPAR[113])))));
    F[54]=(sPAR[0] * ((sPAR[102] * (X[53] * (X[20] / sPAR[113]))) + ((sPAR[15] * X[52]) + ((sPAR[21] * X[51]) + ((sPAR[55] * X[55]) + (X[54] * ((((-(sPAR[14])) * X[71]) - (sPAR[54] * X[77])) - (sPAR[85] + (sPAR[20] * X[12])))))))));
    F[53]=(sPAR[0] * ((sPAR[85] * X[54]) - (sPAR[102] * (X[53] * (X[20] / sPAR[113])))));
    F[77]=(sPAR[0] * ((sPAR[112] * (X[76] * (X[20] / sPAR[113]))) + ((sPAR[57] * X[55]) + ((sPAR[60] * X[41]) + ((sPAR[30] * X[69]) + ((sPAR[55] * X[55]) + ((sPAR[59] * X[41]) + (((((-(sPAR[29])) * (X[68] * X[77])) - (sPAR[58] * (X[40] * X[77]))) - (sPAR[54] * (X[54] * X[77]))) - (sPAR[95] * X[77])))))))));
    F[76]=((-(sPAR[0])) * ((sPAR[112] * (X[76] * (X[20] / sPAR[113]))) + ((sPAR[66] * (X[76] * X[6])) - (sPAR[95] * X[77]))));
    F[8]=(sPAR[0] * ((sPAR[97] * (X[7] * (X[20] / sPAR[113]))) + ((sPAR[28] * X[67]) + (((-(sPAR[27])) * (X[68] * X[8])) - (sPAR[80] * X[8])))));
    F[7]=(sPAR[0] * ((sPAR[80] * X[8]) - (sPAR[97] * (X[7] * (X[20] / sPAR[113])))));

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
    sPAR[53]=6.83e-06; //k57
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
    sPAR[74]=2.3e-06; //k76
    sPAR[75]=2.5e-06; //k77
    sPAR[76]=1.4e-06; //k78
    sPAR[77]=0.1; //k8
    sPAR[78]=32.5; //k9
    sPAR[79]=3.5; //koffAPC
    sPAR[80]=1.0; //koffII
    sPAR[81]=0.115; //koffIX
    sPAR[82]=0.115; //koffIXa
    sPAR[83]=11.5; //koffPC
    sPAR[84]=0.2; //koffPS
    sPAR[85]=0.145; //koffV
    sPAR[86]=0.66; //koffVII
    sPAR[87]=0.1; //koffVIII
    sPAR[88]=0.335; //koffVIIIa
    sPAR[89]=0.335; //koffVIIIai
    sPAR[90]=0.227; //koffVIIa
    sPAR[91]=0.17; //koffVa
    sPAR[92]=0.17; //koffVai
    sPAR[93]=1.9; //koffX
    sPAR[94]=3.3; //koffXa
    sPAR[95]=0.475; //koffmIIa
    sPAR[96]=0.05; //konAPC
    sPAR[97]=0.0043; //konII
    sPAR[98]=0.05; //konIX
    sPAR[99]=0.05; //konIXa
    sPAR[100]=0.05; //konPC
    sPAR[101]=0.05; //konPS
    sPAR[102]=0.05; //konV
    sPAR[103]=0.05; //konVII
    sPAR[104]=0.05; //konVIII
    sPAR[105]=0.05; //konVIIIa
    sPAR[106]=0.05; //konVIIIai
    sPAR[107]=0.05; //konVIIa
    sPAR[108]=0.057; //konVa
    sPAR[109]=0.057; //konVai
    sPAR[110]=0.01; //konX
    sPAR[111]=0.029; //konXa
    sPAR[112]=0.05; //konmIIa
    sPAR[113]=100.0; //nva
    X[0]=0.0; //APC_PS_VIIIa_l
    X[1]=0.0; //APC_PS_Va_l
    X[2]=0.0; //APC_PS_l
    X[3]=0.0; //APC_f
    X[4]=0.0; //APC_l
    X[5]=0.0; //AT_XIa_l
    X[6]=3400.0; //AT_f
    X[7]=1400.0; //II_f
    X[8]=0.0; //II_l
    X[9]=0.0; //IIa_AT_f
    X[10]=0.0; //IIa_TM_PC_l
    X[11]=0.0; //IIa_TM_l
    X[12]=0.0; //IIa_f
    X[13]=90.0; //IX_f
    X[14]=0.0; //IX_l
    X[15]=0.0; //IXa_AT_f
    X[16]=0.0; //IXa_VIIIa_X_l
    X[17]=0.0; //IXa_VIIIa_l
    X[18]=0.0; //IXa_f
    X[19]=0.0; //IXa_l
    X[20]=170000.0; //LIPID
    X[21]=60.0; //PC_f
    X[22]=0.0; //PC_l
    X[23]=300.0; //PS_f
    X[24]=0.0; //PS_l
    X[25]=0.0; //TFPI_Xa_TF_VIIa_l
    X[26]=0.0; //TFPI_Xa_l
    X[27]=2.5; //TFPI_f
    X[28]=0.0; //TF_VII_Xa_l
    X[29]=0.0; //TF_VII_l
    X[30]=0.0; //TF_VIIa_IX_l
    X[31]=0.0; //TF_VIIa_IXa_l
    X[32]=0.0; //TF_VIIa_X_l
    X[33]=0.0; //TF_VIIa_Xa_l
    X[34]=0.0; //TF_VIIa_l
    X[35]=0.005; //TF_l
    X[36]=1.0; //TM_l
    X[37]=0.0; //VIII_IIa_l
    X[38]=0.0; //VIII_Xa_l
    X[39]=0.7; //VIII_f
    X[40]=0.0; //VIII_l
    X[41]=0.0; //VIII_mIIa_l
    X[42]=0.0; //VIIIa_f
    X[43]=0.0; //VIIIa_l
    X[44]=0.0; //VIIIai_f
    X[45]=0.0; //VIIIai_l
    X[46]=0.0; //VII_Xa_l
    X[47]=10.0; //VII_f
    X[48]=0.0; //VII_l
    X[49]=0.1; //VIIa_f
    X[50]=0.0; //VIIa_l
    X[51]=0.0; //V_IIa_l
    X[52]=0.0; //V_Xa_l
    X[53]=20.0; //V_f
    X[54]=0.0; //V_l
    X[55]=0.0; //V_mIIa_l
    X[56]=0.0; //Va_f
    X[57]=0.0; //Va_l
    X[58]=0.0; //Vai_f
    X[59]=0.0; //Vai_l
    X[60]=0.0; //XI_IIa_l
    X[61]=30.0; //XI_f
    X[62]=0.0; //XIa_IX_l
    X[63]=0.0; //XIa_l
    X[64]=170.0; //X_f
    X[65]=0.0; //X_l
    X[66]=0.0; //Xa_AT_f
    X[67]=0.0; //Xa_Va_II_l
    X[68]=0.0; //Xa_Va_l
    X[69]=0.0; //Xa_Va_mIIa_l
    X[70]=0.0; //Xa_f
    X[71]=0.0; //Xa_l
    X[72]=0.0; //alpha2M_IIa_l
    X[73]=0.0; //alpha2M_Xa_l
    X[74]=2600.0; //alpha2M_l
    X[75]=0.0; //mIIa_AT_l
    X[76]=0.0; //mIIa_f
    X[77]=0.0; //mIIa_l

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
