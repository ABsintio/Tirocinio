
#ifndef BIOMD146_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD146_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[3]=(10.0 * X[15]);
    ACC[5]=(0.1 * X[33]);
    ACC[2]=(0.8333333333333334 * X[12]);
    ACC[0]=(10.0 * X[3]);
    ACC[1]=(0.1 * X[7]);
    ACC[4]=(2.5 * (X[22] + (X[23] + (X[24] + (X[25] + (X[26] + X[27]))))));
    F[17]=0.0;
    F[13]=0.0;
    F[4]=0.0;
    F[35]=(sPAR[28] * ((sPAR[50] * X[22]) - (sPAR[63] * X[35])));
    F[18]=(sPAR[28] * ((sPAR[24] * (X[16] / (sPAR[15] + X[16]))) - (sPAR[45] * (X[15] * (X[18] / (sPAR[14] + X[18]))))));
    F[34]=(sPAR[28] * ((sPAR[21] * (X[33] / (sPAR[0] + X[33]))) + ((sPAR[64] * X[27]) - (sPAR[51] * (X[22] * X[34])))));
    F[33]=(sPAR[28] * ((sPAR[55] * X[32]) + (((-(sPAR[68])) * (X[8] * X[33])) - (sPAR[21] * (X[33] / (sPAR[0] + X[33]))))));
    F[32]=(sPAR[28] * ((sPAR[54] * X[25]) + ((sPAR[68] * (X[8] * X[33])) - (X[32] * (sPAR[55] + (sPAR[67] * X[22]))))));
    F[31]=(sPAR[28] * ((sPAR[30] * (X[32] * (X[30] / (sPAR[1] + X[30])))) - (sPAR[22] * (X[31] / (sPAR[2] + X[31])))));
    F[30]=(sPAR[28] * ((sPAR[22] * (X[31] / (sPAR[2] + X[31]))) - (sPAR[30] * (X[32] * (X[30] / (sPAR[1] + X[30]))))));
    F[29]=(sPAR[28] * ((sPAR[31] * (X[31] * (X[28] / (sPAR[3] + X[28])))) - (sPAR[32] * ((X[3] + X[4]) * (X[29] / (sPAR[4] + X[29]))))));
    F[28]=(sPAR[28] * ((sPAR[32] * ((X[3] + X[4]) * (X[29] / (sPAR[4] + X[29])))) - (sPAR[31] * (X[31] * (X[28] / (sPAR[3] + X[28]))))));
    F[27]=(sPAR[28] * ((sPAR[51] * (X[22] * X[34])) + ((sPAR[65] * X[26]) + (((-(sPAR[52])) - sPAR[64]) * X[27]))));
    F[26]=(sPAR[28] * ((sPAR[52] * X[27]) + ((sPAR[66] * X[25]) + (X[26] * (((-(sPAR[53])) * X[8]) - sPAR[65])))));
    F[25]=(sPAR[28] * ((sPAR[53] * (X[26] * X[8])) + ((sPAR[67] * (X[32] * X[22])) + (((-(sPAR[54])) - sPAR[66]) * X[25]))));
    F[24]=(sPAR[28] * ((sPAR[43] * X[23]) + ((sPAR[60] * (X[22] * X[15])) + (((-(sPAR[44])) - sPAR[59]) * X[24]))));
    F[23]=(sPAR[28] * ((sPAR[42] * (X[22] * X[14])) + ((sPAR[59] * X[24]) + (((-(sPAR[43])) - sPAR[58]) * X[23]))));
    F[21]=(sPAR[28] * ((sPAR[38] * pow(X[20],2.0)) + ((sPAR[27] * (X[22] / (sPAR[20] + X[22]))) + ((sPAR[62] * X[22]) + (((-(sPAR[47])) - sPAR[57]) * X[21])))));
    F[20]=((sPAR[28] * ((sPAR[29] * (X[19] * X[9])) - (sPAR[56] * X[20]))) + (-2.0 * (sPAR[28] * ((sPAR[38] * pow(X[20],2.0)) - (sPAR[57] * X[21])))));
    F[22]=(sPAR[28] * ((sPAR[47] * X[21]) + ((sPAR[54] * X[25]) + ((sPAR[44] * X[24]) + ((sPAR[64] * X[27]) + ((sPAR[58] * X[23]) + ((sPAR[63] * X[35]) + ((((((X[22] * (((-(sPAR[51])) * X[34]) - sPAR[50])) - (sPAR[60] * (X[22] * X[15]))) - (sPAR[62] * X[22])) - (sPAR[27] * (X[22] / (sPAR[20] + X[22])))) - (sPAR[42] * (X[22] * X[14]))) - (sPAR[67] * (X[32] * X[22]))))))))));
    F[19]=(sPAR[28] * ((sPAR[56] * X[20]) - (sPAR[29] * (X[19] * X[9]))));
    F[16]=(sPAR[28] * ((sPAR[45] * (X[15] * (X[18] / (sPAR[14] + X[18])))) + ((sPAR[61] * X[2]) + (X[16] * (((-(sPAR[46])) * X[0]) - (sPAR[24] / (sPAR[15] + X[16])))))));
    F[15]=(sPAR[28] * ((sPAR[44] * X[24]) + (((-(sPAR[60])) * (X[22] * X[15])) - (sPAR[23] * (X[15] / (sPAR[13] + X[15]))))));
    F[14]=(sPAR[28] * ((sPAR[23] * (X[15] / (sPAR[13] + X[15]))) + ((sPAR[58] * X[23]) - (sPAR[42] * (X[22] * X[14])))));
    F[12]=(sPAR[28] * ((sPAR[35] * (X[29] * (X[11] / ((sPAR[7] * (1.0 + (X[10] / sPAR[5]))) + X[11])))) - (sPAR[36] * (X[17] * (X[12] / ((sPAR[8] * (1.0 + ((X[11] / sPAR[6]) + ((X[3] / sPAR[17]) + (X[3] / sPAR[19]))))) + X[12]))))));
    F[11]=(sPAR[28] * ((sPAR[33] * (X[29] * (X[10] / ((sPAR[5] * (1.0 + (X[11] / sPAR[7]))) + X[10])))) + ((X[17] * ((sPAR[36] * (X[12] / ((sPAR[8] * (1.0 + ((X[11] / sPAR[6]) + ((X[3] / sPAR[17]) + (X[3] / sPAR[19]))))) + X[12]))) - (sPAR[34] * (X[11] / ((sPAR[6] * (1.0 + ((X[12] / sPAR[8]) + ((X[1] / sPAR[17]) + (X[3] / sPAR[19]))))) + X[11]))))) - (sPAR[35] * (X[29] * (X[11] / ((sPAR[7] * (1.0 + (X[10] / sPAR[5]))) + X[11])))))));
    F[10]=(sPAR[28] * ((sPAR[34] * (X[17] * (X[11] / ((sPAR[6] * (1.0 + ((X[12] / sPAR[8]) + ((X[1] / sPAR[17]) + (X[3] / sPAR[19]))))) + X[11])))) - (sPAR[33] * (X[29] * (X[10] / ((sPAR[5] * (1.0 + (X[11] / sPAR[7]))) + X[10]))))));
    F[9]=(sPAR[28] * ((sPAR[56] * X[20]) - (sPAR[29] * (X[19] * X[9]))));
    F[8]=(sPAR[28] * ((sPAR[55] * X[32]) + ((sPAR[66] * X[25]) + (((-(sPAR[53])) * (X[26] * X[8])) - (sPAR[68] * (X[8] * X[33]))))));
    F[7]=(sPAR[28] * ((sPAR[40] * (X[12] * (X[6] / ((sPAR[11] * (1.0 + (X[5] / sPAR[9]))) + X[6])))) - (sPAR[41] * (X[13] * (X[7] / ((sPAR[12] * (1.0 + (X[6] / sPAR[10]))) + X[7]))))));
    F[6]=(sPAR[28] * ((sPAR[37] * (X[12] * (X[5] / ((sPAR[9] * (1.0 + (X[6] / sPAR[11]))) + X[5])))) + ((X[13] * ((sPAR[41] * (X[7] / ((sPAR[12] * (1.0 + (X[6] / sPAR[10]))) + X[7]))) - (sPAR[39] * (X[6] / ((sPAR[10] * (1.0 + (X[7] / sPAR[12]))) + X[6]))))) - (sPAR[40] * (X[12] * (X[6] / ((sPAR[11] * (1.0 + (X[5] / sPAR[9]))) + X[6])))))));
    F[5]=(sPAR[28] * ((sPAR[39] * (X[13] * (X[6] / ((sPAR[10] * (1.0 + (X[7] / sPAR[12]))) + X[6])))) - (sPAR[37] * (X[12] * (X[5] / ((sPAR[9] * (1.0 + (X[6] / sPAR[11]))) + X[5]))))));
    F[3]=(sPAR[28] * ((sPAR[26] * (X[1] / ((sPAR[18] * (1.0 + (X[2] / sPAR[16]))) + X[1]))) - (sPAR[49] * (X[17] * (X[3] / ((sPAR[19] * (1.0 + ((X[11] / sPAR[6]) + ((X[12] / sPAR[8]) + (X[1] / sPAR[17]))))) + X[3]))))));
    F[1]=(sPAR[28] * ((sPAR[25] * (X[2] / ((sPAR[16] * (1.0 + (X[1] / sPAR[18]))) + X[2]))) + ((X[17] * ((sPAR[49] * (X[3] / ((sPAR[19] * (1.0 + ((X[11] / sPAR[6]) + ((X[12] / sPAR[8]) + (X[1] / sPAR[17]))))) + X[3]))) - (sPAR[48] * (X[1] / ((sPAR[17] * (1.0 + ((X[11] / sPAR[6]) + ((X[12] / sPAR[8]) + (X[3] / sPAR[19]))))) + X[1]))))) - (sPAR[26] * (X[1] / ((sPAR[18] * (1.0 + (X[2] / sPAR[16]))) + X[1]))))));
    F[2]=(sPAR[28] * ((sPAR[46] * (X[16] * X[0])) + ((sPAR[48] * (X[17] * (X[1] / ((sPAR[17] * (1.0 + ((X[11] / sPAR[6]) + ((X[12] / sPAR[8]) + (X[3] / sPAR[19]))))) + X[1])))) - (X[2] * (sPAR[61] + (sPAR[25] / ((sPAR[16] * (1.0 + (X[1] / sPAR[18]))) + X[2])))))));
    F[0]=(sPAR[28] * ((sPAR[61] * X[2]) - (sPAR[46] * (X[16] * X[0]))));

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
    ACC[0]=0.0; //AktPP_percent
    ACC[1]=0.0; //ERKPP_percent
    ACC[2]=0.0; //MEKPP_percent
    ACC[3]=0.0; //PI3Kstar_percent
    ACC[4]=0.0; //RP_percent
    ACC[5]=0.0; //ShP_percent
    sPAR[0]=340.0; //K10
    sPAR[1]=0.181; //K11
    sPAR[2]=0.0571; //K12
    sPAR[3]=11.7; //K13
    sPAR[4]=8.07; //K14
    sPAR[5]=317.0; //K15
    sPAR[6]=2200.0; //K16
    sPAR[7]=317.0; //K17
    sPAR[8]=60.0; //K18
    sPAR[9]=146000.0; //K19
    sPAR[10]=160.0; //K20
    sPAR[11]=146000.0; //K21
    sPAR[12]=60.0; //K22
    sPAR[13]=3680.0; //K26
    sPAR[14]=39.1; //K27
    sPAR[15]=9.02; //K28
    sPAR[16]=80000.0; //K30
    sPAR[17]=4.35; //K31
    sPAR[18]=80000.0; //K32
    sPAR[19]=12.0; //K33
    sPAR[20]=50.0; //K4
    sPAR[21]=0.0154; //V10
    sPAR[22]=0.289; //V12
    sPAR[23]=2620.0; //V26
    sPAR[24]=17000.0; //V28
    sPAR[25]=20000.0; //V30
    sPAR[26]=20000.0; //V32
    sPAR[27]=62.5; //V4
    sPAR[28]=1.0; //compartment_0000001
    sPAR[29]=0.0012; //k1
    sPAR[30]=0.222; //k11
    sPAR[31]=1.53; //k13
    sPAR[32]=0.00673; //k14
    sPAR[33]=3.5; //k15
    sPAR[34]=0.058; //k16
    sPAR[35]=2.9; //k17
    sPAR[36]=0.058; //k18
    sPAR[37]=9.5; //k19
    sPAR[38]=0.01; //k2
    sPAR[39]=0.3; //k20
    sPAR[40]=16.0; //k21
    sPAR[41]=0.27; //k22
    sPAR[42]=0.1; //k23
    sPAR[43]=9.85; //k24
    sPAR[44]=45.8; //k25
    sPAR[45]=16.9; //k27
    sPAR[46]=507.0; //k29
    sPAR[47]=1.0; //k3
    sPAR[48]=0.107; //k31
    sPAR[49]=0.211; //k33
    sPAR[50]=0.001; //k34
    sPAR[51]=0.1; //k5
    sPAR[52]=20.0; //k6
    sPAR[53]=60.0; //k7
    sPAR[54]=2040.0; //k8
    sPAR[55]=40.8; //k9
    sPAR[56]=0.00076; //k_1
    sPAR[57]=0.1; //k_2
    sPAR[58]=2.0; //k_23
    sPAR[59]=0.0985; //k_24
    sPAR[60]=0.047; //k_25
    sPAR[61]=234.0; //k_29
    sPAR[62]=0.01; //k_3
    sPAR[63]=0.0; //k_34
    sPAR[64]=1.0; //k_5
    sPAR[65]=5.0; //k_6
    sPAR[66]=546.0; //k_7
    sPAR[67]=15700.0; //k_8
    sPAR[68]=0.0; //k_9
    X[0]=10.0; //Akt
    X[1]=0.0; //AktPIP
    X[2]=0.0; //AktPIP3
    X[3]=0.0; //AktPIPP
    X[4]=7.0; //E
    X[5]=1000.0; //ERK
    X[6]=0.0; //ERKP
    X[7]=0.0; //ERKPP
    X[8]=10.0; //GS
    X[9]=330.0; //HRG
    X[10]=120.0; //MEK
    X[11]=0.0; //MEKP
    X[12]=0.0; //MEKPP
    X[13]=2.4; //MKP3
    X[14]=10.0; //PI3K
    X[15]=0.0; //PI3Kstar
    X[16]=0.0; //PIP3
    X[17]=11.4; //PP2A
    X[18]=800.0; //P_I
    X[19]=80.0; //R
    X[20]=0.0; //RHRG
    X[21]=0.0; //RHRG2
    X[22]=0.0; //RP
    X[23]=0.0; //RPI3K
    X[24]=0.0; //RPI3Kstar
    X[25]=0.0; //RShGS
    X[26]=0.0; //RShP
    X[27]=0.0; //RShc
    X[28]=100.0; //Raf
    X[29]=0.0; //Rafstar
    X[30]=120.0; //RasGDP
    X[31]=0.0; //RasGTP
    X[32]=0.0; //ShGS
    X[33]=0.0; //ShP
    X[34]=1000.0; //Shc
    X[35]=0.0; //internalization

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
