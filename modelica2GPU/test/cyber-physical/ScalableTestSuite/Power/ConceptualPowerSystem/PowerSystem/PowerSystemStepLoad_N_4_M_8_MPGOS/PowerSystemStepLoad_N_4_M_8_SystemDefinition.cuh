
#ifndef POWERSYSTEMSTEPLOAD_N_4_M_8_PERTHREAD_SYSTEMDEFINITION_H
#define POWERSYSTEMSTEPLOAD_N_4_M_8_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[19]=0.0;
    ACC[35]=0.0;
    ACC[14]=0.0;
    ACC[30]=0.0;
    ACC[9]=0.0;
    ACC[25]=0.0;
    ACC[4]=0.0;
    ACC[20]=0.0;
    ACC[113]=1.0;
    ACC[57]=500000000.0;
    ACC[121]=1.0;
    ACC[112]=1.0;
    ACC[56]=500000000.0;
    ACC[120]=1.0;
    ACC[111]=1.0;
    ACC[55]=500000000.0;
    ACC[119]=1.0;
    ACC[110]=1.0;
    ACC[54]=500000000.0;
    ACC[118]=1.0;
    ACC[36]=500000000.0;
    ACC[40]=500000000.0;
    ACC[39]=500000000.0;
    ACC[38]=500000000.0;
    ACC[37]=0.0;
    ACC[58]=X[45];
    ACC[59]=X[1];
    ACC[60]=X[2];
    ACC[61]=X[3];
    ACC[62]=X[4];
    ACC[63]=X[5];
    ACC[64]=X[6];
    ACC[65]=X[7];
    ACC[66]=X[8];
    ACC[67]=X[46];
    ACC[68]=X[9];
    ACC[69]=X[10];
    ACC[70]=X[11];
    ACC[71]=X[12];
    ACC[72]=X[13];
    ACC[73]=X[14];
    ACC[74]=X[15];
    ACC[75]=X[16];
    ACC[76]=X[47];
    ACC[77]=X[17];
    ACC[78]=X[18];
    ACC[79]=X[19];
    ACC[80]=X[20];
    ACC[81]=X[21];
    ACC[82]=X[22];
    ACC[83]=X[23];
    ACC[84]=X[24];
    ACC[85]=X[48];
    ACC[86]=X[25];
    ACC[87]=X[26];
    ACC[88]=X[27];
    ACC[89]=X[28];
    ACC[90]=X[29];
    ACC[91]=X[30];
    ACC[92]=X[31];
    ACC[93]=X[32];
    ACC[34]=(500000000.0 * sin((X[60] - X[59])));
    ACC[33]=(250000000.0 * sin((X[60] - X[58])));
    ACC[32]=(166666666.6666667 * sin((X[60] - X[57])));
    ACC[31]=(500000000.0 * sin((X[59] - X[60])));
    ACC[29]=(500000000.0 * sin((X[59] - X[58])));
    ACC[28]=(250000000.0 * sin((X[59] - X[57])));
    ACC[27]=(250000000.0 * sin((X[58] - X[60])));
    ACC[26]=(500000000.0 * sin((X[58] - X[59])));
    ACC[24]=(500000000.0 * sin((X[58] - X[57])));
    ACC[23]=(166666666.6666667 * sin((X[57] - X[60])));
    ACC[22]=(250000000.0 * sin((X[57] - X[59])));
    ACC[21]=(500000000.0 * sin((X[57] - X[58])));
    ACC[49]=(0.25 * X[0]);
    ACC[46]=ACC[49];
    ACC[47]=ACC[49];
    ACC[48]=ACC[49];
    ACC[98]=(1.0 - X[45]);
    ACC[130]=(X[61] * X[45]);
    ACC[114]=((sPAR[41] * ACC[130]) + X[49]);
    ACC[50]=(500000000.0 * ACC[114]);
    ACC[41]=(0.1591549430918953 * X[41]);
    ACC[94]=(-1.0 + (0.02 * ACC[41]));
    ACC[122]=(1.0 + ((2e-09 * ACC[49]) - (ACC[94] / sPAR[45])));
    ACC[102]=(ACC[122] - ACC[114]);
    ACC[126]=(ACC[122] + (sPAR[9] * (ACC[98] + (X[33] / sPAR[33]))));
    ACC[134]=(ACC[122] + (sPAR[13] * (ACC[102] + (X[37] / sPAR[37]))));
    ACC[106]=ACC[41];
    ACC[99]=(1.0 - X[46]);
    ACC[131]=(X[62] * X[46]);
    ACC[115]=((sPAR[42] * ACC[131]) + X[50]);
    ACC[51]=(500000000.0 * ACC[115]);
    ACC[107]=(0.1591549430918953 * X[42]);
    ACC[95]=(-1.0 + (0.02 * ACC[107]));
    ACC[123]=(1.0 + ((2e-09 * ACC[49]) - (ACC[95] / sPAR[46])));
    ACC[103]=(ACC[123] - ACC[115]);
    ACC[127]=(ACC[123] + (sPAR[10] * (ACC[99] + (X[34] / sPAR[34]))));
    ACC[135]=(ACC[123] + (sPAR[14] * (ACC[103] + (X[38] / sPAR[38]))));
    ACC[100]=(1.0 - X[47]);
    ACC[132]=(X[63] * X[47]);
    ACC[116]=((sPAR[43] * ACC[132]) + X[51]);
    ACC[52]=(500000000.0 * ACC[116]);
    ACC[108]=(0.1591549430918953 * X[43]);
    ACC[96]=(-1.0 + (0.02 * ACC[108]));
    ACC[124]=(1.0 + ((2e-09 * ACC[49]) - (ACC[96] / sPAR[47])));
    ACC[104]=(ACC[124] - ACC[116]);
    ACC[128]=(ACC[124] + (sPAR[11] * (ACC[100] + (X[35] / sPAR[35]))));
    ACC[136]=(ACC[124] + (sPAR[15] * (ACC[104] + (X[39] / sPAR[39]))));
    ACC[101]=(1.0 - X[48]);
    ACC[133]=(X[64] * X[48]);
    ACC[117]=((sPAR[44] * ACC[133]) + X[52]);
    ACC[53]=(500000000.0 * ACC[117]);
    ACC[109]=(0.1591549430918953 * X[44]);
    ACC[97]=(-1.0 + (0.02 * ACC[109]));
    ACC[125]=(1.0 + ((2e-09 * ACC[49]) - (ACC[97] / sPAR[48])));
    ACC[105]=(ACC[125] - ACC[117]);
    ACC[129]=(ACC[125] + (sPAR[12] * (ACC[101] + (X[36] / sPAR[36]))));
    ACC[137]=(ACC[125] + (sPAR[16] * (ACC[105] + (X[40] / sPAR[40]))));
    ACC[5]=(sPAR[0] * (X[41] - X[42]));
    ACC[6]=(sPAR[0] * (X[41] - X[43]));
    ACC[7]=(sPAR[0] * (X[41] - X[44]));
    ACC[0]=(ACC[21] + (ACC[22] + (ACC[23] + (ACC[5] + (ACC[6] + ACC[7])))));
    ACC[42]=ACC[0];
    ACC[8]=(sPAR[0] * (X[42] - X[41]));
    ACC[10]=(sPAR[0] * (X[42] - X[43]));
    ACC[11]=(sPAR[0] * (X[42] - X[44]));
    ACC[1]=(500000000.0 + (ACC[24] + (ACC[26] + (ACC[27] + (ACC[8] + (ACC[10] + ACC[11]))))));
    ACC[43]=ACC[1];
    ACC[12]=(sPAR[0] * (X[43] - X[41]));
    ACC[13]=(sPAR[0] * (X[43] - X[42]));
    ACC[15]=(sPAR[0] * (X[43] - X[44]));
    ACC[2]=(500000000.0 + (ACC[28] + (ACC[29] + (ACC[31] + (ACC[12] + (ACC[13] + ACC[15]))))));
    ACC[44]=ACC[2];
    ACC[16]=(sPAR[0] * (X[44] - X[41]));
    ACC[17]=(sPAR[0] * (X[44] - X[42]));
    ACC[18]=(sPAR[0] * (X[44] - X[43]));
    ACC[3]=(500000000.0 + (ACC[32] + (ACC[33] + (ACC[34] + (ACC[16] + (ACC[17] + ACC[18]))))));
    ACC[45]=ACC[3];
    F[33]=ACC[98];
    F[57]=(-314.1592653589793 + X[41]);
    F[49]=((((1.0 - sPAR[41]) * ACC[130]) - X[49]) / sPAR[69]);
    F[1]=((8.0 * ((ACC[130] * (X[45] - X[1])) + (0.125 * (sPAR[17] * (sPAR[29] - X[1]))))) / sPAR[65]);
    F[2]=((8.0 * ((ACC[130] * (X[1] - X[2])) + (0.125 * (sPAR[17] * (sPAR[29] - X[2]))))) / sPAR[65]);
    F[3]=((8.0 * ((ACC[130] * (X[2] - X[3])) + (0.125 * (sPAR[17] * (sPAR[29] - X[3]))))) / sPAR[65]);
    F[4]=((8.0 * ((ACC[130] * (X[3] - X[4])) + (0.125 * (sPAR[17] * (sPAR[29] - X[4]))))) / sPAR[65]);
    F[5]=((8.0 * ((ACC[130] * (X[4] - X[5])) + (0.125 * (sPAR[17] * (sPAR[29] - X[5]))))) / sPAR[65]);
    F[6]=((8.0 * ((ACC[130] * (X[5] - X[6])) + (0.125 * (sPAR[17] * (sPAR[29] - X[6]))))) / sPAR[65]);
    F[7]=((8.0 * ((ACC[130] * (X[6] - X[7])) + (0.125 * (sPAR[17] * (sPAR[29] - X[7]))))) / sPAR[65]);
    F[8]=((8.0 * ((ACC[130] * (X[7] - X[8])) + (0.125 * (sPAR[17] * (sPAR[29] - X[8]))))) / sPAR[65]);
    F[45]=((X[53] - ACC[130]) / sPAR[57]);
    F[37]=ACC[102];
    F[53]=((ACC[126] - X[53]) / sPAR[61]);
    F[61]=((ACC[134] - X[61]) / sPAR[73]);
    F[0]=((2000000000.0 * ((sPAR[4] - ACC[41]) / (sPAR[4] * sPAR[3]))) / sPAR[2]);
    F[34]=ACC[99];
    F[58]=(-314.1592653589793 + X[42]);
    F[50]=((((1.0 - sPAR[42]) * ACC[131]) - X[50]) / sPAR[70]);
    F[9]=((8.0 * ((ACC[131] * (X[46] - X[9])) + (0.125 * (sPAR[18] * (sPAR[30] - X[9]))))) / sPAR[66]);
    F[10]=((8.0 * ((ACC[131] * (X[9] - X[10])) + (0.125 * (sPAR[18] * (sPAR[30] - X[10]))))) / sPAR[66]);
    F[11]=((8.0 * ((ACC[131] * (X[10] - X[11])) + (0.125 * (sPAR[18] * (sPAR[30] - X[11]))))) / sPAR[66]);
    F[12]=((8.0 * ((ACC[131] * (X[11] - X[12])) + (0.125 * (sPAR[18] * (sPAR[30] - X[12]))))) / sPAR[66]);
    F[13]=((8.0 * ((ACC[131] * (X[12] - X[13])) + (0.125 * (sPAR[18] * (sPAR[30] - X[13]))))) / sPAR[66]);
    F[14]=((8.0 * ((ACC[131] * (X[13] - X[14])) + (0.125 * (sPAR[18] * (sPAR[30] - X[14]))))) / sPAR[66]);
    F[15]=((8.0 * ((ACC[131] * (X[14] - X[15])) + (0.125 * (sPAR[18] * (sPAR[30] - X[15]))))) / sPAR[66]);
    F[16]=((8.0 * ((ACC[131] * (X[15] - X[16])) + (0.125 * (sPAR[18] * (sPAR[30] - X[16]))))) / sPAR[66]);
    F[46]=((X[54] - ACC[131]) / sPAR[58]);
    F[38]=ACC[103];
    F[54]=((ACC[127] - X[54]) / sPAR[62]);
    F[62]=((ACC[135] - X[62]) / sPAR[74]);
    F[35]=ACC[100];
    F[59]=(-314.1592653589793 + X[43]);
    F[51]=((((1.0 - sPAR[43]) * ACC[132]) - X[51]) / sPAR[71]);
    F[17]=((8.0 * ((ACC[132] * (X[47] - X[17])) + (0.125 * (sPAR[19] * (sPAR[31] - X[17]))))) / sPAR[67]);
    F[18]=((8.0 * ((ACC[132] * (X[17] - X[18])) + (0.125 * (sPAR[19] * (sPAR[31] - X[18]))))) / sPAR[67]);
    F[19]=((8.0 * ((ACC[132] * (X[18] - X[19])) + (0.125 * (sPAR[19] * (sPAR[31] - X[19]))))) / sPAR[67]);
    F[20]=((8.0 * ((ACC[132] * (X[19] - X[20])) + (0.125 * (sPAR[19] * (sPAR[31] - X[20]))))) / sPAR[67]);
    F[21]=((8.0 * ((ACC[132] * (X[20] - X[21])) + (0.125 * (sPAR[19] * (sPAR[31] - X[21]))))) / sPAR[67]);
    F[22]=((8.0 * ((ACC[132] * (X[21] - X[22])) + (0.125 * (sPAR[19] * (sPAR[31] - X[22]))))) / sPAR[67]);
    F[23]=((8.0 * ((ACC[132] * (X[22] - X[23])) + (0.125 * (sPAR[19] * (sPAR[31] - X[23]))))) / sPAR[67]);
    F[24]=((8.0 * ((ACC[132] * (X[23] - X[24])) + (0.125 * (sPAR[19] * (sPAR[31] - X[24]))))) / sPAR[67]);
    F[47]=((X[55] - ACC[132]) / sPAR[59]);
    F[39]=ACC[104];
    F[55]=((ACC[128] - X[55]) / sPAR[63]);
    F[63]=((ACC[136] - X[63]) / sPAR[75]);
    F[36]=ACC[101];
    F[60]=(-314.1592653589793 + X[44]);
    F[52]=((((1.0 - sPAR[44]) * ACC[133]) - X[52]) / sPAR[72]);
    F[25]=((8.0 * ((ACC[133] * (X[48] - X[25])) + (0.125 * (sPAR[20] * (sPAR[32] - X[25]))))) / sPAR[68]);
    F[26]=((8.0 * ((ACC[133] * (X[25] - X[26])) + (0.125 * (sPAR[20] * (sPAR[32] - X[26]))))) / sPAR[68]);
    F[27]=((8.0 * ((ACC[133] * (X[26] - X[27])) + (0.125 * (sPAR[20] * (sPAR[32] - X[27]))))) / sPAR[68]);
    F[28]=((8.0 * ((ACC[133] * (X[27] - X[28])) + (0.125 * (sPAR[20] * (sPAR[32] - X[28]))))) / sPAR[68]);
    F[29]=((8.0 * ((ACC[133] * (X[28] - X[29])) + (0.125 * (sPAR[20] * (sPAR[32] - X[29]))))) / sPAR[68]);
    F[30]=((8.0 * ((ACC[133] * (X[29] - X[30])) + (0.125 * (sPAR[20] * (sPAR[32] - X[30]))))) / sPAR[68]);
    F[31]=((8.0 * ((ACC[133] * (X[30] - X[31])) + (0.125 * (sPAR[20] * (sPAR[32] - X[31]))))) / sPAR[68]);
    F[32]=((8.0 * ((ACC[133] * (X[31] - X[32])) + (0.125 * (sPAR[20] * (sPAR[32] - X[32]))))) / sPAR[68]);
    F[48]=((X[56] - ACC[133]) / sPAR[60]);
    F[40]=ACC[105];
    F[56]=((ACC[129] - X[56]) / sPAR[64]);
    F[64]=((ACC[137] - X[64]) / sPAR[76]);
    F[41]=((ACC[50] - ACC[0]) / (25330.29591058444 * X[41]));
    F[42]=((ACC[51] - ACC[1]) / (25330.29591058444 * X[42]));
    F[43]=((ACC[52] - ACC[2]) / (25330.29591058444 * X[43]));
    F[44]=((ACC[53] - ACC[3]) / (25330.29591058444 * X[44]));

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
    ACC[20]=0.0; //P_ex[1,1]
    ACC[36]=500000000.0; //P_f
    X[57]=0.0; //generator[1].theta
    X[58]=0.0; //generator[2].theta
    ACC[21]=(ACC[36] * sin((X[57] - X[58]))); //P_ex[1,2]
    X[59]=0.0; //generator[3].theta
    ACC[22]=(0.5 * (ACC[36] * sin((X[57] - X[59])))); //P_ex[1,3]
    X[60]=0.0; //generator[4].theta
    ACC[23]=(0.3333333333333333 * (ACC[36] * sin((X[57] - X[60])))); //P_ex[1,4]
    ACC[4]=0.0; //P_diss[1,1]
    ACC[5]=0.0; //P_diss[1,2]
    ACC[6]=0.0; //P_diss[1,3]
    ACC[7]=0.0; //P_diss[1,4]
    ACC[37]=0.0; //P_load[1]
    ACC[0]=(ACC[20] + (ACC[21] + (ACC[22] + (ACC[23] + (ACC[4] + (ACC[5] + (ACC[6] + (ACC[7] + ACC[37])))))))); //P_a[1]
    ACC[24]=(ACC[36] * sin((X[58] - X[57]))); //P_ex[2,1]
    ACC[25]=0.0; //P_ex[2,2]
    ACC[26]=(ACC[36] * sin((X[58] - X[59]))); //P_ex[2,3]
    ACC[27]=(0.5 * (ACC[36] * sin((X[58] - X[60])))); //P_ex[2,4]
    ACC[8]=0.0; //P_diss[2,1]
    ACC[9]=0.0; //P_diss[2,2]
    ACC[10]=0.0; //P_diss[2,3]
    ACC[11]=0.0; //P_diss[2,4]
    ACC[38]=500000000.0; //P_load[2]
    ACC[1]=(ACC[24] + (ACC[25] + (ACC[26] + (ACC[27] + (ACC[8] + (ACC[9] + (ACC[10] + (ACC[11] + ACC[38])))))))); //P_a[2]
    ACC[28]=(0.5 * (ACC[36] * sin((X[59] - X[57])))); //P_ex[3,1]
    ACC[29]=(ACC[36] * sin((X[59] - X[58]))); //P_ex[3,2]
    ACC[30]=0.0; //P_ex[3,3]
    ACC[31]=(ACC[36] * sin((X[59] - X[60]))); //P_ex[3,4]
    ACC[12]=0.0; //P_diss[3,1]
    ACC[13]=0.0; //P_diss[3,2]
    ACC[14]=0.0; //P_diss[3,3]
    ACC[15]=0.0; //P_diss[3,4]
    ACC[39]=500000000.0; //P_load[3]
    ACC[2]=(ACC[28] + (ACC[29] + (ACC[30] + (ACC[31] + (ACC[12] + (ACC[13] + (ACC[14] + (ACC[15] + ACC[39])))))))); //P_a[3]
    ACC[32]=(0.3333333333333333 * (ACC[36] * sin((X[60] - X[57])))); //P_ex[4,1]
    ACC[33]=(0.5 * (ACC[36] * sin((X[60] - X[58])))); //P_ex[4,2]
    ACC[34]=(ACC[36] * sin((X[60] - X[59]))); //P_ex[4,3]
    ACC[35]=0.0; //P_ex[4,4]
    ACC[16]=0.0; //P_diss[4,1]
    ACC[17]=0.0; //P_diss[4,2]
    ACC[18]=0.0; //P_diss[4,3]
    ACC[19]=0.0; //P_diss[4,4]
    ACC[40]=500000000.0; //P_load[4]
    ACC[3]=(ACC[32] + (ACC[33] + (ACC[34] + (ACC[35] + (ACC[16] + (ACC[17] + (ACC[18] + (ACC[19] + ACC[40])))))))); //P_a[4]
    X[41]=314.1592653589793; //generator[1].omega
    ACC[106]=(0.1591549430918953 * X[41]); //generator[1].f
    ACC[41]=ACC[106]; //f
    ACC[42]=0.0; //generator[1].P_a
    ACC[43]=0.0; //generator[2].P_a
    ACC[44]=0.0; //generator[3].P_a
    ACC[45]=0.0; //generator[4].P_a
    X[0]=0.0; //P_sfc
    ACC[46]=(0.25 * X[0]); //generator[1].P_sfc
    ACC[47]=ACC[46]; //generator[2].P_sfc
    ACC[48]=ACC[46]; //generator[3].P_sfc
    ACC[49]=ACC[46]; //generator[4].P_sfc
    ACC[50]=0.0; //generator[1].P_t
    ACC[51]=0.0; //generator[2].P_t
    ACC[52]=0.0; //generator[3].P_t
    ACC[53]=0.0; //generator[4].P_t
    ACC[54]=500000000.0; //generator[1].P_t_0
    ACC[55]=500000000.0; //generator[2].P_t_0
    ACC[56]=500000000.0; //generator[3].P_t_0
    ACC[57]=500000000.0; //generator[4].P_t_0
    ACC[58]=0.0; //generator[1].T_s_b[1]
    ACC[59]=0.0; //generator[1].T_s_b[2]
    ACC[60]=0.0; //generator[1].T_s_b[3]
    ACC[61]=0.0; //generator[1].T_s_b[4]
    ACC[62]=0.0; //generator[1].T_s_b[5]
    ACC[63]=0.0; //generator[1].T_s_b[6]
    ACC[64]=0.0; //generator[1].T_s_b[7]
    ACC[65]=0.0; //generator[1].T_s_b[8]
    ACC[66]=0.0; //generator[1].T_s_b[9]
    ACC[67]=0.0; //generator[2].T_s_b[1]
    ACC[68]=0.0; //generator[2].T_s_b[2]
    ACC[69]=0.0; //generator[2].T_s_b[3]
    ACC[70]=0.0; //generator[2].T_s_b[4]
    ACC[71]=0.0; //generator[2].T_s_b[5]
    ACC[72]=0.0; //generator[2].T_s_b[6]
    ACC[73]=0.0; //generator[2].T_s_b[7]
    ACC[74]=0.0; //generator[2].T_s_b[8]
    ACC[75]=0.0; //generator[2].T_s_b[9]
    ACC[76]=0.0; //generator[3].T_s_b[1]
    ACC[77]=0.0; //generator[3].T_s_b[2]
    ACC[78]=0.0; //generator[3].T_s_b[3]
    ACC[79]=0.0; //generator[3].T_s_b[4]
    ACC[80]=0.0; //generator[3].T_s_b[5]
    ACC[81]=0.0; //generator[3].T_s_b[6]
    ACC[82]=0.0; //generator[3].T_s_b[7]
    ACC[83]=0.0; //generator[3].T_s_b[8]
    ACC[84]=0.0; //generator[3].T_s_b[9]
    ACC[85]=0.0; //generator[4].T_s_b[1]
    ACC[86]=0.0; //generator[4].T_s_b[2]
    ACC[87]=0.0; //generator[4].T_s_b[3]
    ACC[88]=0.0; //generator[4].T_s_b[4]
    ACC[89]=0.0; //generator[4].T_s_b[5]
    ACC[90]=0.0; //generator[4].T_s_b[6]
    ACC[91]=0.0; //generator[4].T_s_b[7]
    ACC[92]=0.0; //generator[4].T_s_b[8]
    ACC[93]=0.0; //generator[4].T_s_b[9]
    ACC[94]=(-1.0 + (0.02 * ACC[106])); //generator[1].delta_f
    ACC[95]=0.0; //generator[2].delta_f
    ACC[96]=0.0; //generator[3].delta_f
    ACC[97]=0.0; //generator[4].delta_f
    ACC[110]=1.0; //generator[1].p_0
    X[45]=1.0; //generator[1].p
    ACC[98]=(ACC[110] - X[45]); //generator[1].err_p
    ACC[111]=1.0; //generator[2].p_0
    X[46]=1.0; //generator[2].p
    ACC[99]=(ACC[111] - X[46]); //generator[2].err_p
    ACC[112]=1.0; //generator[3].p_0
    X[47]=1.0; //generator[3].p
    ACC[100]=(ACC[112] - X[47]); //generator[3].err_p
    ACC[113]=1.0; //generator[4].p_0
    X[48]=1.0; //generator[4].p
    ACC[101]=(ACC[113] - X[48]); //generator[4].err_p
    ACC[102]=0.0; //generator[1].err_p_t
    ACC[103]=0.0; //generator[2].err_p_t
    ACC[104]=0.0; //generator[3].err_p_t
    ACC[105]=0.0; //generator[4].err_p_t
    ACC[107]=0.0; //generator[2].f
    ACC[108]=0.0; //generator[3].f
    ACC[109]=0.0; //generator[4].f
    ACC[114]=0.0; //generator[1].p_t
    ACC[115]=0.0; //generator[2].p_t
    ACC[116]=0.0; //generator[3].p_t
    ACC[117]=0.0; //generator[4].p_t
    ACC[118]=1.0; //generator[1].p_t_0
    ACC[119]=1.0; //generator[2].p_t_0
    ACC[120]=1.0; //generator[3].p_t_0
    ACC[121]=1.0; //generator[4].p_t_0
    sPAR[45]=0.1; //generator[1].droop
    ACC[122]=(ACC[118] + ((2e-09 * ACC[46]) - (ACC[94] / sPAR[45]))); //generator[1].p_t_0_fc
    sPAR[46]=0.1; //generator[2].droop
    ACC[123]=(ACC[119] + ((2e-09 * ACC[47]) - (ACC[95] / sPAR[46]))); //generator[2].p_t_0_fc
    sPAR[47]=0.1; //generator[3].droop
    ACC[124]=(ACC[120] + ((2e-09 * ACC[48]) - (ACC[96] / sPAR[47]))); //generator[3].p_t_0_fc
    sPAR[48]=0.1; //generator[4].droop
    ACC[125]=(ACC[121] + ((2e-09 * ACC[49]) - (ACC[97] / sPAR[48]))); //generator[4].p_t_0_fc
    ACC[126]=0.0; //generator[1].q_ev_0
    ACC[127]=0.0; //generator[2].q_ev_0
    ACC[128]=0.0; //generator[3].q_ev_0
    ACC[129]=0.0; //generator[4].q_ev_0
    ACC[130]=0.0; //generator[1].w_s
    ACC[131]=0.0; //generator[2].w_s
    ACC[132]=0.0; //generator[3].w_s
    ACC[133]=0.0; //generator[4].w_s
    ACC[134]=0.0; //generator[1].y_t_0
    ACC[135]=0.0; //generator[2].y_t_0
    ACC[136]=0.0; //generator[3].y_t_0
    ACC[137]=0.0; //generator[4].y_t_0
    sPAR[0]=0.0; //P_d
    sPAR[1]=500000000.0; //P_nom
    sPAR[2]=20.0; //T_sfc
    sPAR[3]=0.1; //droop
    sPAR[4]=50.0; //f_ref
    sPAR[5]=25330.29591058444; //generator[1].J
    sPAR[6]=25330.29591058444; //generator[2].J
    sPAR[7]=25330.29591058444; //generator[3].J
    sPAR[8]=25330.29591058444; //generator[4].J
    sPAR[9]=10.0; //generator[1].Kp_p
    sPAR[10]=10.0; //generator[2].Kp_p
    sPAR[11]=10.0; //generator[3].Kp_p
    sPAR[12]=10.0; //generator[4].Kp_p
    sPAR[13]=2.0; //generator[1].Kp_t
    sPAR[14]=2.0; //generator[2].Kp_t
    sPAR[15]=2.0; //generator[3].Kp_t
    sPAR[16]=2.0; //generator[4].Kp_t
    sPAR[17]=2.0; //generator[1].NTU
    sPAR[18]=2.0; //generator[2].NTU
    sPAR[19]=2.0; //generator[3].NTU
    sPAR[20]=2.0; //generator[4].NTU
    sPAR[21]=500000000.0; //generator[1].P_nom
    sPAR[22]=500000000.0; //generator[2].P_nom
    sPAR[23]=500000000.0; //generator[3].P_nom
    sPAR[24]=500000000.0; //generator[4].P_nom
    sPAR[25]=5.0; //generator[1].T_a
    sPAR[26]=5.0; //generator[2].T_a
    sPAR[27]=5.0; //generator[3].T_a
    sPAR[28]=5.0; //generator[4].T_a
    sPAR[29]=1.5; //generator[1].T_source
    sPAR[30]=1.5; //generator[2].T_source
    sPAR[31]=1.5; //generator[3].T_source
    sPAR[32]=1.5; //generator[4].T_source
    sPAR[33]=70.0; //generator[1].Ti_p
    sPAR[34]=70.0; //generator[2].Ti_p
    sPAR[35]=70.0; //generator[3].Ti_p
    sPAR[36]=70.0; //generator[4].Ti_p
    sPAR[37]=0.3; //generator[1].Ti_t
    sPAR[38]=0.3; //generator[2].Ti_t
    sPAR[39]=0.3; //generator[3].Ti_t
    sPAR[40]=0.3; //generator[4].Ti_t
    sPAR[41]=0.3; //generator[1].alpha
    sPAR[42]=0.3; //generator[2].alpha
    sPAR[43]=0.3; //generator[3].alpha
    sPAR[44]=0.3; //generator[4].alpha
    sPAR[49]=50.0; //generator[1].f_ref
    sPAR[50]=50.0; //generator[2].f_ref
    sPAR[51]=50.0; //generator[3].f_ref
    sPAR[52]=50.0; //generator[4].f_ref
    sPAR[53]=314.1592653589793; //generator[1].omega_ref
    sPAR[54]=314.1592653589793; //generator[2].omega_ref
    sPAR[55]=314.1592653589793; //generator[3].omega_ref
    sPAR[56]=314.1592653589793; //generator[4].omega_ref
    sPAR[57]=200.0; //generator[1].tau_b
    sPAR[58]=200.0; //generator[2].tau_b
    sPAR[59]=200.0; //generator[3].tau_b
    sPAR[60]=200.0; //generator[4].tau_b
    sPAR[61]=3.0; //generator[1].tau_q
    sPAR[62]=3.0; //generator[2].tau_q
    sPAR[63]=3.0; //generator[3].tau_q
    sPAR[64]=3.0; //generator[4].tau_q
    sPAR[65]=100.0; //generator[1].tau_sh
    sPAR[66]=100.0; //generator[2].tau_sh
    sPAR[67]=100.0; //generator[3].tau_sh
    sPAR[68]=100.0; //generator[4].tau_sh
    sPAR[69]=8.0; //generator[1].tau_t
    sPAR[70]=8.0; //generator[2].tau_t
    sPAR[71]=8.0; //generator[3].tau_t
    sPAR[72]=8.0; //generator[4].tau_t
    sPAR[73]=0.3; //generator[1].tau_y
    sPAR[74]=0.3; //generator[2].tau_y
    sPAR[75]=0.3; //generator[3].tau_y
    sPAR[76]=0.3; //generator[4].tau_y
    sPAR[77]=0.0; //omega_ref
    sPAR[78]=0.0; //generator[1].pi
    sPAR[79]=0.0; //generator[2].pi
    sPAR[80]=0.0; //generator[3].pi
    sPAR[81]=0.0; //generator[4].pi
    sPAR[82]=0.0; //pi
    sPARi[0]=8; //M
    sPARi[1]=4; //N
    sPARi[2]=8; //generator[1].N
    sPARi[3]=8; //generator[2].N
    sPARi[4]=8; //generator[3].N
    sPARi[5]=8; //generator[4].N
    X[1]=((X[45] + (0.125 * (sPAR[17] * sPAR[29]))) / (1.0 + (0.125 * sPAR[17]))); //generator[1].T_s[1]
    X[2]=((X[1] + (0.125 * (sPAR[17] * sPAR[29]))) / (1.0 + (0.125 * sPAR[17]))); //generator[1].T_s[2]
    X[3]=((X[2] + (0.125 * (sPAR[17] * sPAR[29]))) / (1.0 + (0.125 * sPAR[17]))); //generator[1].T_s[3]
    X[4]=((X[3] + (0.125 * (sPAR[17] * sPAR[29]))) / (1.0 + (0.125 * sPAR[17]))); //generator[1].T_s[4]
    X[5]=((X[4] + (0.125 * (sPAR[17] * sPAR[29]))) / (1.0 + (0.125 * sPAR[17]))); //generator[1].T_s[5]
    X[6]=((X[5] + (0.125 * (sPAR[17] * sPAR[29]))) / (1.0 + (0.125 * sPAR[17]))); //generator[1].T_s[6]
    X[7]=((X[6] + (0.125 * (sPAR[17] * sPAR[29]))) / (1.0 + (0.125 * sPAR[17]))); //generator[1].T_s[7]
    X[8]=((X[7] + (0.125 * (sPAR[17] * sPAR[29]))) / (1.0 + (0.125 * sPAR[17]))); //generator[1].T_s[8]
    X[9]=((X[46] + (0.125 * (sPAR[18] * sPAR[30]))) / (1.0 + (0.125 * sPAR[18]))); //generator[2].T_s[1]
    X[10]=((X[9] + (0.125 * (sPAR[18] * sPAR[30]))) / (1.0 + (0.125 * sPAR[18]))); //generator[2].T_s[2]
    X[11]=((X[10] + (0.125 * (sPAR[18] * sPAR[30]))) / (1.0 + (0.125 * sPAR[18]))); //generator[2].T_s[3]
    X[12]=((X[11] + (0.125 * (sPAR[18] * sPAR[30]))) / (1.0 + (0.125 * sPAR[18]))); //generator[2].T_s[4]
    X[13]=((X[12] + (0.125 * (sPAR[18] * sPAR[30]))) / (1.0 + (0.125 * sPAR[18]))); //generator[2].T_s[5]
    X[14]=((X[13] + (0.125 * (sPAR[18] * sPAR[30]))) / (1.0 + (0.125 * sPAR[18]))); //generator[2].T_s[6]
    X[15]=((X[14] + (0.125 * (sPAR[18] * sPAR[30]))) / (1.0 + (0.125 * sPAR[18]))); //generator[2].T_s[7]
    X[16]=((X[15] + (0.125 * (sPAR[18] * sPAR[30]))) / (1.0 + (0.125 * sPAR[18]))); //generator[2].T_s[8]
    X[17]=((X[47] + (0.125 * (sPAR[19] * sPAR[31]))) / (1.0 + (0.125 * sPAR[19]))); //generator[3].T_s[1]
    X[18]=((X[17] + (0.125 * (sPAR[19] * sPAR[31]))) / (1.0 + (0.125 * sPAR[19]))); //generator[3].T_s[2]
    X[19]=((X[18] + (0.125 * (sPAR[19] * sPAR[31]))) / (1.0 + (0.125 * sPAR[19]))); //generator[3].T_s[3]
    X[20]=((X[19] + (0.125 * (sPAR[19] * sPAR[31]))) / (1.0 + (0.125 * sPAR[19]))); //generator[3].T_s[4]
    X[21]=((X[20] + (0.125 * (sPAR[19] * sPAR[31]))) / (1.0 + (0.125 * sPAR[19]))); //generator[3].T_s[5]
    X[22]=((X[21] + (0.125 * (sPAR[19] * sPAR[31]))) / (1.0 + (0.125 * sPAR[19]))); //generator[3].T_s[6]
    X[23]=((X[22] + (0.125 * (sPAR[19] * sPAR[31]))) / (1.0 + (0.125 * sPAR[19]))); //generator[3].T_s[7]
    X[24]=((X[23] + (0.125 * (sPAR[19] * sPAR[31]))) / (1.0 + (0.125 * sPAR[19]))); //generator[3].T_s[8]
    X[25]=((X[48] + (0.125 * (sPAR[20] * sPAR[32]))) / (1.0 + (0.125 * sPAR[20]))); //generator[4].T_s[1]
    X[26]=((X[25] + (0.125 * (sPAR[20] * sPAR[32]))) / (1.0 + (0.125 * sPAR[20]))); //generator[4].T_s[2]
    X[27]=((X[26] + (0.125 * (sPAR[20] * sPAR[32]))) / (1.0 + (0.125 * sPAR[20]))); //generator[4].T_s[3]
    X[28]=((X[27] + (0.125 * (sPAR[20] * sPAR[32]))) / (1.0 + (0.125 * sPAR[20]))); //generator[4].T_s[4]
    X[29]=((X[28] + (0.125 * (sPAR[20] * sPAR[32]))) / (1.0 + (0.125 * sPAR[20]))); //generator[4].T_s[5]
    X[30]=((X[29] + (0.125 * (sPAR[20] * sPAR[32]))) / (1.0 + (0.125 * sPAR[20]))); //generator[4].T_s[6]
    X[31]=((X[30] + (0.125 * (sPAR[20] * sPAR[32]))) / (1.0 + (0.125 * sPAR[20]))); //generator[4].T_s[7]
    X[32]=((X[31] + (0.125 * (sPAR[20] * sPAR[32]))) / (1.0 + (0.125 * sPAR[20]))); //generator[4].T_s[8]
    X[33]=0.0; //generator[1].err_p_int
    X[34]=0.0; //generator[2].err_p_int
    X[35]=0.0; //generator[3].err_p_int
    X[36]=0.0; //generator[4].err_p_int
    X[37]=0.0; //generator[1].err_p_t_int
    X[38]=0.0; //generator[2].err_p_t_int
    X[39]=0.0; //generator[3].err_p_t_int
    X[40]=0.0; //generator[4].err_p_t_int
    X[42]=314.1592653589793; //generator[2].omega
    X[43]=314.1592653589793; //generator[3].omega
    X[44]=314.1592653589793; //generator[4].omega
    X[49]=(1.0 - sPAR[41]); //generator[1].p_t_lp
    X[50]=(1.0 - sPAR[42]); //generator[2].p_t_lp
    X[51]=(1.0 - sPAR[43]); //generator[3].p_t_lp
    X[52]=(1.0 - sPAR[44]); //generator[4].p_t_lp
    X[53]=1.0; //generator[1].q_ev
    X[54]=1.0; //generator[2].q_ev
    X[55]=1.0; //generator[3].q_ev
    X[56]=1.0; //generator[4].q_ev
    X[61]=1.0; //generator[1].y_t
    X[62]=1.0; //generator[2].y_t
    X[63]=1.0; //generator[3].y_t
    X[64]=1.0; //generator[4].y_t

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
