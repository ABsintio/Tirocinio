
#ifndef BIOMD384_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD384_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[0]=(0.03076923076923077 * (sPAR[7] * (sPAR[4] / (10.0 + (-9.0 * sPAR[9])))));
    ACC[4]=(0.21 * sPAR[6]);
    ACC[3]=(0.25 * (ACC[0] * (X[0] / (X[0] + (2.0 * sPAR[0])))));
    ACC[2]=(sPAR[6] * (X[0] / (((1.0 + (X[2] / sPAR[2])) * sPAR[1]) + X[0])));
    ACC[1]=(sPAR[3] - X[1]);
    ACC[5]=(0.21 * (X[2] * (sPAR[1] / (X[0] * sPAR[2]))));
    F[3]=(sPAR[8] * ((2.0 * carboxylation(ACC[2],ACC[3])) + ((1.5 * oxygenation(ACC[5],ACC[2],ACC[3])) - PGA_consumption(X[3],sPAR[5],X[1],sPAR[3],sPAR[6]))));
    F[1]=((sPAR[8] * NADPH_production(ACC[0],ACC[1],sPAR[3])) + (-2.0 * (sPAR[8] * (carboxylation(ACC[2],ACC[3]) + oxygenation(ACC[5],ACC[2],ACC[3])))));
    F[0]=0.0;
    F[2]=0.0;
    F[4]=0.0;

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
    ACC[0]=4.8582995951417; //J
    ACC[1]=0.0; //NADP
    ACC[2]=0.646926785453086; //Vc
    ACC[3]=0.899589030506691; //Vj
    ACC[4]=0.531787796640465; //Vomax
    ACC[5]=0.263964911408408; //phi
    sPAR[0]=42.8926627111176; //Gamma
    sPAR[1]=406.066146391504; //Kc
    sPAR[2]=276.900084789612; //Ko
    sPAR[3]=0.5; //Nt
    sPAR[4]=1000.0; //Q
    sPAR[5]=3.2; //Rp
    sPAR[6]=2.53232284114507; //Vcmax
    sPAR[7]=0.3; //alpha
    sPAR[8]=1.0; //chloroplast
    sPAR[9]=0.9; //teta
    X[0]=245.0; //CO2
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
