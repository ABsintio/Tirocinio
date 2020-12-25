
#ifndef BIOMD219_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD219_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[6]=(sPAR[70] * ((((sPAR[45] * (X[7] / sPAR[22])) - (sPAR[61] * (X[12] * (X[6] / (sPAR[33] * sPAR[14]))))) / (1.0 + ((X[7] / sPAR[22]) + ((X[12] / sPAR[33]) + ((X[6] / sPAR[14]) + (X[12] * ((X[7] / (sPAR[33] * sPAR[22])) + (X[6] / (sPAR[33] * sPAR[14]))))))))) + ((((sPAR[46] * (X[7] / sPAR[23])) - (sPAR[62] * (X[12] * (X[6] / (sPAR[34] * sPAR[15]))))) / (1.0 + ((X[7] / sPAR[23]) + ((X[12] / sPAR[34]) + ((X[6] / sPAR[15]) + (X[12] * ((X[7] / (sPAR[34] * sPAR[23])) + (X[6] / (sPAR[34] * sPAR[15]))))))))) + (((sPAR[66] * (X[8] * (X[4] / (sPAR[11] * sPAR[26])))) - (sPAR[50] * (X[6] * (X[0] / (sPAR[1] * sPAR[16]))))) / ((1.0 + ((X[0] / sPAR[1]) + (X[4] / sPAR[11]))) * (1.0 + ((X[6] / sPAR[16]) + (X[8] / sPAR[26]))))))));
    F[8]=(sPAR[70] * ((((sPAR[40] * (X[5] / sPAR[12])) - (sPAR[56] * (X[8] / sPAR[24]))) / (1.0 + ((X[5] / sPAR[12]) + (X[8] / sPAR[24])))) + ((((sPAR[50] * (X[6] * (X[0] / (sPAR[16] * sPAR[1])))) - (sPAR[66] * (X[8] * (X[4] / (sPAR[26] * sPAR[11]))))) / ((1.0 + ((X[6] / sPAR[16]) + (X[8] / sPAR[26]))) * (1.0 + ((X[0] / sPAR[1]) + (X[4] / sPAR[11]))))) + (((sPAR[65] * (X[9] / sPAR[28])) - (sPAR[49] * (X[8] / sPAR[25]))) / (1.0 + ((X[8] / sPAR[25]) + (X[9] / sPAR[28])))))));
    F[5]=(sPAR[70] * ((((sPAR[52] * (X[12] / sPAR[36])) - (sPAR[68] * (X[5] / sPAR[13]))) / (1.0 + ((X[12] / sPAR[36]) + (X[5] / sPAR[13])))) + (((sPAR[56] * (X[8] / sPAR[24])) - (sPAR[40] * (X[5] / sPAR[12]))) / (1.0 + ((X[5] / sPAR[12]) + (X[8] / sPAR[24]))))));
    F[10]=(sPAR[70] * ((((sPAR[47] * (X[1] / sPAR[6])) - (sPAR[63] * (X[10] / sPAR[29]))) / (1.0 + ((X[1] / sPAR[6]) + (X[10] / sPAR[29])))) + (((sPAR[67] * (X[12] / sPAR[35])) - (sPAR[51] * (X[10] / sPAR[30]))) / (1.0 + ((X[10] / sPAR[30]) + (X[12] / sPAR[35]))))));
    F[12]=(sPAR[70] * ((((sPAR[53] * (X[11] / sPAR[32])) - (sPAR[69] * (X[12] / sPAR[37]))) / (1.0 + ((X[11] / sPAR[32]) + (X[12] / sPAR[37])))) + ((((sPAR[51] * (X[10] / sPAR[30])) - (sPAR[67] * (X[12] / sPAR[35]))) / (1.0 + ((X[10] / sPAR[30]) + (X[12] / sPAR[35])))) + ((((sPAR[45] * (X[7] / sPAR[22])) - (sPAR[61] * (X[12] * (X[6] / (sPAR[14] * sPAR[33]))))) / (1.0 + ((X[7] / sPAR[22]) + ((X[12] / sPAR[33]) + ((X[6] / sPAR[14]) + (X[12] * ((X[7] / (sPAR[22] * sPAR[33])) + (X[6] / (sPAR[14] * sPAR[33]))))))))) + ((((sPAR[46] * (X[7] / sPAR[23])) - (sPAR[62] * (X[12] * (X[6] / (sPAR[34] * sPAR[15]))))) / (1.0 + ((X[7] / sPAR[23]) + ((X[12] / sPAR[34]) + ((X[6] / sPAR[15]) + (X[12] * ((X[7] / (sPAR[34] * sPAR[23])) + (X[6] / (sPAR[34] * sPAR[15]))))))))) + (((sPAR[68] * (X[5] / sPAR[13])) - (sPAR[52] * (X[12] / sPAR[36]))) / (1.0 + ((X[12] / sPAR[36]) + (X[5] / sPAR[13])))))))));
    F[11]=(sPAR[70] * ((((sPAR[48] * (X[1] / sPAR[7])) - (sPAR[64] * (X[11] / sPAR[31]))) / (1.0 + ((X[1] / sPAR[7]) + (X[11] / sPAR[31])))) + (((sPAR[69] * (X[12] / sPAR[37])) - (sPAR[53] * (X[11] / sPAR[32]))) / (1.0 + ((X[11] / sPAR[32]) + (X[12] / sPAR[37]))))));
    F[1]=((sPAR[70] * ((((sPAR[41] * (X[7] / sPAR[18])) - (sPAR[57] * (X[1] / sPAR[2]))) / (1.0 + ((X[7] / sPAR[18]) + (X[1] / sPAR[2])))) + ((((sPAR[43] * (X[7] / sPAR[20])) - (sPAR[59] * (X[1] / sPAR[4]))) / (1.0 + ((X[7] / sPAR[20]) + (X[1] / sPAR[4])))) + ((((sPAR[63] * (X[10] / sPAR[29])) - (sPAR[47] * (X[1] / sPAR[6]))) / (1.0 + ((X[1] / sPAR[6]) + (X[10] / sPAR[29])))) + (((sPAR[64] * (X[11] / sPAR[31])) - (sPAR[48] * (X[1] / sPAR[7]))) / (1.0 + ((X[1] / sPAR[7]) + (X[11] / sPAR[31])))))))) + (-0.0341 * (sPAR[70] * ((((sPAR[42] * (X[7] / sPAR[19])) - (sPAR[58] * (X[1] / sPAR[3]))) / (1.0 + ((X[7] / sPAR[19]) + (X[1] / sPAR[3])))) + (((sPAR[44] * (X[7] / sPAR[21])) - (sPAR[60] * (X[1] / sPAR[5]))) / (1.0 + ((X[7] / sPAR[21]) + (X[1] / sPAR[5]))))))));
    F[7]=(sPAR[70] * ((((sPAR[38] * (X[3] / sPAR[8])) - (sPAR[54] * (X[7] / sPAR[17]))) / (1.0 + ((X[3] / sPAR[8]) + (X[7] / sPAR[17])))) + ((((sPAR[57] * (X[1] / sPAR[2])) - (sPAR[41] * (X[7] / sPAR[18]))) / (1.0 + ((X[7] / sPAR[18]) + (X[1] / sPAR[2])))) + ((((sPAR[59] * (X[1] / sPAR[4])) - (sPAR[43] * (X[7] / sPAR[20]))) / (1.0 + ((X[7] / sPAR[20]) + (X[1] / sPAR[4])))) + ((((sPAR[61] * (X[12] * (X[6] / (sPAR[33] * sPAR[14])))) - (sPAR[45] * (X[7] / sPAR[22]))) / (1.0 + ((X[7] / sPAR[22]) + ((X[12] / sPAR[33]) + ((X[6] / sPAR[14]) + (X[12] * ((X[7] / (sPAR[33] * sPAR[22])) + (X[6] / (sPAR[33] * sPAR[14]))))))))) + (((sPAR[62] * (X[12] * (X[6] / (sPAR[15] * sPAR[34])))) - (sPAR[46] * (X[7] / sPAR[23]))) / (1.0 + ((X[7] / sPAR[23]) + ((X[12] / sPAR[34]) + ((X[6] / sPAR[15]) + (X[12] * ((X[7] / (sPAR[23] * sPAR[34])) + (X[6] / (sPAR[15] * sPAR[34]))))))))))))));
    F[3]=(sPAR[70] * ((((sPAR[39] * (X[0] * (X[9] / (sPAR[27] * sPAR[0])))) - (sPAR[55] * (X[4] * (X[3] / (sPAR[9] * sPAR[10]))))) / ((1.0 + ((X[9] / sPAR[27]) + (X[3] / sPAR[9]))) * (1.0 + ((X[0] / sPAR[0]) + (X[4] / sPAR[10]))))) + (((sPAR[54] * (X[7] / sPAR[17])) - (sPAR[38] * (X[3] / sPAR[8]))) / (1.0 + ((X[3] / sPAR[8]) + (X[7] / sPAR[17]))))));
    F[4]=0.0;
    F[9]=0.0;
    F[0]=0.0;
    F[2]=0.0;

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
    sPAR[0]=0.05; //Kaca_cs_CS
    sPAR[1]=0.03; //Kaca_ms_MS
    sPAR[2]=0.3; //Kakg_icd1_ICD1
    sPAR[3]=0.3; //Kakg_icd1_SYN
    sPAR[4]=0.6; //Kakg_icd2_ICD2
    sPAR[5]=0.6; //Kakg_icd2_SYN
    sPAR[6]=0.1; //Kakg_kdh_KDH
    sPAR[7]=0.48; //Kakg_kgd_KGD
    sPAR[8]=1.7; //Kcit_acn_ACN
    sPAR[9]=0.12; //Kcit_cs_CS
    sPAR[10]=0.5; //Kcoa_cs_CS
    sPAR[11]=0.1; //Kcoa_ms_MS
    sPAR[12]=0.25; //Kfa_fum_FUM
    sPAR[13]=0.15; //Kfa_sdh_SDH
    sPAR[14]=0.13; //Kgly_icl1_ICL1
    sPAR[15]=1.3; //Kgly_icl2_ICL2
    sPAR[16]=0.057; //Kgly_ms_MS
    sPAR[17]=0.7; //Kicit_acn_ACN
    sPAR[18]=0.03; //Kicit_icd1_ICD1
    sPAR[19]=0.03; //Kicit_icd1_SYN
    sPAR[20]=0.06; //Kicit_icd2_ICD2
    sPAR[21]=0.06; //Kicit_icd2_SYN
    sPAR[22]=0.145; //Kicit_icl1_ICL1
    sPAR[23]=1.3; //Kicit_icl2_ICL2
    sPAR[24]=2.38; //Kmal_fum_FUM
    sPAR[25]=0.833; //Kmal_mdh_MDH
    sPAR[26]=1.0; //Kmal_ms_MS
    sPAR[27]=0.012; //Koaa_cs_CS
    sPAR[28]=0.0443; //Koaa_mdh_MDH
    sPAR[29]=1.0; //Ksca_kdh_KDH
    sPAR[30]=0.02; //Ksca_scas_ScAS
    sPAR[31]=4.8; //Kssa_kgd_KGD
    sPAR[32]=0.015; //Kssa_ssadh_SSADH
    sPAR[33]=0.59; //Ksuc_icl1_ICL1
    sPAR[34]=5.9; //Ksuc_icl2_ICL2
    sPAR[35]=5.0; //Ksuc_scas_ScAS
    sPAR[36]=0.12; //Ksuc_sdh_SDH
    sPAR[37]=0.15; //Ksuc_ssadh_SSADH
    sPAR[38]=31.2; //Vf_acn_ACN
    sPAR[39]=64.8; //Vf_cs_CS
    sPAR[40]=87.7; //Vf_fum_FUM
    sPAR[41]=10.2; //Vf_icd1_ICD1
    sPAR[42]=10.2; //Vf_icd1_SYN
    sPAR[43]=9.965; //Vf_icd2_ICD2
    sPAR[44]=9.965; //Vf_icd2_SYN
    sPAR[45]=1.172; //Vf_icl1_ICL1
    sPAR[46]=0.391; //Vf_icl2_ICL2
    sPAR[47]=57.344; //Vf_kdh_KDH
    sPAR[48]=48.3; //Vf_kgd_KGD
    sPAR[49]=184.0; //Vf_mdh_MDH
    sPAR[50]=20.0; //Vf_ms_MS
    sPAR[51]=1.2; //Vf_scas_ScAS
    sPAR[52]=1.02; //Vf_sdh_SDH
    sPAR[53]=6.51; //Vf_ssadh_SSADH
    sPAR[54]=0.312; //Vr_acn_ACN
    sPAR[55]=0.648; //Vr_cs_CS
    sPAR[56]=87.7; //Vr_fum_FUM
    sPAR[57]=0.102; //Vr_icd1_ICD1
    sPAR[58]=0.102; //Vr_icd1_SYN
    sPAR[59]=0.09965; //Vr_icd2_ICD2
    sPAR[60]=0.09965; //Vr_icd2_SYN
    sPAR[61]=0.01172; //Vr_icl1_ICL1
    sPAR[62]=0.00391; //Vr_icl2_ICL2
    sPAR[63]=0.5734399999999999; //Vr_kdh_KDH
    sPAR[64]=0.483; //Vr_kgd_KGD
    sPAR[65]=184.0; //Vr_mdh_MDH
    sPAR[66]=0.2; //Vr_ms_MS
    sPAR[67]=0.012; //Vr_scas_ScAS
    sPAR[68]=1.02; //Vr_sdh_SDH
    sPAR[69]=0.06510000000000001; //Vr_ssadh_SSADH
    sPAR[70]=1.0; //cell
    X[0]=0.5; //aca
    X[1]=0.96; //akg
    X[2]=0.1; //biosyn
    X[3]=3.4; //cit
    X[4]=0.0001; //coa
    X[5]=0.08527999999999999; //fa
    X[6]=0.114; //gly
    X[7]=0.06; //icit
    X[8]=0.408; //mal
    X[9]=0.0003; //oaa
    X[10]=0.04; //sca
    X[11]=0.03; //ssa
    X[12]=2.464; //suc

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
