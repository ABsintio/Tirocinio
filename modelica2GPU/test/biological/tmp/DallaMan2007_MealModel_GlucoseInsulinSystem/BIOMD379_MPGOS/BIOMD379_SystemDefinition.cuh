
#ifndef BIOMD379_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD379_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[0]=0.0;
    ACC[14]=(2.5 / (sPAR[2] * sPAR[18]));
    ACC[13]=(2.5 / (sPAR[2] * (1.0 - sPAR[16])));
    ACC[1]=(sPAR[30] + ((((-(sPAR[31])) * X[0]) - (sPAR[32] * X[3])) - (sPAR[33] * X[6])));
    ACC[12]=((1.0 - sPAR[40]) * (sPAR[13] + (sPAR[14] * X[10])));
    ACC[10]=(ACC[12] * (X[1] / (sPAR[7] + X[1])));
    ACC[9]=(sPAR[10] + ACC[10]);
    ACC[11]=ACC[10];
    ACC[7]=(sPAR[20] * X[6]);
    ACC[3]=(sPAR[38] - (sPAR[37] * ACC[7]));
    ACC[16]=(ACC[3] * (sPAR[34] / (1.0 - ACC[3])));
    ACC[4]=(X[5] / sPAR[12]);
    ACC[2]=(X[0] / sPAR[11]);
    ACC[5]=(X[8] + X[9]);
    ACC[15]=(sPAR[29] + (0.5 * ((sPAR[28] - sPAR[29]) * (2.0 + (tanh((ACC[13] * (ACC[5] - (sPAR[16] * sPAR[2])))) - tanh((ACC[14] * (ACC[5] - (sPAR[18] * sPAR[2])))))))));
    ACC[6]=(sPAR[19] * (sPAR[23] * (X[7] / sPAR[0])));
    ACC[8]=(X[11] + ((sPAR[6] * ((ACC[1] + (ACC[6] + ((sPAR[22] * X[1]) + (((-(sPAR[21])) * X[0]) - sPAR[10])))) / sPAR[11])) + sPAR[8]));
    F[1]=((sPAR[21] * X[0]) + ((-(ACC[10])) - (sPAR[22] * X[1])));
    F[4]=((((-(sPAR[34])) - ACC[16]) * X[4]) + ((sPAR[35] * X[5]) + ACC[7]));
    F[2]=(sPAR[27] * (ACC[4] - X[2]));
    F[10]=(sPAR[39] * (ACC[4] + ((-(sPAR[5])) - X[10])));
    F[11]=((-(sPAR[15])) * (X[11] + (sPAR[17] * (sPAR[3] - ACC[2]))));
    F[9]=((sPAR[26] * X[8]) - (ACC[15] * X[9]));
    F[7]=((ACC[15] * X[9]) - (sPAR[23] * X[7]));
    F[6]=(ACC[8] - ACC[7]);
    F[0]=(ACC[1] + (ACC[6] + ((sPAR[22] * X[1]) + ((-(sPAR[10])) - (sPAR[21] * X[0])))));
    F[5]=((((-(sPAR[35])) - sPAR[36]) * X[5]) + (sPAR[34] * X[4]));
    F[8]=((-(sPAR[26])) * X[8]);
    F[3]=(sPAR[27] * (X[2] - X[3]));

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
    ACC[0]=0.0; //E
    ACC[1]=1.87872; //EGP
    ACC[2]=94.68085106382981; //G
    ACC[3]=0.59238; //HE
    ACC[4]=25.0; //I
    ACC[5]=78000.0; //Q_sto
    ACC[6]=0.0; //Ra
    ACC[7]=1.8; //S
    ACC[8]=1.76784893617021; //S_po
    ACC[9]=1.74877284450484; //U
    ACC[10]=0.7487728445048391; //U_id
    ACC[11]=0.7487728445048391; //U_idm
    ACC[12]=2.0; //V_mmax
    ACC[13]=0.000178062678062678; //aa
    ACC[14]=0.00320512820512821; //cc
    ACC[15]=0.0554800817258192; //k_empt
    ACC[16]=0.276120406260733; //m_3
    sPAR[0]=78.0; //BW
    sPAR[1]=1.0; //Compartment1
    sPAR[2]=78000.0; //D
    sPAR[3]=95.0; //G_b
    sPAR[4]=0.6; //HE_b
    sPAR[5]=25.0; //I_b
    sPAR[6]=2.3; //K
    sPAR[7]=225.59; //K_m0
    sPAR[8]=1.8; //S_b
    sPAR[9]=-1.8; //S_b_minus
    sPAR[10]=1.0; //U_ii
    sPAR[11]=1.88; //V_G
    sPAR[12]=0.05; //V_I
    sPAR[13]=2.5; //V_m0
    sPAR[14]=0.047; //V_mX
    sPAR[15]=0.05; //alpha
    sPAR[16]=0.82; //b
    sPAR[17]=0.11; //beta
    sPAR[18]=0.01; //d
    sPAR[19]=0.9; //f
    sPAR[20]=0.5; //gamma
    sPAR[21]=0.065; //k_1
    sPAR[22]=0.079; //k_2
    sPAR[23]=0.057; //k_abs
    sPAR[24]=0.0005; //k_e1
    sPAR[25]=339.0; //k_e2
    sPAR[26]=0.0558; //k_gri
    sPAR[27]=0.007900000000000001; //k_i
    sPAR[28]=0.0558; //k_max
    sPAR[29]=0.008; //k_min
    sPAR[30]=2.7; //k_p1
    sPAR[31]=0.0021; //k_p2
    sPAR[32]=0.008999999999999999; //k_p3
    sPAR[33]=0.0618; //k_p4
    sPAR[34]=0.19; //m_1
    sPAR[35]=0.484; //m_2
    sPAR[36]=0.194; //m_4
    sPAR[37]=0.0304; //m_5
    sPAR[38]=0.6471; //m_6
    sPAR[39]=0.0331; //p_2U
    sPAR[40]=0.2; //part
    X[0]=178.0; //G_p
    X[1]=134.9999999999999; //G_t
    X[2]=25.0; //I_1
    X[3]=25.0; //I_d
    X[4]=4.5; //I_l
    X[5]=1.25; //I_p
    X[6]=3.6; //I_po
    X[7]=0.0; //Q_gut
    X[8]=78000.0; //Q_sto1
    X[9]=0.0; //Q_sto2
    X[10]=0.0; //X
    X[11]=0.0; //Y

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
