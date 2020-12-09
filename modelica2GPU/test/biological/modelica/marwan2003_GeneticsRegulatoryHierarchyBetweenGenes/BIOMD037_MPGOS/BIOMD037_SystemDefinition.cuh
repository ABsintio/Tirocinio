
#ifndef BIOMD037_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD037_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[2]=(sPAR[6] * X[3]);
    F[5]=((sPAR[3] / (1.0 + pow(X[4],3.0))) - (X[5] * sPAR[8]));
    F[9]=(sPAR[4] * (X[8] * X[0]));
    F[0]=0.0;
    F[4]=((X[10] * (sPAR[11] * X[8])) + ((sPAR[2] / (1.0 + pow(X[5],3.0))) - (sPAR[7] * X[4])));
    F[8]=((-(sPAR[4])) * (X[8] * X[0]));
    F[10]=((X[11] * (sPAR[10] * X[6])) - (X[10] * (sPAR[11] * X[8])));
    F[11]=((-(X[11])) * (sPAR[10] * X[6]));
    F[6]=((X[7] * (sPAR[9] * X[3])) - (sPAR[5] * X[6]));
    F[7]=((sPAR[5] * X[6]) - (X[7] * (sPAR[9] * X[3])));
    F[3]=((X[1] * sPAR[0]) + (((-(sPAR[1])) - sPAR[6]) * X[3]));
    F[1]=((sPAR[1] * X[3]) - (X[1] * sPAR[0]));

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
    sPAR[0]=0.1; //IfrSfrPfr
    sPAR[1]=0.0; //IrSrPr
    sPAR[2]=30.0; //alpha1
    sPAR[3]=50.0; //alpha2
    sPAR[4]=0.1; //kG
    sPAR[5]=0.8; //kai
    sPAR[6]=0.1; //kd
    sPAR[7]=1.0; //kd_s
    sPAR[8]=1.0; //kd_v
    sPAR[9]=0.1; //kia
    sPAR[10]=0.2; //kx
    sPAR[11]=1.0; //ky
    X[0]=0.0; //Gluc
    X[1]=10.0; //Pfr
    X[2]=0.0; //Pi
    X[3]=0.0; //Pr
    X[4]=0.0; //S
    X[5]=30.0; //V
    X[6]=0.0; //Xa
    X[7]=6.0; //Xi
    X[8]=0.9; //Ya
    X[9]=0.0; //Yi
    X[10]=0.0; //preS
    X[11]=200.0; //prepreS

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
