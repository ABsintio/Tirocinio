
#ifndef BIOMD445_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD445_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[1]=(0.5 * (1.0 + (tanh((480.0 * ((0.04166666666666666 * T) - floor((0.04166666666666666 * floor(T)))))) + (tanh((-480.0 + (480.0 * ((0.04166666666666666 * T) - floor((0.04166666666666666 * floor(T))))))) - tanh((-240.0 + (480.0 * ((0.04166666666666666 * T) - floor((0.04166666666666666 * floor(T)))))))))));
    ACC[0]=(1.0 - ACC[1]);
    F[25]=(function_4_cT_m_trscr(X[8],X[12],1.0,2.0,0.006,0.2,0.35,2.0,0.5,X[30]) - function_4_cT_m_degr(X[25],1.0,0.3));
    F[21]=(function_4_cP7_m_trscr_1(X[12],X[16],X[22],X[24],1.0,2.0,2.0,0.5,0.7,0.5,0.6,0.1,2.0) - function_4_cP7_m_degr(X[21],1.0,0.4));
    F[18]=(function_4_cNI_m_trscr_1(2.0,X[16],X[20],X[24],1.0,2.0,0.1,1.0,0.3,0.6,0.6,2.0) - function_4_cNI_m_degr(X[18],1.0,0.5));
    F[16]=(function_4_cL_modif(2.0,X[12],1.0,0.6,0.1) - function_4_cLm_degr(X[16],1.0,0.2));
    F[14]=(function_4_cLUX_m_trscr(X[8],X[12],X[24],1.0,2.0,0.01,0.3,2.0,0.4,2.0) - function_4_cLUX_m_degr(X[14],1.0,0.6));
    F[13]=(function_4_cLUX_trsl(X[14],1.0,0.8) - function_4_cLUX_degr_1(X[1],X[2],X[5],X[6],X[13],1.0,0.1,0.3,0.2,1.0,2.0,0.3));
    F[9]=(function_4_cG_cE3_assoc(X[3],X[10],1.0,17.0) - function_4_cEG_degr_1(X[0],X[1],X[2],X[5],X[9],X[10],1.0,0.1,0.9,0.2,17.0,4.0,2.0,0.1,0.1));
    F[7]=(function_4_cE4_m_trscr_1(X[8],X[12],X[24],1.0,2.0,0.3,0.03,0.4,2.0,2.0) - function_4_cE4_m_degr(X[7],1.0,0.6));
    F[6]=(function_4_cE4_trsl(X[7],1.0,0.37) - function_4_cE4_degr(X[1],X[2],X[5],X[6],X[13],1.0,0.1,0.3,0.2,1.0,2.0,0.3));
    F[5]=(function_4_cE3n_import(X[3],X[5],1.0,1.0,0.1) - function_4_cE3n_degr(X[1],X[2],X[5],X[6],X[10],X[13],1.0,0.1,0.9,0.2,17.0,1.0,2.0,0.3,2.0,0.1));
    F[4]=(function_4_cE3_m_trscr(X[12],1.0,2.0,0.3,0.29) - function_4_cE3_m_degr(X[4],1.0,0.5));
    F[3]=(function_4_cE3_trsl(X[4],1.0,0.62) + (((-(function_4_cE3_degr(X[0],X[3],1.0,0.2))) - function_4_cE3n_import(X[3],X[5],1.0,1.0,0.1)) - function_4_cG_cE3_assoc(X[3],X[10],1.0,17.0)));
    F[30]=(0.1 - function_4_cSnRK2_degr(1.0,1.0,X[29],X[30]));
    F[29]=(function_4_cPP2C_act_1(1.0,0.2,1.0,0.2,1.0,2.0,X[28]) - function_4_cPP2C_degr_1(1.0,0.2,X[29]));
    F[28]=(function_4_cABAR_m_trscr_1(X[12],X[24],1.0,2.0,0.3,0.1,0.5,2.0) - function_4_cABAR_m_degr(1.0,0.4,X[28]));
    F[31]=(function_4_cs_act_1(ACC[1],1.0,2.0,0.3,0.5,0.2,X[30],X[31]) - function_4_cs_degr_1(1.0,0.3,X[31]));
    F[0]=(0.4 - (function_4_cCOP1c_degr(ACC[1],X[0],0.1,2.0) + function_4_cCOP1n_import(X[0],1.0,0.2)));
    F[1]=(function_4_cCOP1d_activ(ACC[1],X[2],X[19],0.1,20.0) - function_4_cCOP1d_degr(ACC[1],X[1],0.1,13.0));
    F[2]=(function_4_cCOP1n_import(X[0],1.0,0.2) + ((-(function_4_cCOP1n_degr(ACC[1],X[2],0.1,2.0))) - function_4_cCOP1d_activ(ACC[1],X[2],X[19],0.1,20.0)));
    F[8]=(function_4_cEC_form(X[1],X[2],X[5],X[6],X[13],1.0,0.1,0.2,1.0,2.0,0.3) - function_4_cEC_degr(ACC[1],X[1],X[2],X[5],X[8],X[9],X[10],2.0,1.0,0.1,0.9,0.2,0.2,17.0,4.0,11.0,2.0,0.1,0.1));
    F[10]=(function_4_cG_trsl(X[11],1.0,0.5) + (((-(function_4_cG_degr_1(X[5],X[10],1.0,0.9,17.0,2.0,0.1))) - function_4_cG_cZTL_assoc(ACC[1],X[10],X[26],X[27],10.0,0.1)) - function_4_cG_cE3_assoc(X[3],X[10],1.0,17.0)));
    F[11]=(function_4_cG_m_trscr_1(ACC[1],X[8],X[12],X[19],X[24],2.0,0.02,0.4,9.0,0.6,2.0,1.56) - function_4_cG_m_degr(X[11],1.0,3.4));
    F[12]=(function_4_cL_trsl(ACC[1],X[15],0.13,0.27) - function_4_cL_degr(2.0,X[12],1.0,0.6,0.2,0.1));
    F[15]=(function_4_cL_m_trscr(ACC[1],2.0,X[17],X[19],X[20],X[22],X[24],0.1,2.6,1.0) - function_4_cL_m_degr(ACC[1],X[15],0.54,0.24));
    F[17]=(function_4_cNI_trsl(X[18],1.0,0.54) - function_4_cNI_degr(ACC[1],X[17],0.5,0.5));
    F[19]=(function_4_cP_trsl(ACC[1],X[19],0.3) - function_4_cP_degr(ACC[1],X[19],1.0));
    F[20]=(function_4_cP7_trsl(X[21],1.0,0.8) - function_4_cP7_degr(ACC[1],X[20],0.7,0.5));
    F[22]=(function_4_cP9_trsl(X[23],1.0,0.6) - function_4_cP9_degr(ACC[1],X[22],0.32,0.1));
    F[23]=(function_4_cP9_m_trscr_1(ACC[1],X[8],X[12],X[19],X[24],2.0,0.04,0.3,0.04,0.1,0.4,2.0,3.0) - function_4_cP9_m_degr(X[23],1.0,1.0));
    F[24]=(function_4_cT_trsl(X[25],1.0,0.5) - function_4_cT_degr(ACC[1],X[24],X[26],X[27],0.2,0.1,0.5,1.0));
    F[26]=(function_4_cG_cZTL_assoc(ACC[1],X[10],X[26],X[27],10.0,0.1) - function_4_cZG_degr(X[26],1.0,0.08));
    F[27]=(0.14 - (function_4_cG_cZTL_assoc(ACC[1],X[10],X[26],X[27],10.0,0.1) + function_4_cZTL_degr(X[27],1.0,0.6)));

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
    ACC[0]=0.5; //D
    ACC[1]=0.5; //L
    X[0]=0.326899984257926; //cCOP1c
    X[1]=0.256599987643267; //cCOP1d
    X[2]=0.649999968698844; //cCOP1n
    X[3]=0.15029999276221; //cE3
    X[4]=0.299099985596653; //cE3_m
    X[5]=0.0285999986227492; //cE3n
    X[6]=0.206999990031786; //cE4
    X[7]=0.101199995126651; //cE4_m
    X[8]=0.07089999658576621; //cEC
    X[9]=0.00409999980256194; //cEG
    X[10]=0.0195999990561498; //cG
    X[11]=0.101699995102573; //cG_m
    X[12]=0.5059999756332541; //cL
    X[13]=0.575999972262361; //cLUX
    X[14]=0.101199995126651; //cLUX_m
    X[15]=1.01509995111723; //cL_m
    X[16]=0.0787999962053368; //cLm
    X[17]=0.069699996643553; //cNI
    X[18]=0.07309999647982381; //cNI_m
    X[19]=0.955999953963223; //cP
    X[20]=0.116699994380239; //cP7
    X[21]=0.401599980660701; //cP7_m
    X[22]=0.0237999988538961; //cP9
    X[23]=0.0657999968313599; //cP9_m
    X[24]=0.0434999979052303; //cT
    X[25]=0.0976999952951955; //cT_m
    X[26]=0.07549999636425039; //cZG
    X[27]=0.250499987937016; //cZTL
    X[28]=0.999999951844376; //species_1
    X[29]=0.999999951844376; //species_2
    X[30]=0.999999951844376; //species_3
    X[31]=0.999999951844376; //species_4

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
