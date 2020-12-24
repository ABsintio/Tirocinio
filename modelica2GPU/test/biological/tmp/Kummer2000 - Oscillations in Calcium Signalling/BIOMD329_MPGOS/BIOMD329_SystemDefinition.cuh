
#ifndef BIOMD329_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD329_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[2]=(sPAR[8] * (linear_activation(sPAR[11],X[0]) - Henri_Michaelis_Menten__irreversible(X[2],sPAR[3],sPAR[7])));
    F[1]=(sPAR[8] * (linear_activation(sPAR[10],X[0]) - Henri_Michaelis_Menten__irreversible(X[1],sPAR[2],sPAR[6])));
    F[0]=(sPAR[8] * (Constant_flux__irreversible(sPAR[12]) + (linear_activation(sPAR[9],X[0]) + ((-(Irr_Michaelis_Menten__enzyme__userdefined(sPAR[4],X[1],X[0],sPAR[0]))) - Irr_Michaelis_Menten__enzyme__userdefined(sPAR[5],X[2],X[0],sPAR[1])))));

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
    sPAR[0]=0.19; //Km_2
    sPAR[1]=1.18; //Km_3
    sPAR[2]=29.09; //Km_5
    sPAR[3]=0.16; //Km_7
    sPAR[4]=1.52; //V_2
    sPAR[5]=4.88; //V_3
    sPAR[6]=32.24; //V_5
    sPAR[7]=153.0; //V_7
    sPAR[8]=1.0; //compartment
    sPAR[9]=2.9; //constant_1
    sPAR[10]=1.24; //constant_4
    sPAR[11]=13.58; //constant_6
    sPAR[12]=0.212; //v_0
    X[0]=0.01; //a
    X[1]=0.01; //b
    X[2]=0.01; //c

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
