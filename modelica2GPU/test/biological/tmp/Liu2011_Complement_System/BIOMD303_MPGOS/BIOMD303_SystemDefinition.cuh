
#ifndef BIOMD303_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD303_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[0]=X[38];
    F[17]=((-(sPAR[0])) * ((sPAR[6] * (X[30] * X[17])) + ((sPAR[51] * (X[21] * X[17])) + (((-(sPAR[52])) * X[23]) - (sPAR[7] * X[31])))));
    F[30]=(sPAR[0] * ((sPAR[7] * X[31]) - (sPAR[6] * (X[30] * X[17]))));
    F[31]=(sPAR[0] * ((sPAR[6] * (X[30] * X[17])) + ((sPAR[9] * X[32]) + ((sPAR[30] * X[33]) + ((sPAR[66] * X[11]) + ((((-(sPAR[8])) * (X[31] * X[0])) - (sPAR[65] * (X[8] * X[31]))) - (X[31] * (sPAR[7] + (sPAR[29] * X[28])))))))));
    F[7]=((-(sPAR[0])) * (function_1(sPAR[10],X[32],X[7],sPAR[11]) + (function_1(sPAR[33],X[36],X[7],sPAR[34]) + (function_1(sPAR[18],X[26],X[7],sPAR[19]) + (function_1(sPAR[55],X[24],X[7],sPAR[56]) + (function_1(sPAR[39],X[34],X[7],sPAR[40]) + (function_1(sPAR[61],X[25],X[7],sPAR[62]) + (function_1(sPAR[47],X[35],X[7],sPAR[48]) + function_1(sPAR[81],X[20],X[7],sPAR[82])))))))));
    F[13]=(sPAR[0] * (function_1(sPAR[10],X[32],X[7],sPAR[11]) + (function_1(sPAR[33],X[36],X[7],sPAR[34]) + (function_1(sPAR[18],X[26],X[7],sPAR[19]) + (function_1(sPAR[55],X[24],X[7],sPAR[56]) + (function_1(sPAR[39],X[34],X[7],sPAR[40]) + (function_1(sPAR[61],X[25],X[7],sPAR[62]) + (function_1(sPAR[47],X[35],X[7],sPAR[48]) + function_1(sPAR[81],X[20],X[7],sPAR[82])))))))));
    F[14]=(sPAR[0] * (function_1(sPAR[10],X[32],X[7],sPAR[11]) + (function_1(sPAR[33],X[36],X[7],sPAR[34]) + (function_1(sPAR[18],X[26],X[7],sPAR[19]) + (function_1(sPAR[55],X[24],X[7],sPAR[56]) + ((sPAR[72] * (X[15] * X[8])) + (function_1(sPAR[39],X[34],X[7],sPAR[40]) + (function_1(sPAR[61],X[25],X[7],sPAR[62]) + (function_1(sPAR[47],X[35],X[7],sPAR[48]) + (function_1(sPAR[81],X[20],X[7],sPAR[82]) + ((sPAR[23] * X[15]) + ((sPAR[71] * X[9]) + (((-(sPAR[70])) * (X[8] * X[14])) - (sPAR[22] * (X[14] * X[2])))))))))))))));
    F[1]=((-(sPAR[0])) * (function_1(sPAR[12],X[32],X[1],sPAR[13]) + (function_1(sPAR[35],X[36],X[1],sPAR[36]) + (function_1(sPAR[20],X[26],X[1],sPAR[21]) + (function_1(sPAR[57],X[24],X[1],sPAR[58]) + (function_1(sPAR[41],X[34],X[1],sPAR[42]) + (function_1(sPAR[63],X[25],X[1],sPAR[64]) + (function_1(sPAR[49],X[35],X[1],sPAR[50]) + function_1(sPAR[83],X[20],X[1],sPAR[84])))))))));
    F[0]=((-(sPAR[0])) * ((sPAR[8] * (X[31] * X[0])) + ((sPAR[53] * (X[23] * X[0])) + ((sPAR[37] * (X[33] * X[0])) + ((sPAR[45] * (X[36] * X[0])) + (((((-(sPAR[54])) * X[24]) - (sPAR[46] * X[35])) - (sPAR[38] * X[34])) - (sPAR[9] * X[32])))))));
    F[32]=(sPAR[0] * ((sPAR[8] * (X[31] * X[0])) - (sPAR[9] * X[32])));
    F[2]=(sPAR[0] * (function_1(sPAR[12],X[32],X[1],sPAR[13]) + (function_1(sPAR[35],X[36],X[1],sPAR[36]) + (function_1(sPAR[20],X[26],X[1],sPAR[21]) + (function_1(sPAR[57],X[24],X[1],sPAR[58]) + ((sPAR[72] * (X[15] * X[8])) + (function_1(sPAR[41],X[34],X[1],sPAR[42]) + (function_1(sPAR[63],X[25],X[1],sPAR[64]) + (function_1(sPAR[49],X[35],X[1],sPAR[50]) + (function_1(sPAR[83],X[20],X[1],sPAR[84]) + ((sPAR[23] * X[15]) - (sPAR[22] * (X[14] * X[2])))))))))))));
    F[3]=(sPAR[0] * (function_1(sPAR[12],X[32],X[1],sPAR[13]) + (function_1(sPAR[35],X[36],X[1],sPAR[36]) + (function_1(sPAR[20],X[26],X[1],sPAR[21]) + (function_1(sPAR[57],X[24],X[1],sPAR[58]) + (function_1(sPAR[41],X[34],X[1],sPAR[42]) + (function_1(sPAR[63],X[25],X[1],sPAR[64]) + (function_1(sPAR[49],X[35],X[1],sPAR[50]) + function_1(sPAR[83],X[20],X[1],sPAR[84])))))))));
    F[15]=(sPAR[0] * ((sPAR[22] * (X[14] * X[2])) + ((X[15] * ((sPAR[24] * X[4]) - sPAR[23])) + ((sPAR[28] * X[39]) + ((X[15] * (((-(sPAR[27])) - (sPAR[24] * X[4])) - (sPAR[69] * X[8]))) + ((sPAR[74] * X[16]) + ((X[15] * (((-(sPAR[72])) * X[8]) - sPAR[3])) - (sPAR[73] * (X[15] * X[8])))))))));
    F[4]=((-(sPAR[0])) * (sPAR[24] * (X[15] * X[4])));
    F[5]=(sPAR[0] * (sPAR[24] * (X[15] * X[4])));
    F[6]=(sPAR[0] * ((sPAR[24] * (X[15] * X[4])) + ((sPAR[26] * X[38]) + (((-(sPAR[25])) - sPAR[2]) * X[6]))));
    F[38]=(sPAR[0] * ((sPAR[25] * X[6]) - (sPAR[26] * X[38])));
    F[29]=((-(sPAR[0])) * ((sPAR[31] * (X[33] * X[29])) + ((sPAR[16] * (X[21] * X[29])) + ((sPAR[59] * (X[23] * X[29])) + ((sPAR[43] * (X[34] * X[29])) + ((sPAR[79] * (X[19] * X[29])) + ((((((-(sPAR[60])) * X[25]) - (sPAR[80] * X[20])) - (sPAR[32] * X[36])) - (sPAR[44] * X[35])) - (sPAR[17] * X[26]))))))));
    F[39]=(sPAR[0] * ((sPAR[27] * X[15]) + ((sPAR[76] * X[40]) + (X[39] * (((-(sPAR[75])) * X[8]) - sPAR[28])))));
    F[18]=(sPAR[0] * ((sPAR[15] * X[21]) - (sPAR[14] * (X[18] * X[28]))));
    F[21]=(sPAR[0] * ((sPAR[14] * (X[18] * X[28])) + ((sPAR[17] * X[26]) + ((sPAR[52] * X[23]) + (((-(X[21])) * (sPAR[15] + (sPAR[16] * X[29]))) - (sPAR[51] * (X[21] * X[17])))))));
    F[28]=((-(sPAR[0])) * ((sPAR[29] * (X[31] * X[28])) + ((sPAR[14] * (X[18] * X[28])) + (((-(sPAR[15])) * X[21]) - (sPAR[30] * X[33])))));
    F[26]=(sPAR[0] * ((sPAR[16] * (X[21] * X[29])) - (sPAR[17] * X[26])));
    F[33]=(sPAR[0] * ((sPAR[29] * (X[31] * X[28])) + ((sPAR[32] * X[36]) + ((sPAR[38] * X[34]) + ((sPAR[5] * X[12]) + ((((-(sPAR[31])) * (X[33] * X[29])) - (sPAR[4] * (X[8] * X[33]))) - (X[33] * (sPAR[30] + (sPAR[37] * X[0])))))))));
    F[36]=(sPAR[0] * ((sPAR[31] * (X[33] * X[29])) + ((sPAR[46] * X[35]) + (X[36] * (((-(sPAR[45])) * X[0]) - sPAR[32])))));
    F[23]=(sPAR[0] * ((sPAR[51] * (X[21] * X[17])) + ((sPAR[54] * X[24]) + ((sPAR[68] * X[10]) + ((sPAR[60] * X[25]) + (((X[23] * (((-(sPAR[53])) * X[0]) - (sPAR[59] * X[29]))) - (sPAR[67] * (X[8] * X[23]))) - (sPAR[52] * X[23])))))));
    F[24]=(sPAR[0] * ((sPAR[53] * (X[23] * X[0])) - (sPAR[54] * X[24])));
    F[8]=(sPAR[0] * ((X[15] * (X[8] * (sPAR[69] + sPAR[72]))) + ((sPAR[66] * X[11]) + ((sPAR[68] * X[10]) + ((sPAR[71] * X[9]) + ((sPAR[74] * X[16]) + ((sPAR[76] * X[40]) + ((sPAR[5] * X[12]) + ((((((((((-(sPAR[75])) * (X[39] * X[8])) - (sPAR[4] * (X[8] * X[33]))) - (sPAR[65] * (X[8] * X[31]))) - (sPAR[72] * (X[15] * X[8]))) - (sPAR[69] * (X[15] * X[8]))) - (sPAR[67] * (X[8] * X[23]))) - (sPAR[70] * (X[8] * X[14]))) - (sPAR[73] * (X[15] * X[8]))) - (sPAR[1] * X[8]))))))))));
    F[11]=(sPAR[0] * ((sPAR[65] * (X[8] * X[31])) - (sPAR[66] * X[11])));
    F[10]=(sPAR[0] * ((sPAR[67] * (X[8] * X[23])) - (sPAR[68] * X[10])));
    F[41]=(sPAR[0] * (sPAR[69] * (X[15] * X[8])));
    F[9]=(sPAR[0] * ((sPAR[70] * (X[8] * X[14])) - (sPAR[71] * X[9])));
    F[16]=(sPAR[0] * ((sPAR[73] * (X[15] * X[8])) - (sPAR[74] * X[16])));
    F[40]=(sPAR[0] * ((sPAR[75] * (X[39] * X[8])) - (sPAR[76] * X[40])));
    F[34]=(sPAR[0] * ((sPAR[37] * (X[33] * X[0])) + ((sPAR[44] * X[35]) + (X[34] * (((-(sPAR[43])) * X[29]) - sPAR[38])))));
    F[12]=(sPAR[0] * ((sPAR[4] * (X[8] * X[33])) - (sPAR[5] * X[12])));
    F[25]=(sPAR[0] * ((sPAR[59] * (X[23] * X[29])) - (sPAR[60] * X[25])));
    F[35]=(sPAR[0] * ((sPAR[43] * (X[34] * X[29])) + ((sPAR[45] * (X[36] * X[0])) + (((-(sPAR[46])) - sPAR[44]) * X[35]))));
    F[19]=(sPAR[0] * ((sPAR[77] * (X[37] * X[27])) + ((sPAR[80] * X[20]) + (X[19] * (((-(sPAR[79])) * X[29]) - sPAR[78])))));
    F[27]=(sPAR[0] * ((sPAR[78] * X[19]) - (sPAR[77] * (X[37] * X[27]))));
    F[20]=(sPAR[0] * ((sPAR[79] * (X[19] * X[29])) - (sPAR[80] * X[20])));
    F[37]=(sPAR[0] * ((sPAR[78] * X[19]) - (sPAR[77] * (X[37] * X[27]))));
    F[22]=0.0;

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
    ACC[0]=0.0; //mC3
    sPAR[0]=1.0; //compartment
    sPAR[1]=0.000342266; //k1_4_27
    sPAR[2]=0.492901; //k1_4_28
    sPAR[3]=0.0470911; //k1_4_29
    sPAR[4]=0.0; //k1_4_33
    sPAR[5]=0.0; //k2_33
    sPAR[6]=0.0275999; //ka01_1
    sPAR[7]=0.0109; //ka01_2
    sPAR[8]=0.00074; //ka02_1
    sPAR[9]=0.0011; //ka02_2
    sPAR[10]=2.0; //ka03_1
    sPAR[11]=500.0; //ka03_2
    sPAR[12]=10.5; //ka04_1
    sPAR[13]=2500.0; //ka04_2
    sPAR[14]=0.091011109910329; //kb01_1
    sPAR[15]=0.0508205528375529; //kb01_2
    sPAR[16]=0.0368010796682635; //kb02_1
    sPAR[17]=0.1; //kb02_2
    sPAR[18]=66.37768073953831; //kb03_1
    sPAR[19]=829.115813389061; //kb03_2
    sPAR[20]=1.1; //kb04_1
    sPAR[21]=2000.0; //kb04_2
    sPAR[22]=0.64564661669102; //kc01_1
    sPAR[23]=0.194551104058408; //kc01_2
    sPAR[24]=0.000591152775857994; //kc02
    sPAR[25]=0.414004459949002; //kc03_1
    sPAR[26]=0.9964757224538801; //kc03_2
    sPAR[27]=0.977836567576895; //kc04_1
    sPAR[28]=0.199162432258527; //kc04_2
    sPAR[29]=7.07e-05; //kd01_1
    sPAR[30]=7.23e-05; //kd01_2
    sPAR[31]=0.0368010796682635; //kd02_1
    sPAR[32]=0.1; //kd02_2
    sPAR[33]=66.37768073953831; //kd03_1
    sPAR[34]=829.115813389061; //kd03_2
    sPAR[35]=1.1; //kd04_1
    sPAR[36]=2000.0; //kd04_2
    sPAR[37]=0.00074; //kd05_1
    sPAR[38]=0.0011; //kd05_2
    sPAR[39]=2.0; //kd06_1
    sPAR[40]=500.0; //kd06_2
    sPAR[41]=10.5; //kd07_1
    sPAR[42]=2500.0; //kd07_2
    sPAR[43]=0.0368010796682635; //kd08_1
    sPAR[44]=0.1; //kd08_2
    sPAR[45]=0.00074; //kd09_1
    sPAR[46]=0.0011; //kd09_2
    sPAR[47]=71.1705760475931; //kd10_1
    sPAR[48]=3796.22684377655; //kd10_2
    sPAR[49]=38.9625903487667; //kd11_1
    sPAR[50]=5972.30640657865; //kd11_2
    sPAR[51]=7.07e-05; //ke01_1
    sPAR[52]=0.0001; //ke01_2
    sPAR[53]=0.00074; //ke02_1
    sPAR[54]=0.0011; //ke02_2
    sPAR[55]=2.0; //ke03_1
    sPAR[56]=500.0; //ke03_2
    sPAR[57]=10.5; //ke04_1
    sPAR[58]=2500.0; //ke04_2
    sPAR[59]=0.0368010796682635; //ke05_1
    sPAR[60]=0.1; //ke05_2
    sPAR[61]=66.37768073953831; //ke06_1
    sPAR[62]=829.115813389061; //ke06_2
    sPAR[63]=1.1; //ke07_1
    sPAR[64]=2000.0; //ke07_2
    sPAR[65]=0.969998277173144; //kf01_1
    sPAR[66]=0.06902057873762101; //kf01_2
    sPAR[67]=0.969998277173144; //kf02_1
    sPAR[68]=0.06902057873762101; //kf02_2
    sPAR[69]=0.0613537204215846; //kf03
    sPAR[70]=0.613416050428938; //kf04_1
    sPAR[71]=0.983691204042155; //kf04_2
    sPAR[72]=0.980777558937884; //kf05
    sPAR[73]=0.613416050428938; //kf06_1
    sPAR[74]=0.983691204042155; //kf06_2
    sPAR[75]=0.613416050428938; //kf07_1
    sPAR[76]=0.983691204042155; //kf07_2
    sPAR[77]=0.091011109910329; //kg01_1
    sPAR[78]=0.0508205528375529; //kg01_2
    sPAR[79]=0.0368010796682635; //kg02_1
    sPAR[80]=0.1; //kg02_2
    sPAR[81]=66.37768073953831; //kg03_1
    sPAR[82]=829.115813389061; //kg03_2
    sPAR[83]=1.1; //kg04_1
    sPAR[84]=2000.0; //kg04_2
    sPAR[85]=0.000342266; //kt01
    sPAR[86]=0.492901; //kt02
    sPAR[87]=0.0470911; //kt03
    sPAR[88]=0.0; //kt04_1
    sPAR[89]=0.0; //kt04_2
    X[0]=2470.0; //C1
    X[1]=310.0; //C2
    X[2]=0.0; //C2a
    X[3]=0.0; //C2b
    X[4]=4650.0; //C3
    X[5]=0.0; //C3a
    X[6]=0.0; //C3b
    X[7]=770.0; //C4
    X[8]=260.0; //C4BP
    X[9]=0.0; //C4BP_C4b
    X[10]=0.0; //C4BP_GlcNac_LF_CRP
    X[11]=0.0; //C4BP_PC_CRP
    X[12]=0.0; //C4BP_PC_CRP_LF
    X[13]=0.0; //C4a
    X[14]=0.0; //C4b
    X[15]=0.0; //C4b_C2a
    X[16]=0.0; //C4b_C2a_C4BP
    X[17]=2.0; //CRP
    X[18]=0.0; //GlcNac
    X[19]=0.0; //GlcNac_HF
    X[20]=0.0; //GlcNac_HF_MASP
    X[21]=0.0; //GlcNac_LF
    X[22]=0.0; //GlcNac_LF_C1_MASP
    X[23]=0.0; //GlcNac_LF_CRP
    X[24]=0.0; //GlcNac_LF_CRP_C1
    X[25]=0.0; //GlcNac_LF_CRP_MASP
    X[26]=0.0; //GlcNac_LF_MASP
    X[27]=0.0; //HF
    X[28]=20.0; //LF
    X[29]=6.8; //MASP
    X[30]=0.0327796; //PC
    X[31]=0.0; //PC_CRP
    X[32]=0.0; //PC_CRP_C1
    X[33]=0.0; //PC_CRP_LF
    X[34]=0.0; //PC_CRP_LF_C1
    X[35]=0.0; //PC_CRP_LF_C1_MASP
    X[36]=0.0; //PC_CRP_LF_MASP
    X[37]=0.0005; //X
    X[38]=0.0; //dC3b
    X[39]=0.0; //dC4b_C2a
    X[40]=0.0; //dC4b_C2a_C4BP
    X[41]=0.0; //iC4b_C2a

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
