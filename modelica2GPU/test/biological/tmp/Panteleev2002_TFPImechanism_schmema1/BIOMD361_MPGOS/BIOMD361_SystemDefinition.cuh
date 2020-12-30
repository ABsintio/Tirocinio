
#ifndef BIOMD361_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD361_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[7]=(sPAR[0] * ((sPAR[5] * (X[1] * X[6])) - (sPAR[9] * X[7])));
    F[6]=(sPAR[0] * ((sPAR[4] * (X[5] * X[0])) + ((sPAR[9] * X[7]) + (((-(sPAR[5])) * (X[1] * X[6])) - (sPAR[8] * X[6])))));
    F[0]=(sPAR[0] * ((sPAR[8] * X[6]) - (sPAR[4] * (X[5] * X[0]))));
    F[5]=(sPAR[0] * ((sPAR[3] * X[3]) + ((sPAR[8] * X[6]) + (X[5] * (((-(sPAR[4])) * X[0]) - (sPAR[7] * X[1]))))));
    F[3]=(sPAR[0] * ((sPAR[2] * X[2]) + ((sPAR[7] * (X[5] * X[1])) - (sPAR[3] * X[3]))));
    F[2]=(sPAR[0] * ((sPAR[1] * (X[4] * X[1])) + (((-(sPAR[6])) - sPAR[2]) * X[2])));
    F[4]=(sPAR[0] * ((sPAR[6] * X[2]) - (sPAR[1] * (X[4] * X[1]))));
    F[1]=(sPAR[0] * ((sPAR[3] * X[3]) + ((sPAR[6] * X[2]) + ((sPAR[9] * X[7]) + ((((-(sPAR[1])) * (X[4] * X[1])) - (sPAR[5] * (X[1] * X[6]))) - (sPAR[7] * (X[5] * X[1])))))));

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
    sPAR[0]=1.0; //compartment
    sPAR[1]=5.0; //k1_0
    sPAR[2]=420.0; //k1_1
    sPAR[3]=770.0; //k1_2
    sPAR[4]=0.054; //k1_3
    sPAR[5]=0.44; //k1_4
    sPAR[6]=770.0; //k2_0
    sPAR[7]=5.0; //k2_2
    sPAR[8]=0.02; //k2_3
    sPAR[9]=0.066; //k2_4
    X[0]=2.399999; //TFPI
    X[1]=0.9999997; //VIIa_TF
    X[2]=0.0; //VIIa_TF_X
    X[3]=0.0; //VIIa_TF_Xa
    X[4]=169.9999; //X
    X[5]=0.0; //Xa
    X[6]=0.0; //Xa_TFPI
    X[7]=0.0; //Xa_TFPI_VIIa_TF

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif