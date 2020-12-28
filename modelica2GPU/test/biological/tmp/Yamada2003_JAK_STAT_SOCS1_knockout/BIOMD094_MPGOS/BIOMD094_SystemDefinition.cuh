
#ifndef BIOMD094_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD094_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[1]=(sPAR[0] * ((sPAR[64] * (X[0] * X[16])) + ((sPAR[21] * X[2]) + (X[1] * (((-(sPAR[65])) * X[13]) - sPAR[20])))));
    F[6]=(sPAR[0] * ((sPAR[52] * (X[18] * X[9])) + ((sPAR[62] * (X[19] * X[5])) + ((sPAR[15] * X[7]) + (((((-(sPAR[18])) - sPAR[57]) - sPAR[14]) * X[6]) + (((-(sPAR[53])) * (X[20] * X[6])) - (sPAR[59] * X[6])))))));
    F[8]=(sPAR[0] * ((sPAR[51] * X[7]) + ((sPAR[54] * (X[18] * X[11])) + ((((-(sPAR[16])) - sPAR[55]) * X[8]) + ((sPAR[19] * X[7]) - (sPAR[63] * (X[19] * X[8])))))));
    F[0]=0.0;
    F[10]=(sPAR[0] * ((sPAR[48] * (X[20] * X[9])) + ((sPAR[61] * (X[19] * X[11])) + ((sPAR[13] * X[7]) + (((((-(sPAR[12])) - sPAR[17]) - sPAR[56]) * X[10]) - (sPAR[49] * (X[18] * X[10])))))));
    F[31]=(sPAR[71] * ((sPAR[38] * (X[14] * X[30])) + (((-(sPAR[8])) - sPAR[39]) * X[31])));
    F[25]=(sPAR[0] * ((sPAR[30] * (X[15] * X[24])) + (((-(sPAR[3])) - sPAR[31]) * X[25])));
    F[7]=((sPAR[0] * ((sPAR[49] * (X[18] * X[10])) + ((sPAR[53] * (X[20] * X[6])) + ((sPAR[63] * (X[19] * X[8])) + ((((-(sPAR[13])) - sPAR[15]) - sPAR[19]) * X[7]))))) + (((-(sPAR[71])) * (sPAR[50] * X[7])) - (sPAR[0] * (sPAR[51] * X[7]))));
    F[9]=(sPAR[0] * ((sPAR[46] * (X[19] * X[4])) + ((sPAR[12] * X[10]) + ((sPAR[14] * X[6]) + (((((-(sPAR[60])) * X[9]) - (sPAR[48] * (X[20] * X[9]))) - (sPAR[52] * (X[18] * X[9]))) - (sPAR[10] * X[9]))))));
    F[19]=((sPAR[0] * (sPAR[43] * X[32])) + ((sPAR[71] * (sPAR[50] * X[7])) + (sPAR[0] * ((sPAR[59] * X[6]) + ((sPAR[10] * X[9]) + ((sPAR[17] * X[10]) + ((sPAR[18] * X[6]) + ((sPAR[19] * X[7]) + (((X[19] * ((((-(sPAR[46])) * X[4]) - (sPAR[62] * X[5])) - sPAR[45])) - (sPAR[61] * (X[19] * X[11]))) - (sPAR[63] * (X[19] * X[8])))))))))));
    F[32]=((sPAR[71] * (sPAR[42] * X[33])) - (sPAR[0] * (sPAR[44] * X[32])));
    F[33]=((-(sPAR[71])) * (sPAR[42] * X[33]));
    F[27]=(sPAR[71] * ((sPAR[39] * X[31]) + ((sPAR[40] * (X[26] * X[28])) - (sPAR[9] * X[27]))));
    F[26]=(sPAR[71] * ((sPAR[36] * X[29]) + ((sPAR[9] * X[27]) + (X[26] * (((-(sPAR[40])) * X[28]) - sPAR[41])))));
    F[29]=(sPAR[71] * ((sPAR[35] * (X[14] * X[28])) + (((-(sPAR[6])) - sPAR[36]) * X[29])));
    F[14]=(sPAR[71] * ((sPAR[36] * X[29]) + ((sPAR[39] * X[31]) + ((sPAR[6] * X[29]) + ((sPAR[8] * X[31]) + (X[14] * (((-(sPAR[38])) * X[30]) - (sPAR[35] * X[28]))))))));
    F[28]=(sPAR[71] * ((-2.0 * ((sPAR[34] * pow(X[28],2.0)) - (sPAR[5] * X[30]))) + ((sPAR[6] * X[29]) + ((sPAR[9] * X[27]) + (((-(sPAR[40])) * (X[26] * X[28])) - (sPAR[35] * (X[14] * X[28])))))));
    F[30]=((sPAR[0] * (sPAR[33] * X[24])) + (sPAR[71] * ((sPAR[34] * pow(X[28],2.0)) + ((sPAR[8] * X[31]) + (((-(sPAR[38])) * (X[14] * X[30])) - (sPAR[5] * X[30]))))));
    F[21]=(sPAR[0] * ((sPAR[31] * X[25]) + ((sPAR[32] * (X[20] * X[22])) - (sPAR[4] * X[21]))));
    F[23]=(sPAR[0] * ((sPAR[28] * (X[15] * X[22])) + (((-(sPAR[2])) - sPAR[29]) * X[23])));
    F[15]=(sPAR[0] * ((sPAR[29] * X[23]) + ((sPAR[31] * X[25]) + ((sPAR[2] * X[23]) + ((sPAR[3] * X[25]) + (X[15] * (((-(sPAR[30])) * X[24]) - (sPAR[28] * X[22]))))))));
    F[5]=(sPAR[0] * ((sPAR[70] * (X[4] * X[18])) + ((sPAR[57] * X[6]) + ((((-(sPAR[25])) - sPAR[27]) * X[5]) + ((sPAR[18] * X[6]) - (sPAR[62] * (X[19] * X[5])))))));
    F[18]=((sPAR[0] * (sPAR[27] * X[5])) + ((sPAR[71] * (sPAR[50] * X[7])) + (sPAR[0] * ((sPAR[55] * X[8]) + ((sPAR[59] * X[6]) + ((sPAR[25] * X[5]) + ((sPAR[13] * X[7]) + ((sPAR[14] * X[6]) + ((sPAR[16] * X[8]) + (((((-(sPAR[70])) * (X[4] * X[18])) - (sPAR[52] * (X[18] * X[9]))) - (sPAR[49] * (X[18] * X[10]))) - (sPAR[54] * (X[18] * X[11]))))))))))));
    F[24]=(sPAR[0] * ((sPAR[69] * pow(X[22],2.0)) + ((sPAR[3] * X[25]) + ((((-(sPAR[24])) - sPAR[33]) * X[24]) - (sPAR[30] * (X[15] * X[24]))))));
    F[12]=(sPAR[0] * ((sPAR[68] * (X[4] * X[22])) - (sPAR[23] * X[12])));
    F[22]=(sPAR[0] * ((sPAR[67] * X[11]) + ((sPAR[23] * X[12]) + ((-2.0 * ((sPAR[69] * pow(X[22],2.0)) - (sPAR[24] * X[24]))) + ((sPAR[2] * X[23]) + ((sPAR[4] * X[21]) + ((((-(sPAR[68])) * (X[4] * X[22])) - (sPAR[32] * (X[20] * X[22]))) - (sPAR[28] * (X[15] * X[22])))))))));
    F[11]=(sPAR[0] * ((sPAR[66] * (X[20] * X[4])) + ((sPAR[56] * X[10]) + ((((-(sPAR[22])) - sPAR[67]) * X[11]) + ((sPAR[16] * X[8]) + ((sPAR[17] * X[10]) + (((-(sPAR[61])) * (X[19] * X[11])) - (sPAR[54] * (X[18] * X[11])))))))));
    F[20]=((sPAR[0] * (sPAR[29] * X[23])) + ((sPAR[71] * ((sPAR[41] * X[26]) + (sPAR[50] * X[7]))) + (sPAR[0] * ((sPAR[55] * X[8]) + ((sPAR[22] * X[11]) + ((sPAR[4] * X[21]) + ((sPAR[12] * X[10]) + ((sPAR[15] * X[7]) + (((X[20] * (((-(sPAR[66])) * X[4]) - (sPAR[48] * X[9]))) - (sPAR[32] * (X[20] * X[22]))) - (sPAR[53] * (X[20] * X[6])))))))))));
    F[4]=(sPAR[0] * ((sPAR[58] * X[3]) + ((sPAR[67] * X[11]) + ((sPAR[60] * X[9]) + ((sPAR[22] * X[11]) + ((sPAR[23] * X[12]) + ((sPAR[25] * X[5]) + ((sPAR[10] * X[9]) + (((((-(sPAR[68])) * (X[4] * X[22])) - (sPAR[46] * (X[19] * X[4]))) - (sPAR[70] * (X[4] * X[18]))) - (sPAR[66] * (X[20] * X[4])))))))))));
    F[3]=((sPAR[0] * ((sPAR[47] * pow(X[2],2.0)) + ((sPAR[27] * X[5]) - (sPAR[11] * X[3])))) + ((sPAR[71] * (sPAR[50] * X[7])) + (sPAR[0] * ((sPAR[55] * X[8]) + ((sPAR[59] * X[6]) - (sPAR[58] * X[3]))))));
    F[2]=((sPAR[0] * ((sPAR[37] * (X[0] * X[17])) + ((sPAR[65] * (X[1] * X[13])) + (((-(sPAR[21])) - sPAR[7]) * X[2])))) + (-2.0 * (sPAR[0] * ((sPAR[47] * pow(X[2],2.0)) - (sPAR[11] * X[3])))));
    F[17]=(sPAR[0] * ((sPAR[26] * (X[16] * X[13])) + ((sPAR[7] * X[2]) + (((-(sPAR[37])) * (X[0] * X[17])) - (sPAR[1] * X[17])))));
    F[13]=((-(sPAR[0])) * ((sPAR[26] * (X[16] * X[13])) + ((sPAR[65] * (X[1] * X[13])) + (((-(sPAR[21])) * X[2]) - (sPAR[1] * X[17])))));
    F[16]=((-(sPAR[0])) * ((sPAR[26] * (X[16] * X[13])) + ((sPAR[64] * (X[0] * X[16])) + (((-(sPAR[20])) * X[1]) - (sPAR[1] * X[17])))));

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
    sPAR[0]=1.0; //cytoplasm
    sPAR[1]=0.05; //kb_v1
    sPAR[2]=0.2; //kb_v11
    sPAR[3]=0.2; //kb_v13
    sPAR[4]=0.2; //kb_v15
    sPAR[5]=0.1; //kb_v17
    sPAR[6]=0.2; //kb_v18
    sPAR[7]=0.02; //kb_v2
    sPAR[8]=0.2; //kb_v20
    sPAR[9]=0.2; //kb_v22
    sPAR[10]=0.1; //kb_v29
    sPAR[11]=0.2; //kb_v3
    sPAR[12]=0.8; //kb_v30
    sPAR[13]=0.2; //kb_v31
    sPAR[14]=0.2; //kb_v34
    sPAR[15]=0.8; //kb_v35
    sPAR[16]=0.2; //kb_v36
    sPAR[17]=0.1; //kb_v42
    sPAR[18]=0.1; //kb_v43
    sPAR[19]=0.1; //kb_v44
    sPAR[20]=0.02; //kb_v45
    sPAR[21]=0.05; //kb_v46
    sPAR[22]=0.8; //kb_v5
    sPAR[23]=0.5; //kb_v7
    sPAR[24]=0.1; //kb_v8
    sPAR[25]=0.2; //kb_v9
    sPAR[26]=0.1; //kf_v1
    sPAR[27]=0.003; //kf_v10
    sPAR[28]=0.001; //kf_v11
    sPAR[29]=0.003; //kf_v12
    sPAR[30]=0.001; //kf_v13
    sPAR[31]=0.003; //kf_v14
    sPAR[32]=2e-07; //kf_v15
    sPAR[33]=0.005; //kf_v16
    sPAR[34]=0.02; //kf_v17
    sPAR[35]=0.001; //kf_v18
    sPAR[36]=0.005; //kf_v19
    sPAR[37]=0.02; //kf_v2
    sPAR[38]=0.001; //kf_v20
    sPAR[39]=0.005; //kf_v21
    sPAR[40]=2e-07; //kf_v22
    sPAR[41]=0.05; //kf_v23
    sPAR[42]=0.001; //kf_v25
    sPAR[43]=0.01; //kf_v26
    sPAR[44]=0.0005; //kf_v27
    sPAR[45]=0.0005; //kf_v28
    sPAR[46]=0.02; //kf_v29
    sPAR[47]=0.04; //kf_v3
    sPAR[48]=0.008; //kf_v30
    sPAR[49]=0.001; //kf_v31
    sPAR[50]=0.003; //kf_v32
    sPAR[51]=0.0005; //kf_v33
    sPAR[52]=0.001; //kf_v34
    sPAR[53]=0.008; //kf_v35
    sPAR[54]=0.001; //kf_v36
    sPAR[55]=0.003; //kf_v37
    sPAR[56]=0.0005; //kf_v38
    sPAR[57]=0.0005; //kf_v39
    sPAR[58]=0.005; //kf_v4
    sPAR[59]=0.003; //kf_v40
    sPAR[60]=0.0005; //kf_v41
    sPAR[61]=0.02; //kf_v42
    sPAR[62]=0.02; //kf_v43
    sPAR[63]=0.02; //kf_v44
    sPAR[64]=0.02; //kf_v45
    sPAR[65]=0.1; //kf_v46
    sPAR[66]=0.008; //kf_v5
    sPAR[67]=0.4; //kf_v6
    sPAR[68]=0.005; //kf_v7
    sPAR[69]=0.02; //kf_v8
    sPAR[70]=0.001; //kf_v9
    sPAR[71]=1.0; //nucleus
    X[0]=10.0; //IFN
    X[1]=0.0; //IFNR
    X[2]=0.0; //IFNRJ
    X[3]=0.0; //IFNRJ2
    X[4]=0.0; //IFNRJ2_star
    X[5]=0.0; //IFNRJ2_star_SHP2
    X[6]=0.0; //IFNRJ2_star_SHP2_SOCS1
    X[7]=0.0; //IFNRJ2_star_SHP2_SOCS1_STAT1c
    X[8]=0.0; //IFNRJ2_star_SHP2_STAT1c
    X[9]=0.0; //IFNRJ2_star_SOCS1
    X[10]=0.0; //IFNRJ2_star_SOCS1_STAT1c
    X[11]=0.0; //IFNRJ2_star_STAT1c
    X[12]=0.0; //IFNRJ2_star_STAT1c_star
    X[13]=10.0; //JAK
    X[14]=60.0; //PPN
    X[15]=50.0; //PPX
    X[16]=10.0; //R
    X[17]=0.0; //RJ
    X[18]=100.0; //SHP2
    X[19]=0.0; //SOCS1
    X[20]=1000.0; //STAT1c
    X[21]=0.0; //STAT1c_STAT1c_star
    X[22]=0.0; //STAT1c_star
    X[23]=0.0; //STAT1c_star_PPX
    X[24]=0.0; //STAT1c_star_STAT1c_star
    X[25]=0.0; //STAT1c_star_STAT1c_star_PPX
    X[26]=0.0; //STAT1n
    X[27]=0.0; //STAT1n_STAT1n_star
    X[28]=0.0; //STAT1n_star
    X[29]=0.0; //STAT1n_star_PPN
    X[30]=0.0; //STAT1n_star_STAT1n_star
    X[31]=0.0; //STAT1n_star_STAT1n_star_PPN
    X[32]=0.0; //mRNAc
    X[33]=0.0; //mRNAn

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif