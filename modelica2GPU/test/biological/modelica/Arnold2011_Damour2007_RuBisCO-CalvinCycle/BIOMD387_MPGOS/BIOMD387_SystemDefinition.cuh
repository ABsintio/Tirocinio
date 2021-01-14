
#ifndef BIOMD387_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD387_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[3]=(sPAR[3] - X[1]);
    ACC[4]=(sPAR[7] * (X[0] / ((X[0] + sPAR[1]) * (1.0 + (X[2] / sPAR[2])))));
    ACC[7]=(0.21 * (X[2] * (sPAR[1] / (X[0] * sPAR[2]))));
    ACC[0]=pow(2.718281828459045,(-0.0398 * (X[5] * sPAR[8])));
    ACC[2]=(0.02769230769230769 * (ACC[0] * (sPAR[9] * (sPAR[4] / sqrt((1.0 + pow((0.9 * (sPAR[9] * (sPAR[4] / sPAR[0]))),2.0)))))));
    ACC[1]=(0.0002043051727375498 * X[2]);
    ACC[6]=(3.0 * (sPAR[6] / (1.0 - (ACC[1] / X[0]))));
    ACC[5]=(0.25 * (ACC[2] * (X[0] / (X[0] + (2.0 * ACC[1])))));
    F[4]=0.0;
    F[5]=0.0;
    F[2]=0.0;
    F[0]=0.0;
    F[3]=(sPAR[10] * ((2.0 * carboxylation(ACC[4],ACC[5],ACC[6])) + ((1.5 * oxygenation(ACC[7],ACC[4],ACC[5],ACC[6])) - PGA_consumption(X[3],sPAR[5],X[1],sPAR[3],sPAR[7]))));
    F[1]=((sPAR[10] * NADPH_production(ACC[2],ACC[3],sPAR[3])) + (-2.0 * (sPAR[10] * (carboxylation(ACC[4],ACC[5],ACC[6]) + oxygenation(ACC[7],ACC[4],ACC[5],ACC[6])))));

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
    ACC[0]=0.999136712846952; //Cst
    ACC[1]=4.29040862748855; //Gamma
    ACC[2]=3.64863790509821; //J
    ACC[3]=0.0; //NADP
    ACC[4]=0.822489884906092; //Vc
    ACC[5]=0.675554869049198; //Vj
    ACC[6]=0.942054655190967; //Vp
    ACC[7]=0.025590660664217; //phi
    sPAR[0]=142.047003854271; //Jmax
    sPAR[1]=26.7125313821435; //Kc
    sPAR[2]=187891.032274486; //Ko
    sPAR[3]=0.5; //Nt
    sPAR[4]=1000.0; //Q
    sPAR[5]=3.2; //Rp
    sPAR[6]=0.259027750094988; //TPU
    sPAR[7]=1.91141270310584; //Vcmax
    sPAR[8]=0.0434; //a
    sPAR[9]=0.24; //alpha
    sPAR[10]=1.0; //chloroplast
    X[0]=24.50000000000009; //CO2
    X[1]=0.21; //NADPH
    X[2]=21000.00000000002; //O2
    X[3]=2.4; //PGA
    X[4]=2.0; //RuBP
    X[5]=0.5; //starch

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
