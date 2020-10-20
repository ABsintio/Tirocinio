
#ifndef Zeilinger2006_PRR7_PRR9_Y_PERTHREAD_SYSTEMDEFINITION_H
#define Zeilinger2006_PRR7_PRR9_Y_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
	X[0] = cPAR[15] * sPAR[130] + cPAR[10] * sPAR[143] + (-cPAR[21]) * sPAR[135] - cPAR[17] * sPAR[129];
	X[1] = cPAR[20] * sPAR[93] + cPAR[16] * sPAR[91] + (-cPAR[18]) * sPAR[144] - cPAR[14] * sPAR[131];
	X[2] = cPAR[40] * sPAR[127] + cPAR[36] * sPAR[106] + (-cPAR[38]) * sPAR[95] - cPAR[34] * sPAR[97];
	X[3] = cPAR[29] * sPAR[134] + cPAR[26] * sPAR[100] + (-cPAR[28]) * sPAR[123] - cPAR[7] * sPAR[121];
	X[4] = cPAR[27] * sPAR[115] + cPAR[6] * sPAR[118] + (-cPAR[25]) * sPAR[104] - cPAR[3] * sPAR[111];
	X[5] = cPAR[35] * sPAR[146] + cPAR[31] * sPAR[117] + (-cPAR[41]) * sPAR[108] - cPAR[37] * sPAR[112];
	X[6] = cPAR[0] * sPAR[114] + (-cPAR[23]) * sPAR[140] - cPAR[24] * sPAR[139];
	X[7] = cPAR[32] * sPAR[103] - cPAR[30] * sPAR[92];
	X[8] = cPAR[34] * sPAR[105] + (-cPAR[40]) * sPAR[98] - cPAR[44] * sPAR[96];
	X[9] = cPAR[8] * sPAR[138] + cPAR[5] * sPAR[136] - cPAR[13] * sPAR[128];
	X[10] = cPAR[42] * sPAR[126] - cPAR[22] * sPAR[102];
	X[11] = cPAR[17] * sPAR[141] + (-cPAR[19]) * sPAR[99] - cPAR[15] * sPAR[133];
	X[12] = cPAR[25] * sPAR[120] + (-cPAR[11]) * sPAR[113] - cPAR[6] * sPAR[109];
	X[13] = cPAR[28] * sPAR[132] + (-cPAR[26]) * sPAR[124] - cPAR[4] * sPAR[122];
	X[14] = cPAR[2] * sPAR[119] - cPAR[33] * sPAR[110];
	X[15] = cPAR[37] * sPAR[147] + (-cPAR[39]) * sPAR[125] - cPAR[35] * sPAR[107];
	X[16] = cPAR[12] * sPAR[101] - cPAR[9] * sPAR[145];
	X[17] = cPAR[14] * sPAR[94] + (-cPAR[20]) * sPAR[142] - cPAR[1] * sPAR[137];
	X[18] = cPAR[45] * sPAR[148] - cPAR[43] * sPAR[116];

}


