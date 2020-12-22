
#ifndef BIOMD110_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD110_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[1]=(X[7] + (X[8] + X[9]));
    ACC[0]=((X[0] + ((((-(X[7])) - X[8]) - X[2]) - X[3])) / (sPAR[8] * X[0]));
    F[3]=(sPAR[8] * (((sPAR[5] + (sPAR[9] * X[7])) * X[2]) + (((-(sPAR[2])) * X[3]) - (sPAR[19] * (sPAR[20] * X[3])))));
    F[2]=(sPAR[8] * ((sPAR[17] * (X[7] * X[1])) + ((sPAR[2] * X[3]) + ((((-(sPAR[5])) - (sPAR[9] * X[7])) - sPAR[18]) * X[2]))));
    F[1]=(((sPAR[15] + ((sPAR[18] * X[2]) - (sPAR[17] * (X[7] * X[1])))) * sPAR[8]) - (sPAR[8] * (sPAR[16] * X[1])));
    F[4]=(sPAR[8] * ((pow(X[7],2.0) / ((pow(sPAR[1],2.0) + pow(X[7],2.0)) * sPAR[0])) - (X[4] / sPAR[0])));
    F[6]=(sPAR[8] * (((sPAR[6] + (sPAR[10] * X[7])) * X[5]) + (((-(sPAR[3])) - sPAR[14]) * X[6])));
    F[5]=(sPAR[8] * (sPAR[13] + ((sPAR[3] * X[6]) + ((((-(sPAR[6])) - (sPAR[10] * X[7])) * X[5]) - (X[5] * sPAR[14])))));
    F[12]=(sPAR[8] * (((sPAR[7] + (sPAR[11] * X[7])) * X[11]) + (((-(sPAR[4])) - sPAR[30]) * X[12])));
    F[11]=(sPAR[8] * (((sPAR[7] + (sPAR[11] * X[7])) * X[10]) + ((((-(sPAR[7])) - (sPAR[11] * X[7])) * X[11]) + ((sPAR[4] * X[12]) + (((-(X[11])) * sPAR[4]) - (sPAR[30] * X[11]))))));
    F[10]=(sPAR[8] * (sPAR[29] + ((((-(sPAR[7])) - (sPAR[11] * X[7])) * X[10]) + ((X[11] * sPAR[4]) - (sPAR[30] * X[10])))));
    F[0]=0.0;
    F[7]=(sPAR[8] * ((sPAR[19] * (sPAR[20] * X[3])) + ((((-(sPAR[26])) - X[5]) * X[7]) + (((X[12] + sPAR[25]) * X[8]) + ((sPAR[18] * X[2]) + (X[7] * ((((-(sPAR[17])) * X[1]) - sPAR[27]) - (sPAR[28] * X[4]))))))));
    F[8]=(sPAR[8] * ((sPAR[23] * (ACC[0] * X[9])) + (((sPAR[26] + X[5]) * X[7]) + ((((-(sPAR[25])) - X[12]) * X[8]) - (X[8] * sPAR[24])))));
    F[9]=(sPAR[8] * (sPAR[12] + ((X[8] * sPAR[24]) + ((((-(sPAR[21])) - (sPAR[22] * X[4])) * X[9]) - (sPAR[23] * (ACC[0] * X[9]))))));

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
    ACC[0]=0.0; //c
    ACC[1]=0.0; //totalCyclin
    sPAR[0]=25.0; //Tau
    sPAR[1]=4.0; //a
    sPAR[2]=10.0; //ai
    sPAR[3]=10.0; //aw
    sPAR[4]=10.0; //az
    sPAR[5]=0.1; //bi
    sPAR[6]=0.1; //bw
    sPAR[7]=0.1; //bz
    sPAR[8]=1.0; //cell
    sPAR[9]=1.0; //ci
    sPAR[10]=1.0; //cw
    sPAR[11]=1.0; //cz
    sPAR[12]=300.0; //k1
    sPAR[13]=10.0; //k10
    sPAR[14]=1.0; //k11
    sPAR[15]=0.0; //k12
    sPAR[16]=1.0; //k13
    sPAR[17]=1.0; //k14
    sPAR[18]=1.0; //k15
    sPAR[19]=2.0; //k16
    sPAR[20]=25.0; //k16u
    sPAR[21]=5.0; //k2
    sPAR[22]=50.0; //k2u
    sPAR[23]=30.0; //k3
    sPAR[24]=30.0; //k4
    sPAR[25]=0.1; //k5
    sPAR[26]=1.0; //k6
    sPAR[27]=10.0; //k7
    sPAR[28]=0.0; //k7u
    sPAR[29]=100.0; //k8
    sPAR[30]=1.0; //k9
    X[0]=200.0; //c0
    X[1]=0.0; //i
    X[2]=0.0; //ix
    X[3]=0.0; //ixp
    X[4]=0.0; //u
    X[5]=0.0; //w0
    X[6]=0.0; //w1
    X[7]=0.1; //x
    X[8]=0.1; //x1
    X[9]=0.0; //y
    X[10]=0.0; //z0
    X[11]=0.0; //z1
    X[12]=0.0; //z2

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
