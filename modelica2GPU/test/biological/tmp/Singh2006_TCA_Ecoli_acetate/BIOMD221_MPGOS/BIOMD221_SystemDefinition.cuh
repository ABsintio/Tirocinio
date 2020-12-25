
#ifndef BIOMD221_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD221_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[6]=(sPAR[49] * ((((sPAR[32] * (X[7] / sPAR[16])) - (sPAR[43] * (X[11] * (X[6] / (sPAR[11] * sPAR[24]))))) / (1.0 + ((X[7] / sPAR[16]) + ((X[11] / sPAR[24]) + ((X[6] / sPAR[11]) + (X[11] * ((X[7] / (sPAR[16] * sPAR[24])) + (X[6] / (sPAR[11] * sPAR[24]))))))))) + (((sPAR[46] * (X[8] * (X[4] / (sPAR[8] * sPAR[19])))) - (sPAR[35] * (X[6] * (X[0] / (sPAR[1] * sPAR[12]))))) / ((1.0 + ((X[0] / sPAR[1]) + (X[4] / sPAR[8]))) * (1.0 + ((X[6] / sPAR[12]) + (X[8] / sPAR[19])))))));
    F[8]=(sPAR[49] * ((((sPAR[29] * (X[5] / sPAR[9])) - (sPAR[40] * (X[8] / sPAR[17]))) / (1.0 + ((X[5] / sPAR[9]) + (X[8] / sPAR[17])))) + ((((sPAR[35] * (X[6] * (X[0] / (sPAR[12] * sPAR[1])))) - (sPAR[46] * (X[8] * (X[4] / (sPAR[19] * sPAR[8]))))) / ((1.0 + ((X[6] / sPAR[12]) + (X[8] / sPAR[19]))) * (1.0 + ((X[0] / sPAR[1]) + (X[4] / sPAR[8]))))) + (((sPAR[45] * (X[9] / sPAR[21])) - (sPAR[34] * (X[8] / sPAR[18]))) / (1.0 + ((X[8] / sPAR[18]) + (X[9] / sPAR[21])))))));
    F[5]=(sPAR[49] * ((((sPAR[37] * (X[11] / sPAR[26])) - (sPAR[48] * (X[5] / sPAR[10]))) / (1.0 + ((X[11] / sPAR[26]) + (X[5] / sPAR[10])))) + (((sPAR[40] * (X[8] / sPAR[17])) - (sPAR[29] * (X[5] / sPAR[9]))) / (1.0 + ((X[5] / sPAR[9]) + (X[8] / sPAR[17]))))));
    F[11]=(sPAR[49] * ((((sPAR[36] * (X[10] / sPAR[23])) - (sPAR[47] * (X[11] / sPAR[25]))) / (1.0 + ((X[10] / sPAR[23]) + (X[11] / sPAR[25])))) + ((((sPAR[32] * (X[7] / sPAR[16])) - (sPAR[43] * (X[11] * (X[6] / (sPAR[24] * sPAR[11]))))) / (1.0 + ((X[7] / sPAR[16]) + ((X[11] / sPAR[24]) + ((X[6] / sPAR[11]) + (X[11] * ((X[7] / (sPAR[24] * sPAR[16])) + (X[6] / (sPAR[24] * sPAR[11]))))))))) + (((sPAR[48] * (X[5] / sPAR[10])) - (sPAR[37] * (X[11] / sPAR[26]))) / (1.0 + ((X[11] / sPAR[26]) + (X[5] / sPAR[10])))))));
    F[10]=(sPAR[49] * ((((sPAR[33] * (X[1] / sPAR[4])) - (sPAR[44] * (X[10] / sPAR[22]))) / (1.0 + ((X[1] / sPAR[4]) + (X[10] / sPAR[22])))) + (((sPAR[47] * (X[11] / sPAR[25])) - (sPAR[36] * (X[10] / sPAR[23]))) / (1.0 + ((X[10] / sPAR[23]) + (X[11] / sPAR[25]))))));
    F[1]=((sPAR[49] * ((((sPAR[30] * (X[7] / sPAR[14])) - (sPAR[41] * (X[1] / sPAR[2]))) / (1.0 + ((X[7] / sPAR[14]) + (X[1] / sPAR[2])))) + (((sPAR[44] * (X[10] / sPAR[22])) - (sPAR[33] * (X[1] / sPAR[4]))) / (1.0 + ((X[1] / sPAR[4]) + (X[10] / sPAR[22])))))) + (-0.0341 * (sPAR[49] * (((sPAR[31] * (X[7] / sPAR[15])) - (sPAR[42] * (X[1] / sPAR[3]))) / (1.0 + ((X[7] / sPAR[15]) + (X[1] / sPAR[3])))))));
    F[7]=(sPAR[49] * ((((sPAR[27] * (X[3] / sPAR[5])) - (sPAR[38] * (X[7] / sPAR[13]))) / (1.0 + ((X[3] / sPAR[5]) + (X[7] / sPAR[13])))) + ((((sPAR[41] * (X[1] / sPAR[2])) - (sPAR[30] * (X[7] / sPAR[14]))) / (1.0 + ((X[7] / sPAR[14]) + (X[1] / sPAR[2])))) + (((sPAR[43] * (X[11] * (X[6] / (sPAR[11] * sPAR[24])))) - (sPAR[32] * (X[7] / sPAR[16]))) / (1.0 + ((X[7] / sPAR[16]) + ((X[11] / sPAR[24]) + ((X[6] / sPAR[11]) + (X[11] * ((X[7] / (sPAR[16] * sPAR[24])) + (X[6] / (sPAR[11] * sPAR[24]))))))))))));
    F[3]=(sPAR[49] * ((((sPAR[28] * (X[0] * (X[9] / (sPAR[20] * sPAR[0])))) - (sPAR[39] * (X[4] * (X[3] / (sPAR[6] * sPAR[7]))))) / ((1.0 + ((X[9] / sPAR[20]) + (X[3] / sPAR[6]))) * (1.0 + ((X[0] / sPAR[0]) + (X[4] / sPAR[7]))))) + (((sPAR[38] * (X[7] / sPAR[13])) - (sPAR[27] * (X[3] / sPAR[5]))) / (1.0 + ((X[3] / sPAR[5]) + (X[7] / sPAR[13]))))));
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
    sPAR[0]=0.03; //Kaca_cs_CS
    sPAR[1]=0.01; //Kaca_ms_MS
    sPAR[2]=0.13; //Kakg_icd_ICD
    sPAR[3]=0.13; //Kakg_icd_SYN
    sPAR[4]=0.1; //Kakg_kdh_KDH
    sPAR[5]=1.7; //Kcit_acn_ACN
    sPAR[6]=0.7; //Kcit_cs_CS
    sPAR[7]=0.3; //Kcoa_cs_CS
    sPAR[8]=0.1; //Kcoa_ms_MS
    sPAR[9]=0.15; //Kfa_fum_FUM
    sPAR[10]=0.4; //Kfa_sdh_SDH
    sPAR[11]=0.13; //Kgly_icl_ICL
    sPAR[12]=2.0; //Kgly_ms_MS
    sPAR[13]=3.33; //Kicit_acn_ACN
    sPAR[14]=0.008; //Kicit_icd_ICD
    sPAR[15]=0.008; //Kicit_icd_SYN
    sPAR[16]=0.604; //Kicit_icl_ICL
    sPAR[17]=0.04; //Kmal_fum_FUM
    sPAR[18]=2.6; //Kmal_mdh_MDH
    sPAR[19]=1.0; //Kmal_ms_MS
    sPAR[20]=0.07000000000000001; //Koaa_cs_CS
    sPAR[21]=0.04; //Koaa_mdh_MDH
    sPAR[22]=1.0; //Ksca_kdh_KDH
    sPAR[23]=0.02; //Ksca_scas_ScAS
    sPAR[24]=0.59; //Ksuc_icl_ICL
    sPAR[25]=5.0; //Ksuc_scas_ScAS
    sPAR[26]=0.02; //Ksuc_sdh_SDH
    sPAR[27]=629.28; //Vf_acn_ACN
    sPAR[28]=446.88; //Vf_cs_CS
    sPAR[29]=156.24; //Vf_fum_FUM
    sPAR[30]=6.625; //Vf_icd_ICD
    sPAR[31]=6.625; //Vf_icd_SYN
    sPAR[32]=28.5; //Vf_icl_ICL
    sPAR[33]=57.344; //Vf_kdh_KDH
    sPAR[34]=1390.9; //Vf_mdh_MDH
    sPAR[35]=28.5; //Vf_ms_MS
    sPAR[36]=8.960000000000001; //Vf_scas_ScAS
    sPAR[37]=17.7; //Vf_sdh_SDH
    sPAR[38]=6.2928; //Vr_acn_ACN
    sPAR[39]=4.4688; //Vr_cs_CS
    sPAR[40]=144.67; //Vr_fum_FUM
    sPAR[41]=0.06625; //Vr_icd_ICD
    sPAR[42]=0.06625; //Vr_icd_SYN
    sPAR[43]=0.285; //Vr_icl_ICL
    sPAR[44]=0.5734399999999999; //Vr_kdh_KDH
    sPAR[45]=1276.06; //Vr_mdh_MDH
    sPAR[46]=0.285; //Vr_ms_MS
    sPAR[47]=0.0896; //Vr_scas_ScAS
    sPAR[48]=16.24; //Vr_sdh_SDH
    sPAR[49]=1.0; //cell
    X[0]=0.5; //aca
    X[1]=0.2; //akg
    X[2]=0.1; //biosyn
    X[3]=9.0; //cit
    X[4]=0.0001; //coa
    X[5]=0.3; //fa
    X[6]=4.0; //gly
    X[7]=0.15; //icit
    X[8]=5.0; //mal
    X[9]=0.0014; //oaa
    X[10]=0.04; //sca
    X[11]=6.0; //suc

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
