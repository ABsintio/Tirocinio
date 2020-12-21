
#ifndef BIOMD185_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD185_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[0]=(0.5 * (X[0] + X[1]));
    F[1]=(sPAR[8] * ((sPAR[11] * X[3]) - (sPAR[17] * (X[1] / (sPAR[5] + X[1])))));
    F[7]=(sPAR[8] * ((sPAR[10] * X[5]) - (sPAR[16] * (X[7] / (sPAR[4] + X[7])))));
    F[5]=(sPAR[8] * ((sPAR[9] * X[3]) - (sPAR[15] * (X[5] / (sPAR[3] + X[5])))));
    F[0]=(sPAR[8] * ((sPAR[11] * X[2]) - (sPAR[17] * (X[0] / (sPAR[5] + X[0])))));
    F[6]=(sPAR[8] * ((sPAR[10] * X[4]) - (sPAR[16] * (X[6] / (sPAR[4] + X[6])))));
    F[4]=(sPAR[8] * ((sPAR[9] * X[2]) - (sPAR[15] * (X[4] / (sPAR[3] + X[4])))));
    F[2]=(sPAR[8] * ((sPAR[13] * (pow(sPAR[1],sPAR[12]) / (pow(sPAR[1],sPAR[12]) + pow(X[6],sPAR[12])))) + ((sPAR[18] * (sPAR[0] * (ACC[0] / (sPAR[6] + (sPAR[0] * ACC[0]))))) + (sPAR[7] - (sPAR[14] * (X[2] / (sPAR[2] + X[2])))))));
    F[3]=(sPAR[8] * ((sPAR[13] * (pow(sPAR[1],sPAR[12]) / (pow(sPAR[1],sPAR[12]) + pow(X[7],sPAR[12])))) + ((sPAR[18] * (sPAR[0] * (ACC[0] / (sPAR[6] + (sPAR[0] * ACC[0]))))) + (sPAR[7] - (sPAR[14] * (X[3] / (sPAR[2] + X[3])))))));

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
    ACC[0]=0.0; //F
    sPAR[0]=1.0; //K
    sPAR[1]=2.7266; //K1
    sPAR[2]=0.291; //K2
    sPAR[3]=8.1343; //K4
    sPAR[4]=9.9849; //K6
    sPAR[5]=7.4519; //K8
    sPAR[6]=4.8283; //Kc
    sPAR[7]=0.0; //L
    sPAR[8]=1.0; //compartment
    sPAR[9]=0.1177; //k3
    sPAR[10]=0.3352; //k5
    sPAR[11]=0.2282; //k7
    sPAR[12]=5.6645; //n
    sPAR[13]=6.8355; //v_1
    sPAR[14]=8.4297; //v_2
    sPAR[15]=1.0841; //v_4
    sPAR[16]=4.6645; //v_6
    sPAR[17]=3.5216; //v_8
    sPAR[18]=6.7924; //vc
    X[0]=2.5; //V1
    X[1]=0.0; //V2
    X[2]=4.25; //X1
    X[3]=0.0; //X2
    X[4]=3.25; //Y1
    X[5]=0.0; //Y2
    X[6]=2.25; //Z1
    X[7]=0.0; //Z2

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
