
#ifndef BIOMD491_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD491_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[52]=(X[34] + ((-14.0 * X[52]) + (X[48] + (X[49] + (X[47] + (X[45] + (X[51] + (X[42] + (X[50] + (X[36] + (X[38] + (X[31] + (X[29] + (X[27] + X[40]))))))))))))));
    F[51]=(X[20] + ((-2.0 * X[51]) + X[52]));
    F[50]=(X[20] + ((-2.0 * X[50]) + X[52]));
    F[49]=(X[20] + ((-2.0 * X[49]) + X[52]));
    F[48]=(X[20] + ((-2.0 * X[48]) + X[52]));
    F[47]=(X[46] + ((-2.0 * X[47]) + X[52]));
    F[46]=(X[20] + ((-2.0 * X[46]) + X[47]));
    F[45]=(X[43] + ((-2.0 * X[45]) + X[52]));
    F[43]=(X[20] + ((-2.0 * X[43]) + X[45]));
    F[42]=(X[41] + ((-2.0 * X[42]) + X[52]));
    F[41]=(X[23] + ((-3.0 * X[41]) + (X[25] + X[42])));
    F[40]=(X[39] + ((-2.0 * X[40]) + X[52]));
    F[39]=(X[24] + ((-3.0 * X[39]) + (X[25] + X[40])));
    F[38]=(X[37] + ((-2.0 * X[38]) + X[52]));
    F[37]=(X[23] + ((-2.0 * X[37]) + X[38]));
    F[36]=(X[35] + ((-2.0 * X[36]) + X[52]));
    F[35]=(X[23] + ((-2.0 * X[35]) + X[36]));
    F[34]=(X[32] + ((-2.0 * X[34]) + X[52]));
    F[32]=(X[24] + ((-2.0 * X[32]) + X[34]));
    F[31]=(X[30] + ((-2.0 * X[31]) + X[52]));
    F[30]=(X[21] + ((-2.0 * X[30]) + X[31]));
    F[29]=(X[28] + ((-2.0 * X[29]) + X[52]));
    F[28]=(X[23] + ((-3.0 * X[28]) + (X[25] + X[29])));
    F[27]=(X[26] + ((-2.0 * X[27]) + X[52]));
    F[26]=(X[21] + ((-3.0 * X[26]) + (X[24] + X[27])));
    F[25]=(X[20] + ((-5.0 * X[25]) + (X[12] + (X[41] + (X[39] + X[28])))));
    F[24]=(X[20] + ((-5.0 * X[24]) + (X[12] + (X[26] + (X[39] + X[32])))));
    F[23]=(X[20] + ((-7.0 * X[23]) + (X[12] + (X[18] + (X[28] + (X[35] + (X[41] + X[37])))))));
    F[21]=(X[20] + ((-3.0 * X[21]) + (X[30] + X[26])));
    F[18]=(X[9] + ((-3.0 * X[18]) + (X[7] + X[23])));
    F[17]=(X[9] - X[17]);
    F[16]=(X[9] - X[16]);
    F[15]=(X[9] - X[15]);
    F[14]=(X[9] - X[14]);
    F[13]=(X[9] - X[13]);
    F[12]=(X[9] + ((-5.0 * X[12]) + (X[6] + (X[23] + (X[24] + X[25])))));
    F[10]=(X[9] + ((-2.0 * X[10]) + X[6]));
    F[20]=(X[19] + ((-11.0 * X[20]) + (X[21] + (X[23] + (X[24] + (X[25] + (X[51] + (X[43] + (X[46] + (X[48] + (X[49] + X[50])))))))))));
    F[19]=(X[9] + ((-2.0 * X[19]) + X[20]));
    F[9]=(X[8] + ((-10.0 * X[9]) + (X[10] + (X[12] + (X[13] + (X[14] + (X[15] + (X[16] + (X[17] + (X[18] + X[19]))))))))));
    F[8]=(X[5] + ((-2.0 * X[8]) + X[9]));
    F[7]=(X[5] + ((-4.0 * X[7]) + (X[2] + (X[3] + X[18]))));
    F[6]=(X[5] + ((-4.0 * X[6]) + (X[54] + (X[10] + X[12]))));
    F[5]=(X[4] + ((-4.0 * X[5]) + (X[6] + (X[7] + X[8]))));
    F[4]=(X[54] + ((-5.0 * X[4]) + (X[55] + (X[56] + (X[1] + X[5])))));
    F[3]=(X[53] + ((-2.0 * X[3]) + X[7]));
    F[2]=(X[53] + ((-2.0 * X[2]) + X[7]));
    F[1]=(X[53] + ((-2.0 * X[1]) + X[4]));
    F[56]=(X[11] + ((-3.0 * X[56]) + (X[22] + X[4])));
    F[55]=(X[11] + ((-2.0 * X[55]) + X[4]));
    F[54]=(X[0] + ((-7.0 * X[54]) + (X[11] + (X[22] + (X[33] + (X[44] + (X[4] + X[6])))))));
    F[53]=(X[3] + ((-3.0 * X[53]) + (X[2] + X[1])));
    F[44]=(X[54] - X[44]);
    F[33]=(X[54] - X[33]);
    F[22]=(X[56] + ((-2.0 * X[22]) + X[54]));
    F[11]=(X[54] + ((-3.0 * X[11]) + (X[55] + X[56])));
    F[0]=(X[54] - X[0]);

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
    X[1]=0.8; //s10
    X[2]=0.8; //s11
    X[3]=0.8; //s12
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
    X[20]=1.0; //s28
    X[21]=1.0; //s29
    X[22]=0.5; //s3
    X[23]=1.0; //s30
    X[24]=1.0; //s31
    X[25]=1.0; //s32
    X[26]=1.2; //s33
    X[27]=1.2; //s34
    X[28]=1.2; //s35
    X[29]=1.2; //s36
    X[30]=1.2; //s37
    X[31]=1.2; //s38
    X[32]=1.2; //s39
    X[33]=0.5; //s4
    X[34]=1.2; //s40
    X[35]=1.2; //s41
    X[36]=1.2; //s42
    X[37]=1.2; //s43
    X[38]=1.2; //s44
    X[39]=1.2; //s45
    X[40]=1.2; //s46
    X[41]=1.2; //s47
    X[42]=1.2; //s48
    X[43]=1.5; //s49
    X[44]=0.5; //s5
    X[45]=1.5; //s50
    X[46]=1.5; //s51
    X[47]=1.5; //s52
    X[48]=1.5; //s53
    X[49]=1.8; //s54
    X[50]=2.0; //s55
    X[51]=2.2; //s56
    X[52]=2.5; //s57
    X[53]=0.5; //s6
    X[54]=0.8; //s7
    X[55]=0.8; //s8
    X[56]=0.8; //s9

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
