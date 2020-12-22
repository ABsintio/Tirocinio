
#ifndef BIOMD291_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD291_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[4]=(X[2] + ((-(X[4])) - (sPAR[13] * X[5])));
    ACC[1]=pow(ACC[4],sPAR[13]);
    ACC[0]=pow(ACC[4],(1.0 + sPAR[13]));
    ACC[3]=(X[1] + ((-2.0 * X[6]) + ((-(X[4])) - X[3])));
    ACC[2]=(X[0] + (((-(X[3])) - X[5]) - X[6]));
    F[2]=0.0;
    F[1]=0.0;
    F[0]=0.0;
    F[4]=((sPAR[9] * (ACC[4] * ACC[3])) + ((sPAR[12] * (X[3] * ACC[0])) + ((sPAR[4] * (X[6] * ACC[4])) - (sPAR[11] * X[4]))));
    F[6]=((sPAR[7] * ((sPAR[1] * (X[3] * ACC[3])) - X[6])) - (sPAR[4] * (X[6] * ACC[4])));
    F[3]=((sPAR[0] * (sPAR[6] * (ACC[2] * ACC[3]))) + ((sPAR[7] * X[6]) + ((sPAR[4] * (X[6] * ACC[4])) + (((-(X[3])) * (sPAR[6] + (sPAR[12] * ACC[0]))) - (sPAR[1] * (sPAR[7] * (X[3] * ACC[3])))))));
    F[5]=((sPAR[8] * (ACC[1] * ACC[2])) + ((sPAR[12] * (X[3] * ACC[0])) - (sPAR[10] * X[5])));

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
    ACC[0]=0.0; //$cse1
    ACC[1]=0.0; //$cse2
    ACC[2]=0.0; //x5
    ACC[3]=0.0; //x6
    ACC[4]=0.0; //x7
    sPAR[0]=95000.0; //K_AlB
    sPAR[1]=3000.0; //K_AlB2
    sPAR[2]=1.0; //compartment
    sPAR[3]=0.484; //k1
    sPAR[4]=0.1325; //k10
    sPAR[5]=0.07958; //k2
    sPAR[6]=5.095e-06; //k3
    sPAR[7]=2.656e-05; //k4
    sPAR[8]=0.005489; //k5
    sPAR[9]=3.226e-07; //k6
    sPAR[10]=0.00301; //k7
    sPAR[11]=1.011e-07; //k8
    sPAR[12]=0.01685; //k9
    sPAR[13]=1.0; //n
    X[0]=0.4615385; //A0
    X[1]=0.1754386; //B0
    X[2]=1.174; //C0
    X[3]=0.0; //x1
    X[4]=0.0; //x2
    X[5]=0.0; //x3
    X[6]=0.0; //x4

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
