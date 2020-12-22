
#ifndef BIOMD304_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD304_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[5]=pow(2.718281828459045,(0.15 * (-50.0 - X[0])));
    ACC[7]=pow(X[4],4.0);
    ACC[19]=(sPAR[13] * (sPAR[6] - X[0]));
    ACC[18]=(sPAR[12] * (X[1] * ((sPAR[5] - X[0]) / (sPAR[2] + X[1]))));
    ACC[17]=(sPAR[11] * (ACC[7] * (sPAR[5] - X[0])));
    ACC[16]=(sPAR[14] * (X[5] * (sPAR[4] - X[0])));
    ACC[25]=(1.0 / (1.0 + ACC[5]));
    ACC[8]=((sPAR[7] * X[0]) + sPAR[8]);
    ACC[6]=pow(2.718281828459045,(0.5625 + (-0.0125 * ACC[8])));
    ACC[14]=(0.125 * ACC[6]);
    ACC[3]=pow(2.718281828459045,(5.5 + (-0.1 * ACC[8])));
    ACC[12]=(1.0 / (1.0 + ACC[3]));
    ACC[11]=(0.01 * ((55.0 - ACC[8]) / (-1.0 + ACC[3])));
    ACC[22]=(ACC[11] / (ACC[11] + ACC[14]));
    ACC[24]=(12.5 / (ACC[11] + ACC[14]));
    ACC[2]=pow(2.718281828459045,(1.25 + (-0.05 * ACC[8])));
    ACC[9]=(0.07000000000000001 * ACC[2]);
    ACC[15]=(ACC[9] / (ACC[9] + ACC[12]));
    ACC[23]=(12.5 / (ACC[9] + ACC[12]));
    ACC[1]=pow(2.718281828459045,(1.388888888888889 - (0.05555555555555555 * ACC[8])));
    ACC[13]=(4.0 * ACC[1]);
    ACC[0]=pow(2.718281828459045,(5.0 + (-0.1 * ACC[8])));
    ACC[10]=(0.1 * ((50.0 - ACC[8]) / (-1.0 + ACC[0])));
    ACC[21]=(ACC[10] / (ACC[10] + ACC[13]));
    ACC[4]=pow(ACC[21],3.0);
    ACC[20]=(sPAR[10] * (ACC[4] * (X[3] * (sPAR[4] - X[0]))));
    F[1]=(sPAR[9] * ((sPAR[1] * (X[5] * (sPAR[3] - X[0]))) - X[1]));
    F[5]=((ACC[25] - X[5]) / sPAR[15]);
    F[4]=((ACC[22] - X[4]) / ACC[24]);
    F[3]=((ACC[15] - X[3]) / ACC[23]);
    F[0]=(ACC[20] + (ACC[16] + (ACC[17] + (ACC[18] + ACC[19]))));
    F[2]=0.0;

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
    ACC[3]=0.0; //$cse4
    ACC[4]=0.0; //$cse5
    ACC[5]=0.0; //$cse6
    ACC[6]=0.0; //$cse7
    ACC[7]=0.0; //$cse8
    ACC[8]=0.0; //Vs
    ACC[9]=0.0; //alpha_h
    ACC[10]=0.0; //alpha_m
    ACC[11]=0.0; //alpha_n
    ACC[12]=0.0; //beta_h
    ACC[13]=0.0; //beta_m
    ACC[14]=0.0; //beta_n
    ACC[15]=0.0; //h_infinity
    ACC[16]=0.0; //i_Ca
    ACC[17]=0.0; //i_K
    ACC[18]=0.0; //i_K_Ca
    ACC[19]=0.0; //i_L
    ACC[20]=0.0; //i_Na
    ACC[21]=0.0; //m_infinity
    ACC[22]=0.0; //n_infinity
    ACC[23]=0.0; //tau_h
    ACC[24]=0.0; //tau_n
    ACC[25]=0.0; //x_infinity
    sPAR[0]=1.0; //COMpartment
    sPAR[1]=0.008500000000000001; //K_c
    sPAR[2]=0.5; //K_p
    sPAR[3]=140.0; //V_Ca
    sPAR[4]=30.0; //V_I
    sPAR[5]=-75.0; //V_K
    sPAR[6]=-40.0; //V_L
    sPAR[7]=1.209; //a
    sPAR[8]=78.714; //b
    sPAR[9]=0.0003; //f
    sPAR[10]=4.0; //g_I
    sPAR[11]=0.3; //g_K
    sPAR[12]=0.03; //g_K_Ca
    sPAR[13]=0.003; //g_L
    sPAR[14]=0.01; //g_T
    sPAR[15]=235.0; //tau_x
    X[0]=-55.0; //V_membrane
    X[1]=0.4; //c
    X[2]=0.004; //g_Ca
    X[3]=0.9; //h1
    X[4]=0.03; //n1
    X[5]=0.27; //x1

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
