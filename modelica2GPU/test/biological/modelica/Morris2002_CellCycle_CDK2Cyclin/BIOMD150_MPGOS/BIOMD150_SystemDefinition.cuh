
#ifndef BIOMD150_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD150_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[0]=((13888657.40740741 * (X[0] + X[1])) + X[4]);
    F[4]=0.0;
    F[1]=((sPAR[3] * (X[0] * sPAR[0])) - (sPAR[1] * (X[1] * sPAR[0])));
    F[2]=((sPAR[2] * (X[0] * sPAR[0])) - (sPAR[4] * (X[2] * (X[3] * sPAR[0]))));
    F[3]=((sPAR[2] * (X[0] * sPAR[0])) - (sPAR[4] * (X[2] * (X[3] * sPAR[0]))));
    F[0]=((sPAR[4] * (X[2] * (X[3] * sPAR[0]))) + ((sPAR[1] * (X[1] * sPAR[0])) + (((-(sPAR[3])) - sPAR[2]) * (X[0] * sPAR[0]))));

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
    ACC[0]=0.138886574074074; //total_fluorescence
    sPAR[0]=1.0; //geometry
    sPAR[1]=0.5570000000000001; //kb_Activation
    sPAR[2]=25.0; //kb_Binding
    sPAR[3]=0.8129999999999999; //kf_Activation
    sPAR[4]=19000000.0; //kf_Binding
    X[0]=0.0; //CDK2cycA
    X[1]=0.0; //CDK2cycA_star_
    X[2]=1e-07; //Cdk2
    X[3]=4e-07; //CyclinA
    X[4]=1.21210648148148; //basal_fluorescence

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
