
#ifndef BIOMD044_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD044_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[2]=((sPAR[9] * (pow(X[3],2.0) / (pow(sPAR[1],2.0) + pow(X[3],2.0)))) + (((-(sPAR[10])) * (pow(X[0],4.0) * (pow(X[2],2.0) * (pow(X[3],4.0) / (((pow(sPAR[7],4.0) + pow(X[3],4.0)) * (pow(sPAR[6],2.0) + pow(X[2],2.0))) * (pow(sPAR[2],4.0) + pow(X[0],4.0))))))) - (sPAR[4] * X[2])));
    F[0]=((sPAR[12] * sPAR[11]) + (((-(sPAR[8])) * (pow(X[0],2.0) * (pow(X[3],sPAR[14]) / ((pow(sPAR[3],sPAR[14]) + pow(X[3],sPAR[14])) * (pow(sPAR[5],2.0) + pow(X[0],2.0)))))) - (sPAR[13] * X[0])));
    F[3]=(sPAR[15] + ((sPAR[16] * sPAR[12]) + ((sPAR[10] * (pow(X[0],4.0) * (pow(X[2],2.0) * (pow(X[3],4.0) / (((pow(sPAR[7],4.0) + pow(X[3],4.0)) * (pow(sPAR[6],2.0) + pow(X[2],2.0))) * (pow(sPAR[2],4.0) + pow(X[0],4.0))))))) + ((sPAR[4] * X[2]) + (((-(sPAR[9])) * (pow(X[3],2.0) / (pow(sPAR[1],2.0) + pow(X[3],2.0)))) - (sPAR[0] * X[3]))))));
    F[1]=((sPAR[0] * X[3]) + ((-(sPAR[15])) - (sPAR[16] * sPAR[12])));

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
    sPAR[2]=0.2; //Ka
    sPAR[3]=0.4; //Kd
    sPAR[4]=1.0; //Kf
    sPAR[5]=1.0; //Kp
    sPAR[6]=0.2; //Ky
    sPAR[7]=0.3; //Kz
    sPAR[8]=80.0; //Vd
    sPAR[9]=6.5; //Vm2
    sPAR[10]=19.5; //Vm3
    sPAR[11]=2.5; //Vp
    sPAR[12]=0.5; //beta
    sPAR[13]=0.1; //epsilon
    sPAR[14]=4.0; //n
    sPAR[15]=2.0; //v0
    sPAR[16]=1.0; //v1
    X[0]=0.45; //A
    X[1]=1000.0; //EC
    X[2]=0.36; //Y
    X[3]=0.0; //Z

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
