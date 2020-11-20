
#ifndef BIOMD005_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD005_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[1]=(X[0] + (X[1] + (X[2] + X[5])));
    ACC[0]=pow((X[2] / ACC[1]),2.0);
    ACC[2]=(X[4] + (X[3] + (X[2] + X[5])));
    F[3]=((sPAR[12] * X[2]) - (sPAR[13] * X[3]));
    F[4]=(sPAR[6] + (((-(sPAR[7])) * X[4]) - (sPAR[8] * (X[1] * X[4]))));
    F[1]=((sPAR[14] * X[0]) + (X[1] * (((-(sPAR[8])) * X[4]) - sPAR[15])));
    F[0]=((sPAR[12] * X[2]) + ((sPAR[15] * X[1]) - (sPAR[14] * X[0])));
    F[5]=((sPAR[8] * (X[1] * X[4])) + ((sPAR[11] * X[2]) - (X[5] * (sPAR[10] + (sPAR[9] * ACC[0])))));
    F[2]=((X[5] * (sPAR[10] + (sPAR[9] * ACC[0]))) + (((-(sPAR[11])) - sPAR[12]) * X[2]));

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
    ACC[1]=1.0; //CT_amount
    ACC[2]=0.25; //YT_amount
    sPAR[0]=0.0; //initial_C2
    sPAR[1]=0.75; //initial_CP
    sPAR[2]=0.0; //initial_M
    sPAR[3]=0.0; //initial_Y
    sPAR[4]=0.0; //initial_YP
    sPAR[5]=0.25; //initial_pM
    sPAR[6]=0.015; //k1aaCT
    sPAR[7]=0.0; //k2
    sPAR[8]=200.0; //k3CT
    sPAR[9]=180.0; //k4
    sPAR[10]=0.018; //k4prime
    sPAR[11]=0.0; //k5tildeP
    sPAR[12]=1.0; //k6
    sPAR[13]=0.0; //k7
    sPAR[14]=1000000.0; //k8tildeP
    sPAR[15]=1000.0; //k9
    X[0]=sPAR[0]; //C2_conc
    X[1]=sPAR[1]; //CP_conc
    X[2]=sPAR[2]; //M_conc
    X[3]=sPAR[4]; //YP_conc
    X[4]=sPAR[3]; //Y_conc
    X[5]=sPAR[5]; //pM_conc

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
