
#ifndef BIOMD241_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD241_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[0]=(sPAR[2] + (sPAR[7] * (X[0] / (1.0 + (X[3] / sPAR[8])))));
    F[5]=0.0;
    F[3]=(sPAR[18] * (X[1] - X[3]));
    F[0]=(sPAR[17] * (X[1] - X[0]));
    F[2]=((sPAR[14] * X[1]) - (sPAR[15] * X[2]));
    F[1]=((sPAR[16] * (sPAR[4] * (X[4] / sPAR[10]))) + ((sPAR[15] * X[2]) + (((-(sPAR[14])) - sPAR[13]) * X[1])));
    F[4]=((-(sPAR[16])) * X[4]);

}

template<class Precision> __forceinline__ __device__ void PerThread_EventFunction(
	int tid, int NT, Precision*	  EF, \
	Precision     T, Precision    dT, Precision*    TD, Precision*	X, \
	Precision* cPAR, Precision* sPAR, int*       sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[1]=T >= ((sPAR[20] * X[5]) + sPAR[21]);

    EF[0] = (! (ACC[1]));
}

template<class Precision> __forceinline__ __device__ void PerThread_ActionAfterEventDetection(
    int tid, int NT, int IDX, int& UDT, \
    Precision    &T, Precision   &dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR, int*       sPARi, Precision* ACC, int* ACCi
) {
    if (IDX == 0){
	    X[4]=(X[4] + (sPAR[12] / sPAR[11]));
    }
    if (IDX == 0){
	    X[5]=(1.0 + X[5]);
    }

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
    ACC[0]=0.0; //E
    ACC[1]=0; //$whenCondition1
    sPAR[0]=1.0; //C
    sPAR[1]=0.11; //CL
    sPAR[2]=83.3; //E_0
    sPAR[3]=1.0; //Eff
    sPAR[4]=0.984; //F
    sPAR[5]=1.0; //Gut
    sPAR[6]=1.0; //P
    sPAR[7]=19.07; //S
    sPAR[8]=0.26; //T_50
    sPAR[9]=1.0; //Tol
    sPAR[10]=0.32; //V_C
    sPAR[11]=80.0; //bodyweight
    sPAR[12]=90.0; //cupsize
    sPAR[13]=0.34; //k10
    sPAR[14]=1.64; //k12
    sPAR[15]=1.19; //k21
    sPAR[16]=12.0; //k_a
    sPAR[17]=2.03; //k_eo
    sPAR[18]=0.75; //k_tol
    sPAR[19]=3.98; //t_half
    sPAR[20]=2.0; //t_int
    sPAR[21]=0.15; //t_lag
    X[0]=0.0; //C_e
    X[1]=0.0; //C_p
    X[2]=0.0; //C_per
    X[3]=0.0; //C_t
    X[4]=0.0; //X_gut
    X[5]=0.0; //cups

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
