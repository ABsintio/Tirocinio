
#ifndef BIOMD151_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD151_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[63]=(sPAR[3] * ((sPAR[59] * (X[61] * X[62])) + (((-(sPAR[99])) - sPAR[23]) * X[63])));
    F[62]=(sPAR[3] * ((sPAR[24] * X[64]) + ((sPAR[23] * X[63]) + ((sPAR[100] * X[64]) + ((sPAR[99] * X[63]) + (((-(sPAR[59])) * (X[61] * X[62])) - (sPAR[60] * (X[59] * X[62]))))))));
    F[31]=(sPAR[3] * ((sPAR[43] * X[38]) + ((sPAR[85] * (X[27] * X[28])) + ((sPAR[90] * X[35]) + ((X[31] * (((-(sPAR[83])) * X[40]) - sPAR[45])) - (sPAR[50] * (X[31] * X[32])))))));
    F[10]=(sPAR[3] * ((sPAR[28] * (X[4] * X[8])) + (((-(sPAR[68])) - sPAR[5]) * X[10])));
    F[60]=((-(sPAR[3])) * ((sPAR[98] * X[60]) + ((sPAR[22] * X[60]) - (sPAR[58] * (X[52] * X[59])))));
    F[26]=(sPAR[3] * (sPAR[14] * X[25]));
    F[43]=(sPAR[3] * ((sPAR[38] * X[42]) + ((sPAR[80] * X[37]) + (X[43] * (((-(sPAR[40])) * X[35]) - (sPAR[78] * X[46]))))));
    F[18]=(sPAR[106] * ((sPAR[11] * X[17]) - (sPAR[13] * X[18])));
    F[33]=(sPAR[3] * ((sPAR[67] * X[44]) - (sPAR[27] * (X[22] * X[33]))));
    F[53]=(sPAR[3] * ((sPAR[54] * (X[52] * X[54])) + (((-(sPAR[94])) - sPAR[19]) * X[53])));
    F[22]=0.0;
    F[37]=(sPAR[3] * ((sPAR[40] * (X[43] * X[35])) + ((sPAR[81] * (X[29] * X[35])) + (((-(sPAR[41])) - sPAR[80]) * X[37]))));
    F[51]=(sPAR[3] * ((sPAR[53] * (X[50] * X[46])) + (((-(sPAR[93])) - sPAR[18]) * X[51])));
    F[24]=(sPAR[3] * ((sPAR[55] * (X[67] * X[23])) + ((sPAR[105] * X[25]) + (((-(sPAR[65])) * (X[6] * X[24])) - (sPAR[95] * X[24])))));
    F[20]=(sPAR[106] * ((sPAR[30] * (X[15] * X[13])) + (((-(sPAR[70])) - sPAR[7]) * X[20])));
    F[28]=(sPAR[3] * ((sPAR[45] * X[31]) + ((sPAR[74] * X[35]) + ((sPAR[89] * X[38]) + ((X[28] * (((-(sPAR[34])) * X[34]) - (sPAR[49] * X[39]))) - (sPAR[85] * (X[27] * X[28])))))));
    F[64]=(sPAR[3] * ((sPAR[60] * (X[59] * X[62])) + (((-(sPAR[100])) - sPAR[24]) * X[64])));
    F[61]=(sPAR[3] * ((sPAR[22] * X[60]) + ((sPAR[99] * X[63]) - (sPAR[59] * (X[61] * X[62])))));
    F[59]=(sPAR[3] * ((sPAR[21] * X[58]) + ((sPAR[98] * X[60]) + ((sPAR[23] * X[63]) + ((sPAR[100] * X[64]) + (((-(sPAR[60])) * (X[59] * X[62])) - (sPAR[58] * (X[52] * X[59]))))))));
    F[58]=(sPAR[3] * ((sPAR[57] * (X[52] * X[57])) + (((-(sPAR[97])) - sPAR[21]) * X[58])));
    F[57]=(sPAR[3] * ((sPAR[24] * X[64]) + ((sPAR[97] * X[58]) - (sPAR[57] * (X[52] * X[57])))));
    F[52]=(sPAR[3] * ((sPAR[18] * X[51]) + ((sPAR[21] * X[58]) + ((sPAR[98] * X[60]) + ((sPAR[22] * X[60]) + ((sPAR[94] * X[53]) + ((sPAR[97] * X[58]) + ((X[52] * (((-(sPAR[58])) * X[59]) - (sPAR[54] * X[54]))) - (sPAR[57] * (X[52] * X[57]))))))))));
    F[54]=(sPAR[3] * ((sPAR[20] * X[56]) + ((sPAR[19] * X[53]) + ((sPAR[96] * X[56]) + ((sPAR[94] * X[53]) + (((-(sPAR[54])) * (X[52] * X[54])) - (sPAR[56] * (X[50] * X[54]))))))));
    F[56]=(sPAR[3] * ((sPAR[56] * (X[50] * X[54])) + (((-(sPAR[96])) - sPAR[20]) * X[56])));
    F[50]=(sPAR[3] * ((sPAR[17] * X[49]) + ((sPAR[19] * X[53]) + ((sPAR[93] * X[51]) + ((sPAR[96] * X[56]) + (X[50] * (((-(sPAR[56])) * X[54]) - (sPAR[53] * X[46]))))))));
    F[49]=(sPAR[3] * ((sPAR[52] * (X[46] * X[48])) + (((-(sPAR[92])) - sPAR[17]) * X[49])));
    F[48]=(sPAR[3] * ((sPAR[20] * X[56]) + ((sPAR[92] * X[49]) - (sPAR[52] * (X[46] * X[48])))));
    F[45]=(sPAR[3] * ((sPAR[16] * X[47]) + ((sPAR[91] * X[47]) - (sPAR[51] * (X[45] * X[46])))));
    F[46]=(sPAR[3] * ((sPAR[38] * X[42]) + ((sPAR[17] * X[49]) + ((sPAR[18] * X[51]) + ((sPAR[91] * X[47]) + ((sPAR[92] * X[49]) + ((sPAR[93] * X[51]) + (((((-(sPAR[51])) * (X[45] * X[46])) - (sPAR[53] * (X[50] * X[46]))) - (sPAR[52] * (X[46] * X[48]))) - (sPAR[78] * (X[43] * X[46]))))))))));
    F[47]=(sPAR[3] * ((sPAR[51] * (X[45] * X[46])) + (((-(sPAR[91])) - sPAR[16]) * X[47])));
    F[42]=(sPAR[3] * ((sPAR[37] * (X[30] * X[41])) + ((sPAR[78] * (X[43] * X[46])) + (((-(sPAR[38])) - sPAR[77]) * X[42]))));
    F[41]=(sPAR[3] * ((sPAR[16] * X[47]) + ((sPAR[77] * X[42]) - (sPAR[37] * (X[30] * X[41])))));
    F[30]=(sPAR[3] * ((sPAR[36] * X[36]) + ((sPAR[77] * X[42]) + (X[30] * (((-(sPAR[37])) * X[41]) - (sPAR[76] * X[35]))))));
    F[36]=(sPAR[3] * ((sPAR[35] * (X[29] * X[35])) + ((sPAR[76] * (X[30] * X[35])) + (((-(sPAR[36])) - sPAR[75]) * X[36]))));
    F[29]=(sPAR[3] * ((sPAR[41] * X[37]) + ((sPAR[75] * X[36]) + (((-(sPAR[35])) - sPAR[81]) * (X[29] * X[35])))));
    F[27]=(sPAR[3] * ((sPAR[45] * X[31]) + ((sPAR[87] * X[39]) + ((sPAR[73] * X[34]) + ((X[27] * (((-(sPAR[85])) * X[28]) - (sPAR[47] * X[40]))) - (sPAR[33] * (X[32] * X[27])))))));
    F[17]=(sPAR[106] * ((sPAR[9] * (X[12] / (sPAR[10] + X[12]))) - (sPAR[11] * X[17])));
    F[16]=(sPAR[106] * ((sPAR[7] * X[19]) + ((sPAR[29] * (X[13] * X[14])) - (sPAR[69] * X[16]))));
    F[19]=(sPAR[106] * ((sPAR[30] * (X[15] * X[12])) + (((-(sPAR[70])) - sPAR[7]) * X[19])));
    F[15]=(sPAR[106] * ((sPAR[7] * (X[20] + X[19])) + ((sPAR[70] * X[19]) + ((sPAR[70] * X[20]) - (sPAR[30] * (X[15] * (X[13] + X[12])))))));
    F[13]=(sPAR[106] * ((2.0 * ((sPAR[104] * X[12]) - (sPAR[64] * pow(X[13],2.0)))) + ((sPAR[69] * X[16]) + ((sPAR[70] * X[20]) + (((-(sPAR[30])) * (X[15] * X[13])) - (sPAR[29] * (X[13] * X[14])))))));
    F[12]=((sPAR[3] * (sPAR[6] * X[4])) + (sPAR[106] * ((sPAR[64] * pow(X[13],2.0)) + ((sPAR[70] * X[19]) + (((-(sPAR[30])) * (X[15] * X[12])) - (sPAR[104] * X[12]))))));
    F[4]=(sPAR[3] * ((sPAR[64] * pow(X[1],2.0)) + ((sPAR[68] * X[10]) + (X[4] * ((((-(sPAR[28])) * X[8]) - sPAR[104]) - sPAR[6])))));
    F[25]=(sPAR[3] * ((sPAR[65] * (X[6] * X[24])) + ((((-(sPAR[14])) - sPAR[105]) - sPAR[4]) * X[25])));
    F[14]=(sPAR[106] * ((sPAR[69] * X[16]) + ((sPAR[7] * X[20]) + (((-(sPAR[29])) * (X[13] * X[14])) - (sPAR[8] * X[14])))));
    F[5]=(sPAR[3] * ((sPAR[29] * (X[67] * X[1])) + ((sPAR[5] * X[10]) - (sPAR[69] * X[5]))));
    F[8]=(sPAR[3] * ((sPAR[5] * (X[9] + X[10])) + ((sPAR[68] * X[9]) + ((sPAR[68] * X[10]) - (sPAR[28] * (X[8] * (X[4] + X[1])))))));
    F[9]=(sPAR[3] * ((sPAR[28] * (X[1] * X[8])) + (((-(sPAR[68])) - sPAR[5]) * X[9])));
    F[38]=(sPAR[3] * ((sPAR[42] * X[35]) + ((sPAR[49] * (X[28] * X[39])) + ((sPAR[83] * (X[31] * X[40])) + (X[38] * (((-(sPAR[89])) - sPAR[43]) - (sPAR[82] * X[66])))))));
    F[35]=(sPAR[3] * ((sPAR[34] * (X[28] * X[34])) + ((sPAR[41] * X[37]) + ((sPAR[36] * X[36]) + ((sPAR[50] * (X[31] * X[32])) + ((sPAR[82] * (X[38] * X[66])) + ((sPAR[75] * X[36]) + ((sPAR[80] * X[37]) + ((((((((-(sPAR[42])) * X[35]) - (sPAR[40] * (X[43] * X[35]))) - (sPAR[76] * (X[30] * X[35]))) - (sPAR[74] * X[35])) - (sPAR[81] * (X[29] * X[35]))) - (sPAR[35] * (X[29] * X[35]))) - (sPAR[90] * X[35]))))))))));
    F[39]=(sPAR[3] * ((sPAR[48] * X[34]) + ((sPAR[47] * (X[27] * X[40])) + ((sPAR[89] * X[38]) + ((X[39] * (((-(sPAR[88])) * X[66]) - sPAR[87])) - (sPAR[49] * (X[28] * X[39])))))));
    F[34]=(sPAR[3] * ((sPAR[33] * (X[32] * X[27])) + ((sPAR[88] * (X[39] * X[66])) + ((sPAR[74] * X[35]) + ((((-(sPAR[73])) - sPAR[48]) * X[34]) - (sPAR[34] * (X[28] * X[34])))))));
    F[40]=(sPAR[3] * ((sPAR[46] * X[32]) + ((sPAR[43] * X[38]) + ((sPAR[87] * X[39]) + (((((-(sPAR[83])) * (X[31] * X[40])) - (sPAR[47] * (X[27] * X[40]))) - (sPAR[86] * (X[66] * X[40]))) - (sPAR[2] * (X[40] / (sPAR[1] + X[40]))))))));
    F[32]=(sPAR[3] * ((sPAR[44] * X[7]) + ((sPAR[86] * (X[66] * X[40])) + ((sPAR[73] * X[34]) + ((sPAR[90] * X[35]) + ((X[32] * ((((-(sPAR[33])) * X[27]) - sPAR[46]) - sPAR[84])) - (sPAR[50] * (X[31] * X[32]))))))));
    F[23]=(sPAR[3] * ((sPAR[32] * (X[21] * X[66])) + ((sPAR[95] * X[24]) + (((-(sPAR[55])) * (X[67] * X[23])) - (sPAR[72] * X[23])))));
    F[21]=((sPAR[3] * (sPAR[4] * X[25])) + ((sPAR[106] * (sPAR[12] * X[18])) + (sPAR[3] * ((sPAR[14] * X[25]) + ((sPAR[72] * X[23]) + (X[21] * (((-(sPAR[32])) * X[66]) - sPAR[14])))))));
    F[3]=(sPAR[3] * ((sPAR[63] * (X[66] * X[1])) - (sPAR[103] * X[3])));
    F[1]=(sPAR[3] * ((sPAR[25] * X[2]) + ((sPAR[103] * X[3]) + ((sPAR[69] * X[5]) + ((-2.0 * ((sPAR[64] * pow(X[1],2.0)) - (sPAR[104] * X[4]))) + ((sPAR[68] * X[9]) + ((((-(sPAR[63])) * (X[66] * X[1])) - (sPAR[29] * (X[67] * X[1]))) - (sPAR[28] * (X[1] * X[8])))))))));
    F[2]=(sPAR[3] * ((sPAR[55] * (X[66] * X[67])) + (((-(sPAR[95])) - sPAR[25]) * X[2])));
    F[67]=((sPAR[3] * (sPAR[5] * X[9])) + ((sPAR[106] * (sPAR[8] * X[14])) + (sPAR[3] * ((sPAR[4] * X[25]) + ((sPAR[95] * X[2]) + ((sPAR[69] * X[5]) + ((sPAR[95] * X[24]) + ((((-(sPAR[55])) * (X[66] * X[67])) - (sPAR[29] * (X[67] * X[1]))) - (sPAR[55] * (X[67] * X[23]))))))))));
    F[6]=(sPAR[3] * ((sPAR[4] * (X[7] + X[25])) + ((sPAR[2] * (X[40] / (sPAR[1] + X[40]))) + ((sPAR[105] * X[7]) + ((sPAR[105] * X[25]) - (sPAR[65] * (X[6] * (X[24] + X[66]))))))));
    F[7]=(sPAR[3] * ((sPAR[65] * (X[66] * X[6])) + ((((-(sPAR[105])) - sPAR[4]) * X[7]) + ((sPAR[84] * X[32]) - (sPAR[44] * X[7])))));
    F[66]=(sPAR[3] * ((sPAR[15] * X[65]) + ((sPAR[25] * X[2]) + ((sPAR[46] * X[32]) + ((sPAR[48] * X[34]) + ((sPAR[42] * X[35]) + ((sPAR[95] * X[2]) + ((sPAR[103] * X[3]) + ((sPAR[105] * X[7]) + ((sPAR[72] * X[23]) + ((X[66] * (((-(sPAR[55])) * X[67]) - (sPAR[65] * X[6]))) + ((((((-(sPAR[63])) * (X[66] * X[1])) - (sPAR[32] * (X[21] * X[66]))) - (sPAR[82] * (X[38] * X[66]))) - (sPAR[86] * (X[66] * X[40]))) - (sPAR[88] * (X[39] * X[66]))))))))))))));
    F[65]=(sPAR[3] * ((sPAR[39] * pow(X[55],2.0)) + ((sPAR[4] * (X[7] + X[25])) + (((-(sPAR[79])) - sPAR[15]) * X[65]))));
    F[44]=(sPAR[3] * ((sPAR[71] * X[55]) + ((sPAR[27] * (X[22] * X[33])) + (((-(sPAR[67])) * X[44]) - (sPAR[31] * (X[11] * X[44]))))));
    F[55]=((sPAR[3] * ((2.0 * (sPAR[79] * X[65])) + ((sPAR[31] * (X[11] * X[44])) - (sPAR[71] * X[55])))) + (-2.0 * (sPAR[3] * (sPAR[39] * pow(X[55],2.0)))));
    F[11]=(sPAR[3] * ((sPAR[26] * (X[0] * sPAR[0])) + ((sPAR[71] * X[55]) + (X[11] * (((-(sPAR[31])) * X[44]) - sPAR[66])))));
    F[0]=0.0;

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
    sPAR[0]=0.38; //IL6
    sPAR[1]=340.0; //Km
    sPAR[2]=1.7; //Vm
    sPAR[3]=1.0; //cytosol
    sPAR[4]=0.003; //k10
    sPAR[5]=0.003; //k12
    sPAR[6]=0.005; //k14
    sPAR[7]=0.005; //k16
    sPAR[8]=0.05; //k17
    sPAR[9]=0.01; //k18a
    sPAR[10]=400.0; //k18b
    sPAR[11]=0.001; //k19
    sPAR[12]=0.01; //k20
    sPAR[13]=0.0005; //k22
    sPAR[14]=0.0005; //k23
    sPAR[15]=0.005; //k4
    sPAR[16]=1.0; //k43
    sPAR[17]=3.5; //k45
    sPAR[18]=2.9; //k47
    sPAR[19]=0.058; //k49
    sPAR[20]=0.058; //k51
    sPAR[21]=16.0; //k53
    sPAR[22]=6.7; //k55
    sPAR[23]=0.27; //k57
    sPAR[24]=0.3; //k59
    sPAR[25]=0.4; //k6
    sPAR[26]=0.1; //kf0
    sPAR[27]=0.1; //kf1
    sPAR[28]=0.001; //kf11
    sPAR[29]=2e-07; //kf13
    sPAR[30]=0.001; //kf15
    sPAR[31]=0.02; //kf2
    sPAR[32]=0.02; //kf21
    sPAR[33]=0.01; //kf24
    sPAR[34]=0.01; //kf25
    sPAR[35]=0.015; //kf26
    sPAR[36]=0.5; //kf27
    sPAR[37]=0.001; //kf28
    sPAR[38]=1.0; //kf29
    sPAR[39]=0.04; //kf3
    sPAR[40]=0.007900000000000001; //kf30
    sPAR[41]=0.023; //kf31
    sPAR[42]=0.1; //kf32
    sPAR[43]=0.3; //kf33
    sPAR[44]=6.0; //kf34
    sPAR[45]=0.0015; //kf35
    sPAR[46]=0.3; //kf37
    sPAR[47]=0.01; //kf38
    sPAR[48]=0.3; //kf39
    sPAR[49]=0.03; //kf40
    sPAR[50]=0.03; //kf41
    sPAR[51]=0.0717; //kf42
    sPAR[52]=0.011; //kf44
    sPAR[53]=0.011; //kf46
    sPAR[54]=0.0143; //kf48
    sPAR[55]=0.008; //kf5
    sPAR[56]=0.00025; //kf50
    sPAR[57]=0.00011; //kf52
    sPAR[58]=0.00011; //kf54
    sPAR[59]=0.014; //kf56
    sPAR[60]=0.005; //kf58
    sPAR[61]=0.5; //kf60
    sPAR[62]=0.2; //kf61
    sPAR[63]=0.005; //kf7
    sPAR[64]=0.02; //kf8
    sPAR[65]=0.001; //kf9
    sPAR[66]=0.05; //kr0
    sPAR[67]=0.05; //kr1
    sPAR[68]=0.2; //kr11
    sPAR[69]=0.2; //kr13
    sPAR[70]=0.2; //kr15
    sPAR[71]=0.02; //kr2
    sPAR[72]=0.1; //kr21
    sPAR[73]=0.55; //kr24
    sPAR[74]=0.0214; //kr25
    sPAR[75]=1.3; //kr26
    sPAR[76]=0.0001; //kr27
    sPAR[77]=0.0053; //kr28
    sPAR[78]=0.0007; //kr29
    sPAR[79]=0.2; //kr3
    sPAR[80]=0.4; //kr30
    sPAR[81]=0.00022; //kr31
    sPAR[82]=0.000245; //kr32
    sPAR[83]=0.021; //kr33
    sPAR[84]=0.06; //kr34
    sPAR[85]=0.0045; //kr35
    sPAR[86]=0.0009; //kr37
    sPAR[87]=0.55; //kr38
    sPAR[88]=0.0009; //kr39
    sPAR[89]=0.064; //kr40
    sPAR[90]=0.0429; //kr41
    sPAR[91]=0.2; //kr42
    sPAR[92]=0.001833; //kr44
    sPAR[93]=0.001833; //kr46
    sPAR[94]=0.8; //kr48
    sPAR[95]=0.8; //kr5
    sPAR[96]=0.5; //kr50
    sPAR[97]=0.033; //kr52
    sPAR[98]=0.033; //kr54
    sPAR[99]=0.6; //kr56
    sPAR[100]=0.5; //kr58
    sPAR[101]=0.005; //kr60
    sPAR[102]=2e-07; //kr61
    sPAR[103]=0.5; //kr7
    sPAR[104]=0.1; //kr8
    sPAR[105]=0.2; //kr9
    sPAR[106]=1.0; //nucleus
    X[0]=8.0; //x1
    X[1]=0.0; //x10
    X[2]=0.0; //x11
    X[3]=0.0; //x12
    X[4]=0.0; //x13
    X[5]=0.0; //x14
    X[6]=100.0; //x15
    X[7]=0.0; //x16
    X[8]=50.0; //x17
    X[9]=0.0; //x18
    X[10]=0.0; //x19
    X[11]=0.0; //x2
    X[12]=0.0; //x20
    X[13]=0.0; //x21
    X[14]=0.0; //x22
    X[15]=60.0; //x23
    X[16]=0.0; //x24
    X[17]=0.0; //x25
    X[18]=0.0; //x26
    X[19]=0.0; //x27
    X[20]=0.0; //x28
    X[21]=0.0; //x29
    X[22]=0.8; //x3
    X[23]=0.0; //x30
    X[24]=0.0; //x31
    X[25]=0.0; //x32
    X[26]=0.0; //x33
    X[27]=85.0; //x34
    X[28]=34.0; //x35
    X[29]=19000.0; //x36
    X[30]=0.0; //x37
    X[31]=0.0; //x38
    X[32]=0.0; //x39
    X[33]=12.0; //x4
    X[34]=0.0; //x40
    X[35]=0.0; //x41
    X[36]=0.0; //x42
    X[37]=0.0; //x43
    X[38]=0.0; //x44
    X[39]=0.0; //x45
    X[40]=0.0; //x46
    X[41]=67.0; //x47
    X[42]=0.0; //x48
    X[43]=0.0; //x49
    X[44]=0.0; //x5
    X[45]=67.0; //x50
    X[46]=0.0; //x51
    X[47]=0.0; //x52
    X[48]=41667.0; //x53
    X[49]=0.0; //x54
    X[50]=0.0; //x55
    X[51]=0.0; //x56
    X[52]=0.0; //x57
    X[53]=0.0; //x58
    X[54]=67.0; //x59
    X[55]=0.0; //x6
    X[56]=0.0; //x60
    X[57]=35000.0; //x61
    X[58]=0.0; //x62
    X[59]=0.0; //x63
    X[60]=0.0; //x64
    X[61]=0.0; //x65
    X[62]=16667.0; //x66
    X[63]=0.0; //x67
    X[64]=0.0; //x68
    X[65]=0.0; //x7
    X[66]=0.0; //x8
    X[67]=1000.0; //x9

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
