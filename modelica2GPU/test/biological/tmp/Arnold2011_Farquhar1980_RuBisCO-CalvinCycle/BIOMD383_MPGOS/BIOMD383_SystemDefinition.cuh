
#ifndef BIOMD383_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD383_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[2]=(0.5 * ((1.0 - sPAR[7]) * sPAR[1]));
    ACC[1]=(0.007692307692307693 * (abs((467.0 + ACC[2])) - abs((-467.0 + ACC[2]))));
    ACC[0]=(sPAR[4] - X[1]);
    ACC[3]=(0.21 * (X[2] * (sPAR[2] / (X[0] * sPAR[3]))));
    F[3]=(sPAR[6] * ((2.0 * carboxylation(sPAR[8],X[0],sPAR[2],X[2],sPAR[3],sPAR[0],X[4])) + ((1.5 * oxygenation(ACC[3],sPAR[8],X[0],sPAR[2],X[2],sPAR[3],sPAR[0],X[4])) - PGA_consumption(X[3],sPAR[5],sPAR[4],sPAR[8],sPAR[0],X[1]))));
    F[1]=((sPAR[6] * NADPH_production(ACC[1],ACC[0],sPAR[4])) + (-2.0 * (sPAR[6] * (carboxylation(sPAR[8],X[0],sPAR[2],X[2],sPAR[3],sPAR[0],X[4]) + oxygenation(ACC[3],sPAR[8],X[0],sPAR[2],X[2],sPAR[3],sPAR[0],X[4])))));
    F[4]=0.0;
    F[0]=0.0;
    F[2]=0.0;

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
    ACC[0]=0.0; //NADP
    ACC[1]=5.92307692307692; //j
    ACC[2]=385.0; //jp
    ACC[3]=0.267272727272727; //phi
    sPAR[0]=1.33846153846154; //E
    sPAR[1]=1000.0; //I
    sPAR[2]=460.0; //Kc
    sPAR[3]=330.0; //Ko
    sPAR[4]=0.5; //Nt
    sPAR[5]=3.2; //Rp
    sPAR[6]=1.0; //chloroplast
    sPAR[7]=0.23; //f
    sPAR[8]=2.5; //kc
    X[0]=230.0; //CO2
    X[1]=0.21; //NADPH
    X[2]=210.0; //O2
    X[3]=2.4; //PGA
    X[4]=2.0; //RuBP

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
