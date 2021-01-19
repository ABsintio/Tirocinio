
#ifndef BIOMD402_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD402_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[2]=-0.3734000000000001;
    ACC[0]=(pow(0.06666666666666667,(1.0 / ACC[2])) * pow(0.005,(-0.1054999999999999 / ACC[2])));
    ACC[1]=(pow(0.06666666666666667,(1.2 / ACC[2])) * pow(0.005,(-0.5 / ACC[2])));
    ACC[4]=piecewise((X[0] - ACC[0]),gt(X[0],ACC[0]),0.0);
    ACC[3]=piecewise((X[1] - ACC[1]),gt(X[1],ACC[1]),0.0);
    F[2]=(0.005 * (X[2] * log((100.0 / X[2]))));
    F[0]=((4.0 * (pow(X[1],1.0) * pow(X[0],(-0.002 * X[2])))) + (-0.02 * X[0]));
    F[1]=((3.0 * (pow(X[1],(1.1 * (1.0 + (5e-05 * X[2])))) * pow(X[0],-0.5))) + (-0.2 * X[1]));
    F[3]=((0.0006395 * ACC[4]) + (-0.07480000000000001 * ACC[3]));

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
    ACC[0]=0.0; //B_bar
    ACC[1]=0.0; //C_bar
    ACC[2]=0.0; //gamma
    ACC[3]=0.0; //y1
    ACC[4]=0.0; //y2
    sPAR[0]=1.0; //Compartment
    sPAR[1]=100.0; //LT
    sPAR[2]=3.0; //alpha1
    sPAR[3]=4.0; //alpha2
    sPAR[4]=0.2; //beta1
    sPAR[5]=0.02; //beta2
    sPAR[6]=1.1; //g11
    sPAR[7]=1.0; //g12
    sPAR[8]=-0.5; //g21
    sPAR[9]=0.0; //g22
    sPAR[10]=0.005; //gammaT
    sPAR[11]=0.07480000000000001; //k1
    sPAR[12]=0.0006395; //k2
    sPAR[13]=0.005; //r11
    sPAR[14]=0.0; //r12
    sPAR[15]=0.0; //r21
    sPAR[16]=0.2; //r22
    X[0]=316.0; //B
    X[1]=15.0; //C
    X[2]=1.0; //Tumour
    X[3]=100.0; //z

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
