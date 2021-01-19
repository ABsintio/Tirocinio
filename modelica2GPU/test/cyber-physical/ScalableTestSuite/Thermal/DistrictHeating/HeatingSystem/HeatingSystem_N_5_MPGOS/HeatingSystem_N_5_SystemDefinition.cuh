
#ifndef HEATINGSYSTEM_N_5_PERTHREAD_SYSTEMDEFINITION_H
#define HEATINGSYSTEM_N_5_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[16]=(0.5 + sat((15.0 * X[10]),-0.5,0.5));
    ACC[5]=(200.0 * ((X[0] - X[5]) * ACC[16]));
    ACC[15]=(0.5 + sat((15.0 * X[9]),-0.5,0.5));
    ACC[4]=(200.0 * ((X[0] - X[4]) * ACC[15]));
    ACC[14]=(0.5 + sat((15.0 * X[8]),-0.5,0.5));
    ACC[3]=(200.0 * ((X[0] - X[3]) * ACC[14]));
    ACC[13]=(0.5 + sat((15.0 * X[7]),-0.5,0.5));
    ACC[2]=(200.0 * ((X[0] - X[2]) * ACC[13]));
    ACC[12]=(0.5 + sat((15.0 * X[6]),-0.5,0.5));
    ACC[1]=(200.0 * ((X[0] - X[1]) * ACC[12]));
    ACC[0]=sat((3750.0 * (343.15 - X[0])),0.0,15000.0);
    ACC[11]=(278.15 + (8.0 * sin((7.27220521664304e-05 * T))));
    ACC[6]=(150.0 * (X[1] - ACC[11]));
    ACC[7]=(150.0 * (X[2] - ACC[11]));
    ACC[8]=(150.0 * (X[3] - ACC[11]));
    ACC[9]=(150.0 * (X[4] - ACC[11]));
    ACC[10]=(150.0 * (X[5] - ACC[11]));
    F[10]=(50.0 * hist(X[10],(293.15 - X[5]),0.5));
    F[9]=(50.0 * hist(X[9],(293.15 - X[4]),0.5));
    F[8]=(50.0 * hist(X[8],(293.15 - X[3]),0.5));
    F[7]=(50.0 * hist(X[7],(293.15 - X[2]),0.5));
    F[6]=(50.0 * hist(X[6],(293.15 - X[1]),0.5));
    F[0]=((1e-07 * ACC[0]) + (((((-1e-07 * ACC[5]) - (1e-07 * ACC[4])) - (1e-07 * ACC[3])) - (1e-07 * ACC[1])) - (1e-07 * ACC[2])));
    F[1]=(1e-07 * (ACC[1] - ACC[6]));
    F[2]=((ACC[2] - ACC[7]) / 13370000.0);
    F[3]=((ACC[3] - ACC[8]) / 16740000.0);
    F[4]=((ACC[4] - ACC[9]) / 20110000.0);
    F[5]=((ACC[5] - ACC[10]) / 23480000.0);

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
    ACC[0]=0.0; //Qd
    ACC[1]=0.0; //Qh[1]
    ACC[2]=0.0; //Qh[2]
    ACC[3]=0.0; //Qh[3]
    ACC[4]=0.0; //Qh[4]
    ACC[5]=0.0; //Qh[5]
    ACC[6]=0.0; //Que[1]
    ACC[7]=0.0; //Que[2]
    ACC[8]=0.0; //Que[3]
    ACC[9]=0.0; //Que[4]
    ACC[10]=0.0; //Que[5]
    ACC[11]=0.0; //Text
    ACC[12]=0.0; //u[1]
    ACC[13]=0.0; //u[2]
    ACC[14]=0.0; //u[3]
    ACC[15]=0.0; //u[4]
    ACC[16]=0.0; //u[5]
    sPARi[0]=5; //N
    X[0]=343.15; //Td
    X[1]=293.15; //Tu[1]
    X[2]=293.15; //Tu[2]
    X[3]=293.15; //Tu[3]
    X[4]=293.15; //Tu[4]
    X[5]=293.15; //Tu[5]
    X[6]=-0.5; //x[1]
    X[7]=-0.5; //x[2]
    X[8]=-0.5; //x[3]
    X[9]=-0.5; //x[4]
    X[10]=-0.5; //x[5]

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
