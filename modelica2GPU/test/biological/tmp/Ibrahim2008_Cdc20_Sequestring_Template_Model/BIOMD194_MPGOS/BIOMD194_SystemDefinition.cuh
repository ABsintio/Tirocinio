
#ifndef BIOMD194_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD194_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[5]=0.0;
    F[1]=(sPAR[0] * ((X[5] * (sPAR[6] * (X[3] * X[0]))) - (sPAR[5] * X[1])));
    F[0]=(sPAR[0] * ((sPAR[5] * X[1]) - (X[5] * (sPAR[6] * (X[3] * X[0])))));
    F[3]=(sPAR[0] * ((X[5] * (sPAR[1] * (X[2] * X[4]))) + (((-(sPAR[2])) * X[3]) - (X[5] * (sPAR[6] * (X[3] * X[0]))))));
    F[4]=(sPAR[0] * ((sPAR[5] * X[1]) + ((sPAR[2] * X[3]) - (X[5] * (sPAR[1] * (X[2] * X[4]))))));
    F[2]=(sPAR[0] * ((X[5] * (sPAR[6] * (X[3] * X[0]))) + ((sPAR[2] * X[3]) - (X[5] * (sPAR[1] * (X[2] * X[4]))))));

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
	    X[5]=sPAR[3];
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
    sPAR[1]=200000.0; //alpha_T
    sPAR[2]=0.2; //beta_T
    sPAR[3]=0.0; //const_val_0
    sPAR[4]=1.0; //const_val_1
    sPAR[5]=0.01; //eta_T
    sPAR[6]=1000000000.0; //gamma_T
    X[0]=2.2e-07; //Cdc20
    X[1]=0.0; //Cdc20_CMad2
    X[2]=5e-08; //Mad1_CMad2
    X[3]=0.0; //Mad1_CMad2_OMad2
    X[4]=1.5e-07; //OMad2
    X[5]=1.0; //u

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
