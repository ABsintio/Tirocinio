
#ifndef BIOMD225_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD225_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[1]=(sPAR[4] * (sPAR[10] / sPAR[15]));
    ACC[3]=(sPAR[6] * (sPAR[10] / sPAR[15]));
    ACC[2]=(sPAR[5] * (sPAR[10] / sPAR[15]));
    ACC[0]=(X[2] * (sPAR[0] / (1.0 + sPAR[0])));
    F[1]=0.0;
    F[0]=(sPAR[9] * ((ACC[3] * (pow((ACC[0] / sPAR[3]),(sPAR[13] + ((sPAR[12] - sPAR[13]) * (X[0] / ((1.0 + (X[0] / sPAR[1])) * sPAR[1]))))) / (pow((ACC[0] / sPAR[3]),(sPAR[13] + ((sPAR[12] - sPAR[13]) * (X[0] / ((1.0 + (X[0] / sPAR[1])) * sPAR[1]))))) + ((1.0 + pow((X[0] / sPAR[7]),sPAR[14])) / (1.0 + (pow(sPAR[8],(sPAR[13] + ((sPAR[12] - sPAR[13]) * (X[0] / (sPAR[1] * (1.0 + (X[0] / sPAR[1]))))))) * pow((X[0] / sPAR[7]),sPAR[14]))))))) - (ACC[1] * (X[0] / (sPAR[1] * (1.0 + (X[0] / sPAR[1])))))));
    F[2]=(sPAR[9] * ((ACC[2] * (pow((X[3] / sPAR[2]),sPAR[11]) / (1.0 + pow((X[3] / sPAR[2]),sPAR[11])))) - (ACC[3] * (pow((ACC[0] / sPAR[3]),(sPAR[13] + ((sPAR[12] - sPAR[13]) * (X[0] / ((1.0 + (X[0] / sPAR[1])) * sPAR[1]))))) / (pow((ACC[0] / sPAR[3]),(sPAR[13] + ((sPAR[12] - sPAR[13]) * (X[0] / ((1.0 + (X[0] / sPAR[1])) * sPAR[1]))))) + ((1.0 + pow((X[0] / sPAR[7]),sPAR[14])) / (1.0 + (pow(sPAR[8],(sPAR[13] + ((sPAR[12] - sPAR[13]) * (X[0] / (sPAR[1] * (1.0 + (X[0] / sPAR[1]))))))) * pow((X[0] / sPAR[7]),sPAR[14])))))))));
    F[3]=0.0;

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
    ACC[0]=0.0; //F6P
    ACC[1]=0.0; //Vfba
    ACC[2]=0.0; //Vgk
    ACC[3]=0.0; //Vpfk
    sPAR[0]=0.3; //KeqGPI
    sPAR[1]=0.005; //Sfba
    sPAR[2]=8.0; //Sgk
    sPAR[3]=4.0; //Spfk
    sPAR[4]=25.0; //Vfba_min
    sPAR[5]=10.0; //Vgk_min
    sPAR[6]=100.0; //Vpfk_min
    sPAR[7]=0.01; //Xpfk
    sPAR[8]=5.0; //alpha
    sPAR[9]=1.0; //comp
    sPAR[10]=0.3333; //dw_per_ml
    sPAR[11]=1.7; //hGK
    sPAR[12]=1.0; //hact
    sPAR[13]=2.5; //hpfk
    sPAR[14]=2.5; //hx
    sPAR[15]=60.0; //min_to_sec
    sPAR[16]=1.5; //sigcorr
    X[0]=0.00063612; //FBP
    X[1]=0.0; //G3P
    X[2]=3.71728; //G6P_F6P
    X[3]=10.0; //GLC

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
