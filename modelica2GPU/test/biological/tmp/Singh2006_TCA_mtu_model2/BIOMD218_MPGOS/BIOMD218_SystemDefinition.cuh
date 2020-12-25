
#ifndef BIOMD218_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD218_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[6]=(sPAR[66] * ((((sPAR[43] * (X[7] / sPAR[21])) - (sPAR[58] * (X[12] * (X[6] / (sPAR[31] * sPAR[13]))))) / (1.0 + ((X[7] / sPAR[21]) + ((X[12] / sPAR[31]) + ((X[6] / sPAR[13]) + (X[12] * ((X[7] / (sPAR[31] * sPAR[21])) + (X[6] / (sPAR[31] * sPAR[13]))))))))) + ((((sPAR[44] * (X[7] / sPAR[22])) - (sPAR[59] * (X[12] * (X[6] / (sPAR[32] * sPAR[14]))))) / (1.0 + ((X[7] / sPAR[22]) + ((X[12] / sPAR[32]) + ((X[6] / sPAR[14]) + (X[12] * ((X[7] / (sPAR[32] * sPAR[22])) + (X[6] / (sPAR[32] * sPAR[14]))))))))) + (((sPAR[62] * (X[8] * (X[4] / (sPAR[10] * sPAR[25])))) - (sPAR[47] * (X[6] * (X[0] / (sPAR[1] * sPAR[15]))))) / ((1.0 + ((X[0] / sPAR[1]) + (X[4] / sPAR[10]))) * (1.0 + ((X[6] / sPAR[15]) + (X[8] / sPAR[25]))))))));
    F[8]=(sPAR[66] * ((((sPAR[38] * (X[5] / sPAR[11])) - (sPAR[53] * (X[8] / sPAR[23]))) / (1.0 + ((X[5] / sPAR[11]) + (X[8] / sPAR[23])))) + ((((sPAR[47] * (X[6] * (X[0] / (sPAR[15] * sPAR[1])))) - (sPAR[62] * (X[8] * (X[4] / (sPAR[25] * sPAR[10]))))) / ((1.0 + ((X[6] / sPAR[15]) + (X[8] / sPAR[25]))) * (1.0 + ((X[0] / sPAR[1]) + (X[4] / sPAR[10]))))) + (((sPAR[61] * (X[9] / sPAR[27])) - (sPAR[46] * (X[8] / sPAR[24]))) / (1.0 + ((X[8] / sPAR[24]) + (X[9] / sPAR[27])))))));
    F[5]=(sPAR[66] * ((((sPAR[49] * (X[12] / sPAR[34])) - (sPAR[64] * (X[5] / sPAR[12]))) / (1.0 + ((X[12] / sPAR[34]) + (X[5] / sPAR[12])))) + (((sPAR[53] * (X[8] / sPAR[23])) - (sPAR[38] * (X[5] / sPAR[11]))) / (1.0 + ((X[5] / sPAR[11]) + (X[8] / sPAR[23]))))));
    F[10]=(sPAR[66] * (((sPAR[63] * (X[12] / sPAR[33])) - (sPAR[48] * (X[10] / sPAR[28]))) / (1.0 + ((X[10] / sPAR[28]) + (X[12] / sPAR[33])))));
    F[12]=(sPAR[66] * ((((sPAR[50] * (X[11] / sPAR[30])) - (sPAR[65] * (X[12] / sPAR[35]))) / (1.0 + ((X[11] / sPAR[30]) + (X[12] / sPAR[35])))) + ((((sPAR[48] * (X[10] / sPAR[28])) - (sPAR[63] * (X[12] / sPAR[33]))) / (1.0 + ((X[10] / sPAR[28]) + (X[12] / sPAR[33])))) + ((((sPAR[43] * (X[7] / sPAR[21])) - (sPAR[58] * (X[12] * (X[6] / (sPAR[13] * sPAR[31]))))) / (1.0 + ((X[7] / sPAR[21]) + ((X[12] / sPAR[31]) + ((X[6] / sPAR[13]) + (X[12] * ((X[7] / (sPAR[21] * sPAR[31])) + (X[6] / (sPAR[13] * sPAR[31]))))))))) + ((((sPAR[44] * (X[7] / sPAR[22])) - (sPAR[59] * (X[12] * (X[6] / (sPAR[32] * sPAR[14]))))) / (1.0 + ((X[7] / sPAR[22]) + ((X[12] / sPAR[32]) + ((X[6] / sPAR[14]) + (X[12] * ((X[7] / (sPAR[32] * sPAR[22])) + (X[6] / (sPAR[32] * sPAR[14]))))))))) + (((sPAR[64] * (X[5] / sPAR[12])) - (sPAR[49] * (X[12] / sPAR[34]))) / (1.0 + ((X[12] / sPAR[34]) + (X[5] / sPAR[12])))))))));
    F[11]=(sPAR[66] * ((((sPAR[45] * (X[1] / sPAR[6])) - (sPAR[60] * (X[11] / sPAR[29]))) / (1.0 + ((X[1] / sPAR[6]) + (X[11] / sPAR[29])))) + (((sPAR[65] * (X[12] / sPAR[35])) - (sPAR[50] * (X[11] / sPAR[30]))) / (1.0 + ((X[11] / sPAR[30]) + (X[12] / sPAR[35]))))));
    F[1]=((sPAR[66] * ((((sPAR[39] * (X[7] / sPAR[17])) - (sPAR[54] * (X[1] / sPAR[2]))) / (1.0 + ((X[7] / sPAR[17]) + (X[1] / sPAR[2])))) + ((((sPAR[41] * (X[7] / sPAR[19])) - (sPAR[56] * (X[1] / sPAR[4]))) / (1.0 + ((X[7] / sPAR[19]) + (X[1] / sPAR[4])))) + (((sPAR[60] * (X[11] / sPAR[29])) - (sPAR[45] * (X[1] / sPAR[6]))) / (1.0 + ((X[1] / sPAR[6]) + (X[11] / sPAR[29]))))))) + (-0.0341 * (sPAR[66] * ((((sPAR[40] * (X[7] / sPAR[18])) - (sPAR[55] * (X[1] / sPAR[3]))) / (1.0 + ((X[7] / sPAR[18]) + (X[1] / sPAR[3])))) + (((sPAR[42] * (X[7] / sPAR[20])) - (sPAR[57] * (X[1] / sPAR[5]))) / (1.0 + ((X[7] / sPAR[20]) + (X[1] / sPAR[5]))))))));
    F[7]=(sPAR[66] * ((((sPAR[36] * (X[3] / sPAR[7])) - (sPAR[51] * (X[7] / sPAR[16]))) / (1.0 + ((X[3] / sPAR[7]) + (X[7] / sPAR[16])))) + ((((sPAR[54] * (X[1] / sPAR[2])) - (sPAR[39] * (X[7] / sPAR[17]))) / (1.0 + ((X[7] / sPAR[17]) + (X[1] / sPAR[2])))) + ((((sPAR[56] * (X[1] / sPAR[4])) - (sPAR[41] * (X[7] / sPAR[19]))) / (1.0 + ((X[7] / sPAR[19]) + (X[1] / sPAR[4])))) + ((((sPAR[58] * (X[12] * (X[6] / (sPAR[31] * sPAR[13])))) - (sPAR[43] * (X[7] / sPAR[21]))) / (1.0 + ((X[7] / sPAR[21]) + ((X[12] / sPAR[31]) + ((X[6] / sPAR[13]) + (X[12] * ((X[7] / (sPAR[31] * sPAR[21])) + (X[6] / (sPAR[31] * sPAR[13]))))))))) + (((sPAR[59] * (X[12] * (X[6] / (sPAR[14] * sPAR[32])))) - (sPAR[44] * (X[7] / sPAR[22]))) / (1.0 + ((X[7] / sPAR[22]) + ((X[12] / sPAR[32]) + ((X[6] / sPAR[14]) + (X[12] * ((X[7] / (sPAR[22] * sPAR[32])) + (X[6] / (sPAR[14] * sPAR[32]))))))))))))));
    F[3]=(sPAR[66] * ((((sPAR[37] * (X[0] * (X[9] / (sPAR[26] * sPAR[0])))) - (sPAR[52] * (X[4] * (X[3] / (sPAR[8] * sPAR[9]))))) / ((1.0 + ((X[9] / sPAR[26]) + (X[3] / sPAR[8]))) * (1.0 + ((X[0] / sPAR[0]) + (X[4] / sPAR[9]))))) + (((sPAR[51] * (X[7] / sPAR[16])) - (sPAR[36] * (X[3] / sPAR[7]))) / (1.0 + ((X[3] / sPAR[7]) + (X[7] / sPAR[16]))))));
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
    sPAR[6]=0.48; //Kakg_kgd_KGD
    sPAR[7]=1.7; //Kcit_acn_ACN
    sPAR[8]=0.12; //Kcit_cs_CS
    sPAR[9]=0.5; //Kcoa_cs_CS
    sPAR[10]=0.1; //Kcoa_ms_MS
    sPAR[11]=0.25; //Kfa_fum_FUM
    sPAR[12]=0.15; //Kfa_sdh_SDH
    sPAR[13]=0.13; //Kgly_icl1_ICL1
    sPAR[14]=1.3; //Kgly_icl2_ICL2
    sPAR[15]=0.057; //Kgly_ms_MS
    sPAR[16]=0.7; //Kicit_acn_ACN
    sPAR[17]=0.03; //Kicit_icd1_ICD1
    sPAR[18]=0.03; //Kicit_icd1_SYN
    sPAR[19]=0.06; //Kicit_icd2_ICD2
    sPAR[20]=0.06; //Kicit_icd2_SYN
    sPAR[21]=0.145; //Kicit_icl1_ICL1
    sPAR[22]=1.3; //Kicit_icl2_ICL2
    sPAR[23]=2.38; //Kmal_fum_FUM
    sPAR[24]=0.833; //Kmal_mdh_MDH
    sPAR[25]=1.0; //Kmal_ms_MS
    sPAR[26]=0.012; //Koaa_cs_CS
    sPAR[27]=0.0443; //Koaa_mdh_MDH
    sPAR[28]=0.02; //Ksca_scas_ScAS
    sPAR[29]=4.8; //Kssa_kgd_KGD
    sPAR[30]=0.015; //Kssa_ssadh_SSADH
    sPAR[31]=0.59; //Ksuc_icl1_ICL1
    sPAR[32]=5.9; //Ksuc_icl2_ICL2
    sPAR[33]=5.0; //Ksuc_scas_ScAS
    sPAR[34]=0.12; //Ksuc_sdh_SDH
    sPAR[35]=0.15; //Ksuc_ssadh_SSADH
    sPAR[36]=31.2; //Vf_acn_ACN
    sPAR[37]=64.8; //Vf_cs_CS
    sPAR[38]=87.7; //Vf_fum_FUM
    sPAR[39]=10.2; //Vf_icd1_ICD1
    sPAR[40]=10.2; //Vf_icd1_SYN
    sPAR[41]=9.965; //Vf_icd2_ICD2
    sPAR[42]=9.965; //Vf_icd2_SYN
    sPAR[43]=1.172; //Vf_icl1_ICL1
    sPAR[44]=0.391; //Vf_icl2_ICL2
    sPAR[45]=48.3; //Vf_kgd_KGD
    sPAR[46]=184.0; //Vf_mdh_MDH
    sPAR[47]=20.0; //Vf_ms_MS
    sPAR[48]=1.2; //Vf_scas_ScAS
    sPAR[49]=1.02; //Vf_sdh_SDH
    sPAR[50]=6.51; //Vf_ssadh_SSADH
    sPAR[51]=0.312; //Vr_acn_ACN
    sPAR[52]=0.648; //Vr_cs_CS
    sPAR[53]=87.7; //Vr_fum_FUM
    sPAR[54]=0.102; //Vr_icd1_ICD1
    sPAR[55]=0.102; //Vr_icd1_SYN
    sPAR[56]=0.09965; //Vr_icd2_ICD2
    sPAR[57]=0.09965; //Vr_icd2_SYN
    sPAR[58]=0.01172; //Vr_icl1_ICL1
    sPAR[59]=0.00391; //Vr_icl2_ICL2
    sPAR[60]=0.483; //Vr_kgd_KGD
    sPAR[61]=184.0; //Vr_mdh_MDH
    sPAR[62]=0.2; //Vr_ms_MS
    sPAR[63]=0.012; //Vr_scas_ScAS
    sPAR[64]=1.02; //Vr_sdh_SDH
    sPAR[65]=0.06510000000000001; //Vr_ssadh_SSADH
    sPAR[66]=1.0; //cell
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
