
#ifndef BIOMD099_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD099_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[6]=(sPAR[1] * ((sPAR[10] * X[5]) - (sPAR[11] * (X[6] * X[2]))));
    F[5]=(sPAR[1] * ((sPAR[6] * X[0]) - (sPAR[7] * (X[5] * X[2]))));
    F[4]=(sPAR[1] * ((sPAR[2] * X[6]) - (sPAR[3] * X[4])));
    F[3]=(sPAR[1] * (sPAR[12] - (sPAR[13] * (X[3] * X[6]))));
    F[2]=(sPAR[1] * ((sPAR[8] * X[1]) - (sPAR[9] * X[2])));
    F[1]=(sPAR[1] * ((sPAR[14] * X[4]) - (sPAR[15] * (X[1] * X[3]))));
    F[0]=(sPAR[0] * ((sPAR[4] * X[4]) - (sPAR[5] * X[0])));

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
    sPAR[0]=1.0; //compartment_0
    sPAR[1]=1.0; //compartment_1
    sPAR[2]=1.4; //parameter_0
    sPAR[3]=0.9; //parameter_1
    sPAR[4]=0.6; //parameter_10
    sPAR[5]=3.1; //parameter_11
    sPAR[6]=33.0; //parameter_12
    sPAR[7]=4.5; //parameter_13
    sPAR[8]=2.5; //parameter_2
    sPAR[9]=1.5; //parameter_3
    sPAR[10]=0.6; //parameter_4
    sPAR[11]=0.8; //parameter_5
    sPAR[12]=2.0; //parameter_6
    sPAR[13]=1.3; //parameter_7
    sPAR[14]=0.29; //parameter_8
    sPAR[15]=1.0; //parameter_9
    X[0]=0.0; //species_0
    X[1]=1.0; //species_1
    X[2]=1.0; //species_2
    X[3]=2.5; //species_3
    X[4]=1.4; //species_4
    X[5]=1.5; //species_5
    X[6]=1.6; //species_6

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
