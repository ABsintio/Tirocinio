
#ifndef BIOMD355_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD355_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[8]=0.0;
    F[1]=((X[5] * (pow(X[0],2.0) / (pow(X[0],2.0) + pow(sPAR[9],2.0)))) + (((-1.0 + sPAR[20]) * ((sPAR[6] + ((1.0 - X[3]) * (sPAR[0] * (pow(X[2],2.0) * (pow(X[0],2.0) / ((pow(X[2],2.0) + pow(sPAR[16],2.0)) * (pow(X[0],2.0) + pow(sPAR[15],2.0)))))))) * X[1])) - (sPAR[20] * ((sPAR[6] + ((1.0 - X[3]) * (sPAR[0] * (pow(X[2],2.0) * (pow(X[0],2.0) / ((pow(X[0],2.0) + pow(sPAR[15],2.0)) * (pow(X[2],2.0) + pow(sPAR[16],2.0)))))))) * X[1]))));
    F[4]=((sPAR[17] * (pow(X[0],4.0) / (pow(X[0],4.0) + pow(sPAR[21],4.0)))) + ((sPAR[20] * ((sPAR[6] + ((1.0 - X[3]) * (sPAR[0] * (pow(X[2],2.0) * (pow(X[0],2.0) / ((pow(X[2],2.0) + pow(sPAR[16],2.0)) * (pow(X[0],2.0) + pow(sPAR[15],2.0)))))))) * X[1])) - (sPAR[13] * (X[4] / (0.01 + X[4])))));
    F[6]=((pow(sPAR[19],-2.0) * (sPAR[11] * (sPAR[23] * (((4.0 * (-1.0 + sPAR[19])) + pow(X[1],2.0)) * (((0.0025 * (-1.0 + sPAR[19])) + pow(X[0],2.0)) / (pow(X[1],2.0) * pow(X[0],2.0))))))) - (X[6] * sPAR[23]));
    F[5]=(sPAR[23] * ((sPAR[1] * (((16.0 * (-1.0 + sPAR[19])) + pow(X[1],4.0)) / (sPAR[19] * pow(X[1],4.0)))) - X[5]));
    F[7]=(sPAR[23] * ((sPAR[19] * (sPAR[18] * (pow(X[0],4.0) / ((6.250000000000001e-06 * (-1.0 + sPAR[19])) + pow(X[0],4.0))))) - X[7]));
    F[3]=((sPAR[3] * (pow(X[0],4.0) * ((1.0 - X[3]) / (pow(X[0],4.0) + pow(sPAR[22],4.0))))) - (sPAR[5] * X[3]));
    F[2]=((sPAR[7] * X[0]) - (sPAR[2] * X[2]));
    F[0]=(((1.0 - sPAR[20]) * ((sPAR[6] + ((1.0 - X[3]) * (sPAR[0] * (pow(X[2],2.0) * (pow(X[0],2.0) / ((pow(X[0],2.0) + pow(sPAR[15],2.0)) * (pow(X[2],2.0) + pow(sPAR[16],2.0)))))))) * X[1])) + ((X[6] * (sPAR[12] + (pow(sPAR[24],8.0) / (pow(X[1],8.0) + pow(sPAR[24],8.0))))) + ((sPAR[13] * (X[4] / (0.01 + X[4]))) + ((pow(X[0],2.0) * (((-(X[5])) / (pow(X[0],2.0) + pow(sPAR[9],2.0))) - (X[7] / (pow(X[0],2.0) + pow(sPAR[14],2.0))))) - (sPAR[17] * (pow(X[0],4.0) / (pow(X[0],4.0) + pow(sPAR[21],4.0))))))));

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
    sPAR[0]=3.0; //A
    sPAR[1]=0.266; //B
    sPAR[2]=2.0; //D
    sPAR[3]=5.0; //E
    sPAR[4]=1.0; //ER_store
    sPAR[5]=0.018; //F
    sPAR[6]=0.01; //L
    sPAR[7]=1.0; //R
    sPAR[8]=1.0; //cytosol
    sPAR[9]=0.175; //k2
    sPAR[10]=1.0; //mitochondria
    sPAR[11]=0.02; //mw004dcb62_da5f_41c7_a7bd_033574894f48
    sPAR[12]=0.0346; //mw0ad64e84_bb75_4be4_a9c3_2d4741b0f45f
    sPAR[13]=0.005; //mw219cf65d_18cc_4f7e_ab5a_5b87cda6fc43
    sPAR[14]=0.2; //mw3a93c3a6_623a_44fe_84e9_a47823defd1f
    sPAR[15]=0.13; //mw78dd80b8_e003_4c62_81d1_547d001767af
    sPAR[16]=0.175; //mw92b257b7_00af_4fd6_a11b_8e4655a4ba65
    sPAR[17]=0.03; //mwa3072851_e3e4_4767_ac41_49fa7c0de7a7
    sPAR[18]=0.013; //mwd21d3f76_d133_4053_8e44_02a538657e0a
    sPAR[19]=8.0; //mwd3b36919_202a_4fed_a3c8_1a3a60594404
    sPAR[20]=0.03; //mwd8bf5d8f_ad00_4119_bde1_91015ef2cd7c
    sPAR[21]=0.6; //mwe3841c25_6042_49c2_9feb_90cbf6751167
    sPAR[22]=1.0; //mwf998b218_be11_4aa4_81ae_41141861fb42
    sPAR[23]=1e-06; //mwfbff577a_4e9c_40fe_8777_eb0ceade28c9
    sPAR[24]=1.0; //mwfe8e89cf_3c67_4dd5_939e_b4cfee2e0778
    sPAR[25]=1.0; //outside
    X[0]=0.05; //CaI
    X[1]=2.0; //CaS
    X[2]=0.0; //IP3
    X[3]=0.002; //g
    X[4]=0.0; //mw013a7c64_a9ec_483c_b3b8_ed658337ee95
    X[5]=0.266; //mw0ebc76ad_49d7_4845_8f88_04d443fbe7f3
    X[6]=0.02; //mw7cb2644a_384a_4bbb_93fd_fd686e01d7cb
    X[7]=0.013; //mwaf195932_a72c_4552_8cf2_b349b15d39c4
    X[8]=1000.0; //mwd6b792d8_c983_42c1_b3bc_2494d6a3363e

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
