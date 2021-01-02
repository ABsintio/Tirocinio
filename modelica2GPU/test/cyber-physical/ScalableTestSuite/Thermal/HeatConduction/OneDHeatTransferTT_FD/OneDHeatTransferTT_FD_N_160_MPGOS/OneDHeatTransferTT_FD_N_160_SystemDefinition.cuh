
#ifndef ONEDHEATTRANSFERTT_FD_N_160_PERTHREAD_SYSTEMDEFINITION_H
#define ONEDHEATTRANSFERTT_FD_N_160_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[0]=sPAR[2];
    ACC[1]=sPAR[3];
    F[0]=(632024.9999999998 * (sPAR[6] * ((sPAR[2] + ((-2.0 * X[0]) + X[1])) / (sPAR[4] * sPAR[7]))));
    F[157]=(632024.9999999998 * (sPAR[6] * ((X[156] + ((-2.0 * X[157]) + sPAR[3])) / (sPAR[4] * sPAR[7]))));
    F[1]=(632024.9999999998 * (sPAR[6] * ((X[0] + ((-2.0 * X[1]) + X[2])) / (sPAR[7] * sPAR[4]))));
    F[2]=(632024.9999999998 * (sPAR[6] * ((X[1] + ((-2.0 * X[2]) + X[3])) / (sPAR[7] * sPAR[4]))));
    F[3]=(632024.9999999998 * (sPAR[6] * ((X[2] + ((-2.0 * X[3]) + X[4])) / (sPAR[7] * sPAR[4]))));
    F[4]=(632024.9999999998 * (sPAR[6] * ((X[3] + ((-2.0 * X[4]) + X[5])) / (sPAR[7] * sPAR[4]))));
    F[5]=(632024.9999999998 * (sPAR[6] * ((X[4] + ((-2.0 * X[5]) + X[6])) / (sPAR[7] * sPAR[4]))));
    F[6]=(632024.9999999998 * (sPAR[6] * ((X[5] + ((-2.0 * X[6]) + X[7])) / (sPAR[7] * sPAR[4]))));
    F[7]=(632024.9999999998 * (sPAR[6] * ((X[6] + ((-2.0 * X[7]) + X[8])) / (sPAR[7] * sPAR[4]))));
    F[8]=(632024.9999999998 * (sPAR[6] * ((X[7] + ((-2.0 * X[8]) + X[9])) / (sPAR[7] * sPAR[4]))));
    F[9]=(632024.9999999998 * (sPAR[6] * ((X[8] + ((-2.0 * X[9]) + X[10])) / (sPAR[7] * sPAR[4]))));
    F[10]=(632024.9999999998 * (sPAR[6] * ((X[9] + ((-2.0 * X[10]) + X[11])) / (sPAR[7] * sPAR[4]))));
    F[11]=(632024.9999999998 * (sPAR[6] * ((X[10] + ((-2.0 * X[11]) + X[12])) / (sPAR[7] * sPAR[4]))));
    F[12]=(632024.9999999998 * (sPAR[6] * ((X[11] + ((-2.0 * X[12]) + X[13])) / (sPAR[7] * sPAR[4]))));
    F[13]=(632024.9999999998 * (sPAR[6] * ((X[12] + ((-2.0 * X[13]) + X[14])) / (sPAR[7] * sPAR[4]))));
    F[14]=(632024.9999999998 * (sPAR[6] * ((X[13] + ((-2.0 * X[14]) + X[15])) / (sPAR[7] * sPAR[4]))));
    F[15]=(632024.9999999998 * (sPAR[6] * ((X[14] + ((-2.0 * X[15]) + X[16])) / (sPAR[7] * sPAR[4]))));
    F[16]=(632024.9999999998 * (sPAR[6] * ((X[15] + ((-2.0 * X[16]) + X[17])) / (sPAR[7] * sPAR[4]))));
    F[17]=(632024.9999999998 * (sPAR[6] * ((X[16] + ((-2.0 * X[17]) + X[18])) / (sPAR[7] * sPAR[4]))));
    F[18]=(632024.9999999998 * (sPAR[6] * ((X[17] + ((-2.0 * X[18]) + X[19])) / (sPAR[7] * sPAR[4]))));
    F[19]=(632024.9999999998 * (sPAR[6] * ((X[18] + ((-2.0 * X[19]) + X[20])) / (sPAR[7] * sPAR[4]))));
    F[20]=(632024.9999999998 * (sPAR[6] * ((X[19] + ((-2.0 * X[20]) + X[21])) / (sPAR[7] * sPAR[4]))));
    F[21]=(632024.9999999998 * (sPAR[6] * ((X[20] + ((-2.0 * X[21]) + X[22])) / (sPAR[7] * sPAR[4]))));
    F[22]=(632024.9999999998 * (sPAR[6] * ((X[21] + ((-2.0 * X[22]) + X[23])) / (sPAR[7] * sPAR[4]))));
    F[23]=(632024.9999999998 * (sPAR[6] * ((X[22] + ((-2.0 * X[23]) + X[24])) / (sPAR[7] * sPAR[4]))));
    F[24]=(632024.9999999998 * (sPAR[6] * ((X[23] + ((-2.0 * X[24]) + X[25])) / (sPAR[7] * sPAR[4]))));
    F[25]=(632024.9999999998 * (sPAR[6] * ((X[24] + ((-2.0 * X[25]) + X[26])) / (sPAR[7] * sPAR[4]))));
    F[26]=(632024.9999999998 * (sPAR[6] * ((X[25] + ((-2.0 * X[26]) + X[27])) / (sPAR[7] * sPAR[4]))));
    F[27]=(632024.9999999998 * (sPAR[6] * ((X[26] + ((-2.0 * X[27]) + X[28])) / (sPAR[7] * sPAR[4]))));
    F[28]=(632024.9999999998 * (sPAR[6] * ((X[27] + ((-2.0 * X[28]) + X[29])) / (sPAR[7] * sPAR[4]))));
    F[29]=(632024.9999999998 * (sPAR[6] * ((X[28] + ((-2.0 * X[29]) + X[30])) / (sPAR[7] * sPAR[4]))));
    F[30]=(632024.9999999998 * (sPAR[6] * ((X[29] + ((-2.0 * X[30]) + X[31])) / (sPAR[7] * sPAR[4]))));
    F[31]=(632024.9999999998 * (sPAR[6] * ((X[30] + ((-2.0 * X[31]) + X[32])) / (sPAR[7] * sPAR[4]))));
    F[32]=(632024.9999999998 * (sPAR[6] * ((X[31] + ((-2.0 * X[32]) + X[33])) / (sPAR[7] * sPAR[4]))));
    F[33]=(632024.9999999998 * (sPAR[6] * ((X[32] + ((-2.0 * X[33]) + X[34])) / (sPAR[7] * sPAR[4]))));
    F[34]=(632024.9999999998 * (sPAR[6] * ((X[33] + ((-2.0 * X[34]) + X[35])) / (sPAR[7] * sPAR[4]))));
    F[35]=(632024.9999999998 * (sPAR[6] * ((X[34] + ((-2.0 * X[35]) + X[36])) / (sPAR[7] * sPAR[4]))));
    F[36]=(632024.9999999998 * (sPAR[6] * ((X[35] + ((-2.0 * X[36]) + X[37])) / (sPAR[7] * sPAR[4]))));
    F[37]=(632024.9999999998 * (sPAR[6] * ((X[36] + ((-2.0 * X[37]) + X[38])) / (sPAR[7] * sPAR[4]))));
    F[38]=(632024.9999999998 * (sPAR[6] * ((X[37] + ((-2.0 * X[38]) + X[39])) / (sPAR[7] * sPAR[4]))));
    F[39]=(632024.9999999998 * (sPAR[6] * ((X[38] + ((-2.0 * X[39]) + X[40])) / (sPAR[7] * sPAR[4]))));
    F[40]=(632024.9999999998 * (sPAR[6] * ((X[39] + ((-2.0 * X[40]) + X[41])) / (sPAR[7] * sPAR[4]))));
    F[41]=(632024.9999999998 * (sPAR[6] * ((X[40] + ((-2.0 * X[41]) + X[42])) / (sPAR[7] * sPAR[4]))));
    F[42]=(632024.9999999998 * (sPAR[6] * ((X[41] + ((-2.0 * X[42]) + X[43])) / (sPAR[7] * sPAR[4]))));
    F[43]=(632024.9999999998 * (sPAR[6] * ((X[42] + ((-2.0 * X[43]) + X[44])) / (sPAR[7] * sPAR[4]))));
    F[44]=(632024.9999999998 * (sPAR[6] * ((X[43] + ((-2.0 * X[44]) + X[45])) / (sPAR[7] * sPAR[4]))));
    F[45]=(632024.9999999998 * (sPAR[6] * ((X[44] + ((-2.0 * X[45]) + X[46])) / (sPAR[7] * sPAR[4]))));
    F[46]=(632024.9999999998 * (sPAR[6] * ((X[45] + ((-2.0 * X[46]) + X[47])) / (sPAR[7] * sPAR[4]))));
    F[47]=(632024.9999999998 * (sPAR[6] * ((X[46] + ((-2.0 * X[47]) + X[48])) / (sPAR[7] * sPAR[4]))));
    F[48]=(632024.9999999998 * (sPAR[6] * ((X[47] + ((-2.0 * X[48]) + X[49])) / (sPAR[7] * sPAR[4]))));
    F[49]=(632024.9999999998 * (sPAR[6] * ((X[48] + ((-2.0 * X[49]) + X[50])) / (sPAR[7] * sPAR[4]))));
    F[50]=(632024.9999999998 * (sPAR[6] * ((X[49] + ((-2.0 * X[50]) + X[51])) / (sPAR[7] * sPAR[4]))));
    F[51]=(632024.9999999998 * (sPAR[6] * ((X[50] + ((-2.0 * X[51]) + X[52])) / (sPAR[7] * sPAR[4]))));
    F[52]=(632024.9999999998 * (sPAR[6] * ((X[51] + ((-2.0 * X[52]) + X[53])) / (sPAR[7] * sPAR[4]))));
    F[53]=(632024.9999999998 * (sPAR[6] * ((X[52] + ((-2.0 * X[53]) + X[54])) / (sPAR[7] * sPAR[4]))));
    F[54]=(632024.9999999998 * (sPAR[6] * ((X[53] + ((-2.0 * X[54]) + X[55])) / (sPAR[7] * sPAR[4]))));
    F[55]=(632024.9999999998 * (sPAR[6] * ((X[54] + ((-2.0 * X[55]) + X[56])) / (sPAR[7] * sPAR[4]))));
    F[56]=(632024.9999999998 * (sPAR[6] * ((X[55] + ((-2.0 * X[56]) + X[57])) / (sPAR[7] * sPAR[4]))));
    F[57]=(632024.9999999998 * (sPAR[6] * ((X[56] + ((-2.0 * X[57]) + X[58])) / (sPAR[7] * sPAR[4]))));
    F[58]=(632024.9999999998 * (sPAR[6] * ((X[57] + ((-2.0 * X[58]) + X[59])) / (sPAR[7] * sPAR[4]))));
    F[59]=(632024.9999999998 * (sPAR[6] * ((X[58] + ((-2.0 * X[59]) + X[60])) / (sPAR[7] * sPAR[4]))));
    F[60]=(632024.9999999998 * (sPAR[6] * ((X[59] + ((-2.0 * X[60]) + X[61])) / (sPAR[7] * sPAR[4]))));
    F[61]=(632024.9999999998 * (sPAR[6] * ((X[60] + ((-2.0 * X[61]) + X[62])) / (sPAR[7] * sPAR[4]))));
    F[62]=(632024.9999999998 * (sPAR[6] * ((X[61] + ((-2.0 * X[62]) + X[63])) / (sPAR[7] * sPAR[4]))));
    F[63]=(632024.9999999998 * (sPAR[6] * ((X[62] + ((-2.0 * X[63]) + X[64])) / (sPAR[7] * sPAR[4]))));
    F[64]=(632024.9999999998 * (sPAR[6] * ((X[63] + ((-2.0 * X[64]) + X[65])) / (sPAR[7] * sPAR[4]))));
    F[65]=(632024.9999999998 * (sPAR[6] * ((X[64] + ((-2.0 * X[65]) + X[66])) / (sPAR[7] * sPAR[4]))));
    F[66]=(632024.9999999998 * (sPAR[6] * ((X[65] + ((-2.0 * X[66]) + X[67])) / (sPAR[7] * sPAR[4]))));
    F[67]=(632024.9999999998 * (sPAR[6] * ((X[66] + ((-2.0 * X[67]) + X[68])) / (sPAR[7] * sPAR[4]))));
    F[68]=(632024.9999999998 * (sPAR[6] * ((X[67] + ((-2.0 * X[68]) + X[69])) / (sPAR[7] * sPAR[4]))));
    F[69]=(632024.9999999998 * (sPAR[6] * ((X[68] + ((-2.0 * X[69]) + X[70])) / (sPAR[7] * sPAR[4]))));
    F[70]=(632024.9999999998 * (sPAR[6] * ((X[69] + ((-2.0 * X[70]) + X[71])) / (sPAR[7] * sPAR[4]))));
    F[71]=(632024.9999999998 * (sPAR[6] * ((X[70] + ((-2.0 * X[71]) + X[72])) / (sPAR[7] * sPAR[4]))));
    F[72]=(632024.9999999998 * (sPAR[6] * ((X[71] + ((-2.0 * X[72]) + X[73])) / (sPAR[7] * sPAR[4]))));
    F[73]=(632024.9999999998 * (sPAR[6] * ((X[72] + ((-2.0 * X[73]) + X[74])) / (sPAR[7] * sPAR[4]))));
    F[74]=(632024.9999999998 * (sPAR[6] * ((X[73] + ((-2.0 * X[74]) + X[75])) / (sPAR[7] * sPAR[4]))));
    F[75]=(632024.9999999998 * (sPAR[6] * ((X[74] + ((-2.0 * X[75]) + X[76])) / (sPAR[7] * sPAR[4]))));
    F[76]=(632024.9999999998 * (sPAR[6] * ((X[75] + ((-2.0 * X[76]) + X[77])) / (sPAR[7] * sPAR[4]))));
    F[77]=(632024.9999999998 * (sPAR[6] * ((X[76] + ((-2.0 * X[77]) + X[78])) / (sPAR[7] * sPAR[4]))));
    F[78]=(632024.9999999998 * (sPAR[6] * ((X[77] + ((-2.0 * X[78]) + X[79])) / (sPAR[7] * sPAR[4]))));
    F[79]=(632024.9999999998 * (sPAR[6] * ((X[78] + ((-2.0 * X[79]) + X[80])) / (sPAR[7] * sPAR[4]))));
    F[80]=(632024.9999999998 * (sPAR[6] * ((X[79] + ((-2.0 * X[80]) + X[81])) / (sPAR[7] * sPAR[4]))));
    F[81]=(632024.9999999998 * (sPAR[6] * ((X[80] + ((-2.0 * X[81]) + X[82])) / (sPAR[7] * sPAR[4]))));
    F[82]=(632024.9999999998 * (sPAR[6] * ((X[81] + ((-2.0 * X[82]) + X[83])) / (sPAR[7] * sPAR[4]))));
    F[83]=(632024.9999999998 * (sPAR[6] * ((X[82] + ((-2.0 * X[83]) + X[84])) / (sPAR[7] * sPAR[4]))));
    F[84]=(632024.9999999998 * (sPAR[6] * ((X[83] + ((-2.0 * X[84]) + X[85])) / (sPAR[7] * sPAR[4]))));
    F[85]=(632024.9999999998 * (sPAR[6] * ((X[84] + ((-2.0 * X[85]) + X[86])) / (sPAR[7] * sPAR[4]))));
    F[86]=(632024.9999999998 * (sPAR[6] * ((X[85] + ((-2.0 * X[86]) + X[87])) / (sPAR[7] * sPAR[4]))));
    F[87]=(632024.9999999998 * (sPAR[6] * ((X[86] + ((-2.0 * X[87]) + X[88])) / (sPAR[7] * sPAR[4]))));
    F[88]=(632024.9999999998 * (sPAR[6] * ((X[87] + ((-2.0 * X[88]) + X[89])) / (sPAR[7] * sPAR[4]))));
    F[89]=(632024.9999999998 * (sPAR[6] * ((X[88] + ((-2.0 * X[89]) + X[90])) / (sPAR[7] * sPAR[4]))));
    F[90]=(632024.9999999998 * (sPAR[6] * ((X[89] + ((-2.0 * X[90]) + X[91])) / (sPAR[7] * sPAR[4]))));
    F[91]=(632024.9999999998 * (sPAR[6] * ((X[90] + ((-2.0 * X[91]) + X[92])) / (sPAR[7] * sPAR[4]))));
    F[92]=(632024.9999999998 * (sPAR[6] * ((X[91] + ((-2.0 * X[92]) + X[93])) / (sPAR[7] * sPAR[4]))));
    F[93]=(632024.9999999998 * (sPAR[6] * ((X[92] + ((-2.0 * X[93]) + X[94])) / (sPAR[7] * sPAR[4]))));
    F[94]=(632024.9999999998 * (sPAR[6] * ((X[93] + ((-2.0 * X[94]) + X[95])) / (sPAR[7] * sPAR[4]))));
    F[95]=(632024.9999999998 * (sPAR[6] * ((X[94] + ((-2.0 * X[95]) + X[96])) / (sPAR[7] * sPAR[4]))));
    F[96]=(632024.9999999998 * (sPAR[6] * ((X[95] + ((-2.0 * X[96]) + X[97])) / (sPAR[7] * sPAR[4]))));
    F[97]=(632024.9999999998 * (sPAR[6] * ((X[96] + ((-2.0 * X[97]) + X[98])) / (sPAR[7] * sPAR[4]))));
    F[98]=(632024.9999999998 * (sPAR[6] * ((X[97] + ((-2.0 * X[98]) + X[99])) / (sPAR[7] * sPAR[4]))));
    F[99]=(632024.9999999998 * (sPAR[6] * ((X[98] + ((-2.0 * X[99]) + X[100])) / (sPAR[7] * sPAR[4]))));
    F[100]=(632024.9999999998 * (sPAR[6] * ((X[99] + ((-2.0 * X[100]) + X[101])) / (sPAR[7] * sPAR[4]))));
    F[101]=(632024.9999999998 * (sPAR[6] * ((X[100] + ((-2.0 * X[101]) + X[102])) / (sPAR[7] * sPAR[4]))));
    F[102]=(632024.9999999998 * (sPAR[6] * ((X[101] + ((-2.0 * X[102]) + X[103])) / (sPAR[7] * sPAR[4]))));
    F[103]=(632024.9999999998 * (sPAR[6] * ((X[102] + ((-2.0 * X[103]) + X[104])) / (sPAR[7] * sPAR[4]))));
    F[104]=(632024.9999999998 * (sPAR[6] * ((X[103] + ((-2.0 * X[104]) + X[105])) / (sPAR[7] * sPAR[4]))));
    F[105]=(632024.9999999998 * (sPAR[6] * ((X[104] + ((-2.0 * X[105]) + X[106])) / (sPAR[7] * sPAR[4]))));
    F[106]=(632024.9999999998 * (sPAR[6] * ((X[105] + ((-2.0 * X[106]) + X[107])) / (sPAR[7] * sPAR[4]))));
    F[107]=(632024.9999999998 * (sPAR[6] * ((X[106] + ((-2.0 * X[107]) + X[108])) / (sPAR[7] * sPAR[4]))));
    F[108]=(632024.9999999998 * (sPAR[6] * ((X[107] + ((-2.0 * X[108]) + X[109])) / (sPAR[7] * sPAR[4]))));
    F[109]=(632024.9999999998 * (sPAR[6] * ((X[108] + ((-2.0 * X[109]) + X[110])) / (sPAR[7] * sPAR[4]))));
    F[110]=(632024.9999999998 * (sPAR[6] * ((X[109] + ((-2.0 * X[110]) + X[111])) / (sPAR[7] * sPAR[4]))));
    F[111]=(632024.9999999998 * (sPAR[6] * ((X[110] + ((-2.0 * X[111]) + X[112])) / (sPAR[7] * sPAR[4]))));
    F[112]=(632024.9999999998 * (sPAR[6] * ((X[111] + ((-2.0 * X[112]) + X[113])) / (sPAR[7] * sPAR[4]))));
    F[113]=(632024.9999999998 * (sPAR[6] * ((X[112] + ((-2.0 * X[113]) + X[114])) / (sPAR[7] * sPAR[4]))));
    F[114]=(632024.9999999998 * (sPAR[6] * ((X[113] + ((-2.0 * X[114]) + X[115])) / (sPAR[7] * sPAR[4]))));
    F[115]=(632024.9999999998 * (sPAR[6] * ((X[114] + ((-2.0 * X[115]) + X[116])) / (sPAR[7] * sPAR[4]))));
    F[116]=(632024.9999999998 * (sPAR[6] * ((X[115] + ((-2.0 * X[116]) + X[117])) / (sPAR[7] * sPAR[4]))));
    F[117]=(632024.9999999998 * (sPAR[6] * ((X[116] + ((-2.0 * X[117]) + X[118])) / (sPAR[7] * sPAR[4]))));
    F[118]=(632024.9999999998 * (sPAR[6] * ((X[117] + ((-2.0 * X[118]) + X[119])) / (sPAR[7] * sPAR[4]))));
    F[119]=(632024.9999999998 * (sPAR[6] * ((X[118] + ((-2.0 * X[119]) + X[120])) / (sPAR[7] * sPAR[4]))));
    F[120]=(632024.9999999998 * (sPAR[6] * ((X[119] + ((-2.0 * X[120]) + X[121])) / (sPAR[7] * sPAR[4]))));
    F[121]=(632024.9999999998 * (sPAR[6] * ((X[120] + ((-2.0 * X[121]) + X[122])) / (sPAR[7] * sPAR[4]))));
    F[122]=(632024.9999999998 * (sPAR[6] * ((X[121] + ((-2.0 * X[122]) + X[123])) / (sPAR[7] * sPAR[4]))));
    F[123]=(632024.9999999998 * (sPAR[6] * ((X[122] + ((-2.0 * X[123]) + X[124])) / (sPAR[7] * sPAR[4]))));
    F[124]=(632024.9999999998 * (sPAR[6] * ((X[123] + ((-2.0 * X[124]) + X[125])) / (sPAR[7] * sPAR[4]))));
    F[125]=(632024.9999999998 * (sPAR[6] * ((X[124] + ((-2.0 * X[125]) + X[126])) / (sPAR[7] * sPAR[4]))));
    F[126]=(632024.9999999998 * (sPAR[6] * ((X[125] + ((-2.0 * X[126]) + X[127])) / (sPAR[7] * sPAR[4]))));
    F[127]=(632024.9999999998 * (sPAR[6] * ((X[126] + ((-2.0 * X[127]) + X[128])) / (sPAR[7] * sPAR[4]))));
    F[128]=(632024.9999999998 * (sPAR[6] * ((X[127] + ((-2.0 * X[128]) + X[129])) / (sPAR[7] * sPAR[4]))));
    F[129]=(632024.9999999998 * (sPAR[6] * ((X[128] + ((-2.0 * X[129]) + X[130])) / (sPAR[7] * sPAR[4]))));
    F[130]=(632024.9999999998 * (sPAR[6] * ((X[129] + ((-2.0 * X[130]) + X[131])) / (sPAR[7] * sPAR[4]))));
    F[131]=(632024.9999999998 * (sPAR[6] * ((X[130] + ((-2.0 * X[131]) + X[132])) / (sPAR[7] * sPAR[4]))));
    F[132]=(632024.9999999998 * (sPAR[6] * ((X[131] + ((-2.0 * X[132]) + X[133])) / (sPAR[7] * sPAR[4]))));
    F[133]=(632024.9999999998 * (sPAR[6] * ((X[132] + ((-2.0 * X[133]) + X[134])) / (sPAR[7] * sPAR[4]))));
    F[134]=(632024.9999999998 * (sPAR[6] * ((X[133] + ((-2.0 * X[134]) + X[135])) / (sPAR[7] * sPAR[4]))));
    F[135]=(632024.9999999998 * (sPAR[6] * ((X[134] + ((-2.0 * X[135]) + X[136])) / (sPAR[7] * sPAR[4]))));
    F[136]=(632024.9999999998 * (sPAR[6] * ((X[135] + ((-2.0 * X[136]) + X[137])) / (sPAR[7] * sPAR[4]))));
    F[137]=(632024.9999999998 * (sPAR[6] * ((X[136] + ((-2.0 * X[137]) + X[138])) / (sPAR[7] * sPAR[4]))));
    F[138]=(632024.9999999998 * (sPAR[6] * ((X[137] + ((-2.0 * X[138]) + X[139])) / (sPAR[7] * sPAR[4]))));
    F[139]=(632024.9999999998 * (sPAR[6] * ((X[138] + ((-2.0 * X[139]) + X[140])) / (sPAR[7] * sPAR[4]))));
    F[140]=(632024.9999999998 * (sPAR[6] * ((X[139] + ((-2.0 * X[140]) + X[141])) / (sPAR[7] * sPAR[4]))));
    F[141]=(632024.9999999998 * (sPAR[6] * ((X[140] + ((-2.0 * X[141]) + X[142])) / (sPAR[7] * sPAR[4]))));
    F[142]=(632024.9999999998 * (sPAR[6] * ((X[141] + ((-2.0 * X[142]) + X[143])) / (sPAR[7] * sPAR[4]))));
    F[143]=(632024.9999999998 * (sPAR[6] * ((X[142] + ((-2.0 * X[143]) + X[144])) / (sPAR[7] * sPAR[4]))));
    F[144]=(632024.9999999998 * (sPAR[6] * ((X[143] + ((-2.0 * X[144]) + X[145])) / (sPAR[7] * sPAR[4]))));
    F[145]=(632024.9999999998 * (sPAR[6] * ((X[144] + ((-2.0 * X[145]) + X[146])) / (sPAR[7] * sPAR[4]))));
    F[146]=(632024.9999999998 * (sPAR[6] * ((X[145] + ((-2.0 * X[146]) + X[147])) / (sPAR[7] * sPAR[4]))));
    F[147]=(632024.9999999998 * (sPAR[6] * ((X[146] + ((-2.0 * X[147]) + X[148])) / (sPAR[7] * sPAR[4]))));
    F[148]=(632024.9999999998 * (sPAR[6] * ((X[147] + ((-2.0 * X[148]) + X[149])) / (sPAR[7] * sPAR[4]))));
    F[149]=(632024.9999999998 * (sPAR[6] * ((X[148] + ((-2.0 * X[149]) + X[150])) / (sPAR[7] * sPAR[4]))));
    F[150]=(632024.9999999998 * (sPAR[6] * ((X[149] + ((-2.0 * X[150]) + X[151])) / (sPAR[7] * sPAR[4]))));
    F[151]=(632024.9999999998 * (sPAR[6] * ((X[150] + ((-2.0 * X[151]) + X[152])) / (sPAR[7] * sPAR[4]))));
    F[152]=(632024.9999999998 * (sPAR[6] * ((X[151] + ((-2.0 * X[152]) + X[153])) / (sPAR[7] * sPAR[4]))));
    F[153]=(632024.9999999998 * (sPAR[6] * ((X[152] + ((-2.0 * X[153]) + X[154])) / (sPAR[7] * sPAR[4]))));
    F[154]=(632024.9999999998 * (sPAR[6] * ((X[153] + ((-2.0 * X[154]) + X[155])) / (sPAR[7] * sPAR[4]))));
    F[155]=(632024.9999999998 * (sPAR[6] * ((X[154] + ((-2.0 * X[155]) + X[156])) / (sPAR[7] * sPAR[4]))));
    F[156]=(632024.9999999998 * (sPAR[6] * ((X[155] + ((-2.0 * X[156]) + X[157])) / (sPAR[7] * sPAR[4]))));

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
    ACC[0]=330.0; //T[1]
    ACC[1]=300.0; //T[160]
    sPAR[0]=0.2; //L
    sPAR[1]=273.15; //T0
    sPAR[2]=330.0; //T1
    sPAR[3]=300.0; //TN
    sPAR[4]=910.0; //cp
    sPAR[5]=0.001257861635220126; //dx
    sPAR[6]=237.0; //lambda
    sPAR[7]=2712.0; //rho
    sPARi[0]=160; //N
    X[0]=sPAR[1]; //T[2]
    X[1]=sPAR[1]; //T[3]
    X[2]=sPAR[1]; //T[4]
    X[3]=sPAR[1]; //T[5]
    X[4]=sPAR[1]; //T[6]
    X[5]=sPAR[1]; //T[7]
    X[6]=sPAR[1]; //T[8]
    X[7]=sPAR[1]; //T[9]
    X[8]=sPAR[1]; //T[10]
    X[9]=sPAR[1]; //T[11]
    X[10]=sPAR[1]; //T[12]
    X[11]=sPAR[1]; //T[13]
    X[12]=sPAR[1]; //T[14]
    X[13]=sPAR[1]; //T[15]
    X[14]=sPAR[1]; //T[16]
    X[15]=sPAR[1]; //T[17]
    X[16]=sPAR[1]; //T[18]
    X[17]=sPAR[1]; //T[19]
    X[18]=sPAR[1]; //T[20]
    X[19]=sPAR[1]; //T[21]
    X[20]=sPAR[1]; //T[22]
    X[21]=sPAR[1]; //T[23]
    X[22]=sPAR[1]; //T[24]
    X[23]=sPAR[1]; //T[25]
    X[24]=sPAR[1]; //T[26]
    X[25]=sPAR[1]; //T[27]
    X[26]=sPAR[1]; //T[28]
    X[27]=sPAR[1]; //T[29]
    X[28]=sPAR[1]; //T[30]
    X[29]=sPAR[1]; //T[31]
    X[30]=sPAR[1]; //T[32]
    X[31]=sPAR[1]; //T[33]
    X[32]=sPAR[1]; //T[34]
    X[33]=sPAR[1]; //T[35]
    X[34]=sPAR[1]; //T[36]
    X[35]=sPAR[1]; //T[37]
    X[36]=sPAR[1]; //T[38]
    X[37]=sPAR[1]; //T[39]
    X[38]=sPAR[1]; //T[40]
    X[39]=sPAR[1]; //T[41]
    X[40]=sPAR[1]; //T[42]
    X[41]=sPAR[1]; //T[43]
    X[42]=sPAR[1]; //T[44]
    X[43]=sPAR[1]; //T[45]
    X[44]=sPAR[1]; //T[46]
    X[45]=sPAR[1]; //T[47]
    X[46]=sPAR[1]; //T[48]
    X[47]=sPAR[1]; //T[49]
    X[48]=sPAR[1]; //T[50]
    X[49]=sPAR[1]; //T[51]
    X[50]=sPAR[1]; //T[52]
    X[51]=sPAR[1]; //T[53]
    X[52]=sPAR[1]; //T[54]
    X[53]=sPAR[1]; //T[55]
    X[54]=sPAR[1]; //T[56]
    X[55]=sPAR[1]; //T[57]
    X[56]=sPAR[1]; //T[58]
    X[57]=sPAR[1]; //T[59]
    X[58]=sPAR[1]; //T[60]
    X[59]=sPAR[1]; //T[61]
    X[60]=sPAR[1]; //T[62]
    X[61]=sPAR[1]; //T[63]
    X[62]=sPAR[1]; //T[64]
    X[63]=sPAR[1]; //T[65]
    X[64]=sPAR[1]; //T[66]
    X[65]=sPAR[1]; //T[67]
    X[66]=sPAR[1]; //T[68]
    X[67]=sPAR[1]; //T[69]
    X[68]=sPAR[1]; //T[70]
    X[69]=sPAR[1]; //T[71]
    X[70]=sPAR[1]; //T[72]
    X[71]=sPAR[1]; //T[73]
    X[72]=sPAR[1]; //T[74]
    X[73]=sPAR[1]; //T[75]
    X[74]=sPAR[1]; //T[76]
    X[75]=sPAR[1]; //T[77]
    X[76]=sPAR[1]; //T[78]
    X[77]=sPAR[1]; //T[79]
    X[78]=sPAR[1]; //T[80]
    X[79]=sPAR[1]; //T[81]
    X[80]=sPAR[1]; //T[82]
    X[81]=sPAR[1]; //T[83]
    X[82]=sPAR[1]; //T[84]
    X[83]=sPAR[1]; //T[85]
    X[84]=sPAR[1]; //T[86]
    X[85]=sPAR[1]; //T[87]
    X[86]=sPAR[1]; //T[88]
    X[87]=sPAR[1]; //T[89]
    X[88]=sPAR[1]; //T[90]
    X[89]=sPAR[1]; //T[91]
    X[90]=sPAR[1]; //T[92]
    X[91]=sPAR[1]; //T[93]
    X[92]=sPAR[1]; //T[94]
    X[93]=sPAR[1]; //T[95]
    X[94]=sPAR[1]; //T[96]
    X[95]=sPAR[1]; //T[97]
    X[96]=sPAR[1]; //T[98]
    X[97]=sPAR[1]; //T[99]
    X[98]=sPAR[1]; //T[100]
    X[99]=sPAR[1]; //T[101]
    X[100]=sPAR[1]; //T[102]
    X[101]=sPAR[1]; //T[103]
    X[102]=sPAR[1]; //T[104]
    X[103]=sPAR[1]; //T[105]
    X[104]=sPAR[1]; //T[106]
    X[105]=sPAR[1]; //T[107]
    X[106]=sPAR[1]; //T[108]
    X[107]=sPAR[1]; //T[109]
    X[108]=sPAR[1]; //T[110]
    X[109]=sPAR[1]; //T[111]
    X[110]=sPAR[1]; //T[112]
    X[111]=sPAR[1]; //T[113]
    X[112]=sPAR[1]; //T[114]
    X[113]=sPAR[1]; //T[115]
    X[114]=sPAR[1]; //T[116]
    X[115]=sPAR[1]; //T[117]
    X[116]=sPAR[1]; //T[118]
    X[117]=sPAR[1]; //T[119]
    X[118]=sPAR[1]; //T[120]
    X[119]=sPAR[1]; //T[121]
    X[120]=sPAR[1]; //T[122]
    X[121]=sPAR[1]; //T[123]
    X[122]=sPAR[1]; //T[124]
    X[123]=sPAR[1]; //T[125]
    X[124]=sPAR[1]; //T[126]
    X[125]=sPAR[1]; //T[127]
    X[126]=sPAR[1]; //T[128]
    X[127]=sPAR[1]; //T[129]
    X[128]=sPAR[1]; //T[130]
    X[129]=sPAR[1]; //T[131]
    X[130]=sPAR[1]; //T[132]
    X[131]=sPAR[1]; //T[133]
    X[132]=sPAR[1]; //T[134]
    X[133]=sPAR[1]; //T[135]
    X[134]=sPAR[1]; //T[136]
    X[135]=sPAR[1]; //T[137]
    X[136]=sPAR[1]; //T[138]
    X[137]=sPAR[1]; //T[139]
    X[138]=sPAR[1]; //T[140]
    X[139]=sPAR[1]; //T[141]
    X[140]=sPAR[1]; //T[142]
    X[141]=sPAR[1]; //T[143]
    X[142]=sPAR[1]; //T[144]
    X[143]=sPAR[1]; //T[145]
    X[144]=sPAR[1]; //T[146]
    X[145]=sPAR[1]; //T[147]
    X[146]=sPAR[1]; //T[148]
    X[147]=sPAR[1]; //T[149]
    X[148]=sPAR[1]; //T[150]
    X[149]=sPAR[1]; //T[151]
    X[150]=sPAR[1]; //T[152]
    X[151]=sPAR[1]; //T[153]
    X[152]=sPAR[1]; //T[154]
    X[153]=sPAR[1]; //T[155]
    X[154]=sPAR[1]; //T[156]
    X[155]=sPAR[1]; //T[157]
    X[156]=sPAR[1]; //T[158]
    X[157]=sPAR[1]; //T[159]

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif