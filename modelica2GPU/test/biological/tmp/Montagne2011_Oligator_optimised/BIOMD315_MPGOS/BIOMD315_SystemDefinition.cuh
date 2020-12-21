
#ifndef BIOMD315_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD315_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[2]=(X[8] + (X[9] + (X[3] + ((2.0 * X[10]) + ((2.0 * X[11]) + X[12])))));
    ACC[3]=(X[15] + (X[5] + (X[12] + (X[17] + X[18]))));
    ACC[1]=(X[0] + (X[7] + (X[18] + X[1])));
    ACC[0]=((11.0 * (X[9] + (X[3] + (X[11] + (X[5] + X[17]))))) + ((16.0 * (X[7] + X[1])) + ((22.0 * (X[10] + (X[13] + (X[12] + X[14])))) + (27.0 * (X[18] + X[16])))));
    ACC[4]=(-0.38 + (0.0009300000000000001 * ACC[0]));
    F[1]=(sPAR[42] * ((sPAR[20] * (X[2] * X[0])) + ((sPAR[22] * (X[3] * X[0])) + ((sPAR[25] * (X[9] * X[0])) + ((((-(sPAR[23])) - sPAR[24]) * (X[8] * X[1])) - (sPAR[21] * X[1]))))));
    F[16]=(sPAR[42] * ((sPAR[15] * X[17]) + ((sPAR[16] * X[18]) - (sPAR[19] * X[16]))));
    F[7]=(sPAR[42] * ((sPAR[11] * (X[6] * X[0])) + ((sPAR[14] * X[18]) + (((-(sPAR[13])) * (X[15] * X[7])) - (sPAR[12] * X[7])))));
    F[0]=(sPAR[42] * ((sPAR[9] * X[18]) + ((sPAR[16] * X[18]) + ((sPAR[24] * (X[8] * X[1])) + ((sPAR[12] * X[7]) + ((sPAR[21] * X[1]) + ((sPAR[23] * (X[8] * X[1])) + (((((((-(sPAR[28])) * X[0]) - (sPAR[20] * (X[2] * X[0]))) - (sPAR[25] * (X[9] * X[0]))) - (sPAR[10] * (X[17] * X[0]))) - (sPAR[22] * (X[3] * X[0]))) - (sPAR[11] * (X[6] * X[0]))))))))));
    F[18]=(sPAR[42] * ((sPAR[13] * (X[15] * X[7])) + ((sPAR[19] * X[16]) + ((sPAR[10] * (X[17] * X[0])) + ((((-(sPAR[9])) - sPAR[14]) - sPAR[16]) * X[18])))));
    F[17]=(sPAR[42] * ((sPAR[7] * (X[15] * X[6])) + ((sPAR[9] * X[18]) + (X[17] * ((((-(sPAR[10])) * X[0]) - sPAR[8]) - sPAR[15])))));
    F[6]=((-(sPAR[42])) * ((sPAR[7] * (X[15] * X[6])) + ((sPAR[11] * (X[6] * X[0])) + (((-(sPAR[12])) * X[7]) - (sPAR[8] * X[17])))));
    F[14]=(sPAR[42] * ((sPAR[4] * X[11]) + ((sPAR[5] * X[12]) - (sPAR[6] * X[14]))));
    F[5]=(sPAR[42] * ((sPAR[2] * X[12]) + ((sPAR[41] * (X[4] * X[15])) + (((-(sPAR[40])) * X[5]) - (sPAR[3] * (X[8] * X[5]))))));
    F[15]=(sPAR[42] * ((sPAR[38] * X[12]) + ((sPAR[40] * X[5]) + ((sPAR[5] * X[12]) + ((sPAR[8] * X[17]) + ((sPAR[14] * X[18]) + ((X[15] * (((-(sPAR[7])) * X[6]) - sPAR[27])) + ((((-(sPAR[13])) * (X[15] * X[7])) - (sPAR[41] * (X[4] * X[15]))) - (sPAR[39] * (X[11] * X[15]))))))))));
    F[12]=(sPAR[42] * ((sPAR[6] * X[14]) + ((sPAR[39] * (X[11] * X[15])) + ((sPAR[3] * (X[8] * X[5])) + ((((-(sPAR[2])) - sPAR[38]) - sPAR[5]) * X[12])))));
    F[11]=(sPAR[42] * ((sPAR[36] * (X[8] * X[4])) + ((sPAR[38] * X[12]) + (X[11] * ((((-(sPAR[39])) * X[15]) - sPAR[37]) - sPAR[4])))));
    F[4]=(sPAR[42] * ((sPAR[40] * X[5]) + ((sPAR[37] * X[11]) + (((-(sPAR[36])) * (X[8] * X[4])) - (sPAR[41] * (X[4] * X[15]))))));
    F[13]=(sPAR[42] * ((sPAR[33] * X[9]) + ((sPAR[34] * X[10]) - (sPAR[35] * X[13]))));
    F[3]=(sPAR[42] * ((sPAR[31] * X[10]) + ((sPAR[30] * (X[2] * X[8])) + ((sPAR[23] * (X[8] * X[1])) + (((-(X[3])) * (sPAR[29] + (sPAR[22] * X[0]))) - (sPAR[32] * (X[8] * X[3])))))));
    F[10]=(sPAR[42] * ((sPAR[35] * X[13]) + ((sPAR[18] * (X[8] * X[9])) + ((sPAR[32] * (X[8] * X[3])) + ((((-(sPAR[31])) - sPAR[17]) - sPAR[34]) * X[10])))));
    F[9]=(sPAR[42] * ((sPAR[0] * (X[2] * X[8])) + ((sPAR[17] * X[10]) + ((sPAR[24] * (X[8] * X[1])) + ((X[9] * ((((-(sPAR[25])) * X[0]) - sPAR[33]) - sPAR[1])) - (sPAR[18] * (X[8] * X[9])))))));
    F[8]=(sPAR[42] * ((sPAR[17] * X[10]) + ((sPAR[29] * X[3]) + ((sPAR[31] * X[10]) + ((sPAR[34] * X[10]) + ((sPAR[2] * X[12]) + ((sPAR[22] * (X[3] * X[0])) + ((sPAR[1] * X[9]) + ((sPAR[37] * X[11]) + ((sPAR[25] * (X[9] * X[0])) + ((X[8] * (((-(sPAR[36])) * X[4]) - sPAR[26])) + ((((((((-(sPAR[30])) * (X[2] * X[8])) - (sPAR[23] * (X[8] * X[1]))) - (sPAR[18] * (X[8] * X[9]))) - (sPAR[32] * (X[8] * X[3]))) - (sPAR[3] * (X[8] * X[5]))) - (sPAR[24] * (X[8] * X[1]))) - (sPAR[0] * (X[2] * X[8]))))))))))))));
    F[2]=(sPAR[42] * ((sPAR[29] * X[3]) + ((sPAR[1] * X[9]) + ((sPAR[21] * X[1]) + (X[2] * ((((-(sPAR[30])) - sPAR[0]) * X[8]) - (sPAR[20] * X[0])))))));
    F[19]=0.0;

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
    ACC[0]=0.0; //Bp_concentration
    ACC[1]=0.0; //Inh_total
    ACC[2]=0.0; //alpha_total
    ACC[3]=0.0; //beta_total
    ACC[4]=0.0; //fluorescence
    sPAR[0]=0.0294; //k0d
    sPAR[1]=3.43457943925; //k0r
    sPAR[2]=3.43457943925; //k10d
    sPAR[3]=0.0294; //k10r
    sPAR[4]=11.8408; //k11d
    sPAR[5]=9.223983199999999; //k12d
    sPAR[6]=2.60186; //k13d
    sPAR[7]=0.0171; //k14d
    sPAR[8]=0.610714285714; //k14r
    sPAR[9]=0.00186296832954; //k15d
    sPAR[10]=0.027; //k15r
    sPAR[11]=0.027; //k16d
    sPAR[12]=0.00186296832954; //k16r
    sPAR[13]=0.0171; //k17d
    sPAR[14]=0.610714285714; //k17r
    sPAR[15]=17.024; //k18d
    sPAR[16]=5.566848; //k19d
    sPAR[17]=3.43457943925; //k1d
    sPAR[18]=0.0294; //k1r
    sPAR[19]=3.2064; //k20d
    sPAR[20]=0.027; //k21d
    sPAR[21]=0.00608108108108; //k21r
    sPAR[22]=0.021546; //k22d
    sPAR[23]=4.15391351351e-05; //k22r
    sPAR[24]=4.15391351351e-05; //k23d
    sPAR[25]=0.021546; //k23r
    sPAR[26]=0.411; //k24d
    sPAR[27]=0.485802; //k25d
    sPAR[28]=1.7262; //k26d
    sPAR[29]=3.43457943925; //k2d
    sPAR[30]=0.0294; //k2r
    sPAR[31]=3.43457943925; //k3d
    sPAR[32]=0.0294; //k3r
    sPAR[33]=15.2; //k4d
    sPAR[34]=11.8408; //k5d
    sPAR[35]=3.34; //k6d
    sPAR[36]=0.0294; //k7d
    sPAR[37]=3.43457943925; //k7r
    sPAR[38]=0.610714285714; //k8d
    sPAR[39]=0.0171; //k8r
    sPAR[40]=0.610714285714; //k9d
    sPAR[41]=0.0171; //k9r
    sPAR[42]=1.0; //sample_
    X[0]=0.0; //Inh
    X[1]=0.0; //Inh_T1
    X[2]=38.5; //T1
    X[3]=0.0; //T1_alpha
    X[4]=3.89; //T2
    X[5]=0.0; //T2_beta
    X[6]=38.5; //T3
    X[7]=0.0; //T3_Inh
    X[8]=10.0; //alpha
    X[9]=0.0; //alpha_T1
    X[10]=0.0; //alpha_T1_alpha
    X[11]=0.0; //alpha_T2
    X[12]=0.0; //alpha_T2_beta
    X[13]=0.0; //alpha_alpha_T1
    X[14]=0.0; //alpha_beta_T2
    X[15]=0.0; //beta
    X[16]=0.0; //beta_Inh_T3
    X[17]=0.0; //beta_T3
    X[18]=0.0; //beta_T3_Inh
    X[19]=0.0; //empty

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
