
#ifndef BIOMD412_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD412_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[59]=-0.23;
    F[68]=-0.14;
    F[74]=((0.1 * (X[2] * X[8])) + ((0.8 * (X[1] * X[8])) + (0.2 * (X[8] * (1.0 + (10.0 * (lightfun(T,0.0,1.0,24.0,12.0,0.0,0.05) * (pow(((2.0 * (X[10] / (0.3 + (4.8 * X[5])))) + (((4.0 * X[9]) + (9.6 * (X[5] * (X[10] / (0.3 + (4.8 * X[5])))))) / (0.1 + ((1.1 * X[2]) + X[1])))),2.0) / (0.36 + pow(((2.0 * (X[10] / (0.3 + (4.8 * X[5])))) + (((4.0 * X[9]) + (9.6 * (X[5] * (X[10] / (0.3 + (4.8 * X[5])))))) / (0.1 + ((1.1 * X[2]) + X[1])))),2.0))))))))));
    F[73]=(-(function_4_cEC_form(X[1],X[2],X[5],X[6],X[13],1.0,0.1,0.8,1.0,8.0,0.3)));
    F[71]=function_4_cEG_degr(X[0],X[1],X[2],X[5],X[9],X[10],1.0,1.0,0.2,1.1,4.8,4.0,2.0,0.1,0.1);
    F[70]=function_4_cZG_degr(X[26],1.0,0.08);
    F[69]=function_4_cZTL_degr(X[27],1.0,0.6);
    F[67]=function_4_cG_degr(X[5],X[10],1.0,0.2,4.8,2.0,0.1);
    F[66]=(-(function_4_cG_trsl(X[11],1.0,0.51)));
    F[65]=function_4_cG_m_degr(X[11],1.0,3.4);
    F[64]=((-1.56 * (lightfun(T,0.0,1.0,24.0,12.0,0.0,0.05) * X[19])) + (-0.008000000000000002 / ((0.16 + pow(X[12],2.0)) * (0.004 + X[8]))));
    F[63]=(0.3 * ((1.0 + (13.0 * (1.0 - lightfun(T,0.0,1.0,24.0,12.0,0.0,0.05)))) * X[1]));
    F[62]=(0.1 * (X[2] * (1.0 + (3.0 * lightfun(T,0.0,1.0,24.0,12.0,0.0,0.05)))));
    F[60]=(0.1 * (X[0] * (1.0 + (3.0 * (1.0 - lightfun(T,0.0,1.0,24.0,12.0,0.0,0.05))))));
    F[58]=function_4_cLUX_degr(X[1],X[2],X[5],X[6],X[13],1.0,0.1,0.8,0.3,1.0,8.0,0.3);
    F[57]=(-(function_4_cLUX_trsl(X[14],1.0,0.8)));
    F[56]=function_4_cLUX_m_degr(X[14],1.0,0.6);
    F[55]=(-(function_4_cE4_m_trscr_1(X[8],X[12],1.0,2.0,0.01,0.3,1.3)));
    F[54]=function_4_cE3n_degr(X[1],X[2],X[5],X[6],X[10],X[13],1.0,0.2,5.0,3.0,0.1,0.8,4.8,1.0,8.0,0.3,2.0,0.1);
    F[53]=function_4_cE3_degr(X[0],X[3],1.0,1.1);
    F[52]=(-(function_4_cE3_trsl(X[4],1.0,0.62)));
    F[51]=function_4_cE3_m_degr(X[4],1.0,0.5);
    F[49]=(-(function_4_cE3_m_trscr(X[12],1.0,2.0,0.3,0.29)));
    F[48]=function_4_cE4_degr(X[1],X[2],X[5],X[6],X[13],1.0,0.3,0.1,0.8,1.0,8.0,0.3);
    F[47]=(-(function_4_cE4_trsl(X[7],1.0,0.37)));
    F[46]=function_4_cE4_m_degr(X[7],1.0,0.6);
    F[45]=(-(function_4_cLUX_m_trscr(X[8],X[12],1.0,2.0,0.01,0.3,1.3)));
    F[44]=(X[24] * (0.4 + ((0.3 + (0.7 * (1.0 - lightfun(T,0.0,1.0,24.0,12.0,0.0,0.05)))) * ((4.0 * X[27]) + X[26]))));
    F[43]=(-(function_4_cT_trsl(X[25],1.0,0.5600000000000001)));
    F[42]=function_4_cT_m_degr(X[25],1.0,0.3);
    F[41]=(-(function_4_cT_m_trscr_1(X[8],X[12],1.0,2.0,0.01,0.15,0.64)));
    F[40]=((0.5 + (0.1 * (1.0 - lightfun(T,0.0,1.0,24.0,12.0,0.0,0.05)))) * X[17]);
    F[38]=(-(function_4_cNI_trsl(X[18],1.0,0.54)));
    F[37]=function_4_cNI_m_degr(X[18],1.0,0.5);
    F[36]=(-(function_4_cNI_m_trscr(2.0,X[16],X[20],1.0,2.0,0.2,1.0,0.4,0.6)));
    F[35]=((0.7 + (1.8 * (1.0 - lightfun(T,0.0,1.0,24.0,12.0,0.0,0.05)))) * X[20]);
    F[34]=(-(function_4_cP7_trsl(X[21],1.0,0.8)));
    F[33]=function_4_cP7_m_degr(X[21],1.0,0.4);
    F[32]=(-(function_4_cP7_m_trscr(X[12],X[16],X[22],1.0,2.0,2.0,0.5,0.7,0.5,0.2)));
    F[31]=((0.32 + (0.1 * (1.0 - lightfun(T,0.0,1.0,24.0,12.0,0.0,0.05)))) * X[22]);
    F[30]=(-(function_4_cP9_trsl(X[23],1.0,0.6)));
    F[29]=function_4_cP9_m_degr(X[23],1.0,1.0);
    F[78]=((-2.8 * (lightfun(T,0.0,1.0,24.0,12.0,0.0,0.05) * X[19])) + (-0.01 * ((0.07000000000000001 + (0.2 * (pow(X[12],2.0) / (0.09 + pow(X[12],2.0))))) / (0.01 + X[8]))));
    F[77]=(X[19] * lightfun(T,0.0,1.0,24.0,12.0,0.0,0.05));
    F[76]=(-0.3 * ((1.0 - lightfun(T,0.0,1.0,24.0,12.0,0.0,0.05)) * (1.0 - X[19])));
    F[75]=function_4_cLm_degr(X[16],1.0,0.2);
    F[72]=(-(function_4_cL_modif(2.0,X[12],1.0,0.6,0.1)));
    F[61]=function_4_cL_degr(2.0,X[12],1.0,0.6,0.2,0.1);
    F[50]=((-(X[15])) * (0.27 + (0.13 * lightfun(T,0.0,1.0,24.0,12.0,0.0,0.05))));
    F[39]=((0.24 + (0.3 * lightfun(T,0.0,1.0,24.0,12.0,0.0,0.05))) * X[15]);
    F[28]=((-1.2 * (lightfun(T,0.0,1.0,24.0,12.0,0.0,0.05) * X[19])) + (-0.02600000000000001 / (0.01 + pow((X[22] + (X[20] + (X[17] + X[24]))),2.0))));
    F[27]=(0.14 + ((-3.4 * (lightfun(T,0.0,1.0,24.0,12.0,0.0,0.05) * (X[27] * X[10]))) + ((0.1 * ((1.0 - lightfun(T,0.0,1.0,24.0,12.0,0.0,0.05)) * X[26])) - function_4_cZTL_degr(X[27],1.0,0.6))));
    F[26]=((3.4 * (lightfun(T,0.0,1.0,24.0,12.0,0.0,0.05) * (X[27] * X[10]))) + ((-0.1 * ((1.0 - lightfun(T,0.0,1.0,24.0,12.0,0.0,0.05)) * X[26])) - function_4_cZG_degr(X[26],1.0,0.08)));
    F[25]=(function_4_cT_m_trscr_1(X[8],X[12],1.0,2.0,0.01,0.15,0.64) - function_4_cT_m_degr(X[25],1.0,0.3));
    F[24]=(function_4_cT_trsl(X[25],1.0,0.5600000000000001) - (X[24] * (0.4 + ((0.3 + (0.7 * (1.0 - lightfun(T,0.0,1.0,24.0,12.0,0.0,0.05)))) * ((4.0 * X[27]) + X[26])))));
    F[23]=((2.8 * (lightfun(T,0.0,1.0,24.0,12.0,0.0,0.05) * X[19])) + ((0.01 * ((0.07000000000000001 + (0.2 * (pow(X[12],2.0) / (0.09 + pow(X[12],2.0))))) / (0.01 + X[8]))) - function_4_cP9_m_degr(X[23],1.0,1.0)));
    F[22]=(function_4_cP9_trsl(X[23],1.0,0.6) + ((-0.32 + (-0.1 * (1.0 - lightfun(T,0.0,1.0,24.0,12.0,0.0,0.05)))) * X[22]));
    F[21]=(function_4_cP7_m_trscr(X[12],X[16],X[22],1.0,2.0,2.0,0.5,0.7,0.5,0.2) - function_4_cP7_m_degr(X[21],1.0,0.4));
    F[20]=(function_4_cP7_trsl(X[21],1.0,0.8) + ((-0.7 + (-1.8 * (1.0 - lightfun(T,0.0,1.0,24.0,12.0,0.0,0.05)))) * X[20]));
    F[19]=((0.3 * ((1.0 - lightfun(T,0.0,1.0,24.0,12.0,0.0,0.05)) * (1.0 - X[19]))) - (X[19] * lightfun(T,0.0,1.0,24.0,12.0,0.0,0.05)));
    F[18]=(function_4_cNI_m_trscr(2.0,X[16],X[20],1.0,2.0,0.2,1.0,0.4,0.6) - function_4_cNI_m_degr(X[18],1.0,0.5));
    F[17]=(function_4_cNI_trsl(X[18],1.0,0.54) + ((-0.5 + (-0.1 * (1.0 - lightfun(T,0.0,1.0,24.0,12.0,0.0,0.05)))) * X[17]));
    F[16]=(function_4_cL_modif(2.0,X[12],1.0,0.6,0.1) - function_4_cLm_degr(X[16],1.0,0.2));
    F[15]=((1.2 * (lightfun(T,0.0,1.0,24.0,12.0,0.0,0.05) * X[19])) + ((0.02600000000000001 / (0.01 + pow((X[22] + (X[20] + (X[17] + X[24]))),2.0))) + ((-0.24 + (-0.3 * lightfun(T,0.0,1.0,24.0,12.0,0.0,0.05))) * X[15])));
    F[14]=(function_4_cE4_m_trscr_1(X[8],X[12],1.0,2.0,0.01,0.3,1.3) - function_4_cLUX_m_degr(X[14],1.0,0.6));
    F[13]=(function_4_cLUX_trsl(X[14],1.0,0.8) - function_4_cLUX_degr(X[1],X[2],X[5],X[6],X[13],1.0,0.1,0.8,0.3,1.0,8.0,0.3));
    F[12]=((X[15] * (0.27 + (0.13 * lightfun(T,0.0,1.0,24.0,12.0,0.0,0.05)))) - function_4_cL_degr(2.0,X[12],1.0,0.6,0.2,0.1));
    F[11]=((1.56 * (lightfun(T,0.0,1.0,24.0,12.0,0.0,0.05) * X[19])) + ((0.008000000000000002 / ((0.004 + X[8]) * (0.16 + pow(X[12],2.0)))) - function_4_cG_m_degr(X[11],1.0,3.4)));
    F[10]=(function_4_cG_trsl(X[11],1.0,0.51) + ((-3.4 * (lightfun(T,0.0,1.0,24.0,12.0,0.0,0.05) * (X[27] * X[10]))) + ((0.1 * ((1.0 - lightfun(T,0.0,1.0,24.0,12.0,0.0,0.05)) * X[26])) + ((-(function_4_cG_degr(X[5],X[10],1.0,0.2,4.8,2.0,0.1))) - function_4_cG_cE3_assoc(X[3],X[10],1.0,4.8)))));
    F[9]=(function_4_cG_cE3_assoc(X[3],X[10],1.0,4.8) - function_4_cEG_degr(X[0],X[1],X[2],X[5],X[9],X[10],1.0,1.0,0.2,1.1,4.8,4.0,2.0,0.1,0.1));
    F[8]=(function_4_cEC_form(X[1],X[2],X[5],X[6],X[13],1.0,0.1,0.8,1.0,8.0,0.3) + ((-0.1 * (X[2] * X[8])) + ((-0.8 * (X[1] * X[8])) + (-0.2 * (X[8] * (1.0 + (10.0 * (lightfun(T,0.0,1.0,24.0,12.0,0.0,0.05) * (pow(((2.0 * (X[10] / (0.3 + (4.8 * X[5])))) + (((4.0 * X[9]) + (9.6 * (X[5] * (X[10] / (0.3 + (4.8 * X[5])))))) / (0.1 + ((1.1 * X[2]) + X[1])))),2.0) / (0.36 + pow(((2.0 * (X[10] / (0.3 + (4.8 * X[5])))) + (((4.0 * X[9]) + (9.6 * (X[5] * (X[10] / (0.3 + (4.8 * X[5])))))) / (0.1 + ((1.1 * X[2]) + X[1])))),2.0)))))))))));
    F[7]=(function_4_cLUX_m_trscr(X[8],X[12],1.0,2.0,0.01,0.3,1.3) - function_4_cE4_m_degr(X[7],1.0,0.6));
    F[6]=(function_4_cE4_trsl(X[7],1.0,0.37) - function_4_cE4_degr(X[1],X[2],X[5],X[6],X[13],1.0,0.3,0.1,0.8,1.0,8.0,0.3));
    F[5]=(function_4_cE3n_import(X[3],X[5],1.0,1.0,0.1) - function_4_cE3n_degr(X[1],X[2],X[5],X[6],X[10],X[13],1.0,0.2,5.0,3.0,0.1,0.8,4.8,1.0,8.0,0.3,2.0,0.1));
    F[4]=(function_4_cE3_m_trscr(X[12],1.0,2.0,0.3,0.29) - function_4_cE3_m_degr(X[4],1.0,0.5));
    F[3]=(function_4_cE3_trsl(X[4],1.0,0.62) + (((-(function_4_cE3_degr(X[0],X[3],1.0,1.1))) - function_4_cE3n_import(X[3],X[5],1.0,1.0,0.1)) - function_4_cG_cE3_assoc(X[3],X[10],1.0,4.8)));
    F[2]=(function_4_cCOP1n_import(X[0],1.0,0.6) + ((-0.1 * (X[2] * (1.0 + (3.0 * lightfun(T,0.0,1.0,24.0,12.0,0.0,0.05))))) + ((-20.0 * (lightfun(T,0.0,1.0,24.0,12.0,0.0,0.05) * (X[19] * X[2]))) + (-0.1 * X[2]))));
    F[1]=((20.0 * (lightfun(T,0.0,1.0,24.0,12.0,0.0,0.05) * (X[19] * X[2]))) + ((0.1 * X[2]) + (-0.3 * ((1.0 + (13.0 * (1.0 - lightfun(T,0.0,1.0,24.0,12.0,0.0,0.05)))) * X[1]))));
    F[0]=(0.23 + ((-0.1 * (X[0] * (1.0 + (3.0 * (1.0 - lightfun(T,0.0,1.0,24.0,12.0,0.0,0.05)))))) - function_4_cCOP1n_import(X[0],1.0,0.6)));

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
    X[0]=0.3269; //cCOP1c
    X[1]=0.2566; //cCOP1d
    X[2]=0.65; //cCOP1n
    X[3]=0.1503; //cE3
    X[4]=0.2991; //cE3_m
    X[5]=0.0286; //cE3n
    X[6]=0.207; //cE4
    X[7]=0.1012; //cE4_m
    X[8]=0.0709; //cEC
    X[9]=0.0041; //cEG
    X[10]=0.0196; //cG
    X[11]=0.1017; //cG_m
    X[12]=0.506; //cL
    X[13]=0.576; //cLUX
    X[14]=0.1012; //cLUX_m
    X[15]=1.0151; //cL_m
    X[16]=0.0788; //cLm
    X[17]=0.0697; //cNI
    X[18]=0.0731; //cNI_m
    X[19]=0.956; //cP
    X[20]=0.1167; //cP7
    X[21]=0.4016; //cP7_m
    X[22]=0.0238; //cP9
    X[23]=0.0658; //cP9_m
    X[24]=0.0435; //cT
    X[25]=0.0977; //cT_m
    X[26]=0.0755; //cZG
    X[27]=0.2505; //cZTL
    X[28]=0.0; //s1
    X[29]=0.0; //s10
    X[30]=0.0; //s11
    X[31]=0.0; //s12
    X[32]=0.0; //s13
    X[33]=0.0; //s14
    X[34]=0.0; //s15
    X[35]=0.0; //s16
    X[36]=0.0; //s17
    X[37]=0.0; //s18
    X[38]=0.0; //s19
    X[39]=0.0; //s2
    X[40]=0.0; //s20
    X[41]=0.0; //s21
    X[42]=0.0; //s22
    X[43]=0.0; //s23
    X[44]=0.0; //s24
    X[45]=0.0; //s25
    X[46]=0.0; //s26
    X[47]=0.0; //s27
    X[48]=0.0; //s28
    X[49]=0.0; //s29
    X[50]=0.0; //s3
    X[51]=0.0; //s30
    X[52]=0.0; //s31
    X[53]=0.0; //s32
    X[54]=0.0; //s33
    X[55]=0.0; //s34
    X[56]=0.0; //s35
    X[57]=0.0; //s36
    X[58]=0.0; //s37
    X[59]=0.0; //s38
    X[60]=0.0; //s39
    X[61]=0.0; //s4
    X[62]=0.0; //s40
    X[63]=0.0; //s41
    X[64]=0.0; //s42
    X[65]=0.0; //s43
    X[66]=0.0; //s44
    X[67]=0.0; //s45
    X[68]=0.0; //s46
    X[69]=0.0; //s47
    X[70]=0.0; //s48
    X[71]=0.0; //s49
    X[72]=0.0; //s5
    X[73]=0.0; //s50
    X[74]=0.0; //s51
    X[75]=0.0; //s6
    X[76]=0.0; //s7
    X[77]=0.0; //s8
    X[78]=0.0; //s9

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
