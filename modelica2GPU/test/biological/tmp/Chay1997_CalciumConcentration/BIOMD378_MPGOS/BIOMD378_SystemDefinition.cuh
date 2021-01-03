
#ifndef BIOMD378_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD378_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[1]=(sPAR[5] / (sPAR[5] + sPAR[0]));
    ACC[10]=(1.0 / (1.0 + pow(2.718281828459045,((sPAR[20] - X[2]) / sPAR[11]))));
    ACC[9]=(sPAR[27] * (pow(ACC[10],3.0) * (X[4] * (X[2] - sPAR[17]))));
    ACC[13]=(1.0 / ((pow(2.718281828459045,(0.5 * ((sPAR[19] - X[2]) / sPAR[10]))) + pow(2.718281828459045,(0.5 * ((X[2] - sPAR[19]) / sPAR[10])))) * sPAR[32]));
    ACC[2]=(1.0 / (1.0 + pow(2.718281828459045,((sPAR[19] - X[2]) / sPAR[10]))));
    ACC[12]=(1.0 / ((pow(2.718281828459045,(0.5 * ((sPAR[18] - X[2]) / sPAR[9]))) + pow(2.718281828459045,(0.5 * ((X[2] - sPAR[18]) / sPAR[9])))) * sPAR[31]));
    ACC[3]=(2.0 * (sPAR[7] * (X[3] * (ACC[1] * (sPAR[4] * (X[2] * ((sPAR[1] - (X[0] * pow(2.718281828459045,(2.0 * (sPAR[4] * (X[2] / (sPAR[13] * sPAR[8]))))))) / (((1.0 - pow(2.718281828459045,(2.0 * (sPAR[4] * (X[2] / (sPAR[13] * sPAR[8])))))) * sPAR[13]) * sPAR[8]))))))));
    ACC[0]=(1.0 / (1.0 + pow(2.718281828459045,((sPAR[18] - X[2]) / sPAR[9]))));
    ACC[7]=(sPAR[25] * (pow(sPAR[6],2.0) * ((-10.0 + ((X[2] - sPAR[14]) / (1.0 - pow(2.718281828459045,(0.1 * (sPAR[14] - X[2])))))) / (pow(sPAR[6],2.0) + pow(X[1],2.0)))));
    ACC[6]=(sPAR[24] * (pow(X[5],4.0) * (X[2] - sPAR[15])));
    ACC[11]=(1.0 / (1.0 + pow(2.718281828459045,((sPAR[21] - X[2]) / sPAR[12]))));
    ACC[14]=(1.0 / ((pow(2.718281828459045,(0.5 * ((sPAR[21] - X[2]) / sPAR[12]))) + pow(2.718281828459045,(0.5 * ((X[2] - sPAR[21]) / sPAR[12])))) * sPAR[33]));
    ACC[4]=(sPAR[22] * (X[2] - sPAR[15]));
    ACC[5]=(sPAR[23] * (pow(X[0],3.0) * ((X[2] - sPAR[15]) / (pow(sPAR[5],3.0) + pow(X[0],3.0)))));
    ACC[8]=(sPAR[26] * (X[2] - sPAR[16]));
    F[4]=((ACC[2] - X[4]) / ACC[13]);
    F[0]=((sPAR[30] * (X[1] - X[0])) + (((-(sPAR[34])) * ACC[3]) - (X[0] * (sPAR[28] + sPAR[29]))));
    F[3]=((ACC[0] - X[3]) / ACC[12]);
    F[5]=((ACC[11] - X[5]) / ACC[14]);
    F[2]=((((((((-(ACC[8])) - ACC[7]) - ACC[3]) - ACC[9]) - ACC[4]) - ACC[6]) - ACC[5]) / sPAR[2]);
    F[1]=((sPAR[29] * X[0]) + (sPAR[30] * (X[0] - X[1])));

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
    ACC[0]=0.00344187186519272; //d_infinity
    ACC[1]=0.5; //f_infinity
    ACC[2]=0.201042499324815; //h_infinity
    ACC[3]=-24.1248530333721; //i_Ca
    ACC[4]=73.31708; //i_K_ATP
    ACC[5]=46.2079655277309; //i_K_Ca
    ACC[6]=25.014877991785; //i_K_dr
    ACC[7]=-6.24107017458029; //i_NS
    ACC[8]=-35.502438; //i_NaL
    ACC[9]=-96.6401171990526; //i_fast
    ACC[10]=0.185067533162422; //m_infinity
    ACC[11]=0.189546217642834; //n_infinity
    ACC[12]=0.0234265674250627; //tau_d
    ACC[13]=0.0320623804770684; //tau_h
    ACC[14]=0.0313553515963197; //tau_n
    sPAR[0]=1.0; //Ca_i_calcium_current_f_gate
    sPAR[1]=2500.0; //Ca_o
    sPAR[2]=1.0; //Cm
    sPAR[3]=1.0; //Compartment
    sPAR[4]=96485.0; //F
    sPAR[5]=1.0; //K_Ca
    sPAR[6]=50.0; //K_NS
    sPAR[7]=2.0; //P_Ca
    sPAR[8]=8314.0; //R
    sPAR[9]=5.0; //Sd
    sPAR[10]=-7.0; //Sh
    sPAR[11]=9.0; //Sm
    sPAR[12]=14.0; //Sn
    sPAR[13]=310.0; //T
    sPAR[14]=-20.0; //VNS
    sPAR[15]=-75.0; //V_K
    sPAR[16]=80.0; //V_Na
    sPAR[17]=80.0; //V_fast
    sPAR[18]=-10.0; //Vd
    sPAR[19]=-48.0; //Vh
    sPAR[20]=-25.0; //Vm
    sPAR[21]=-18.0; //Vn
    sPAR[22]=2.0; //g_K_ATP
    sPAR[23]=5.0; //g_K_Ca
    sPAR[24]=600.0; //g_K_dr
    sPAR[25]=5.0; //g_NS
    sPAR[26]=0.3; //g_NaL
    sPAR[27]=600.0; //g_fast
    sPAR[28]=7.0; //k_Ca
    sPAR[29]=30.0; //k_pump
    sPAR[30]=0.2; //k_rel
    sPAR[31]=2.5; //lamda_d
    sPAR[32]=12.5; //lamda_h
    sPAR[33]=12.5; //lamda_n
    sPAR[34]=0.2; //omega
    X[0]=0.6959466; //Ca_i_cytosolic_calcium
    X[1]=102.686; //Ca_lum
    X[2]=-38.34146; //V_membrane
    X[3]=0.0031711238; //d
    X[4]=0.214723; //h
    X[5]=0.1836403; //n

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
