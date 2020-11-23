
#ifndef BIOMD013_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD013_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[18]=0.0;
    F[20]=0.0;
    F[23]=0.0;
    F[19]=0.0;
    F[26]=0.0;
    F[7]=((sPAR[16] * (X[8] - (X[7] / sPAR[52]))) + ((sPAR[36] * (X[11] / (X[11] + (sPAR[38] * (1.0 + (X[7] / sPAR[37])))))) - (sPAR[39] * (X[7] * (X[1] / (((X[7] + sPAR[63]) * ((1.0 + (X[0] / sPAR[59])) * (X[1] + sPAR[64]))) + ((sPAR[64] * (X[11] / (X[10] * sPAR[60]))) + ((sPAR[61] * X[5]) + (sPAR[62] * X[6])))))))));
    F[25]=0.0;
    F[0]=((sPAR[15] * ((X[10] * X[1]) - (X[2] * (X[0] / sPAR[53])))) + ((sPAR[32] * (X[13] * (X[1] / (((X[1] * (1.0 + (X[0] / sPAR[25]))) + (sPAR[31] * (1.0 + (X[0] / sPAR[26])))) * (X[13] + (sPAR[30] * (1.0 + ((X[10] / sPAR[27]) + ((X[14] / sPAR[29]) + (X[11] / sPAR[28])))))))))) + ((sPAR[39] * (X[7] * (X[1] / (((X[7] + sPAR[63]) * ((1.0 + (X[0] / sPAR[59])) * (X[1] + sPAR[64]))) + ((sPAR[64] * (X[11] / (X[10] * sPAR[60]))) + ((sPAR[61] * X[5]) + (sPAR[62] * X[6]))))))) - (sPAR[11] * (X[0] * (X[11] / ((X[11] + sPAR[10]) * (X[0] + sPAR[9]))))))));
    F[22]=0.0;
    F[8]=((sPAR[14] * (X[5] - (X[8] / sPAR[51]))) - (sPAR[16] * (X[8] - (X[7] / sPAR[52]))));
    F[24]=0.0;
    F[13]=((sPAR[17] * (X[12] - (X[13] / sPAR[49]))) + ((sPAR[47] * (X[17] - (X[13] / sPAR[50]))) - (sPAR[32] * (X[13] * (X[1] / (((X[1] * (1.0 + (X[0] / sPAR[25]))) + (sPAR[31] * (1.0 + (X[0] / sPAR[26])))) * (X[13] + (sPAR[30] * (1.0 + ((X[10] / sPAR[27]) + ((X[14] / sPAR[29]) + (X[11] / sPAR[28]))))))))))));
    F[12]=((sPAR[8] * ((X[9] * X[15]) - (X[17] * (X[12] / sPAR[48])))) - (sPAR[17] * (X[12] - (X[13] / sPAR[49]))));
    F[15]=((sPAR[35] * (X[16] / (X[16] + (sPAR[34] * (1.0 + (X[11] / sPAR[33])))))) - (sPAR[8] * ((X[9] * X[15]) - (X[17] * (X[12] / sPAR[48])))));
    F[16]=((sPAR[0] * ((X[4] * X[3]) - (X[16] / sPAR[58]))) - (sPAR[35] * (X[16] / (X[16] + (sPAR[34] * (1.0 + (X[11] / sPAR[33])))))));
    F[17]=((sPAR[6] * ((X[5] * X[9]) - (X[4] * (X[17] / sPAR[57])))) + ((sPAR[8] * ((X[9] * X[15]) - (X[17] * (X[12] / sPAR[48])))) - (sPAR[47] * (X[17] - (X[13] / sPAR[50])))));
    F[4]=((sPAR[6] * ((X[5] * X[9]) - (X[4] * (X[17] / sPAR[57])))) - (sPAR[0] * ((X[4] * X[3]) - (X[16] / sPAR[58]))));
    F[5]=((sPAR[4] * (X[6] / (X[6] + (sPAR[3] * (1.0 + ((X[5] / sPAR[1]) + (X[11] / sPAR[2]))))))) + ((-((sPAR[6] * ((X[5] * X[9]) - (X[4] * (X[17] / sPAR[57])))))) - (sPAR[14] * (X[5] - (X[8] / sPAR[51])))));
    F[6]=((sPAR[5] * ((X[3] * X[9]) - (X[6] / sPAR[56]))) - (sPAR[4] * (X[6] / (X[6] + (sPAR[3] * (1.0 + ((X[5] / sPAR[1]) + (X[11] / sPAR[2]))))))));
    F[3]=((sPAR[40] * (X[9] - (X[3] / sPAR[55]))) + (((-((sPAR[5] * ((X[3] * X[9]) - (X[6] / sPAR[56]))))) - (sPAR[0] * ((X[4] * X[3]) - (X[16] / sPAR[58])))) - (sPAR[46] * (X[3] / ((1.0 + ((1.0 + (sPAR[45] / X[24])) * ((X[11] / sPAR[44]) + ((X[10] / sPAR[43]) + ((X[3] / sPAR[41]) + (X[9] / sPAR[42])))))) * sPAR[41])))));
    F[11]=((sPAR[7] * ((X[2] * (X[21] * X[25])) - (X[22] * (X[9] * (X[11] / sPAR[54]))))) + ((sPAR[4] * (X[6] / (X[6] + (sPAR[3] * (1.0 + ((X[5] / sPAR[1]) + (X[11] / sPAR[2]))))))) + ((sPAR[35] * (X[16] / (X[16] + (sPAR[34] * (1.0 + (X[11] / sPAR[33])))))) + ((2.0 * (sPAR[39] * (X[7] * (X[1] / (((X[7] + sPAR[63]) * ((1.0 + (X[0] / sPAR[59])) * (X[1] + sPAR[64]))) + ((sPAR[64] * (X[11] / (X[10] * sPAR[60]))) + ((sPAR[61] * X[5]) + (sPAR[62] * X[6])))))))) + ((sPAR[46] * (X[3] / ((1.0 + ((1.0 + (sPAR[45] / X[24])) * ((X[11] / sPAR[44]) + ((X[10] / sPAR[43]) + ((X[3] / sPAR[41]) + (X[9] / sPAR[42])))))) * sPAR[41]))) + ((sPAR[13] * (sPAR[46] * (X[10] / ((1.0 + ((1.0 + (sPAR[45] / X[24])) * ((X[11] / sPAR[44]) + ((X[10] / sPAR[43]) + (2.0 * (X[3] / sPAR[41])))))) * sPAR[43])))) + ((sPAR[46] * (X[9] / ((1.0 + ((1.0 + (sPAR[45] / X[24])) * ((X[11] / sPAR[44]) + ((X[10] / sPAR[43]) + (2.0 * (X[3] / sPAR[41])))))) * sPAR[42]))) + ((-((sPAR[11] * (X[0] * (X[11] / ((X[11] + sPAR[10]) * (X[0] + sPAR[9]))))))) - (sPAR[36] * (X[11] / (X[11] + (sPAR[38] * (1.0 + (X[7] / sPAR[37]))))))))))))));
    F[9]=((sPAR[7] * ((X[2] * (X[21] * X[25])) - (X[22] * (X[9] * (X[11] / sPAR[54]))))) + (((((-((sPAR[46] * (X[9] / ((1.0 + ((1.0 + (sPAR[45] / X[24])) * ((X[11] / sPAR[44]) + ((X[10] / sPAR[43]) + (2.0 * (X[3] / sPAR[41])))))) * sPAR[42]))))) - (sPAR[5] * ((X[3] * X[9]) - (X[6] / sPAR[56])))) - (sPAR[6] * ((X[5] * X[9]) - (X[4] * (X[17] / sPAR[57]))))) - (sPAR[40] * (X[9] - (X[3] / sPAR[55])))) - (sPAR[8] * ((X[9] * X[15]) - (X[17] * (X[12] / sPAR[48]))))));
    F[21]=0.0;
    F[2]=((sPAR[15] * ((X[10] * X[1]) - (X[2] * (X[0] / sPAR[53])))) - (sPAR[7] * ((X[2] * (X[21] * X[25])) - (X[22] * (X[9] * (X[11] / sPAR[54]))))));
    F[1]=((sPAR[11] * (X[0] * (X[11] / ((X[11] + sPAR[10]) * (X[0] + sPAR[9]))))) + (((-((sPAR[15] * ((X[10] * X[1]) - (X[2] * (X[0] / sPAR[53])))))) - (sPAR[32] * (X[13] * (X[1] / (((X[1] * (1.0 + (X[0] / sPAR[25]))) + (sPAR[31] * (1.0 + (X[0] / sPAR[26])))) * (X[13] + (sPAR[30] * (1.0 + ((X[10] / sPAR[27]) + ((X[14] / sPAR[29]) + (X[11] / sPAR[28]))))))))))) - (sPAR[39] * (X[7] * (X[1] / (((X[7] + sPAR[63]) * ((1.0 + (X[0] / sPAR[59])) * (X[1] + sPAR[64]))) + ((sPAR[64] * (X[11] / (X[10] * sPAR[60]))) + ((sPAR[61] * X[5]) + (sPAR[62] * X[6])))))))));
    F[10]=((2.0 * (sPAR[24] * (X[14] / (X[14] + (sPAR[23] * (1.0 + ((X[10] / sPAR[20]) + ((X[6] / sPAR[18]) + ((X[16] / sPAR[22]) + ((X[11] / sPAR[21]) + (X[21] / sPAR[19]))))))))))) + ((-((sPAR[15] * ((X[10] * X[1]) - (X[2] * (X[0] / sPAR[53])))))) - (sPAR[13] * (sPAR[46] * (X[10] / ((1.0 + ((1.0 + (sPAR[45] / X[24])) * ((X[11] / sPAR[44]) + ((X[10] / sPAR[43]) + (2.0 * (X[3] / sPAR[41])))))) * sPAR[43]))))));
    F[14]=((sPAR[32] * (X[13] * (X[1] / (((X[1] * (1.0 + (X[0] / sPAR[25]))) + (sPAR[31] * (1.0 + (X[0] / sPAR[26])))) * (X[13] + (sPAR[30] * (1.0 + ((X[10] / sPAR[27]) + ((X[14] / sPAR[29]) + (X[11] / sPAR[28])))))))))) - (sPAR[24] * (X[14] / (X[14] + (sPAR[23] * (1.0 + ((X[10] / sPAR[20]) + ((X[6] / sPAR[18]) + ((X[16] / sPAR[22]) + ((X[11] / sPAR[21]) + (X[21] / sPAR[19])))))))))));

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
    sPAR[0]=500000000.0; //E_Aldo_v
    sPAR[1]=0.7; //FBPase_ch_KiF6P
    sPAR[2]=12.0; //FBPase_ch_KiPi
    sPAR[3]=0.03; //FBPase_ch_km
    sPAR[4]=200.0; //FBPase_ch_vm
    sPAR[5]=500000000.0; //F_Aldo_v
    sPAR[6]=500000000.0; //F_TKL_v
    sPAR[7]=500000000.0; //G3Pdh_v
    sPAR[8]=500000000.0; //G_TKL_v
    sPAR[9]=0.014; //LR_kmADP
    sPAR[10]=0.3; //LR_kmPi
    sPAR[11]=3500.0; //LR_vm
    sPAR[12]=1.0; //Light_on
    sPAR[13]=0.75; //PGA_xpMult
    sPAR[14]=500000000.0; //PGI_v
    sPAR[15]=500000000.0; //PGK_v
    sPAR[16]=500000000.0; //PGM_v
    sPAR[17]=500000000.0; //R5Piso_v
    sPAR[18]=0.04; //Rbco_KiFBP
    sPAR[19]=0.07000000000000001; //Rbco_KiNADPH
    sPAR[20]=0.84; //Rbco_KiPGA
    sPAR[21]=0.9; //Rbco_KiPi
    sPAR[22]=0.075; //Rbco_KiSBP
    sPAR[23]=0.02; //Rbco_km
    sPAR[24]=340.0; //Rbco_vm
    sPAR[25]=2.5; //Ru5Pk_ch_KiADP1
    sPAR[26]=0.4; //Ru5Pk_ch_KiADP2
    sPAR[27]=2.0; //Ru5Pk_ch_KiPGA
    sPAR[28]=4.0; //Ru5Pk_ch_KiPi
    sPAR[29]=0.7; //Ru5Pk_ch_KiRuBP
    sPAR[30]=0.05; //Ru5Pk_ch_km1
    sPAR[31]=0.05; //Ru5Pk_ch_km2
    sPAR[32]=10000.0; //Ru5Pk_ch_vm
    sPAR[33]=12.0; //SBPase_ch_KiPi
    sPAR[34]=0.013; //SBPase_ch_km
    sPAR[35]=40.0; //SBPase_ch_vm
    sPAR[36]=40.0; //StPase_Vm
    sPAR[37]=0.05; //StPase_kiG1P
    sPAR[38]=0.1; //StPase_km
    sPAR[39]=40.0; //StSyn_vm
    sPAR[40]=500000000.0; //TPI_v
    sPAR[41]=0.077; //TP_Piap_kDHAP_ch
    sPAR[42]=0.075; //TP_Piap_kGAP_ch
    sPAR[43]=0.25; //TP_Piap_kPGA_ch
    sPAR[44]=0.63; //TP_Piap_kPi_ch
    sPAR[45]=0.74; //TP_Piap_kPi_cyt
    sPAR[46]=250.0; //TP_Piap_vm
    sPAR[47]=500000000.0; //X5Pepi_v
    sPAR[48]=0.85; //q10
    sPAR[49]=0.4; //q11
    sPAR[50]=0.67; //q12
    sPAR[51]=2.3; //q14
    sPAR[52]=0.058; //q15
    sPAR[53]=0.00031; //q2
    sPAR[54]=16000000.0; //q3
    sPAR[55]=22.0; //q4
    sPAR[56]=7.1; //q5
    sPAR[57]=0.08400000000000001; //q7
    sPAR[58]=13.0; //q8
    sPAR[59]=10.0; //stsyn_ch_Ki
    sPAR[60]=0.1; //stsyn_ch_ka1
    sPAR[61]=0.02; //stsyn_ch_ka2
    sPAR[62]=0.02; //stsyn_ch_ka3
    sPAR[63]=0.08; //stsyn_ch_km1
    sPAR[64]=0.08; //stsyn_ch_km2
    X[0]=0.00149; //ADP_ch
    X[1]=0.49806; //ATP_ch
    X[2]=0.14825; //BPGA_ch
    X[3]=0.29345; //DHAP_ch
    X[4]=0.41021; //E4P_ch
    X[5]=1.36481; //F6P_ch
    X[6]=0.02776; //FBP_ch
    X[7]=0.18206; //G1P_ch
    X[8]=3.1396; //G6P_ch
    X[9]=0.01334; //GAP_ch
    X[10]=3.35479; //PGA_ch
    X[11]=1.5662; //Pi_ch
    X[12]=0.00599; //R5P_ch
    X[13]=0.00235; //Ru5P_ch
    X[14]=0.33644; //RuBP_ch
    X[15]=0.00541; //S7P_ch
    X[16]=1.56486; //SBP_ch
    X[17]=0.00363; //X5P_ch
    X[18]=0.0; //x_CO2
    X[19]=1.0; //x_DHAP_cyt
    X[20]=1.0; //x_GAP_cyt
    X[21]=0.21; //x_NADPH_ch
    X[22]=0.29; //x_NADP_ch
    X[23]=1.0; //x_PGA_cyt
    X[24]=0.5; //x_Pi_cyt
    X[25]=2.512e-05; //x_Proton_ch
    X[26]=1.0; //x_Starch_ch

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
