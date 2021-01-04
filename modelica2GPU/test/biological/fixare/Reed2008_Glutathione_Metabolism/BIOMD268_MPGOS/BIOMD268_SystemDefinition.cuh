
#ifndef BIOMD268_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD268_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[6]=(T + (-24.0 * floor((0.04166666666666666 * T))));
    ACC[3]=piecewise_3(sPAR[136],(leq(7.0,ACC[6]) && leq(ACC[6],10.0)),sPAR[153],(leq(12.0,ACC[6]) && leq(ACC[6],15.0)),sPAR[139],(leq(18.0,ACC[6]) && leq(ACC[6],21.0)),sPAR[140]);
    ACC[1]=(ACC[3] * sPAR[93]);
    ACC[2]=(ACC[3] * sPAR[94]);
    ACC[0]=(ACC[3] * sPAR[92]);
    ACC[8]=(X[37] + (X[33] + (X[32] + X[31])));
    ACC[7]=(X[17] + (X[16] + (X[15] + (X[14] + (X[20] + X[26])))));
    ACC[5]=(ACC[3] * sPAR[134]);
    ACC[4]=(ACC[3] * sPAR[133]);
    F[3]=0.0;
    F[1]=0.0;
    F[28]=((1.240432364636171 * (sPAR[138] * (pow(2.718281828459045,(-0.0021 * (X[40] + X[39]))) * (MM_twosubst(sPAR[104],sPAR[45],sPAR[20],X[30],X[0]) * ((sPAR[155] + sPAR[67]) / (X[5] + sPAR[67])))))) - (sPAR[154] * MM_twosubst(sPAR[108],sPAR[56],sPAR[32],X[37],X[28])));
    F[41]=((sPAR[154] * MM_twosubst(sPAR[108],sPAR[56],sPAR[32],X[37],X[28])) + ((4.8 * (sPAR[138] * (MM_twosubst(sPAR[112],sPAR[52],sPAR[36],X[40],X[22]) / ((0.35 + X[17]) * (1.0 + (X[39] / sPAR[70])))))) - (sPAR[154] * MM_twosubst(sPAR[121],sPAR[58],sPAR[55],X[37],X[41]))));
    F[34]=((sPAR[154] * (MM(sPAR[131],sPAR[4],X[31]) - MM_twosubst(sPAR[99],sPAR[61],sPAR[27],X[37],X[34]))) + ((sPAR[147] * (X[18] * sPAR[138])) - (sPAR[146] * (X[34] * sPAR[154]))));
    F[35]=((sPAR[154] * (MM_twosubst(sPAR[102],sPAR[59],sPAR[54],X[37],X[36]) + (MM_twosubst(sPAR[121],sPAR[58],sPAR[55],X[37],X[41]) + ((-(MM_twosubst(sPAR[132],sPAR[38],sPAR[9],X[35],X[33]))) - MM_twosubst(sPAR[111],sPAR[57],sPAR[35],X[37],X[35]))))) + ((MM(sPAR[84],sPAR[25],X[22]) * sPAR[138]) - (MM(sPAR[90],sPAR[49],X[35]) * sPAR[154])));
    F[36]=((sPAR[154] * (MM_twosubst(sPAR[132],sPAR[38],sPAR[9],X[35],X[33]) - MM_twosubst(sPAR[102],sPAR[59],sPAR[54],X[37],X[36]))) + (-3.0 * (((0.3333333333333333 * (MM(sPAR[91],sPAR[50],X[36]) * sPAR[154])) - MM(sPAR[85],sPAR[28],X[25])) * sPAR[138])));
    F[18]=((0.3333333333333333 * (sPAR[146] * (X[34] * sPAR[154]))) + (((-(sPAR[147])) * (X[18] * sPAR[138])) - (sPAR[138] * MM_twosubst(sPAR[124],sPAR[60],sPAR[26],X[26],X[18]))));
    F[40]=(sPAR[138] * ((sPAR[116] * (X[38] * ((0.23 + (0.8 * pow(2.718281828459045,(-0.0026 * X[40])))) * ((66.70999999999999 + sPAR[71]) / ((sPAR[75] + X[38]) * (sPAR[71] + X[23])))))) + ((sPAR[117] * (pow(X[38],1.21) * ((1.0 + (7.2 * (pow(X[40],2.0) / (pow(sPAR[64],2.0) + pow(X[40],2.0))))) * ((66.70999999999999 + sPAR[72]) / ((sPAR[76] + pow(X[38],1.21)) * (sPAR[72] + X[23])))))) + ((-4.8 * (MM_twosubst(sPAR[112],sPAR[52],sPAR[36],X[40],X[22]) / ((0.35 + X[17]) * (1.0 + (X[39] / sPAR[70]))))) - (sPAR[109] * (X[40] / ((sPAR[74] * (1.0 + (X[39] / sPAR[68]))) + X[40])))))));
    F[39]=(sPAR[138] * ((4.8 * (MM_twosubst(sPAR[112],sPAR[52],sPAR[36],X[40],X[22]) / ((0.35 + X[17]) * (1.0 + (X[39] / sPAR[70]))))) + ((sPAR[109] * (X[40] / ((sPAR[74] * (1.0 + (X[39] / sPAR[68]))) + X[40]))) + (MM(sPAR[128],sPAR[48],X[30]) - MM(sPAR[95],sPAR[51],X[39])))));
    F[30]=(sPAR[138] * (MM(sPAR[95],sPAR[51],X[39]) + ((-1.240432364636171 * (pow(2.718281828459045,(-0.0021 * (X[40] + X[39]))) * (MM_twosubst(sPAR[104],sPAR[45],sPAR[20],X[30],X[0]) * ((sPAR[155] + sPAR[67]) / (X[5] + sPAR[67]))))) + ((-1.085513060452479 * (MM_twosubst(sPAR[105],sPAR[46],sPAR[53],X[30],X[25]) * ((X[5] + sPAR[62]) / ((1.0 + pow((30.0 / (X[40] + X[39])),2.0)) * (sPAR[155] + sPAR[62]))))) + (((-(MM_twosubst(sPAR[118],sPAR[11],sPAR[47],X[17],X[30]))) * ((sPAR[155] + sPAR[73]) / (X[5] + sPAR[73]))) - MM(sPAR[128],sPAR[48],X[30]))))));
    F[27]=(sPAR[138] * ((1.085513060452479 * (MM_twosubst(sPAR[105],sPAR[46],sPAR[53],X[30],X[25]) * ((X[5] + sPAR[62]) / ((1.0 + pow((30.0 / (X[40] + X[39])),2.0)) * (sPAR[155] + sPAR[62]))))) - MM(sPAR[106],sPAR[30],X[27])));
    F[24]=(sPAR[138] * ((sPAR[115] * (((X[22] * X[29]) - (X[24] / sPAR[66])) / (((sPAR[33] + X[29]) * (sPAR[37] + X[22])) + (X[24] / sPAR[78])))) + ((2.0 * MM_twosubst(sPAR[114],sPAR[41],sPAR[16],X[23],X[7])) + ((-2.0 * (sPAR[113] * (pow((X[24] / (sPAR[44] + X[24])),2.0) * (X[5] / (sPAR[14] + X[5]))))) + ((-0.002 * X[24]) + (((-(sPAR[89])) * (pow(X[24],sPAR[141]) / (pow(sPAR[43],sPAR[141]) + pow(X[24],sPAR[141])))) - MM(sPAR[88],sPAR[42],X[24])))))));
    F[23]=((sPAR[138] * ((sPAR[113] * (pow((X[24] / (sPAR[44] + X[24])),2.0) * (X[5] / (sPAR[14] + X[5])))) + (((-(MM(sPAR[87],sPAR[40],X[23]))) - MM_twosubst(sPAR[114],sPAR[41],sPAR[16],X[23],X[7])) - MM(sPAR[86],sPAR[39],X[23])))) + (-0.1 * (sPAR[138] * X[23])));
    F[22]=((sPAR[138] * (MM(sPAR[81],sPAR[22],X[11]) - (sPAR[150] * X[22]))) + ((0.3333333333333333 * (MM(sPAR[90],sPAR[49],X[35]) * sPAR[154])) + (sPAR[138] * (MM_twosubst(sPAR[98],sPAR[59],sPAR[54],X[26],X[25]) + ((-4.8 * (MM_twosubst(sPAR[112],sPAR[52],sPAR[36],X[40],X[22]) / ((0.35 + X[17]) * (1.0 + (X[39] / sPAR[70]))))) + ((sPAR[115] * (((X[24] / sPAR[66]) - (X[22] * X[29])) / (((sPAR[33] + X[29]) * (sPAR[37] + X[22])) + (X[24] / sPAR[78])))) + ((-(MM(sPAR[84],sPAR[25],X[22]))) - MM_twosubst(sPAR[130],sPAR[38],sPAR[9],X[22],X[16]))))))));
    F[29]=(sPAR[138] * ((sPAR[110] * (((X[19] * X[21]) - (X[29] / sPAR[65])) * ((X[5] + sPAR[63]) / (((sPAR[29] * (sPAR[34] + X[21])) + ((X[19] * ((sPAR[34] * (1.0 + (X[24] / sPAR[69]))) + X[21])) + ((X[29] / sPAR[77]) + (X[24] / sPAR[69])))) * (sPAR[155] + sPAR[63]))))) + (sPAR[115] * (((X[24] / sPAR[66]) - (X[22] * X[29])) / (((sPAR[33] + X[29]) * (sPAR[37] + X[22])) + (X[24] / sPAR[78]))))));
    F[19]=((sPAR[138] * (MM(sPAR[79],sPAR[19],X[9]) + (MM(sPAR[106],sPAR[30],X[27]) - (sPAR[110] * (((X[19] * X[21]) - (X[29] / sPAR[65])) * ((X[5] + sPAR[63]) / ((sPAR[155] + sPAR[63]) * ((sPAR[29] * (sPAR[34] + X[21])) + ((X[19] * ((sPAR[34] * (1.0 + (X[24] / sPAR[69]))) + X[21])) + ((X[29] / sPAR[77]) + (X[24] / sPAR[69]))))))))))) + (-0.00175 * (sPAR[138] * pow(X[19],2.0))));
    F[21]=((sPAR[138] * (MM(sPAR[80],sPAR[21],X[10]) + (((-(sPAR[149])) * X[21]) - (sPAR[110] * (((X[19] * X[21]) - (X[29] / sPAR[65])) * ((X[5] + sPAR[63]) / ((sPAR[155] + sPAR[63]) * ((sPAR[29] * (sPAR[34] + X[21])) + ((X[19] * ((sPAR[34] * (1.0 + (X[24] / sPAR[69]))) + X[21])) + ((X[29] / sPAR[77]) + (X[24] / sPAR[69]))))))))))) + (-0.07000000000000001 * (sPAR[138] * X[21])));
    F[8]=(sPAR[138] * (MM_twosubst(sPAR[120],sPAR[3],sPAR[13],X[14],X[4]) - MM_twosubst(sPAR[103],sPAR[0],sPAR[18],X[14],X[8])));
    F[13]=((sPAR[138] * (MM(sPAR[88],sPAR[42],X[24]) + (sPAR[89] * (pow(X[24],sPAR[141]) / (pow(sPAR[43],sPAR[141]) + pow(X[24],sPAR[141])))))) + (-90.7 * (sPAR[135] * X[13])));
    F[12]=((sPAR[138] * (MM(sPAR[86],sPAR[39],X[23]) + MM(sPAR[87],sPAR[40],X[23]))) + (-75.0 * (sPAR[135] * X[12])));
    F[31]=(sPAR[154] * (MM_twosubst(sPAR[99],sPAR[61],sPAR[27],X[37],X[34]) + (MM(sPAR[100],sPAR[5],X[32]) + (((-(MM(sPAR[126],sPAR[2],X[31]))) - MM(sPAR[131],sPAR[4],X[31])) - MM(sPAR[125],sPAR[1],X[31])))));
    F[32]=(sPAR[154] * (MM(sPAR[101],sPAR[7],X[33]) + (MM(sPAR[126],sPAR[2],X[31]) + ((-(MM(sPAR[100],sPAR[5],X[32]))) - MM(sPAR[127],sPAR[6],X[32])))));
    F[33]=(sPAR[154] * (MM_twosubst(sPAR[102],sPAR[59],sPAR[54],X[37],X[36]) + ((sPAR[143] * (X[37] * X[6])) + (MM_twosubst(sPAR[111],sPAR[57],sPAR[35],X[37],X[35]) + (MM_twosubst(sPAR[121],sPAR[58],sPAR[55],X[37],X[41]) + (MM_twosubst(sPAR[108],sPAR[56],sPAR[32],X[37],X[28]) + (MM(sPAR[127],sPAR[6],X[32]) + (((-(MM_twosubst(sPAR[132],sPAR[38],sPAR[9],X[35],X[33]))) - MM(sPAR[101],sPAR[7],X[33])) - (sPAR[145] * X[33])))))))));
    F[20]=(sPAR[138] * (MM_twosubst(sPAR[122],sPAR[12],sPAR[10],X[2],X[16]) - MM_twosubst(sPAR[107],sPAR[31],sPAR[15],X[20],X[7])));
    F[14]=(sPAR[138] * (MM_twosubst(sPAR[124],sPAR[60],sPAR[26],X[26],X[18]) + (MM(sPAR[96],sPAR[5],X[15]) + ((((-(MM_twosubst(sPAR[103],sPAR[0],sPAR[18],X[14],X[8]))) - MM(sPAR[126],sPAR[2],X[14])) - MM(sPAR[123],sPAR[1],X[14])) - MM_twosubst(sPAR[120],sPAR[3],sPAR[13],X[14],X[4])))));
    F[15]=(sPAR[138] * (MM(sPAR[97],sPAR[7],X[16]) + (MM(sPAR[126],sPAR[2],X[14]) + ((-(MM(sPAR[96],sPAR[5],X[15]))) - MM(sPAR[129],sPAR[6],X[15])))));
    F[16]=(sPAR[138] * (MM_twosubst(sPAR[98],sPAR[59],sPAR[54],X[26],X[25]) + ((sPAR[142] * (X[26] * X[6])) + ((-72.0 * (MM_twosubst(sPAR[119],sPAR[8],sPAR[17],X[16],X[7]) / (10.0 + (X[40] - X[39])))) + (MM(sPAR[129],sPAR[6],X[15]) + ((((-(MM_twosubst(sPAR[130],sPAR[38],sPAR[9],X[22],X[16]))) - (sPAR[144] * X[16])) - MM_twosubst(sPAR[122],sPAR[12],sPAR[10],X[2],X[16])) - MM(sPAR[97],sPAR[7],X[16])))))));
    F[17]=(sPAR[138] * ((72.0 * (MM_twosubst(sPAR[119],sPAR[8],sPAR[17],X[16],X[7]) / (10.0 + (X[40] - X[39])))) - (MM_twosubst(sPAR[118],sPAR[11],sPAR[47],X[17],X[30]) * ((sPAR[155] + sPAR[73]) / (X[5] + sPAR[73])))));
    F[37]=(sPAR[154] * (MM(sPAR[125],sPAR[1],X[31]) + (MM_twosubst(sPAR[132],sPAR[38],sPAR[9],X[35],X[33]) + (MM(sPAR[131],sPAR[4],X[31]) + ((sPAR[145] * X[33]) + ((((((-(MM_twosubst(sPAR[108],sPAR[56],sPAR[32],X[37],X[28]))) - MM_twosubst(sPAR[99],sPAR[61],sPAR[27],X[37],X[34])) - MM_twosubst(sPAR[111],sPAR[57],sPAR[35],X[37],X[35])) - MM_twosubst(sPAR[102],sPAR[59],sPAR[54],X[37],X[36])) - (sPAR[143] * (X[37] * X[6]))) - MM_twosubst(sPAR[121],sPAR[58],sPAR[55],X[37],X[41])))))));
    F[26]=(sPAR[138] * ((MM_twosubst(sPAR[118],sPAR[11],sPAR[47],X[17],X[30]) * ((sPAR[155] + sPAR[73]) / (X[5] + sPAR[73]))) + (MM_twosubst(sPAR[107],sPAR[31],sPAR[15],X[20],X[7]) + (MM(sPAR[123],sPAR[1],X[14]) + (MM_twosubst(sPAR[120],sPAR[3],sPAR[13],X[14],X[4]) + (MM_twosubst(sPAR[103],sPAR[0],sPAR[18],X[14],X[8]) + (MM_twosubst(sPAR[130],sPAR[38],sPAR[9],X[22],X[16]) + ((sPAR[144] * X[16]) + (((-(MM_twosubst(sPAR[98],sPAR[59],sPAR[54],X[26],X[25]))) - (sPAR[142] * (X[26] * X[6]))) - MM_twosubst(sPAR[124],sPAR[60],sPAR[26],X[26],X[18]))))))))));
    F[6]=0.0;
    F[5]=0.0;
    F[2]=0.0;
    F[0]=0.0;
    F[7]=0.0;
    F[4]=0.0;
    F[10]=((sPAR[135] * ((90.0 * X[13]) + ((135.0 * X[12]) + ACC[1]))) + ((-0.1 * (sPAR[135] * X[10])) + (sPAR[138] * ((sPAR[149] * X[21]) - MM(sPAR[80],sPAR[21],X[10])))));
    F[11]=((sPAR[135] * ((90.0 * X[13]) + ((135.0 * X[12]) + ACC[2]))) + ((-0.1 * (sPAR[135] * X[11])) + (sPAR[138] * ((sPAR[150] * X[22]) - MM(sPAR[81],sPAR[22],X[11])))));
    F[9]=((sPAR[135] * ((90.0 * X[13]) + ((135.0 * X[12]) + ACC[0]))) + ((-0.35 * (sPAR[135] * X[9])) - (sPAR[138] * MM(sPAR[79],sPAR[19],X[9]))));
    F[25]=(sPAR[138] * (MM(sPAR[83],sPAR[24],ACC[5]) + ((0.3333333333333333 * (MM(sPAR[91],sPAR[50],X[36]) * sPAR[154])) + (MM_twosubst(sPAR[130],sPAR[38],sPAR[9],X[22],X[16]) + ((-1.2 * X[25]) + ((-1.085513060452479 * (MM_twosubst(sPAR[105],sPAR[46],sPAR[53],X[30],X[25]) * ((X[5] + sPAR[62]) / ((1.0 + pow((30.0 / (X[40] + X[39])),2.0)) * (sPAR[155] + sPAR[62]))))) + (((-(MM_twosubst(sPAR[98],sPAR[59],sPAR[54],X[26],X[25]))) - MM(sPAR[85],sPAR[28],X[25])) - (sPAR[152] * X[25]))))))));
    F[38]=(sPAR[138] * (MM(sPAR[82],sPAR[23],ACC[4]) + ((MM_twosubst(sPAR[118],sPAR[11],sPAR[47],X[17],X[30]) * ((sPAR[155] + sPAR[73]) / (X[5] + sPAR[73]))) + ((1.240432364636171 * (pow(2.718281828459045,(-0.0021 * (X[40] + X[39]))) * (MM_twosubst(sPAR[104],sPAR[45],sPAR[20],X[30],X[0]) * ((sPAR[155] + sPAR[67]) / (X[5] + sPAR[67]))))) + (((-(X[38])) * (sPAR[151] + (sPAR[116] * ((0.23 + (0.8 * pow(2.718281828459045,(-0.0026 * X[40])))) * ((66.70999999999999 + sPAR[71]) / ((sPAR[71] + X[23]) * (sPAR[75] + X[38]))))))) - (sPAR[117] * (pow(X[38],1.21) * ((1.0 + (7.2 * (pow(X[40],2.0) / (pow(sPAR[64],2.0) + pow(X[40],2.0))))) * ((66.70999999999999 + sPAR[72]) / ((sPAR[76] + pow(X[38],1.21)) * (sPAR[72] + X[23])))))))))));

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
    ACC[0]=0.0; //V_oCys_b
    ACC[1]=0.0; //V_oGlu_b
    ACC[2]=0.0; //V_oGly_b
    ACC[3]=0.0; //aa_input
    ACC[4]=0.0; //b_met
    ACC[5]=0.0; //b_ser
    ACC[6]=0.0; //daytime
    ACC[7]=0.0; //tot_cfol
    ACC[8]=0.0; //tot_mfol
    sPAR[0]=5.9; //K_10f_ART
    sPAR[1]=20.0; //K_10f_FTD
    sPAR[2]=100.0; //K_10f_MTCH
    sPAR[3]=4.9; //K_10f_PGT
    sPAR[4]=22.0; //K_10f_mFTS
    sPAR[5]=250.0; //K_1cf_MTCH
    sPAR[6]=10.0; //K_1cf_MTD
    sPAR[7]=2.0; //K_2cf_MTD
    sPAR[8]=50.0; //K_2cf_MTHFR
    sPAR[9]=3200.0; //K_2cf_SHMT
    sPAR[10]=14.0; //K_2cf_TS
    sPAR[11]=25.0; //K_5mf_MS
    sPAR[12]=6.3; //K_DUMP_TS
    sPAR[13]=520.0; //K_GAR_PGT
    sPAR[14]=0.09; //K_H2O2_GPX
    sPAR[15]=4.0; //K_NADPH_DHFR
    sPAR[16]=10.4; //K_NADPH_GR
    sPAR[17]=16.0; //K_NADPH_MTHFR
    sPAR[18]=100.0; //K_aic_ART
    sPAR[19]=2100.0; //K_bcysc
    sPAR[20]=100.0; //K_bet_BHMT
    sPAR[21]=300.0; //K_bglutc
    sPAR[22]=150.0; //K_bglyc
    sPAR[23]=150.0; //K_bmetc
    sPAR[24]=150.0; //K_bserc
    sPAR[25]=5700.0; //K_cgly
    sPAR[26]=43.0; //K_coo_cFTS
    sPAR[27]=43.0; //K_coo_mFTS
    sPAR[28]=5700.0; //K_cser
    sPAR[29]=100.0; //K_cys_GCS
    sPAR[30]=500.0; //K_cyt_CTGL
    sPAR[31]=0.5; //K_dhf_DHFR
    sPAR[32]=50.0; //K_dmg_DMGD
    sPAR[33]=22.0; //K_glc_GS
    sPAR[34]=1900.0; //K_glu_GCS
    sPAR[35]=3400.0; //K_gly_GDC
    sPAR[36]=130.0; //K_gly_GNMT
    sPAR[37]=300.0; //K_gly_GS
    sPAR[38]=10000.0; //K_gly_SHMT
    sPAR[39]=1250.0; //K_gsgHb
    sPAR[40]=7100.0; //K_gsgLb
    sPAR[41]=107.0; //K_gsg_GR
    sPAR[42]=150.0; //K_gshHb
    sPAR[43]=3000.0; //K_gshLb
    sPAR[44]=1330.0; //K_gsh_GPX
    sPAR[45]=12.0; //K_hcy_BHMT
    sPAR[46]=1000.0; //K_hcy_CBS
    sPAR[47]=1.0; //K_hcy_MS
    sPAR[48]=150.0; //K_hcy_SAHH
    sPAR[49]=5700.0; //K_mgly
    sPAR[50]=5700.0; //K_mser
    sPAR[51]=6.5; //K_sah_SAHH
    sPAR[52]=63.0; //K_sam_GNMT
    sPAR[53]=2000.0; //K_ser_CBS
    sPAR[54]=600.0; //K_ser_SHMT
    sPAR[55]=320.0; //K_src_SDH
    sPAR[56]=50.0; //K_thf_DMGD
    sPAR[57]=50.0; //K_thf_GDC
    sPAR[58]=50.0; //K_thf_SDH
    sPAR[59]=50.0; //K_thf_SHMT
    sPAR[60]=3.0; //K_thf_cFTS
    sPAR[61]=3.0; //K_thf_mFTS
    sPAR[62]=0.035; //Ka_CBS
    sPAR[63]=0.01; //Ka_GCS
    sPAR[64]=360.0; //Ka_MAT3
    sPAR[65]=5597.0; //Ke_GCS
    sPAR[66]=5600.0; //Ke_GS
    sPAR[67]=0.01; //Ki_BHMT
    sPAR[68]=1.4; //Ki_DNMT
    sPAR[69]=8200.0; //Ki_GCS
    sPAR[70]=18.0; //Ki_GNMT
    sPAR[71]=2140.0; //Ki_MAT1
    sPAR[72]=4030.0; //Ki_MAT3
    sPAR[73]=0.01; //Ki_MS
    sPAR[74]=1.4; //Km_DNMT
    sPAR[75]=41.0; //Km_MAT1
    sPAR[76]=300.0; //Km_MAT3
    sPAR[77]=300.0; //Kp_GCS
    sPAR[78]=30.0; //Kp_GS
    sPAR[79]=14950.0; //V_bcysc
    sPAR[80]=28000.0; //V_bglutc
    sPAR[81]=4600.0; //V_bglyc
    sPAR[82]=913.4; //V_bmetc
    sPAR[83]=2700.0; //V_bserc
    sPAR[84]=10000.0; //V_cgly
    sPAR[85]=10000.0; //V_cser
    sPAR[86]=40.0; //V_gsgHb
    sPAR[87]=4025.0; //V_gsgLb
    sPAR[88]=150.0; //V_gshHb
    sPAR[89]=1100.0; //V_gshLb
    sPAR[90]=10000.0; //V_mgly
    sPAR[91]=10000.0; //V_mser
    sPAR[92]=70.0; //V_oCys_b_basal
    sPAR[93]=273.0; //V_oGlu_b_basal
    sPAR[94]=630.0; //V_oGly_b_basal
    sPAR[95]=320.0; //Vf_SAHH
    sPAR[96]=500000.0; //Vf_cMTCH
    sPAR[97]=80000.0; //Vf_cMTD
    sPAR[98]=5200.0; //Vf_cSHMT
    sPAR[99]=2000.0; //Vf_mFTS
    sPAR[100]=790000.0; //Vf_mMTCH
    sPAR[101]=180000.0; //Vf_mMTD
    sPAR[102]=11440.0; //Vf_mSHMT
    sPAR[103]=55000.0; //Vm_ART
    sPAR[104]=2160.0; //Vm_BHMT
    sPAR[105]=420000.0; //Vm_CBS
    sPAR[106]=1500.0; //Vm_CTGL
    sPAR[107]=2000.0; //Vm_DHFR
    sPAR[108]=15000.0; //Vm_DMGD
    sPAR[109]=180.0; //Vm_DNMT
    sPAR[110]=3600.0; //Vm_GCS
    sPAR[111]=15000.0; //Vm_GDC
    sPAR[112]=260.0; //Vm_GNMT
    sPAR[113]=4500.0; //Vm_GPX
    sPAR[114]=892.5; //Vm_GR
    sPAR[115]=5400.0; //Vm_GS
    sPAR[116]=260.0; //Vm_MAT1
    sPAR[117]=220.0; //Vm_MAT3
    sPAR[118]=500.0; //Vm_MS
    sPAR[119]=5300.0; //Vm_MTHFR
    sPAR[120]=24300.0; //Vm_PGT
    sPAR[121]=15000.0; //Vm_SDH
    sPAR[122]=5000.0; //Vm_TS
    sPAR[123]=500.0; //Vm_cFTD
    sPAR[124]=3900.0; //Vm_cFTS
    sPAR[125]=1050.0; //Vm_mFTD
    sPAR[126]=20000.0; //Vr_MTCH
    sPAR[127]=594000.0; //Vr_MTD
    sPAR[128]=4530.0; //Vr_SAHH
    sPAR[129]=600000.0; //Vr_cMTD
    sPAR[130]=15000000.0; //Vr_cSHMT
    sPAR[131]=6300.0; //Vr_mFTS
    sPAR[132]=30000000.0; //Vr_mSHMT
    sPAR[133]=30.0; //b_met_basal
    sPAR[134]=150.0; //b_ser_basal
    sPAR[135]=1.0; //blood
    sPAR[136]=1.75; //breakfast
    sPAR[137]=1.0; //cell
    sPAR[138]=1.0; //cytosol
    sPAR[139]=3.25; //dinner
    sPAR[140]=0.25; //fasting
    sPAR[141]=3.0; //h_gshLb
    sPAR[142]=0.03; //k1_cNE
    sPAR[143]=0.03; //k1_mNE
    sPAR[144]=22.0; //k2_cNE
    sPAR[145]=20.0; //k2_mNE
    sPAR[146]=100.0; //k_in_coo
    sPAR[147]=100.0; //k_out_coo
    sPAR[148]=1.0; //k_out_cys
    sPAR[149]=1.0; //k_out_glu
    sPAR[150]=1.0; //k_out_gly
    sPAR[151]=1.0; //k_out_met
    sPAR[152]=1.0; //k_out_ser
    sPAR[153]=1.75; //lunch
    sPAR[154]=1.0; //mito
    sPAR[155]=0.01; //ssH2O2
    X[0]=50.0; //BET
    X[1]=0.0; //CO
    X[2]=20.0; //DUMP
    X[3]=20.1; //Fol
    X[4]=10.0; //GAR
    X[5]=0.01; //H2O2
    X[6]=500.0; //HCHO
    X[7]=50.0; //NADPH
    X[8]=0.942750394171554; //aic
    X[9]=185.50378543937; //b_cys
    X[10]=60.4330872702655; //b_glu
    X[11]=221.101111778807; //b_gly
    X[12]=0.484328542816829; //b_gsg
    X[13]=12.6996048211362; //b_gsh
    X[14]=3.40907070478307; //c_10f
    X[15]=0.278602708139276; //c_1cf
    X[16]=0.506278119133034; //c_2cf
    X[17]=4.4965335653401; //c_5mf
    X[18]=13.0888186429922; //c_coo
    X[19]=194.96740946034; //c_cys
    X[20]=0.0385952337473159; //c_dhf
    X[21]=3219.39793573653; //c_glu
    X[22]=924.429820216685; //c_gly
    X[23]=61.3019611792609; //c_gsg
    X[24]=6590.56824161192; //c_gsh
    X[25]=562.834377270222; //c_ser
    X[26]=((0.6666666666666666 * X[3]) + (((((-(X[20])) - X[14]) - X[15]) - X[17]) - X[16])); //c_thf
    X[27]=36.8825861752429; //cyt
    X[28]=0.707382712261505; //dmg
    X[29]=9.80842470037426; //glc
    X[30]=1.12248362561721; //hcy
    X[31]=15.9087989350187; //m_10f
    X[32]=1.54929073348709; //m_1cf
    X[33]=1.66610924423152; //m_2cf
    X[34]=55.820116666595; //m_coo
    X[35]=2040.43402532595; //m_gly
    X[36]=2114.87119909779; //m_ser
    X[37]=((2.0 * X[3]) + (((-(X[33])) - X[32]) - X[31])); //m_thf
    X[38]=49.18682158; //met
    X[39]=19.1432773636787; //sah
    X[40]=81.16845669627691; //sam
    X[41]=9.16245914628594; //src

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
