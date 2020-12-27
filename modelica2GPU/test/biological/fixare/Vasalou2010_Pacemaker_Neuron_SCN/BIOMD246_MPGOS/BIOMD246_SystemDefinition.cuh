
#ifndef BIOMD246_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD246_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[3]=(sPAR[3] * ((sPAR[41] + sPAR[42]) / (sPAR[43] + sPAR[42])));
    ACC[2]=(sPAR[2] * ((sPAR[41] + sPAR[42]) / (sPAR[43] + sPAR[42])));
    ACC[30]=pow(2.718281828459045,(0.001 * (ACC[2] / ((sPAR[41] + sPAR[42]) * sPAR[86]))));
    ACC[4]=(sPAR[4] * ((sPAR[41] + sPAR[42]) / (sPAR[43] + sPAR[42])));
    ACC[31]=pow(2.718281828459045,(0.001 * (ACC[4] / ((sPAR[41] + sPAR[42]) * sPAR[86]))));
    ACC[6]=(X[12] + (sPAR[117] * (X[25] / (sPAR[17] + X[25]))));
    ACC[0]=(X[11] + ((X[17] * (sPAR[115] / (sPAR[14] + X[17]))) + (pow(ACC[6],sPAR[98]) * (sPAR[116] / (sPAR[15] + pow(ACC[6],sPAR[98]))))));
    ACC[5]=(-1000.0 * (sPAR[86] * ((sPAR[41] + sPAR[42]) * log((X[10] / ACC[0])))));
    ACC[10]=(X[14] / ACC[30]);
    ACC[11]=(X[18] / ACC[31]);
    ACC[18]=(X[25] / (X[25] + sPAR[16]));
    ACC[32]=((sPAR[60] * (X[8] / (sPAR[82] + X[8]))) + (sPAR[62] * (ACC[18] / (sPAR[83] + ACC[18]))));
    ACC[33]=(sPAR[129] + (sPAR[0] * (X[4] / (sPAR[12] + X[4]))));
    ACC[1]=(500.0 * (sPAR[86] * ((sPAR[41] + sPAR[42]) * log((X[7] / X[8])))));
    ACC[12]=(sPAR[118] * (pow(X[0],sPAR[102]) / (sPAR[20] + pow(X[0],sPAR[102]))));
    ACC[17]=((0.004 * (sPAR[37] * X[8])) + ((ACC[12] * ACC[10]) + ((sPAR[39] * ACC[11]) + (sPAR[38] * X[10]))));
    ACC[19]=((ACC[12] * (ACC[10] - X[14])) + ((sPAR[39] * (ACC[11] - X[18])) + (sPAR[38] * (X[10] - ACC[0]))));
    ACC[20]=((-0.004 * (sPAR[37] * X[7])) + ((((-(sPAR[38])) * ACC[0]) - (sPAR[39] * X[18])) - (ACC[12] * X[14])));
    ACC[27]=(0.5 * ((sqrt((pow(ACC[19],2.0) + (-4.0 * (ACC[17] * ACC[20])))) - ACC[19]) / ACC[17]));
    ACC[16]=(1000.0 * (sPAR[40] * ((sPAR[41] + sPAR[42]) * (log(ACC[27]) / sPAR[6]))));
    ACC[29]=(ACC[16] + sPAR[66]);
    ACC[15]=(4.0 + ACC[16]);
    ACC[13]=(sPAR[61] * (ACC[16] / (sPAR[21] + ACC[16])));
    ACC[25]=(1.0 / ACC[13]);
    ACC[7]=(sPAR[72] * (ACC[16] - ACC[4]));
    ACC[8]=sqrt(pow(ACC[7],2.0));
    ACC[26]=((sPAR[63] * (pow(ACC[8],sPAR[105]) / (sPAR[25] + pow(ACC[8],sPAR[105])))) + (pow(X[8],sPAR[106]) * (sPAR[64] / (sPAR[26] + pow(X[8],sPAR[106])))));
    ACC[24]=(sPAR[71] + (X[17] * (sPAR[122] / (sPAR[27] + X[17]))));
    ACC[23]=(sPAR[114] * (pow(X[17],sPAR[97]) / (sPAR[13] + pow(X[17],sPAR[97]))));
    ACC[22]=(sPAR[56] * (pow(X[5],sPAR[99]) / (sPAR[19] + pow(X[5],sPAR[99]))));
    ACC[9]=((sPAR[72] * ACC[4]) + ((ACC[23] * ACC[1]) + ((ACC[24] * ACC[2]) + ((ACC[25] * ACC[3]) + ((ACC[22] * ACC[2]) + (((-(sPAR[73])) * ACC[5]) - (ACC[26] * sPAR[5])))))));
    ACC[14]=(1.0 / (sPAR[72] + (ACC[24] + (ACC[25] + (ACC[23] + (ACC[22] + ((-(sPAR[73])) - ACC[26])))))));
    ACC[28]=(sPAR[1] * ACC[14]);
    ACC[21]=(-1.0 / (log(((ACC[29] - (ACC[14] * ACC[9])) / (ACC[15] - (ACC[14] * ACC[9])))) * ACC[28]));
    F[4]=(sPAR[69] * (((ACC[32] * ((1.0 - X[4]) / (1.0 + (sPAR[7] - X[4])))) - (sPAR[113] * (X[4] / (sPAR[9] + X[4])))) / sPAR[67]));
    F[17]=(sPAR[69] * ((ACC[33] * (pow(X[2],sPAR[96]) / (pow(sPAR[11],sPAR[96]) + pow(X[2],sPAR[96])))) - (X[17] * ((sPAR[126] / (sPAR[31] + X[17])) + sPAR[89]))));
    F[25]=(sPAR[69] * ((sPAR[119] * (pow(ACC[21],sPAR[103]) / (sPAR[23] + pow(ACC[21],sPAR[103])))) - (sPAR[84] * pow(X[25],sPAR[104]))));
    F[8]=((sPAR[69] * ((sPAR[130] * (pow(X[0],sPAR[109]) / (sPAR[34] + pow(X[0],sPAR[109])))) + (sPAR[57] * sPAR[68]))) + ((sPAR[112] * ((sPAR[59] * (pow(X[9],sPAR[101]) * (pow(X[8],sPAR[111]) / ((pow(sPAR[10],sPAR[111]) + pow(X[8],sPAR[111])) * (pow(sPAR[22],sPAR[101]) + pow(X[9],sPAR[101])))))) + (sPAR[85] * X[9]))) - (sPAR[69] * ((sPAR[123] * (pow(X[5],sPAR[108]) * (pow(X[8],sPAR[107]) / (sPAR[28] + pow(X[5],sPAR[108]))))) + (sPAR[58] * (pow(X[8],sPAR[100]) / (pow(sPAR[8],sPAR[100]) + pow(X[8],sPAR[100]))))))));
    F[9]=((sPAR[69] * (sPAR[58] * (pow(X[8],sPAR[100]) / (pow(sPAR[8],sPAR[100]) + pow(X[8],sPAR[100]))))) - (sPAR[112] * ((sPAR[59] * (pow(X[9],sPAR[101]) * (pow(X[8],sPAR[111]) / ((pow(sPAR[10],sPAR[111]) + pow(X[8],sPAR[111])) * (pow(sPAR[22],sPAR[101]) + pow(X[9],sPAR[101])))))) + (sPAR[85] * X[9]))));
    F[7]=0.0;
    F[16]=(sPAR[69] * ((sPAR[128] * (pow(X[2],sPAR[96]) / (pow(sPAR[33],sPAR[96]) + pow(X[2],sPAR[96])))) - (X[16] * ((sPAR[125] / (sPAR[30] + X[16])) + sPAR[88]))));
    F[15]=(sPAR[69] * ((sPAR[127] * (pow(sPAR[18],sPAR[95]) / (pow(sPAR[18],sPAR[95]) + pow(X[2],sPAR[95])))) - (X[15] * ((sPAR[124] / (sPAR[29] + X[15])) + sPAR[87]))));
    F[23]=(sPAR[69] * ((sPAR[94] * X[17]) + ((sPAR[50] * (X[24] / (sPAR[24] + X[24]))) + ((sPAR[77] * X[19]) + (((-(X[23])) * (sPAR[90] + (sPAR[46] / (sPAR[32] + X[23])))) - (sPAR[76] * (X[23] * X[5])))))));
    F[5]=(sPAR[69] * ((sPAR[93] * X[16]) + ((sPAR[77] * X[19]) + ((sPAR[49] * (X[6] / (sPAR[24] + X[6]))) + ((((-(sPAR[76])) * (X[23] * X[5])) - (sPAR[45] * (X[5] / (sPAR[32] + X[5])))) - (sPAR[91] * X[5]))))));
    F[24]=(sPAR[69] * ((sPAR[46] * (X[23] / (sPAR[32] + X[23]))) + (X[24] * (((-(sPAR[90])) - (sPAR[50] / (sPAR[24] + X[24]))) - (sPAR[121] / (sPAR[35] + X[24]))))));
    F[6]=(sPAR[69] * ((sPAR[45] * (X[5] / (sPAR[32] + X[5]))) + (X[6] * (((-(sPAR[90])) - (sPAR[49] / (sPAR[24] + X[6]))) - (sPAR[120] / (sPAR[35] + X[6]))))));
    F[19]=((sPAR[69] * ((sPAR[76] * (X[23] * X[5])) - (sPAR[77] * X[19]))) + ((sPAR[110] * (sPAR[75] * X[21])) + (sPAR[69] * ((sPAR[51] * (X[20] / (sPAR[24] + X[20]))) + (X[19] * (((-(sPAR[74])) - sPAR[90]) - (sPAR[47] / (sPAR[32] + X[19]))))))));
    F[21]=((sPAR[69] * (sPAR[74] * X[19])) + ((sPAR[110] * ((sPAR[55] * (X[22] / (sPAR[24] + X[22]))) + (X[21] * (((-(sPAR[90])) - (sPAR[53] / (sPAR[32] + X[21]))) - sPAR[75])))) + (sPAR[69] * ((sPAR[81] * X[13]) - (sPAR[80] * (X[2] * X[21]))))));
    F[20]=(sPAR[69] * ((sPAR[47] * (X[19] / (sPAR[32] + X[19]))) + (X[20] * (((-(sPAR[90])) - (sPAR[51] / (sPAR[24] + X[20]))) - (sPAR[134] / (sPAR[35] + X[20]))))));
    F[22]=(sPAR[110] * ((sPAR[53] * (X[21] / (sPAR[32] + X[21]))) + (X[22] * (((-(sPAR[90])) - (sPAR[55] / (sPAR[24] + X[22]))) - (sPAR[135] / (sPAR[35] + X[22]))))));
    F[0]=((sPAR[69] * ((sPAR[92] * X[15]) + ((sPAR[48] * (X[1] / (sPAR[24] + X[1]))) - (sPAR[44] * (X[0] / (sPAR[32] + X[0])))))) + ((sPAR[110] * (sPAR[79] * X[2])) - (sPAR[69] * (X[0] * (sPAR[78] + sPAR[90])))));
    F[1]=(sPAR[69] * ((sPAR[44] * (X[0] / (sPAR[32] + X[0]))) + (X[1] * (((-(sPAR[90])) - (sPAR[48] / (sPAR[24] + X[1]))) - (sPAR[131] / (sPAR[35] + X[1]))))));
    F[2]=((sPAR[69] * (sPAR[78] * X[0])) + ((sPAR[69] * ((sPAR[81] * X[13]) - (sPAR[80] * (X[2] * X[21])))) + (sPAR[110] * ((sPAR[54] * (X[3] / (sPAR[24] + X[3]))) + (X[2] * (((-(sPAR[79])) - sPAR[90]) - (sPAR[52] / (sPAR[32] + X[2]))))))));
    F[3]=(sPAR[110] * ((sPAR[52] * (X[2] / (sPAR[32] + X[2]))) + (X[3] * (((-(sPAR[90])) - (sPAR[54] / (sPAR[24] + X[3]))) - (sPAR[132] / (sPAR[35] + X[3]))))));
    F[13]=((sPAR[69] * ((sPAR[80] * (X[2] * X[21])) - (sPAR[81] * X[13]))) - (sPAR[110] * (X[13] * ((sPAR[133] / (sPAR[35] + X[13])) + sPAR[90]))));
    F[10]=0.0;
    F[11]=0.0;
    F[12]=0.0;
    F[14]=0.0;
    F[18]=0.0;

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
    ACC[0]=0.0; //Cl_in
    ACC[1]=0.0; //E_Ca
    ACC[2]=0.0; //E_K
    ACC[3]=0.0; //E_L
    ACC[4]=0.0; //E_Na
    ACC[5]=0.0; //E_inhib
    ACC[7]=0.0; //I_Na
    ACC[8]=0.0; //I_Na_abs
    ACC[9]=0.0; //I_star
    ACC[10]=0.0; //K_in
    ACC[11]=0.0; //Na_in
    ACC[12]=0.0; //P_K
    ACC[13]=0.0; //R
    ACC[14]=0.0; //R_star
    ACC[15]=0.0; //V_reset
    ACC[16]=0.0; //V_rest
    ACC[17]=0.0; //alpha
    ACC[18]=0.0; //beta
    ACC[19]=0.0; //beta_a
    ACC[20]=0.0; //c
    ACC[21]=0.0; //f_r
    ACC[22]=0.0; //gK_Ca
    ACC[23]=0.0; //g_Ca
    ACC[24]=0.0; //g_K
    ACC[25]=0.0; //g_L
    ACC[26]=0.0; //g_ex
    ACC[27]=0.0; //psi
    ACC[28]=0.0; //tau_m
    ACC[29]=0.0; //theta
    ACC[30]=0.0; //theta_K
    ACC[31]=0.0; //theta_Na
    ACC[32]=0.0; //v_K
    ACC[33]=0.0; //v_sPc
    sPAR[0]=1.6; //C_T
    sPAR[1]=5.0; //Cm
    sPAR[2]=-97.0; //E_K_0
    sPAR[3]=-29.0; //E_L_0
    sPAR[4]=45.0; //E_Na_0
    sPAR[5]=0.0; //E_ex
    sPAR[6]=96485.0; //Faraday
    sPAR[7]=0.01; //K_1_CB
    sPAR[8]=5.0; //K_2
    sPAR[9]=0.01; //K_2_CB
    sPAR[10]=0.67; //K_A
    sPAR[11]=0.6; //K_AP
    sPAR[12]=0.15; //K_C
    sPAR[13]=22.0; //K_Ca
    sPAR[14]=4.0; //K_Cl1
    sPAR[15]=1.0; //K_Cl2
    sPAR[16]=0.08; //K_D
    sPAR[17]=3.0; //K_GABA
    sPAR[18]=2.2; //K_IB
    sPAR[19]=0.16; //K_KCa
    sPAR[20]=1.0; //K_PK
    sPAR[21]=34.0; //K_R
    sPAR[22]=3.0; //K_R_Ca
    sPAR[23]=15.0; //K_VIP
    sPAR[24]=0.1; //K_dp
    sPAR[25]=574050000.0; //K_ex1
    sPAR[26]=1.0; //K_ex2
    sPAR[27]=10.0; //K_gk
    sPAR[28]=0.02; //K_kk
    sPAR[29]=0.4; //K_mB
    sPAR[30]=0.4; //K_mC
    sPAR[31]=0.31; //K_mP
    sPAR[32]=0.1; //K_p
    sPAR[33]=0.6; //K_sC
    sPAR[34]=4.5; //K_vo
    sPAR[35]=0.3; //Kd
    sPAR[36]=1.1; //PK_o
    sPAR[37]=0.05; //P_Ca
    sPAR[38]=0.3; //P_Cl
    sPAR[39]=0.036; //P_Na
    sPAR[40]=8.314; //R_g
    sPAR[41]=37.0; //T
    sPAR[42]=273.15; //T_abs
    sPAR[43]=22.0; //T_room
    sPAR[44]=0.5; //V1_B
    sPAR[45]=0.6; //V1_C
    sPAR[46]=0.4; //V1_P
    sPAR[47]=0.4; //V1_PC
    sPAR[48]=0.1; //V2_B
    sPAR[49]=0.1; //V2_C
    sPAR[50]=0.3; //V2_P
    sPAR[51]=0.1; //V2_PC
    sPAR[52]=0.5; //V3_B
    sPAR[53]=0.4; //V3_PC
    sPAR[54]=0.2; //V4_B
    sPAR[55]=0.1; //V4_PC
    sPAR[56]=3.0; //VK_Ca
    sPAR[57]=0.0003; //V_M1
    sPAR[58]=149.5; //V_M2
    sPAR[59]=400.0; //V_M3
    sPAR[60]=5.0; //V_MK
    sPAR[61]=0.41; //V_R
    sPAR[62]=2.0; //V_b
    sPAR[63]=105.0; //V_ex1
    sPAR[64]=4.4; //V_ex2
    sPAR[65]=0.4; //V_phos
    sPAR[66]=20.0; //V_theta
    sPAR[67]=1.0; //WT
    sPAR[68]=0.5; //beta_IP3
    sPAR[69]=1.0; //cytoplasm
    sPAR[70]=1.0; //extra
    sPAR[71]=9.7; //g_K_0
    sPAR[72]=36.0; //g_Na
    sPAR[73]=12.3; //g_inhib
    sPAR[74]=0.45; //k1
    sPAR[75]=0.2; //k2
    sPAR[76]=0.4; //k3
    sPAR[77]=0.2; //k4
    sPAR[78]=0.4; //k5
    sPAR[79]=0.2; //k6
    sPAR[80]=0.5; //k7
    sPAR[81]=0.1; //k8
    sPAR[82]=2.9; //k_MK
    sPAR[83]=2.0; //k_b
    sPAR[84]=0.5; //k_dVIP
    sPAR[85]=0.001; //k_f
    sPAR[86]=8.75e-05; //k_q
    sPAR[87]=0.01; //kd_mB
    sPAR[88]=0.01; //kd_mC
    sPAR[89]=0.01; //kd_mP
    sPAR[90]=0.01; //kd_n
    sPAR[91]=0.12; //kd_nc
    sPAR[92]=0.12; //ksB
    sPAR[93]=1.6; //ks_C
    sPAR[94]=0.6; //ks_P
    sPAR[95]=2.0; //m_BN
    sPAR[96]=4.0; //n_BN
    sPAR[97]=2.2; //n_Ca
    sPAR[98]=-0.2; //n_Cl
    sPAR[99]=2.0; //n_KCa
    sPAR[100]=2.2; //n_M2
    sPAR[101]=6.0; //n_M3
    sPAR[102]=-2.0; //n_PK
    sPAR[103]=1.9; //n_VIP
    sPAR[104]=0.2; //n_dVIP
    sPAR[105]=2.5; //n_ex1
    sPAR[106]=-1.0; //n_ex2
    sPAR[107]=-1.0; //n_kCa
    sPAR[108]=0.1; //n_kk
    sPAR[109]=4.5; //n_vo
    sPAR[110]=1.0; //nucleus
    sPAR[111]=4.2; //p_A
    sPAR[112]=1.0; //store
    sPAR[113]=1.0; //vP
    sPAR[114]=12.3; //v_Ca
    sPAR[115]=15.5; //v_Cl1
    sPAR[116]=19.0; //v_Cl2
    sPAR[117]=19.0; //v_GABA
    sPAR[118]=1.9; //v_PK
    sPAR[119]=0.5; //v_VIP
    sPAR[120]=0.7; //v_dCC
    sPAR[121]=0.7; //v_dPC
    sPAR[122]=10.0; //v_gk
    sPAR[123]=3.3; //v_kk
    sPAR[124]=0.8; //v_mB
    sPAR[125]=1.0; //v_mC
    sPAR[126]=1.1; //v_mP
    sPAR[127]=1.0; //v_sB
    sPAR[128]=1.1; //v_sC
    sPAR[129]=1.0; //v_sP0
    sPAR[130]=0.09; //v_vo
    sPAR[131]=0.5; //vd_BC
    sPAR[132]=0.6; //vd_BN
    sPAR[133]=0.8; //vd_IN
    sPAR[134]=0.7; //vd_PCC
    sPAR[135]=0.7; //vd_PCN
    X[0]=2.41; //B_C
    X[1]=0.48; //B_CP
    X[2]=1.94; //B_N
    X[3]=0.32; //B_NP
    X[4]=0.12; //CB
    X[5]=12.0; //C_C
    X[6]=9.0; //C_CP
    X[7]=5.0; //Ca_ex
    X[8]=0.1; //Ca_in
    X[9]=0.1; //Ca_store
    X[10]=114.5; //Cl_ex
    X[11]=1.0; //Cl_o
    X[12]=0.2; //GABA_o
    X[13]=0.05; //I_N
    X[14]=1.0; //K_ex
    X[15]=7.94; //M_B
    X[16]=2.0; //M_C
    X[17]=2.8; //M_P
    X[18]=145.0; //Na_ex
    X[19]=1.26; //PC_C
    X[20]=0.2; //PC_CP
    X[21]=0.16; //PC_N
    X[22]=0.091; //PC_NP
    X[23]=0.4; //P_C
    X[24]=0.13; //P_CP
    X[25]=0.0; //VIP
    ACC[6]=(X[12] + (sPAR[117] * (X[25] / (sPAR[17] + X[25])))); //GABA

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
