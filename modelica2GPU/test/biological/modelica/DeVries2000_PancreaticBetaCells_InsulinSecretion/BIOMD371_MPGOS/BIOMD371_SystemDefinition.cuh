
#ifndef BIOMD371_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD371_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[2]=(sPAR[8] * (sPAR[11] * (X[0] - sPAR[2])));
    ACC[6]=(1.0 / (1.0 + pow(2.718281828459045,((sPAR[5] - X[0]) / sPAR[17]))));
    ACC[3]=(sPAR[9] * (X[2] * (X[0] - sPAR[2])));
    ACC[5]=(1.0 / (1.0 + pow(2.718281828459045,((sPAR[4] - X[0]) / sPAR[16]))));
    ACC[1]=(sPAR[7] * (X[1] * (X[0] - sPAR[2])));
    ACC[4]=(1.0 / (1.0 + pow(2.718281828459045,((sPAR[3] - X[0]) / sPAR[15]))));
    ACC[0]=(sPAR[6] * (ACC[4] * (X[0] - sPAR[1])));
    F[2]=((ACC[6] - X[2]) / sPAR[14]);
    F[1]=(sPAR[10] * ((ACC[5] - X[1]) / sPAR[13]));
    F[0]=(((((-(ACC[3])) - ACC[2]) - ACC[0]) - ACC[1]) / sPAR[12]);

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
    ACC[0]=-7.4446678508483; //i_Ca
    ACC[1]=5.0; //i_K
    ACC[2]=6.0; //i_K_ATP
    ACC[3]=1.0; //i_s
    ACC[4]=0.0229773699100256; //m_infinity
    ACC[5]=0.000189405943825186; //n_infinity
    ACC[6]=0.00460957217937421; //s_infinity
    sPAR[0]=1.0; //Compartment
    sPAR[1]=25.0; //V_Ca
    sPAR[2]=-75.0; //V_K
    sPAR[3]=-20.0; //V_m
    sPAR[4]=-17.0; //V_n
    sPAR[5]=-22.0; //V_s
    sPAR[6]=3.6; //g_Ca
    sPAR[7]=10.0; //g_K
    sPAR[8]=1.2; //g_K_ATP
    sPAR[9]=4.0; //g_s
    sPAR[10]=0.8; //lamda
    sPAR[11]=0.5; //p
    sPAR[12]=20.0; //tau_membrane
    sPAR[13]=20.0; //tau_potassium_current_n_gate
    sPAR[14]=20000.0; //tau_s
    sPAR[15]=12.0; //theta_m
    sPAR[16]=5.6; //theta_n
    sPAR[17]=8.0; //theta_s
    X[0]=-65.00000000000007; //V_membrane
    X[1]=0.05000000000000036; //n
    X[2]=0.02500000000000018; //s

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
