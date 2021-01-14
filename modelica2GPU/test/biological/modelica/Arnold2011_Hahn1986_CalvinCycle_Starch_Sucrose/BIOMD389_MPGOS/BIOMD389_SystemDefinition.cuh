
#ifndef BIOMD389_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD389_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[0]=(0.0258 * (X[7] * X[21]));
    F[3]=0.0;
    F[16]=(sPAR[0] * (X[15] - X[16]));
    F[19]=((sPAR[6] * (X[17] * X[10])) + (-2.0 * (sPAR[2] * (sPAR[7] * pow(X[19],2.0)))));
    F[2]=0.0;
    F[9]=((sPAR[1] * ((sPAR[4] * (X[8] * X[1])) + ((sPAR[9] * pow(X[17],2.0)) + ((sPAR[11] * (X[4] * X[17])) - (sPAR[17] * (X[6] * X[9])))))) + ((2.0 * (sPAR[1] * (sPAR[16] * (X[1] * X[6])))) + ((sPAR[6] * (X[17] * X[10])) - (sPAR[1] * ((sPAR[15] * (X[0] * X[9])) + (sPAR[5] * (X[5] * X[9])))))));
    F[0]=(sPAR[1] * ((sPAR[4] * (X[8] * X[1])) + ((sPAR[14] * (X[12] * X[1])) + ((sPAR[16] * (X[1] * X[6])) - (sPAR[15] * (X[0] * X[9]))))));
    F[1]=(sPAR[1] * ((sPAR[15] * (X[0] * X[9])) + ((((-(sPAR[4])) * (X[8] * X[1])) - (sPAR[14] * (X[12] * X[1]))) - (sPAR[16] * (X[1] * X[6])))));
    F[5]=(sPAR[1] * ((sPAR[16] * (X[1] * X[6])) - (sPAR[5] * (X[5] * X[9]))));
    F[12]=(sPAR[1] * ((sPAR[12] * X[14]) + ((sPAR[13] * (X[18] * X[17])) - (sPAR[14] * (X[12] * X[1])))));
    F[14]=(sPAR[1] * ((sPAR[11] * (X[4] * X[17])) - (sPAR[12] * X[14])));
    F[4]=(sPAR[1] * ((sPAR[10] * X[6]) - (sPAR[11] * (X[4] * X[17]))));
    F[18]=(sPAR[1] * ((sPAR[10] * X[6]) + ((sPAR[12] * X[14]) - (sPAR[13] * (X[18] * X[17])))));
    F[6]=(sPAR[1] * ((sPAR[9] * pow(X[17],2.0)) + ((sPAR[5] * (X[5] * X[9])) + ((X[6] * (((-(sPAR[17])) * X[9]) - sPAR[10])) - (sPAR[16] * (X[1] * X[6]))))));
    F[17]=((sPAR[1] * ((sPAR[4] * (X[8] * X[1])) + ((-2.0 * ((sPAR[9] * pow(X[17],2.0)) - (sPAR[17] * (X[6] * X[9])))) + (((-(sPAR[11])) * (X[4] * X[17])) - (sPAR[13] * (X[18] * X[17])))))) - (sPAR[6] * (X[17] * X[10])));
    F[8]=(sPAR[1] * ((2.0 * (sPAR[3] * (X[13] * X[2]))) - (sPAR[4] * (X[8] * X[1]))));
    F[13]=(sPAR[1] * ((sPAR[14] * (X[12] * X[1])) - (sPAR[3] * (X[13] * X[2]))));
    F[21]=((sPAR[8] * (X[20] * X[10])) - function_1(ACC[0]));
    F[20]=(function_1(ACC[0]) - (sPAR[8] * (X[20] * X[10])));
    F[7]=((sPAR[2] * (sPAR[7] * pow(X[19],2.0))) + (-2.0 * function_1(ACC[0])));
    F[15]=(function_1(ACC[0]) + ((sPAR[0] * (X[16] - X[15])) + ((sPAR[18] * (X[3] - X[15])) - (sPAR[20] * X[15]))));
    F[10]=((sPAR[2] * (sPAR[7] * pow(X[19],2.0))) + ((3.0 * function_1(ACC[0])) + (((-(sPAR[6])) * (X[17] * X[10])) - (sPAR[8] * (X[20] * X[10])))));
    F[11]=0.0;

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
    ACC[0]=0.00998718; //v_15
    sPAR[0]=0.0001; //D
    sPAR[1]=1.0; //chloroplast
    sPAR[2]=1.0; //cytosol
    sPAR[3]=0.006; //k1_0
    sPAR[4]=0.0207; //k1_1
    sPAR[5]=4e-05; //k1_10
    sPAR[6]=0.5; //k1_11
    sPAR[7]=1.55; //k1_12
    sPAR[8]=0.00755; //k1_14
    sPAR[9]=4.0; //k1_2
    sPAR[10]=0.031; //k1_3
    sPAR[11]=3.1; //k1_4
    sPAR[12]=0.31; //k1_5
    sPAR[13]=6.2; //k1_6
    sPAR[14]=0.031; //k1_7
    sPAR[15]=0.279; //k1_8
    sPAR[16]=0.002; //k1_9
    sPAR[17]=0.0; //k2_2
    sPAR[18]=0.0001; //phi
    sPAR[19]=1.0; //phloem
    sPAR[20]=3e-05; //r
    sPAR[21]=1.0; //vacuole
    X[0]=0.53; //ADP
    X[1]=3.875; //ATP
    X[2]=31.0; //CO2
    X[3]=0.5; //E
    X[4]=0.05; //E4P
    X[5]=99.9999999999999; //GG
    X[6]=2.2; //HeP
    X[7]=0.1; //HePc
    X[8]=2.4; //PGA
    X[9]=2.5; //Pi
    X[10]=0.8; //Pic
    X[11]=1.0; //Resp
    X[12]=0.05; //Ru5P
    X[13]=2.0; //RuBP
    X[14]=2.0; //S7P
    X[15]=77.31; //Suc
    X[16]=77.31; //SucV
    X[17]=0.5; //TP
    X[18]=0.2; //TPGA
    X[19]=0.114; //TPc
    X[20]=1.613; //UDP
    X[21]=3.871; //UTP

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
