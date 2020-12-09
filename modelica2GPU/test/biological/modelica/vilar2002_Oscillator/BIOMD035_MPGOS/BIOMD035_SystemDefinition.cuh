
#ifndef BIOMD035_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD035_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[8]=((X[1] * sPAR[6]) + ((X[7] * sPAR[5]) + (X[8] * (((-(X[0])) * sPAR[11]) - sPAR[9]))));
    F[7]=((X[4] * sPAR[2]) + ((X[5] * sPAR[3]) - (X[7] * sPAR[8])));
    F[6]=((X[2] * sPAR[0]) + ((X[3] * sPAR[1]) - (X[6] * sPAR[7])));
    F[5]=((X[0] * (X[4] * sPAR[12])) - (X[5] * sPAR[14]));
    F[4]=((X[5] * sPAR[14]) - (X[4] * (X[0] * sPAR[12])));
    F[3]=((X[0] * (X[2] * sPAR[10])) - (X[3] * sPAR[13]));
    F[2]=((X[3] * sPAR[13]) - (X[2] * (X[0] * sPAR[10])));
    F[1]=((X[0] * (X[8] * sPAR[11])) - (X[1] * sPAR[6]));
    F[0]=((X[3] * sPAR[13]) + ((X[6] * sPAR[4]) + ((X[5] * sPAR[14]) - (X[0] * ((X[8] * sPAR[11]) + (sPAR[6] + ((X[2] * sPAR[10]) + (X[4] * sPAR[12]))))))));

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
    sPAR[0]=50.0; //alphaA
    sPAR[1]=500.0; //alphaAp
    sPAR[2]=0.01; //alphaR
    sPAR[3]=50.0; //alphaRp
    sPAR[4]=50.0; //betaA
    sPAR[5]=5.0; //betaR
    sPAR[6]=1.0; //deltaA
    sPAR[7]=10.0; //deltaMA
    sPAR[8]=0.5; //deltaMR
    sPAR[9]=0.2; //deltaR
    sPAR[10]=1.0; //gammaA
    sPAR[11]=2.0; //gammaC
    sPAR[12]=1.0; //gammaR
    sPAR[13]=50.0; //thetaA
    sPAR[14]=100.0; //thetaR
    X[0]=0.0; //A
    X[1]=0.0; //C
    X[2]=1.0; //DA
    X[3]=0.0; //DAp
    X[4]=1.0; //DR
    X[5]=0.0; //DRp
    X[6]=0.0; //MA
    X[7]=0.0; //MR
    X[8]=0.0; //R

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
