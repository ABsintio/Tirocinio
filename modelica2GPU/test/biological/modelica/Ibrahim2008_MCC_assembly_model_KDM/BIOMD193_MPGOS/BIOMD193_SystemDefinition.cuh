
#ifndef BIOMD193_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD193_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[8]=0.0;
    F[1]=(sPAR[0] * ((X[8] * (sPAR[9] * (X[0] * X[2]))) - (sPAR[10] * X[1])));
    F[4]=(sPAR[0] * ((X[8] * (sPAR[7] * (X[3] * X[0]))) - (sPAR[8] * X[4])));
    F[0]=((-(sPAR[0])) * ((X[8] * (sPAR[7] * (X[3] * X[0]))) + ((X[8] * (sPAR[9] * (X[0] * X[2]))) + (((-(sPAR[10])) * X[1]) - (sPAR[8] * X[4])))));
    F[3]=(sPAR[0] * ((X[8] * (sPAR[5] * (X[6] * X[2]))) + ((sPAR[11] * (X[7] * X[2])) + ((sPAR[8] * X[4]) + (((-(X[8])) * (sPAR[7] * (X[3] * X[0]))) - (sPAR[6] * X[3]))))));
    F[2]=(sPAR[0] * ((sPAR[6] * X[3]) + ((sPAR[10] * X[1]) + (((-(X[8])) * ((sPAR[9] * (X[0] * X[2])) + (sPAR[5] * (X[6] * X[2])))) - (sPAR[11] * (X[7] * X[2]))))));
    F[6]=(sPAR[0] * ((X[8] * (sPAR[3] * (X[5] * X[7]))) + (((-(sPAR[4])) * X[6]) - (X[8] * (sPAR[5] * (X[6] * X[2]))))));
    F[7]=(sPAR[0] * ((sPAR[6] * X[3]) + ((sPAR[4] * X[6]) + (((-(X[8])) * (sPAR[3] * (X[5] * X[7]))) - (sPAR[11] * (X[7] * X[2]))))));
    F[5]=(sPAR[0] * ((X[8] * (sPAR[5] * (X[6] * X[2]))) + ((sPAR[4] * X[6]) - (X[8] * (sPAR[3] * (X[5] * X[7]))))));

}

template<class Precision> __forceinline__ __device__ void PerThread_EventFunction(
	int tid, int NT, Precision*	  EF, \
	Precision     T, Precision    dT, Precision*    TD, Precision*	X, \
	Precision* cPAR, Precision* sPAR, int*       sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[0]=T > 2000.0;

    EF[0] = (! (ACC[0]));
}

template<class Precision> __forceinline__ __device__ void PerThread_ActionAfterEventDetection(
    int tid, int NT, int IDX, int& UDT, \
    Precision    &T, Precision   &dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR, int*       sPARi, Precision* ACC, int* ACCi
) {
    if (IDX == 0){
	    X[8]=sPAR[1];
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
    ACC[0]=0; //$whenCondition1
    sPAR[0]=1.0; //Cytoplasm
    sPAR[1]=0.0; //const_val_0
    sPAR[2]=1.0; //const_val_1
    sPAR[3]=200000.0; //k1f
    sPAR[4]=0.2; //k1r
    sPAR[5]=10000000.0; //k2f
    sPAR[6]=0.01; //k3f
    sPAR[7]=10000000.0; //k4f
    sPAR[8]=0.02; //k4r
    sPAR[9]=10000.0; //k5f
    sPAR[10]=0.2; //k5r
    sPAR[11]=1000.0; //kf6
    X[0]=1.3e-07; //Bub3_BubR1
    X[1]=0.0; //Bub3_BubR1_Cdc20
    X[2]=2.2e-07; //Cdc20
    X[3]=0.0; //Cdc20_CMad2
    X[4]=0.0; //MCC
    X[5]=5e-08; //Mad1_CMad2
    X[6]=0.0; //Mad1_CMad2_OMad2
    X[7]=1.3e-07; //OMad2
    X[8]=1.0; //u

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
