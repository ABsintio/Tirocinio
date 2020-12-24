
#ifndef BIOMD174_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD174_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[1]=(sPAR[2] * (hill_act(X[3],sPAR[5],X[1],sPAR[3],sPAR[12]) + (sig_act(sPAR[6],X[3],sPAR[13],X[0],sPAR[9]) - hydrolysis(sPAR[16],X[1]))));
    F[3]=(sPAR[2] * (sPAR[1] + (hydrolysis(sPAR[16],X[1]) + (((-(hill_act(X[3],sPAR[5],X[1],sPAR[3],sPAR[12]))) - sig_act(sPAR[6],X[3],sPAR[13],X[0],sPAR[9])) - extraction(sPAR[18],X[3])))));
    F[0]=(sPAR[2] * (sig_act_t(X[2],sPAR[4],T,sPAR[11],X[0],sPAR[8]) + ((-(sig_act(sPAR[7],X[0],sPAR[14],X[1],sPAR[10]))) - hydrolysis(sPAR[15],X[0]))));
    F[2]=(sPAR[2] * (sPAR[0] + (sig_act(sPAR[7],X[0],sPAR[14],X[1],sPAR[10]) + (hydrolysis(sPAR[15],X[0]) + ((-(sig_act_t(X[2],sPAR[4],T,sPAR[11],X[0],sPAR[8]))) - extraction(sPAR[17],X[2]))))));

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
    sPAR[0]=1.0; //K1_0
    sPAR[1]=0.483; //K1_3
    sPAR[2]=1.0; //endosome
    sPAR[3]=3.0; //h_4
    sPAR[4]=0.3; //ke_1
    sPAR[5]=0.21; //ke_4
    sPAR[6]=0.021; //ke_5
    sPAR[7]=0.31; //ke_6
    sPAR[8]=2.5; //kf_1
    sPAR[9]=3.0; //kf_5
    sPAR[10]=3.0; //kf_6
    sPAR[11]=0.1; //kg_1
    sPAR[12]=0.1; //kg_4
    sPAR[13]=1.0; //kg_5
    sPAR[14]=0.3; //kg_6
    sPAR[15]=0.06; //kh_8
    sPAR[16]=0.15; //kh_9
    sPAR[17]=1.0; //kminus1_2
    sPAR[18]=0.483; //kminus1_7
    X[0]=0.001; //R5
    X[1]=0.001; //R7
    X[2]=1.0; //r5
    X[3]=1.0; //r7

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