template<class Precision> __forceinline__ __device__ void PerThread_EventFunction(
	int tid, int NT, Precision*	  EF, \
	Precision     T, Precision    dT, Precision    TD, Precision*	X, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
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
	ACC[0] = 1.0;
	ACC[1] = X[5]/sPAR[163];
	ACC[2] = X[4]/sPAR[163];
	ACC[3] = X[3]/sPAR[163];
	ACC[4] = X[2]/sPAR[163];
	ACC[5] = X[1]/sPAR[163];
	ACC[6] = X[0]/sPAR[163];
	ACC[7] = X[18]/sPAR[149];
	ACC[8] = X[17]/sPAR[149];
	ACC[9] = X[16]/sPAR[149];
	ACC[10] = X[15]/sPAR[149];
	ACC[11] = X[14]/sPAR[149];
	ACC[12] = X[13]/sPAR[149];
	ACC[13] = X[12]/sPAR[149];
	ACC[14] = X[11]/sPAR[149];
	ACC[15] = X[10]/sPAR[149];
	ACC[16] = X[9]/sPAR[149];
	ACC[17] = X[8]/sPAR[149];
	ACC[18] = X[7]/sPAR[149];
	ACC[19] = X[6]/sPAR[149];
	cPAR[0] = sPAR[149] * (sPAR[87] - sPAR[0]) * sPAR[64];
	cPAR[1] = sPAR[149] * sPAR[28] * ACC[8] / (sPAR[37] + ACC[8]);
	cPAR[2] = sPAR[149] * sPAR[7] * pow(ACC[8], sPAR[26]) * pow(sPAR[55], sPAR[20]) / ((pow(sPAR[53], sPAR[26]) + pow(ACC[8], sPAR[26])) * (pow(sPAR[55], sPAR[20]) + pow(ACC[14], sPAR[20])));
	cPAR[3] = sPAR[163] * sPAR[63] * ACC[2] / (sPAR[46] + ACC[2]);
	cPAR[4] = sPAR[149] * sPAR[34] * ACC[12] / (sPAR[51] + ACC[12]);
	cPAR[5] = sPAR[149] * sPAR[5] * pow(ACC[12], sPAR[24]) * pow(sPAR[74], sPAR[16]) * pow(sPAR[71], sPAR[13]) / ((pow(sPAR[74], sPAR[16]) + pow(ACC[17], sPAR[16])) * (pow(sPAR[58], sPAR[24]) + pow(ACC[12], sPAR[24])) * (pow(sPAR[71], sPAR[13]) + pow(ACC[13], sPAR[13])));
	cPAR[6] = sPAR[149] * sPAR[80] * ACC[13];
	cPAR[7] = sPAR[163] * sPAR[36] * ACC[3] / (sPAR[49] + ACC[3]);
	cPAR[8] = sPAR[149] * sPAR[0] * sPAR[82] * ACC[19];
	cPAR[9] = sPAR[149] * sPAR[32] * ACC[9] / (sPAR[39] + ACC[9]);
	cPAR[10] = sPAR[163] * sPAR[68] * ACC[16];
	cPAR[11] = sPAR[149] * sPAR[62] * ACC[13] / (sPAR[44] + ACC[13]);
	cPAR[12] = sPAR[149] * (sPAR[0] * sPAR[78] * ACC[19] + (sPAR[0] * sPAR[3] + sPAR[22]) * pow(sPAR[52], sPAR[17]) / (pow(sPAR[52], sPAR[17]) + pow(ACC[10], sPAR[17]))) * pow(sPAR[73], sPAR[18]) / (pow(sPAR[73], sPAR[18]) + pow(ACC[14], sPAR[18]));
	cPAR[13] = sPAR[149] * sPAR[77] * ACC[16] / (sPAR[40] + ACC[16]);
	cPAR[14] = sPAR[163] * sPAR[2] * ACC[5];
	cPAR[15] = sPAR[149] * sPAR[14] * ACC[14];
	cPAR[16] = sPAR[163] * sPAR[67] * ACC[9];
	cPAR[17] = sPAR[163] * sPAR[12] * ACC[6];
	cPAR[18] = sPAR[163] * sPAR[30] * ACC[5] / (sPAR[38] + ACC[5]);
	cPAR[19] = sPAR[149] * sPAR[76] * ACC[14] / (sPAR[61] + ACC[14]);
	cPAR[20] = sPAR[149] * sPAR[4] * ACC[8];
	cPAR[21] = sPAR[163] * sPAR[75] * ACC[6] / (sPAR[60] + ACC[6]);
	cPAR[22] = sPAR[149] * sPAR[41] * ACC[15] / (sPAR[48] + ACC[15]);
	cPAR[23] = sPAR[149] * sPAR[79] * sPAR[0] * ACC[19];
	cPAR[24] = sPAR[149] * sPAR[47] * ACC[19] / (sPAR[35] + ACC[19]);
	cPAR[25] = sPAR[163] * sPAR[81] * ACC[2];
	cPAR[26] = sPAR[149] * sPAR[8] * ACC[12];
	cPAR[27] = sPAR[163] * sPAR[70] * ACC[15];
	cPAR[28] = sPAR[163] * sPAR[6] * ACC[3];
	cPAR[29] = sPAR[163] * sPAR[66] * ACC[7];
	cPAR[30] = sPAR[149] * sPAR[45] * ACC[18] / (sPAR[33] + ACC[18]);
	cPAR[31] = sPAR[163] * sPAR[69] * ACC[11];
	cPAR[32] = sPAR[149] * sPAR[25] * pow(ACC[14], sPAR[15]) / (pow(sPAR[72], sPAR[15]) + pow(ACC[14], sPAR[15]));
	cPAR[33] = sPAR[149] * sPAR[89] * ACC[11] / (sPAR[57] + ACC[11]);
	cPAR[34] = sPAR[163] * sPAR[23] * ACC[4];
	cPAR[35] = sPAR[149] * sPAR[11] * ACC[10];
	cPAR[36] = sPAR[163] * sPAR[65] * ACC[18];
	cPAR[37] = sPAR[163] * sPAR[9] * ACC[1];
	cPAR[38] = sPAR[163] * sPAR[43] * ACC[4] / (sPAR[31] + ACC[4]);
	cPAR[39] = sPAR[149] * ((sPAR[87] - sPAR[0]) * sPAR[88] + sPAR[84]) * ACC[10] / (sPAR[54] + ACC[10]);
	cPAR[40] = sPAR[149] * sPAR[83] * ACC[17];
	cPAR[41] = sPAR[163] * ((sPAR[87] - sPAR[0]) * sPAR[90] + sPAR[86]) * ACC[1] / (sPAR[59] + ACC[1]);
	cPAR[42] = sPAR[149] * sPAR[19] * pow(ACC[14], sPAR[10]) / (pow(sPAR[27], sPAR[10]) + pow(ACC[14], sPAR[10]));
	cPAR[43] = sPAR[149] * sPAR[85] * ACC[7] / (sPAR[56] + ACC[7]);
	cPAR[44] = sPAR[149] * sPAR[42] * ACC[17] / (sPAR[29] + ACC[17]);
	cPAR[45] = sPAR[149] * sPAR[1] * pow(ACC[10], sPAR[21]) / (pow(sPAR[50], sPAR[21]) + pow(ACC[10], sPAR[21]));

}


template<class Precision> __forceinline__ __device__ void PerThread_Initialization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
    T     = TD[0];
    DOIDX = 0;

}


template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}



#endif
