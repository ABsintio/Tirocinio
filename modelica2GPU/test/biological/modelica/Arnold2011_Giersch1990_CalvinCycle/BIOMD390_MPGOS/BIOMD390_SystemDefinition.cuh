
#ifndef BIOMD390_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD390_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[0]=(0.5 * (sPAR[11] + (((((-(X[3])) - X[8]) - X[6]) - X[4]) - X[1])));
    F[5]=0.0;
    F[9]=0.0;
    F[2]=0.0;
    F[0]=(sPAR[17] * (function_6(sPAR[13],X[3],X[1],X[0],X[8],X[4],sPAR[20],sPAR[0],sPAR[4]) + (function_8(sPAR[15],X[6],X[1],sPAR[1],sPAR[5],sPAR[8],X[4]) - function_10(sPAR[12],X[0],X[4],sPAR[3],sPAR[7]))));
    F[1]=(sPAR[17] * (function_10(sPAR[12],X[0],X[4],sPAR[3],sPAR[7]) + ((-(function_6(sPAR[13],X[3],X[1],X[0],X[8],X[4],sPAR[20],sPAR[0],sPAR[4]))) - function_8(sPAR[15],X[6],X[1],sPAR[1],sPAR[5],sPAR[8],X[4]))));
    F[4]=((sPAR[17] * function_6(sPAR[13],X[3],X[1],X[0],X[8],X[4],sPAR[20],sPAR[0],sPAR[4])) + ((2.0 * (sPAR[17] * function_7(sPAR[14],X[8],sPAR[10]))) + (function_9(X[8],X[5],X[9],X[4],sPAR[6],sPAR[2],sPAR[16]) - (sPAR[17] * function_10(sPAR[12],X[0],X[4],sPAR[3],sPAR[7])))));
    F[6]=(sPAR[17] * ((3.0 * function_7(sPAR[14],X[8],sPAR[10])) - function_8(sPAR[15],X[6],X[1],sPAR[1],sPAR[5],sPAR[8],X[4])));
    F[8]=((sPAR[17] * function_6(sPAR[13],X[3],X[1],X[0],X[8],X[4],sPAR[20],sPAR[0],sPAR[4])) + ((-5.0 * (sPAR[17] * function_7(sPAR[14],X[8],sPAR[10]))) - function_9(X[8],X[5],X[9],X[4],sPAR[6],sPAR[2],sPAR[16])));
    F[7]=(sPAR[17] * (function_8(sPAR[15],X[6],X[1],sPAR[1],sPAR[5],sPAR[8],X[4]) - function_5(sPAR[19],X[2],ACC[0],sPAR[9])));
    F[3]=(sPAR[17] * ((2.0 * function_5(sPAR[19],X[2],ACC[0],sPAR[9])) - function_6(sPAR[13],X[3],X[1],X[0],X[8],X[4],sPAR[20],sPAR[0],sPAR[4])));

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
    ACC[0]=0.0; //totRuBP
    sPAR[0]=1.0; //K1_1
    sPAR[1]=0.05; //K1_3
    sPAR[2]=0.08; //K1_4
    sPAR[3]=0.08; //K1_5
    sPAR[4]=1.0; //K2_1
    sPAR[5]=0.5; //K2_3
    sPAR[6]=0.25; //K2_4
    sPAR[7]=0.5; //K2_5
    sPAR[8]=0.05; //K3_3
    sPAR[9]=0.04; //K_0
    sPAR[10]=0.4; //K_2
    sPAR[11]=16.0; //P_0
    sPAR[12]=5.8801285588795; //V6
    sPAR[13]=3.49; //Vm_1
    sPAR[14]=1.06; //Vm_2
    sPAR[15]=4.81; //Vm_3
    sPAR[16]=3.3; //Vm_4
    sPAR[17]=1.0; //chloroplast
    sPAR[18]=1.0; //cytosol
    sPAR[19]=0.504; //k_0
    sPAR[20]=14.0; //k_1
    X[0]=0.82; //ADP
    X[1]=0.68; //ATP
    X[2]=3.56; //E_RuBisCO
    X[3]=2.4; //PGA
    X[4]=5.0; //Pi
    X[5]=1.4; //Pic
    X[6]=0.0500747384155456; //Ru5P
    X[7]=2.0; //RuBP
    X[8]=0.5; //TP
    X[9]=0.2; //TPc

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
