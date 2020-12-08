
#ifndef BIOMD065_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD065_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[6]=0.0;
    F[4]=((sPAR[10] * (X[7] * pow(3.141592653589793,((-(sPAR[19])) * (sPAR[20] + sPAR[22]))))) - (X[4] / (sPAR[20] + sPAR[22])));
    F[3]=((sPAR[7] * (X[7] * pow(3.141592653589793,(sPAR[19] * sPAR[20])))) - (X[3] / sPAR[20]));
    F[2]=((sPAR[9] * ((1.0 + (sPAR[1] * (pow(3.141592653589793,(-2.0 * (sPAR[19] * sPAR[21]))) * pow(X[0],2.0)))) / (sPAR[0] + (sPAR[1] * (pow(3.141592653589793,(-2.0 * (sPAR[19] * sPAR[21]))) * pow(X[0],2.0)))))) - (X[2] * sPAR[21]));
    F[8]=((X[4] / (sPAR[20] + sPAR[22])) - (X[8] * (sPAR[18] + sPAR[19])));
    F[5]=((sPAR[8] * (X[8] * (X[6] / (sPAR[5] + X[6])))) + ((((-(sPAR[6])) * (X[1] * (X[5] / (sPAR[3] + X[5])))) - (X[5] * (sPAR[15] + sPAR[19]))) - (sPAR[12] * (X[8] * (X[5] / (sPAR[4] + X[5]))))));
    F[0]=((sPAR[6] * (X[1] * (X[5] / (sPAR[3] + X[5])))) + (((-(X[0])) * (sPAR[13] + sPAR[19])) - (sPAR[11] * (X[1] * (X[0] / (sPAR[2] + X[0]))))));
    F[1]=((X[3] / sPAR[20]) - (X[1] * (sPAR[14] + sPAR[19])));
    F[7]=(sPAR[17] + ((X[2] * sPAR[21]) - (X[7] * (sPAR[16] + sPAR[19]))));

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
    sPAR[0]=7200.0; //K
    sPAR[1]=25200.0; //K_1
    sPAR[2]=1.95; //K_A
    sPAR[3]=0.97; //K_L
    sPAR[4]=1.81; //K_L1
    sPAR[5]=0.26; //K_Le
    sPAR[6]=17600.0; //alpha_A
    sPAR[7]=0.017; //alpha_B
    sPAR[8]=2880.0; //alpha_L
    sPAR[9]=0.0009970000000000001; //alpha_M
    sPAR[10]=10.0; //alpha_P
    sPAR[11]=21500.0; //beta_A
    sPAR[12]=2650.0; //beta_L1
    sPAR[13]=0.52; //gamma_A
    sPAR[14]=0.000833; //gamma_B
    sPAR[15]=0.0; //gamma_L
    sPAR[16]=0.411; //gamma_M
    sPAR[17]=7.25e-07; //gamma_O
    sPAR[18]=0.65; //gamma_P
    sPAR[19]=0.023; //mu
    sPAR[20]=2.0; //tau_B
    sPAR[21]=0.1; //tau_M
    sPAR[22]=0.83; //tau_P
    X[0]=0.038; //A
    X[1]=0.0; //B
    X[2]=0.0; //I1
    X[3]=0.0; //I2
    X[4]=0.0; //I3
    X[5]=0.372; //L
    X[6]=0.0; //L_e
    X[7]=0.000626; //M
    X[8]=0.0149; //P

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
