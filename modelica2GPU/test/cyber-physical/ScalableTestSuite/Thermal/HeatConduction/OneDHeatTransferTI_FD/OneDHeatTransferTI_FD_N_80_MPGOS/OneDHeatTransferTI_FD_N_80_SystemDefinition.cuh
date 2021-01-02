
#ifndef ONEDHEATTRANSFERTI_FD_N_80_PERTHREAD_SYSTEMDEFINITION_H
#define ONEDHEATTRANSFERTI_FD_N_80_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[0]=sPAR[2];
    F[78]=(156025.0 * (sPAR[5] * ((sPAR[2] + ((-2.0 * X[78]) + X[77])) / (sPAR[3] * sPAR[6]))));
    F[1]=(156025.0 * (sPAR[5] * ((X[2] + ((-2.0 * X[1]) + X[0])) / (sPAR[6] * sPAR[3]))));
    F[2]=(156025.0 * (sPAR[5] * ((X[3] + ((-2.0 * X[2]) + X[1])) / (sPAR[6] * sPAR[3]))));
    F[3]=(156025.0 * (sPAR[5] * ((X[4] + ((-2.0 * X[3]) + X[2])) / (sPAR[6] * sPAR[3]))));
    F[4]=(156025.0 * (sPAR[5] * ((X[5] + ((-2.0 * X[4]) + X[3])) / (sPAR[6] * sPAR[3]))));
    F[5]=(156025.0 * (sPAR[5] * ((X[6] + ((-2.0 * X[5]) + X[4])) / (sPAR[6] * sPAR[3]))));
    F[6]=(156025.0 * (sPAR[5] * ((X[7] + ((-2.0 * X[6]) + X[5])) / (sPAR[6] * sPAR[3]))));
    F[7]=(156025.0 * (sPAR[5] * ((X[8] + ((-2.0 * X[7]) + X[6])) / (sPAR[6] * sPAR[3]))));
    F[8]=(156025.0 * (sPAR[5] * ((X[9] + ((-2.0 * X[8]) + X[7])) / (sPAR[6] * sPAR[3]))));
    F[9]=(156025.0 * (sPAR[5] * ((X[10] + ((-2.0 * X[9]) + X[8])) / (sPAR[6] * sPAR[3]))));
    F[10]=(156025.0 * (sPAR[5] * ((X[11] + ((-2.0 * X[10]) + X[9])) / (sPAR[6] * sPAR[3]))));
    F[11]=(156025.0 * (sPAR[5] * ((X[12] + ((-2.0 * X[11]) + X[10])) / (sPAR[6] * sPAR[3]))));
    F[12]=(156025.0 * (sPAR[5] * ((X[13] + ((-2.0 * X[12]) + X[11])) / (sPAR[6] * sPAR[3]))));
    F[13]=(156025.0 * (sPAR[5] * ((X[14] + ((-2.0 * X[13]) + X[12])) / (sPAR[6] * sPAR[3]))));
    F[14]=(156025.0 * (sPAR[5] * ((X[15] + ((-2.0 * X[14]) + X[13])) / (sPAR[6] * sPAR[3]))));
    F[15]=(156025.0 * (sPAR[5] * ((X[16] + ((-2.0 * X[15]) + X[14])) / (sPAR[6] * sPAR[3]))));
    F[16]=(156025.0 * (sPAR[5] * ((X[17] + ((-2.0 * X[16]) + X[15])) / (sPAR[6] * sPAR[3]))));
    F[17]=(156025.0 * (sPAR[5] * ((X[18] + ((-2.0 * X[17]) + X[16])) / (sPAR[6] * sPAR[3]))));
    F[18]=(156025.0 * (sPAR[5] * ((X[19] + ((-2.0 * X[18]) + X[17])) / (sPAR[6] * sPAR[3]))));
    F[19]=(156025.0 * (sPAR[5] * ((X[20] + ((-2.0 * X[19]) + X[18])) / (sPAR[6] * sPAR[3]))));
    F[20]=(156025.0 * (sPAR[5] * ((X[21] + ((-2.0 * X[20]) + X[19])) / (sPAR[6] * sPAR[3]))));
    F[21]=(156025.0 * (sPAR[5] * ((X[22] + ((-2.0 * X[21]) + X[20])) / (sPAR[6] * sPAR[3]))));
    F[22]=(156025.0 * (sPAR[5] * ((X[23] + ((-2.0 * X[22]) + X[21])) / (sPAR[6] * sPAR[3]))));
    F[23]=(156025.0 * (sPAR[5] * ((X[24] + ((-2.0 * X[23]) + X[22])) / (sPAR[6] * sPAR[3]))));
    F[24]=(156025.0 * (sPAR[5] * ((X[25] + ((-2.0 * X[24]) + X[23])) / (sPAR[6] * sPAR[3]))));
    F[25]=(156025.0 * (sPAR[5] * ((X[26] + ((-2.0 * X[25]) + X[24])) / (sPAR[6] * sPAR[3]))));
    F[26]=(156025.0 * (sPAR[5] * ((X[27] + ((-2.0 * X[26]) + X[25])) / (sPAR[6] * sPAR[3]))));
    F[27]=(156025.0 * (sPAR[5] * ((X[28] + ((-2.0 * X[27]) + X[26])) / (sPAR[6] * sPAR[3]))));
    F[28]=(156025.0 * (sPAR[5] * ((X[29] + ((-2.0 * X[28]) + X[27])) / (sPAR[6] * sPAR[3]))));
    F[29]=(156025.0 * (sPAR[5] * ((X[30] + ((-2.0 * X[29]) + X[28])) / (sPAR[6] * sPAR[3]))));
    F[30]=(156025.0 * (sPAR[5] * ((X[31] + ((-2.0 * X[30]) + X[29])) / (sPAR[6] * sPAR[3]))));
    F[31]=(156025.0 * (sPAR[5] * ((X[32] + ((-2.0 * X[31]) + X[30])) / (sPAR[6] * sPAR[3]))));
    F[32]=(156025.0 * (sPAR[5] * ((X[33] + ((-2.0 * X[32]) + X[31])) / (sPAR[6] * sPAR[3]))));
    F[33]=(156025.0 * (sPAR[5] * ((X[34] + ((-2.0 * X[33]) + X[32])) / (sPAR[6] * sPAR[3]))));
    F[34]=(156025.0 * (sPAR[5] * ((X[35] + ((-2.0 * X[34]) + X[33])) / (sPAR[6] * sPAR[3]))));
    F[35]=(156025.0 * (sPAR[5] * ((X[36] + ((-2.0 * X[35]) + X[34])) / (sPAR[6] * sPAR[3]))));
    F[36]=(156025.0 * (sPAR[5] * ((X[37] + ((-2.0 * X[36]) + X[35])) / (sPAR[6] * sPAR[3]))));
    F[37]=(156025.0 * (sPAR[5] * ((X[38] + ((-2.0 * X[37]) + X[36])) / (sPAR[6] * sPAR[3]))));
    F[38]=(156025.0 * (sPAR[5] * ((X[39] + ((-2.0 * X[38]) + X[37])) / (sPAR[6] * sPAR[3]))));
    F[39]=(156025.0 * (sPAR[5] * ((X[40] + ((-2.0 * X[39]) + X[38])) / (sPAR[6] * sPAR[3]))));
    F[40]=(156025.0 * (sPAR[5] * ((X[41] + ((-2.0 * X[40]) + X[39])) / (sPAR[6] * sPAR[3]))));
    F[41]=(156025.0 * (sPAR[5] * ((X[42] + ((-2.0 * X[41]) + X[40])) / (sPAR[6] * sPAR[3]))));
    F[42]=(156025.0 * (sPAR[5] * ((X[43] + ((-2.0 * X[42]) + X[41])) / (sPAR[6] * sPAR[3]))));
    F[43]=(156025.0 * (sPAR[5] * ((X[44] + ((-2.0 * X[43]) + X[42])) / (sPAR[6] * sPAR[3]))));
    F[44]=(156025.0 * (sPAR[5] * ((X[45] + ((-2.0 * X[44]) + X[43])) / (sPAR[6] * sPAR[3]))));
    F[45]=(156025.0 * (sPAR[5] * ((X[46] + ((-2.0 * X[45]) + X[44])) / (sPAR[6] * sPAR[3]))));
    F[46]=(156025.0 * (sPAR[5] * ((X[47] + ((-2.0 * X[46]) + X[45])) / (sPAR[6] * sPAR[3]))));
    F[47]=(156025.0 * (sPAR[5] * ((X[48] + ((-2.0 * X[47]) + X[46])) / (sPAR[6] * sPAR[3]))));
    F[48]=(156025.0 * (sPAR[5] * ((X[49] + ((-2.0 * X[48]) + X[47])) / (sPAR[6] * sPAR[3]))));
    F[49]=(156025.0 * (sPAR[5] * ((X[50] + ((-2.0 * X[49]) + X[48])) / (sPAR[6] * sPAR[3]))));
    F[50]=(156025.0 * (sPAR[5] * ((X[51] + ((-2.0 * X[50]) + X[49])) / (sPAR[6] * sPAR[3]))));
    F[51]=(156025.0 * (sPAR[5] * ((X[52] + ((-2.0 * X[51]) + X[50])) / (sPAR[6] * sPAR[3]))));
    F[52]=(156025.0 * (sPAR[5] * ((X[53] + ((-2.0 * X[52]) + X[51])) / (sPAR[6] * sPAR[3]))));
    F[53]=(156025.0 * (sPAR[5] * ((X[54] + ((-2.0 * X[53]) + X[52])) / (sPAR[6] * sPAR[3]))));
    F[54]=(156025.0 * (sPAR[5] * ((X[55] + ((-2.0 * X[54]) + X[53])) / (sPAR[6] * sPAR[3]))));
    F[55]=(156025.0 * (sPAR[5] * ((X[56] + ((-2.0 * X[55]) + X[54])) / (sPAR[6] * sPAR[3]))));
    F[56]=(156025.0 * (sPAR[5] * ((X[57] + ((-2.0 * X[56]) + X[55])) / (sPAR[6] * sPAR[3]))));
    F[57]=(156025.0 * (sPAR[5] * ((X[58] + ((-2.0 * X[57]) + X[56])) / (sPAR[6] * sPAR[3]))));
    F[58]=(156025.0 * (sPAR[5] * ((X[59] + ((-2.0 * X[58]) + X[57])) / (sPAR[6] * sPAR[3]))));
    F[59]=(156025.0 * (sPAR[5] * ((X[60] + ((-2.0 * X[59]) + X[58])) / (sPAR[6] * sPAR[3]))));
    F[60]=(156025.0 * (sPAR[5] * ((X[61] + ((-2.0 * X[60]) + X[59])) / (sPAR[6] * sPAR[3]))));
    F[61]=(156025.0 * (sPAR[5] * ((X[62] + ((-2.0 * X[61]) + X[60])) / (sPAR[6] * sPAR[3]))));
    F[62]=(156025.0 * (sPAR[5] * ((X[63] + ((-2.0 * X[62]) + X[61])) / (sPAR[6] * sPAR[3]))));
    F[63]=(156025.0 * (sPAR[5] * ((X[64] + ((-2.0 * X[63]) + X[62])) / (sPAR[6] * sPAR[3]))));
    F[64]=(156025.0 * (sPAR[5] * ((X[65] + ((-2.0 * X[64]) + X[63])) / (sPAR[6] * sPAR[3]))));
    F[65]=(156025.0 * (sPAR[5] * ((X[66] + ((-2.0 * X[65]) + X[64])) / (sPAR[6] * sPAR[3]))));
    F[66]=(156025.0 * (sPAR[5] * ((X[67] + ((-2.0 * X[66]) + X[65])) / (sPAR[6] * sPAR[3]))));
    F[67]=(156025.0 * (sPAR[5] * ((X[68] + ((-2.0 * X[67]) + X[66])) / (sPAR[6] * sPAR[3]))));
    F[68]=(156025.0 * (sPAR[5] * ((X[69] + ((-2.0 * X[68]) + X[67])) / (sPAR[6] * sPAR[3]))));
    F[69]=(156025.0 * (sPAR[5] * ((X[70] + ((-2.0 * X[69]) + X[68])) / (sPAR[6] * sPAR[3]))));
    F[70]=(156025.0 * (sPAR[5] * ((X[71] + ((-2.0 * X[70]) + X[69])) / (sPAR[6] * sPAR[3]))));
    F[71]=(156025.0 * (sPAR[5] * ((X[72] + ((-2.0 * X[71]) + X[70])) / (sPAR[6] * sPAR[3]))));
    F[72]=(156025.0 * (sPAR[5] * ((X[73] + ((-2.0 * X[72]) + X[71])) / (sPAR[6] * sPAR[3]))));
    F[73]=(156025.0 * (sPAR[5] * ((X[74] + ((-2.0 * X[73]) + X[72])) / (sPAR[6] * sPAR[3]))));
    F[74]=(156025.0 * (sPAR[5] * ((X[75] + ((-2.0 * X[74]) + X[73])) / (sPAR[6] * sPAR[3]))));
    F[75]=(156025.0 * (sPAR[5] * ((X[76] + ((-2.0 * X[75]) + X[74])) / (sPAR[6] * sPAR[3]))));
    F[76]=(156025.0 * (sPAR[5] * ((X[77] + ((-2.0 * X[76]) + X[75])) / (sPAR[6] * sPAR[3]))));
    F[77]=(156025.0 * (sPAR[5] * ((X[78] + ((-2.0 * X[77]) + X[76])) / (sPAR[6] * sPAR[3]))));
    F[0]=(156025.0 * (sPAR[5] * ((X[1] - X[0]) / (sPAR[6] * sPAR[3]))));

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
    ACC[0]=330.0; //T[80]
    sPAR[0]=0.2; //L
    sPAR[1]=273.15; //T0
    sPAR[2]=330.0; //TN
    sPAR[3]=910.0; //cp
    sPAR[4]=0.002531645569620253; //dx
    sPAR[5]=237.0; //lambda
    sPAR[6]=2712.0; //rho
    sPARi[0]=80; //N
    X[0]=sPAR[1]; //T[1]
    X[1]=sPAR[1]; //T[2]
    X[2]=sPAR[1]; //T[3]
    X[3]=sPAR[1]; //T[4]
    X[4]=sPAR[1]; //T[5]
    X[5]=sPAR[1]; //T[6]
    X[6]=sPAR[1]; //T[7]
    X[7]=sPAR[1]; //T[8]
    X[8]=sPAR[1]; //T[9]
    X[9]=sPAR[1]; //T[10]
    X[10]=sPAR[1]; //T[11]
    X[11]=sPAR[1]; //T[12]
    X[12]=sPAR[1]; //T[13]
    X[13]=sPAR[1]; //T[14]
    X[14]=sPAR[1]; //T[15]
    X[15]=sPAR[1]; //T[16]
    X[16]=sPAR[1]; //T[17]
    X[17]=sPAR[1]; //T[18]
    X[18]=sPAR[1]; //T[19]
    X[19]=sPAR[1]; //T[20]
    X[20]=sPAR[1]; //T[21]
    X[21]=sPAR[1]; //T[22]
    X[22]=sPAR[1]; //T[23]
    X[23]=sPAR[1]; //T[24]
    X[24]=sPAR[1]; //T[25]
    X[25]=sPAR[1]; //T[26]
    X[26]=sPAR[1]; //T[27]
    X[27]=sPAR[1]; //T[28]
    X[28]=sPAR[1]; //T[29]
    X[29]=sPAR[1]; //T[30]
    X[30]=sPAR[1]; //T[31]
    X[31]=sPAR[1]; //T[32]
    X[32]=sPAR[1]; //T[33]
    X[33]=sPAR[1]; //T[34]
    X[34]=sPAR[1]; //T[35]
    X[35]=sPAR[1]; //T[36]
    X[36]=sPAR[1]; //T[37]
    X[37]=sPAR[1]; //T[38]
    X[38]=sPAR[1]; //T[39]
    X[39]=sPAR[1]; //T[40]
    X[40]=sPAR[1]; //T[41]
    X[41]=sPAR[1]; //T[42]
    X[42]=sPAR[1]; //T[43]
    X[43]=sPAR[1]; //T[44]
    X[44]=sPAR[1]; //T[45]
    X[45]=sPAR[1]; //T[46]
    X[46]=sPAR[1]; //T[47]
    X[47]=sPAR[1]; //T[48]
    X[48]=sPAR[1]; //T[49]
    X[49]=sPAR[1]; //T[50]
    X[50]=sPAR[1]; //T[51]
    X[51]=sPAR[1]; //T[52]
    X[52]=sPAR[1]; //T[53]
    X[53]=sPAR[1]; //T[54]
    X[54]=sPAR[1]; //T[55]
    X[55]=sPAR[1]; //T[56]
    X[56]=sPAR[1]; //T[57]
    X[57]=sPAR[1]; //T[58]
    X[58]=sPAR[1]; //T[59]
    X[59]=sPAR[1]; //T[60]
    X[60]=sPAR[1]; //T[61]
    X[61]=sPAR[1]; //T[62]
    X[62]=sPAR[1]; //T[63]
    X[63]=sPAR[1]; //T[64]
    X[64]=sPAR[1]; //T[65]
    X[65]=sPAR[1]; //T[66]
    X[66]=sPAR[1]; //T[67]
    X[67]=sPAR[1]; //T[68]
    X[68]=sPAR[1]; //T[69]
    X[69]=sPAR[1]; //T[70]
    X[70]=sPAR[1]; //T[71]
    X[71]=sPAR[1]; //T[72]
    X[72]=sPAR[1]; //T[73]
    X[73]=sPAR[1]; //T[74]
    X[74]=sPAR[1]; //T[75]
    X[75]=sPAR[1]; //T[76]
    X[76]=sPAR[1]; //T[77]
    X[77]=sPAR[1]; //T[78]
    X[78]=sPAR[1]; //T[79]

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif