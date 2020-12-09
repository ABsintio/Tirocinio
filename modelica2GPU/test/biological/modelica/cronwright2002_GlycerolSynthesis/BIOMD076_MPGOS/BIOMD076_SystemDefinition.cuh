
#ifndef BIOMD076_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD076_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[2]=0.0;
    F[0]=0.0;
    F[1]=((sPAR[17] * (((sPAR[14] * X[0]) - (sPAR[13] * (X[1] / sPAR[12]))) / ((((sPAR[9] * sPAR[5]) * (1.0 + ((sPAR[2] / sPAR[6]) + ((sPAR[1] / sPAR[4]) + (sPAR[0] / sPAR[3]))))) * (1.0 + ((sPAR[14] / sPAR[9]) + (sPAR[13] / sPAR[8])))) * (1.0 + ((X[0] / sPAR[5]) + (X[1] / sPAR[7])))))) - (sPAR[16] * (X[1] / ((sPAR[10] * (1.0 + (X[1] / sPAR[10]))) * (1.0 + (sPAR[15] / sPAR[11]))))));

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
    sPAR[0]=2.17; //ADP
    sPAR[1]=2.37; //ATP
    sPAR[2]=6.01; //F16BP
    sPAR[3]=2.0; //K1adp
    sPAR[4]=0.73; //K1atp
    sPAR[5]=0.54; //K1dhap
    sPAR[6]=4.8; //K1f16bp
    sPAR[7]=1.2; //K1g3p
    sPAR[8]=0.93; //K1nad
    sPAR[9]=0.023; //K1nadh
    sPAR[10]=3.5; //K2g3p
    sPAR[11]=1.0; //K2phi
    sPAR[12]=10000.0; //Keq1
    sPAR[13]=1.45; //NAD
    sPAR[14]=1.87; //NADH
    sPAR[15]=1.0; //Phi
    sPAR[16]=53.0; //V2
    sPAR[17]=47.0; //Vf1
    X[0]=0.59; //DHAP
    X[1]=0.0; //G3P
    X[2]=15.1; //Gly

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
