
#ifndef BIOMD362_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD362_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[0]=(X[2] + (1.2 * X[32]));
    F[13]=(sPAR[0] * (sPAR[37] * (X[12] * X[0])));
    F[3]=(sPAR[0] * (sPAR[36] * (X[2] * X[0])));
    F[6]=(sPAR[0] * (sPAR[35] * (X[5] * X[0])));
    F[33]=(sPAR[0] * (sPAR[33] * (X[32] * X[0])));
    F[28]=(sPAR[0] * (sPAR[32] * (X[27] * X[0])));
    F[0]=((-(sPAR[0])) * ((sPAR[32] * (X[27] * X[0])) + ((sPAR[33] * (X[32] * X[0])) + ((sPAR[35] * (X[5] * X[0])) + ((sPAR[36] * (X[2] * X[0])) + (sPAR[37] * (X[12] * X[0])))))));
    F[17]=(sPAR[0] * ((sPAR[30] * (X[16] * X[10])) + ((sPAR[31] * (X[12] * X[29])) - (sPAR[29] * X[17]))));
    F[29]=(sPAR[0] * ((sPAR[28] * (X[27] * X[10])) + (((-(sPAR[27])) * X[29]) - (sPAR[31] * (X[12] * X[29])))));
    F[10]=((-(sPAR[0])) * ((sPAR[28] * (X[27] * X[10])) + ((sPAR[30] * (X[16] * X[10])) + (((-(sPAR[29])) * X[17]) - (sPAR[27] * X[29])))));
    F[32]=(sPAR[0] * ((sPAR[25] * X[31]) + (X[32] * ((sPAR[39] * X[18]) + ((((-(sPAR[39])) * X[18]) - (sPAR[26] * X[30])) - (sPAR[33] * X[0]))))));
    F[31]=(sPAR[0] * ((sPAR[24] * (X[30] * X[1])) + (((-(sPAR[22])) - sPAR[25]) * X[31])));
    F[30]=(sPAR[0] * ((sPAR[21] * (X[27] * X[25])) + ((sPAR[26] * (X[32] * X[30])) + ((sPAR[25] * X[31]) + ((sPAR[22] * X[31]) + ((X[30] * (((-(sPAR[24])) * X[1]) - sPAR[20])) - (sPAR[26] * (X[32] * X[30]))))))));
    F[25]=(sPAR[0] * ((sPAR[19] * (X[2] * X[18])) + ((sPAR[39] * (X[32] * X[18])) + ((sPAR[20] * X[30]) - (sPAR[21] * (X[27] * X[25]))))));
    F[18]=((-(sPAR[0])) * ((sPAR[19] * (X[2] * X[18])) + (sPAR[39] * (X[32] * X[18]))));
    F[23]=(sPAR[0] * ((sPAR[17] * X[21]) + ((sPAR[18] * X[8]) + ((sPAR[18] * X[7]) - (sPAR[16] * (X[22] * X[23]))))));
    F[22]=(sPAR[0] * ((sPAR[17] * X[21]) + ((sPAR[18] * X[8]) + ((sPAR[18] * X[7]) - (sPAR[16] * (X[22] * X[23]))))));
    F[8]=(sPAR[0] * ((sPAR[14] * (X[7] * X[26])) + ((((-(sPAR[15])) - sPAR[13]) - sPAR[18]) * X[8])));
    F[7]=(sPAR[0] * ((sPAR[11] * (X[5] * X[21])) + ((sPAR[15] * X[8]) + ((sPAR[13] * X[8]) + (X[7] * ((((-(sPAR[14])) * X[26]) - sPAR[10]) - sPAR[18]))))));
    F[21]=(sPAR[0] * ((sPAR[9] * (X[2] * X[20])) + ((sPAR[10] * X[7]) + ((sPAR[16] * (X[22] * X[23])) + (((-(sPAR[17])) * X[21]) - (sPAR[11] * (X[5] * X[21])))))));
    F[20]=((-(sPAR[0])) * (sPAR[9] * (X[2] * X[20])));
    F[1]=((-(sPAR[0])) * ((sPAR[8] * (X[27] * X[1])) + ((sPAR[24] * (X[30] * X[1])) - (sPAR[22] * X[31]))));
    F[5]=(sPAR[0] * ((sPAR[18] * (X[8] + X[7])) + ((sPAR[7] * X[14]) + ((sPAR[38] * (X[5] * X[26])) + ((sPAR[10] * X[7]) + ((X[5] * (((-(sPAR[11])) * X[21]) - (sPAR[35] * X[0]))) - (sPAR[38] * (X[5] * X[26]))))))));
    F[14]=(sPAR[0] * ((sPAR[6] * (X[12] * X[4])) + (((-(sPAR[5])) - sPAR[7]) * X[14])));
    F[4]=(sPAR[0] * ((sPAR[5] * X[14]) - (sPAR[6] * (X[12] * X[4]))));
    F[16]=(sPAR[0] * ((sPAR[4] * (X[12] * X[27])) + ((sPAR[2] * X[15]) + ((sPAR[29] * X[17]) + (X[16] * (((-(sPAR[30])) * X[10]) - sPAR[3]))))));
    F[26]=(sPAR[0] * ((sPAR[18] * X[8]) + ((sPAR[43] * X[15]) + ((sPAR[13] * X[8]) + ((((-(sPAR[14])) * (X[7] * X[26])) - (sPAR[44] * (X[12] * X[26]))) - (sPAR[38] * (X[5] * X[26])))))));
    F[15]=(sPAR[0] * ((sPAR[44] * (X[12] * X[26])) + (((-(sPAR[43])) - sPAR[2]) * X[15])));
    F[2]=(sPAR[0] * ((sPAR[42] * (X[2] * X[19])) + ((sPAR[8] * (X[27] * X[1])) + ((X[2] * ((sPAR[9] * X[20]) + (sPAR[19] * X[18]))) + ((sPAR[26] * (X[32] * X[30])) + (X[2] * (((((-(sPAR[9])) * X[20]) - (sPAR[42] * X[19])) - (sPAR[36] * X[0])) - (sPAR[19] * X[18]))))))));
    F[27]=(sPAR[0] * ((X[27] * ((sPAR[41] * X[19]) + (sPAR[8] * X[1]))) + ((sPAR[15] * X[8]) + ((sPAR[38] * (X[5] * X[26])) + ((sPAR[3] * X[16]) + ((X[27] * (((-(sPAR[41])) * X[19]) - (sPAR[8] * X[1]))) + ((sPAR[20] * X[30]) + ((sPAR[27] * X[29]) + ((X[27] * (((-(sPAR[21])) * X[25]) - (sPAR[32] * X[0]))) + (((-(sPAR[4])) * (X[12] * X[27])) - (sPAR[28] * (X[27] * X[10]))))))))))));
    F[24]=(sPAR[0] * ((sPAR[40] * (X[12] * X[19])) + ((sPAR[41] * (X[27] * X[19])) + ((sPAR[42] * (X[2] * X[19])) + ((sPAR[23] * X[12]) - (sPAR[34] * (X[9] * X[24])))))));
    F[12]=(sPAR[0] * ((sPAR[34] * (X[9] * X[24])) + ((X[12] * ((sPAR[40] * X[19]) - sPAR[23])) + ((sPAR[7] * X[14]) + ((sPAR[43] * X[15]) + ((sPAR[3] * X[16]) + ((sPAR[5] * X[14]) + (X[12] * (((((((-(sPAR[44])) * X[26]) - (sPAR[40] * X[19])) - (sPAR[37] * X[0])) - (sPAR[6] * X[4])) - (sPAR[31] * X[29])) - (sPAR[4] * X[27]))))))))));
    F[19]=((-(sPAR[0])) * ((sPAR[12] * (X[9] * X[19])) + ((sPAR[40] * (X[12] * X[19])) + ((sPAR[41] * (X[27] * X[19])) + ((sPAR[42] * (X[2] * X[19])) - (sPAR[1] * X[11]))))));
    F[11]=(sPAR[0] * ((sPAR[12] * (X[9] * X[19])) - (sPAR[1] * X[11])));
    F[9]=((-(sPAR[0])) * ((sPAR[12] * (X[9] * X[19])) + ((sPAR[34] * (X[9] * X[24])) + (((-(sPAR[23])) * X[12]) - (sPAR[1] * X[11])))));

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
    ACC[0]=1e-09; //IIa_plus_1_2mIIa
    sPAR[0]=1.0; //compartment_1
    sPAR[1]=0.0031; //k1
    sPAR[2]=6.0; //k10
    sPAR[3]=19.0; //k11
    sPAR[4]=22000000.0; //k12
    sPAR[5]=2.4; //k13
    sPAR[6]=10000000.0; //k14
    sPAR[7]=1.8; //k15
    sPAR[8]=7500.0; //k16
    sPAR[9]=20000000.0; //k17
    sPAR[10]=0.005; //k18
    sPAR[11]=10000000.0; //k19
    sPAR[12]=3200000.0; //k2
    sPAR[13]=0.001; //k20
    sPAR[14]=100000000.0; //k21
    sPAR[15]=8.199999999999999; //k22
    sPAR[16]=22000.0; //k23
    sPAR[17]=0.006; //k24
    sPAR[18]=0.001; //k25
    sPAR[19]=20000000.0; //k26
    sPAR[20]=0.2; //k27
    sPAR[21]=400000000.0; //k28
    sPAR[22]=103.0; //k29
    sPAR[23]=0.0031; //k3
    sPAR[24]=100000000.0; //k30
    sPAR[25]=63.5; //k31
    sPAR[26]=15000000.0; //k32
    sPAR[27]=0.00036; //k33
    sPAR[28]=900000.0; //k34
    sPAR[29]=0.00011; //k35
    sPAR[30]=320000000.0; //k36
    sPAR[31]=50000000.0; //k37
    sPAR[32]=1500.0; //k38
    sPAR[33]=7100.0; //k39
    sPAR[34]=23000000.0; //k4
    sPAR[35]=490.0; //k40
    sPAR[36]=7100.0; //k41
    sPAR[37]=230.0; //k42
    sPAR[38]=5700.0; //k43
    sPAR[39]=3000000.0; //k44
    sPAR[40]=440000.0; //k5
    sPAR[41]=13000000.0; //k6
    sPAR[42]=23000.0; //k7
    sPAR[43]=1.05; //k8
    sPAR[44]=25000000.0; //k9
    X[0]=3.4e-06; //ATIII
    X[1]=1.4e-06; //II
    X[2]=1e-09; //IIa
    X[3]=0.0; //IIa_ATIII
    X[4]=9e-08; //IX
    X[5]=2.1e-10; //IXa
    X[6]=0.0; //IXa_ATIII
    X[7]=0.0; //IXa_VIIIa
    X[8]=0.0; //IXa_VIIIa_X
    X[9]=0.0; //TF
    X[10]=2.5e-09; //TFPI
    X[11]=0.0; //TF_VII
    X[12]=0.0; //TF_VIIa
    X[13]=0.0; //TF_VIIa_ATIII
    X[14]=0.0; //TF_VIIa_IX
    X[15]=0.0; //TF_VIIa_X
    X[16]=0.0; //TF_VIIa_Xa
    X[17]=0.0; //TF_VIIa_Xa_TFPI
    X[18]=2e-08; //V
    X[19]=1e-08; //VII
    X[20]=7e-10; //VIII
    X[21]=0.0; //VIIIa
    X[22]=0.0; //VIIIa1_L
    X[23]=0.0; //VIIIa2
    X[24]=1e-10; //VIIa
    X[25]=0.0; //Va
    X[26]=1.6e-07; //X
    X[27]=9.4e-11; //Xa
    X[28]=0.0; //Xa_ATIII
    X[29]=0.0; //Xa_TFPI
    X[30]=0.0; //Xa_Va
    X[31]=0.0; //Xa_Va_II
    X[32]=0.0; //mIIa
    X[33]=0.0; //mIIa_ATIII

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
