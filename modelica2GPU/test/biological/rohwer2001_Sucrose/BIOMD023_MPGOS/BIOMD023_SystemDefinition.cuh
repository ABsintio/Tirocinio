
#ifndef BIOMD023_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD023_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[9]=0.0;
    F[11]=0.0;
    F[7]=((sPAR[46] * (X[8] / (sPAR[31] + X[8]))) + ((X[7] * (((-(sPAR[49])) / (((sPAR[36] * (1.0 + (X[2] / sPAR[15]))) + X[7]) * (1.0 + (X[4] / sPAR[16])))) - (sPAR[39] / (sPAR[18] + X[7])))) - (sPAR[47] * (((X[7] * X[10]) + (-0.8231000000000001 * (X[2] * (X[6] / sPAR[1])))) / ((X[7] * (X[10] * (1.0 + (X[2] / sPAR[12])))) + ((sPAR[33] * (X[10] + sPAR[14])) + ((sPAR[34] * X[7]) + (sPAR[47] * (((sPAR[35] * (X[2] * (1.0 + (X[10] / sPAR[14])))) + (0.8231000000000001 * (X[6] * ((sPAR[32] * (1.0 + (sPAR[34] * (X[7] / (sPAR[33] * sPAR[14]))))) + (X[2] * (1.0 + (X[7] / sPAR[13]))))))) / (sPAR[1] * sPAR[48]))))))))));
    F[8]=((sPAR[44] * (((0.04732825 * pow(X[6],2.0)) - (X[8] * (X[10] / sPAR[0]))) / ((0.04732825 * (pow(X[6],2.0) * (1.0 + (X[8] / sPAR[10])))) + ((sPAR[27] * ((1.0 + (X[12] / sPAR[9])) * ((0.8231000000000001 * X[6]) + sPAR[11]))) + ((0.0575 * (sPAR[30] * X[6])) + (sPAR[44] * (((sPAR[29] * (X[8] * (1.0 + (0.8231000000000001 * (X[6] / sPAR[11]))))) + (X[10] * ((sPAR[28] * (1.0 + (0.0575 * (sPAR[30] * (X[6] / (((1.0 + (X[12] / sPAR[9])) * sPAR[27]) * sPAR[11])))))) + (X[8] * (1.0 + (0.0575 * (X[6] / sPAR[8]))))))) / (sPAR[0] * sPAR[45])))))))) - (sPAR[46] * (X[8] / (sPAR[31] + X[8]))));
    F[6]=((sPAR[41] * (X[4] * (X[1] / (((sPAR[21] * sPAR[22]) * (1.0 + (X[1] / sPAR[21]))) * (1.0 + ((X[4] / sPAR[22]) + ((X[2] / sPAR[24]) + (X[6] * ((0.113 / sPAR[4]) + (0.0575 / sPAR[5])))))))))) + ((X[2] * (X[1] * ((sPAR[42] / (((sPAR[23] * sPAR[24]) * (1.0 + (X[1] / sPAR[23]))) * (1.0 + ((X[4] / sPAR[22]) + ((X[2] / sPAR[24]) + (X[6] * ((0.113 / sPAR[4]) + (0.0575 / sPAR[5])))))))) + (sPAR[43] / ((((1.0 + ((X[2] / sPAR[26]) + ((X[1] / sPAR[25]) + ((X[2] * (X[1] / (sPAR[26] * sPAR[25]))) + (X[0] / sPAR[6]))))) * (1.0 + (X[2] / sPAR[7]))) * sPAR[26]) * sPAR[25]))))) + ((-2.0 * (sPAR[44] * (((0.04732825 * pow(X[6],2.0)) - (X[8] * (X[10] / sPAR[0]))) / ((0.04732825 * (pow(X[6],2.0) * (1.0 + (X[8] / sPAR[10])))) + ((sPAR[27] * ((1.0 + (X[12] / sPAR[9])) * ((0.8231000000000001 * X[6]) + sPAR[11]))) + ((0.0575 * (sPAR[30] * X[6])) + (sPAR[44] * (((sPAR[29] * (X[8] * (1.0 + (0.8231000000000001 * (X[6] / sPAR[11]))))) + (X[10] * ((sPAR[28] * (1.0 + (0.0575 * (sPAR[30] * (X[6] / (((1.0 + (X[12] / sPAR[9])) * sPAR[27]) * sPAR[11])))))) + (X[8] * (1.0 + (0.0575 * (X[6] / sPAR[8]))))))) / (sPAR[45] * sPAR[0]))))))))) + ((sPAR[47] * (((X[7] * X[10]) + (-0.8231000000000001 * (X[2] * (X[6] / sPAR[1])))) / ((X[7] * (X[10] * (1.0 + (X[2] / sPAR[12])))) + ((sPAR[33] * (X[10] + sPAR[14])) + ((sPAR[34] * X[7]) + (sPAR[47] * (((sPAR[35] * (X[2] * (1.0 + (X[10] / sPAR[14])))) + (0.8231000000000001 * (X[6] * ((sPAR[32] * (1.0 + (sPAR[34] * (X[7] / (sPAR[33] * sPAR[14]))))) + (X[2] * (1.0 + (X[7] / sPAR[13]))))))) / (sPAR[48] * sPAR[1])))))))) + (-0.0575 * (sPAR[38] * (X[6] / (sPAR[17] + (0.0575 * X[6])))))))));
    F[4]=((sPAR[40] * (X[5] / ((sPAR[20] * (1.0 + (X[4] / sPAR[3]))) + X[5]))) + ((sPAR[49] * (X[7] / (((sPAR[36] * (1.0 + (X[2] / sPAR[15]))) + X[7]) * (1.0 + (X[4] / sPAR[16]))))) - (sPAR[41] * (X[4] * (X[1] / (((sPAR[21] * sPAR[22]) * (1.0 + (X[1] / sPAR[21]))) * (1.0 + ((X[4] / sPAR[22]) + ((X[2] / sPAR[24]) + (X[6] * ((0.113 / sPAR[4]) + (0.0575 / sPAR[5]))))))))))));
    F[2]=((sPAR[37] * (X[3] / ((sPAR[19] * (1.0 + (X[2] / sPAR[2]))) + X[3]))) + ((sPAR[49] * (X[7] / (((sPAR[36] * (1.0 + (X[2] / sPAR[15]))) + X[7]) * (1.0 + (X[4] / sPAR[16]))))) + ((X[2] * (X[1] * (((-(sPAR[42])) / (((sPAR[23] * sPAR[24]) * (1.0 + (X[1] / sPAR[23]))) * (1.0 + ((X[4] / sPAR[22]) + ((X[2] / sPAR[24]) + (X[6] * ((0.113 / sPAR[4]) + (0.0575 / sPAR[5])))))))) - (sPAR[43] / ((((1.0 + ((X[2] / sPAR[26]) + ((X[1] / sPAR[25]) + ((X[2] * (X[1] / (sPAR[26] * sPAR[25]))) + (X[0] / sPAR[6]))))) * (1.0 + (X[2] / sPAR[7]))) * sPAR[26]) * sPAR[25]))))) + (sPAR[47] * (((X[7] * X[10]) + (-0.8231000000000001 * (X[2] * (X[6] / sPAR[1])))) / ((X[7] * (X[10] * (1.0 + (X[2] / sPAR[12])))) + ((sPAR[33] * (X[10] + sPAR[14])) + ((sPAR[34] * X[7]) + (sPAR[47] * (((sPAR[35] * (X[2] * (1.0 + (X[10] / sPAR[14])))) + (0.8231000000000001 * (X[6] * ((sPAR[32] * (1.0 + (sPAR[34] * (X[7] / (sPAR[33] * sPAR[14]))))) + (X[2] * (1.0 + (X[7] / sPAR[13]))))))) / (sPAR[1] * sPAR[48])))))))))));
    F[3]=0.0;
    F[5]=0.0;
    F[1]=0.0;
    F[0]=0.0;
    F[10]=0.0;
    F[12]=0.0;

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
    sPAR[0]=10.0; //Keq6
    sPAR[1]=5.0; //Keq8
    sPAR[2]=1.0; //Ki1Fru
    sPAR[3]=1.0; //Ki2Glc
    sPAR[4]=0.1; //Ki3G6P
    sPAR[5]=10.0; //Ki4F6P
    sPAR[6]=2.0; //Ki5ADP
    sPAR[7]=12.0; //Ki5Fru
    sPAR[8]=0.4; //Ki6F6P
    sPAR[9]=3.0; //Ki6Pi
    sPAR[10]=0.07000000000000001; //Ki6Suc6P
    sPAR[11]=1.4; //Ki6UDPGlc
    sPAR[12]=4.0; //Ki8Fru
    sPAR[13]=40.0; //Ki8Suc
    sPAR[14]=0.3; //Ki8UDP
    sPAR[15]=15.0; //Ki9Fru
    sPAR[16]=15.0; //Ki9Glc
    sPAR[17]=0.2; //Km10F6P
    sPAR[18]=100.0; //Km11Suc
    sPAR[19]=0.2; //Km1Fruex
    sPAR[20]=0.2; //Km2Glcex
    sPAR[21]=0.25; //Km3ATP
    sPAR[22]=0.07000000000000001; //Km3Glc
    sPAR[23]=0.25; //Km4ATP
    sPAR[24]=10.0; //Km4Fru
    sPAR[25]=0.08500000000000001; //Km5ATP
    sPAR[26]=0.1; //Km5Fru
    sPAR[27]=0.6; //Km6F6P
    sPAR[28]=0.1; //Km6Suc6P
    sPAR[29]=0.3; //Km6UDP
    sPAR[30]=1.8; //Km6UDPGlc
    sPAR[31]=0.1; //Km7Suc6P
    sPAR[32]=4.0; //Km8Fru
    sPAR[33]=50.0; //Km8Suc
    sPAR[34]=0.3; //Km8UDP
    sPAR[35]=0.3; //Km8UDPGlc
    sPAR[36]=10.0; //Km9Suc
    sPAR[37]=0.286; //Vmax1
    sPAR[38]=0.1; //Vmax10
    sPAR[39]=1.0; //Vmax11
    sPAR[40]=1.0; //Vmax2
    sPAR[41]=0.197; //Vmax3
    sPAR[42]=0.197; //Vmax4
    sPAR[43]=0.164; //Vmax5
    sPAR[44]=0.379; //Vmax6f
    sPAR[45]=0.2; //Vmax6r
    sPAR[46]=0.5; //Vmax7
    sPAR[47]=0.677; //Vmax8f
    sPAR[48]=0.3; //Vmax8r
    sPAR[49]=0.372; //Vmax9
    X[0]=0.0; //ADP
    X[1]=0.0; //ATP
    X[2]=1.0; //Fru
    X[3]=5.0; //Fruex
    X[4]=1.0; //Glc
    X[5]=5.0; //Glcex
    X[6]=1.0; //HexP
    X[7]=1.0; //Suc
    X[8]=1.0; //Suc6P
    X[9]=0.0; //Sucvac
    X[10]=0.0; //UDP
    X[11]=0.0; //glycolysis
    X[12]=0.0; //phos

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
