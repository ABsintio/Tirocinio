
#ifndef BIOMD147_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD147_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[2]=(X[19] + (X[21] + (X[15] + (X[16] + (X[17] + X[18])))));
    ACC[1]=(X[12] + (X[14] + (X[8] + (X[9] + (X[10] + X[11])))));
    ACC[0]=(X[5] + (X[7] + (X[1] + (X[2] + (X[3] + X[4])))));
    F[15]=(sPAR[15] * ((sPAR[2] * (X[19] * X[0])) + ((sPAR[30] * X[16]) + (X[15] * ((((-(sPAR[11])) * X[22]) - sPAR[20]) - sPAR[52])))));
    F[16]=(sPAR[15] * ((sPAR[14] * (X[17] * X[0])) + ((sPAR[11] * (X[15] * X[22])) + ((((-(sPAR[30])) - sPAR[21]) - sPAR[55]) * X[16]))));
    F[18]=(sPAR[49] * ((sPAR[10] * (X[21] * X[23])) + ((((-(sPAR[47])) - sPAR[29]) - sPAR[42]) * X[18])));
    F[17]=((sPAR[15] * ((sPAR[9] * (X[19] * X[22])) - (sPAR[28] * X[17]))) + ((sPAR[49] * (sPAR[47] * X[18])) + (sPAR[15] * ((sPAR[21] * X[16]) + (X[17] * (((-(sPAR[14])) * X[0]) - sPAR[41]))))));
    F[21]=((sPAR[15] * (sPAR[58] * X[19])) + (sPAR[49] * ((sPAR[29] * X[18]) + (X[21] * (((-(sPAR[61])) - sPAR[36]) - (sPAR[10] * X[23]))))));
    F[19]=((sPAR[49] * (sPAR[64] * X[20])) + ((sPAR[15] * ((sPAR[20] * X[15]) + ((sPAR[28] * X[17]) + ((X[19] * (((-(sPAR[2])) * X[0]) - sPAR[35])) - (sPAR[9] * (X[19] * X[22])))))) + ((sPAR[49] * (sPAR[61] * X[21])) - (sPAR[15] * (sPAR[58] * X[19])))));
    F[20]=(sPAR[49] * (sPAR[68] - (sPAR[71] * X[20])));
    F[13]=(sPAR[49] * ((sPAR[63] * X[13]) + (sPAR[67] + (((-(sPAR[63])) - sPAR[70]) * X[13]))));
    F[12]=((sPAR[49] * (sPAR[63] * X[13])) + ((sPAR[49] * (sPAR[60] * X[14])) + (sPAR[15] * ((sPAR[25] * X[10]) + ((X[12] * (((-(sPAR[33])) - (sPAR[6] * X[22])) - sPAR[57])) + ((sPAR[18] * X[8]) - (sPAR[1] * (X[12] * X[0]))))))));
    F[14]=((sPAR[15] * (sPAR[57] * X[12])) + (sPAR[49] * ((sPAR[26] * X[11]) + (X[14] * (((-(sPAR[60])) - sPAR[34]) - (sPAR[7] * X[23]))))));
    F[10]=((sPAR[49] * (sPAR[46] * X[11])) + (sPAR[15] * ((sPAR[6] * (X[12] * X[22])) + ((((-(sPAR[25])) - sPAR[39]) * X[10]) + ((sPAR[19] * X[9]) - (sPAR[13] * (X[10] * X[0])))))));
    F[11]=(sPAR[49] * ((sPAR[7] * (X[14] * X[23])) + ((((-(sPAR[40])) - sPAR[26]) - sPAR[46]) * X[11])));
    F[9]=(sPAR[15] * ((sPAR[8] * (X[8] * X[22])) + ((sPAR[13] * (X[10] * X[0])) + ((((-(sPAR[19])) - sPAR[27]) - sPAR[54]) * X[9]))));
    F[8]=(sPAR[15] * ((sPAR[1] * (X[12] * X[0])) + ((((-(sPAR[18])) - sPAR[51]) * X[8]) + ((sPAR[27] * X[9]) - (sPAR[8] * (X[8] * X[22]))))));
    F[23]=((sPAR[49] * ((sPAR[38] * X[4]) + (sPAR[40] * X[11]))) + ((sPAR[15] * (sPAR[44] * X[22])) + (sPAR[49] * ((sPAR[42] * X[18]) + ((sPAR[23] * X[4]) + ((sPAR[26] * X[11]) + ((sPAR[29] * X[18]) + (((((-(sPAR[43])) * X[23]) - (sPAR[7] * (X[14] * X[23]))) - (sPAR[4] * (X[7] * X[23]))) - (sPAR[10] * (X[21] * X[23]))))))))));
    F[0]=(sPAR[15] * ((sPAR[50] * X[1]) + ((sPAR[53] * X[2]) + ((sPAR[54] * X[9]) + ((sPAR[51] * X[8]) + ((sPAR[52] * X[15]) + ((sPAR[55] * X[16]) + ((sPAR[16] * X[1]) + ((sPAR[17] * X[2]) + ((sPAR[19] * X[9]) + ((sPAR[18] * X[8]) + ((sPAR[20] * X[15]) + ((sPAR[21] * X[16]) + ((((((((-(sPAR[48])) * X[0]) - (sPAR[2] * (X[19] * X[0]))) - (sPAR[13] * (X[10] * X[0]))) - (sPAR[0] * (X[5] * X[0]))) - (sPAR[12] * (X[3] * X[0]))) - (sPAR[14] * (X[17] * X[0]))) - (sPAR[1] * (X[12] * X[0]))))))))))))))));
    F[22]=((sPAR[15] * ((sPAR[37] * X[3]) + ((sPAR[53] * X[2]) + ((sPAR[54] * X[9]) + ((sPAR[39] * X[10]) + ((sPAR[41] * X[17]) + ((sPAR[55] * X[16]) + ((sPAR[22] * X[3]) + ((sPAR[24] * X[2]) + ((sPAR[27] * X[9]) + ((sPAR[25] * X[10]) + (((((-(sPAR[3])) * (X[5] * X[22])) - (sPAR[8] * (X[8] * X[22]))) - (sPAR[5] * (X[1] * X[22]))) - (sPAR[6] * (X[12] * X[22])))))))))))))) + ((sPAR[49] * (sPAR[43] * X[23])) + (sPAR[15] * ((sPAR[28] * X[17]) + ((sPAR[30] * X[16]) + ((((-(sPAR[44])) * X[22]) - (sPAR[9] * (X[19] * X[22]))) - (sPAR[11] * (X[15] * X[22]))))))));
    F[2]=(sPAR[15] * ((sPAR[12] * (X[3] * X[0])) + ((sPAR[5] * (X[1] * X[22])) + ((((-(sPAR[24])) - sPAR[17]) - sPAR[53]) * X[2]))));
    F[4]=(sPAR[49] * ((sPAR[4] * (X[7] * X[23])) + ((((-(sPAR[45])) - sPAR[23]) - sPAR[38]) * X[4])));
    F[3]=((sPAR[15] * ((sPAR[3] * (X[5] * X[22])) - (sPAR[22] * X[3]))) + ((sPAR[49] * (sPAR[45] * X[4])) + (sPAR[15] * ((sPAR[17] * X[2]) + (X[3] * (((-(sPAR[12])) * X[0]) - sPAR[37]))))));
    F[1]=(sPAR[15] * ((sPAR[0] * (X[5] * X[0])) + ((sPAR[24] * X[2]) + (X[1] * ((((-(sPAR[5])) * X[22]) - sPAR[16]) - sPAR[50])))));
    F[7]=((sPAR[15] * (sPAR[56] * X[5])) + (sPAR[49] * ((sPAR[23] * X[4]) + (X[7] * (((-(sPAR[59])) - sPAR[32]) - (sPAR[4] * X[23]))))));
    F[5]=((sPAR[49] * (sPAR[62] * X[6])) + ((sPAR[15] * ((sPAR[16] * X[1]) + ((sPAR[22] * X[3]) + ((X[5] * (((-(sPAR[0])) * X[0]) - sPAR[31])) - (sPAR[3] * (X[5] * X[22])))))) + ((sPAR[49] * (sPAR[59] * X[7])) - (sPAR[15] * (sPAR[56] * X[5])))));
    F[6]=(sPAR[49] * (sPAR[66] + ((sPAR[62] * X[6]) + ((sPAR[65] * pow(X[23],2.0)) + (((-(sPAR[69])) - sPAR[62]) * X[6])))));

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
    ACC[0]=0.0; //Total_IkBalpha
    ACC[1]=0.0; //Total_IkBbeta
    ACC[2]=0.0; //Total_IkBeps
    sPAR[0]=1.35; //a1_int_ai
    sPAR[1]=0.36; //a2_int_bi
    sPAR[2]=0.54; //a3_int_ei
    sPAR[3]=30.0; //a4_1_int_an
    sPAR[4]=30.0; //a4_2_int_an_n
    sPAR[5]=30.0; //a4_3_int_2ain
    sPAR[6]=30.0; //a5_1_int_bn
    sPAR[7]=30.0; //a5_2_int_bn_n
    sPAR[8]=30.0; //a5_3_int_2bin
    sPAR[9]=30.0; //a6_1_int_en
    sPAR[10]=30.0; //a6_2_int_en_n
    sPAR[11]=30.0; //a6_3_int_2ein
    sPAR[12]=11.1; //a7_int_2ani
    sPAR[13]=2.88; //a8_int_2bni
    sPAR[14]=4.2; //a9_int_2eni
    sPAR[15]=1.0; //cytoplasm
    sPAR[16]=0.075; //d1_1_int_ai
    sPAR[17]=0.075; //d1_2_int_2ani
    sPAR[18]=0.105; //d2_1_int_bi
    sPAR[19]=0.105; //d2_2_int_2bni
    sPAR[20]=0.105; //d3_1_int_ei
    sPAR[21]=0.105; //d3_2_int_2eni
    sPAR[22]=6e-05; //d4_1_int_an
    sPAR[23]=6e-05; //d4_2_int_an_n
    sPAR[24]=6e-05; //d4_3_int_2ain
    sPAR[25]=6e-05; //d5_1_int_bn
    sPAR[26]=6e-05; //d5_2_int_bn_n
    sPAR[27]=6e-05; //d5_3_int_2bin
    sPAR[28]=6e-05; //d6_1_int_en
    sPAR[29]=6e-05; //d6_2_int_en_n
    sPAR[30]=6e-05; //d6_3_int_2ein
    sPAR[31]=0.12; //deg1_c_deg_a
    sPAR[32]=0.12; //deg1_n_deg_a_n
    sPAR[33]=0.18; //deg2_c_deg_b
    sPAR[34]=0.18; //deg2_n_deg_b_n
    sPAR[35]=0.18; //deg3_c_deg_e
    sPAR[36]=0.18; //deg3_n_deg_e_n
    sPAR[37]=6e-05; //deg4_c_deg_an
    sPAR[38]=6e-05; //deg4_n_deg_an_n
    sPAR[39]=6e-05; //deg5_c_deg_bn
    sPAR[40]=6e-05; //deg5_n_deg_bn_n
    sPAR[41]=6e-05; //deg6_c_deg_en
    sPAR[42]=6e-05; //deg6_n_deg_en_n
    sPAR[43]=0.0048; //k1_1_loc_n
    sPAR[44]=5.4; //k1_2_loc_n
    sPAR[45]=0.828; //k2_a_loc_an
    sPAR[46]=0.414; //k2_b_loc_bn
    sPAR[47]=0.414; //k2_e_loc_en
    sPAR[48]=0.0; //k_IKK_deg_IKK_deg
    sPAR[49]=1.0; //nucleus
    sPAR[50]=0.07199999999999999; //r1_deg_ai
    sPAR[51]=0.024; //r2_deg_bi
    sPAR[52]=0.036; //r3_deg_ei
    sPAR[53]=0.36; //r4_deg_ain
    sPAR[54]=0.12; //r5_deg_bin
    sPAR[55]=0.18; //r6_deg_ein
    sPAR[56]=0.018; //tp1a_loc_a
    sPAR[57]=0.018; //tp1b_loc_b
    sPAR[58]=0.018; //tp1e_loc_e
    sPAR[59]=0.012; //tp2a_loc_a
    sPAR[60]=0.012; //tp2b_loc_b
    sPAR[61]=0.012; //tp2e_loc_e
    sPAR[62]=0.2448; //tr1a_tsl_a
    sPAR[63]=0.2448; //tr1b_tsl_b
    sPAR[64]=0.2448; //tr1e_tsl_e
    sPAR[65]=1.98; //tr2a_i_itxn_a
    sPAR[66]=0.0001848; //tr2a_txn_a
    sPAR[67]=4.272e-05; //tr2b_txn_b
    sPAR[68]=3.048e-05; //tr2e_txn_e
    sPAR[69]=0.0168; //tr3a_mdeg_a
    sPAR[70]=0.0168; //tr3b_mdeg_b
    sPAR[71]=0.0168; //tr3e_mdeg_e
    X[0]=0.001; //IKK
    X[1]=0.0; //IkBaIKK
    X[2]=0.0; //IkBaIKKNFkB
    X[3]=0.06; //IkBaNFkB_cytoplasm
    X[4]=0.0; //IkBaNFkB_nucleus
    X[5]=0.0; //IkBa_cytoplasm
    X[6]=0.0; //IkBa_mRNA
    X[7]=0.0; //IkBa_nucleus
    X[8]=0.0; //IkBbIKK
    X[9]=0.0; //IkBbIKKNFkB
    X[10]=0.03; //IkBbNFkB_cytoplasm
    X[11]=0.0; //IkBbNFkB_nucleus
    X[12]=0.0; //IkBb_cytoplasm
    X[13]=0.0; //IkBb_mRNA
    X[14]=0.0; //IkBb_nucleus
    X[15]=0.0; //IkBeIKK
    X[16]=0.0; //IkBeIKKNFkB
    X[17]=0.01; //IkBeNFkB_cytoplasm
    X[18]=0.0; //IkBeNFkB_nucleus
    X[19]=0.0; //IkBe_cytoplasm
    X[20]=0.0; //IkBe_mRNA
    X[21]=0.0; //IkBe_nucleus
    X[22]=0.0; //NFkB_cytoplasm
    X[23]=0.0; //NFkB_nucleus

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
