
#ifndef SIMPLEADVECTION_N_100_PERTHREAD_SYSTEMDEFINITION_H
#define SIMPLEADVECTION_N_100_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[101]=X[98];
    ACC[1]=X[0];
    ACC[2]=X[1];
    ACC[3]=X[2];
    ACC[4]=X[3];
    ACC[5]=X[4];
    ACC[6]=X[5];
    ACC[7]=X[6];
    ACC[8]=X[7];
    ACC[9]=X[8];
    ACC[10]=X[9];
    ACC[11]=X[10];
    ACC[12]=X[11];
    ACC[13]=X[12];
    ACC[14]=X[13];
    ACC[15]=X[14];
    ACC[16]=X[15];
    ACC[17]=X[16];
    ACC[18]=X[17];
    ACC[19]=X[18];
    ACC[20]=X[19];
    ACC[21]=X[20];
    ACC[22]=X[21];
    ACC[23]=X[22];
    ACC[24]=X[23];
    ACC[25]=X[24];
    ACC[26]=X[25];
    ACC[27]=X[26];
    ACC[28]=X[27];
    ACC[29]=X[28];
    ACC[30]=X[29];
    ACC[31]=X[30];
    ACC[32]=X[31];
    ACC[33]=X[32];
    ACC[34]=X[33];
    ACC[35]=X[34];
    ACC[36]=X[35];
    ACC[37]=X[36];
    ACC[38]=X[37];
    ACC[39]=X[38];
    ACC[40]=X[39];
    ACC[41]=X[40];
    ACC[42]=X[41];
    ACC[43]=X[42];
    ACC[44]=X[43];
    ACC[45]=X[44];
    ACC[46]=X[45];
    ACC[47]=X[46];
    ACC[48]=X[47];
    ACC[49]=X[48];
    ACC[50]=X[49];
    ACC[51]=X[50];
    ACC[52]=X[51];
    ACC[53]=X[52];
    ACC[54]=X[53];
    ACC[55]=X[54];
    ACC[56]=X[55];
    ACC[57]=X[56];
    ACC[58]=X[57];
    ACC[59]=X[58];
    ACC[60]=X[59];
    ACC[61]=X[60];
    ACC[62]=X[61];
    ACC[63]=X[62];
    ACC[64]=X[63];
    ACC[65]=X[64];
    ACC[66]=X[65];
    ACC[67]=X[66];
    ACC[68]=X[67];
    ACC[69]=X[68];
    ACC[70]=X[69];
    ACC[71]=X[70];
    ACC[72]=X[71];
    ACC[73]=X[72];
    ACC[74]=X[73];
    ACC[75]=X[74];
    ACC[76]=X[75];
    ACC[77]=X[76];
    ACC[78]=X[77];
    ACC[79]=X[78];
    ACC[80]=X[79];
    ACC[81]=X[80];
    ACC[82]=X[81];
    ACC[83]=X[82];
    ACC[84]=X[83];
    ACC[85]=X[84];
    ACC[86]=X[85];
    ACC[87]=X[86];
    ACC[88]=X[87];
    ACC[89]=X[88];
    ACC[90]=X[89];
    ACC[91]=X[90];
    ACC[92]=X[91];
    ACC[93]=X[92];
    ACC[94]=X[93];
    ACC[95]=X[94];
    ACC[96]=X[95];
    ACC[97]=X[96];
    ACC[98]=X[97];
    ACC[99]=X[98];
    ACC[102]=(1.0 + sin((2.0 * (T * (sPAR[105] * sPAR[103])))));
    ACC[0]=(300.0 + (sPAR[101] * (0.5 + (0.5 * tanh(((T - sPAR[106]) / sPAR[102]))))));
    ACC[100]=ACC[0];
    F[1]=(10.0 * (ACC[102] * (X[0] - X[1])));
    F[2]=(10.0 * (ACC[102] * (X[1] - X[2])));
    F[3]=(10.0 * (ACC[102] * (X[2] - X[3])));
    F[4]=(10.0 * (ACC[102] * (X[3] - X[4])));
    F[5]=(10.0 * (ACC[102] * (X[4] - X[5])));
    F[6]=(10.0 * (ACC[102] * (X[5] - X[6])));
    F[7]=(10.0 * (ACC[102] * (X[6] - X[7])));
    F[8]=(10.0 * (ACC[102] * (X[7] - X[8])));
    F[9]=(10.0 * (ACC[102] * (X[8] - X[9])));
    F[10]=(10.0 * (ACC[102] * (X[9] - X[10])));
    F[11]=(10.0 * (ACC[102] * (X[10] - X[11])));
    F[12]=(10.0 * (ACC[102] * (X[11] - X[12])));
    F[13]=(10.0 * (ACC[102] * (X[12] - X[13])));
    F[14]=(10.0 * (ACC[102] * (X[13] - X[14])));
    F[15]=(10.0 * (ACC[102] * (X[14] - X[15])));
    F[16]=(10.0 * (ACC[102] * (X[15] - X[16])));
    F[17]=(10.0 * (ACC[102] * (X[16] - X[17])));
    F[18]=(10.0 * (ACC[102] * (X[17] - X[18])));
    F[19]=(10.0 * (ACC[102] * (X[18] - X[19])));
    F[20]=(10.0 * (ACC[102] * (X[19] - X[20])));
    F[21]=(10.0 * (ACC[102] * (X[20] - X[21])));
    F[22]=(10.0 * (ACC[102] * (X[21] - X[22])));
    F[23]=(10.0 * (ACC[102] * (X[22] - X[23])));
    F[24]=(10.0 * (ACC[102] * (X[23] - X[24])));
    F[25]=(10.0 * (ACC[102] * (X[24] - X[25])));
    F[26]=(10.0 * (ACC[102] * (X[25] - X[26])));
    F[27]=(10.0 * (ACC[102] * (X[26] - X[27])));
    F[28]=(10.0 * (ACC[102] * (X[27] - X[28])));
    F[29]=(10.0 * (ACC[102] * (X[28] - X[29])));
    F[30]=(10.0 * (ACC[102] * (X[29] - X[30])));
    F[31]=(10.0 * (ACC[102] * (X[30] - X[31])));
    F[32]=(10.0 * (ACC[102] * (X[31] - X[32])));
    F[33]=(10.0 * (ACC[102] * (X[32] - X[33])));
    F[34]=(10.0 * (ACC[102] * (X[33] - X[34])));
    F[35]=(10.0 * (ACC[102] * (X[34] - X[35])));
    F[36]=(10.0 * (ACC[102] * (X[35] - X[36])));
    F[37]=(10.0 * (ACC[102] * (X[36] - X[37])));
    F[38]=(10.0 * (ACC[102] * (X[37] - X[38])));
    F[39]=(10.0 * (ACC[102] * (X[38] - X[39])));
    F[40]=(10.0 * (ACC[102] * (X[39] - X[40])));
    F[41]=(10.0 * (ACC[102] * (X[40] - X[41])));
    F[42]=(10.0 * (ACC[102] * (X[41] - X[42])));
    F[43]=(10.0 * (ACC[102] * (X[42] - X[43])));
    F[44]=(10.0 * (ACC[102] * (X[43] - X[44])));
    F[45]=(10.0 * (ACC[102] * (X[44] - X[45])));
    F[46]=(10.0 * (ACC[102] * (X[45] - X[46])));
    F[47]=(10.0 * (ACC[102] * (X[46] - X[47])));
    F[48]=(10.0 * (ACC[102] * (X[47] - X[48])));
    F[49]=(10.0 * (ACC[102] * (X[48] - X[49])));
    F[50]=(10.0 * (ACC[102] * (X[49] - X[50])));
    F[51]=(10.0 * (ACC[102] * (X[50] - X[51])));
    F[52]=(10.0 * (ACC[102] * (X[51] - X[52])));
    F[53]=(10.0 * (ACC[102] * (X[52] - X[53])));
    F[54]=(10.0 * (ACC[102] * (X[53] - X[54])));
    F[55]=(10.0 * (ACC[102] * (X[54] - X[55])));
    F[56]=(10.0 * (ACC[102] * (X[55] - X[56])));
    F[57]=(10.0 * (ACC[102] * (X[56] - X[57])));
    F[58]=(10.0 * (ACC[102] * (X[57] - X[58])));
    F[59]=(10.0 * (ACC[102] * (X[58] - X[59])));
    F[60]=(10.0 * (ACC[102] * (X[59] - X[60])));
    F[61]=(10.0 * (ACC[102] * (X[60] - X[61])));
    F[62]=(10.0 * (ACC[102] * (X[61] - X[62])));
    F[63]=(10.0 * (ACC[102] * (X[62] - X[63])));
    F[64]=(10.0 * (ACC[102] * (X[63] - X[64])));
    F[65]=(10.0 * (ACC[102] * (X[64] - X[65])));
    F[66]=(10.0 * (ACC[102] * (X[65] - X[66])));
    F[67]=(10.0 * (ACC[102] * (X[66] - X[67])));
    F[68]=(10.0 * (ACC[102] * (X[67] - X[68])));
    F[69]=(10.0 * (ACC[102] * (X[68] - X[69])));
    F[70]=(10.0 * (ACC[102] * (X[69] - X[70])));
    F[71]=(10.0 * (ACC[102] * (X[70] - X[71])));
    F[72]=(10.0 * (ACC[102] * (X[71] - X[72])));
    F[73]=(10.0 * (ACC[102] * (X[72] - X[73])));
    F[74]=(10.0 * (ACC[102] * (X[73] - X[74])));
    F[75]=(10.0 * (ACC[102] * (X[74] - X[75])));
    F[76]=(10.0 * (ACC[102] * (X[75] - X[76])));
    F[77]=(10.0 * (ACC[102] * (X[76] - X[77])));
    F[78]=(10.0 * (ACC[102] * (X[77] - X[78])));
    F[79]=(10.0 * (ACC[102] * (X[78] - X[79])));
    F[80]=(10.0 * (ACC[102] * (X[79] - X[80])));
    F[81]=(10.0 * (ACC[102] * (X[80] - X[81])));
    F[82]=(10.0 * (ACC[102] * (X[81] - X[82])));
    F[83]=(10.0 * (ACC[102] * (X[82] - X[83])));
    F[84]=(10.0 * (ACC[102] * (X[83] - X[84])));
    F[85]=(10.0 * (ACC[102] * (X[84] - X[85])));
    F[86]=(10.0 * (ACC[102] * (X[85] - X[86])));
    F[87]=(10.0 * (ACC[102] * (X[86] - X[87])));
    F[88]=(10.0 * (ACC[102] * (X[87] - X[88])));
    F[89]=(10.0 * (ACC[102] * (X[88] - X[89])));
    F[90]=(10.0 * (ACC[102] * (X[89] - X[90])));
    F[91]=(10.0 * (ACC[102] * (X[90] - X[91])));
    F[92]=(10.0 * (ACC[102] * (X[91] - X[92])));
    F[93]=(10.0 * (ACC[102] * (X[92] - X[93])));
    F[94]=(10.0 * (ACC[102] * (X[93] - X[94])));
    F[95]=(10.0 * (ACC[102] * (X[94] - X[95])));
    F[96]=(10.0 * (ACC[102] * (X[95] - X[96])));
    F[97]=(10.0 * (ACC[102] * (X[96] - X[97])));
    F[98]=(10.0 * (ACC[102] * (X[97] - X[98])));
    F[0]=(10.0 * (ACC[102] * (ACC[0] - X[0])));

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
    sPAR[101]=10.0; //dT
    sPAR[106]=2.0; //t0
    sPAR[102]=0.1; //dt
    ACC[100]=(300.0 + (sPAR[101] * (0.5 + (0.5 * tanh(((T - sPAR[106]) / sPAR[102])))))); //Tin
    ACC[0]=ACC[100]; //T[1]
    ACC[1]=0.0; //T[2]
    ACC[2]=0.0; //T[3]
    ACC[3]=0.0; //T[4]
    ACC[4]=0.0; //T[5]
    ACC[5]=0.0; //T[6]
    ACC[6]=0.0; //T[7]
    ACC[7]=0.0; //T[8]
    ACC[8]=0.0; //T[9]
    ACC[9]=0.0; //T[10]
    ACC[10]=0.0; //T[11]
    ACC[11]=0.0; //T[12]
    ACC[12]=0.0; //T[13]
    ACC[13]=0.0; //T[14]
    ACC[14]=0.0; //T[15]
    ACC[15]=0.0; //T[16]
    ACC[16]=0.0; //T[17]
    ACC[17]=0.0; //T[18]
    ACC[18]=0.0; //T[19]
    ACC[19]=0.0; //T[20]
    ACC[20]=0.0; //T[21]
    ACC[21]=0.0; //T[22]
    ACC[22]=0.0; //T[23]
    ACC[23]=0.0; //T[24]
    ACC[24]=0.0; //T[25]
    ACC[25]=0.0; //T[26]
    ACC[26]=0.0; //T[27]
    ACC[27]=0.0; //T[28]
    ACC[28]=0.0; //T[29]
    ACC[29]=0.0; //T[30]
    ACC[30]=0.0; //T[31]
    ACC[31]=0.0; //T[32]
    ACC[32]=0.0; //T[33]
    ACC[33]=0.0; //T[34]
    ACC[34]=0.0; //T[35]
    ACC[35]=0.0; //T[36]
    ACC[36]=0.0; //T[37]
    ACC[37]=0.0; //T[38]
    ACC[38]=0.0; //T[39]
    ACC[39]=0.0; //T[40]
    ACC[40]=0.0; //T[41]
    ACC[41]=0.0; //T[42]
    ACC[42]=0.0; //T[43]
    ACC[43]=0.0; //T[44]
    ACC[44]=0.0; //T[45]
    ACC[45]=0.0; //T[46]
    ACC[46]=0.0; //T[47]
    ACC[47]=0.0; //T[48]
    ACC[48]=0.0; //T[49]
    ACC[49]=0.0; //T[50]
    ACC[50]=0.0; //T[51]
    ACC[51]=0.0; //T[52]
    ACC[52]=0.0; //T[53]
    ACC[53]=0.0; //T[54]
    ACC[54]=0.0; //T[55]
    ACC[55]=0.0; //T[56]
    ACC[56]=0.0; //T[57]
    ACC[57]=0.0; //T[58]
    ACC[58]=0.0; //T[59]
    ACC[59]=0.0; //T[60]
    ACC[60]=0.0; //T[61]
    ACC[61]=0.0; //T[62]
    ACC[62]=0.0; //T[63]
    ACC[63]=0.0; //T[64]
    ACC[64]=0.0; //T[65]
    ACC[65]=0.0; //T[66]
    ACC[66]=0.0; //T[67]
    ACC[67]=0.0; //T[68]
    ACC[68]=0.0; //T[69]
    ACC[69]=0.0; //T[70]
    ACC[70]=0.0; //T[71]
    ACC[71]=0.0; //T[72]
    ACC[72]=0.0; //T[73]
    ACC[73]=0.0; //T[74]
    ACC[74]=0.0; //T[75]
    ACC[75]=0.0; //T[76]
    ACC[76]=0.0; //T[77]
    ACC[77]=0.0; //T[78]
    ACC[78]=0.0; //T[79]
    ACC[79]=0.0; //T[80]
    ACC[80]=0.0; //T[81]
    ACC[81]=0.0; //T[82]
    ACC[82]=0.0; //T[83]
    ACC[83]=0.0; //T[84]
    ACC[84]=0.0; //T[85]
    ACC[85]=0.0; //T[86]
    ACC[86]=0.0; //T[87]
    ACC[87]=0.0; //T[88]
    ACC[88]=0.0; //T[89]
    ACC[89]=0.0; //T[90]
    ACC[90]=0.0; //T[91]
    ACC[91]=0.0; //T[92]
    ACC[92]=0.0; //T[93]
    ACC[93]=0.0; //T[94]
    ACC[94]=0.0; //T[95]
    ACC[95]=0.0; //T[96]
    ACC[96]=0.0; //T[97]
    ACC[97]=0.0; //T[98]
    ACC[98]=0.0; //T[99]
    ACC[99]=0.0; //T[100]
    ACC[101]=0.0; //Tout
    ACC[102]=0.0; //u
    sPAR[0]=10.0; //L
    sPAR[1]=300.0; //Tstart[1]
    sPAR[2]=300.0; //Tstart[2]
    sPAR[3]=300.0; //Tstart[3]
    sPAR[4]=300.0; //Tstart[4]
    sPAR[5]=300.0; //Tstart[5]
    sPAR[6]=300.0; //Tstart[6]
    sPAR[7]=300.0; //Tstart[7]
    sPAR[8]=300.0; //Tstart[8]
    sPAR[9]=300.0; //Tstart[9]
    sPAR[10]=300.0; //Tstart[10]
    sPAR[11]=300.0; //Tstart[11]
    sPAR[12]=300.0; //Tstart[12]
    sPAR[13]=300.0; //Tstart[13]
    sPAR[14]=300.0; //Tstart[14]
    sPAR[15]=300.0; //Tstart[15]
    sPAR[16]=300.0; //Tstart[16]
    sPAR[17]=300.0; //Tstart[17]
    sPAR[18]=300.0; //Tstart[18]
    sPAR[19]=300.0; //Tstart[19]
    sPAR[20]=300.0; //Tstart[20]
    sPAR[21]=300.0; //Tstart[21]
    sPAR[22]=300.0; //Tstart[22]
    sPAR[23]=300.0; //Tstart[23]
    sPAR[24]=300.0; //Tstart[24]
    sPAR[25]=300.0; //Tstart[25]
    sPAR[26]=300.0; //Tstart[26]
    sPAR[27]=300.0; //Tstart[27]
    sPAR[28]=300.0; //Tstart[28]
    sPAR[29]=300.0; //Tstart[29]
    sPAR[30]=300.0; //Tstart[30]
    sPAR[31]=300.0; //Tstart[31]
    sPAR[32]=300.0; //Tstart[32]
    sPAR[33]=300.0; //Tstart[33]
    sPAR[34]=300.0; //Tstart[34]
    sPAR[35]=300.0; //Tstart[35]
    sPAR[36]=300.0; //Tstart[36]
    sPAR[37]=300.0; //Tstart[37]
    sPAR[38]=300.0; //Tstart[38]
    sPAR[39]=300.0; //Tstart[39]
    sPAR[40]=300.0; //Tstart[40]
    sPAR[41]=300.0; //Tstart[41]
    sPAR[42]=300.0; //Tstart[42]
    sPAR[43]=300.0; //Tstart[43]
    sPAR[44]=300.0; //Tstart[44]
    sPAR[45]=300.0; //Tstart[45]
    sPAR[46]=300.0; //Tstart[46]
    sPAR[47]=300.0; //Tstart[47]
    sPAR[48]=300.0; //Tstart[48]
    sPAR[49]=300.0; //Tstart[49]
    sPAR[50]=300.0; //Tstart[50]
    sPAR[51]=300.0; //Tstart[51]
    sPAR[52]=300.0; //Tstart[52]
    sPAR[53]=300.0; //Tstart[53]
    sPAR[54]=300.0; //Tstart[54]
    sPAR[55]=300.0; //Tstart[55]
    sPAR[56]=300.0; //Tstart[56]
    sPAR[57]=300.0; //Tstart[57]
    sPAR[58]=300.0; //Tstart[58]
    sPAR[59]=300.0; //Tstart[59]
    sPAR[60]=300.0; //Tstart[60]
    sPAR[61]=300.0; //Tstart[61]
    sPAR[62]=300.0; //Tstart[62]
    sPAR[63]=300.0; //Tstart[63]
    sPAR[64]=300.0; //Tstart[64]
    sPAR[65]=300.0; //Tstart[65]
    sPAR[66]=300.0; //Tstart[66]
    sPAR[67]=300.0; //Tstart[67]
    sPAR[68]=300.0; //Tstart[68]
    sPAR[69]=300.0; //Tstart[69]
    sPAR[70]=300.0; //Tstart[70]
    sPAR[71]=300.0; //Tstart[71]
    sPAR[72]=300.0; //Tstart[72]
    sPAR[73]=300.0; //Tstart[73]
    sPAR[74]=300.0; //Tstart[74]
    sPAR[75]=300.0; //Tstart[75]
    sPAR[76]=300.0; //Tstart[76]
    sPAR[77]=300.0; //Tstart[77]
    sPAR[78]=300.0; //Tstart[78]
    sPAR[79]=300.0; //Tstart[79]
    sPAR[80]=300.0; //Tstart[80]
    sPAR[81]=300.0; //Tstart[81]
    sPAR[82]=300.0; //Tstart[82]
    sPAR[83]=300.0; //Tstart[83]
    sPAR[84]=300.0; //Tstart[84]
    sPAR[85]=300.0; //Tstart[85]
    sPAR[86]=300.0; //Tstart[86]
    sPAR[87]=300.0; //Tstart[87]
    sPAR[88]=300.0; //Tstart[88]
    sPAR[89]=300.0; //Tstart[89]
    sPAR[90]=300.0; //Tstart[90]
    sPAR[91]=300.0; //Tstart[91]
    sPAR[92]=300.0; //Tstart[92]
    sPAR[93]=300.0; //Tstart[93]
    sPAR[94]=300.0; //Tstart[94]
    sPAR[95]=300.0; //Tstart[95]
    sPAR[96]=300.0; //Tstart[96]
    sPAR[97]=300.0; //Tstart[97]
    sPAR[98]=300.0; //Tstart[98]
    sPAR[99]=300.0; //Tstart[99]
    sPAR[100]=300.0; //Tstart[100]
    sPAR[103]=0.5; //f
    sPAR[104]=0.1; //l
    sPAR[105]=3.141592653589793; //pi
    sPARi[0]=100; //N
    X[0]=sPAR[2]; //Ttilde[1]
    X[1]=sPAR[3]; //Ttilde[2]
    X[2]=sPAR[4]; //Ttilde[3]
    X[3]=sPAR[5]; //Ttilde[4]
    X[4]=sPAR[6]; //Ttilde[5]
    X[5]=sPAR[7]; //Ttilde[6]
    X[6]=sPAR[8]; //Ttilde[7]
    X[7]=sPAR[9]; //Ttilde[8]
    X[8]=sPAR[10]; //Ttilde[9]
    X[9]=sPAR[11]; //Ttilde[10]
    X[10]=sPAR[12]; //Ttilde[11]
    X[11]=sPAR[13]; //Ttilde[12]
    X[12]=sPAR[14]; //Ttilde[13]
    X[13]=sPAR[15]; //Ttilde[14]
    X[14]=sPAR[16]; //Ttilde[15]
    X[15]=sPAR[17]; //Ttilde[16]
    X[16]=sPAR[18]; //Ttilde[17]
    X[17]=sPAR[19]; //Ttilde[18]
    X[18]=sPAR[20]; //Ttilde[19]
    X[19]=sPAR[21]; //Ttilde[20]
    X[20]=sPAR[22]; //Ttilde[21]
    X[21]=sPAR[23]; //Ttilde[22]
    X[22]=sPAR[24]; //Ttilde[23]
    X[23]=sPAR[25]; //Ttilde[24]
    X[24]=sPAR[26]; //Ttilde[25]
    X[25]=sPAR[27]; //Ttilde[26]
    X[26]=sPAR[28]; //Ttilde[27]
    X[27]=sPAR[29]; //Ttilde[28]
    X[28]=sPAR[30]; //Ttilde[29]
    X[29]=sPAR[31]; //Ttilde[30]
    X[30]=sPAR[32]; //Ttilde[31]
    X[31]=sPAR[33]; //Ttilde[32]
    X[32]=sPAR[34]; //Ttilde[33]
    X[33]=sPAR[35]; //Ttilde[34]
    X[34]=sPAR[36]; //Ttilde[35]
    X[35]=sPAR[37]; //Ttilde[36]
    X[36]=sPAR[38]; //Ttilde[37]
    X[37]=sPAR[39]; //Ttilde[38]
    X[38]=sPAR[40]; //Ttilde[39]
    X[39]=sPAR[41]; //Ttilde[40]
    X[40]=sPAR[42]; //Ttilde[41]
    X[41]=sPAR[43]; //Ttilde[42]
    X[42]=sPAR[44]; //Ttilde[43]
    X[43]=sPAR[45]; //Ttilde[44]
    X[44]=sPAR[46]; //Ttilde[45]
    X[45]=sPAR[47]; //Ttilde[46]
    X[46]=sPAR[48]; //Ttilde[47]
    X[47]=sPAR[49]; //Ttilde[48]
    X[48]=sPAR[50]; //Ttilde[49]
    X[49]=sPAR[51]; //Ttilde[50]
    X[50]=sPAR[52]; //Ttilde[51]
    X[51]=sPAR[53]; //Ttilde[52]
    X[52]=sPAR[54]; //Ttilde[53]
    X[53]=sPAR[55]; //Ttilde[54]
    X[54]=sPAR[56]; //Ttilde[55]
    X[55]=sPAR[57]; //Ttilde[56]
    X[56]=sPAR[58]; //Ttilde[57]
    X[57]=sPAR[59]; //Ttilde[58]
    X[58]=sPAR[60]; //Ttilde[59]
    X[59]=sPAR[61]; //Ttilde[60]
    X[60]=sPAR[62]; //Ttilde[61]
    X[61]=sPAR[63]; //Ttilde[62]
    X[62]=sPAR[64]; //Ttilde[63]
    X[63]=sPAR[65]; //Ttilde[64]
    X[64]=sPAR[66]; //Ttilde[65]
    X[65]=sPAR[67]; //Ttilde[66]
    X[66]=sPAR[68]; //Ttilde[67]
    X[67]=sPAR[69]; //Ttilde[68]
    X[68]=sPAR[70]; //Ttilde[69]
    X[69]=sPAR[71]; //Ttilde[70]
    X[70]=sPAR[72]; //Ttilde[71]
    X[71]=sPAR[73]; //Ttilde[72]
    X[72]=sPAR[74]; //Ttilde[73]
    X[73]=sPAR[75]; //Ttilde[74]
    X[74]=sPAR[76]; //Ttilde[75]
    X[75]=sPAR[77]; //Ttilde[76]
    X[76]=sPAR[78]; //Ttilde[77]
    X[77]=sPAR[79]; //Ttilde[78]
    X[78]=sPAR[80]; //Ttilde[79]
    X[79]=sPAR[81]; //Ttilde[80]
    X[80]=sPAR[82]; //Ttilde[81]
    X[81]=sPAR[83]; //Ttilde[82]
    X[82]=sPAR[84]; //Ttilde[83]
    X[83]=sPAR[85]; //Ttilde[84]
    X[84]=sPAR[86]; //Ttilde[85]
    X[85]=sPAR[87]; //Ttilde[86]
    X[86]=sPAR[88]; //Ttilde[87]
    X[87]=sPAR[89]; //Ttilde[88]
    X[88]=sPAR[90]; //Ttilde[89]
    X[89]=sPAR[91]; //Ttilde[90]
    X[90]=sPAR[92]; //Ttilde[91]
    X[91]=sPAR[93]; //Ttilde[92]
    X[92]=sPAR[94]; //Ttilde[93]
    X[93]=sPAR[95]; //Ttilde[94]
    X[94]=sPAR[96]; //Ttilde[95]
    X[95]=sPAR[97]; //Ttilde[96]
    X[96]=sPAR[98]; //Ttilde[97]
    X[97]=sPAR[99]; //Ttilde[98]
    X[98]=sPAR[100]; //Ttilde[99]

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
