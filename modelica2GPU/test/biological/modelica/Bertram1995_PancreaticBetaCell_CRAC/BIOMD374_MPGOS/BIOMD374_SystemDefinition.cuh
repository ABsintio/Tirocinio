
#ifndef BIOMD374_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD374_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[7]=(sPAR[3] / (sPAR[3] + sPAR[8]));
    ACC[13]=(sPAR[13] * (X[4] * (70.0 + X[2])));
    ACC[21]=(1.0 / (1.0 + pow(2.718281828459045,(-2.5 - (0.1666666666666667 * X[2])))));
    ACC[24]=(9.09 / (1.0 + pow(2.718281828459045,(2.5 + (0.1666666666666667 * X[2])))));
    ACC[14]=(sPAR[14] * (70.0 + X[2]));
    ACC[19]=(1.0 / (1.0 + pow(2.718281828459045,(-2.666666666666667 - (0.1333333333333333 * X[2])))));
    ACC[11]=(sPAR[11] * (ACC[19] * (X[2] - sPAR[5])));
    ACC[20]=(1.0 / (1.0 + pow(2.718281828459045,(-1.6 + (-0.1 * X[2])))));
    ACC[17]=(1.0 - X[3]);
    ACC[12]=(sPAR[12] * (ACC[20] * (ACC[17] * (X[2] - sPAR[5]))));
    ACC[10]=(ACC[11] + ACC[12]);
    ACC[4]=((-(sPAR[9])) * ((sPAR[17] * ACC[10]) + (sPAR[18] * X[1])));
    ACC[18]=(1.0 + (-1.0 / (1.0 + pow(2.718281828459045,(26.5 + (0.5 * X[2]))))));
    ACC[23]=(1500.0 + (50000.0 / (pow(2.718281828459045,(13.25 + (0.25 * X[2]))) + pow(2.718281828459045,(-13.25 + (-0.25 * X[2]))))));
    ACC[15]=(sPAR[15] * (pow(X[1],5.0) * ((70.0 + X[2]) / (pow(X[1],5.0) + pow(sPAR[19],5.0)))));
    ACC[22]=(1.0 / (1.0 + pow(2.718281828459045,(X[0] - sPAR[1]))));
    ACC[9]=(sPAR[10] * (ACC[22] * (X[2] - sPAR[4])));
    ACC[16]=(sPAR[16] * (X[2] - sPAR[4]));
    ACC[2]=(sPAR[25] * (pow(X[1],2.0) / (pow(X[1],2.0) + pow(sPAR[20],2.0))));
    ACC[6]=(1.0 / (1.0 + (sPAR[6] / X[1])));
    ACC[8]=(1.0 / (1.0 + (X[1] / sPAR[7])));
    ACC[5]=(pow(ACC[6],3.0) * (pow(ACC[7],3.0) * pow(ACC[8],3.0)));
    ACC[0]=(ACC[5] * (X[0] - X[1]));
    ACC[1]=(sPAR[23] * (X[0] - X[1]));
    ACC[3]=(ACC[1] + (ACC[0] - ACC[2]));
    F[4]=(sPAR[22] * ((ACC[21] - X[4]) / ACC[24]));
    F[3]=((ACC[18] - X[3]) / ACC[23]);
    F[2]=(((((((-(ACC[16])) - ACC[9]) - ACC[15]) - ACC[14]) - ACC[10]) - ACC[13]) / sPAR[2]);
    F[0]=((-(ACC[3])) / (sPAR[24] * sPAR[21]));
    F[1]=((ACC[3] / sPAR[21]) + ACC[4]);

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
    ACC[0]=0.0; //J_er_IP3
    ACC[1]=0.1778; //J_er_leak
    ACC[2]=0.131402714932127; //J_er_p
    ACC[3]=0.0463972850678733; //J_er_tot
    ACC[4]=-2.8573018487523e-05; //J_mem_tot
    ACC[5]=0.0; //O
    ACC[6]=0.5238095238095239; //a_infinity
    ACC[7]=0.0; //b_infinity
    ACC[8]=0.784313725490196; //h_infinity
    ACC[9]=-11.3122509416041; //i_CRAC
    ACC[10]=-1342.58335216182; //i_Ca
    ACC[11]=-548.702035891578; //i_Ca_f
    ACC[12]=-793.881316270245; //i_Ca_s
    ACC[13]=17.55; //i_K
    ACC[14]=1350.0; //i_K_ATP
    ACC[15]=3.45489443378119; //i_K_Ca
    ACC[16]=0.0; //i_leak
    ACC[17]=0.88; //j
    ACC[18]=0.0179862099620915; //jm_infinity
    ACC[19]=0.00420751503635901; //m_f_infinity
    ACC[20]=0.0109869426305932; //m_s_infinity
    ACC[21]=0.000467956725632935; //n_infinity
    ACC[22]=0.00247262315663477; //r_infinity
    ACC[23]=8145.05572085199; //tau_j
    ACC[24]=9.085746273364; //tau_n
    sPAR[0]=1.0; //COMpartment
    sPAR[1]=3.0; //Ca_er_bar
    sPAR[2]=6158.0; //Cm
    sPAR[3]=0.0; //IP3
    sPAR[4]=0.0; //V_CRAC
    sPAR[5]=100.0; //V_Ca
    sPAR[6]=0.1; //dact
    sPAR[7]=0.4; //dinh
    sPAR[8]=0.2; //dip3
    sPAR[9]=0.01; //f
    sPAR[10]=75.0; //g_CRAC
    sPAR[11]=810.0; //g_Ca_f
    sPAR[12]=510.0; //g_Ca_s
    sPAR[13]=3900.0; //g_K
    sPAR[14]=150.0; //g_K_ATP
    sPAR[15]=1200.0; //g_K_Ca
    sPAR[16]=0.0; //g_leak
    sPAR[17]=3.607e-06; //gamma
    sPAR[18]=0.07000000000000001; //k_Ca
    sPAR[19]=0.55; //kdkca
    sPAR[20]=0.1; //kerp
    sPAR[21]=250.0; //lambda_er
    sPAR[22]=1.85; //lambda_n
    sPAR[23]=0.02; //perl
    sPAR[24]=5.0; //sigma_er
    sPAR[25]=0.24; //verp
    X[0]=9.0; //Ca_er_Ca_equations
    X[1]=0.1100000000000001; //Ca_i
    X[2]=-61.00000000000015; //V_membrane
    X[3]=0.12; //jm
    X[4]=0.0005000000000000084; //n

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
