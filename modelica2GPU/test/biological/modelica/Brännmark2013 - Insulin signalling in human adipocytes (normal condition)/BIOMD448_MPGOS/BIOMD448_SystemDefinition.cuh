
#ifndef BIOMD448_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD448_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[0]=(352.1 + (36.21 * X[3]));
    ACC[11]=X[26];
    ACC[9]=(0.11494 * X[20]);
    ACC[8]=(0.74654 * X[19]);
    ACC[10]=X[24];
    ACC[1]=(0.026656 * X[1]);
    ACC[7]=(0.012996 * (X[16] + X[15]));
    ACC[6]=(0.043564 * (X[14] + X[15]));
    ACC[2]=(0.058663 * (X[8] + X[6]));
    ACC[3]=(0.37615 * (X[7] + X[8]));
    ACC[4]=(X[9] + X[11]);
    ACC[5]=(5.2022 * (X[12] + X[11]));
    F[20]=((3.329 * (X[17] * X[19])) + (-31.0 * X[20]));
    F[17]=((31.0 * X[20]) + (-3.329 * (X[17] * X[19])));
    F[19]=((0.1298 * (X[18] * (pow(X[24],0.9855) / (5178.590029463431 + pow(X[24],0.9855))))) + (-0.04441 * X[19]));
    F[18]=((0.04441 * X[19]) + (-0.1298 * (X[18] * (pow(X[24],0.9855) / (5178.590029463431 + pow(X[24],0.9855))))));
    F[2]=((2286.0 * X[3]) + (-50.98 * (X[2] * X[1])));
    F[3]=((50.98 * (X[2] * X[1])) + (-2286.0 * X[3]));
    F[1]=((X[0] * ((2.652 * X[15]) + (36.93 * (pow(X[16],2.137) / (1489.927454728122 + pow(X[16],2.137)))))) + (-65.18000000000001 * X[1]));
    F[0]=((65.18000000000001 * X[1]) - (X[0] * ((2.652 * X[15]) + (36.93 * (pow(X[16],2.137) / (1489.927454728122 + pow(X[16],2.137)))))));
    F[26]=((0.08575000000000001 * (X[25] * X[11])) + (-1.06 * X[26]));
    F[25]=((1.06 * X[26]) + (-0.08575000000000001 * (X[25] * X[11])));
    F[24]=((X[23] * ((1.842 * X[15]) + (0.05506 * X[14]))) + (-24.83 * X[24]));
    F[23]=((24.83 * X[24]) - (X[23] * ((1.842 * X[15]) + (0.05506 * X[14]))));
    F[15]=((4.456 * (X[14] * X[26])) + ((42.84 * (X[16] * X[8])) + (-143.6 * X[15])));
    F[16]=((143.6 * X[15]) + (X[16] * (-0.5361 + (-42.84 * X[8]))));
    F[14]=((5790.0 * (X[13] * X[7])) + (X[14] * (-34.8 + (-4.456 * X[26]))));
    F[13]=((34.8 * X[14]) + ((0.5361 * X[16]) + (-5790.0 * (X[13] * X[7]))));
    F[22]=((0.001377 * (X[21] * X[7])) + (-0.09876 * X[22]));
    F[21]=((0.09876 * X[22]) + (-0.001377 * (X[21] * X[7])));
    F[6]=((2.913 * X[8]) + ((0.04228 * X[5]) + (-0.2671 * X[6])));
    F[8]=((5759.0 * (X[7] * X[24])) + (-283.713 * X[8]));
    F[7]=((3.227 * (X[5] * X[11])) + ((280.8 * X[8]) + (X[7] * (-3424.0 + (-5759.0 * X[24])))));
    F[5]=((3424.0 * X[7]) + ((0.2671 * X[6]) + (X[5] * (-0.04228 + (-3.227 * X[11])))));
    F[9]=((1840.0 * (X[11] * X[22])) + (-0.5471 * X[9]));
    F[11]=((31.01 * X[12]) + (-1840.0 * (X[11] * X[22])));
    F[10]=((6.331 * X[4]) + (-0.8768 * X[10]));
    F[12]=((0.03683 * X[4]) + ((0.8768 * X[10]) + (-1975.01 * X[12])));
    F[4]=((1944.0 * X[12]) + ((0.5471 * X[9]) + (-6.36783 * X[4])));

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
    ACC[0]=0.0; //glucoseuptake
    ACC[1]=0.0; //measuredAS160p
    ACC[2]=0.0; //measuredIRS1307
    ACC[3]=0.0; //measuredIRS1p
    ACC[4]=0.0; //measuredIRint
    ACC[5]=0.0; //measuredIRp
    ACC[6]=0.0; //measuredPKB308p
    ACC[7]=0.0; //measuredPKB473p
    ACC[8]=0.0; //measuredS6Kp
    ACC[9]=0.0; //measuredS6p
    ACC[10]=0.0; //measuredmTORC1a
    ACC[11]=0.0; //measuredmTORC2a
    X[0]=83.8141018591099; //AS160
    X[1]=16.1858981408903; //AS160p
    X[2]=73.476121253771; //GLUT4
    X[3]=26.523878746229; //GLUT4m
    X[4]=99.8737104842408; //IR
    X[5]=82.9671997523599; //IRS1
    X[6]=16.7041510257561; //IRS1307
    X[7]=0.00119481841136737; //IRS1p
    X[8]=0.327454355438396; //IRS1p307
    X[9]=0.105583925473107; //IRi
    X[10]=0.0; //IRins
    X[11]=0.0188430465801578; //IRip
    X[12]=0.00186253217635894; //IRp
    X[13]=68.18066496619009; //PKB
    X[14]=13.2964849666951; //PKB308p
    X[15]=1.70566051030056; //PKB308p473p
    X[16]=16.8171941560617; //PKB473p
    X[17]=92.75964207960379; //S6
    X[18]=99.2731987219547; //S6K
    X[19]=0.72680127804522; //S6Kp
    X[20]=7.24035792039603; //S6p
    X[21]=99.9983336594667; //X
    X[22]=0.00166634053318549; //Xp
    X[23]=86.50024722402731; //mTORC1
    X[24]=13.4997527759726; //mTORC1a
    X[25]=99.8478148461591; //mTORC2
    X[26]=0.152185153840861; //mTORC2a

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
