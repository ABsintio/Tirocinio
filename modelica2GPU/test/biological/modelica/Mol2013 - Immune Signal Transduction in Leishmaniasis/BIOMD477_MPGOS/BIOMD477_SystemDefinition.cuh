
#ifndef BIOMD477_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD477_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[36]=((2.35 * (pow(X[26],1.0) / (0.43 + pow(X[26],1.0)))) + (-1.1 * X[36]));
    F[5]=(0.19 * X[2]);
    F[38]=(0.2 * X[18]);
    F[6]=(0.42 * X[19]);
    F[17]=(1.5 * (X[29] / (0.2 + X[29])));
    F[29]=(X[34] + (-1.5 * (X[29] / (0.2 + X[29]))));
    F[42]=(1.14 * (X[37] / (0.62 + X[37])));
    F[37]=((0.61 * X[35]) + (-1.14 * (X[37] / (0.62 + X[37]))));
    F[26]=((1.4 * X[20]) + (-2.35 * (pow(X[26],1.0) / (0.43 + pow(X[26],1.0)))));
    F[2]=((X[13] / (1.5 + X[13])) + (-0.19 * X[2]));
    F[13]=((0.01 * (X[8] / (1.8 + X[8]))) - (X[13] / (1.5 + X[13])));
    F[12]=((0.2 * (X[4] / (1.5 + X[4]))) + ((X[33] / (1.0 + X[33])) + (-0.7 * (X[12] / (1.5 + X[12])))));
    F[4]=((0.24 * (X[11] / (1.2 + X[11]))) + ((X[33] / (1.0 + X[33])) + (-0.6000000000000001 * (X[4] / (1.5 + X[4])))));
    F[11]=((0.299 * X[8]) + (-0.24 * (X[11] / (1.2 + X[11]))));
    F[18]=((0.8 * (X[31] / (1.5 + X[31]))) + (-0.2 * X[18]));
    F[31]=((0.2 * (X[8] / (0.8 + X[8]))) + (-0.8 * (X[31] / (1.5 + X[31]))));
    F[33]=((0.35 * X[40]) + (X[33] * ((-1.2 / (0.2 + X[33])) + (-2.0 / (1.0 + X[33])))));
    F[40]=((0.9 * (X[0] / (0.3 + X[0]))) + (-0.35 * X[40]));
    F[0]=((0.6 * (X[30] / (1.0 + X[30]))) + (-0.9 * (X[0] / (0.3 + X[0]))));
    F[30]=((0.0002 * (X[8] / (0.5 + X[8]))) + (-0.6 * (X[30] / (1.0 + X[30]))));
    F[8]=((0.6 * X[1]) + ((X[8] * (-0.299 + ((-0.0002 / (0.5 + X[8])) + (-0.2 / (0.8 + X[8]))))) + (-0.01 * (X[8] / (1.8 + X[8])))));
    F[1]=(-0.6 * X[1]);
    F[15]=((1.2 * (X[25] / (0.02 + X[25]))) + ((0.1 * (X[10] / (0.01 + X[10]))) + (-1.5 * (X[15] / (0.03 + X[15])))));
    F[19]=((0.9 * (X[24] / (0.2 + X[24]))) + (-0.42 * X[19]));
    F[24]=((0.2 * (X[10] / (0.01 + X[10]))) + ((0.7 * (X[12] / (1.5 + X[12]))) + (-0.9 * (X[24] / (0.2 + X[24])))));
    F[10]=((0.48 * X[27]) + ((X[10] * ((-0.5 / (0.2 + X[10])) + (-0.2 / (0.01 + X[10])))) + (-0.4 * (X[10] / (0.01 + X[10])))));
    F[27]=((0.55 * X[7]) + (-0.48 * X[27]));
    F[7]=((0.72 * X[39]) + (-0.55 * X[7]));
    F[39]=((2.0 * X[14]) + (-0.72 * X[39]));
    F[14]=((0.6 * X[32]) + (-2.0 * X[14]));
    F[32]=(-0.6 * X[32]);
    F[34]=((1.5 * (X[15] / (0.03 + X[15]))) - X[34]);
    F[25]=((0.99 * (X[21] / (0.08 + X[21]))) + (-1.2 * (X[25] / (0.02 + X[25]))));
    F[35]=((0.98 * (X[22] / (0.15 + X[22]))) + (-0.61 * X[35]));
    F[22]=((0.6 * (X[41] / (0.2 + X[41]))) + ((0.3 * (X[10] / (0.01 + X[10]))) + ((0.4 * (X[4] / (1.5 + X[4]))) + (-0.98 * (X[22] / (0.15 + X[22]))))));
    F[41]=((0.28 * (X[21] / (1.5 + X[21]))) + (-0.6 * (X[41] / (0.2 + X[41]))));
    F[20]=((2.2 * (X[23] / (0.1 + X[23]))) + (-1.4 * X[20]));
    F[23]=((1.3 * (X[9] / (0.5600000000000001 + X[9]))) + ((1.2 * (X[33] / (0.2 + X[33]))) + (-2.2 * (X[23] / (0.1 + X[23])))));
    F[3]=((0.6 * (X[21] / (0.6 + X[21]))) + ((0.5 * (X[10] / (0.2 + X[10]))) + (-1.3 * (X[3] / (0.15 + X[3])))));
    F[9]=(1.3 * ((X[3] / (0.15 + X[3])) - (X[9] / (0.5600000000000001 + X[9]))));
    F[21]=((1.18 * X[28]) + ((X[21] * ((-0.6 / (0.6 + X[21])) + (-0.28 / (1.5 + X[21])))) + (-0.99 * (X[21] / (0.08 + X[21])))));
    F[28]=((1.2 * X[16]) + (-1.18 * X[28]));
    F[16]=((1.1 * X[36]) + (-1.2 * X[16]));

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
    X[0]=1.45; //mw05469f51_73f7_4ba1_9f1a_bce5fea143c2
    X[1]=1.6; //mw0be0d193_fd6b_4824_8928_dbade8b5c99c
    X[2]=1.1; //mw13651143_feb5_49a5_adab_9105c2647446
    X[3]=1.5; //mw136c8391_14f4_4a28_83a3_35cc74a2e040
    X[4]=1.2; //mw173d8585_5817_4b4c_932a_cf7d673680ac
    X[5]=0.0; //mw17ae9adc_54ab_407b_a34d_8413a3a10cc6
    X[6]=0.0; //mw1f12e5bc_ebbc_4347_b6b7_5cd1740ac69a
    X[7]=1.0; //mw262497ec_3d54_4367_bfe3_76a9c57497cb
    X[8]=1.3; //mw280197c8_98de_43f0_bf01_0f332a1ab689
    X[9]=0.8; //mw2dc73059_a841_48d5_b4bd_3ac24d94c42e
    X[10]=1.3; //mw308b75ec_28b7_4d97_92e2_51a8ce04116a
    X[11]=0.3; //mw323a57b4_8e59_4116_9ad1_fe547b89c858
    X[12]=1.2; //mw32c21c39_237b_4d4c_bb5d_117cb30ce68a
    X[13]=1.6; //mw3832f277_aef2_4f1d_87af_abc2a3c1a7d5
    X[14]=1.5; //mw4079e13c_446e_4aa2_9ec4_233583833d02
    X[15]=1.5; //mw46ee629a_dd6b_4163_9da1_2614bb1d74bc
    X[16]=1.5; //mw4d2e70a7_f499_461d_ae18_bc53b365b091
    X[17]=0.5; //mw5c67812a_17f5_43cf_8acb_9bde272c1911
    X[18]=1.2; //mw64453fc5_a275_4bba_84f0_2af249b31514
    X[19]=0.8; //mw67d0cf04_d6a7_4725_a869_098a96a3350d
    X[20]=1.2; //mw6939cefe_e7ff_4a3f_b45b_a9234d1b5573
    X[21]=1.3; //mw6ee00a71_ab68_454b_b1cd_60c1ebd19cfa
    X[22]=1.2; //mw702be69a_eb4f_425e_87c7_ef7d85254536
    X[23]=1.4; //mw7204ab72_2ee5_4b92_b420_2583dacc4343
    X[24]=1.1; //mw75377e12_e23d_44b3_9823_5fac9b23edc8
    X[25]=1.5; //mw805b55df_cc91_4227_bb52_930e961b682c
    X[26]=0.2; //mw8a358487_b18b_42df_a646_cd75eb5bfcc2
    X[27]=1.1; //mw8bffd47e_34de_4738_81bf_7a39a40b3ae8
    X[28]=1.3; //mw8cc67de0_64e6_428f_ab09_4c2825cc172c
    X[29]=0.8; //mw97345a67_a8e8_42aa_8e62_69e9d2b6cf45
    X[30]=1.6; //mw9a5baf6d_0285_4ad3_9499_059c553d9cf6
    X[31]=1.6; //mw9bb804c9_3e4e_4684_9f6b_4e6f6706a58e
    X[32]=1.5; //mwa5d6f7e4_dc4d_4931_91ce_1e78e7b2f195
    X[33]=1.5; //mwb4633da9_f9d6_4ad8_a7e5_da075c830e17
    X[34]=0.9; //mwb71eb539_dca6_47ab_8df5_430d84af0bfb
    X[35]=1.2; //mwbee11634_55df_4a3f_998a_634dfaf46fd7
    X[36]=0.0; //mwc844b7c0_98f5_4d0d_8f0c_00dfe8b54e6d
    X[37]=0.6; //mwd9e7a9b9_6f1b_4bbc_afa5_6cb192b62ce8
    X[38]=0.0; //mwda4716f1_ae00_4149_aec3_12531380425a
    X[39]=0.85; //mwe5fade7d_1715_4bb1_843f_923da8ecddf1
    X[40]=0.9; //mwf20834c8_a115_460b_859c_4e3ca1ffd953
    X[41]=1.4; //mwf8cfed1b_6fcf_4cba_bc30_b44490814a7a
    X[42]=0.91; //mwfed5a135_c91b_4d20_91b2_3a61723544dd

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
