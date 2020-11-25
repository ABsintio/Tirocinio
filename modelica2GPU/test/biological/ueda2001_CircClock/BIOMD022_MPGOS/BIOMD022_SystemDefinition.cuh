
#ifndef BIOMD022_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD022_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[9]=(sPAR[34] + (((sPAR[4] + pow((X[1] / sPAR[1]),sPAR[32])) * (sPAR[50] / (1.0 + (sPAR[4] + (pow((X[1] / sPAR[1]),sPAR[32]) + pow((X[5] / sPAR[46]),sPAR[44])))))) - (X[9] * (sPAR[6] + (sPAR[10] / (sPAR[21] + X[9]))))));
    F[8]=((sPAR[51] * X[9]) + ((sPAR[42] * X[4]) + (((-1.0 / (sPAR[22] + X[8])) + ((-(sPAR[6])) - (X[6] * sPAR[54]))) * X[8])));
    F[5]=((X[4] * (sPAR[28] / (sPAR[38] + X[4]))) + (X[5] * ((((-(sPAR[29])) / (sPAR[39] + X[5])) - sPAR[6]) - (sPAR[13] / (sPAR[24] + X[5])))));
    F[4]=((X[5] * (sPAR[29] / (sPAR[39] + X[5]))) + ((X[6] * (X[8] * sPAR[54])) + (X[4] * (((((-(sPAR[12])) / (sPAR[23] + X[4])) - sPAR[42]) - (sPAR[28] / (sPAR[38] + X[4]))) - sPAR[6]))));
    F[7]=(sPAR[33] + (((sPAR[3] + pow((X[1] / sPAR[0]),sPAR[32])) * (sPAR[48] / (1.0 + (sPAR[3] + (pow((X[1] / sPAR[0]),sPAR[32]) + pow((X[5] / sPAR[45]),sPAR[44])))))) - (X[7] * (sPAR[6] + (sPAR[7] / (sPAR[18] + X[7]))))));
    F[6]=((sPAR[49] * X[7]) + ((sPAR[42] * X[4]) + ((((-(X[6])) * (X[8] * sPAR[54])) - (sPAR[6] * X[6])) - (sPAR[9] * (X[11] * (X[6] / (sPAR[20] + X[6])))))));
    F[3]=(sPAR[35] + (((sPAR[5] + pow((X[1] / sPAR[2]),sPAR[32])) * (sPAR[52] / (1.0 + (sPAR[5] + (pow((X[1] / sPAR[2]),sPAR[32]) + pow((X[5] / sPAR[47]),sPAR[44])))))) - (X[3] * (sPAR[6] + (sPAR[14] / (X[3] + sPAR[25]))))));
    F[2]=((X[3] * sPAR[53]) + ((sPAR[43] * X[0]) + (((-(X[2])) * ((sPAR[55] * X[10]) + sPAR[6])) - (X[0] * (sPAR[16] / (X[0] + sPAR[27]))))));
    F[1]=((X[0] * ((sPAR[30] / (sPAR[40] + X[0])) - (sPAR[31] / (sPAR[41] + X[0])))) - (X[1] * (sPAR[6] + (sPAR[8] / (X[1] + sPAR[19])))));
    F[0]=((X[0] * (sPAR[31] / (sPAR[41] + X[0]))) + ((X[2] * (sPAR[55] * X[10])) + (((-(X[0])) * ((sPAR[16] / (X[0] + sPAR[27])) + ((sPAR[30] / (sPAR[40] + X[0])) + sPAR[6]))) - (sPAR[43] * X[0]))));
    F[11]=0.0;
    F[10]=0.0;

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
    sPAR[0]=0.45; //A1
    sPAR[1]=0.45; //A2
    sPAR[2]=0.8; //A3
    sPAR[3]=0.0; //B1
    sPAR[4]=0.0; //B2
    sPAR[5]=0.6; //B3
    sPAR[6]=0.012; //D0
    sPAR[7]=0.9399999999999999; //D1
    sPAR[8]=0.3; //D10
    sPAR[9]=0.44; //D2
    sPAR[10]=0.9399999999999999; //D3
    sPAR[11]=0.44; //D4
    sPAR[12]=0.44; //D5
    sPAR[13]=0.29; //D6
    sPAR[14]=0.54; //D7
    sPAR[15]=0.6; //D8
    sPAR[16]=0.6; //D9
    sPAR[17]=1.0; //Drosophila
    sPAR[18]=0.3; //L1
    sPAR[19]=0.2; //L10
    sPAR[20]=0.2; //L2
    sPAR[21]=0.3; //L3
    sPAR[22]=0.2; //L4
    sPAR[23]=0.2; //L5
    sPAR[24]=0.2; //L6
    sPAR[25]=0.13; //L7
    sPAR[26]=0.2; //L8
    sPAR[27]=0.2; //L9
    sPAR[28]=1.73; //T1
    sPAR[29]=0.72; //T2
    sPAR[30]=1.63; //T3
    sPAR[31]=0.52; //T4
    sPAR[32]=1.0; //a
    sPAR[33]=0.0; //c1
    sPAR[34]=0.0; //c2
    sPAR[35]=0.0; //c3
    sPAR[36]=1.0; //compartment_0000002
    sPAR[37]=1.0; //compartment_0000003
    sPAR[38]=2.0; //k1
    sPAR[39]=2.0; //k2
    sPAR[40]=2.0; //k3
    sPAR[41]=2.0; //k4
    sPAR[42]=1.45; //parameter_0000072
    sPAR[43]=1.63; //parameter_0000073
    sPAR[44]=4.0; //r
    sPAR[45]=1.02; //r1
    sPAR[46]=1.02; //r2
    sPAR[47]=1.89; //r3
    sPAR[48]=1.45; //s1
    sPAR[49]=0.48; //s2
    sPAR[50]=1.45; //s3
    sPAR[51]=0.48; //s4
    sPAR[52]=1.63; //s5
    sPAR[53]=0.47; //s6
    sPAR[54]=1.45; //v1
    sPAR[55]=1.63; //v3
    X[0]=0.3; //CCc
    X[1]=0.4; //CCn
    X[2]=0.2; //Clkc
    X[3]=0.1; //Clkm
    X[4]=0.9; //PTc
    X[5]=1.0; //PTn
    X[6]=0.6; //Perc
    X[7]=0.5; //Perm
    X[8]=0.8; //Timc
    X[9]=0.7; //Timm
    X[10]=1.0; //species_0000012
    X[11]=1.0; //species_0000013

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
