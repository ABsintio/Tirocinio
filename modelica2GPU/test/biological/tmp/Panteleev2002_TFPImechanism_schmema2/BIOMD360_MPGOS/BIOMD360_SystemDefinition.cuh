
#ifndef BIOMD360_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD360_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[4]=(sPAR[0] * ((sPAR[6] * (X[3] * X[0])) + ((sPAR[14] * (X[1] * X[7])) + ((sPAR[15] * X[8]) + ((((-(sPAR[7])) - sPAR[8]) - sPAR[13]) * X[4])))));
    F[8]=(sPAR[0] * ((sPAR[5] * (X[1] * X[7])) + ((sPAR[8] * X[4]) + (((-(sPAR[15])) - sPAR[12]) * X[8]))));
    F[7]=(sPAR[0] * ((sPAR[4] * (X[6] * X[0])) + ((sPAR[7] * X[4]) + ((sPAR[12] * X[8]) + ((((-(sPAR[14])) - sPAR[5]) * (X[1] * X[7])) - (sPAR[11] * X[7]))))));
    F[0]=((-(sPAR[0])) * ((sPAR[4] * (X[6] * X[0])) + ((sPAR[6] * (X[3] * X[0])) + (((-(sPAR[13])) * X[4]) - (sPAR[11] * X[7])))));
    F[6]=(sPAR[0] * ((sPAR[3] * X[3]) + ((sPAR[11] * X[7]) + (X[6] * (((-(sPAR[4])) * X[0]) - (sPAR[10] * X[1]))))));
    F[3]=(sPAR[0] * ((sPAR[2] * X[2]) + ((sPAR[10] * (X[6] * X[1])) + ((sPAR[13] * X[4]) + (X[3] * (((-(sPAR[6])) * X[0]) - sPAR[3]))))));
    F[2]=(sPAR[0] * ((sPAR[1] * (X[5] * X[1])) + (((-(sPAR[9])) - sPAR[2]) * X[2])));
    F[5]=(sPAR[0] * ((sPAR[9] * X[2]) - (sPAR[1] * (X[5] * X[1]))));
    F[1]=(sPAR[0] * ((sPAR[3] * X[3]) + ((sPAR[7] * X[4]) + ((sPAR[9] * X[2]) + ((sPAR[12] * X[8]) + (((((-(sPAR[14])) - sPAR[5]) * (X[1] * X[7])) - (sPAR[1] * (X[5] * X[1]))) - (sPAR[10] * (X[6] * X[1]))))))));

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
    sPAR[6]=10.0; //k1_5
    sPAR[7]=0.0; //k1_6
    sPAR[8]=0.0; //k1_7
    sPAR[9]=770.0; //k2_0
    sPAR[10]=5.0; //k2_2
    sPAR[11]=0.02; //k2_3
    sPAR[12]=0.066; //k2_4
    sPAR[13]=0.0; //k2_5
    sPAR[14]=0.0; //k2_6
    sPAR[15]=0.0; //k2_7
    X[0]=2.399999; //TFPI
    X[1]=0.9999997; //VIIa_TF
    X[2]=0.0; //VIIa_TF_X
    X[3]=0.0; //VIIa_TF_Xa
    X[4]=0.0; //VIIa_TF_Xa_TFPI
    X[5]=169.9999; //X
    X[6]=0.0; //Xa
    X[7]=0.0; //Xa_TFPI
    X[8]=0.0; //Xa_TFPI_VIIa_TF

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
