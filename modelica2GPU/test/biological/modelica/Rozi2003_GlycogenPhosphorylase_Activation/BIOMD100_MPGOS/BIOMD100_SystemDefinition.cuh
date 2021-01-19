
#ifndef BIOMD100_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD100_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[1]=0.0;
    F[2]=(sPAR[23] * ((sPAR[19] * ((1.0 + (sPAR[26] * (pow(X[4],4.0) / (pow(sPAR[8],4.0) + pow(X[4],4.0))))) * ((1.0 - X[2]) / (1.0 + ((sPAR[2] / (1.0 + pow((X[4] / sPAR[9]),4.0))) - X[2]))))) - (sPAR[20] * ((1.0 + (sPAR[21] * (sPAR[0] / (sPAR[6] + sPAR[0])))) * (X[2] / ((sPAR[12] / (1.0 + (sPAR[0] / sPAR[7]))) + X[2]))))));
    F[3]=((sPAR[23] * (sPAR[16] * (pow(X[4],2.0) / (pow(sPAR[3],2.0) + pow(X[4],2.0))))) - (sPAR[27] * ((sPAR[17] * (pow(X[0],4.0) * (pow(X[3],2.0) * (pow(X[4],sPAR[28]) / (((pow(sPAR[14],sPAR[28]) + pow(X[4],sPAR[28])) * (pow(sPAR[13],2.0) + pow(X[3],2.0))) * (pow(sPAR[5],4.0) + pow(X[0],4.0))))))) + (sPAR[11] * X[3]))));
    F[0]=(sPAR[23] * ((sPAR[22] * sPAR[15]) + (((-(sPAR[18])) * (pow(X[0],sPAR[30]) * (pow(X[4],sPAR[29]) / ((pow(sPAR[10],sPAR[29]) + pow(X[4],sPAR[29])) * (pow(sPAR[4],sPAR[30]) + pow(X[0],sPAR[30])))))) - (sPAR[24] * X[0]))));
    F[4]=((sPAR[25] * (sPAR[31] + (sPAR[32] * sPAR[22]))) + ((sPAR[27] * ((sPAR[17] * (pow(X[0],4.0) * (pow(X[3],2.0) * (pow(X[4],sPAR[28]) / (((pow(sPAR[14],sPAR[28]) + pow(X[4],sPAR[28])) * (pow(sPAR[13],2.0) + pow(X[3],2.0))) * (pow(sPAR[5],4.0) + pow(X[0],4.0))))))) + (sPAR[11] * X[3]))) - (sPAR[23] * ((sPAR[16] * (pow(X[4],2.0) / (pow(sPAR[3],2.0) + pow(X[4],2.0)))) + (sPAR[1] * X[4])))));

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
    sPAR[0]=10000.0; //G
    sPAR[1]=10.0; //K
    sPAR[2]=0.1; //K1
    sPAR[3]=0.1; //K2
    sPAR[4]=1.0; //K5
    sPAR[5]=0.2; //Ka
    sPAR[6]=10000.0; //Ka1
    sPAR[7]=10000.0; //Ka2
    sPAR[8]=0.5; //Ka5
    sPAR[9]=0.5; //Ka6
    sPAR[10]=0.4; //Kd
    sPAR[11]=1.0; //Kf
    sPAR[12]=0.2; //Kp2
    sPAR[13]=0.2; //Ky
    sPAR[14]=0.5; //Kz
    sPAR[15]=2.0; //V4
    sPAR[16]=6.0; //Vm2
    sPAR[17]=20.0; //Vm3
    sPAR[18]=30.0; //Vm5
    sPAR[19]=1.5; //Vpm1
    sPAR[20]=0.6; //Vpm2
    sPAR[21]=9.0; //alpha
    sPAR[22]=0.5; //beta
    sPAR[23]=1.0; //cytosol
    sPAR[24]=0.1; //epsilon
    sPAR[25]=1.0; //extracellular
    sPAR[26]=9.0; //gamma
    sPAR[27]=1.0; //intravesicular
    sPAR[28]=2.0; //m
    sPAR[29]=4.0; //n
    sPAR[30]=2.0; //p
    sPAR[31]=2.0; //v0
    sPAR[32]=2.0; //v1
    X[0]=0.45; //A
    X[1]=1000.0; //EC
    X[2]=1.0; //GP
    X[3]=0.36; //Y
    X[4]=0.0; //Z

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
