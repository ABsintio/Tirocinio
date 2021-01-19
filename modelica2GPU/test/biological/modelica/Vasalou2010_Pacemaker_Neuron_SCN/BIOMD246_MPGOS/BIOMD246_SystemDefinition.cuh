
#ifndef BIOMD246_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD246_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[22]=(3.0 * (pow(X[5],-1.0) / (0.16 + pow(X[5],-1.0))));
    ACC[23]=(12.3 * (pow(X[17],2.2) / (22.0 + pow(X[17],2.2))));
    ACC[24]=(9.699999999999999 + (10.0 * (X[17] / (10.0 + X[17]))));
    ACC[12]=(1.9 * (pow(X[0],-2.0) / (1.0 + pow(X[0],-2.0))));
    ACC[1]=(13.5690625 * log((X[7] / X[8])));
    ACC[3]=-30.47382686769439;
    ACC[2]=-101.9296967643571;
    ACC[30]=pow(2.718281828459045,(0.03684852951336911 * ACC[2]));
    ACC[4]=47.28697272573267;
    ACC[31]=pow(2.718281828459045,(0.03684852951336911 * ACC[4]));
    ACC[33]=(1.0 + (1.6 * (X[4] / (0.15 + X[4]))));
    ACC[18]=(X[25] / (0.08 + X[25]));
    ACC[32]=((5.0 * (X[8] / (2.9 + X[8]))) + (2.0 * (ACC[18] / (2.0 + ACC[18]))));
    ACC[11]=(X[18] / ACC[31]);
    ACC[10]=(X[14] / ACC[30]);
    ACC[17]=((0.0002 * X[8]) + ((ACC[12] * ACC[10]) + ((0.036 * ACC[11]) + (0.3 * X[10]))));
    ACC[6]=(X[12] + (19.0 * (X[25] / (3.0 + X[25]))));
    ACC[0]=(X[11] + ((15.5 * (X[17] / (4.0 + X[17]))) + (19.0 * (pow(ACC[6],-0.2) / (1.0 + pow(ACC[6],-0.2))))));
    ACC[5]=(-27.138125 * log((X[10] / ACC[0])));
    ACC[19]=((ACC[12] * (ACC[10] - X[14])) + ((0.036 * ACC[11]) + ((-0.036 * X[18]) + ((0.3 * X[10]) + (-0.3 * ACC[0])))));
    ACC[20]=((-0.036 * X[18]) + ((-0.3 * ACC[0]) + ((-0.0002 * X[7]) - (ACC[12] * X[14]))));
    ACC[27]=(0.5 * ((sqrt((pow(ACC[19],2.0) + (-4.0 * (ACC[17] * ACC[20])))) - ACC[19]) / ACC[17]));
    ACC[16]=(26.72526403067834 * log(ACC[27]));
    ACC[29]=(20.0 + ACC[16]);
    ACC[15]=(4.0 + ACC[16]);
    ACC[13]=(0.41 * (ACC[16] / (34.0 + ACC[16])));
    ACC[25]=(1.0 / ACC[13]);
    ACC[9]=((36.0 * ACC[4]) + ((ACC[23] * ACC[1]) + ((ACC[24] * ACC[2]) + ((ACC[25] * ACC[3]) + ((ACC[22] * ACC[2]) + (-12.3 * ACC[5]))))));
    ACC[7]=(36.0 * (ACC[16] - ACC[4]));
    ACC[8]=sqrt(pow(ACC[7],2.0));
    ACC[26]=((105.0 * (pow(ACC[8],2.5) / (574050000.0 + pow(ACC[8],2.5)))) + (4.4 * (pow(X[8],-1.0) / (1.0 + pow(X[8],-1.0)))));
    ACC[14]=(1.0 / (23.7 + (ACC[24] + (ACC[25] + (ACC[23] + (ACC[22] - ACC[26]))))));
    ACC[28]=(5.0 * ACC[14]);
    ACC[21]=(-1.0 / (log(((ACC[29] - (ACC[14] * ACC[9])) / (ACC[15] - (ACC[14] * ACC[9])))) * ACC[28]));
    F[18]=0.0;
    F[14]=0.0;
    F[12]=0.0;
    F[11]=0.0;
    F[10]=0.0;
    F[13]=((0.5 * (X[2] * X[21])) + ((-0.1 * X[13]) - (X[13] * (0.01 + (0.8 / (0.3 + X[13]))))));
    F[3]=((0.5 * (X[2] / (0.1 + X[2]))) + (X[3] * (-0.01 + ((-0.2 / (0.1 + X[3])) + (-0.6 / (0.3 + X[3]))))));
    F[2]=((0.4 * X[0]) + ((-0.21 * X[2]) + ((-0.5 * (X[2] * X[21])) + ((0.1 * X[13]) + ((-0.5 * (X[2] / (0.1 + X[2]))) + (0.2 * (X[3] / (0.1 + X[3]))))))));
    F[1]=((0.5 * (X[0] / (0.1 + X[0]))) + (X[1] * (-0.01 + ((-0.1 / (0.1 + X[1])) + (-0.5 / (0.3 + X[1]))))));
    F[0]=((0.12 * X[15]) + ((-0.5 * (X[0] / (0.1 + X[0]))) + ((0.1 * (X[1] / (0.1 + X[1]))) + ((-0.41 * X[0]) + (0.2 * X[2])))));
    F[22]=((0.4 * (X[21] / (0.1 + X[21]))) + (X[22] * (-0.01 + ((-0.1 / (0.1 + X[22])) + (-0.7 / (0.3 + X[22]))))));
    F[20]=((0.4 * (X[19] / (0.1 + X[19]))) + (X[20] * (-0.01 + ((-0.1 / (0.1 + X[20])) + (-0.7 / (0.3 + X[20]))))));
    F[21]=((0.45 * X[19]) + ((-0.21 * X[21]) + ((-0.4 * (X[21] / (0.1 + X[21]))) + ((0.1 * (X[22] / (0.1 + X[22]))) + ((-0.5 * (X[2] * X[21])) + (0.1 * X[13]))))));
    F[19]=((0.4 * (X[23] * X[5])) + ((-0.66 * X[19]) + ((0.2 * X[21]) + ((-0.4 * (X[19] / (0.1 + X[19]))) + (0.1 * (X[20] / (0.1 + X[20])))))));
    F[6]=((0.6 * (X[5] / (0.1 + X[5]))) + (X[6] * (-0.01 + ((-0.1 / (0.1 + X[6])) + (-0.7 / (0.3 + X[6]))))));
    F[24]=((0.4 * (X[23] / (0.1 + X[23]))) + (X[24] * (-0.01 + ((-0.3 / (0.1 + X[24])) + (-0.7 / (0.3 + X[24]))))));
    F[5]=((1.6 * X[16]) + ((-0.4 * (X[23] * X[5])) + ((0.2 * X[19]) + ((-0.12 * X[5]) + ((-0.6 * (X[5] / (0.1 + X[5]))) + (0.1 * (X[6] / (0.1 + X[6]))))))));
    F[23]=((0.6 * X[17]) + ((-0.01 * X[23]) + ((-0.4 * (X[23] / (0.1 + X[23]))) + ((0.3 * (X[24] / (0.1 + X[24]))) + ((-0.4 * (X[23] * X[5])) + (0.2 * X[19]))))));
    F[15]=((4.840000000000001 / (4.840000000000001 + pow(X[2],2.0))) - (X[15] * (0.01 + (0.8 / (0.4 + X[15])))));
    F[16]=((1.1 * (pow(X[2],4.0) / (0.1296 + pow(X[2],4.0)))) + ((-0.01 * X[16]) - (X[16] / (0.4 + X[16]))));
    F[7]=0.0;
    F[9]=((149.5 * (pow(X[8],2.2) / (34.49324153653038 + pow(X[8],2.2)))) + ((-400.0 * (pow(X[9],6.0) * (pow(X[8],4.2) / ((0.1860005255550903 + pow(X[8],4.2)) * (729.0 + pow(X[9],6.0)))))) + (-0.001 * X[9])));
    F[8]=(0.00015 + ((0.09 * (pow(X[0],4.5) / (4.5 + pow(X[0],4.5)))) + ((400.0 * (pow(X[9],6.0) * (pow(X[8],4.2) / ((0.1860005255550903 + pow(X[8],4.2)) * (729.0 + pow(X[9],6.0)))))) + ((0.001 * X[9]) + ((-3.3 * (pow(X[5],0.1) * (pow(X[8],2.0) / (0.02 + pow(X[5],0.1))))) + (-149.5 * (pow(X[8],2.2) / (34.49324153653038 + pow(X[8],2.2)))))))));
    F[17]=((ACC[33] * (pow(X[2],4.0) / (0.1296 + pow(X[2],4.0)))) - (X[17] * (0.01 + (1.1 / (0.31 + X[17])))));
    F[4]=((ACC[32] * ((1.0 - X[4]) / (1.01 - X[4]))) - (X[4] / (0.01 + X[4])));
    F[25]=(0.5 * ((pow(ACC[21],1.9) / (15.0 + pow(ACC[21],1.9))) - pow(X[25],0.2)));

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
    ACC[0]=0.0; //Cl_in
    ACC[1]=0.0; //E_Ca
    ACC[2]=0.0; //E_K
    ACC[3]=0.0; //E_L
    ACC[4]=0.0; //E_Na
    ACC[5]=0.0; //E_inhib
    ACC[6]=0.0; //GABA
    ACC[7]=0.0; //I_Na
    ACC[8]=0.0; //I_Na_abs
    ACC[9]=0.0; //I_star
    ACC[10]=0.0; //K_in
    ACC[11]=0.0; //Na_in
    ACC[12]=0.0; //P_K
    ACC[13]=0.0; //R
    ACC[14]=0.0; //R_star
    ACC[15]=0.0; //V_reset
    ACC[16]=0.0; //V_rest
    ACC[17]=0.0; //alpha
    ACC[18]=0.0; //beta
    ACC[19]=0.0; //beta_a
    ACC[20]=0.0; //c
    ACC[21]=0.0; //f_r
    ACC[22]=0.0; //gK_Ca
    ACC[23]=0.0; //g_Ca
    ACC[24]=0.0; //g_K
    ACC[25]=0.0; //g_L
    ACC[26]=0.0; //g_ex
    ACC[27]=0.0; //psi
    ACC[28]=0.0; //tau_m
    ACC[29]=0.0; //theta
    ACC[30]=0.0; //theta_K
    ACC[31]=0.0; //theta_Na
    ACC[32]=0.0; //v_K
    ACC[33]=0.0; //v_sPc
    X[0]=2.41; //B_C
    X[1]=0.48; //B_CP
    X[2]=1.94; //B_N
    X[3]=0.32; //B_NP
    X[4]=0.12; //CB
    X[5]=12.0; //C_C
    X[6]=9.0; //C_CP
    X[7]=5.0; //Ca_ex
    X[8]=0.1; //Ca_in
    X[9]=0.1; //Ca_store
    X[10]=114.5; //Cl_ex
    X[11]=1.0; //Cl_o
    X[12]=0.2; //GABA_o
    X[13]=0.05; //I_N
    X[14]=1.0; //K_ex
    X[15]=7.94; //M_B
    X[16]=2.0; //M_C
    X[17]=2.8; //M_P
    X[18]=145.0; //Na_ex
    X[19]=1.26; //PC_C
    X[20]=0.2; //PC_CP
    X[21]=0.16; //PC_N
    X[22]=0.091; //PC_NP
    X[23]=0.4; //P_C
    X[24]=0.13; //P_CP
    X[25]=0.0; //VIP

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
