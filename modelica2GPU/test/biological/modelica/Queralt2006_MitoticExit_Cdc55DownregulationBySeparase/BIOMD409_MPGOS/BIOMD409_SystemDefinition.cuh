
#ifndef BIOMD409_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD409_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[1]=(1.0 - X[1]);
    ACC[0]=(0.5 - X[7]);
    ACC[4]=(1.0 - (X[6] + X[7]));
    ACC[3]=X[4];
    ACC[6]=(X[9] - X[8]);
    ACC[8]=(X[12] - X[13]);
    ACC[7]=(1.0 - X[10]);
    ACC[2]=(1.0 - X[3]);
    ACC[9]=(X[14] - X[13]);
    ACC[5]=((1.0 + (2.0 * ACC[9])) / (1.0 + (20.0 * ACC[9])));
    F[0]=0.0;
    F[11]=0.0;
    F[9]=(0.01 - ((0.01 + (0.25 * X[3])) * X[9]));
    F[14]=(0.001 + (-0.004 * X[14]));
    F[12]=(0.03 - ((0.05 + (2.0 * X[2])) * X[12]));
    F[2]=(0.015 - ((0.05 + (2.0 * X[3])) * X[2]));
    F[4]=(0.03 - ((0.03 + ((0.2 * X[2]) + (2.0 * X[3]))) * X[4]));
    F[7]=((500.0 * (X[6] * ACC[0])) + ((((-0.4 * ACC[3]) + (-2.0 * X[5])) * (X[7] / (0.2 + (X[6] + X[7])))) - X[7]));
    F[1]=(((0.02 + (0.5 * ACC[0])) * (ACC[1] / (1.2 - X[1]))) + (-0.2 * (ACC[3] * (X[1] / (0.2 + X[1])))));
    F[8]=((0.5 * (ACC[3] * (ACC[6] / (0.25 + ACC[6])))) + (X[8] * (-0.01 + ((-0.1 / (0.25 + X[8])) + (-0.25 * X[3])))));
    F[3]=(((0.01 + ACC[0]) * (ACC[2] / (1.0015 - X[3]))) - (ACC[3] * (X[3] / (0.0015 + X[3]))));
    F[6]=((((0.1 * ACC[0]) + (0.45 * ACC[5])) * (ACC[4] / (0.2 + ACC[4]))) + (X[7] + (X[6] * ((((-0.4 * ACC[3]) + (-2.0 * X[5])) / (0.2 + (X[6] + X[7]))) + (-500.0 * ACC[0])))));
    F[10]=((0.5 * (X[8] * (ACC[7] / (1.005 - X[10])))) + ((-0.1 - ACC[5]) * (X[10] / (0.005 + X[10]))));
    F[5]=((10.0 * ((X[10] - X[5]) * (X[1] - X[5]))) + ((X[5] * (-0.1 + ((-0.1 - ACC[5]) / (0.005 + X[10])))) + (-0.2 * (ACC[3] * (X[5] / (0.2 + X[1]))))));
    F[13]=((500.0 * (ACC[8] * ACC[9])) + (X[13] * (-1.054 + (-2.0 * X[2]))));

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
    ACC[0]=0.0; //Cdc14
    ACC[1]=0.0; //Cdc15_i
    ACC[2]=0.0; //Cdh1_i
    ACC[3]=0.0; //Cdk
    ACC[4]=0.0; //Net1P
    ACC[5]=0.0; //PP2A
    ACC[6]=0.0; //Polo_i
    ACC[7]=0.0; //Tem1_i
    ACC[8]=0.0; //securin
    ACC[9]=0.0; //separase
    X[0]=1.0; //AA
    X[1]=0.0257; //Cdc15
    X[2]=0.0; //Cdc20
    X[3]=3.8e-05; //Cdh1
    X[4]=0.997; //Clb2
    X[5]=8e-06; //MEN
    X[6]=0.098; //Net1
    X[7]=0.485; //Net1Cdc14
    X[8]=0.945; //Polo
    X[9]=0.99; //PoloT
    X[10]=0.00389; //Tem1
    X[11]=1.0; //degr
    X[12]=0.6; //securinT
    X[13]=0.248; //securinseparase
    X[14]=0.25; //separaseT

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
