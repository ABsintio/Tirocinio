
#ifndef POWERSYSTEMSTEPLOAD_N_4_M_4_PERTHREAD_SYSTEMDEFINITION_H
#define POWERSYSTEMSTEPLOAD_N_4_M_4_PERTHREAD_SYSTEMDEFINITION_H

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
    ACC[97]=1.0;
    ACC[57]=500000000.0;
    ACC[105]=1.0;
    ACC[96]=1.0;
    ACC[56]=500000000.0;
    ACC[104]=1.0;
    ACC[95]=1.0;
    ACC[55]=500000000.0;
    ACC[103]=1.0;
    ACC[94]=1.0;
    ACC[54]=500000000.0;
    ACC[102]=1.0;
    ACC[36]=500000000.0;
    ACC[40]=500000000.0;
    ACC[39]=500000000.0;
    ACC[38]=500000000.0;
    ACC[37]=0.0;
    ACC[58]=X[29];
    ACC[59]=X[1];
    ACC[60]=X[2];
    ACC[61]=X[3];
    ACC[62]=X[4];
    ACC[63]=X[30];
    ACC[64]=X[5];
    ACC[65]=X[6];
    ACC[66]=X[7];
    ACC[67]=X[8];
    ACC[68]=X[31];
    ACC[69]=X[9];
    ACC[70]=X[10];
    ACC[71]=X[11];
    ACC[72]=X[12];
    ACC[73]=X[32];
    ACC[74]=X[13];
    ACC[75]=X[14];
    ACC[76]=X[15];
    ACC[77]=X[16];
    ACC[34]=(500000000.0 * sin((X[44] - X[43])));
    ACC[33]=(250000000.0 * sin((X[44] - X[42])));
    ACC[32]=(166666666.6666667 * sin((X[44] - X[41])));
    ACC[31]=(500000000.0 * sin((X[43] - X[44])));
    ACC[29]=(500000000.0 * sin((X[43] - X[42])));
    ACC[28]=(250000000.0 * sin((X[43] - X[41])));
    ACC[27]=(250000000.0 * sin((X[42] - X[44])));
    ACC[26]=(500000000.0 * sin((X[42] - X[43])));
    ACC[24]=(500000000.0 * sin((X[42] - X[41])));
    ACC[23]=(166666666.6666667 * sin((X[41] - X[44])));
    ACC[22]=(250000000.0 * sin((X[41] - X[43])));
    ACC[21]=(500000000.0 * sin((X[41] - X[42])));
    ACC[49]=(0.25 * X[0]);
    ACC[46]=ACC[49];
    ACC[47]=ACC[49];
    ACC[48]=ACC[49];
    ACC[82]=(1.0 - X[29]);
    ACC[114]=(X[45] * X[29]);
    ACC[98]=((sPAR[41] * ACC[114]) + X[33]);
    ACC[50]=(500000000.0 * ACC[98]);
    ACC[41]=(0.1591549430918953 * X[25]);
    ACC[78]=(-1.0 + (0.02 * ACC[41]));
    ACC[106]=(1.0 + ((2e-09 * ACC[49]) - (ACC[78] / sPAR[45])));
    ACC[86]=(ACC[106] - ACC[98]);
    ACC[110]=(ACC[106] + (sPAR[9] * (ACC[82] + (X[17] / sPAR[33]))));
    ACC[118]=(ACC[106] + (sPAR[13] * (ACC[86] + (X[21] / sPAR[37]))));
    ACC[90]=ACC[41];
    ACC[83]=(1.0 - X[30]);
    ACC[115]=(X[46] * X[30]);
    ACC[99]=((sPAR[42] * ACC[115]) + X[34]);
    ACC[51]=(500000000.0 * ACC[99]);
    ACC[91]=(0.1591549430918953 * X[26]);
    ACC[79]=(-1.0 + (0.02 * ACC[91]));
    ACC[107]=(1.0 + ((2e-09 * ACC[49]) - (ACC[79] / sPAR[46])));
    ACC[87]=(ACC[107] - ACC[99]);
    ACC[111]=(ACC[107] + (sPAR[10] * (ACC[83] + (X[18] / sPAR[34]))));
    ACC[119]=(ACC[107] + (sPAR[14] * (ACC[87] + (X[22] / sPAR[38]))));
    ACC[84]=(1.0 - X[31]);
    ACC[116]=(X[47] * X[31]);
    ACC[100]=((sPAR[43] * ACC[116]) + X[35]);
    ACC[52]=(500000000.0 * ACC[100]);
    ACC[92]=(0.1591549430918953 * X[27]);
    ACC[80]=(-1.0 + (0.02 * ACC[92]));
    ACC[108]=(1.0 + ((2e-09 * ACC[49]) - (ACC[80] / sPAR[47])));
    ACC[88]=(ACC[108] - ACC[100]);
    ACC[112]=(ACC[108] + (sPAR[11] * (ACC[84] + (X[19] / sPAR[35]))));
    ACC[120]=(ACC[108] + (sPAR[15] * (ACC[88] + (X[23] / sPAR[39]))));
    ACC[85]=(1.0 - X[32]);
    ACC[117]=(X[48] * X[32]);
    ACC[101]=((sPAR[44] * ACC[117]) + X[36]);
    ACC[53]=(500000000.0 * ACC[101]);
    ACC[93]=(0.1591549430918953 * X[28]);
    ACC[81]=(-1.0 + (0.02 * ACC[93]));
    ACC[109]=(1.0 + ((2e-09 * ACC[49]) - (ACC[81] / sPAR[48])));
    ACC[89]=(ACC[109] - ACC[101]);
    ACC[113]=(ACC[109] + (sPAR[12] * (ACC[85] + (X[20] / sPAR[36]))));
    ACC[121]=(ACC[109] + (sPAR[16] * (ACC[89] + (X[24] / sPAR[40]))));
    ACC[5]=(sPAR[0] * (X[25] - X[26]));
    ACC[6]=(sPAR[0] * (X[25] - X[27]));
    ACC[7]=(sPAR[0] * (X[25] - X[28]));
    ACC[0]=(ACC[21] + (ACC[22] + (ACC[23] + (ACC[5] + (ACC[6] + ACC[7])))));
    ACC[42]=ACC[0];
    ACC[8]=(sPAR[0] * (X[26] - X[25]));
    ACC[10]=(sPAR[0] * (X[26] - X[27]));
    ACC[11]=(sPAR[0] * (X[26] - X[28]));
    ACC[1]=(500000000.0 + (ACC[24] + (ACC[26] + (ACC[27] + (ACC[8] + (ACC[10] + ACC[11]))))));
    ACC[43]=ACC[1];
    ACC[12]=(sPAR[0] * (X[27] - X[25]));
    ACC[13]=(sPAR[0] * (X[27] - X[26]));
    ACC[15]=(sPAR[0] * (X[27] - X[28]));
    ACC[2]=(500000000.0 + (ACC[28] + (ACC[29] + (ACC[31] + (ACC[12] + (ACC[13] + ACC[15]))))));
    ACC[44]=ACC[2];
    ACC[16]=(sPAR[0] * (X[28] - X[25]));
    ACC[17]=(sPAR[0] * (X[28] - X[26]));
    ACC[18]=(sPAR[0] * (X[28] - X[27]));
    ACC[3]=(500000000.0 + (ACC[32] + (ACC[33] + (ACC[34] + (ACC[16] + (ACC[17] + ACC[18]))))));
    ACC[45]=ACC[3];
    F[17]=ACC[82];
    F[41]=(-314.1592653589793 + X[25]);
    F[33]=((((1.0 - sPAR[41]) * ACC[114]) - X[33]) / sPAR[69]);
    F[1]=((4.0 * ((ACC[114] * (X[29] - X[1])) + (0.25 * (sPAR[17] * (sPAR[29] - X[1]))))) / sPAR[65]);
    F[2]=((4.0 * ((ACC[114] * (X[1] - X[2])) + (0.25 * (sPAR[17] * (sPAR[29] - X[2]))))) / sPAR[65]);
    F[3]=((4.0 * ((ACC[114] * (X[2] - X[3])) + (0.25 * (sPAR[17] * (sPAR[29] - X[3]))))) / sPAR[65]);
    F[4]=((4.0 * ((ACC[114] * (X[3] - X[4])) + (0.25 * (sPAR[17] * (sPAR[29] - X[4]))))) / sPAR[65]);
    F[29]=((X[37] - ACC[114]) / sPAR[57]);
    F[21]=ACC[86];
    F[37]=((ACC[110] - X[37]) / sPAR[61]);
    F[45]=((ACC[118] - X[45]) / sPAR[73]);
    F[0]=((2000000000.0 * ((sPAR[4] - ACC[41]) / (sPAR[4] * sPAR[3]))) / sPAR[2]);
    F[18]=ACC[83];
    F[42]=(-314.1592653589793 + X[26]);
    F[34]=((((1.0 - sPAR[42]) * ACC[115]) - X[34]) / sPAR[70]);
    F[5]=((4.0 * ((ACC[115] * (X[30] - X[5])) + (0.25 * (sPAR[18] * (sPAR[30] - X[5]))))) / sPAR[66]);
    F[6]=((4.0 * ((ACC[115] * (X[5] - X[6])) + (0.25 * (sPAR[18] * (sPAR[30] - X[6]))))) / sPAR[66]);
    F[7]=((4.0 * ((ACC[115] * (X[6] - X[7])) + (0.25 * (sPAR[18] * (sPAR[30] - X[7]))))) / sPAR[66]);
    F[8]=((4.0 * ((ACC[115] * (X[7] - X[8])) + (0.25 * (sPAR[18] * (sPAR[30] - X[8]))))) / sPAR[66]);
    F[30]=((X[38] - ACC[115]) / sPAR[58]);
    F[22]=ACC[87];
    F[38]=((ACC[111] - X[38]) / sPAR[62]);
    F[46]=((ACC[119] - X[46]) / sPAR[74]);
    F[19]=ACC[84];
    F[43]=(-314.1592653589793 + X[27]);
    F[35]=((((1.0 - sPAR[43]) * ACC[116]) - X[35]) / sPAR[71]);
    F[9]=((4.0 * ((ACC[116] * (X[31] - X[9])) + (0.25 * (sPAR[19] * (sPAR[31] - X[9]))))) / sPAR[67]);
    F[10]=((4.0 * ((ACC[116] * (X[9] - X[10])) + (0.25 * (sPAR[19] * (sPAR[31] - X[10]))))) / sPAR[67]);
    F[11]=((4.0 * ((ACC[116] * (X[10] - X[11])) + (0.25 * (sPAR[19] * (sPAR[31] - X[11]))))) / sPAR[67]);
    F[12]=((4.0 * ((ACC[116] * (X[11] - X[12])) + (0.25 * (sPAR[19] * (sPAR[31] - X[12]))))) / sPAR[67]);
    F[31]=((X[39] - ACC[116]) / sPAR[59]);
    F[23]=ACC[88];
    F[39]=((ACC[112] - X[39]) / sPAR[63]);
    F[47]=((ACC[120] - X[47]) / sPAR[75]);
    F[20]=ACC[85];
    F[44]=(-314.1592653589793 + X[28]);
    F[36]=((((1.0 - sPAR[44]) * ACC[117]) - X[36]) / sPAR[72]);
    F[13]=((4.0 * ((ACC[117] * (X[32] - X[13])) + (0.25 * (sPAR[20] * (sPAR[32] - X[13]))))) / sPAR[68]);
    F[14]=((4.0 * ((ACC[117] * (X[13] - X[14])) + (0.25 * (sPAR[20] * (sPAR[32] - X[14]))))) / sPAR[68]);
    F[15]=((4.0 * ((ACC[117] * (X[14] - X[15])) + (0.25 * (sPAR[20] * (sPAR[32] - X[15]))))) / sPAR[68]);
    F[16]=((4.0 * ((ACC[117] * (X[15] - X[16])) + (0.25 * (sPAR[20] * (sPAR[32] - X[16]))))) / sPAR[68]);
    F[32]=((X[40] - ACC[117]) / sPAR[60]);
    F[24]=ACC[89];
    F[40]=((ACC[113] - X[40]) / sPAR[64]);
    F[48]=((ACC[121] - X[48]) / sPAR[76]);
    F[25]=((ACC[50] - ACC[0]) / (25330.29591058444 * X[25]));
    F[26]=((ACC[51] - ACC[1]) / (25330.29591058444 * X[26]));
    F[27]=((ACC[52] - ACC[2]) / (25330.29591058444 * X[27]));
    F[28]=((ACC[53] - ACC[3]) / (25330.29591058444 * X[28]));

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
    X[41]=0.0; //generator[1].theta
    X[42]=0.0; //generator[2].theta
    ACC[21]=(ACC[36] * sin((X[41] - X[42]))); //P_ex[1,2]
    X[43]=0.0; //generator[3].theta
    ACC[22]=(0.5 * (ACC[36] * sin((X[41] - X[43])))); //P_ex[1,3]
    X[44]=0.0; //generator[4].theta
    ACC[23]=(0.3333333333333333 * (ACC[36] * sin((X[41] - X[44])))); //P_ex[1,4]
    ACC[4]=0.0; //P_diss[1,1]
    ACC[5]=0.0; //P_diss[1,2]
    ACC[6]=0.0; //P_diss[1,3]
    ACC[7]=0.0; //P_diss[1,4]
    ACC[37]=0.0; //P_load[1]
    ACC[0]=(ACC[20] + (ACC[21] + (ACC[22] + (ACC[23] + (ACC[4] + (ACC[5] + (ACC[6] + (ACC[7] + ACC[37])))))))); //P_a[1]
    ACC[24]=(ACC[36] * sin((X[42] - X[41]))); //P_ex[2,1]
    ACC[25]=0.0; //P_ex[2,2]
    ACC[26]=(ACC[36] * sin((X[42] - X[43]))); //P_ex[2,3]
    ACC[27]=(0.5 * (ACC[36] * sin((X[42] - X[44])))); //P_ex[2,4]
    ACC[8]=0.0; //P_diss[2,1]
    ACC[9]=0.0; //P_diss[2,2]
    ACC[10]=0.0; //P_diss[2,3]
    ACC[11]=0.0; //P_diss[2,4]
    ACC[38]=500000000.0; //P_load[2]
    ACC[1]=(ACC[24] + (ACC[25] + (ACC[26] + (ACC[27] + (ACC[8] + (ACC[9] + (ACC[10] + (ACC[11] + ACC[38])))))))); //P_a[2]
    ACC[28]=(0.5 * (ACC[36] * sin((X[43] - X[41])))); //P_ex[3,1]
    ACC[29]=(ACC[36] * sin((X[43] - X[42]))); //P_ex[3,2]
    ACC[30]=0.0; //P_ex[3,3]
    ACC[31]=(ACC[36] * sin((X[43] - X[44]))); //P_ex[3,4]
    ACC[12]=0.0; //P_diss[3,1]
    ACC[13]=0.0; //P_diss[3,2]
    ACC[14]=0.0; //P_diss[3,3]
    ACC[15]=0.0; //P_diss[3,4]
    ACC[39]=500000000.0; //P_load[3]
    ACC[2]=(ACC[28] + (ACC[29] + (ACC[30] + (ACC[31] + (ACC[12] + (ACC[13] + (ACC[14] + (ACC[15] + ACC[39])))))))); //P_a[3]
    ACC[32]=(0.3333333333333333 * (ACC[36] * sin((X[44] - X[41])))); //P_ex[4,1]
    ACC[33]=(0.5 * (ACC[36] * sin((X[44] - X[42])))); //P_ex[4,2]
    ACC[34]=(ACC[36] * sin((X[44] - X[43]))); //P_ex[4,3]
    ACC[35]=0.0; //P_ex[4,4]
    ACC[16]=0.0; //P_diss[4,1]
    ACC[17]=0.0; //P_diss[4,2]
    ACC[18]=0.0; //P_diss[4,3]
    ACC[19]=0.0; //P_diss[4,4]
    ACC[40]=500000000.0; //P_load[4]
    ACC[3]=(ACC[32] + (ACC[33] + (ACC[34] + (ACC[35] + (ACC[16] + (ACC[17] + (ACC[18] + (ACC[19] + ACC[40])))))))); //P_a[4]
    X[25]=314.1592653589793; //generator[1].omega
    ACC[90]=(0.1591549430918953 * X[25]); //generator[1].f
    ACC[41]=ACC[90]; //f
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
    ACC[63]=0.0; //generator[2].T_s_b[1]
    ACC[64]=0.0; //generator[2].T_s_b[2]
    ACC[65]=0.0; //generator[2].T_s_b[3]
    ACC[66]=0.0; //generator[2].T_s_b[4]
    ACC[67]=0.0; //generator[2].T_s_b[5]
    ACC[68]=0.0; //generator[3].T_s_b[1]
    ACC[69]=0.0; //generator[3].T_s_b[2]
    ACC[70]=0.0; //generator[3].T_s_b[3]
    ACC[71]=0.0; //generator[3].T_s_b[4]
    ACC[72]=0.0; //generator[3].T_s_b[5]
    ACC[73]=0.0; //generator[4].T_s_b[1]
    ACC[74]=0.0; //generator[4].T_s_b[2]
    ACC[75]=0.0; //generator[4].T_s_b[3]
    ACC[76]=0.0; //generator[4].T_s_b[4]
    ACC[77]=0.0; //generator[4].T_s_b[5]
    ACC[78]=(-1.0 + (0.02 * ACC[90])); //generator[1].delta_f
    ACC[79]=0.0; //generator[2].delta_f
    ACC[80]=0.0; //generator[3].delta_f
    ACC[81]=0.0; //generator[4].delta_f
    ACC[94]=1.0; //generator[1].p_0
    X[29]=1.0; //generator[1].p
    ACC[82]=(ACC[94] - X[29]); //generator[1].err_p
    ACC[95]=1.0; //generator[2].p_0
    X[30]=1.0; //generator[2].p
    ACC[83]=(ACC[95] - X[30]); //generator[2].err_p
    ACC[96]=1.0; //generator[3].p_0
    X[31]=1.0; //generator[3].p
    ACC[84]=(ACC[96] - X[31]); //generator[3].err_p
    ACC[97]=1.0; //generator[4].p_0
    X[32]=1.0; //generator[4].p
    ACC[85]=(ACC[97] - X[32]); //generator[4].err_p
    ACC[86]=0.0; //generator[1].err_p_t
    ACC[87]=0.0; //generator[2].err_p_t
    ACC[88]=0.0; //generator[3].err_p_t
    ACC[89]=0.0; //generator[4].err_p_t
    ACC[91]=0.0; //generator[2].f
    ACC[92]=0.0; //generator[3].f
    ACC[93]=0.0; //generator[4].f
    ACC[98]=0.0; //generator[1].p_t
    ACC[99]=0.0; //generator[2].p_t
    ACC[100]=0.0; //generator[3].p_t
    ACC[101]=0.0; //generator[4].p_t
    ACC[102]=1.0; //generator[1].p_t_0
    ACC[103]=1.0; //generator[2].p_t_0
    ACC[104]=1.0; //generator[3].p_t_0
    ACC[105]=1.0; //generator[4].p_t_0
    sPAR[45]=0.1; //generator[1].droop
    ACC[106]=(ACC[102] + ((2e-09 * ACC[46]) - (ACC[78] / sPAR[45]))); //generator[1].p_t_0_fc
    sPAR[46]=0.1; //generator[2].droop
    ACC[107]=(ACC[103] + ((2e-09 * ACC[47]) - (ACC[79] / sPAR[46]))); //generator[2].p_t_0_fc
    sPAR[47]=0.1; //generator[3].droop
    ACC[108]=(ACC[104] + ((2e-09 * ACC[48]) - (ACC[80] / sPAR[47]))); //generator[3].p_t_0_fc
    sPAR[48]=0.1; //generator[4].droop
    ACC[109]=(ACC[105] + ((2e-09 * ACC[49]) - (ACC[81] / sPAR[48]))); //generator[4].p_t_0_fc
    ACC[110]=0.0; //generator[1].q_ev_0
    ACC[111]=0.0; //generator[2].q_ev_0
    ACC[112]=0.0; //generator[3].q_ev_0
    ACC[113]=0.0; //generator[4].q_ev_0
    ACC[114]=0.0; //generator[1].w_s
    ACC[115]=0.0; //generator[2].w_s
    ACC[116]=0.0; //generator[3].w_s
    ACC[117]=0.0; //generator[4].w_s
    ACC[118]=0.0; //generator[1].y_t_0
    ACC[119]=0.0; //generator[2].y_t_0
    ACC[120]=0.0; //generator[3].y_t_0
    ACC[121]=0.0; //generator[4].y_t_0
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
    sPARi[0]=4; //M
    sPARi[1]=4; //N
    sPARi[2]=4; //generator[1].N
    sPARi[3]=4; //generator[2].N
    sPARi[4]=4; //generator[3].N
    sPARi[5]=4; //generator[4].N
    X[1]=((X[29] + (0.25 * (sPAR[17] * sPAR[29]))) / (1.0 + (0.25 * sPAR[17]))); //generator[1].T_s[1]
    X[2]=((X[1] + (0.25 * (sPAR[17] * sPAR[29]))) / (1.0 + (0.25 * sPAR[17]))); //generator[1].T_s[2]
    X[3]=((X[2] + (0.25 * (sPAR[17] * sPAR[29]))) / (1.0 + (0.25 * sPAR[17]))); //generator[1].T_s[3]
    X[4]=((X[3] + (0.25 * (sPAR[17] * sPAR[29]))) / (1.0 + (0.25 * sPAR[17]))); //generator[1].T_s[4]
    X[5]=((X[30] + (0.25 * (sPAR[18] * sPAR[30]))) / (1.0 + (0.25 * sPAR[18]))); //generator[2].T_s[1]
    X[6]=((X[5] + (0.25 * (sPAR[18] * sPAR[30]))) / (1.0 + (0.25 * sPAR[18]))); //generator[2].T_s[2]
    X[7]=((X[6] + (0.25 * (sPAR[18] * sPAR[30]))) / (1.0 + (0.25 * sPAR[18]))); //generator[2].T_s[3]
    X[8]=((X[7] + (0.25 * (sPAR[18] * sPAR[30]))) / (1.0 + (0.25 * sPAR[18]))); //generator[2].T_s[4]
    X[9]=((X[31] + (0.25 * (sPAR[19] * sPAR[31]))) / (1.0 + (0.25 * sPAR[19]))); //generator[3].T_s[1]
    X[10]=((X[9] + (0.25 * (sPAR[19] * sPAR[31]))) / (1.0 + (0.25 * sPAR[19]))); //generator[3].T_s[2]
    X[11]=((X[10] + (0.25 * (sPAR[19] * sPAR[31]))) / (1.0 + (0.25 * sPAR[19]))); //generator[3].T_s[3]
    X[12]=((X[11] + (0.25 * (sPAR[19] * sPAR[31]))) / (1.0 + (0.25 * sPAR[19]))); //generator[3].T_s[4]
    X[13]=((X[32] + (0.25 * (sPAR[20] * sPAR[32]))) / (1.0 + (0.25 * sPAR[20]))); //generator[4].T_s[1]
    X[14]=((X[13] + (0.25 * (sPAR[20] * sPAR[32]))) / (1.0 + (0.25 * sPAR[20]))); //generator[4].T_s[2]
    X[15]=((X[14] + (0.25 * (sPAR[20] * sPAR[32]))) / (1.0 + (0.25 * sPAR[20]))); //generator[4].T_s[3]
    X[16]=((X[15] + (0.25 * (sPAR[20] * sPAR[32]))) / (1.0 + (0.25 * sPAR[20]))); //generator[4].T_s[4]
    X[17]=0.0; //generator[1].err_p_int
    X[18]=0.0; //generator[2].err_p_int
    X[19]=0.0; //generator[3].err_p_int
    X[20]=0.0; //generator[4].err_p_int
    X[21]=0.0; //generator[1].err_p_t_int
    X[22]=0.0; //generator[2].err_p_t_int
    X[23]=0.0; //generator[3].err_p_t_int
    X[24]=0.0; //generator[4].err_p_t_int
    X[26]=314.1592653589793; //generator[2].omega
    X[27]=314.1592653589793; //generator[3].omega
    X[28]=314.1592653589793; //generator[4].omega
    X[33]=(1.0 - sPAR[41]); //generator[1].p_t_lp
    X[34]=(1.0 - sPAR[42]); //generator[2].p_t_lp
    X[35]=(1.0 - sPAR[43]); //generator[3].p_t_lp
    X[36]=(1.0 - sPAR[44]); //generator[4].p_t_lp
    X[37]=1.0; //generator[1].q_ev
    X[38]=1.0; //generator[2].q_ev
    X[39]=1.0; //generator[3].q_ev
    X[40]=1.0; //generator[4].q_ev
    X[45]=1.0; //generator[1].y_t
    X[46]=1.0; //generator[2].y_t
    X[47]=1.0; //generator[3].y_t
    X[48]=1.0; //generator[4].y_t

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
