
#ifndef BIOMD043_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD043_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[1]=((sPAR[2] * (pow(X[4],4.0) * X[2])) + (sPAR[4] * (-1.0 + X[2])));
    F[3]=((sPAR[6] * (pow(X[4],2.0) / (pow(sPAR[1],2.0) + pow(X[4],2.0)))) + (((-(sPAR[9])) * (X[2] * (sPAR[8] * (pow(X[4],4.0) * (sPAR[7] * (pow(X[3],2.0) / (((pow(sPAR[5],2.0) + pow(X[3],2.0)) * sPAR[10]) * (1.0 + (sPAR[8] * (pow(X[4],4.0) / sPAR[10])))))))))) - (sPAR[3] * X[3])));
    F[2]=((sPAR[4] * (1.0 - X[2])) - (sPAR[2] * (pow(X[4],4.0) * X[2])));
    F[4]=(sPAR[11] + ((sPAR[9] * (sPAR[12] + (X[2] * (sPAR[8] * (pow(X[4],4.0) * (sPAR[7] * (pow(X[3],2.0) / (((pow(sPAR[5],2.0) + pow(X[3],2.0)) * sPAR[10]) * (1.0 + (sPAR[8] * (pow(X[4],4.0) / sPAR[10]))))))))))) + ((sPAR[3] * X[3]) + (((-(sPAR[6])) * (pow(X[4],2.0) / (pow(sPAR[1],2.0) + pow(X[4],2.0)))) - (sPAR[0] * X[4])))));
    F[0]=((sPAR[0] * X[4]) + ((-(sPAR[11])) - (sPAR[12] * sPAR[9])));

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
    sPAR[0]=10.0; //K
    sPAR[1]=0.1; //K2
    sPAR[2]=5000.0; //Kd
    sPAR[3]=1.0; //Kf
    sPAR[4]=5.0; //Kr
    sPAR[5]=0.2; //Ky
    sPAR[6]=6.5; //Vm2
    sPAR[7]=50.0; //Vm3
    sPAR[8]=40000.0; //a
    sPAR[9]=1.0; //beta
    sPAR[10]=100.0; //d
    sPAR[11]=1.0; //v0
    sPAR[12]=1.0; //v1
    X[0]=0.0; //EC
    X[1]=0.0; //Fraction_Inactive_Channels
    X[2]=0.0; //Rho
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
