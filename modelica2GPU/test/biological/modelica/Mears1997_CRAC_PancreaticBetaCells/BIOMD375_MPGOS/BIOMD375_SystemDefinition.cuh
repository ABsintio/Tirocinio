
#ifndef BIOMD375_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD375_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[8]=(sPAR[3] / (sPAR[3] + sPAR[17]));
    ACC[25]=(9.09 / (1.0 + pow(2.718281828459045,(2.5 + (0.1666666666666667 * X[2])))));
    ACC[15]=(sPAR[22] * (X[4] * (X[2] - sPAR[10])));
    ACC[22]=(1.0 / (1.0 + pow(2.718281828459045,(-2.5 - (0.1666666666666667 * X[2])))));
    ACC[9]=piecewise(2000.0,(gt(T,60000.0) && lt(T,660000.0)),150.0);
    ACC[16]=(ACC[9] * (X[2] - sPAR[10]));
    ACC[20]=(1.0 / (1.0 + pow(2.718281828459045,(-2.666666666666667 - (0.1333333333333333 * X[2])))));
    ACC[13]=(sPAR[20] * (ACC[20] * (X[2] - sPAR[9])));
    ACC[21]=(1.0 / (1.0 + pow(2.718281828459045,(-1.6 + (-0.1 * X[2])))));
    ACC[14]=(sPAR[21] * (ACC[21] * ((1.0 - X[3]) * (X[2] - sPAR[9]))));
    ACC[12]=(ACC[13] + ACC[14]);
    ACC[19]=(1.0 + (-1.0 / (1.0 + pow(2.718281828459045,(26.5 + (0.5 * X[2]))))));
    ACC[24]=(1500.0 + (50000.0 / (pow(2.718281828459045,(13.25 + (0.25 * X[2]))) + pow(2.718281828459045,(-13.25 + (-0.25 * X[2]))))));
    ACC[17]=(sPAR[23] * (pow(X[1],5.0) * ((X[2] - sPAR[10]) / (pow(X[1],5.0) + pow(sPAR[26],5.0)))));
    ACC[23]=(1.0 / (1.0 + pow(2.718281828459045,((X[0] - sPAR[1]) / sPAR[33]))));
    ACC[11]=(sPAR[19] * (ACC[23] * (X[2] - sPAR[8])));
    ACC[18]=(sPAR[24] * (X[2] - sPAR[8]));
    ACC[2]=(sPAR[34] * (pow(X[1],2.0) / (pow(X[1],2.0) + pow(sPAR[27],2.0))));
    ACC[7]=(1.0 / (1.0 + (sPAR[15] / X[1])));
    ACC[10]=(1.0 / (1.0 + (X[1] / sPAR[16])));
    ACC[6]=(pow(ACC[7],3.0) * (pow(ACC[8],3.0) * pow(ACC[10],3.0)));
    ACC[0]=(ACC[6] * (X[0] - X[1]));
    ACC[1]=(sPAR[31] * (X[0] - X[1]));
    ACC[3]=(ACC[1] + (ACC[0] - ACC[2]));
    ACC[5]=(sPAR[35] * (pow(X[1],2.0) / (pow(X[1],2.0) + pow(sPAR[28],2.0))));
    ACC[4]=((-(sPAR[18])) * ((sPAR[25] * ACC[12]) + ACC[5]));
    F[4]=(sPAR[30] * ((ACC[22] - X[4]) / ACC[25]));
    F[3]=((ACC[19] - X[3]) / ACC[24]);
    F[2]=(((((((-(ACC[18])) - ACC[11]) - ACC[17]) - ACC[16]) - ACC[12]) - ACC[15]) / sPAR[2]);
    F[0]=((-(ACC[3])) / (sPAR[32] * sPAR[29]));
    F[1]=((ACC[3] / sPAR[29]) + ACC[4]);

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
    ACC[1]=0.17967; //J_er_leak
    ACC[2]=0.143762376237624; //J_er_p
    ACC[3]=0.0359076237623762; //J_er_tot
    ACC[4]=-2.34898089778648e-05; //J_mem_tot
    ACC[5]=0.00719167904903418; //Jmp
    ACC[6]=0.0; //O
    ACC[7]=0.239130434782609; //a_infinity
    ACC[8]=0.0; //b_infinity
    ACC[9]=150.0; //g_K_ATP
    ACC[10]=0.784313725490196; //h_infinity
    ACC[11]=-5.81489940359721; //i_CRAC
    ACC[12]=-1342.58335216182; //i_Ca
    ACC[13]=-548.702035891578; //i_Ca_f
    ACC[14]=-793.881316270245; //i_Ca_s
    ACC[15]=17.55; //i_K
    ACC[16]=1350.0; //i_K_ATP
    ACC[17]=3.45489443378119; //i_K_Ca
    ACC[18]=0.0; //i_leak
    ACC[19]=0.0179862099620915; //jm_infinity
    ACC[20]=0.00420751503635901; //m_f_infinity
    ACC[21]=0.0109869426305932; //m_s_infinity
    ACC[22]=0.000467956725632935; //n_infinity
    ACC[23]=0.00127101626308136; //r_infinity
    ACC[24]=8145.05572085199; //tau_j
    ACC[25]=9.085746273364; //tau_n
    sPAR[0]=1.0; //COMpartment
    sPAR[1]=40.0; //Ca_er_bar
    sPAR[2]=6158.0; //Cm
    sPAR[3]=0.0; //IP3
    sPAR[4]=2.0; //Sj
    sPAR[5]=7.5; //Sm_f
    sPAR[6]=10.0; //Sm_s
    sPAR[7]=6.0; //Sn
    sPAR[8]=0.0; //V_CRAC
    sPAR[9]=100.0; //V_Ca
    sPAR[10]=-70.0; //V_K
    sPAR[11]=-53.0; //Vj
    sPAR[12]=-20.0; //Vm_f
    sPAR[13]=-16.0; //Vm_s
    sPAR[14]=-15.0; //Vn
    sPAR[15]=0.35; //dact
    sPAR[16]=0.4; //dinh
    sPAR[17]=0.2; //dip3
    sPAR[18]=0.01; //f
    sPAR[19]=75.0; //g_CRAC
    sPAR[20]=810.0; //g_Ca_f
    sPAR[21]=510.0; //g_Ca_s
    sPAR[22]=3900.0; //g_K
    sPAR[23]=1200.0; //g_K_Ca
    sPAR[24]=0.0; //g_leak
    sPAR[25]=3.607e-06; //gamma
    sPAR[26]=0.55; //kdkca
    sPAR[27]=0.09; //kerp
    sPAR[28]=0.35; //kmp
    sPAR[29]=250.0; //lambda_er
    sPAR[30]=1.85; //lambda_n
    sPAR[31]=0.003; //perl
    sPAR[32]=1.0; //sigma_er
    sPAR[33]=3.0; //sloper
    sPAR[34]=0.24; //verp
    sPAR[35]=0.08; //vmp
    X[0]=60.0; //Ca_er_Ca_equations
    X[1]=0.1100000000000001; //Ca_i
    X[2]=-60.99999999999989; //V_membrane
    X[3]=0.1200000000000014; //jm
    X[4]=0.0004999999999999937; //n

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
