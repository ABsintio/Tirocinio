
#ifndef BIOMD009_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD009_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[0]=((X[19] + (X[20] + X[21])) / (X[6] + (X[19] + (X[20] + X[21]))));
    ACC[1]=((X[14] + (X[15] + (X[16] + X[8]))) / (X[14] + (X[18] + (X[5] + (X[15] + (X[16] + (X[20] + (X[21] + X[8]))))))));
    ACC[2]=((X[13] + X[11]) / (X[13] + (X[17] + (X[4] + (X[15] + (X[16] + (X[11] + X[12])))))));
    ACC[3]=(ACC[2] / sPAR[0]);
    F[12]=(sPAR[11] * ((sPAR[9] * (X[17] * X[10])) + (((-(sPAR[20])) - sPAR[29]) * X[12])));
    F[11]=(sPAR[11] * ((sPAR[2] * (X[13] * X[10])) + (2.0 * ((-(sPAR[13])) * X[11]))));
    F[9]=(sPAR[11] * ((sPAR[5] * (X[18] * X[7])) + (((-(sPAR[16])) - sPAR[25]) * X[9])));
    F[8]=(sPAR[11] * ((sPAR[7] * (X[14] * X[7])) + (((-(sPAR[18])) - sPAR[27]) * X[8])));
    F[16]=(sPAR[11] * ((sPAR[10] * (X[17] * X[14])) + (((-(sPAR[21])) - sPAR[30]) * X[16])));
    F[15]=(sPAR[11] * ((sPAR[8] * (X[4] * X[14])) + (((-(sPAR[19])) - sPAR[28]) * X[15])));
    F[21]=(sPAR[11] * ((sPAR[6] * (X[18] * X[19])) + (((-(sPAR[17])) - sPAR[26]) * X[21])));
    F[20]=(sPAR[11] * ((sPAR[4] * (X[5] * X[19])) + (((-(sPAR[15])) - sPAR[24]) * X[20])));
    F[3]=(sPAR[11] * ((sPAR[3] * (X[2] * X[19])) + (((-(sPAR[14])) - sPAR[23]) * X[3])));
    F[1]=(sPAR[11] * ((sPAR[1] * (X[0] * X[6])) + (((-(sPAR[12])) - sPAR[23]) * X[1])));
    F[7]=(sPAR[11] * ((sPAR[25] * X[9]) + ((sPAR[27] * X[8]) + ((sPAR[16] * X[9]) + ((sPAR[18] * X[8]) + (((-(sPAR[7])) * (X[14] * X[7])) - (sPAR[5] * (X[18] * X[7]))))))));
    F[10]=(sPAR[11] * ((sPAR[29] * X[12]) + ((sPAR[22] * X[11]) + ((sPAR[20] * X[12]) + ((sPAR[13] * X[11]) + (((-(sPAR[2])) * (X[13] * X[10])) - (sPAR[9] * (X[17] * X[10]))))))));
    F[13]=(sPAR[11] * ((sPAR[30] * X[16]) + ((sPAR[13] * X[11]) - (sPAR[2] * (X[13] * X[10])))));
    F[17]=(sPAR[11] * ((sPAR[28] * X[15]) + ((sPAR[22] * X[11]) + ((sPAR[20] * X[12]) + ((sPAR[21] * X[16]) + (X[17] * (((-(sPAR[10])) * X[14]) - (sPAR[9] * X[10]))))))));
    F[4]=(sPAR[11] * ((sPAR[29] * X[12]) + ((sPAR[19] * X[15]) - (sPAR[8] * (X[4] * X[14])))));
    F[14]=(sPAR[11] * ((sPAR[26] * X[21]) + ((sPAR[28] * X[15]) + ((sPAR[30] * X[16]) + ((sPAR[18] * X[8]) + ((sPAR[19] * X[15]) + ((sPAR[21] * X[16]) + ((((-(sPAR[10])) * (X[17] * X[14])) - (sPAR[7] * (X[14] * X[7]))) - (sPAR[8] * (X[4] * X[14]))))))))));
    F[18]=(sPAR[11] * ((sPAR[24] * X[20]) + ((sPAR[27] * X[8]) + ((sPAR[16] * X[9]) + ((sPAR[17] * X[21]) + (X[18] * (((-(sPAR[6])) * X[19]) - (sPAR[5] * X[7]))))))));
    F[5]=(sPAR[11] * ((sPAR[25] * X[9]) + ((sPAR[15] * X[20]) - (sPAR[4] * (X[5] * X[19])))));
    F[19]=(sPAR[11] * ((sPAR[23] * X[1]) + ((sPAR[24] * X[20]) + ((sPAR[26] * X[21]) + ((sPAR[14] * X[3]) + ((sPAR[15] * X[20]) + ((sPAR[17] * X[21]) + ((((-(sPAR[6])) * (X[18] * X[19])) - (sPAR[3] * (X[2] * X[19]))) - (sPAR[4] * (X[5] * X[19]))))))))));
    F[6]=(sPAR[11] * ((sPAR[23] * X[3]) + ((sPAR[12] * X[1]) - (sPAR[1] * (X[0] * X[6])))));
    F[2]=(sPAR[11] * ((sPAR[23] * X[3]) + ((sPAR[14] * X[3]) - (sPAR[3] * (X[2] * X[19])))));
    F[0]=(sPAR[11] * ((sPAR[23] * X[1]) + ((sPAR[12] * X[1]) - (sPAR[1] * (X[0] * X[6])))));
    F[22]=0.0;
    F[23]=0.0;
    F[24]=0.0;
    F[25]=0.0;
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
    X[22] = ACC[0];
    X[23] = ACC[1];
    X[24] = ACC[2];
    X[25] = ACC[3];
}

