
#ifndef BIOMD564_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD564_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[1]=(0.5 * (1.0 + (tanh(((2.0 * T) + (-48.0 * floor((0.04166666666666666 * T))))) + (tanh((-48.0 + ((2.0 * T) + (-48.0 * floor((0.04166666666666666 * T)))))) - tanh((-24.0 + ((2.0 * T) + (-48.0 * floor((0.04166666666666666 * T))))))))));
    ACC[0]=(1.0 - ACC[1]);
    ACC[8]=0.4000075609817316;
    ACC[4]=0.280006253789297;
    ACC[3]=0.3100061398624894;
    ACC[5]=0.2500060658314073;
    ACC[2]=0.5400132205603699;
    ACC[6]=0.4000027925874407;
    ACC[7]=2.3499889284595;
    F[15]=(function_4_cY_trsl_1(X[16],1.0,0.44) - function_4_cY_degr_1(X[15],1.0,0.3));
    F[13]=(function_4_cT_m_trscr_1(X[2],X[15],2.5,1.0,2.0,0.91,0.3,0.7,0.06) - function_4_cT_m_degr_1(X[13],1.0,0.3));
    F[9]=(function_4_cP7_m_trscr_1(X[2],X[4],X[10],1.0,0.7,0.7,3.0,3.0,0.42,0.26) - function_4_cP7_m_degr_1(X[9],1.0,0.28));
    F[6]=(function_4_cNI_m_trscr_1(X[4],X[8],1.0,0.5,0.6,2.0,2.0,0.18,0.71) - function_4_cNI_m_degr_1(X[6],1.0,0.5));
    F[4]=(function_4_cL_modif_1(3.0,X[2],1.0,0.4,0.1) - function_4_cLm_degr_1(X[4],1.0,0.2));
    F[0]=(function_4_cG_trsl_1(X[1],1.0,0.23) + ((-(function_4_cG_degr_1(X[0],1.0,0.2))) - function_4_cG_cZTL_assoc_1(ACC[0],ACC[1],X[0],X[17],X[18],1.0,30.0,0.4)));
    F[5]=(function_4_cNI_trsl_1(X[6],1.0,0.36) - function_4_cNI_degr_1(ACC[0],ACC[1],X[5],1.0,0.3,0.405));
    F[7]=(function_4_cP_trsl_1(ACC[0],X[7],1.0,0.3) - function_4_cP_degr_1(ACC[1],X[7],1.0,1.0));
    F[10]=(function_4_cP9_trsl_1(X[11],1.0,0.7) - function_4_cP9_degr_1(ACC[0],ACC[1],X[10],1.0,0.32,2.0));
    F[11]=(function_4_cP9_m_trscr_1(ACC[1],X[2],X[7],X[12],1.0,0.14,0.3,2.0,3.0,0.0,0.2,2.9) - function_4_cP9_m_degr_1(X[11],1.0,1.0));
    F[16]=(function_4_cY_m_trscr_1(ACC[0],ACC[1],X[2],X[7],X[12],1.0,2.0,0.2,0.18,3.4,1.25,0.5,3.0) - function_4_cY_m_degr_1(X[16],1.0,1.0));
    F[17]=(function_4_cG_cZTL_assoc_1(ACC[0],ACC[1],X[0],X[17],X[18],1.0,30.0,0.4) - function_4_cZG_degr_1(X[17],1.0,0.2));
    F[18]=(0.45 - (function_4_cG_cZTL_assoc_1(ACC[0],ACC[1],X[0],X[17],X[18],1.0,30.0,0.4) + function_4_cZTL_degr_1(X[18],1.0,1.2)));
    F[2]=(function_4_cL_trsl_1(ACC[0],ACC[1],X[3],1.0,ACC[8],0.27) - function_4_cL_degr_1(3.0,X[2],1.0,0.4,0.2,0.1));
    F[14]=(function_4_cT_modif_1(X[12],1.0,3.0,0.3,0.05) - function_4_cTm_degr_1(ACC[0],ACC[1],X[14],1.0,ACC[4],0.14));
    F[8]=(function_4_cP7_trsl_1(X[9],1.0,0.4) - function_4_cP7_degr_1(ACC[0],ACC[1],X[8],1.0,ACC[3],1.0));
    F[12]=(function_4_cT_trsl_1(X[13],1.0,0.268) - function_4_cT_degr_1(ACC[0],ACC[1],X[12],X[17],X[18],1.0,ACC[5],0.5,0.1,1.0));
    F[3]=(function_4_cL_m_trscr_1(ACC[1],2.0,3.0,X[5],X[7],X[8],X[10],X[14],1.0,0.1,0.28,ACC[6],1.8,0.8) - function_4_cL_m_degr_1(ACC[0],ACC[1],X[3],1.0,ACC[2],0.24));
    F[1]=(function_4_cG_m_trscr_1(ACC[1],X[2],X[7],X[12],1.0,0.17,0.4,1.0,ACC[7],2.0,0.6) - function_4_cG_m_degr_1(X[1],1.0,1.0));

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
    ACC[2]=0.54001322056037; //m1
    ACC[3]=0.310006139862489; //m15
    ACC[4]=0.280006253789297; //m25
    ACC[5]=0.250006065831407; //m6
    ACC[6]=0.400002792587441; //n0
    ACC[7]=2.3499889284595; //n12
    ACC[8]=0.400007560981732; //p1
    X[0]=0.0238; //cG
    X[1]=0.119; //cG_m
    X[2]=0.416; //cL
    X[3]=1.0; //cL_m
    X[4]=0.054; //cLm
    X[5]=0.044; //cNI
    X[6]=0.0065; //cNI_m
    X[7]=0.825; //cP
    X[8]=0.019; //cP7
    X[9]=0.075; //cP7_m
    X[10]=0.056; //cP9
    X[11]=0.35; //cP9_m
    X[12]=0.393; //cT
    X[13]=0.25; //cT_m
    X[14]=0.24; //cTm
    X[15]=0.1; //cY
    X[16]=0.093; //cY_m
    X[17]=0.0774; //cZG
    X[18]=0.323; //cZTL

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
