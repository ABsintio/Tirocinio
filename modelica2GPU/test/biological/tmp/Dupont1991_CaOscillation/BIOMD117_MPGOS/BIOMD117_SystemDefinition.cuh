
#ifndef BIOMD117_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD117_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[0]=pow(2.718281828459045,(-0.2 * (T - sPAR[13])));
    ACC[1]=(0.96 * (X[0] * ACC[0]));
    F[0]=0.0;
    F[1]=((sPAR[7] * (sPAR[4] * (pow(X[2],sPAR[11]) / (pow(sPAR[1],sPAR[11]) + pow(X[2],sPAR[11]))))) + (((-(sPAR[9])) * (X[1] * sPAR[0])) - (sPAR[0] * (sPAR[5] * (pow(X[1],sPAR[10]) * (pow(X[2],sPAR[12]) / ((pow(sPAR[3],sPAR[10]) + pow(X[1],sPAR[10])) * (pow(sPAR[2],sPAR[12]) + pow(X[2],sPAR[12])))))))));
    F[2]=((sPAR[15] * (ACC[1] * sPAR[0])) + ((sPAR[14] * sPAR[0]) + ((sPAR[9] * (X[1] * sPAR[0])) + ((sPAR[0] * (sPAR[5] * (pow(X[1],sPAR[10]) * (pow(X[2],sPAR[12]) / ((pow(sPAR[3],sPAR[10]) + pow(X[1],sPAR[10])) * (pow(sPAR[2],sPAR[12]) + pow(X[2],sPAR[12]))))))) + (((-(sPAR[7])) * (sPAR[4] * (pow(X[2],sPAR[11]) / (pow(sPAR[1],sPAR[11]) + pow(X[2],sPAR[11]))))) - (sPAR[8] * (X[2] * sPAR[6])))))));

}

template<class Precision> __forceinline__ __device__ void PerThread_EventFunction(
	int tid, int NT, Precision*	  EF, \
	Precision     T, Precision    dT, Precision*    TD, Precision*	X, \
	Precision* cPAR, Precision* sPAR, int*       sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[2]=T > sPAR[13];

    EF[0] = (! (ACC[2]));
}

template<class Precision> __forceinline__ __device__ void PerThread_ActionAfterEventDetection(
    int tid, int NT, int IDX, int& UDT, \
    Precision    &T, Precision   &dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR, int*       sPARi, Precision* ACC, int* ACCi
) {
    if (IDX == 0){
	    X[0]=1.0;
    }

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
    ACC[0]=0.0; //$cse1
    ACC[1]=0.0; //beta
    ACC[2]=0; //$whenCondition1
    sPAR[0]=1.0; //Cytosol
    sPAR[1]=1.0; //K2
    sPAR[2]=0.9; //KA
    sPAR[3]=2.0; //KR
    sPAR[4]=65.0; //VM2
    sPAR[5]=500.0; //VM3
    sPAR[6]=1.0; //extracellular
    sPAR[7]=1.0; //intracellular_Ca_storepool
    sPAR[8]=10.0; //k
    sPAR[9]=1.0; //kf
    sPAR[10]=2.0; //m
    sPAR[11]=2.0; //n
    sPAR[12]=4.0; //p
    sPAR[13]=4.0; //tstim
    sPAR[14]=1.0; //v0
    sPAR[15]=7.3; //v1
    X[0]=0.0; //flag
    X[1]=1.4; //y
    X[2]=0.1; //z

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
