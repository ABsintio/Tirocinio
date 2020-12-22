
#ifndef BIOMD107_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD107_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[2]=(X[6] + X[7]);
    ACC[8]=(X[3] + (X[4] + (X[5] + ACC[2])));
    ACC[1]=(sPAR[28] - X[1]);
    ACC[5]=((sPAR[11] * ACC[1]) + (sPAR[10] * X[1]));
    ACC[0]=(sPAR[27] - X[0]);
    ACC[9]=(sPAR[31] - X[8]);
    ACC[7]=((sPAR[13] * X[8]) + (sPAR[12] * ACC[9]));
    ACC[4]=(sPAR[30] - X[2]);
    ACC[6]=((sPAR[9] * ACC[4]) + (sPAR[8] * X[2]));
    ACC[3]=(sPAR[29] + ((((-(X[5])) - X[7]) - X[4]) - X[6]));
    F[1]=((sPAR[19] * (X[0] * (ACC[1] / (sPAR[2] + ACC[1])))) - (sPAR[21] * (X[1] / (sPAR[3] + X[1]))));
    F[0]=((sPAR[24] * (X[5] * (ACC[0] / (sPAR[6] + ACC[0])))) - (sPAR[25] * (X[0] / (sPAR[7] + X[0]))));
    F[8]=((sPAR[22] * (X[5] * (ACC[9] / (sPAR[4] + ACC[9])))) - (sPAR[23] * (X[8] / (sPAR[5] + X[8]))));
    F[5]=((sPAR[20] * X[4]) + ((ACC[6] * X[7]) + ((((-(ACC[5])) - sPAR[26]) - ACC[7]) * X[5])));
    F[6]=((ACC[7] * X[4]) + ((sPAR[26] * X[7]) + ((((-(ACC[5])) - ACC[6]) - sPAR[20]) * X[6])));
    F[7]=((sPAR[20] * X[6]) + ((ACC[7] * X[5]) + ((((-(ACC[5])) - sPAR[26]) - ACC[6]) * X[7])));
    F[2]=((sPAR[17] * (X[5] * (ACC[4] / (sPAR[0] + ACC[4])))) - (sPAR[18] * (X[2] / (sPAR[1] + X[2]))));
    F[3]=(sPAR[15] - (X[3] * (ACC[5] + (sPAR[16] * ACC[3]))));
    F[4]=((sPAR[16] * (X[3] * ACC[3])) + ((sPAR[26] * X[5]) + ((ACC[6] * X[6]) + ((((-(ACC[5])) - ACC[7]) - sPAR[20]) * X[4]))));

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
    ACC[0]=0.0; //IE
    ACC[1]=0.0; //UbE
    ACC[2]=0.0; //Y15P
    ACC[3]=0.0; //cdc2
    ACC[4]=0.0; //cdc25
    ACC[5]=0.0; //k2
    ACC[6]=0.0; //k25
    ACC[7]=0.0; //kwee
    ACC[8]=0.0; //total_cyclin
    ACC[9]=0.0; //wee1
    sPAR[0]=0.1; //K_a
    sPAR[1]=0.1; //K_b
    sPAR[2]=0.01; //K_c
    sPAR[3]=0.01; //K_d
    sPAR[4]=0.3; //K_e
    sPAR[5]=0.3; //K_f
    sPAR[6]=0.01; //K_g
    sPAR[7]=0.01; //K_h
    sPAR[8]=2.0; //V25_double_prime
    sPAR[9]=0.1; //V25_prime
    sPAR[10]=1.0; //V2_double_prime
    sPAR[11]=0.015; //V2_prime
    sPAR[12]=1.0; //Vwee_double_prime
    sPAR[13]=0.1; //Vwee_prime
    sPAR[14]=1.0; //cytoplasm
    sPAR[15]=1.0; //k1AA
    sPAR[16]=0.01; //k3
    sPAR[17]=0.01; //ka
    sPAR[18]=0.125; //kbPPase
    sPAR[19]=0.1; //kc
    sPAR[20]=0.25; //kcak
    sPAR[21]=0.095; //kd_anti_IE
    sPAR[22]=0.0133; //ke
    sPAR[23]=0.1; //kfPPase
    sPAR[24]=0.0065; //kg
    sPAR[25]=0.08699999999999999; //khPPAse
    sPAR[26]=0.025; //kinh
    sPAR[27]=1.0; //total_IE
    sPAR[28]=1.0; //total_UbE
    sPAR[29]=100.0; //total_cdc2
    sPAR[30]=1.0; //total_cdc25
    sPAR[31]=1.0; //total_wee1
    X[0]=0.0; //IE_p
    X[1]=0.0; //UbE_star
    X[2]=0.0; //cdc25_p
    X[3]=100.0; //cyclin
    X[4]=0.0; //dimer
    X[5]=0.0; //dimer_p
    X[6]=0.0; //p_dimer
    X[7]=0.0; //p_dimer_p
    X[8]=0.0; //wee1_p

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
