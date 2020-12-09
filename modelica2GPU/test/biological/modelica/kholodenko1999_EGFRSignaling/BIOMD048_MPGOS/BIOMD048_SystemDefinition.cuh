
#ifndef BIOMD048_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD048_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[5]=((sPAR[37] * X[4]) - (sPAR[36] * X[5]));
    F[20]=((sPAR[27] * X[15]) + ((sPAR[31] * (X[19] * X[18])) + ((sPAR[32] * (X[21] * X[1])) + (X[20] * (((-(sPAR[30])) - sPAR[33]) - (sPAR[26] * X[10]))))));
    F[15]=((sPAR[23] * (X[14] * X[18])) + ((sPAR[35] * (X[16] * X[1])) + ((sPAR[26] * (X[20] * X[10])) + ((((-(sPAR[34])) - sPAR[27]) - sPAR[22]) * X[15]))));
    F[19]=((sPAR[21] * X[14]) + ((sPAR[29] * (X[21] * X[2])) + ((sPAR[30] * X[20]) + (((-(X[19])) * (sPAR[28] + (sPAR[31] * X[18]))) - (sPAR[20] * (X[10] * X[19]))))));
    F[14]=((sPAR[19] * (X[16] * X[2])) + ((sPAR[20] * (X[10] * X[19])) + ((sPAR[22] * X[15]) + (X[14] * (((-(sPAR[21])) - (sPAR[23] * X[18])) - sPAR[18])))));
    F[21]=((sPAR[17] * X[16]) + ((sPAR[33] * X[20]) + ((X[21] * (((-(sPAR[16])) * X[10]) - (sPAR[3] / (sPAR[0] + X[21])))) + ((sPAR[28] * X[19]) + (X[21] * (((-(sPAR[29])) * X[2]) - (sPAR[32] * X[1])))))));
    F[16]=((sPAR[15] * X[13]) + ((sPAR[16] * (X[21] * X[10])) + ((sPAR[18] * X[14]) + ((sPAR[34] * X[15]) + ((X[16] * ((((-(sPAR[19])) * X[2]) - sPAR[17]) - sPAR[14])) - (sPAR[35] * (X[16] * X[1])))))));
    F[13]=((sPAR[13] * (X[10] * X[22])) + ((sPAR[14] * X[16]) + (((-(sPAR[15])) - sPAR[12]) * X[13])));
    F[22]=((sPAR[3] * (X[21] / (sPAR[0] + X[21]))) + ((sPAR[12] * X[13]) - (sPAR[13] * (X[10] * X[22]))));
    F[1]=((sPAR[9] * X[9]) + ((sPAR[33] * X[20]) + ((sPAR[10] * (X[2] * X[18])) + ((sPAR[34] * X[15]) + (((((-(sPAR[32])) * (X[21] * X[1])) - (sPAR[35] * (X[16] * X[1]))) - (sPAR[11] * X[1])) - (sPAR[8] * (X[10] * X[1])))))));
    F[9]=((sPAR[7] * (X[8] * X[18])) + ((sPAR[8] * (X[10] * X[1])) + (((-(sPAR[9])) - sPAR[6]) * X[9])));
    F[18]=((sPAR[11] * X[1]) + ((sPAR[6] * X[9]) + ((sPAR[22] * X[15]) + ((sPAR[30] * X[20]) + (((((-(sPAR[7])) * (X[8] * X[18])) - (sPAR[31] * (X[19] * X[18]))) - (sPAR[23] * (X[14] * X[18]))) - (sPAR[10] * (X[2] * X[18])))))));
    F[8]=((sPAR[49] * (X[10] * X[2])) + ((sPAR[6] * X[9]) + (X[8] * (((-(sPAR[7])) * X[18]) - sPAR[48]))));
    F[2]=((sPAR[11] * X[1]) + ((sPAR[48] * X[8]) + ((sPAR[18] * X[14]) + ((sPAR[28] * X[19]) + (((((-(sPAR[49])) * (X[10] * X[2])) - (sPAR[29] * (X[21] * X[2]))) - (sPAR[19] * (X[16] * X[2]))) - (sPAR[10] * (X[2] * X[18])))))));
    F[4]=((sPAR[47] * X[12]) + ((sPAR[36] * X[5]) + ((((-(sPAR[46])) * (X[10] * X[4])) - (sPAR[37] * X[4])) - (sPAR[5] * (X[4] / (sPAR[2] + X[4]))))));
    F[12]=((sPAR[45] * X[11]) + ((sPAR[46] * (X[10] * X[4])) + (((-(sPAR[47])) - sPAR[44]) * X[12])));
    F[11]=((sPAR[43] * (X[10] * X[3])) + ((sPAR[44] * X[12]) + (((-(sPAR[45])) - sPAR[42]) * X[11])));
    F[3]=((sPAR[5] * (X[4] / (sPAR[2] + X[4]))) + ((sPAR[42] * X[11]) - (sPAR[43] * (X[10] * X[3]))));
    F[10]=((sPAR[41] * X[7]) + ((sPAR[47] * X[12]) + ((sPAR[9] * X[9]) + ((sPAR[17] * X[16]) + ((sPAR[21] * X[14]) + ((sPAR[27] * X[15]) + ((X[10] * (((-(sPAR[20])) * X[19]) - (sPAR[4] / (sPAR[1] + X[10])))) + ((sPAR[42] * X[11]) + ((sPAR[48] * X[8]) + ((sPAR[12] * X[13]) + ((X[10] * ((((-(sPAR[49])) * X[2]) - sPAR[40]) - (sPAR[8] * X[1]))) + ((((X[10] * (((-(sPAR[43])) * X[3]) - (sPAR[13] * X[22]))) - (sPAR[26] * (X[20] * X[10]))) - (sPAR[16] * (X[21] * X[10]))) - (sPAR[46] * (X[10] * X[4]))))))))))))));
    F[7]=((sPAR[39] * pow(X[17],2.0)) + ((sPAR[4] * (X[10] / (sPAR[1] + X[10]))) + ((((-(sPAR[38])) - sPAR[41]) * X[7]) - (sPAR[40] * X[10]))));
    F[17]=((sPAR[25] * (X[6] * X[0])) + ((-2.0 * ((sPAR[39] * pow(X[17],2.0)) - (sPAR[38] * X[7]))) - (sPAR[24] * X[17])));
    F[6]=((sPAR[24] * X[17]) - (sPAR[25] * (X[6] * X[0])));
    F[0]=((sPAR[24] * X[17]) - (sPAR[25] * (X[6] * X[0])));

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
    sPAR[0]=340.0; //K16
    sPAR[1]=450.0; //K4
    sPAR[2]=100.0; //K8
    sPAR[3]=1.7; //V16
    sPAR[4]=50.0; //V4
    sPAR[5]=1.0; //V8
    sPAR[6]=0.06; //k10b
    sPAR[7]=0.01; //k10f
    sPAR[8]=0.005; //k11b
    sPAR[9]=0.03; //k11f
    sPAR[10]=0.0001; //k12b
    sPAR[11]=0.002; //k12f
    sPAR[12]=0.6; //k13b
    sPAR[13]=0.09; //k13f
    sPAR[14]=0.06; //k14b
    sPAR[15]=6.0; //k14f
    sPAR[16]=0.0009; //k15b
    sPAR[17]=0.3; //k15f
    sPAR[18]=0.1; //k17b
    sPAR[19]=0.003; //k17f
    sPAR[20]=0.0009; //k18b
    sPAR[21]=0.3; //k18f
    sPAR[22]=0.021; //k19b
    sPAR[23]=0.01; //k19f
    sPAR[24]=0.06; //k1b
    sPAR[25]=0.003; //k1f
    sPAR[26]=0.00024; //k20b
    sPAR[27]=0.12; //k20f
    sPAR[28]=0.1; //k21b
    sPAR[29]=0.003; //k21f
    sPAR[30]=0.064; //k22b
    sPAR[31]=0.03; //k22f
    sPAR[32]=0.021; //k23b
    sPAR[33]=0.1; //k23f
    sPAR[34]=0.043; //k24b
    sPAR[35]=0.008999999999999999; //k24f
    sPAR[36]=0.03; //k25b
    sPAR[37]=1.0; //k25f
    sPAR[38]=0.1; //k2b
    sPAR[39]=0.01; //k2f
    sPAR[40]=0.01; //k3b
    sPAR[41]=1.0; //k3f
    sPAR[42]=0.2; //k5b
    sPAR[43]=0.06; //k5f
    sPAR[44]=0.05; //k6b
    sPAR[45]=1.0; //k6f
    sPAR[46]=0.006; //k7b
    sPAR[47]=0.3; //k7f
    sPAR[48]=0.05; //k9b
    sPAR[49]=0.003; //k9f
    X[0]=680.0; //EGF
    X[1]=0.0; //GS
    X[2]=85.0; //Grb
    X[3]=105.0; //PLCg
    X[4]=0.0; //PLCgP
    X[5]=0.0; //PLCgl
    X[6]=100.0; //R
    X[7]=0.0; //R2
    X[8]=0.0; //RG
    X[9]=0.0; //RGS
    X[10]=0.0; //RP
    X[11]=0.0; //RPLCg
    X[12]=0.0; //RPLCgP
    X[13]=0.0; //RSh
    X[14]=0.0; //RShG
    X[15]=0.0; //RShGS
    X[16]=0.0; //RShP
    X[17]=0.0; //Ra
    X[18]=34.0; //SOS
    X[19]=0.0; //ShG
    X[20]=0.0; //ShGS
    X[21]=0.0; //ShP
    X[22]=150.0; //Shc

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
