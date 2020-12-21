
#ifndef BIOMD171_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD171_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[0]=pow(sPAR[13],sPAR[33]); // Non presente nell'XML
    ACC[1]=pow(X[1],sPAR[33]);
    ACC[2]=pow(sPAR[12],sPAR[33]); // Non presente nell'XML
    ACC[5]=((1.0 + ((-1.0 + sPAR[37]) * ceil((0.9 * sin((3.141592653589793 * (T / sPAR[32]))))))) * sPAR[36]);
    ACC[3]=(X[4] + (X[5] + (X[6] + (X[0] + (X[1] * (sPAR[34] / sPAR[22]))))));
    ACC[4]=(X[7] + (X[8] + (X[9] + (X[0] + (X[1] * (sPAR[34] / sPAR[22]))))));
    F[1]=((sPAR[23] * (X[0] * sPAR[22])) + (((-(sPAR[24])) - sPAR[30]) * (X[1] * sPAR[34])));
    F[0]=((((sPAR[25] * (X[9] * X[6])) - (sPAR[26] * X[0])) * sPAR[22]) + ((sPAR[24] * (X[1] * sPAR[34])) + (((-(sPAR[23])) - sPAR[31]) * (X[0] * sPAR[22]))));
    F[6]=((sPAR[18] * (X[5] * (sPAR[22] / (sPAR[4] + X[5])))) + ((sPAR[22] * ((sPAR[26] * X[0]) + (((-(sPAR[25])) * (X[9] * X[6])) - (X[6] * (sPAR[29] + (sPAR[20] / (sPAR[6] + X[6]))))))) - (sPAR[35] * (X[6] * (sPAR[22] / (sPAR[8] + X[6]))))));
    F[5]=((sPAR[14] * (X[4] * (sPAR[22] / (sPAR[0] + X[4])))) + ((sPAR[20] * (X[6] * (sPAR[22] / (sPAR[6] + X[6])))) + ((X[5] * ((-(sPAR[22])) * (sPAR[29] + (sPAR[18] / (sPAR[4] + X[5]))))) - (sPAR[16] * (X[5] * (sPAR[22] / (sPAR[2] + X[5])))))));
    F[4]=((sPAR[27] * (X[2] * sPAR[22])) + ((sPAR[16] * (X[5] * (sPAR[22] / (sPAR[2] + X[5])))) + (X[4] * ((-(sPAR[22])) * (sPAR[29] + (sPAR[14] / (sPAR[0] + X[4])))))));
    F[8]=((sPAR[15] * (X[7] * (sPAR[22] / (sPAR[1] + X[7])))) + ((sPAR[21] * (X[9] * (sPAR[22] / (sPAR[7] + X[9])))) + ((X[8] * ((-(sPAR[22])) * (sPAR[29] + (sPAR[19] / (sPAR[5] + X[8]))))) - (sPAR[17] * (X[8] * (sPAR[22] / (sPAR[3] + X[8])))))));
    F[7]=((sPAR[28] * (X[3] * sPAR[22])) + ((sPAR[17] * (X[8] * (sPAR[22] / (sPAR[3] + X[8])))) + (X[7] * ((-(sPAR[22])) * (sPAR[29] + (sPAR[15] / (sPAR[1] + X[7])))))));
    F[2]=((sPAR[40] * (ACC[2] / (ACC[2] + ACC[1]))) + ((((-(sPAR[38])) / (sPAR[10] + X[2])) - sPAR[29]) * (X[2] * sPAR[22])));
    F[3]=((sPAR[41] * (ACC[0] / (ACC[0] + ACC[1]))) + ((((-(sPAR[39])) / (sPAR[11] + X[3])) - sPAR[29]) * (X[3] * sPAR[22])));
    F[9]=((sPAR[19] * (X[8] * (sPAR[22] / (sPAR[5] + X[8])))) + ((sPAR[22] * ((sPAR[26] * X[0]) + (X[9] * ((((-(sPAR[21])) / (sPAR[7] + X[9])) - (sPAR[25] * X[6])) - sPAR[29])))) - (ACC[5] * (X[9] * (sPAR[22] / (sPAR[9] + X[9]))))));

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
    ACC[0]=0.0; //$cse1
    ACC[1]=0.0; //$cse2
    ACC[2]=0.0; //$cse3
    ACC[3]=0.0; //Pt
    ACC[4]=0.0; //Tt
    ACC[5]=2.0; //v_dT
    sPAR[0]=2.0; //K_1P_16
    sPAR[1]=2.0; //K_1T_20
    sPAR[2]=2.0; //K_2P_18
    sPAR[3]=2.0; //K_2T_22
    sPAR[4]=2.0; //K_3P_17
    sPAR[5]=2.0; //K_3T_21
    sPAR[6]=2.0; //K_4P_19
    sPAR[7]=2.0; //K_4T_23
    sPAR[8]=0.2; //K_dP_25
    sPAR[9]=0.2; //K_dT_24
    sPAR[10]=0.2; //K_mP_3
    sPAR[11]=0.2; //K_mT_2
    sPAR[12]=1.0; //Ki_P_0
    sPAR[13]=1.0; //Ki_T_1
    sPAR[14]=8.0; //V_1P_16
    sPAR[15]=8.0; //V_1T_20
    sPAR[16]=1.0; //V_2P_18
    sPAR[17]=1.0; //V_2T_22
    sPAR[18]=8.0; //V_3P_17
    sPAR[19]=8.0; //V_3T_21
    sPAR[20]=1.0; //V_4P_19
    sPAR[21]=1.0; //V_4T_23
    sPAR[22]=1.0; //cytoplasm
    sPAR[23]=1.2; //k1_15
    sPAR[24]=0.2; //k2_15
    sPAR[25]=1.2; //k3_12
    sPAR[26]=0.6; //k4_12
    sPAR[27]=0.9; //k_sP_4
    sPAR[28]=0.9; //k_sT_5
    sPAR[29]=0.01; //kd
    sPAR[30]=0.01; //kd_CN_14
    sPAR[31]=0.01; //kd_C_13
    sPAR[32]=12.0; //l_d
    sPAR[33]=4.0; //n
    sPAR[34]=1.0; //nucleus
    sPAR[35]=2.0; //v_dP_25
    sPAR[36]=2.0; //v_dT_dark
    sPAR[37]=2.0; //v_dT_fac
    sPAR[38]=0.8; //v_mP_3
    sPAR[39]=0.7; //v_mT_2
    sPAR[40]=0.8; //v_sP_0
    sPAR[41]=1.0; //v_sT_1
    X[0]=0.18; //C
    X[1]=1.2; //CN
    X[2]=0.09; //M_P
    X[3]=1.41; //M_T
    X[4]=0.02; //P0
    X[5]=0.02; //P1
    X[6]=0.01; //P2
    X[7]=0.54; //T0
    X[8]=0.79; //T1
    X[9]=4.65; //T2

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
