
#ifndef BIOMD217_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD217_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[1]=pow((X[1] / (sPAR[1] * sPAR[74])),sPAR[92]);
    ACC[3]=pow((X[1] / (sPAR[1] * sPAR[79])),sPAR[93]);
    ACC[4]=pow(X[10],2.0);
    ACC[5]=pow(X[10],3.0);
    ACC[7]=(X[17] * (ACC[5] / ((((1.0 + ((3.0 * ((X[10] / sPAR[13]) + (ACC[4] / (sPAR[13] * sPAR[15])))) + (ACC[5] / ((sPAR[17] * sPAR[15]) * sPAR[13])))) * sPAR[13]) * sPAR[15]) * sPAR[17])));
    ACC[6]=(3.0 * (X[14] * (X[10] / ((1.0 + ((3.0 * ((X[10] / sPAR[12]) + (ACC[4] / (sPAR[12] * sPAR[14])))) + (ACC[5] / ((sPAR[16] * sPAR[14]) * sPAR[12])))) * sPAR[12]))));
    ACC[8]=(12.0 * (X[1] / sPAR[1]));
    ACC[9]=(sPAR[72] * (sPAR[76] * (sPAR[70] / ((1.0 + (ACC[0] * ACC[1])) * (1.0 + (ACC[2] * ACC[3]))))));
    F[19]=0.0;
    F[5]=0.0;
    F[3]=(sPAR[77] * ((sPAR[67] * ((X[7] - (X[3] / sPAR[31])) / ((1.0 + ((X[3] / sPAR[30]) + (X[7] / sPAR[32]))) * sPAR[32]))) + (sPAR[63] * (((X[5] / sPAR[8]) - X[3]) / ((1.0 + ((X[5] / sPAR[7]) + (X[3] / sPAR[6]))) * sPAR[6])))));
    F[6]=0.0;
    F[0]=(sPAR[77] * ((sPAR[72] * (sPAR[76] * (sPAR[70] * (((X[13] * (X[2] * X[8])) - (X[19] * (X[0] * (X[7] / sPAR[22])))) / (((((((1.0 + pow((12.0 * (X[1] / (sPAR[79] * sPAR[1]))),sPAR[93])) * (1.0 + pow((12.0 * (X[1] / (sPAR[1] * sPAR[74]))),sPAR[92]))) * (1.0 + ((X[13] / sPAR[49]) + ((X[7] / sPAR[47]) + ((X[13] * (X[7] / (sPAR[47] * sPAR[49]))) + ((X[8] / sPAR[48]) + (X[13] * (X[8] / (sPAR[48] * sPAR[49]))))))))) * (1.0 + ((X[19] / sPAR[50]) + ((X[0] / sPAR[44]) + ((X[19] * (X[0] / (sPAR[44] * sPAR[50]))) + (X[2] / sPAR[45])))))) * sPAR[49]) * sPAR[48]) * sPAR[45]))))) - (sPAR[62] * (X[0] / (sPAR[4] + X[0])))));
    F[2]=(sPAR[77] * ((sPAR[62] * (X[0] / (sPAR[4] + X[0]))) - (sPAR[72] * (sPAR[76] * (sPAR[70] * (((X[13] * (X[2] * X[8])) - (X[19] * (X[0] * (X[7] / sPAR[22])))) / (((((((1.0 + pow((12.0 * (X[1] / (sPAR[79] * sPAR[1]))),sPAR[93])) * (1.0 + pow((12.0 * (X[1] / (sPAR[1] * sPAR[74]))),sPAR[92]))) * (1.0 + ((X[13] / sPAR[49]) + ((X[7] / sPAR[47]) + ((X[13] * (X[7] / (sPAR[47] * sPAR[49]))) + ((X[8] / sPAR[48]) + (X[13] * (X[8] / (sPAR[48] * sPAR[49]))))))))) * (1.0 + ((X[19] / sPAR[50]) + ((X[0] / sPAR[44]) + ((X[19] * (X[0] / (sPAR[44] * sPAR[50]))) + (X[2] / sPAR[45])))))) * sPAR[49]) * sPAR[48]) * sPAR[45])))))));
    F[4]=(sPAR[77] * ((sPAR[68] * ((X[8] - (X[4] / sPAR[36])) / ((1.0 + ((X[4] / sPAR[35]) + (X[8] / sPAR[37]))) * sPAR[37]))) + (sPAR[64] * (((X[6] / sPAR[11]) - X[4]) / ((1.0 + ((X[6] / sPAR[10]) + (X[4] / sPAR[9]))) * sPAR[9])))));
    F[11]=0.0;
    F[8]=(sPAR[77] * ((sPAR[66] * (((X[10] * (X[12] * X[13])) - (X[11] * (X[8] / sPAR[23]))) / ((((((1.0 + ((X[10] / sPAR[26]) + (X[8] / sPAR[25]))) * (1.0 + (X[13] / sPAR[29]))) * (1.0 + ((X[11] / sPAR[27]) + (X[12] / sPAR[28])))) * sPAR[29]) * sPAR[28]) * sPAR[26]))) + ((2.0 * (X[10] * (X[12] * (sPAR[69] * (X[7] / (((((((1.0 + ((X[7] / sPAR[39]) + (X[8] / sPAR[40]))) * (1.0 + ((X[10] / sPAR[41]) + (X[8] / sPAR[40])))) * (1.0 + (X[4] / sPAR[38]))) * (1.0 + ((X[11] / sPAR[42]) + (X[12] / sPAR[43])))) * sPAR[43]) * sPAR[41]) * sPAR[39])))))) + ((sPAR[68] * (((X[4] / sPAR[36]) - X[8]) / ((1.0 + ((X[4] / sPAR[35]) + (X[8] / sPAR[37]))) * sPAR[37]))) - (sPAR[72] * (sPAR[76] * (sPAR[70] * (((X[13] * (X[2] * X[8])) - (X[19] * (X[0] * (X[7] / sPAR[22])))) / ((((((sPAR[45] * sPAR[48]) * sPAR[49]) * (1.0 + ((X[19] / sPAR[50]) + ((X[0] / sPAR[44]) + ((X[19] * (X[0] / (sPAR[50] * sPAR[44]))) + (X[2] / sPAR[45])))))) * (1.0 + ((X[13] / sPAR[49]) + ((X[7] / sPAR[47]) + ((X[13] * (X[7] / (sPAR[49] * sPAR[47]))) + ((X[8] / sPAR[48]) + (X[13] * (X[8] / (sPAR[49] * sPAR[48]))))))))) * (1.0 + pow((12.0 * (X[1] / (sPAR[74] * sPAR[1]))),sPAR[92]))) * (1.0 + pow((12.0 * (X[1] / (sPAR[1] * sPAR[79]))),sPAR[93])))))))))));
    F[12]=0.0;
    F[10]=0.0;
    F[13]=0.0;
    F[1]=(sPAR[77] * ((sPAR[61] * (X[9] * (((sPAR[73] * (X[7] / sPAR[2])) + (3.0 * (X[10] * ((sPAR[71] * (X[14] / (((1.0 + ((3.0 * ((X[10] / sPAR[12]) + (pow(X[10],2.0) / (sPAR[14] * sPAR[12])))) + (pow(X[10],3.0) / ((sPAR[12] * sPAR[14]) * sPAR[16])))) * sPAR[12]) * sPAR[5]))) + (sPAR[75] * (X[7] * (X[14] / (((sPAR[2] * sPAR[5]) * sPAR[12]) * (1.0 + ((3.0 * ((X[10] / sPAR[12]) + (pow(X[10],2.0) / (sPAR[12] * sPAR[14])))) + (pow(X[10],3.0) / ((sPAR[16] * sPAR[14]) * sPAR[12])))))))))))) / ((1.0 + ((X[7] / sPAR[2]) + (3.0 * (X[10] * ((X[14] / (((1.0 + ((3.0 * ((X[10] / sPAR[12]) + (pow(X[10],2.0) / (sPAR[14] * sPAR[12])))) + (pow(X[10],3.0) / ((sPAR[12] * sPAR[14]) * sPAR[16])))) * sPAR[12]) * sPAR[5])) + (X[7] * (X[14] / ((((sPAR[78] * sPAR[2]) * sPAR[5]) * sPAR[12]) * (1.0 + ((3.0 * ((X[10] / sPAR[12]) + (pow(X[10],2.0) / (sPAR[12] * sPAR[14])))) + (pow(X[10],3.0) / ((sPAR[16] * sPAR[14]) * sPAR[12])))))))))))) * (sPAR[3] + X[9]))))) - (sPAR[65] * (X[1] * (((sPAR[81] * (X[7] / sPAR[18])) + ((3.0 * (X[10] * ((sPAR[80] * (X[14] / (((1.0 + ((3.0 * ((X[10] / sPAR[12]) + (pow(X[10],2.0) / (sPAR[14] * sPAR[12])))) + (pow(X[10],3.0) / ((sPAR[12] * sPAR[14]) * sPAR[16])))) * sPAR[20]) * sPAR[12]))) + (sPAR[83] * (X[7] * (X[14] / (((sPAR[12] * sPAR[18]) * sPAR[20]) * (1.0 + ((3.0 * ((X[10] / sPAR[12]) + (pow(X[10],2.0) / (sPAR[12] * sPAR[14])))) + (pow(X[10],3.0) / ((sPAR[16] * sPAR[14]) * sPAR[12]))))))))))) + ((pow(X[10],3.0) * ((sPAR[82] * (X[17] / (((((1.0 + ((3.0 * ((X[10] / sPAR[13]) + (pow(X[10],2.0) / (sPAR[15] * sPAR[13])))) + (pow(X[10],3.0) / ((sPAR[13] * sPAR[15]) * sPAR[17])))) * sPAR[21]) * sPAR[17]) * sPAR[15]) * sPAR[13]))) + (sPAR[85] * (X[7] * (X[17] / (((((sPAR[13] * sPAR[15]) * sPAR[17]) * sPAR[18]) * sPAR[21]) * (1.0 + ((3.0 * ((X[10] / sPAR[13]) + (pow(X[10],2.0) / (sPAR[13] * sPAR[15])))) + (pow(X[10],3.0) / ((sPAR[17] * sPAR[15]) * sPAR[13])))))))))) + (3.0 * (pow(X[10],4.0) * ((sPAR[84] * (X[14] * (X[17] / ((((((((1.0 + ((3.0 * ((X[10] / sPAR[13]) + (pow(X[10],2.0) / (sPAR[15] * sPAR[13])))) + (pow(X[10],3.0) / ((sPAR[13] * sPAR[15]) * sPAR[17])))) * (1.0 + ((3.0 * ((X[10] / sPAR[12]) + (pow(X[10],2.0) / (sPAR[12] * sPAR[14])))) + (pow(X[10],3.0) / ((sPAR[16] * sPAR[14]) * sPAR[12]))))) * sPAR[21]) * sPAR[20]) * sPAR[17]) * sPAR[15]) * sPAR[13]) * sPAR[12])))) + (sPAR[86] * (X[7] * (X[14] * (X[17] / ((((((((sPAR[12] * sPAR[13]) * sPAR[15]) * sPAR[17]) * sPAR[18]) * sPAR[20]) * sPAR[21]) * (1.0 + ((3.0 * ((X[10] / sPAR[12]) + (pow(X[10],2.0) / (sPAR[14] * sPAR[12])))) + (pow(X[10],3.0) / ((sPAR[12] * sPAR[14]) * sPAR[16]))))) * (1.0 + ((3.0 * ((X[10] / sPAR[13]) + (pow(X[10],2.0) / (sPAR[13] * sPAR[15])))) + (pow(X[10],3.0) / ((sPAR[17] * sPAR[15]) * sPAR[13]))))))))))))))) / ((1.0 + ((X[7] / sPAR[18]) + ((3.0 * (X[10] * ((X[14] / (((1.0 + ((3.0 * ((X[10] / sPAR[12]) + (pow(X[10],2.0) / (sPAR[14] * sPAR[12])))) + (pow(X[10],3.0) / ((sPAR[12] * sPAR[14]) * sPAR[16])))) * sPAR[20]) * sPAR[12])) + (X[7] * (X[14] / ((((sPAR[12] * sPAR[18]) * sPAR[20]) * (1.0 + ((3.0 * ((X[10] / sPAR[12]) + (pow(X[10],2.0) / (sPAR[14] * sPAR[12])))) + (pow(X[10],3.0) / ((sPAR[12] * sPAR[14]) * sPAR[16]))))) * sPAR[89])))))) + ((pow(X[10],3.0) * ((X[17] / (((((1.0 + ((3.0 * ((X[10] / sPAR[13]) + (pow(X[10],2.0) / (sPAR[15] * sPAR[13])))) + (pow(X[10],3.0) / ((sPAR[13] * sPAR[15]) * sPAR[17])))) * sPAR[21]) * sPAR[17]) * sPAR[15]) * sPAR[13])) + (X[7] * (X[17] / ((((((sPAR[13] * sPAR[15]) * sPAR[17]) * sPAR[18]) * sPAR[21]) * (1.0 + ((3.0 * ((X[10] / sPAR[13]) + (pow(X[10],2.0) / (sPAR[15] * sPAR[13])))) + (pow(X[10],3.0) / ((sPAR[13] * sPAR[15]) * sPAR[17]))))) * sPAR[91]))))) + (3.0 * (pow(X[10],4.0) * ((X[14] * (X[17] / ((((((((sPAR[90] * (1.0 + ((3.0 * ((X[10] / sPAR[13]) + (pow(X[10],2.0) / (sPAR[13] * sPAR[15])))) + (pow(X[10],3.0) / ((sPAR[17] * sPAR[15]) * sPAR[13]))))) * (1.0 + ((3.0 * ((X[10] / sPAR[12]) + (pow(X[10],2.0) / (sPAR[14] * sPAR[12])))) + (pow(X[10],3.0) / ((sPAR[12] * sPAR[14]) * sPAR[16]))))) * sPAR[21]) * sPAR[20]) * sPAR[17]) * sPAR[15]) * sPAR[13]) * sPAR[12]))) + (X[7] * (X[14] * (X[17] / (((((((((sPAR[12] * sPAR[13]) * sPAR[15]) * sPAR[17]) * sPAR[18]) * sPAR[20]) * sPAR[21]) * (1.0 + ((3.0 * ((X[10] / sPAR[12]) + (pow(X[10],2.0) / (sPAR[12] * sPAR[14])))) + (pow(X[10],3.0) / ((sPAR[16] * sPAR[14]) * sPAR[12]))))) * (1.0 + ((3.0 * ((X[10] / sPAR[13]) + (pow(X[10],2.0) / (sPAR[15] * sPAR[13])))) + (pow(X[10],3.0) / ((sPAR[13] * sPAR[15]) * sPAR[17]))))) * sPAR[94]))))))))))) * (sPAR[19] + X[1])))))));
    F[9]=(sPAR[77] * ((sPAR[65] * (X[1] * (((sPAR[81] * (X[7] / sPAR[18])) + ((3.0 * (X[10] * ((sPAR[80] * (X[14] / (((1.0 + ((3.0 * ((X[10] / sPAR[12]) + (pow(X[10],2.0) / (sPAR[14] * sPAR[12])))) + (pow(X[10],3.0) / ((sPAR[12] * sPAR[14]) * sPAR[16])))) * sPAR[20]) * sPAR[12]))) + (sPAR[83] * (X[7] * (X[14] / (((sPAR[12] * sPAR[18]) * sPAR[20]) * (1.0 + ((3.0 * ((X[10] / sPAR[12]) + (pow(X[10],2.0) / (sPAR[12] * sPAR[14])))) + (pow(X[10],3.0) / ((sPAR[16] * sPAR[14]) * sPAR[12]))))))))))) + ((pow(X[10],3.0) * ((sPAR[82] * (X[17] / (((((1.0 + ((3.0 * ((X[10] / sPAR[13]) + (pow(X[10],2.0) / (sPAR[15] * sPAR[13])))) + (pow(X[10],3.0) / ((sPAR[13] * sPAR[15]) * sPAR[17])))) * sPAR[21]) * sPAR[17]) * sPAR[15]) * sPAR[13]))) + (sPAR[85] * (X[7] * (X[17] / (((((sPAR[13] * sPAR[15]) * sPAR[17]) * sPAR[18]) * sPAR[21]) * (1.0 + ((3.0 * ((X[10] / sPAR[13]) + (pow(X[10],2.0) / (sPAR[13] * sPAR[15])))) + (pow(X[10],3.0) / ((sPAR[17] * sPAR[15]) * sPAR[13])))))))))) + (3.0 * (pow(X[10],4.0) * ((sPAR[84] * (X[14] * (X[17] / ((((((((1.0 + ((3.0 * ((X[10] / sPAR[13]) + (pow(X[10],2.0) / (sPAR[15] * sPAR[13])))) + (pow(X[10],3.0) / ((sPAR[13] * sPAR[15]) * sPAR[17])))) * (1.0 + ((3.0 * ((X[10] / sPAR[12]) + (pow(X[10],2.0) / (sPAR[12] * sPAR[14])))) + (pow(X[10],3.0) / ((sPAR[16] * sPAR[14]) * sPAR[12]))))) * sPAR[21]) * sPAR[20]) * sPAR[17]) * sPAR[15]) * sPAR[13]) * sPAR[12])))) + (sPAR[86] * (X[7] * (X[14] * (X[17] / ((((((((sPAR[12] * sPAR[13]) * sPAR[15]) * sPAR[17]) * sPAR[18]) * sPAR[20]) * sPAR[21]) * (1.0 + ((3.0 * ((X[10] / sPAR[12]) + (pow(X[10],2.0) / (sPAR[14] * sPAR[12])))) + (pow(X[10],3.0) / ((sPAR[12] * sPAR[14]) * sPAR[16]))))) * (1.0 + ((3.0 * ((X[10] / sPAR[13]) + (pow(X[10],2.0) / (sPAR[13] * sPAR[15])))) + (pow(X[10],3.0) / ((sPAR[17] * sPAR[15]) * sPAR[13]))))))))))))))) / ((1.0 + ((X[7] / sPAR[18]) + ((3.0 * (X[10] * ((X[14] / (((1.0 + ((3.0 * ((X[10] / sPAR[12]) + (pow(X[10],2.0) / (sPAR[14] * sPAR[12])))) + (pow(X[10],3.0) / ((sPAR[12] * sPAR[14]) * sPAR[16])))) * sPAR[20]) * sPAR[12])) + (X[7] * (X[14] / ((((sPAR[12] * sPAR[18]) * sPAR[20]) * (1.0 + ((3.0 * ((X[10] / sPAR[12]) + (pow(X[10],2.0) / (sPAR[14] * sPAR[12])))) + (pow(X[10],3.0) / ((sPAR[12] * sPAR[14]) * sPAR[16]))))) * sPAR[89])))))) + ((pow(X[10],3.0) * ((X[17] / (((((1.0 + ((3.0 * ((X[10] / sPAR[13]) + (pow(X[10],2.0) / (sPAR[15] * sPAR[13])))) + (pow(X[10],3.0) / ((sPAR[13] * sPAR[15]) * sPAR[17])))) * sPAR[21]) * sPAR[17]) * sPAR[15]) * sPAR[13])) + (X[7] * (X[17] / ((((((sPAR[13] * sPAR[15]) * sPAR[17]) * sPAR[18]) * sPAR[21]) * (1.0 + ((3.0 * ((X[10] / sPAR[13]) + (pow(X[10],2.0) / (sPAR[15] * sPAR[13])))) + (pow(X[10],3.0) / ((sPAR[13] * sPAR[15]) * sPAR[17]))))) * sPAR[91]))))) + (3.0 * (pow(X[10],4.0) * ((X[14] * (X[17] / ((((((((sPAR[90] * (1.0 + ((3.0 * ((X[10] / sPAR[13]) + (pow(X[10],2.0) / (sPAR[13] * sPAR[15])))) + (pow(X[10],3.0) / ((sPAR[17] * sPAR[15]) * sPAR[13]))))) * (1.0 + ((3.0 * ((X[10] / sPAR[12]) + (pow(X[10],2.0) / (sPAR[14] * sPAR[12])))) + (pow(X[10],3.0) / ((sPAR[12] * sPAR[14]) * sPAR[16]))))) * sPAR[21]) * sPAR[20]) * sPAR[17]) * sPAR[15]) * sPAR[13]) * sPAR[12]))) + (X[7] * (X[14] * (X[17] / (((((((((sPAR[12] * sPAR[13]) * sPAR[15]) * sPAR[17]) * sPAR[18]) * sPAR[20]) * sPAR[21]) * (1.0 + ((3.0 * ((X[10] / sPAR[12]) + (pow(X[10],2.0) / (sPAR[12] * sPAR[14])))) + (pow(X[10],3.0) / ((sPAR[16] * sPAR[14]) * sPAR[12]))))) * (1.0 + ((3.0 * ((X[10] / sPAR[13]) + (pow(X[10],2.0) / (sPAR[15] * sPAR[13])))) + (pow(X[10],3.0) / ((sPAR[13] * sPAR[15]) * sPAR[17]))))) * sPAR[94]))))))))))) * (sPAR[19] + X[1]))))) - (sPAR[61] * (X[9] * (((sPAR[73] * (X[7] / sPAR[2])) + (3.0 * (X[10] * ((sPAR[71] * (X[14] / (((1.0 + ((3.0 * ((X[10] / sPAR[12]) + (pow(X[10],2.0) / (sPAR[14] * sPAR[12])))) + (pow(X[10],3.0) / ((sPAR[12] * sPAR[14]) * sPAR[16])))) * sPAR[12]) * sPAR[5]))) + (sPAR[75] * (X[7] * (X[14] / (((sPAR[2] * sPAR[5]) * sPAR[12]) * (1.0 + ((3.0 * ((X[10] / sPAR[12]) + (pow(X[10],2.0) / (sPAR[12] * sPAR[14])))) + (pow(X[10],3.0) / ((sPAR[16] * sPAR[14]) * sPAR[12])))))))))))) / ((1.0 + ((X[7] / sPAR[2]) + (3.0 * (X[10] * ((X[14] / (((1.0 + ((3.0 * ((X[10] / sPAR[12]) + (pow(X[10],2.0) / (sPAR[14] * sPAR[12])))) + (pow(X[10],3.0) / ((sPAR[12] * sPAR[14]) * sPAR[16])))) * sPAR[12]) * sPAR[5])) + (X[7] * (X[14] / ((((sPAR[78] * sPAR[2]) * sPAR[5]) * sPAR[12]) * (1.0 + ((3.0 * ((X[10] / sPAR[12]) + (pow(X[10],2.0) / (sPAR[12] * sPAR[14])))) + (pow(X[10],3.0) / ((sPAR[16] * sPAR[14]) * sPAR[12])))))))))))) * (sPAR[3] + X[9])))))));
    F[20]=0.0;
    F[17]=(sPAR[77] * ((sPAR[88] * (sPAR[60] * (X[21] * (X[16] / ((((1.0 + ((X[21] / sPAR[57]) + (((X[14] + (X[15] + X[16])) / sPAR[53]) + ((X[21] * ((X[14] + (X[15] + X[16])) / (sPAR[53] * sPAR[57]))) + ((X[18] * (X[21] * ((X[14] + (X[15] + X[16])) / ((sPAR[57] * sPAR[54]) * sPAR[53])))) + (sPAR[55] * ((X[15] + (X[16] + X[17])) / (sPAR[53] * sPAR[56])))))))) * (1.0 + (X[7] / sPAR[34]))) * sPAR[57]) * sPAR[53]))))) - (sPAR[87] * (sPAR[59] * (X[17] / (((1.0 + ((1.0 + (X[20] / sPAR[52])) * ((X[15] + (X[16] + X[17])) / sPAR[51]))) * (1.0 + (sPAR[33] / X[7]))) * sPAR[51]))))));
    F[16]=(sPAR[77] * ((sPAR[88] * (sPAR[60] * (X[21] * (X[15] / ((((1.0 + ((X[21] / sPAR[57]) + (((X[14] + (X[15] + X[16])) / sPAR[53]) + ((X[21] * ((X[14] + (X[15] + X[16])) / (sPAR[53] * sPAR[57]))) + ((X[18] * (X[21] * ((X[14] + (X[15] + X[16])) / ((sPAR[57] * sPAR[54]) * sPAR[53])))) + (sPAR[55] * ((X[15] + (X[16] + X[17])) / (sPAR[53] * sPAR[56])))))))) * (1.0 + (X[7] / sPAR[34]))) * sPAR[57]) * sPAR[53]))))) + ((sPAR[87] * (sPAR[59] * ((X[17] / (((1.0 + ((1.0 + (X[20] / sPAR[52])) * ((X[15] + (X[16] + X[17])) / sPAR[51]))) * (1.0 + (sPAR[33] / X[7]))) * sPAR[51])) - (X[16] / ((sPAR[51] * (1.0 + (sPAR[33] / X[7]))) * (1.0 + ((1.0 + (X[20] / sPAR[52])) * ((X[15] + (X[16] + X[17])) / sPAR[51])))))))) - (sPAR[88] * (sPAR[60] * (X[21] * (X[16] / ((((1.0 + ((X[21] / sPAR[57]) + (((X[14] + (X[15] + X[16])) / sPAR[53]) + ((X[21] * ((X[14] + (X[15] + X[16])) / (sPAR[53] * sPAR[57]))) + ((X[18] * (X[21] * ((X[14] + (X[15] + X[16])) / ((sPAR[57] * sPAR[54]) * sPAR[53])))) + (sPAR[55] * ((X[15] + (X[16] + X[17])) / (sPAR[53] * sPAR[56])))))))) * (1.0 + (X[7] / sPAR[34]))) * sPAR[57]) * sPAR[53]))))))));
    F[7]=(sPAR[77] * ((sPAR[72] * (sPAR[76] * (sPAR[70] * (((X[13] * (X[2] * X[8])) - (X[19] * (X[0] * (X[7] / sPAR[22])))) / ((((((sPAR[45] * sPAR[48]) * sPAR[49]) * (1.0 + ((X[19] / sPAR[50]) + ((X[0] / sPAR[44]) + ((X[19] * (X[0] / (sPAR[50] * sPAR[44]))) + (X[2] / sPAR[45])))))) * (1.0 + ((X[13] / sPAR[49]) + ((X[7] / sPAR[47]) + ((X[13] * (X[7] / (sPAR[49] * sPAR[47]))) + ((X[8] / sPAR[48]) + (X[13] * (X[8] / (sPAR[49] * sPAR[48]))))))))) * (1.0 + pow((12.0 * (X[1] / (sPAR[74] * sPAR[1]))),sPAR[92]))) * (1.0 + pow((12.0 * (X[1] / (sPAR[1] * sPAR[79]))),sPAR[93]))))))) + ((sPAR[67] * (((X[3] / sPAR[31]) - X[7]) / ((1.0 + ((X[3] / sPAR[30]) + (X[7] / sPAR[32]))) * sPAR[32]))) - (X[10] * (X[12] * (sPAR[69] * (X[7] / ((((((sPAR[39] * sPAR[41]) * sPAR[43]) * (1.0 + ((X[11] / sPAR[42]) + (X[12] / sPAR[43])))) * (1.0 + (X[4] / sPAR[38]))) * (1.0 + ((X[10] / sPAR[41]) + (X[8] / sPAR[40])))) * (1.0 + ((X[7] / sPAR[39]) + (X[8] / sPAR[40])))))))))));
    F[18]=0.0;
    F[15]=(sPAR[77] * ((sPAR[88] * (sPAR[60] * (X[21] * (X[14] / ((((1.0 + ((X[21] / sPAR[57]) + (((X[14] + (X[15] + X[16])) / sPAR[53]) + ((X[21] * ((X[14] + (X[15] + X[16])) / (sPAR[53] * sPAR[57]))) + ((X[18] * (X[21] * ((X[14] + (X[15] + X[16])) / ((sPAR[57] * sPAR[54]) * sPAR[53])))) + (sPAR[55] * ((X[15] + (X[16] + X[17])) / (sPAR[53] * sPAR[56])))))))) * (1.0 + (X[7] / sPAR[34]))) * sPAR[57]) * sPAR[53]))))) + ((sPAR[87] * (sPAR[59] * ((X[16] / (((1.0 + ((1.0 + (X[20] / sPAR[52])) * ((X[15] + (X[16] + X[17])) / sPAR[51]))) * (1.0 + (sPAR[33] / X[7]))) * sPAR[51])) - (X[15] / ((sPAR[51] * (1.0 + (sPAR[33] / X[7]))) * (1.0 + ((1.0 + (X[20] / sPAR[52])) * ((X[15] + (X[16] + X[17])) / sPAR[51])))))))) - (sPAR[88] * (sPAR[60] * (X[21] * (X[15] / ((((1.0 + ((X[21] / sPAR[57]) + (((X[14] + (X[15] + X[16])) / sPAR[53]) + ((X[21] * ((X[14] + (X[15] + X[16])) / (sPAR[53] * sPAR[57]))) + ((X[18] * (X[21] * ((X[14] + (X[15] + X[16])) / ((sPAR[57] * sPAR[54]) * sPAR[53])))) + (sPAR[55] * ((X[15] + (X[16] + X[17])) / (sPAR[53] * sPAR[56])))))))) * (1.0 + (X[7] / sPAR[34]))) * sPAR[57]) * sPAR[53]))))))));
    F[21]=0.0;
    F[14]=(sPAR[77] * ((sPAR[87] * (sPAR[59] * (X[15] / (((1.0 + ((1.0 + (X[20] / sPAR[52])) * ((X[15] + (X[16] + X[17])) / sPAR[51]))) * (1.0 + (sPAR[33] / X[7]))) * sPAR[51])))) - (sPAR[88] * (sPAR[60] * (X[21] * (X[14] / ((((1.0 + ((X[21] / sPAR[57]) + (((X[14] + (X[15] + X[16])) / sPAR[53]) + ((X[21] * ((X[14] + (X[15] + X[16])) / (sPAR[53] * sPAR[57]))) + ((X[18] * (X[21] * ((X[14] + (X[15] + X[16])) / ((sPAR[57] * sPAR[54]) * sPAR[53])))) + (sPAR[55] * ((X[15] + (X[16] + X[17])) / (sPAR[53] * sPAR[56])))))))) * (1.0 + (X[7] / sPAR[34]))) * sPAR[57]) * sPAR[53])))))));

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
    ACC[0]=0.0; //$cse1
    ACC[1]=0.0; //$cse2
    ACC[2]=0.0; //$cse3
    ACC[3]=0.0; //$cse4
    ACC[4]=0.0; //$cse5
    ACC[5]=0.0; //$cse6
    ACC[6]=0.0; //PIIKG1
    ACC[7]=0.0; //PIIUMP3KG3
    ACC[8]=0.0; //nAMP
    ACC[9]=0.0; //vAPP_GS
    sPAR[0]=5.37; //ATPtot
    sPAR[1]=0.014; //GStot
    sPAR[2]=0.9714; //Kadgln
    sPAR[3]=0.001703; //Kadgs
    sPAR[4]=0.5; //Kadp
    sPAR[5]=1.052e-05; //Kadpiikg
    sPAR[6]=1.0; //Kazglndemazgln
    sPAR[7]=0.5; //Kazglndemazinter
    sPAR[8]=10000000000.0; //Kazglndemeq
    sPAR[9]=0.3; //Kazgludemazglu
    sPAR[10]=0.5; //Kazgludemazinter
    sPAR[11]=10000000000.0; //Kazgludemeq
    sPAR[12]=0.005; //Kd1
    sPAR[13]=0.025; //Kd1piiump
    sPAR[14]=0.15; //Kd2
    sPAR[15]=0.15; //Kd2piiump
    sPAR[16]=0.15; //Kd3
    sPAR[17]=0.15; //Kd3piiump
    sPAR[18]=0.04444; //Kdeadgln
    sPAR[19]=0.0002015; //Kdeadgsa
    sPAR[20]=2.274e-06; //Kdeadpiikg
    sPAR[21]=1.805e-05; //Kdeadpiiu
    sPAR[22]=460.0; //Keq
    sPAR[23]=1290.0; //Keqgdh
    sPAR[24]=2.5; //Kgdhazglu
    sPAR[25]=10.0; //Kgdhglu
    sPAR[26]=0.32; //Kgdhkg
    sPAR[27]=0.042; //Kgdhnadp
    sPAR[28]=0.04; //Kgdhnadph
    sPAR[29]=1.1; //Kgdhnh
    sPAR[30]=0.25; //Kglndemazgln
    sPAR[31]=10000000000.0; //Kglndemeq
    sPAR[32]=2.0; //Kglndemgln
    sPAR[33]=0.07000000000000001; //Kglnur
    sPAR[34]=0.07000000000000001; //Kglnut
    sPAR[35]=0.5; //Kgludemazglu
    sPAR[36]=10000000000.0; //Kgludemeq
    sPAR[37]=8.0; //Kgludemglu
    sPAR[38]=0.65; //Kgogaz
    sPAR[39]=0.175; //Kgoggln
    sPAR[40]=11.0; //Kgogglu
    sPAR[41]=0.007; //Kgogkg
    sPAR[42]=0.0037; //Kgognadp
    sPAR[43]=0.0015; //Kgognadph
    sPAR[44]=0.0585; //Kgsadp
    sPAR[45]=0.35; //Kgsatp
    sPAR[46]=460.0; //Kgseq
    sPAR[47]=5.65; //Kgsgln
    sPAR[48]=4.1; //Kgsglu
    sPAR[49]=0.1; //Kgsnh
    sPAR[50]=3.7; //Kgspi
    sPAR[51]=0.0023; //Kurpiiump
    sPAR[52]=8.4; //Kurump
    sPAR[53]=0.0018; //Kutipii
    sPAR[54]=0.1135; //Kutippi
    sPAR[55]=0.003; //Kutpii
    sPAR[56]=0.0035; //Kutpiiump
    sPAR[57]=0.04; //Kututp
    sPAR[58]=0.003; //PIItot
    sPAR[59]=0.0005999999999999999; //UR
    sPAR[60]=0.0005999999999999999; //UT
    sPAR[61]=0.5; //Vad
    sPAR[62]=100.0; //Vadp
    sPAR[63]=20.0; //Vazglndem
    sPAR[64]=30.0; //Vazgludem
    sPAR[65]=0.5; //Vdead
    sPAR[66]=360.0; //Vgdh
    sPAR[67]=70.0; //Vglndem
    sPAR[68]=120.0; //Vgludem
    sPAR[69]=85.0; //Vgog
    sPAR[70]=600.0; //Vgs
    sPAR[71]=1e-22; //a1
    sPAR[72]=10.0; //aamp
    sPAR[73]=0.5165999999999999; //b1
    sPAR[74]=2.3667; //bamp
    sPAR[75]=0.5974; //c1
    sPAR[76]=0.1012; //camp
    sPAR[77]=1.0; //compartment
    sPAR[78]=0.0387; //d1
    sPAR[79]=10.8688; //damp
    sPAR[80]=1e-22; //e1
    sPAR[81]=2.766; //f1
    sPAR[82]=3.323; //g1
    sPAR[83]=0.2148; //h1
    sPAR[84]=1e-22; //i1
    sPAR[85]=1e-22; //j1
    sPAR[86]=1e-22; //k1
    sPAR[87]=5.5; //kcatur
    sPAR[88]=137.0; //kcatut
    sPAR[89]=0.02316; //l1
    sPAR[90]=0.8821; //m1
    sPAR[91]=8.491; //n1
    sPAR[92]=1.1456; //n1amp
    sPAR[93]=19.2166; //n2amp
    sPAR[94]=0.8791; //o1
    X[0]=2.685; //ADP
    X[1]=0.0; //AMP
    X[2]=2.685; //ATP
    X[3]=1.0; //AZGLN
    X[4]=1.0; //AZGLU
    X[5]=0.1; //AZgln
    X[6]=0.1; //AZglu
    X[7]=1.0; //GLN
    X[8]=1.0; //GLU
    X[9]=0.014; //GS
    X[10]=0.2; //KG
    X[11]=0.05; //NADP
    X[12]=0.15; //NADPH
    X[13]=0.05; //NH4
    X[14]=0.003; //PII
    X[15]=0.0; //PIIUMP
    X[16]=0.0; //PIIUMP2
    X[17]=0.0; //PIIUMP3
    X[18]=0.05; //PPi
    X[19]=10.0; //P_i
    X[20]=0.01; //UMP
    X[21]=0.5; //UTP

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
