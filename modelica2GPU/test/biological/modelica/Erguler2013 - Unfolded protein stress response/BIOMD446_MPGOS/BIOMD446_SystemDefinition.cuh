
#ifndef BIOMD446_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD446_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[9]=13.0;
    ACC[1]=(X[5] - X[4]);
    ACC[3]=(X[8] - X[7]);
    ACC[2]=(X[6] + ((-(X[7])) - X[4]));
    ACC[8]=fGK((10.0 * X[17]),(0.5 * (0.1 + X[15])),0.001,0.001);
    ACC[10]=EMM(X[26],(2.0 * X[16]),1.0,10.0);
    ACC[0]=(X[2] - X[9]);
    ACC[6]=(1.0 + ((-4.0 * X[17]) - X[10]));
    ACC[5]=(1.0 + ((-4.0 * X[16]) - X[12]));
    ACC[4]=(X[11] + ((((-(X[13])) - X[12]) - X[9]) - X[10]));
    ACC[7]=(X[18] - X[13]);
    F[8]=(0.1 + ((0.12 * X[14]) + (-0.01 * X[8])));
    F[6]=((10.0 / (1.0 + (0.03 * X[14]))) + (-0.1 * X[6]));
    F[15]=(X[23] + (-0.1 * X[15]));
    F[23]=((0.05 * (X[14] / (1.0 + (0.05 * X[14])))) - X[23]);
    F[14]=(X[22] + (-0.1 * X[14]));
    F[22]=((((0.05 * X[0]) + (0.1 * X[3])) / (1.0 + ((0.05 * X[0]) + (0.1 * X[3])))) - X[22]);
    F[19]=(X[24] + (-0.1 * X[19]));
    F[24]=((X[3] / (1.0 + X[3])) - X[24]);
    F[3]=((10.0 * X[1]) + (-0.1 * X[3]));
    F[11]=(X[21] + (-0.01 * X[11]));
    F[21]=(((1.0 + ((10.0 * X[20]) + X[3])) / (6.0 + ((10.0 * X[20]) + X[3]))) - X[21]);
    F[20]=(X[25] + (-0.1 * X[20]));
    F[5]=(100.0 + ((300.0 * ACC[3]) + (-3.0 * (X[5] * (1.0 + ACC[3])))));
    F[4]=((90.0 * (ACC[1] * ACC[2])) + (-2.05 * X[4]));
    F[7]=((10.0 * (ACC[3] * ACC[2])) + (-0.02 * X[7]));
    F[18]=((ACC[9] * piecewise(ACC[8],0,1.0)) + (-0.1 * X[18]));
    F[0]=((1.0 / (1.0 + pow((10.0 * ACC[8]),2.0))) + (-0.1 * X[0]));
    F[26]=(((1.0 + (10.0 * X[3])) / (6.0 + (10.0 * X[3]))) + ((-(X[26])) - ACC[10]));
    F[25]=(ACC[10] - X[25]);
    F[2]=(5.0 + ((-0.1 * X[2]) + ((-(ACC[0])) - (X[19] * X[2]))));
    F[1]=(ACC[0] + (-10.1 * X[1]));
    F[16]=((100.0 * pow(ACC[5],4.0)) + (-10.0 * X[16]));
    F[12]=((100.0 * (ACC[4] * ACC[5])) + (-10.0 * X[12]));
    F[9]=((100.0 * (ACC[4] * ACC[0])) + (-10.0 * X[9]));
    F[10]=((100.0 * (ACC[4] * ACC[6])) + (-10.0 * X[10]));
    F[13]=((100.0 * (ACC[4] * ACC[7])) + (-10.0 * X[13]));
    F[17]=((100.0 * (piecewise(ACC[7],0,1.0) * pow(ACC[6],4.0))) + (-10.0 * X[17]));

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
    ACC[0]=0.0; //ATF6
    ACC[1]=0.0; //BAXm
    ACC[2]=0.0; //BCL2
    ACC[3]=0.0; //BH3
    ACC[4]=0.0; //BiP
    ACC[5]=0.0; //IRE1
    ACC[6]=0.0; //PERK
    ACC[7]=0.0; //UFP
    ACC[8]=0.0; //eIF2a
    ACC[9]=0.0; //mUFPT
    ACC[10]=0.0; //spliceRate
    X[0]=0.0; //ATF4
    X[1]=0.0; //ATF6GB
    X[2]=0.0; //ATF6T
    X[3]=0.0; //ATF6p50
    X[4]=0.0; //BAXmBCL2
    X[5]=0.0; //BAXmT
    X[6]=0.0; //BCL2T
    X[7]=0.0; //BH3BCL2
    X[8]=0.0; //BH3T
    X[9]=0.0; //BiATF
    X[10]=0.0; //BiPER
    X[11]=0.0; //BiPT
    X[12]=0.0; //BiRE1
    X[13]=0.0; //BiUFP
    X[14]=0.0; //CHOP
    X[15]=0.0; //GADD34
    X[16]=0.0; //IRE1A
    X[17]=0.0; //PERKA
    X[18]=0.0; //UFPT
    X[19]=0.0; //WFS1
    X[20]=0.0; //Xbp1s
    X[21]=0.0; //mBiPT
    X[22]=0.0; //mCHOP
    X[23]=0.0; //mGADD34
    X[24]=0.0; //mWFS1
    X[25]=0.0; //mXbp1s
    X[26]=0.0; //mXbp1u

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