template<class Precision> __forceinline__ __device__ void PerThread_Initialization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
    T     = TD[0];
    DOIDX = 0;
    ACC[0]=0.0; //KKK_P_norm
    ACC[1]=0.0; //KK_PP_norm
    ACC[2]=0.0; //K_PP_norm
    ACC[3]=0.0; //rel_K_PP_max
    sPAR[0]=0.9; //K_PP_norm_max
    sPAR[1]=1000.0; //a1
    sPAR[2]=1000.0; //a10
    sPAR[3]=1000.0; //a2
    sPAR[4]=1000.0; //a3
    sPAR[5]=1000.0; //a4
    sPAR[6]=1000.0; //a5
    sPAR[7]=1000.0; //a6
    sPAR[8]=1000.0; //a7
    sPAR[9]=1000.0; //a8
    sPAR[10]=1000.0; //a9
    sPAR[11]=1.0; //comp_size
    sPAR[12]=150.0; //d1
    sPAR[13]=150.0; //d10
    sPAR[14]=150.0; //d2
    sPAR[15]=150.0; //d3
    sPAR[16]=150.0; //d4
    sPAR[17]=150.0; //d5
    sPAR[18]=150.0; //d6
    sPAR[19]=150.0; //d7
    sPAR[20]=150.0; //d8
    sPAR[21]=150.0; //d9
    sPAR[22]=150.0; //k10
    sPAR[23]=150.0; //k2
    sPAR[24]=150.0; //k3
    sPAR[25]=150.0; //k4
    sPAR[26]=150.0; //k5
    sPAR[27]=150.0; //k6
    sPAR[28]=150.0; //k7
    sPAR[29]=150.0; //k8
    sPAR[30]=150.0; //k9
    X[0]=3e-05; //E1
    X[1]=0.0; //E1_KKK
    X[2]=0.0003; //E2
    X[3]=0.0; //E2_P_KKK
    X[4]=1.2; //K
    X[5]=1.2; //KK
    X[6]=0.003; //KKK
    X[7]=0.0003; //KKPase
    X[8]=0.0; //KKPase_PP_KK
    X[9]=0.0; //KKPase_P_KK
    X[10]=0.12; //KPase
    X[11]=0.0; //KPase_PP_K
    X[12]=0.0; //KPase_P_K
    X[13]=0.0; //PP_K
    X[14]=0.0; //PP_KK
    X[15]=0.0; //PP_KK_K
    X[16]=0.0; //PP_KK_P_K
    X[17]=0.0; //P_K
    X[18]=0.0; //P_KK
    X[19]=0.0; //P_KKK
    X[20]=0.0; //P_KKK_KK
    X[21]=0.0; //P_KKK_P_KK
    X[22]=0.0; //ACC[0]
    X[23]=0.0; //ACC[1]
    X[24]=0.0; //ACC[2]
    X[25]=0.0; //ACC[3]
}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
