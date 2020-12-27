
#ifndef BIOMD302_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD302_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[23]=(sPAR[0] / sPAR[9]);
    ACC[4]=(sPAR[9] * (X[1] - sPAR[2]));
    ACC[2]=(sPAR[8] * (pow(X[5],4.0) * (X[1] - sPAR[1])));
    ACC[18]=(4.0 * pow(2.718281828459045,(-3.333333333333333 - (0.05555555555555555 * X[1]))));
    ACC[12]=(-0.1 * ((35.0 + X[1]) / (-1.0 + pow(2.718281828459045,(-0.1 * (35.0 + X[1]))))));
    ACC[16]=(1.0 / (1.0 + pow(2.718281828459045,(-0.1 * (28.0 + X[1])))));
    ACC[10]=(0.07000000000000001 * pow(2.718281828459045,(-2.9 - (0.05 * X[1]))));
    ACC[20]=(0.125 * pow(2.718281828459045,(-0.55 - (0.0125 * X[1]))));
    ACC[14]=(-0.01 * ((34.0 + X[1]) / (-1.0 + pow(2.718281828459045,(-0.1 * (34.0 + X[1]))))));
    ACC[22]=(ACC[12] / (ACC[12] + ACC[18]));
    ACC[6]=(sPAR[10] * (pow(ACC[22],3.0) * (X[3] * (X[1] - sPAR[3]))));
    ACC[7]=piecewise(2, T >= 10.0 && T <= 20.0, 0);
    ACC[0]=(1.0 / (1.0 + pow(2.718281828459045,(-0.5 * (X[1] - sPAR[15])))));
    ACC[8]=(sPAR[11] * (X[6] * (X[0] - sPAR[4])));
    ACC[3]=(sPAR[9] * (X[0] - sPAR[2]));
    ACC[19]=(0.125 * pow(2.718281828459045,(-0.55 - (0.0125 * X[0]))));
    ACC[13]=(-0.01 * ((34.0 + X[0]) / (-1.0 + pow(2.718281828459045,(-0.1 * (34.0 + X[0]))))));
    ACC[1]=(sPAR[8] * (pow(X[4],4.0) * (X[0] - sPAR[1])));
    ACC[15]=(1.0 / (1.0 + pow(2.718281828459045,(-0.1 * (28.0 + X[0])))));
    ACC[9]=(0.07000000000000001 * pow(2.718281828459045,(-2.9 - (0.05 * X[0]))));
    ACC[17]=(4.0 * pow(2.718281828459045,(-3.333333333333333 - (0.05555555555555555 * X[0]))));
    ACC[11]=(-0.1 * ((35.0 + X[0]) / (-1.0 + pow(2.718281828459045,(-0.1 * (35.0 + X[0]))))));
    ACC[21]=(ACC[11] / (ACC[11] + ACC[17]));
    ACC[5]=(sPAR[10] * (pow(ACC[21],3.0) * (X[2] * (X[0] - sPAR[3]))));
    F[3]=(sPAR[12] * ((ACC[10] * (1.0 - X[3])) - (ACC[16] * X[3])));
    F[5]=(sPAR[12] * ((ACC[14] * (1.0 - X[5])) - (ACC[20] * X[5])));
    F[1]=((ACC[7] + (((-(ACC[2])) - ACC[4]) - ACC[6])) / sPAR[0]);
    F[6]=((sPAR[6] * (ACC[0] * (1.0 - X[6]))) - (sPAR[7] * X[6]));
    F[4]=(sPAR[12] * ((ACC[13] * (1.0 - X[4])) - (ACC[19] * X[4])));
    F[2]=(sPAR[12] * ((ACC[9] * (1.0 - X[2])) - (ACC[15] * X[2])));
    F[0]=((sPAR[5] + ((((-(ACC[5])) - ACC[1]) - ACC[3]) - ACC[8])) / sPAR[0]);

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
    ACC[0]=0.0; //F
    ACC[1]=0.0; //I_K_post
    ACC[2]=0.0; //I_K_pre
    ACC[3]=0.0; //I_L_post
    ACC[4]=0.0; //I_L_pre
    ACC[5]=0.0; //I_Na_post
    ACC[6]=0.0; //I_Na_pre
    ACC[7]=0.0; //I_app_pre
    ACC[8]=0.0; //I_syn
    ACC[9]=0.0; //alpha_h_post
    ACC[10]=0.0; //alpha_h_pre
    ACC[11]=0.0; //alpha_m_post
    ACC[12]=0.0; //alpha_m_pre
    ACC[13]=0.0; //alpha_n_post
    ACC[14]=0.0; //alpha_n_pre
    ACC[15]=0.0; //beta_h_post
    ACC[16]=0.0; //beta_h_pre
    ACC[17]=0.0; //beta_m_post
    ACC[18]=0.0; //beta_m_pre
    ACC[19]=0.0; //beta_n_post
    ACC[20]=0.0; //beta_n_pre
    ACC[21]=0.0; //m_inf_post
    ACC[22]=0.0; //m_inf_pre
    ACC[23]=0.0; //tau_0
    sPAR[0]=1.0; //Cm
    sPAR[1]=-90.0; //E_K
    sPAR[2]=-65.0; //E_L
    sPAR[3]=55.0; //E_Na
    sPAR[4]=-75.0; //E_syn
    sPAR[5]=0.0; //I_app_post
    sPAR[6]=12.0; //alpha
    sPAR[7]=0.1; //beta
    sPAR[8]=9.0; //gK
    sPAR[9]=0.1; //gL
    sPAR[10]=35.0; //gNa
    sPAR[11]=0.1; //g_syn
    sPAR[12]=5.0; //phi
    sPAR[13]=1.0; //post_synaptic_cell
    sPAR[14]=1.0; //pre_synaptic_cell
    sPAR[15]=0.0; //theta_syn
    X[0]=-64.0; //V_post
    X[1]=-64.0; //V_pre
    X[2]=0.0; //h_post
    X[3]=0.0; //h_pre
    X[4]=0.0; //n_post
    X[5]=0.0; //n_pre
    X[6]=0.0; //s

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
