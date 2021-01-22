
#ifndef BIOMD492_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD492_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[19]=(X[13] - X[19]);
    F[18]=(X[13] - X[18]);
    F[47]=(X[39] + ((-14.0 * X[47]) + (X[24] + (X[43] + (X[45] + (X[46] + (X[42] + (X[30] + (X[35] + (X[28] + (X[21] + (X[41] + (X[37] + (X[32] + X[26]))))))))))))));
    F[46]=(X[13] + ((-2.0 * X[46]) + X[47]));
    F[45]=(X[13] + ((-2.0 * X[45]) + X[47]));
    F[43]=(X[13] + ((-2.0 * X[43]) + X[47]));
    F[42]=(X[13] + ((-2.0 * X[42]) + X[47]));
    F[41]=(X[40] + ((-2.0 * X[41]) + X[47]));
    F[40]=(X[17] + ((-3.0 * X[40]) + (X[15] + X[41])));
    F[39]=(X[38] + ((-2.0 * X[39]) + X[47]));
    F[38]=(X[15] + ((-3.0 * X[38]) + (X[17] + X[39])));
    F[37]=(X[36] + ((-2.0 * X[37]) + X[47]));
    F[36]=(X[15] + ((-3.0 * X[36]) + (X[17] + X[37])));
    F[35]=(X[34] + ((-2.0 * X[35]) + X[47]));
    F[34]=(X[15] + ((-2.0 * X[34]) + X[35]));
    F[32]=(X[31] + ((-2.0 * X[32]) + X[47]));
    F[31]=(X[16] + ((-2.0 * X[31]) + X[32]));
    F[30]=(X[29] + ((-2.0 * X[30]) + X[47]));
    F[29]=(X[17] + ((-2.0 * X[29]) + X[30]));
    F[28]=(X[27] + ((-2.0 * X[28]) + X[47]));
    F[27]=(X[16] + ((-2.0 * X[27]) + X[28]));
    F[26]=(X[25] + ((-2.0 * X[26]) + X[47]));
    F[25]=(X[15] + ((-4.0 * X[25]) + (X[16] + (X[17] + X[26]))));
    F[24]=(X[23] + ((-2.0 * X[24]) + X[47]));
    F[23]=(X[13] + ((-2.0 * X[23]) + X[24]));
    F[21]=(X[20] + ((-2.0 * X[21]) + X[47]));
    F[20]=(X[14] + ((-3.0 * X[20]) + (X[16] + X[21])));
    F[17]=(X[13] + ((-8.0 * X[17]) + (X[8] + (X[9] + (X[36] + (X[40] + (X[25] + (X[38] + X[29]))))))));
    F[16]=(X[13] + ((-6.0 * X[16]) + (X[7] + (X[20] + (X[25] + (X[31] + X[27]))))));
    F[15]=(X[13] + ((-8.0 * X[15]) + (X[8] + (X[9] + (X[25] + (X[36] + (X[40] + (X[38] + X[34]))))))));
    F[14]=(X[13] + ((-4.0 * X[14]) + (X[7] + (X[8] + X[20]))));
    F[13]=(X[12] + ((-12.0 * X[13]) + (X[14] + (X[15] + (X[16] + (X[17] + (X[18] + (X[19] + (X[23] + (X[42] + (X[43] + (X[46] + X[45]))))))))))));
    F[12]=(X[6] + ((-2.0 * X[12]) + X[13]));
    F[10]=(X[6] + ((-2.0 * X[10]) + X[2]));
    F[9]=(X[6] + ((-4.0 * X[9]) + (X[51] + (X[15] + X[17]))));
    F[8]=(X[6] + ((-5.0 * X[8]) + (X[51] + (X[14] + (X[15] + X[17])))));
    F[7]=(X[6] + ((-4.0 * X[7]) + (X[51] + (X[14] + X[16]))));
    F[6]=(X[5] + ((-6.0 * X[6]) + (X[7] + (X[8] + (X[9] + (X[10] + X[12]))))));
    F[5]=(X[50] + ((-2.0 * X[5]) + X[6]));
    F[4]=(X[50] + ((-2.0 * X[4]) + X[44]));
    F[3]=(X[50] - X[3]);
    F[2]=(X[50] + ((-3.0 * X[2]) + (X[44] + X[10])));
    F[1]=(X[50] - X[1]);
    F[51]=(X[50] + ((-5.0 * X[51]) + (X[48] + (X[7] + (X[8] + X[9])))));
    F[50]=(X[49] + ((-7.0 * X[50]) + (X[51] + (X[1] + (X[2] + (X[3] + (X[4] + X[5])))))));
    F[49]=(X[22] + ((-5.0 * X[49]) + (X[33] + (X[44] + (X[48] + X[50])))));
    F[48]=(X[11] + ((-3.0 * X[48]) + (X[49] + X[51])));
    F[44]=(X[0] + ((-5.0 * X[44]) + (X[11] + (X[49] + (X[4] + X[2])))));
    F[33]=(X[0] + ((-3.0 * X[33]) + (X[11] + X[49])));
    F[22]=(X[0] + ((-2.0 * X[22]) + X[49]));
    F[11]=(X[33] + ((-3.0 * X[11]) + (X[44] + X[48])));
    F[0]=(X[22] + ((-3.0 * X[0]) + (X[33] + X[44])));

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
    X[0]=0.5; //s1
    X[1]=1.0; //s10
    X[2]=1.0; //s11
    X[3]=1.0; //s12
    X[4]=1.0; //s13
    X[5]=1.0; //s14
    X[6]=1.0; //s15
    X[7]=1.0; //s16
    X[8]=1.0; //s17
    X[9]=1.0; //s18
    X[10]=1.0; //s19
    X[11]=0.5; //s2
    X[12]=1.0; //s20
    X[13]=1.0; //s21
    X[14]=1.0; //s22
    X[15]=1.0; //s23
    X[16]=1.0; //s24
    X[17]=1.0; //s25
    X[18]=1.0; //s26
    X[19]=1.0; //s27
    X[20]=1.2; //s28
    X[21]=1.2; //s29
    X[22]=0.8; //s3
    X[23]=1.5; //s30
    X[24]=1.5; //s31
    X[25]=1.2; //s32
    X[26]=1.2; //s33
    X[27]=1.2; //s34
    X[28]=1.2; //s35
    X[29]=1.5; //s36
    X[30]=1.5; //s37
    X[31]=1.2; //s38
    X[32]=1.2; //s39
    X[33]=0.8; //s4
    X[34]=1.2; //s40
    X[35]=1.2; //s41
    X[36]=1.2; //s42
    X[37]=1.2; //s43
    X[38]=1.2; //s44
    X[39]=1.2; //s45
    X[40]=1.2; //s46
    X[41]=1.2; //s47
    X[42]=1.5; //s48
    X[43]=1.8; //s49
    X[44]=0.8; //s5
    X[45]=2.0; //s50
    X[46]=2.2; //s51
    X[47]=2.5; //s52
    X[48]=0.8; //s6
    X[49]=1.0; //s7
    X[50]=1.0; //s8
    X[51]=1.0; //s9

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
