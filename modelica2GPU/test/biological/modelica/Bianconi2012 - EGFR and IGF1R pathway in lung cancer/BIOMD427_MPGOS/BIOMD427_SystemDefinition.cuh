
#ifndef BIOMD427_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD427_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[11]=((0.0213697 * (X[6] * (X[10] / (763523.0 + X[10])))) + (-0.005 * X[11]));
    F[10]=((0.005 * X[11]) + (-0.0213697 * (X[6] * (X[10] / (763523.0 + X[10])))));
    F[16]=0.0;
    F[19]=0.0;
    F[8]=((2.83243 * (X[14] * (pow(X[9],1.0) / (518753.0 + pow(X[9],1.0))))) + (-185.759 * (X[17] * (pow(X[8],1.0) / (4768350.0 + pow(X[8],1.0))))));
    F[17]=((0.884096 * (X[20] * (pow(X[15],1.0) / (62464.6 + pow(X[15],1.0))))) + ((-15.1212 * (X[1] * (pow(X[17],1.0) / (119355.0 + pow(X[17],1.0))))) + (-0.126329 * (X[16] * (pow(X[17],1.0) / (1061.71 + pow(X[17],1.0)))))));
    F[18]=((1509.36 * (X[19] * (pow(X[20],1.0) / (1432410.0 + pow(X[20],1.0))))) + (-32.344 * (X[2] * (pow(X[18],1.0) / (35954.3 + pow(X[18],1.0))))));
    F[14]=0.0;
    F[0]=((0.005 * X[1]) + (-0.0566279 * (X[13] * (pow(X[0],1.0) / (653951.0 + pow(X[0],1.0))))));
    F[1]=((0.0566279 * (X[13] * (pow(X[0],1.0) / (653951.0 + pow(X[0],1.0))))) + ((X[1] * (-0.005 + (15.1212 * (pow(X[17],1.0) / (119355.0 + pow(X[17],1.0)))))) + (-15.1212 * (X[1] * (pow(X[17],1.0) / (119355.0 + pow(X[17],1.0)))))));
    F[13]=((10.6737 * (pow(X[12],1.0) * ((X[7] + pow(X[4],2.0)) / (184912.0 + pow(X[12],1.0))))) + ((0.0771067 * (X[20] * (pow(X[12],1.0) / (272056.0 + pow(X[12],1.0))))) + (-0.005 * X[13])));
    F[12]=((0.005 * X[13]) + ((-10.6737 * (pow(X[12],1.0) * ((X[7] + pow(X[4],2.0)) / (184912.0 + pow(X[12],1.0))))) + (-0.0771067 * (X[20] * (pow(X[12],1.0) / (272056.0 + pow(X[12],1.0)))))));
    F[7]=(-0.02 * X[7]);
    F[6]=((9.853669999999999 * (X[9] * (X[5] / (1007340.0 + X[5])))) + (-8.8912 * (X[14] * (pow(X[6],1.0) / (3496490.0 + pow(X[6],1.0))))));
    F[5]=((8.8912 * (X[14] * (pow(X[6],1.0) / (3496490.0 + pow(X[6],1.0))))) + (-9.853669999999999 * (X[9] * (X[5] / (1007340.0 + X[5])))));
    F[9]=((185.759 * (X[17] * (pow(X[8],1.0) / (4768350.0 + pow(X[8],1.0))))) + (-2.83243 * (X[14] * (pow(X[9],1.0) / (518753.0 + pow(X[9],1.0))))));
    F[20]=((32.344 * (X[2] * (pow(X[18],1.0) / (35954.3 + pow(X[18],1.0))))) + (-1509.36 * (X[19] * (pow(X[20],1.0) / (1432410.0 + pow(X[20],1.0))))));
    F[15]=((15.1212 * (X[1] * (pow(X[17],1.0) / (119355.0 + pow(X[17],1.0))))) + ((0.126329 * (X[16] * (pow(X[17],1.0) / (1061.71 + pow(X[17],1.0))))) + (-0.884096 * (X[20] * (pow(X[15],1.0) / (62464.6 + pow(X[15],1.0)))))));
    F[2]=((694.731 * (X[4] * (pow(X[3],1.0) / (6086070.0 + pow(X[3],1.0))))) + ((500.0 * (X[7] * (pow(X[3],1.0) / (100000.0 + pow(X[3],1.0))))) + (-161197.0 * (X[11] * (pow(X[2],1.0) / (896896.0 + pow(X[2],1.0)))))));
    F[3]=((161197.0 * (X[11] * (pow(X[2],1.0) / (896896.0 + pow(X[2],1.0))))) + ((-694.731 * (X[4] * (pow(X[3],1.0) / (6086070.0 + pow(X[3],1.0))))) + (-500.0 * (X[7] * (pow(X[3],1.0) / (100000.0 + pow(X[3],1.0)))))));
    F[4]=(-0.02 * X[4]);

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
    sPAR[0]=653951.0; //KM_AKT_PI3K_8
    sPAR[1]=100000.0; //KM_A_SOS_I_5
    sPAR[2]=896896.0; //KM_D_SOS_P90Rsk_4
    sPAR[3]=1007340.0; //KM_ERK_MekActive_3
    sPAR[4]=3496490.0; //KM_ERKactive_PP2A_10
    sPAR[5]=518753.0; //KM_MekActivePP2A_16
    sPAR[6]=4768350.0; //KM_MekPP2A_13
    sPAR[7]=763523.0; //KM_P90Rsk_ERKActive
    sPAR[8]=184912.0; //KM_PI3K_EGF1R_7
    sPAR[9]=184912.0; //KM_PI3K_IGF1R_6
    sPAR[10]=272056.0; //KM_PI3K_Ras_11
    sPAR[11]=119355.0; //KM_Raf_AKT_14
    sPAR[12]=62464.6; //KM_Raf_RasActive_12
    sPAR[13]=1432410.0; //KM_RasActiveRasGap_15
    sPAR[14]=1061.71; //KM_RasActive_RafPP_19
    sPAR[15]=35954.3; //KM_Ras_SOS_1
    sPAR[16]=6086070.0; //KM_SOS_E_0
    sPAR[17]=1.0; //cell_nsclc
    sPAR[18]=0.02; //gamma_EGFR
    sPAR[19]=0.02; //gamma_IGFR
    sPAR[20]=0.0566279; //k_AKT_PI3K_8
    sPAR[21]=500.0; //k_A_SOS_I_5
    sPAR[22]=161197.0; //k_D_SOS_P90Rsk_4
    sPAR[23]=9.853669999999999; //k_ERK_MekActive_3
    sPAR[24]=8.8912; //k_ERKactive_PP2A_10
    sPAR[25]=2.83243; //k_MekActivePP2A_16
    sPAR[26]=185.759; //k_Mek_PP2A_13
    sPAR[27]=0.0213697; //k_P90Rsk_ERKActive
    sPAR[28]=10.6737; //k_PI3K_EGF1R_7
    sPAR[29]=10.6737; //k_PI3K_IGF1R_6
    sPAR[30]=0.0771067; //k_PI3K_Ras_11
    sPAR[31]=15.1212; //k_Raf_AKT_14
    sPAR[32]=0.884096; //k_Raf_RasActive_12
    sPAR[33]=1509.36; //k_RasActiveRasGap_15
    sPAR[34]=0.126329; //k_RasActive_RafPP_19
    sPAR[35]=32.344; //k_Ras_SOS_1
    sPAR[36]=694.731; //k_SOS_E_0
    sPAR[37]=0.005; //kd_AKT_9
    sPAR[38]=0.005; //kd_P90Rsk_21
    sPAR[39]=0.005; //kd_PI3K_a
    sPAR[40]=1.0; //n_AKT_PI3K_8
    sPAR[41]=1.0; //n_A_SOS_I_5
    sPAR[42]=1.0; //n_D_SOS_4
    sPAR[43]=1.0; //n_ERKactive_PP2A_10
    sPAR[44]=1.0; //n_MekActivePP2A_16
    sPAR[45]=1.0; //n_Mek_PP2A_13
    sPAR[46]=1.0; //n_PI3K_E_7
    sPAR[47]=1.0; //n_PI3K_I_6
    sPAR[48]=1.0; //n_PI3K_Ras_11
    sPAR[49]=1.0; //n_Raf_AKT_14
    sPAR[50]=1.0; //n_Raf_RasActive_12
    sPAR[51]=1.0; //n_RasActiveRasGap_15
    sPAR[52]=1.0; //n_RasActive_RafPP_19
    sPAR[53]=1.0; //n_Ras_SOS_1
    sPAR[54]=1.0; //n_SOS_0
    X[0]=600000.0; //AKT
    X[1]=0.0; //AKT_active
    X[2]=0.0; //A_SOS
    X[3]=120000.0; //D_SOS
    X[4]=8000.0; //EGFR_active
    X[5]=600000.0; //ERK
    X[6]=0.0; //ERK_active
    X[7]=800.0; //IGFR_active
    X[8]=600000.0; //Mek
    X[9]=0.0; //Mek_active
    X[10]=120000.0; //P90RskInactive
    X[11]=0.0; //P90Rsk_Active
    X[12]=120000.0; //PI3KCA
    X[13]=0.0; //PI3KCA_active
    X[14]=120000.0; //PP2A
    X[15]=120000.0; //Raf
    X[16]=120000.0; //RafPP
    X[17]=0.0; //Raf_active
    X[18]=120000.0; //Ras
    X[19]=120000.0; //RasGapActive
    X[20]=0.0; //Ras_active

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
