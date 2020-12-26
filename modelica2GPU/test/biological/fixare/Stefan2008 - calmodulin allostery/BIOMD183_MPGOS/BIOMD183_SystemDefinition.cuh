
#ifndef BIOMD183_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD183_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[1]=(sPAR[15] / sPAR[10]);
    ACC[25]=(sPAR[14] * sPAR[1]);
    ACC[45]=(ACC[25] / sPAR[5]);
    ACC[14]=(sPAR[13] * sPAR[1]);
    ACC[44]=(ACC[14] / sPAR[4]);
    ACC[3]=(sPAR[12] * sPAR[1]);
    ACC[42]=(ACC[3] / sPAR[3]);
    ACC[0]=(sPAR[11] * sPAR[1]);
    ACC[35]=(ACC[0] / sPAR[2]);
    ACC[4]=(X[21] + (X[22] + (X[24] + X[25])));
    ACC[2]=(X[4] + (X[5] + (X[6] + X[7])));
    ACC[5]=(ACC[2] + ACC[4]);
    ACC[37]=(ACC[2] / ACC[5]);
    ACC[6]=(X[8] + (X[26] + (X[44] + X[63])));
    ACC[7]=(X[29] + (X[30] + (X[31] + X[32])));
    ACC[9]=(X[40] + (X[41] + (X[42] + X[43])));
    ACC[8]=(X[33] + (X[35] + (X[36] + (X[37] + (X[38] + X[39])))));
    ACC[10]=(X[28] + (ACC[7] + (ACC[8] + (ACC[9] + X[44]))));
    ACC[11]=(ACC[10] + X[27]);
    ACC[12]=(ACC[10] / ACC[11]);
    ACC[13]=(X[48] + (X[49] + (X[50] + X[51])));
    ACC[15]=(X[52] + (X[53] + (X[54] + (X[55] + (X[57] + X[58])))));
    ACC[16]=(X[59] + (X[60] + (X[61] + X[62])));
    ACC[17]=(X[47] + (ACC[13] + (ACC[15] + (ACC[16] + X[63]))));
    ACC[18]=(ACC[17] + X[46]);
    ACC[19]=(ACC[17] / ACC[18]);
    ACC[24]=(ACC[9] + (ACC[16] + ACC[5]));
    ACC[20]=(X[0] + (X[12] + (X[23] + (X[34] + (X[45] + (X[56] + (X[64] + (X[65] + (X[66] + (X[2] + (X[3] + (X[4] + (X[5] + (X[6] + (X[7] + X[8])))))))))))))));
    ACC[21]=(ACC[20] + (ACC[10] + ACC[17]));
    ACC[22]=(X[9] + (X[10] + (X[11] + (X[13] + (X[14] + (X[15] + (X[16] + (X[17] + (X[18] + (X[19] + (X[20] + (X[21] + (X[22] + (X[24] + (X[25] + X[26])))))))))))))));
    ACC[23]=(ACC[21] / (ACC[21] + ACC[22]));
    ACC[26]=(X[56] + (X[64] + (X[65] + (X[66] + (X[2] + X[3])))));
    ACC[27]=(X[15] + (X[16] + (X[17] + (X[18] + (X[19] + X[20])))));
    ACC[28]=(ACC[26] + ACC[27]);
    ACC[38]=(ACC[26] / ACC[28]);
    ACC[29]=(ACC[28] + (ACC[8] + ACC[15]));
    ACC[30]=(X[12] + (X[23] + (X[34] + (X[45] + (X[10] + (X[11] + (X[13] + X[14])))))));
    ACC[39]=((X[12] + (X[23] + (X[34] + X[45]))) / ACC[30]);
    ACC[31]=(ACC[30] + (ACC[7] + ACC[13]));
    ACC[32]=(X[0] + (X[9] + (X[28] + X[47])));
    ACC[33]=(ACC[32] + (ACC[31] + (ACC[29] + (ACC[24] + ACC[6]))));
    ACC[34]=(((4.0 * ACC[6]) + ((3.0 * ACC[24]) + ((2.0 * ACC[29]) + ACC[31]))) / ACC[33]);
    ACC[43]=((-0.25 * ACC[34]) / ((0.25 * ACC[34]) + -1.0));
    ACC[41]=(ACC[43] / (ACC[43] + 1.0));
    ACC[36]=(X[8] / (X[8] + X[26]));
    ACC[40]=(X[0] / (X[0] + X[9]));
    F[62]=(sPAR[0] * ((sPAR[8] * (X[7] * X[46])) + ((sPAR[1] * (X[1] * (X[55] + (X[57] + X[58])))) + ((ACC[0] * X[63]) + (X[62] * (((((-(ACC[25])) - sPAR[9]) - ACC[14]) - (sPAR[1] * X[1])) - ACC[3]))))));
    F[61]=(sPAR[0] * ((sPAR[8] * (X[6] * X[46])) + ((sPAR[1] * (X[1] * (X[53] + (X[54] + X[58])))) + ((ACC[3] * X[63]) + (X[61] * (((((-(ACC[25])) - sPAR[9]) - ACC[14]) - (sPAR[1] * X[1])) - ACC[0]))))));
    F[60]=(sPAR[0] * ((sPAR[8] * (X[5] * X[46])) + ((sPAR[1] * (X[1] * (X[52] + (X[54] + X[57])))) + ((ACC[14] * X[63]) + (X[60] * (((((-(ACC[25])) - sPAR[9]) - ACC[3]) - (sPAR[1] * X[1])) - ACC[0]))))));
    F[59]=(sPAR[0] * ((sPAR[8] * (X[4] * X[46])) + ((sPAR[1] * (X[1] * (X[52] + (X[53] + X[55])))) + ((ACC[25] * X[63]) + (X[59] * (((((-(ACC[14])) - sPAR[9]) - ACC[3]) - (sPAR[1] * X[1])) - ACC[0]))))));
    F[58]=(sPAR[0] * ((sPAR[8] * (X[3] * X[46])) + ((sPAR[1] * (X[1] * (X[50] + X[51]))) + ((ACC[0] * X[61]) + ((ACC[3] * X[62]) + ((X[58] * (((((-(sPAR[1])) * X[1]) - sPAR[9]) - ACC[14]) - ACC[25])) - (sPAR[1] * (X[58] * X[1]))))))));
    F[57]=(sPAR[0] * ((sPAR[8] * (X[2] * X[46])) + ((sPAR[1] * (X[1] * (X[49] + X[51]))) + ((ACC[0] * X[60]) + ((ACC[14] * X[62]) + ((X[57] * (((((-(sPAR[1])) * X[1]) - sPAR[9]) - ACC[3]) - ACC[25])) - (sPAR[1] * (X[57] * X[1]))))))));
    F[55]=(sPAR[0] * ((sPAR[8] * (X[66] * X[46])) + ((sPAR[1] * (X[1] * (X[49] + X[50]))) + ((ACC[0] * X[59]) + ((ACC[25] * X[62]) + ((X[55] * (((((-(sPAR[1])) * X[1]) - sPAR[9]) - ACC[3]) - ACC[14])) - (sPAR[1] * (X[55] * X[1]))))))));
    F[54]=(sPAR[0] * ((sPAR[8] * (X[65] * X[46])) + ((sPAR[1] * (X[1] * (X[48] + X[51]))) + ((ACC[3] * X[60]) + ((ACC[14] * X[61]) + ((X[54] * (((((-(sPAR[1])) * X[1]) - sPAR[9]) - ACC[0]) - ACC[25])) - (sPAR[1] * (X[54] * X[1]))))))));
    F[53]=(sPAR[0] * ((sPAR[8] * (X[64] * X[46])) + ((sPAR[1] * (X[1] * (X[48] + X[50]))) + ((ACC[3] * X[59]) + ((ACC[25] * X[61]) + ((X[53] * (((((-(sPAR[1])) * X[1]) - sPAR[9]) - ACC[0]) - ACC[14])) - (sPAR[1] * (X[53] * X[1]))))))));
    F[52]=(sPAR[0] * ((sPAR[8] * (X[56] * X[46])) + ((sPAR[1] * (X[1] * (X[48] + X[49]))) + ((ACC[14] * X[59]) + ((ACC[25] * X[60]) + ((X[52] * (((((-(sPAR[1])) * X[1]) - sPAR[9]) - ACC[0]) - ACC[3])) - (sPAR[1] * (X[52] * X[1]))))))));
    F[51]=(sPAR[0] * ((sPAR[8] * (X[45] * X[46])) + ((sPAR[1] * (X[47] * X[1])) + ((ACC[0] * X[54]) + ((ACC[3] * X[57]) + ((ACC[14] * X[58]) + ((X[51] * (((-(ACC[25])) - (sPAR[1] * X[1])) - sPAR[9])) + (2.0 * ((-(sPAR[1])) * (X[51] * X[1]))))))))));
    F[50]=(sPAR[0] * ((sPAR[8] * (X[34] * X[46])) + ((sPAR[1] * (X[47] * X[1])) + ((ACC[0] * X[53]) + ((ACC[3] * X[55]) + ((ACC[25] * X[58]) + ((X[50] * (((-(ACC[14])) - (sPAR[1] * X[1])) - sPAR[9])) + (2.0 * ((-(sPAR[1])) * (X[50] * X[1]))))))))));
    F[49]=(sPAR[0] * ((sPAR[8] * (X[23] * X[46])) + ((sPAR[1] * (X[47] * X[1])) + ((ACC[0] * X[52]) + ((ACC[14] * X[55]) + ((ACC[25] * X[57]) + ((X[49] * (((-(ACC[3])) - (sPAR[1] * X[1])) - sPAR[9])) + (2.0 * ((-(sPAR[1])) * (X[49] * X[1]))))))))));
    F[48]=(sPAR[0] * ((sPAR[8] * (X[12] * X[46])) + ((sPAR[1] * (X[47] * X[1])) + ((ACC[3] * X[52]) + ((ACC[14] * X[53]) + ((ACC[25] * X[54]) + ((X[48] * (((-(ACC[0])) - (sPAR[1] * X[1])) - sPAR[9])) + (2.0 * ((-(sPAR[1])) * (X[48] * X[1]))))))))));
    F[47]=(sPAR[0] * ((sPAR[8] * (X[0] * X[46])) + ((ACC[0] * X[48]) + ((ACC[3] * X[49]) + ((ACC[14] * X[50]) + ((ACC[25] * X[51]) + ((3.0 * ((-(sPAR[1])) * (X[47] * X[1]))) - (X[47] * (sPAR[9] + (sPAR[1] * X[1]))))))))));
    F[44]=(sPAR[0] * ((sPAR[6] * (X[8] * X[27])) + ((sPAR[1] * (X[1] * (X[43] + (X[42] + (X[41] + X[40]))))) + ((((((-(ACC[14])) - sPAR[7]) - ACC[3]) - ACC[25]) - ACC[0]) * X[44]))));
    F[43]=(sPAR[0] * ((sPAR[6] * (X[7] * X[27])) + ((sPAR[1] * (X[1] * (X[37] + (X[38] + X[39])))) + ((ACC[0] * X[44]) + (X[43] * (((((-(ACC[3])) - sPAR[7]) - ACC[14]) - (sPAR[1] * X[1])) - ACC[25]))))));
    F[42]=(sPAR[0] * ((sPAR[6] * (X[6] * X[27])) + ((sPAR[1] * (X[1] * (X[35] + (X[36] + X[39])))) + ((ACC[3] * X[44]) + (X[42] * (((((-(ACC[0])) - sPAR[7]) - ACC[14]) - (sPAR[1] * X[1])) - ACC[25]))))));
    F[41]=(sPAR[0] * ((sPAR[6] * (X[5] * X[27])) + ((sPAR[1] * (X[1] * (X[33] + (X[36] + X[38])))) + ((ACC[14] * X[44]) + (X[41] * (((((-(ACC[0])) - sPAR[7]) - ACC[3]) - (sPAR[1] * X[1])) - ACC[25]))))));
    F[40]=(sPAR[0] * ((sPAR[6] * (X[4] * X[27])) + ((sPAR[1] * (X[1] * (X[33] + (X[35] + X[37])))) + ((ACC[25] * X[44]) + (X[40] * (((((-(ACC[0])) - sPAR[7]) - ACC[3]) - (sPAR[1] * X[1])) - ACC[14]))))));
    F[39]=(sPAR[0] * ((sPAR[6] * (X[3] * X[27])) + ((sPAR[1] * (X[1] * (X[31] + X[32]))) + ((ACC[0] * X[42]) + ((ACC[3] * X[43]) + ((X[39] * (((((-(sPAR[1])) * X[1]) - sPAR[7]) - ACC[14]) - ACC[25])) - (sPAR[1] * (X[39] * X[1]))))))));
    F[38]=(sPAR[0] * ((sPAR[6] * (X[2] * X[27])) + ((sPAR[1] * (X[1] * (X[30] + X[32]))) + ((ACC[0] * X[41]) + ((ACC[14] * X[43]) + ((X[38] * (((((-(sPAR[1])) * X[1]) - sPAR[7]) - ACC[3]) - ACC[25])) - (sPAR[1] * (X[38] * X[1]))))))));
    F[37]=(sPAR[0] * ((sPAR[6] * (X[66] * X[27])) + ((sPAR[1] * (X[1] * (X[30] + X[31]))) + ((ACC[0] * X[40]) + ((ACC[25] * X[43]) + ((X[37] * (((((-(sPAR[1])) * X[1]) - sPAR[7]) - ACC[3]) - ACC[14])) - (sPAR[1] * (X[37] * X[1]))))))));
    F[36]=(sPAR[0] * ((sPAR[6] * (X[65] * X[27])) + ((sPAR[1] * (X[1] * (X[29] + X[32]))) + ((ACC[3] * X[41]) + ((ACC[14] * X[42]) + ((X[36] * (((((-(sPAR[1])) * X[1]) - sPAR[7]) - ACC[0]) - ACC[25])) - (sPAR[1] * (X[36] * X[1]))))))));
    F[35]=(sPAR[0] * ((sPAR[6] * (X[64] * X[27])) + ((sPAR[1] * (X[1] * (X[29] + X[31]))) + ((ACC[3] * X[40]) + ((ACC[25] * X[42]) + ((X[35] * (((((-(sPAR[1])) * X[1]) - sPAR[7]) - ACC[0]) - ACC[14])) - (sPAR[1] * (X[35] * X[1]))))))));
    F[33]=(sPAR[0] * ((sPAR[6] * (X[56] * X[27])) + ((sPAR[1] * (X[1] * (X[29] + X[30]))) + ((ACC[14] * X[40]) + ((ACC[25] * X[41]) + ((X[33] * (((((-(sPAR[1])) * X[1]) - sPAR[7]) - ACC[0]) - ACC[3])) - (sPAR[1] * (X[33] * X[1]))))))));
    F[32]=(sPAR[0] * ((sPAR[6] * (X[45] * X[27])) + ((sPAR[1] * (X[28] * X[1])) + ((ACC[0] * X[36]) + ((ACC[3] * X[38]) + ((ACC[14] * X[39]) + ((X[32] * (((-(ACC[25])) - (sPAR[1] * X[1])) - sPAR[7])) + (2.0 * ((-(sPAR[1])) * (X[32] * X[1]))))))))));
    F[31]=(sPAR[0] * ((sPAR[6] * (X[34] * X[27])) + ((sPAR[1] * (X[28] * X[1])) + ((ACC[0] * X[35]) + ((ACC[3] * X[37]) + ((ACC[25] * X[39]) + ((X[31] * (((-(ACC[14])) - (sPAR[1] * X[1])) - sPAR[7])) + (2.0 * ((-(sPAR[1])) * (X[31] * X[1]))))))))));
    F[30]=(sPAR[0] * ((sPAR[6] * (X[23] * X[27])) + ((sPAR[1] * (X[28] * X[1])) + ((ACC[0] * X[33]) + ((ACC[14] * X[37]) + ((ACC[25] * X[38]) + ((2.0 * ((-(sPAR[1])) * (X[30] * X[1]))) + (((-(X[30])) * (sPAR[7] + (sPAR[1] * X[1]))) - (ACC[3] * X[30])))))))));
    F[29]=(sPAR[0] * ((sPAR[6] * (X[12] * X[27])) + ((sPAR[1] * (X[28] * X[1])) + ((ACC[3] * X[33]) + ((ACC[14] * X[35]) + ((ACC[25] * X[36]) + ((X[29] * (((-(ACC[0])) - (sPAR[1] * X[1])) - sPAR[7])) + (2.0 * ((-(sPAR[1])) * (X[29] * X[1]))))))))));
    F[28]=(sPAR[0] * ((sPAR[6] * (X[0] * X[27])) + ((ACC[0] * X[29]) + ((ACC[14] * X[31]) + ((ACC[25] * X[32]) + ((ACC[3] * X[30]) + ((3.0 * ((-(sPAR[1])) * (X[28] * X[1]))) - (X[28] * (sPAR[7] + (sPAR[1] * X[1]))))))))));
    F[7]=(sPAR[0] * ((sPAR[1] * (X[1] * (X[66] + (X[2] + X[3])))) + ((ACC[0] * X[8]) + (function_24(ACC[1],sPAR[3],sPAR[4],sPAR[5],X[25]) + ((sPAR[7] * X[43]) + ((sPAR[9] * X[62]) + ((X[7] * ((((-(ACC[3])) - (sPAR[1] * X[1])) - ACC[25]) - ACC[14])) + ((X[7] * (((-(sPAR[6])) * X[27]) - (sPAR[8] * X[46]))) - function_20(sPAR[3],sPAR[4],sPAR[5],sPAR[15],X[7])))))))));
    F[6]=(sPAR[0] * ((sPAR[1] * (X[1] * (X[64] + (X[65] + X[3])))) + ((ACC[3] * X[8]) + (function_23(ACC[1],sPAR[2],sPAR[4],sPAR[5],X[24]) + ((sPAR[7] * X[42]) + ((sPAR[9] * X[61]) + ((X[6] * ((((-(ACC[0])) - (sPAR[1] * X[1])) - ACC[25]) - ACC[14])) + ((X[6] * (((-(sPAR[6])) * X[27]) - (sPAR[8] * X[46]))) - function_19(sPAR[2],sPAR[4],sPAR[5],sPAR[15],X[6])))))))));
    F[5]=(sPAR[0] * ((sPAR[1] * (X[1] * (X[56] + (X[65] + X[2])))) + ((ACC[14] * X[8]) + (function_22(ACC[1],sPAR[2],sPAR[3],sPAR[5],X[22]) + ((sPAR[7] * X[41]) + ((sPAR[9] * X[60]) + ((X[5] * ((((-(ACC[0])) - (sPAR[1] * X[1])) - ACC[25]) - ACC[3])) + ((X[5] * (((-(sPAR[6])) * X[27]) - (sPAR[8] * X[46]))) - function_18(sPAR[2],sPAR[3],sPAR[5],sPAR[15],X[5])))))))));
    F[4]=(sPAR[0] * ((sPAR[1] * (X[1] * (X[56] + (X[64] + X[66])))) + ((ACC[25] * X[8]) + (function_21(ACC[1],sPAR[2],sPAR[3],sPAR[4],X[21]) + ((sPAR[7] * X[40]) + ((sPAR[9] * X[59]) + ((X[4] * ((((-(ACC[0])) - (sPAR[1] * X[1])) - ACC[14]) - ACC[3])) + ((X[4] * (((-(sPAR[6])) * X[27]) - (sPAR[8] * X[46]))) - function_17(sPAR[2],sPAR[3],sPAR[4],sPAR[15],X[4])))))))));
    F[3]=(sPAR[0] * ((sPAR[1] * (X[1] * (X[34] + X[45]))) + ((ACC[0] * X[6]) + ((ACC[3] * X[7]) + (function_16(ACC[1],sPAR[4],sPAR[5],X[20]) + ((sPAR[7] * X[39]) + ((sPAR[9] * X[58]) + ((X[3] * (((-(ACC[25])) - ACC[14]) - (sPAR[1] * X[1]))) + ((X[3] * (((-(sPAR[1])) * X[1]) - (sPAR[8] * X[46]))) + (((-(sPAR[6])) * (X[3] * X[27])) - function_10(sPAR[4],sPAR[5],sPAR[15],X[3])))))))))));
    F[2]=(sPAR[0] * ((sPAR[1] * (X[1] * (X[23] + X[45]))) + ((ACC[0] * X[5]) + ((ACC[14] * X[7]) + (function_15(ACC[1],sPAR[3],sPAR[5],X[19]) + ((sPAR[7] * X[38]) + ((sPAR[9] * X[57]) + ((X[2] * (((-(ACC[25])) - ACC[3]) - (sPAR[1] * X[1]))) + ((X[2] * (((-(sPAR[1])) * X[1]) - (sPAR[8] * X[46]))) + (((-(sPAR[6])) * (X[2] * X[27])) - function_9(sPAR[3],sPAR[5],sPAR[15],X[2])))))))))));
    F[66]=(sPAR[0] * ((sPAR[1] * (X[1] * (X[23] + X[34]))) + ((ACC[0] * X[4]) + ((ACC[25] * X[7]) + (function_14(ACC[1],sPAR[3],sPAR[4],X[18]) + ((sPAR[7] * X[37]) + ((sPAR[9] * X[55]) + ((X[66] * (((-(ACC[14])) - ACC[3]) - (sPAR[1] * X[1]))) + ((X[66] * (((-(sPAR[1])) * X[1]) - (sPAR[8] * X[46]))) + (((-(sPAR[6])) * (X[66] * X[27])) - function_8(sPAR[3],sPAR[4],sPAR[15],X[66])))))))))));
    F[65]=(sPAR[0] * ((sPAR[1] * (X[1] * (X[12] + X[45]))) + ((ACC[3] * X[5]) + ((ACC[14] * X[6]) + (function_13(ACC[1],sPAR[2],sPAR[5],X[17]) + ((sPAR[7] * X[36]) + ((sPAR[9] * X[54]) + ((X[65] * (((-(ACC[25])) - ACC[0]) - (sPAR[1] * X[1]))) + ((X[65] * (((-(sPAR[1])) * X[1]) - (sPAR[8] * X[46]))) + (((-(sPAR[6])) * (X[65] * X[27])) - function_7(sPAR[2],sPAR[5],sPAR[15],X[65])))))))))));
    F[64]=(sPAR[0] * ((sPAR[1] * (X[1] * (X[12] + X[34]))) + ((ACC[3] * X[4]) + ((ACC[25] * X[6]) + (function_12(ACC[1],sPAR[2],sPAR[4],X[16]) + ((sPAR[7] * X[35]) + ((sPAR[9] * X[53]) + ((X[64] * (((-(ACC[14])) - ACC[0]) - (sPAR[1] * X[1]))) + ((X[64] * (((-(sPAR[1])) * X[1]) - (sPAR[8] * X[46]))) + (((-(sPAR[6])) * (X[64] * X[27])) - function_6(sPAR[2],sPAR[4],sPAR[15],X[64])))))))))));
    F[56]=(sPAR[0] * ((sPAR[1] * (X[1] * (X[12] + X[23]))) + ((ACC[14] * X[4]) + ((ACC[25] * X[5]) + (function_11(ACC[1],sPAR[2],sPAR[3],X[15]) + ((sPAR[7] * X[33]) + ((sPAR[9] * X[52]) + ((X[56] * (((-(ACC[3])) - ACC[0]) - (sPAR[1] * X[1]))) + ((X[56] * (((-(sPAR[1])) * X[1]) - (sPAR[8] * X[46]))) + (((-(sPAR[6])) * (X[56] * X[27])) - function_5(sPAR[2],sPAR[3],sPAR[15],X[56])))))))))));
    F[45]=(sPAR[0] * ((sPAR[1] * (X[0] * X[1])) + ((ACC[0] * X[65]) + ((ACC[3] * X[2]) + ((ACC[14] * X[3]) + (function_4(ACC[1],sPAR[5],X[14]) + ((sPAR[7] * X[32]) + ((sPAR[9] * X[51]) + ((2.0 * ((-(sPAR[1])) * (X[45] * X[1]))) + (((X[45] * (((-(sPAR[8])) * X[46]) - (ACC[25] + (sPAR[1] * X[1])))) - transition1_R_T(sPAR[15],sPAR[5],X[45])) - (sPAR[6] * (X[45] * X[27]))))))))))));
    F[34]=(sPAR[0] * ((sPAR[1] * (X[0] * X[1])) + ((ACC[0] * X[64]) + ((ACC[3] * X[66]) + ((ACC[25] * X[3]) + (function_3(ACC[1],sPAR[4],X[13]) + ((sPAR[7] * X[31]) + ((sPAR[9] * X[50]) + ((2.0 * ((-(sPAR[1])) * (X[34] * X[1]))) + (((X[34] * (((-(sPAR[8])) * X[46]) - (ACC[14] + (sPAR[1] * X[1])))) - transition1_R_T(sPAR[15],sPAR[4],X[34])) - (sPAR[6] * (X[34] * X[27]))))))))))));
    F[23]=(sPAR[0] * ((sPAR[1] * (X[0] * X[1])) + ((ACC[0] * X[56]) + ((ACC[14] * X[66]) + ((ACC[25] * X[2]) + (function_2(ACC[1],sPAR[3],X[11]) + ((sPAR[7] * X[30]) + ((sPAR[9] * X[49]) + ((2.0 * ((-(sPAR[1])) * (X[23] * X[1]))) + (((X[23] * (((-(sPAR[8])) * X[46]) - (ACC[3] + (sPAR[1] * X[1])))) - transition1_R_T(sPAR[15],sPAR[3],X[23])) - (sPAR[6] * (X[23] * X[27]))))))))))));
    F[12]=(sPAR[0] * ((sPAR[1] * (X[0] * X[1])) + ((ACC[3] * X[56]) + ((ACC[14] * X[64]) + ((ACC[25] * X[65]) + (function_1(ACC[1],sPAR[2],X[10]) + ((sPAR[7] * X[29]) + ((sPAR[9] * X[48]) + ((2.0 * ((-(sPAR[1])) * (X[12] * X[1]))) + (((X[12] * (((-(sPAR[8])) * X[46]) - (ACC[0] + (sPAR[1] * X[1])))) - transition1_R_T(sPAR[15],ACC[1],X[12])) - (sPAR[6] * (X[12] * X[27]))))))))))));
    F[0]=(sPAR[0] * ((ACC[0] * X[12]) + ((ACC[3] * X[23]) + ((ACC[14] * X[34]) + ((ACC[25] * X[45]) + ((ACC[1] * X[9]) + ((sPAR[7] * X[28]) + ((sPAR[9] * X[47]) + ((4.0 * ((-(sPAR[1])) * (X[0] * X[1]))) + (((-(X[0])) * (sPAR[15] + (sPAR[6] * X[27]))) - (sPAR[8] * (X[0] * X[46]))))))))))));
    F[25]=(sPAR[0] * ((sPAR[1] * (X[1] * (X[18] + (X[19] + X[20])))) + ((ACC[35] * X[26]) + (function_20(sPAR[3],sPAR[4],sPAR[5],sPAR[15],X[7]) + ((X[25] * (((((-(sPAR[1])) * X[1]) - ACC[45]) - ACC[44]) - ACC[42])) - function_24(ACC[1],sPAR[3],sPAR[4],sPAR[5],X[25]))))));
    F[24]=(sPAR[0] * ((sPAR[1] * (X[1] * (X[16] + (X[17] + X[20])))) + ((ACC[42] * X[26]) + (function_19(sPAR[2],sPAR[4],sPAR[5],sPAR[15],X[6]) + ((X[24] * (((((-(sPAR[1])) * X[1]) - ACC[45]) - ACC[44]) - ACC[35])) - function_23(ACC[1],sPAR[2],sPAR[4],sPAR[5],X[24]))))));
    F[22]=(sPAR[0] * ((sPAR[1] * (X[1] * (X[15] + (X[17] + X[19])))) + ((ACC[44] * X[26]) + (function_18(sPAR[2],sPAR[3],sPAR[5],sPAR[15],X[5]) + ((X[22] * (((((-(sPAR[1])) * X[1]) - ACC[45]) - ACC[42]) - ACC[35])) - function_22(ACC[1],sPAR[2],sPAR[3],sPAR[5],X[22]))))));
    F[21]=(sPAR[0] * ((sPAR[1] * (X[1] * (X[15] + (X[16] + X[18])))) + ((ACC[45] * X[26]) + (function_17(sPAR[2],sPAR[3],sPAR[4],sPAR[15],X[4]) + ((X[21] * (((-(ACC[35])) - (sPAR[1] * X[1])) - ACC[42])) + ((-(function_21(ACC[1],sPAR[2],sPAR[3],sPAR[4],X[21]))) - (ACC[44] * X[21])))))));
    F[20]=(sPAR[0] * ((sPAR[1] * (X[1] * (X[13] + X[14]))) + ((ACC[35] * X[24]) + ((ACC[42] * X[25]) + (function_10(sPAR[4],sPAR[5],sPAR[15],X[3]) + ((X[20] * (((-(ACC[45])) - (sPAR[1] * X[1])) - ACC[44])) + (((-(sPAR[1])) * (X[20] * X[1])) - function_16(ACC[1],sPAR[4],sPAR[5],X[20]))))))));
    F[19]=(sPAR[0] * ((sPAR[1] * (X[1] * (X[11] + X[14]))) + ((ACC[35] * X[22]) + ((ACC[44] * X[25]) + (function_9(sPAR[3],sPAR[5],sPAR[15],X[2]) + ((X[19] * (((-(ACC[45])) - (sPAR[1] * X[1])) - ACC[42])) + (((-(sPAR[1])) * (X[19] * X[1])) - function_15(ACC[1],sPAR[3],sPAR[5],X[19]))))))));
    F[18]=(sPAR[0] * ((sPAR[1] * (X[1] * (X[11] + X[13]))) + ((ACC[35] * X[21]) + ((ACC[45] * X[25]) + (function_8(sPAR[3],sPAR[4],sPAR[15],X[66]) + ((X[18] * (((-(ACC[44])) - (sPAR[1] * X[1])) - ACC[42])) + (((-(sPAR[1])) * (X[18] * X[1])) - function_14(ACC[1],sPAR[3],sPAR[4],X[18]))))))));
    F[17]=(sPAR[0] * ((sPAR[1] * (X[1] * (X[10] + X[14]))) + ((ACC[42] * X[22]) + ((ACC[44] * X[24]) + (function_7(sPAR[2],sPAR[5],sPAR[15],X[65]) + ((X[17] * (((-(ACC[45])) - (sPAR[1] * X[1])) - ACC[35])) + (((-(sPAR[1])) * (X[17] * X[1])) - function_13(ACC[1],sPAR[2],sPAR[5],X[17]))))))));
    F[16]=(sPAR[0] * ((sPAR[1] * (X[1] * (X[10] + X[13]))) + ((ACC[42] * X[21]) + ((ACC[45] * X[24]) + (function_6(sPAR[2],sPAR[4],sPAR[15],X[64]) + ((X[16] * (((-(ACC[44])) - (sPAR[1] * X[1])) - ACC[35])) + (((-(sPAR[1])) * (X[16] * X[1])) - function_12(ACC[1],sPAR[2],sPAR[4],X[16]))))))));
    F[15]=(sPAR[0] * ((sPAR[1] * (X[1] * (X[10] + X[11]))) + ((ACC[45] * X[22]) + (function_5(sPAR[2],sPAR[3],sPAR[15],X[56]) + ((ACC[44] * X[21]) + ((X[15] * (((-(ACC[42])) - (sPAR[1] * X[1])) - ACC[35])) + (((-(sPAR[1])) * (X[15] * X[1])) - function_11(ACC[1],sPAR[2],sPAR[3],X[15]))))))));
    F[14]=(sPAR[0] * ((sPAR[1] * (X[9] * X[1])) + ((ACC[35] * X[17]) + ((ACC[42] * X[19]) + ((ACC[44] * X[20]) + (transition1_R_T(sPAR[15],sPAR[5],X[45]) + ((2.0 * ((-(sPAR[1])) * (X[14] * X[1]))) + (((-(X[14])) * (ACC[45] + (sPAR[1] * X[1]))) - function_4(ACC[1],sPAR[5],X[14])))))))));
    F[13]=(sPAR[0] * ((sPAR[1] * (X[9] * X[1])) + ((ACC[35] * X[16]) + ((ACC[42] * X[18]) + ((ACC[45] * X[20]) + (transition1_R_T(sPAR[15],sPAR[4],X[34]) + ((2.0 * ((-(sPAR[1])) * (X[13] * X[1]))) + (((-(X[13])) * (ACC[44] + (sPAR[1] * X[1]))) - function_3(ACC[1],sPAR[4],X[13])))))))));
    F[11]=(sPAR[0] * ((sPAR[1] * (X[9] * X[1])) + ((ACC[35] * X[15]) + ((ACC[44] * X[18]) + ((ACC[45] * X[19]) + (transition1_R_T(sPAR[15],sPAR[3],X[23]) + ((2.0 * ((-(sPAR[1])) * (X[11] * X[1]))) + (((-(X[11])) * (ACC[42] + (sPAR[1] * X[1]))) - function_2(ACC[1],sPAR[3],X[11])))))))));
    F[10]=(sPAR[0] * ((sPAR[1] * (X[9] * X[1])) + ((ACC[42] * X[15]) + ((ACC[44] * X[16]) + ((ACC[45] * X[17]) + (transition1_R_T(sPAR[15],ACC[1],X[12]) + ((2.0 * ((-(sPAR[1])) * (X[10] * X[1]))) + (((-(X[10])) * (ACC[35] + (sPAR[1] * X[1]))) - function_1(ACC[1],sPAR[2],X[10])))))))));
    F[9]=(sPAR[0] * ((ACC[35] * X[10]) + ((ACC[42] * X[11]) + ((ACC[44] * X[13]) + ((ACC[45] * X[14]) + ((sPAR[15] * X[0]) + ((4.0 * ((-(sPAR[1])) * (X[9] * X[1]))) - (ACC[1] * X[9]))))))));
    F[26]=(sPAR[0] * ((sPAR[1] * (X[1] * ACC[4])) + (function_25(sPAR[2],sPAR[3],sPAR[4],sPAR[5],sPAR[15],X[8]) + ((((((-(ACC[35])) - ACC[45]) - ACC[44]) - ACC[42]) * X[26]) - function_26(ACC[1],sPAR[2],sPAR[3],sPAR[4],sPAR[5],X[26])))));
    F[8]=(sPAR[0] * ((sPAR[1] * (X[1] * ACC[2])) + (function_26(ACC[1],sPAR[2],sPAR[3],sPAR[4],sPAR[5],X[26]) + ((sPAR[7] * X[44]) + ((sPAR[9] * X[63]) + ((((((-(ACC[25])) - ACC[0]) - ACC[3]) - ACC[14]) * X[8]) + ((X[8] * (((-(sPAR[6])) * X[27]) - (sPAR[8] * X[46]))) - function_25(sPAR[2],sPAR[3],sPAR[4],sPAR[5],sPAR[15],X[8]))))))));
    F[63]=(sPAR[0] * ((sPAR[8] * (X[8] * X[46])) + ((sPAR[1] * (X[1] * ACC[16])) + ((((((-(ACC[14])) - sPAR[9]) - ACC[3]) - ACC[25]) - ACC[0]) * X[63]))));
    F[27]=(sPAR[0] * ((sPAR[7] * (X[28] + (X[29] + (X[30] + (X[31] + (X[32] + (X[33] + (X[35] + (X[36] + (X[37] + (X[38] + (X[39] + (X[40] + (X[41] + (X[42] + (X[43] + X[44])))))))))))))))) - (sPAR[6] * (X[27] * ACC[20]))));
    F[46]=(sPAR[0] * ((sPAR[9] * (X[47] + (X[48] + (X[49] + (X[50] + (X[51] + (X[52] + (X[53] + (X[54] + (X[55] + (X[57] + (X[58] + (X[59] + (X[60] + (X[61] + (X[62] + X[63])))))))))))))))) - (sPAR[8] * (X[46] * ACC[20]))));
    F[1]=(sPAR[0] * ((ACC[0] * X[12]) + ((ACC[3] * X[23]) + ((ACC[14] * X[34]) + ((ACC[25] * X[45]) + ((ACC[3] * X[56]) + ((ACC[14] * X[64]) + ((ACC[25] * X[65]) + ((ACC[0] * X[56]) + ((ACC[14] * X[66]) + ((ACC[25] * X[2]) + ((ACC[0] * X[64]) + ((ACC[3] * X[66]) + ((ACC[25] * X[3]) + ((ACC[0] * X[65]) + ((ACC[3] * X[2]) + ((ACC[14] * X[3]) + ((X[4] * (ACC[0] + (ACC[3] + ACC[14]))) + ((X[5] * (ACC[0] + (ACC[3] + ACC[25]))) + ((X[6] * (ACC[0] + (ACC[14] + ACC[25]))) + ((X[7] * (ACC[3] + (ACC[14] + ACC[25]))) + ((X[8] * (ACC[25] + (ACC[14] + (ACC[3] + ACC[0])))) + ((ACC[35] * X[10]) + ((ACC[42] * X[11]) + ((ACC[44] * X[13]) + ((ACC[45] * X[14]) + ((X[15] * (ACC[35] + ACC[42])) + ((X[16] * (ACC[35] + ACC[44])) + ((X[17] * (ACC[35] + ACC[45])) + ((X[18] * (ACC[42] + ACC[44])) + ((X[19] * (ACC[42] + ACC[45])) + ((X[20] * (ACC[44] + ACC[45])) + ((X[21] * (ACC[42] + ACC[35])) + ((X[22] * (ACC[45] + (ACC[42] + ACC[35]))) + ((X[24] * (ACC[45] + (ACC[44] + ACC[35]))) + ((X[25] * (ACC[45] + (ACC[44] + ACC[42]))) + ((X[26] * (ACC[45] + (ACC[44] + (ACC[42] + ACC[35])))) + ((ACC[0] * X[29]) + ((ACC[14] * X[31]) + ((ACC[25] * X[32]) + ((X[33] * (ACC[0] + ACC[3])) + ((X[35] * (ACC[0] + ACC[14])) + ((X[36] * (ACC[0] + ACC[25])) + ((X[37] * (ACC[3] + ACC[14])) + ((X[38] * (ACC[3] + ACC[25])) + ((X[39] * (ACC[14] + ACC[25])) + ((X[40] * (ACC[14] + (ACC[3] + ACC[0]))) + ((X[41] * (ACC[25] + (ACC[3] + ACC[0]))) + ((X[42] * (ACC[25] + (ACC[14] + ACC[0]))) + ((X[43] * (ACC[25] + (ACC[14] + ACC[3]))) + ((X[44] * (ACC[0] + (ACC[3] + (ACC[14] + ACC[25])))) + ((ACC[0] * X[48]) + ((ACC[3] * X[49]) + ((ACC[14] * X[50]) + ((ACC[25] * X[51]) + ((X[52] * (ACC[0] + ACC[3])) + ((X[53] * (ACC[0] + ACC[14])) + ((X[54] * (ACC[0] + ACC[25])) + ((X[55] * (ACC[3] + ACC[14])) + ((X[57] * (ACC[3] + ACC[25])) + ((X[58] * (ACC[14] + ACC[25])) + ((X[59] * (ACC[0] + (ACC[3] + ACC[14]))) + ((X[60] * (ACC[0] + (ACC[3] + ACC[25]))) + ((X[61] * (ACC[0] + (ACC[14] + ACC[25]))) + ((X[62] * (ACC[3] + (ACC[14] + ACC[25]))) + ((X[63] * (ACC[0] + (ACC[3] + (ACC[14] + ACC[25])))) + ((ACC[3] * X[30]) + ((ACC[44] * X[21]) - (sPAR[1] * ((4.0 * (X[0] * X[1])) + (X[1] * ((3.0 * (X[12] + (X[23] + (X[34] + X[45])))) + ((2.0 * ACC[26]) + (X[4] + (X[5] + (X[6] + (X[7] + ((4.0 * X[9]) + ((3.0 * (X[10] + (X[11] + (X[13] + X[14])))) + ((2.0 * ACC[27]) + (X[21] + (X[22] + (X[24] + (X[25] + ((4.0 * X[28]) + ((3.0 * ACC[7]) + ((2.0 * ACC[8]) + (X[43] + (X[42] + (X[41] + (X[40] + ((4.0 * X[47]) + ((3.0 * ACC[13]) + ((2.0 * ACC[15]) + ACC[16]))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))));

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
    ACC[0]=8.32; //parameter_1
    ACC[1]=48.3792936623125; //parameter_10
    ACC[2]=0.0; //parameter_19
    ACC[3]=0.0166; //parameter_2
    ACC[4]=0.0; //parameter_20
    ACC[5]=0.0; //parameter_21
    ACC[6]=0.0; //parameter_22
    ACC[7]=0.0; //parameter_23
    ACC[8]=0.0; //parameter_24
    ACC[9]=0.0; //parameter_25
    ACC[10]=0.0; //parameter_26
    ACC[11]=6.999999999999999e-05; //parameter_27
    ACC[12]=0.0; //parameter_28
    ACC[13]=0.0; //parameter_29
    ACC[14]=17.4; //parameter_3
    ACC[15]=0.0; //parameter_30
    ACC[16]=0.0; //parameter_31
    ACC[17]=0.0; //parameter_32
    ACC[18]=1.6e-06; //parameter_33
    ACC[19]=0.0; //parameter_34
    ACC[20]=9.699999999999999e-12; //parameter_35
    ACC[21]=9.699999999999999e-12; //parameter_36
    ACC[22]=2e-07; //parameter_37
    ACC[23]=4.84976478640786e-05; //parameter_38
    ACC[24]=0.0; //parameter_39
    ACC[25]=0.0145; //parameter_4
    ACC[26]=0.0; //parameter_40
    ACC[27]=0.0; //parameter_41
    ACC[28]=0.0; //parameter_42
    ACC[29]=0.0; //parameter_43
    ACC[30]=0.0; //parameter_44
    ACC[31]=0.0; //parameter_45
    ACC[32]=2.000097e-07; //parameter_46
    ACC[33]=2.000097e-07; //parameter_47
    ACC[34]=0.0; //parameter_48
    ACC[35]=2101.0101010101; //parameter_5
    ACC[36]=0.0; //parameter_54
    ACC[37]=0.0; //parameter_55
    ACC[38]=0.0; //parameter_56
    ACC[39]=0.0; //parameter_57
    ACC[40]=4.84976478640786e-05; //parameter_58
    ACC[41]=0.0; //parameter_59
    ACC[42]=4.19191919191919; //parameter_6
    ACC[43]=0.0; //parameter_60
    ACC[44]=4393.93939393939; //parameter_7
    ACC[45]=3.66161616161616; //parameter_8
    sPAR[0]=1.0; //compartment_0
    sPAR[1]=1000000.0; //parameter_0
    sPAR[2]=0.00396; //parameter_11
    sPAR[3]=0.00396; //parameter_12
    sPAR[4]=0.00396; //parameter_13
    sPAR[5]=0.00396; //parameter_14
    sPAR[6]=3200000.0; //parameter_15
    sPAR[7]=0.343; //parameter_16
    sPAR[8]=46000000.0; //parameter_17
    sPAR[9]=0.0013; //parameter_18
    sPAR[10]=20670.0; //parameter_49
    sPAR[11]=8.32e-06; //parameter_50
    sPAR[12]=1.66e-08; //parameter_51
    sPAR[13]=1.74e-05; //parameter_52
    sPAR[14]=1.45e-08; //parameter_53
    sPAR[15]=1000000.0; //parameter_9
    X[0]=9.699999999999999e-12; //species_0
    X[1]=1e-05; //species_1
    X[2]=0.0; //species_10
    X[3]=0.0; //species_11
    X[4]=0.0; //species_12
    X[5]=0.0; //species_13
    X[6]=0.0; //species_14
    X[7]=0.0; //species_15
    X[8]=0.0; //species_16
    X[9]=2e-07; //species_17
    X[10]=0.0; //species_18
    X[11]=0.0; //species_19
    X[12]=0.0; //species_2
    X[13]=0.0; //species_20
    X[14]=0.0; //species_21
    X[15]=0.0; //species_22
    X[16]=0.0; //species_23
    X[17]=0.0; //species_24
    X[18]=0.0; //species_25
    X[19]=0.0; //species_26
    X[20]=0.0; //species_27
    X[21]=0.0; //species_28
    X[22]=0.0; //species_29
    X[23]=0.0; //species_3
    X[24]=0.0; //species_30
    X[25]=0.0; //species_31
    X[26]=0.0; //species_32
    X[27]=6.999999999999999e-05; //species_33
    X[28]=0.0; //species_34
    X[29]=0.0; //species_35
    X[30]=0.0; //species_36
    X[31]=0.0; //species_37
    X[32]=0.0; //species_38
    X[33]=0.0; //species_39
    X[34]=0.0; //species_4
    X[35]=0.0; //species_40
    X[36]=0.0; //species_41
    X[37]=0.0; //species_42
    X[38]=0.0; //species_43
    X[39]=0.0; //species_44
    X[40]=0.0; //species_45
    X[41]=0.0; //species_46
    X[42]=0.0; //species_47
    X[43]=0.0; //species_48
    X[44]=0.0; //species_49
    X[45]=0.0; //species_5
    X[46]=1.6e-06; //species_50
    X[47]=0.0; //species_51
    X[48]=0.0; //species_52
    X[49]=0.0; //species_53
    X[50]=0.0; //species_54
    X[51]=0.0; //species_55
    X[52]=0.0; //species_56
    X[53]=0.0; //species_57
    X[54]=0.0; //species_58
    X[55]=0.0; //species_59
    X[56]=0.0; //species_6
    X[57]=0.0; //species_60
    X[58]=0.0; //species_61
    X[59]=0.0; //species_62
    X[60]=0.0; //species_63
    X[61]=0.0; //species_64
    X[62]=0.0; //species_65
    X[63]=0.0; //species_66
    X[64]=0.0; //species_7
    X[65]=0.0; //species_8
    X[66]=0.0; //species_9

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
