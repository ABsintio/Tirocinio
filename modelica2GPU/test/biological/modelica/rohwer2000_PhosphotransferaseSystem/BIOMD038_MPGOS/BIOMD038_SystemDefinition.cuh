
#ifndef BIOMD038_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD038_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[6]=((sPAR[18] * (X[5] * X[9])) + ((sPAR[1] * (X[4] * X[10])) + (((-(sPAR[0])) - sPAR[19]) * X[6])));
    F[5]=((sPAR[16] * X[3]) + ((sPAR[19] * X[6]) + (((-(sPAR[18])) * (X[5] * X[9])) - (sPAR[17] * (X[1] * X[5])))));
    F[3]=((sPAR[14] * (X[2] * X[4])) + ((sPAR[17] * (X[1] * X[5])) + (((-(sPAR[16])) - sPAR[15]) * X[3])));
    F[4]=((sPAR[0] * X[6]) + ((sPAR[15] * X[3]) + (((-(sPAR[14])) * (X[2] * X[4])) - (sPAR[1] * (X[4] * X[10])))));
    F[2]=((sPAR[12] * X[13]) + ((sPAR[15] * X[3]) + (((-(sPAR[14])) * (X[2] * X[4])) - (sPAR[13] * (X[11] * X[1])))));
    F[13]=((sPAR[10] * (X[12] * X[1])) + ((sPAR[13] * (X[11] * X[1])) + (((-(sPAR[12])) - sPAR[11]) * X[13])));
    F[1]=((sPAR[16] * X[3]) + ((sPAR[11] * X[13]) + (((-(sPAR[10])) * (X[12] * X[1])) - (sPAR[17] * (X[1] * X[5])))));
    F[12]=((sPAR[8] * X[8]) + ((sPAR[11] * X[13]) + (((-(sPAR[10])) * (X[12] * X[1])) - (sPAR[9] * (X[0] * X[12])))));
    F[8]=((sPAR[6] * (X[7] * X[11])) + ((sPAR[9] * (X[0] * X[12])) + (((-(sPAR[8])) - sPAR[7]) * X[8])));
    F[11]=((sPAR[12] * X[13]) + ((sPAR[7] * X[8]) + (((-(sPAR[6])) * (X[7] * X[11])) - (sPAR[13] * (X[11] * X[1])))));
    F[7]=((sPAR[4] * X[16]) + ((sPAR[7] * X[8]) + (((-(sPAR[6])) * (X[7] * X[11])) - (sPAR[5] * (X[15] * X[7])))));
    F[16]=((sPAR[2] * (X[14] * X[0])) + ((sPAR[5] * (X[15] * X[7])) + (((-(sPAR[4])) - sPAR[3]) * X[16])));
    F[0]=((sPAR[8] * X[8]) + ((sPAR[3] * X[16]) + (((-(sPAR[2])) * (X[14] * X[0])) - (sPAR[9] * (X[0] * X[12])))));
    F[9]=0.0;
    F[10]=0.0;
    F[15]=0.0;
    F[14]=0.0;

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
    sPAR[0]=4800.0; //k10f
    sPAR[1]=0.005; //k10r
    sPAR[2]=1960.0; //k1f
    sPAR[3]=480000.0; //k1r
    sPAR[4]=108000.0; //k2f
    sPAR[5]=294.0; //k2r
    sPAR[6]=14000.0; //k3f
    sPAR[7]=14000.0; //k3r
    sPAR[8]=84000.0; //k4f
    sPAR[9]=3360.0; //k4r
    sPAR[10]=21960.0; //k5f
    sPAR[11]=21960.0; //k5r
    sPAR[12]=4392.0; //k6f
    sPAR[13]=3384.0; //k6r
    sPAR[14]=880.0; //k7f
    sPAR[15]=880.0; //k7r
    sPAR[16]=2640.0; //k8f
    sPAR[17]=960.0; //k8r
    sPAR[18]=260.0; //k9f
    sPAR[19]=389.0; //k9r
    X[0]=3.0; //EI
    X[1]=20.0; //EIIA
    X[2]=20.0; //EIIAP
    X[3]=0.0; //EIIAPIICB
    X[4]=5.0; //EIICB
    X[5]=5.0; //EIICBP
    X[6]=0.0; //EIICBPGlc
    X[7]=2.0; //EIP
    X[8]=0.0; //EIPHPr
    X[9]=500.0; //Glc
    X[10]=50.0; //GlcP
    X[11]=25.0; //HPr
    X[12]=25.0; //HPrP
    X[13]=0.0; //HPrPIIA
    X[14]=2800.0; //PEP
    X[15]=900.0; //Pyr
    X[16]=0.0; //PyrPI

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
