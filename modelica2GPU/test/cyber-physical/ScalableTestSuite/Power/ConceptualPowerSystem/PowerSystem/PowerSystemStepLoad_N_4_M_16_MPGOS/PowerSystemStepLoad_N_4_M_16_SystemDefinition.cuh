
#ifndef POWERSYSTEMSTEPLOAD_N_4_M_16_PERTHREAD_SYSTEMDEFINITION_H
#define POWERSYSTEMSTEPLOAD_N_4_M_16_PERTHREAD_SYSTEMDEFINITION_H

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
    ACC[145]=1.0;
    ACC[57]=500000000.0;
    ACC[153]=1.0;
    ACC[144]=1.0;
    ACC[56]=500000000.0;
    ACC[152]=1.0;
    ACC[143]=1.0;
    ACC[55]=500000000.0;
    ACC[151]=1.0;
    ACC[142]=1.0;
    ACC[54]=500000000.0;
    ACC[150]=1.0;
    ACC[36]=500000000.0;
    ACC[40]=500000000.0;
    ACC[39]=500000000.0;
    ACC[38]=500000000.0;
    ACC[37]=0.0;
    ACC[58]=X[77];
    ACC[59]=X[1];
    ACC[60]=X[2];
    ACC[61]=X[3];
    ACC[62]=X[4];
    ACC[63]=X[5];
    ACC[64]=X[6];
    ACC[65]=X[7];
    ACC[66]=X[8];
    ACC[67]=X[9];
    ACC[68]=X[10];
    ACC[69]=X[11];
    ACC[70]=X[12];
    ACC[71]=X[13];
    ACC[72]=X[14];
    ACC[73]=X[15];
    ACC[74]=X[16];
    ACC[75]=X[78];
    ACC[76]=X[17];
    ACC[77]=X[18];
    ACC[78]=X[19];
    ACC[79]=X[20];
    ACC[80]=X[21];
    ACC[81]=X[22];
    ACC[82]=X[23];
    ACC[83]=X[24];
    ACC[84]=X[25];
    ACC[85]=X[26];
    ACC[86]=X[27];
    ACC[87]=X[28];
    ACC[88]=X[29];
    ACC[89]=X[30];
    ACC[90]=X[31];
    ACC[91]=X[32];
    ACC[92]=X[79];
    ACC[93]=X[33];
    ACC[94]=X[34];
    ACC[95]=X[35];
    ACC[96]=X[36];
    ACC[97]=X[37];
    ACC[98]=X[38];
    ACC[99]=X[39];
    ACC[100]=X[40];
    ACC[101]=X[41];
    ACC[102]=X[42];
    ACC[103]=X[43];
    ACC[104]=X[44];
    ACC[105]=X[45];
    ACC[106]=X[46];
    ACC[107]=X[47];
    ACC[108]=X[48];
    ACC[109]=X[80];
    ACC[110]=X[49];
    ACC[111]=X[50];
    ACC[112]=X[51];
    ACC[113]=X[52];
    ACC[114]=X[53];
    ACC[115]=X[54];
    ACC[116]=X[55];
    ACC[117]=X[56];
    ACC[118]=X[57];
    ACC[119]=X[58];
    ACC[120]=X[59];
    ACC[121]=X[60];
    ACC[122]=X[61];
    ACC[123]=X[62];
    ACC[124]=X[63];
    ACC[125]=X[64];
    ACC[34]=(500000000.0 * sin((X[92] - X[91])));
    ACC[33]=(250000000.0 * sin((X[92] - X[90])));
    ACC[32]=(166666666.6666667 * sin((X[92] - X[89])));
    ACC[31]=(500000000.0 * sin((X[91] - X[92])));
    ACC[29]=(500000000.0 * sin((X[91] - X[90])));
    ACC[28]=(250000000.0 * sin((X[91] - X[89])));
    ACC[27]=(250000000.0 * sin((X[90] - X[92])));
    ACC[26]=(500000000.0 * sin((X[90] - X[91])));
    ACC[24]=(500000000.0 * sin((X[90] - X[89])));
    ACC[23]=(166666666.6666667 * sin((X[89] - X[92])));
    ACC[22]=(250000000.0 * sin((X[89] - X[91])));
    ACC[21]=(500000000.0 * sin((X[89] - X[90])));
    ACC[49]=(0.25 * X[0]);
    ACC[46]=ACC[49];
    ACC[47]=ACC[49];
    ACC[48]=ACC[49];
    ACC[130]=(1.0 - X[77]);
    ACC[162]=(X[93] * X[77]);
    ACC[146]=((sPAR[41] * ACC[162]) + X[81]);
    ACC[50]=(500000000.0 * ACC[146]);
    ACC[41]=(0.1591549430918953 * X[73]);
    ACC[126]=(-1.0 + (0.02 * ACC[41]));
    ACC[154]=(1.0 + ((2e-09 * ACC[49]) - (ACC[126] / sPAR[45])));
    ACC[134]=(ACC[154] - ACC[146]);
    ACC[158]=(ACC[154] + (sPAR[9] * (ACC[130] + (X[65] / sPAR[33]))));
    ACC[166]=(ACC[154] + (sPAR[13] * (ACC[134] + (X[69] / sPAR[37]))));
    ACC[138]=ACC[41];
    ACC[131]=(1.0 - X[78]);
    ACC[163]=(X[94] * X[78]);
    ACC[147]=((sPAR[42] * ACC[163]) + X[82]);
    ACC[51]=(500000000.0 * ACC[147]);
    ACC[139]=(0.1591549430918953 * X[74]);
    ACC[127]=(-1.0 + (0.02 * ACC[139]));
    ACC[155]=(1.0 + ((2e-09 * ACC[49]) - (ACC[127] / sPAR[46])));
    ACC[135]=(ACC[155] - ACC[147]);
    ACC[159]=(ACC[155] + (sPAR[10] * (ACC[131] + (X[66] / sPAR[34]))));
    ACC[167]=(ACC[155] + (sPAR[14] * (ACC[135] + (X[70] / sPAR[38]))));
    ACC[132]=(1.0 - X[79]);
    ACC[164]=(X[95] * X[79]);
    ACC[148]=((sPAR[43] * ACC[164]) + X[83]);
    ACC[52]=(500000000.0 * ACC[148]);
    ACC[140]=(0.1591549430918953 * X[75]);
    ACC[128]=(-1.0 + (0.02 * ACC[140]));
    ACC[156]=(1.0 + ((2e-09 * ACC[49]) - (ACC[128] / sPAR[47])));
    ACC[136]=(ACC[156] - ACC[148]);
    ACC[160]=(ACC[156] + (sPAR[11] * (ACC[132] + (X[67] / sPAR[35]))));
    ACC[168]=(ACC[156] + (sPAR[15] * (ACC[136] + (X[71] / sPAR[39]))));
    ACC[133]=(1.0 - X[80]);
    ACC[165]=(X[96] * X[80]);
    ACC[149]=((sPAR[44] * ACC[165]) + X[84]);
    ACC[53]=(500000000.0 * ACC[149]);
    ACC[141]=(0.1591549430918953 * X[76]);
    ACC[129]=(-1.0 + (0.02 * ACC[141]));
    ACC[157]=(1.0 + ((2e-09 * ACC[49]) - (ACC[129] / sPAR[48])));
    ACC[137]=(ACC[157] - ACC[149]);
    ACC[161]=(ACC[157] + (sPAR[12] * (ACC[133] + (X[68] / sPAR[36]))));
    ACC[169]=(ACC[157] + (sPAR[16] * (ACC[137] + (X[72] / sPAR[40]))));
    ACC[5]=(sPAR[0] * (X[73] - X[74]));
    ACC[6]=(sPAR[0] * (X[73] - X[75]));
    ACC[7]=(sPAR[0] * (X[73] - X[76]));
    ACC[0]=(ACC[21] + (ACC[22] + (ACC[23] + (ACC[5] + (ACC[6] + ACC[7])))));
    ACC[42]=ACC[0];
    ACC[8]=(sPAR[0] * (X[74] - X[73]));
    ACC[10]=(sPAR[0] * (X[74] - X[75]));
    ACC[11]=(sPAR[0] * (X[74] - X[76]));
    ACC[1]=(500000000.0 + (ACC[24] + (ACC[26] + (ACC[27] + (ACC[8] + (ACC[10] + ACC[11]))))));
    ACC[43]=ACC[1];
    ACC[12]=(sPAR[0] * (X[75] - X[73]));
    ACC[13]=(sPAR[0] * (X[75] - X[74]));
    ACC[15]=(sPAR[0] * (X[75] - X[76]));
    ACC[2]=(500000000.0 + (ACC[28] + (ACC[29] + (ACC[31] + (ACC[12] + (ACC[13] + ACC[15]))))));
    ACC[44]=ACC[2];
    ACC[16]=(sPAR[0] * (X[76] - X[73]));
    ACC[17]=(sPAR[0] * (X[76] - X[74]));
    ACC[18]=(sPAR[0] * (X[76] - X[75]));
    ACC[3]=(500000000.0 + (ACC[32] + (ACC[33] + (ACC[34] + (ACC[16] + (ACC[17] + ACC[18]))))));
    ACC[45]=ACC[3];
    F[65]=ACC[130];
    F[89]=(-314.1592653589793 + X[73]);
    F[81]=((((1.0 - sPAR[41]) * ACC[162]) - X[81]) / sPAR[69]);
    F[1]=((16.0 * ((ACC[162] * (X[77] - X[1])) + (0.0625 * (sPAR[17] * (sPAR[29] - X[1]))))) / sPAR[65]);
    F[2]=((16.0 * ((ACC[162] * (X[1] - X[2])) + (0.0625 * (sPAR[17] * (sPAR[29] - X[2]))))) / sPAR[65]);
    F[3]=((16.0 * ((ACC[162] * (X[2] - X[3])) + (0.0625 * (sPAR[17] * (sPAR[29] - X[3]))))) / sPAR[65]);
    F[4]=((16.0 * ((ACC[162] * (X[3] - X[4])) + (0.0625 * (sPAR[17] * (sPAR[29] - X[4]))))) / sPAR[65]);
    F[5]=((16.0 * ((ACC[162] * (X[4] - X[5])) + (0.0625 * (sPAR[17] * (sPAR[29] - X[5]))))) / sPAR[65]);
    F[6]=((16.0 * ((ACC[162] * (X[5] - X[6])) + (0.0625 * (sPAR[17] * (sPAR[29] - X[6]))))) / sPAR[65]);
    F[7]=((16.0 * ((ACC[162] * (X[6] - X[7])) + (0.0625 * (sPAR[17] * (sPAR[29] - X[7]))))) / sPAR[65]);
    F[8]=((16.0 * ((ACC[162] * (X[7] - X[8])) + (0.0625 * (sPAR[17] * (sPAR[29] - X[8]))))) / sPAR[65]);
    F[9]=((16.0 * ((ACC[162] * (X[8] - X[9])) + (0.0625 * (sPAR[17] * (sPAR[29] - X[9]))))) / sPAR[65]);
    F[10]=((16.0 * ((ACC[162] * (X[9] - X[10])) + (0.0625 * (sPAR[17] * (sPAR[29] - X[10]))))) / sPAR[65]);
    F[11]=((16.0 * ((ACC[162] * (X[10] - X[11])) + (0.0625 * (sPAR[17] * (sPAR[29] - X[11]))))) / sPAR[65]);
    F[12]=((16.0 * ((ACC[162] * (X[11] - X[12])) + (0.0625 * (sPAR[17] * (sPAR[29] - X[12]))))) / sPAR[65]);
    F[13]=((16.0 * ((ACC[162] * (X[12] - X[13])) + (0.0625 * (sPAR[17] * (sPAR[29] - X[13]))))) / sPAR[65]);
    F[14]=((16.0 * ((ACC[162] * (X[13] - X[14])) + (0.0625 * (sPAR[17] * (sPAR[29] - X[14]))))) / sPAR[65]);
    F[15]=((16.0 * ((ACC[162] * (X[14] - X[15])) + (0.0625 * (sPAR[17] * (sPAR[29] - X[15]))))) / sPAR[65]);
    F[16]=((16.0 * ((ACC[162] * (X[15] - X[16])) + (0.0625 * (sPAR[17] * (sPAR[29] - X[16]))))) / sPAR[65]);
    F[77]=((X[85] - ACC[162]) / sPAR[57]);
    F[69]=ACC[134];
    F[85]=((ACC[158] - X[85]) / sPAR[61]);
    F[93]=((ACC[166] - X[93]) / sPAR[73]);
    F[0]=((2000000000.0 * ((sPAR[4] - ACC[41]) / (sPAR[4] * sPAR[3]))) / sPAR[2]);
    F[66]=ACC[131];
    F[90]=(-314.1592653589793 + X[74]);
    F[82]=((((1.0 - sPAR[42]) * ACC[163]) - X[82]) / sPAR[70]);
    F[17]=((16.0 * ((ACC[163] * (X[78] - X[17])) + (0.0625 * (sPAR[18] * (sPAR[30] - X[17]))))) / sPAR[66]);
    F[18]=((16.0 * ((ACC[163] * (X[17] - X[18])) + (0.0625 * (sPAR[18] * (sPAR[30] - X[18]))))) / sPAR[66]);
    F[19]=((16.0 * ((ACC[163] * (X[18] - X[19])) + (0.0625 * (sPAR[18] * (sPAR[30] - X[19]))))) / sPAR[66]);
    F[20]=((16.0 * ((ACC[163] * (X[19] - X[20])) + (0.0625 * (sPAR[18] * (sPAR[30] - X[20]))))) / sPAR[66]);
    F[21]=((16.0 * ((ACC[163] * (X[20] - X[21])) + (0.0625 * (sPAR[18] * (sPAR[30] - X[21]))))) / sPAR[66]);
    F[22]=((16.0 * ((ACC[163] * (X[21] - X[22])) + (0.0625 * (sPAR[18] * (sPAR[30] - X[22]))))) / sPAR[66]);
    F[23]=((16.0 * ((ACC[163] * (X[22] - X[23])) + (0.0625 * (sPAR[18] * (sPAR[30] - X[23]))))) / sPAR[66]);
    F[24]=((16.0 * ((ACC[163] * (X[23] - X[24])) + (0.0625 * (sPAR[18] * (sPAR[30] - X[24]))))) / sPAR[66]);
    F[25]=((16.0 * ((ACC[163] * (X[24] - X[25])) + (0.0625 * (sPAR[18] * (sPAR[30] - X[25]))))) / sPAR[66]);
    F[26]=((16.0 * ((ACC[163] * (X[25] - X[26])) + (0.0625 * (sPAR[18] * (sPAR[30] - X[26]))))) / sPAR[66]);
    F[27]=((16.0 * ((ACC[163] * (X[26] - X[27])) + (0.0625 * (sPAR[18] * (sPAR[30] - X[27]))))) / sPAR[66]);
    F[28]=((16.0 * ((ACC[163] * (X[27] - X[28])) + (0.0625 * (sPAR[18] * (sPAR[30] - X[28]))))) / sPAR[66]);
    F[29]=((16.0 * ((ACC[163] * (X[28] - X[29])) + (0.0625 * (sPAR[18] * (sPAR[30] - X[29]))))) / sPAR[66]);
    F[30]=((16.0 * ((ACC[163] * (X[29] - X[30])) + (0.0625 * (sPAR[18] * (sPAR[30] - X[30]))))) / sPAR[66]);
    F[31]=((16.0 * ((ACC[163] * (X[30] - X[31])) + (0.0625 * (sPAR[18] * (sPAR[30] - X[31]))))) / sPAR[66]);
    F[32]=((16.0 * ((ACC[163] * (X[31] - X[32])) + (0.0625 * (sPAR[18] * (sPAR[30] - X[32]))))) / sPAR[66]);
    F[78]=((X[86] - ACC[163]) / sPAR[58]);
    F[70]=ACC[135];
    F[86]=((ACC[159] - X[86]) / sPAR[62]);
    F[94]=((ACC[167] - X[94]) / sPAR[74]);
    F[67]=ACC[132];
    F[91]=(-314.1592653589793 + X[75]);
    F[83]=((((1.0 - sPAR[43]) * ACC[164]) - X[83]) / sPAR[71]);
    F[33]=((16.0 * ((ACC[164] * (X[79] - X[33])) + (0.0625 * (sPAR[19] * (sPAR[31] - X[33]))))) / sPAR[67]);
    F[34]=((16.0 * ((ACC[164] * (X[33] - X[34])) + (0.0625 * (sPAR[19] * (sPAR[31] - X[34]))))) / sPAR[67]);
    F[35]=((16.0 * ((ACC[164] * (X[34] - X[35])) + (0.0625 * (sPAR[19] * (sPAR[31] - X[35]))))) / sPAR[67]);
    F[36]=((16.0 * ((ACC[164] * (X[35] - X[36])) + (0.0625 * (sPAR[19] * (sPAR[31] - X[36]))))) / sPAR[67]);
    F[37]=((16.0 * ((ACC[164] * (X[36] - X[37])) + (0.0625 * (sPAR[19] * (sPAR[31] - X[37]))))) / sPAR[67]);
    F[38]=((16.0 * ((ACC[164] * (X[37] - X[38])) + (0.0625 * (sPAR[19] * (sPAR[31] - X[38]))))) / sPAR[67]);
    F[39]=((16.0 * ((ACC[164] * (X[38] - X[39])) + (0.0625 * (sPAR[19] * (sPAR[31] - X[39]))))) / sPAR[67]);
    F[40]=((16.0 * ((ACC[164] * (X[39] - X[40])) + (0.0625 * (sPAR[19] * (sPAR[31] - X[40]))))) / sPAR[67]);
    F[41]=((16.0 * ((ACC[164] * (X[40] - X[41])) + (0.0625 * (sPAR[19] * (sPAR[31] - X[41]))))) / sPAR[67]);
    F[42]=((16.0 * ((ACC[164] * (X[41] - X[42])) + (0.0625 * (sPAR[19] * (sPAR[31] - X[42]))))) / sPAR[67]);
    F[43]=((16.0 * ((ACC[164] * (X[42] - X[43])) + (0.0625 * (sPAR[19] * (sPAR[31] - X[43]))))) / sPAR[67]);
    F[44]=((16.0 * ((ACC[164] * (X[43] - X[44])) + (0.0625 * (sPAR[19] * (sPAR[31] - X[44]))))) / sPAR[67]);
    F[45]=((16.0 * ((ACC[164] * (X[44] - X[45])) + (0.0625 * (sPAR[19] * (sPAR[31] - X[45]))))) / sPAR[67]);
    F[46]=((16.0 * ((ACC[164] * (X[45] - X[46])) + (0.0625 * (sPAR[19] * (sPAR[31] - X[46]))))) / sPAR[67]);
    F[47]=((16.0 * ((ACC[164] * (X[46] - X[47])) + (0.0625 * (sPAR[19] * (sPAR[31] - X[47]))))) / sPAR[67]);
    F[48]=((16.0 * ((ACC[164] * (X[47] - X[48])) + (0.0625 * (sPAR[19] * (sPAR[31] - X[48]))))) / sPAR[67]);
    F[79]=((X[87] - ACC[164]) / sPAR[59]);
    F[71]=ACC[136];
    F[87]=((ACC[160] - X[87]) / sPAR[63]);
    F[95]=((ACC[168] - X[95]) / sPAR[75]);
    F[68]=ACC[133];
    F[92]=(-314.1592653589793 + X[76]);
    F[84]=((((1.0 - sPAR[44]) * ACC[165]) - X[84]) / sPAR[72]);
    F[49]=((16.0 * ((ACC[165] * (X[80] - X[49])) + (0.0625 * (sPAR[20] * (sPAR[32] - X[49]))))) / sPAR[68]);
    F[50]=((16.0 * ((ACC[165] * (X[49] - X[50])) + (0.0625 * (sPAR[20] * (sPAR[32] - X[50]))))) / sPAR[68]);
    F[51]=((16.0 * ((ACC[165] * (X[50] - X[51])) + (0.0625 * (sPAR[20] * (sPAR[32] - X[51]))))) / sPAR[68]);
    F[52]=((16.0 * ((ACC[165] * (X[51] - X[52])) + (0.0625 * (sPAR[20] * (sPAR[32] - X[52]))))) / sPAR[68]);
    F[53]=((16.0 * ((ACC[165] * (X[52] - X[53])) + (0.0625 * (sPAR[20] * (sPAR[32] - X[53]))))) / sPAR[68]);
    F[54]=((16.0 * ((ACC[165] * (X[53] - X[54])) + (0.0625 * (sPAR[20] * (sPAR[32] - X[54]))))) / sPAR[68]);
    F[55]=((16.0 * ((ACC[165] * (X[54] - X[55])) + (0.0625 * (sPAR[20] * (sPAR[32] - X[55]))))) / sPAR[68]);
    F[56]=((16.0 * ((ACC[165] * (X[55] - X[56])) + (0.0625 * (sPAR[20] * (sPAR[32] - X[56]))))) / sPAR[68]);
    F[57]=((16.0 * ((ACC[165] * (X[56] - X[57])) + (0.0625 * (sPAR[20] * (sPAR[32] - X[57]))))) / sPAR[68]);
    F[58]=((16.0 * ((ACC[165] * (X[57] - X[58])) + (0.0625 * (sPAR[20] * (sPAR[32] - X[58]))))) / sPAR[68]);
    F[59]=((16.0 * ((ACC[165] * (X[58] - X[59])) + (0.0625 * (sPAR[20] * (sPAR[32] - X[59]))))) / sPAR[68]);
    F[60]=((16.0 * ((ACC[165] * (X[59] - X[60])) + (0.0625 * (sPAR[20] * (sPAR[32] - X[60]))))) / sPAR[68]);
    F[61]=((16.0 * ((ACC[165] * (X[60] - X[61])) + (0.0625 * (sPAR[20] * (sPAR[32] - X[61]))))) / sPAR[68]);
    F[62]=((16.0 * ((ACC[165] * (X[61] - X[62])) + (0.0625 * (sPAR[20] * (sPAR[32] - X[62]))))) / sPAR[68]);
    F[63]=((16.0 * ((ACC[165] * (X[62] - X[63])) + (0.0625 * (sPAR[20] * (sPAR[32] - X[63]))))) / sPAR[68]);
    F[64]=((16.0 * ((ACC[165] * (X[63] - X[64])) + (0.0625 * (sPAR[20] * (sPAR[32] - X[64]))))) / sPAR[68]);
    F[80]=((X[88] - ACC[165]) / sPAR[60]);
    F[72]=ACC[137];
    F[88]=((ACC[161] - X[88]) / sPAR[64]);
    F[96]=((ACC[169] - X[96]) / sPAR[76]);
    F[73]=((ACC[50] - ACC[0]) / (25330.29591058444 * X[73]));
    F[74]=((ACC[51] - ACC[1]) / (25330.29591058444 * X[74]));
    F[75]=((ACC[52] - ACC[2]) / (25330.29591058444 * X[75]));
    F[76]=((ACC[53] - ACC[3]) / (25330.29591058444 * X[76]));

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
    X[89]=0.0; //generator[1].theta
    X[90]=0.0; //generator[2].theta
    ACC[21]=(ACC[36] * sin((X[89] - X[90]))); //P_ex[1,2]
    X[91]=0.0; //generator[3].theta
    ACC[22]=(0.5 * (ACC[36] * sin((X[89] - X[91])))); //P_ex[1,3]
    X[92]=0.0; //generator[4].theta
    ACC[23]=(0.3333333333333333 * (ACC[36] * sin((X[89] - X[92])))); //P_ex[1,4]
    ACC[4]=0.0; //P_diss[1,1]
    ACC[5]=0.0; //P_diss[1,2]
    ACC[6]=0.0; //P_diss[1,3]
    ACC[7]=0.0; //P_diss[1,4]
    ACC[37]=0.0; //P_load[1]
    ACC[0]=(ACC[20] + (ACC[21] + (ACC[22] + (ACC[23] + (ACC[4] + (ACC[5] + (ACC[6] + (ACC[7] + ACC[37])))))))); //P_a[1]
    ACC[24]=(ACC[36] * sin((X[90] - X[89]))); //P_ex[2,1]
    ACC[25]=0.0; //P_ex[2,2]
    ACC[26]=(ACC[36] * sin((X[90] - X[91]))); //P_ex[2,3]
    ACC[27]=(0.5 * (ACC[36] * sin((X[90] - X[92])))); //P_ex[2,4]
    ACC[8]=0.0; //P_diss[2,1]
    ACC[9]=0.0; //P_diss[2,2]
    ACC[10]=0.0; //P_diss[2,3]
    ACC[11]=0.0; //P_diss[2,4]
    ACC[38]=500000000.0; //P_load[2]
    ACC[1]=(ACC[24] + (ACC[25] + (ACC[26] + (ACC[27] + (ACC[8] + (ACC[9] + (ACC[10] + (ACC[11] + ACC[38])))))))); //P_a[2]
    ACC[28]=(0.5 * (ACC[36] * sin((X[91] - X[89])))); //P_ex[3,1]
    ACC[29]=(ACC[36] * sin((X[91] - X[90]))); //P_ex[3,2]
    ACC[30]=0.0; //P_ex[3,3]
    ACC[31]=(ACC[36] * sin((X[91] - X[92]))); //P_ex[3,4]
    ACC[12]=0.0; //P_diss[3,1]
    ACC[13]=0.0; //P_diss[3,2]
    ACC[14]=0.0; //P_diss[3,3]
    ACC[15]=0.0; //P_diss[3,4]
    ACC[39]=500000000.0; //P_load[3]
    ACC[2]=(ACC[28] + (ACC[29] + (ACC[30] + (ACC[31] + (ACC[12] + (ACC[13] + (ACC[14] + (ACC[15] + ACC[39])))))))); //P_a[3]
    ACC[32]=(0.3333333333333333 * (ACC[36] * sin((X[92] - X[89])))); //P_ex[4,1]
    ACC[33]=(0.5 * (ACC[36] * sin((X[92] - X[90])))); //P_ex[4,2]
    ACC[34]=(ACC[36] * sin((X[92] - X[91]))); //P_ex[4,3]
    ACC[35]=0.0; //P_ex[4,4]
    ACC[16]=0.0; //P_diss[4,1]
    ACC[17]=0.0; //P_diss[4,2]
    ACC[18]=0.0; //P_diss[4,3]
    ACC[19]=0.0; //P_diss[4,4]
    ACC[40]=500000000.0; //P_load[4]
    ACC[3]=(ACC[32] + (ACC[33] + (ACC[34] + (ACC[35] + (ACC[16] + (ACC[17] + (ACC[18] + (ACC[19] + ACC[40])))))))); //P_a[4]
    X[73]=314.1592653589793; //generator[1].omega
    ACC[138]=(0.1591549430918953 * X[73]); //generator[1].f
    ACC[41]=ACC[138]; //f
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
    ACC[67]=0.0; //generator[1].T_s_b[10]
    ACC[68]=0.0; //generator[1].T_s_b[11]
    ACC[69]=0.0; //generator[1].T_s_b[12]
    ACC[70]=0.0; //generator[1].T_s_b[13]
    ACC[71]=0.0; //generator[1].T_s_b[14]
    ACC[72]=0.0; //generator[1].T_s_b[15]
    ACC[73]=0.0; //generator[1].T_s_b[16]
    ACC[74]=0.0; //generator[1].T_s_b[17]
    ACC[75]=0.0; //generator[2].T_s_b[1]
    ACC[76]=0.0; //generator[2].T_s_b[2]
    ACC[77]=0.0; //generator[2].T_s_b[3]
    ACC[78]=0.0; //generator[2].T_s_b[4]
    ACC[79]=0.0; //generator[2].T_s_b[5]
    ACC[80]=0.0; //generator[2].T_s_b[6]
    ACC[81]=0.0; //generator[2].T_s_b[7]
    ACC[82]=0.0; //generator[2].T_s_b[8]
    ACC[83]=0.0; //generator[2].T_s_b[9]
    ACC[84]=0.0; //generator[2].T_s_b[10]
    ACC[85]=0.0; //generator[2].T_s_b[11]
    ACC[86]=0.0; //generator[2].T_s_b[12]
    ACC[87]=0.0; //generator[2].T_s_b[13]
    ACC[88]=0.0; //generator[2].T_s_b[14]
    ACC[89]=0.0; //generator[2].T_s_b[15]
    ACC[90]=0.0; //generator[2].T_s_b[16]
    ACC[91]=0.0; //generator[2].T_s_b[17]
    ACC[92]=0.0; //generator[3].T_s_b[1]
    ACC[93]=0.0; //generator[3].T_s_b[2]
    ACC[94]=0.0; //generator[3].T_s_b[3]
    ACC[95]=0.0; //generator[3].T_s_b[4]
    ACC[96]=0.0; //generator[3].T_s_b[5]
    ACC[97]=0.0; //generator[3].T_s_b[6]
    ACC[98]=0.0; //generator[3].T_s_b[7]
    ACC[99]=0.0; //generator[3].T_s_b[8]
    ACC[100]=0.0; //generator[3].T_s_b[9]
    ACC[101]=0.0; //generator[3].T_s_b[10]
    ACC[102]=0.0; //generator[3].T_s_b[11]
    ACC[103]=0.0; //generator[3].T_s_b[12]
    ACC[104]=0.0; //generator[3].T_s_b[13]
    ACC[105]=0.0; //generator[3].T_s_b[14]
    ACC[106]=0.0; //generator[3].T_s_b[15]
    ACC[107]=0.0; //generator[3].T_s_b[16]
    ACC[108]=0.0; //generator[3].T_s_b[17]
    ACC[109]=0.0; //generator[4].T_s_b[1]
    ACC[110]=0.0; //generator[4].T_s_b[2]
    ACC[111]=0.0; //generator[4].T_s_b[3]
    ACC[112]=0.0; //generator[4].T_s_b[4]
    ACC[113]=0.0; //generator[4].T_s_b[5]
    ACC[114]=0.0; //generator[4].T_s_b[6]
    ACC[115]=0.0; //generator[4].T_s_b[7]
    ACC[116]=0.0; //generator[4].T_s_b[8]
    ACC[117]=0.0; //generator[4].T_s_b[9]
    ACC[118]=0.0; //generator[4].T_s_b[10]
    ACC[119]=0.0; //generator[4].T_s_b[11]
    ACC[120]=0.0; //generator[4].T_s_b[12]
    ACC[121]=0.0; //generator[4].T_s_b[13]
    ACC[122]=0.0; //generator[4].T_s_b[14]
    ACC[123]=0.0; //generator[4].T_s_b[15]
    ACC[124]=0.0; //generator[4].T_s_b[16]
    ACC[125]=0.0; //generator[4].T_s_b[17]
    ACC[126]=(-1.0 + (0.02 * ACC[138])); //generator[1].delta_f
    ACC[127]=0.0; //generator[2].delta_f
    ACC[128]=0.0; //generator[3].delta_f
    ACC[129]=0.0; //generator[4].delta_f
    ACC[142]=1.0; //generator[1].p_0
    X[77]=1.0; //generator[1].p
    ACC[130]=(ACC[142] - X[77]); //generator[1].err_p
    ACC[143]=1.0; //generator[2].p_0
    X[78]=1.0; //generator[2].p
    ACC[131]=(ACC[143] - X[78]); //generator[2].err_p
    ACC[144]=1.0; //generator[3].p_0
    X[79]=1.0; //generator[3].p
    ACC[132]=(ACC[144] - X[79]); //generator[3].err_p
    ACC[145]=1.0; //generator[4].p_0
    X[80]=1.0; //generator[4].p
    ACC[133]=(ACC[145] - X[80]); //generator[4].err_p
    ACC[134]=0.0; //generator[1].err_p_t
    ACC[135]=0.0; //generator[2].err_p_t
    ACC[136]=0.0; //generator[3].err_p_t
    ACC[137]=0.0; //generator[4].err_p_t
    ACC[139]=0.0; //generator[2].f
    ACC[140]=0.0; //generator[3].f
    ACC[141]=0.0; //generator[4].f
    ACC[146]=0.0; //generator[1].p_t
    ACC[147]=0.0; //generator[2].p_t
    ACC[148]=0.0; //generator[3].p_t
    ACC[149]=0.0; //generator[4].p_t
    ACC[150]=1.0; //generator[1].p_t_0
    ACC[151]=1.0; //generator[2].p_t_0
    ACC[152]=1.0; //generator[3].p_t_0
    ACC[153]=1.0; //generator[4].p_t_0
    sPAR[45]=0.1; //generator[1].droop
    ACC[154]=(ACC[150] + ((2e-09 * ACC[46]) - (ACC[126] / sPAR[45]))); //generator[1].p_t_0_fc
    sPAR[46]=0.1; //generator[2].droop
    ACC[155]=(ACC[151] + ((2e-09 * ACC[47]) - (ACC[127] / sPAR[46]))); //generator[2].p_t_0_fc
    sPAR[47]=0.1; //generator[3].droop
    ACC[156]=(ACC[152] + ((2e-09 * ACC[48]) - (ACC[128] / sPAR[47]))); //generator[3].p_t_0_fc
    sPAR[48]=0.1; //generator[4].droop
    ACC[157]=(ACC[153] + ((2e-09 * ACC[49]) - (ACC[129] / sPAR[48]))); //generator[4].p_t_0_fc
    ACC[158]=0.0; //generator[1].q_ev_0
    ACC[159]=0.0; //generator[2].q_ev_0
    ACC[160]=0.0; //generator[3].q_ev_0
    ACC[161]=0.0; //generator[4].q_ev_0
    ACC[162]=0.0; //generator[1].w_s
    ACC[163]=0.0; //generator[2].w_s
    ACC[164]=0.0; //generator[3].w_s
    ACC[165]=0.0; //generator[4].w_s
    ACC[166]=0.0; //generator[1].y_t_0
    ACC[167]=0.0; //generator[2].y_t_0
    ACC[168]=0.0; //generator[3].y_t_0
    ACC[169]=0.0; //generator[4].y_t_0
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
    sPARi[0]=16; //M
    sPARi[1]=4; //N
    sPARi[2]=16; //generator[1].N
    sPARi[3]=16; //generator[2].N
    sPARi[4]=16; //generator[3].N
    sPARi[5]=16; //generator[4].N
    X[1]=((X[77] + (0.0625 * (sPAR[17] * sPAR[29]))) / (1.0 + (0.0625 * sPAR[17]))); //generator[1].T_s[1]
    X[2]=((X[1] + (0.0625 * (sPAR[17] * sPAR[29]))) / (1.0 + (0.0625 * sPAR[17]))); //generator[1].T_s[2]
    X[3]=((X[2] + (0.0625 * (sPAR[17] * sPAR[29]))) / (1.0 + (0.0625 * sPAR[17]))); //generator[1].T_s[3]
    X[4]=((X[3] + (0.0625 * (sPAR[17] * sPAR[29]))) / (1.0 + (0.0625 * sPAR[17]))); //generator[1].T_s[4]
    X[5]=((X[4] + (0.0625 * (sPAR[17] * sPAR[29]))) / (1.0 + (0.0625 * sPAR[17]))); //generator[1].T_s[5]
    X[6]=((X[5] + (0.0625 * (sPAR[17] * sPAR[29]))) / (1.0 + (0.0625 * sPAR[17]))); //generator[1].T_s[6]
    X[7]=((X[6] + (0.0625 * (sPAR[17] * sPAR[29]))) / (1.0 + (0.0625 * sPAR[17]))); //generator[1].T_s[7]
    X[8]=((X[7] + (0.0625 * (sPAR[17] * sPAR[29]))) / (1.0 + (0.0625 * sPAR[17]))); //generator[1].T_s[8]
    X[9]=((X[8] + (0.0625 * (sPAR[17] * sPAR[29]))) / (1.0 + (0.0625 * sPAR[17]))); //generator[1].T_s[9]
    X[10]=((X[9] + (0.0625 * (sPAR[17] * sPAR[29]))) / (1.0 + (0.0625 * sPAR[17]))); //generator[1].T_s[10]
    X[11]=((X[10] + (0.0625 * (sPAR[17] * sPAR[29]))) / (1.0 + (0.0625 * sPAR[17]))); //generator[1].T_s[11]
    X[12]=((X[11] + (0.0625 * (sPAR[17] * sPAR[29]))) / (1.0 + (0.0625 * sPAR[17]))); //generator[1].T_s[12]
    X[13]=((X[12] + (0.0625 * (sPAR[17] * sPAR[29]))) / (1.0 + (0.0625 * sPAR[17]))); //generator[1].T_s[13]
    X[14]=((X[13] + (0.0625 * (sPAR[17] * sPAR[29]))) / (1.0 + (0.0625 * sPAR[17]))); //generator[1].T_s[14]
    X[15]=((X[14] + (0.0625 * (sPAR[17] * sPAR[29]))) / (1.0 + (0.0625 * sPAR[17]))); //generator[1].T_s[15]
    X[16]=((X[15] + (0.0625 * (sPAR[17] * sPAR[29]))) / (1.0 + (0.0625 * sPAR[17]))); //generator[1].T_s[16]
    X[17]=((X[78] + (0.0625 * (sPAR[18] * sPAR[30]))) / (1.0 + (0.0625 * sPAR[18]))); //generator[2].T_s[1]
    X[18]=((X[17] + (0.0625 * (sPAR[18] * sPAR[30]))) / (1.0 + (0.0625 * sPAR[18]))); //generator[2].T_s[2]
    X[19]=((X[18] + (0.0625 * (sPAR[18] * sPAR[30]))) / (1.0 + (0.0625 * sPAR[18]))); //generator[2].T_s[3]
    X[20]=((X[19] + (0.0625 * (sPAR[18] * sPAR[30]))) / (1.0 + (0.0625 * sPAR[18]))); //generator[2].T_s[4]
    X[21]=((X[20] + (0.0625 * (sPAR[18] * sPAR[30]))) / (1.0 + (0.0625 * sPAR[18]))); //generator[2].T_s[5]
    X[22]=((X[21] + (0.0625 * (sPAR[18] * sPAR[30]))) / (1.0 + (0.0625 * sPAR[18]))); //generator[2].T_s[6]
    X[23]=((X[22] + (0.0625 * (sPAR[18] * sPAR[30]))) / (1.0 + (0.0625 * sPAR[18]))); //generator[2].T_s[7]
    X[24]=((X[23] + (0.0625 * (sPAR[18] * sPAR[30]))) / (1.0 + (0.0625 * sPAR[18]))); //generator[2].T_s[8]
    X[25]=((X[24] + (0.0625 * (sPAR[18] * sPAR[30]))) / (1.0 + (0.0625 * sPAR[18]))); //generator[2].T_s[9]
    X[26]=((X[25] + (0.0625 * (sPAR[18] * sPAR[30]))) / (1.0 + (0.0625 * sPAR[18]))); //generator[2].T_s[10]
    X[27]=((X[26] + (0.0625 * (sPAR[18] * sPAR[30]))) / (1.0 + (0.0625 * sPAR[18]))); //generator[2].T_s[11]
    X[28]=((X[27] + (0.0625 * (sPAR[18] * sPAR[30]))) / (1.0 + (0.0625 * sPAR[18]))); //generator[2].T_s[12]
    X[29]=((X[28] + (0.0625 * (sPAR[18] * sPAR[30]))) / (1.0 + (0.0625 * sPAR[18]))); //generator[2].T_s[13]
    X[30]=((X[29] + (0.0625 * (sPAR[18] * sPAR[30]))) / (1.0 + (0.0625 * sPAR[18]))); //generator[2].T_s[14]
    X[31]=((X[30] + (0.0625 * (sPAR[18] * sPAR[30]))) / (1.0 + (0.0625 * sPAR[18]))); //generator[2].T_s[15]
    X[32]=((X[31] + (0.0625 * (sPAR[18] * sPAR[30]))) / (1.0 + (0.0625 * sPAR[18]))); //generator[2].T_s[16]
    X[33]=((X[79] + (0.0625 * (sPAR[19] * sPAR[31]))) / (1.0 + (0.0625 * sPAR[19]))); //generator[3].T_s[1]
    X[34]=((X[33] + (0.0625 * (sPAR[19] * sPAR[31]))) / (1.0 + (0.0625 * sPAR[19]))); //generator[3].T_s[2]
    X[35]=((X[34] + (0.0625 * (sPAR[19] * sPAR[31]))) / (1.0 + (0.0625 * sPAR[19]))); //generator[3].T_s[3]
    X[36]=((X[35] + (0.0625 * (sPAR[19] * sPAR[31]))) / (1.0 + (0.0625 * sPAR[19]))); //generator[3].T_s[4]
    X[37]=((X[36] + (0.0625 * (sPAR[19] * sPAR[31]))) / (1.0 + (0.0625 * sPAR[19]))); //generator[3].T_s[5]
    X[38]=((X[37] + (0.0625 * (sPAR[19] * sPAR[31]))) / (1.0 + (0.0625 * sPAR[19]))); //generator[3].T_s[6]
    X[39]=((X[38] + (0.0625 * (sPAR[19] * sPAR[31]))) / (1.0 + (0.0625 * sPAR[19]))); //generator[3].T_s[7]
    X[40]=((X[39] + (0.0625 * (sPAR[19] * sPAR[31]))) / (1.0 + (0.0625 * sPAR[19]))); //generator[3].T_s[8]
    X[41]=((X[40] + (0.0625 * (sPAR[19] * sPAR[31]))) / (1.0 + (0.0625 * sPAR[19]))); //generator[3].T_s[9]
    X[42]=((X[41] + (0.0625 * (sPAR[19] * sPAR[31]))) / (1.0 + (0.0625 * sPAR[19]))); //generator[3].T_s[10]
    X[43]=((X[42] + (0.0625 * (sPAR[19] * sPAR[31]))) / (1.0 + (0.0625 * sPAR[19]))); //generator[3].T_s[11]
    X[44]=((X[43] + (0.0625 * (sPAR[19] * sPAR[31]))) / (1.0 + (0.0625 * sPAR[19]))); //generator[3].T_s[12]
    X[45]=((X[44] + (0.0625 * (sPAR[19] * sPAR[31]))) / (1.0 + (0.0625 * sPAR[19]))); //generator[3].T_s[13]
    X[46]=((X[45] + (0.0625 * (sPAR[19] * sPAR[31]))) / (1.0 + (0.0625 * sPAR[19]))); //generator[3].T_s[14]
    X[47]=((X[46] + (0.0625 * (sPAR[19] * sPAR[31]))) / (1.0 + (0.0625 * sPAR[19]))); //generator[3].T_s[15]
    X[48]=((X[47] + (0.0625 * (sPAR[19] * sPAR[31]))) / (1.0 + (0.0625 * sPAR[19]))); //generator[3].T_s[16]
    X[49]=((X[80] + (0.0625 * (sPAR[20] * sPAR[32]))) / (1.0 + (0.0625 * sPAR[20]))); //generator[4].T_s[1]
    X[50]=((X[49] + (0.0625 * (sPAR[20] * sPAR[32]))) / (1.0 + (0.0625 * sPAR[20]))); //generator[4].T_s[2]
    X[51]=((X[50] + (0.0625 * (sPAR[20] * sPAR[32]))) / (1.0 + (0.0625 * sPAR[20]))); //generator[4].T_s[3]
    X[52]=((X[51] + (0.0625 * (sPAR[20] * sPAR[32]))) / (1.0 + (0.0625 * sPAR[20]))); //generator[4].T_s[4]
    X[53]=((X[52] + (0.0625 * (sPAR[20] * sPAR[32]))) / (1.0 + (0.0625 * sPAR[20]))); //generator[4].T_s[5]
    X[54]=((X[53] + (0.0625 * (sPAR[20] * sPAR[32]))) / (1.0 + (0.0625 * sPAR[20]))); //generator[4].T_s[6]
    X[55]=((X[54] + (0.0625 * (sPAR[20] * sPAR[32]))) / (1.0 + (0.0625 * sPAR[20]))); //generator[4].T_s[7]
    X[56]=((X[55] + (0.0625 * (sPAR[20] * sPAR[32]))) / (1.0 + (0.0625 * sPAR[20]))); //generator[4].T_s[8]
    X[57]=((X[56] + (0.0625 * (sPAR[20] * sPAR[32]))) / (1.0 + (0.0625 * sPAR[20]))); //generator[4].T_s[9]
    X[58]=((X[57] + (0.0625 * (sPAR[20] * sPAR[32]))) / (1.0 + (0.0625 * sPAR[20]))); //generator[4].T_s[10]
    X[59]=((X[58] + (0.0625 * (sPAR[20] * sPAR[32]))) / (1.0 + (0.0625 * sPAR[20]))); //generator[4].T_s[11]
    X[60]=((X[59] + (0.0625 * (sPAR[20] * sPAR[32]))) / (1.0 + (0.0625 * sPAR[20]))); //generator[4].T_s[12]
    X[61]=((X[60] + (0.0625 * (sPAR[20] * sPAR[32]))) / (1.0 + (0.0625 * sPAR[20]))); //generator[4].T_s[13]
    X[62]=((X[61] + (0.0625 * (sPAR[20] * sPAR[32]))) / (1.0 + (0.0625 * sPAR[20]))); //generator[4].T_s[14]
    X[63]=((X[62] + (0.0625 * (sPAR[20] * sPAR[32]))) / (1.0 + (0.0625 * sPAR[20]))); //generator[4].T_s[15]
    X[64]=((X[63] + (0.0625 * (sPAR[20] * sPAR[32]))) / (1.0 + (0.0625 * sPAR[20]))); //generator[4].T_s[16]
    X[65]=0.0; //generator[1].err_p_int
    X[66]=0.0; //generator[2].err_p_int
    X[67]=0.0; //generator[3].err_p_int
    X[68]=0.0; //generator[4].err_p_int
    X[69]=0.0; //generator[1].err_p_t_int
    X[70]=0.0; //generator[2].err_p_t_int
    X[71]=0.0; //generator[3].err_p_t_int
    X[72]=0.0; //generator[4].err_p_t_int
    X[74]=314.1592653589793; //generator[2].omega
    X[75]=314.1592653589793; //generator[3].omega
    X[76]=314.1592653589793; //generator[4].omega
    X[81]=(1.0 - sPAR[41]); //generator[1].p_t_lp
    X[82]=(1.0 - sPAR[42]); //generator[2].p_t_lp
    X[83]=(1.0 - sPAR[43]); //generator[3].p_t_lp
    X[84]=(1.0 - sPAR[44]); //generator[4].p_t_lp
    X[85]=1.0; //generator[1].q_ev
    X[86]=1.0; //generator[2].q_ev
    X[87]=1.0; //generator[3].q_ev
    X[88]=1.0; //generator[4].q_ev
    X[93]=1.0; //generator[1].y_t
    X[94]=1.0; //generator[2].y_t
    X[95]=1.0; //generator[3].y_t
    X[96]=1.0; //generator[4].y_t

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif