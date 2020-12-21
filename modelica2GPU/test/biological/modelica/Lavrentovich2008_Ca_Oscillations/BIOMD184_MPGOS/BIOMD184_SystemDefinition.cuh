
#ifndef BIOMD184_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD184_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[2]=(sPAR[1] * ((sPAR[15] * (pow(X[0],2.0) / (pow(X[0],2.0) + pow(sPAR[9],2.0)))) - (sPAR[5] * X[2])));
    F[1]=((sPAR[1] * (sPAR[12] * (pow(X[0],2.0) / (pow(X[0],2.0) + pow(sPAR[2],2.0))))) + (sPAR[0] * ((-4.0 * (sPAR[13] * (pow((sPAR[3] * X[0]),sPAR[11]) * (pow(X[2],sPAR[10]) * ((X[1] - X[0]) / (((pow(X[0],sPAR[11]) + pow(sPAR[3],sPAR[11])) * (pow(X[0],sPAR[11]) + pow(sPAR[4],sPAR[11]))) * (pow(X[2],sPAR[10]) + pow(sPAR[7],sPAR[10])))))))) + (sPAR[6] * (X[0] - X[1])))));
    F[0]=((sPAR[1] * sPAR[14]) + ((sPAR[0] * ((4.0 * (sPAR[13] * (pow((sPAR[3] * X[0]),sPAR[11]) * (pow(X[2],sPAR[10]) * ((X[1] - X[0]) / (((pow(X[0],sPAR[11]) + pow(sPAR[3],sPAR[11])) * (pow(X[0],sPAR[11]) + pow(sPAR[4],sPAR[11]))) * (pow(X[2],sPAR[10]) + pow(sPAR[7],sPAR[10])))))))) + (sPAR[6] * (X[1] - X[0])))) - (sPAR[1] * ((sPAR[8] * X[0]) + (sPAR[12] * (pow(X[0],2.0) / (pow(X[0],2.0) + pow(sPAR[2],2.0))))))));

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
    sPAR[0]=1.0; //ER
    sPAR[1]=1.0; //compartment
    sPAR[2]=0.1; //k2
    sPAR[3]=0.15; //k_CaA
    sPAR[4]=0.15; //k_CaI
    sPAR[5]=0.08; //kdeg
    sPAR[6]=0.5; //kf
    sPAR[7]=0.1; //kip3
    sPAR[8]=0.5; //kout
    sPAR[9]=0.3; //kp
    sPAR[10]=2.2; //m
    sPAR[11]=2.02; //n
    sPAR[12]=15.0; //vM2
    sPAR[13]=40.0; //vM3
    sPAR[14]=0.05; //vin
    sPAR[15]=0.05; //vp
    X[0]=0.1; //X
    X[1]=1.5; //Y
    X[2]=0.1; //Z

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
