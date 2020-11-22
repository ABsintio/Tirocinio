
#ifndef BIOMD010_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD010_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[2]=((sPAR[20] * (X[7] * (X[1] / (sPAR[7] + X[1])))) - (sPAR[15] * (X[2] / (sPAR[8] + X[2]))));
    F[1]=((sPAR[19] * (X[7] * (X[0] / (sPAR[6] + X[0])))) + ((sPAR[15] * (X[2] / (sPAR[8] + X[2]))) + (((-(sPAR[20])) * (X[7] * (X[1] / (sPAR[7] + X[1])))) - (sPAR[11] * (X[1] / (sPAR[0] + X[1]))))));
    F[0]=((sPAR[11] * (X[1] / (sPAR[0] + X[1]))) - (sPAR[19] * (X[7] * (X[0] / (sPAR[6] + X[0])))));
    F[7]=((sPAR[18] * (X[5] * (X[6] / (sPAR[3] + X[6])))) - (sPAR[13] * (X[7] / (sPAR[4] + X[7]))));
    F[6]=((sPAR[17] * (X[5] * (X[3] / (sPAR[2] + X[3])))) + ((sPAR[13] * (X[7] / (sPAR[4] + X[7]))) + (((-(sPAR[18])) * (X[5] * (X[6] / (sPAR[3] + X[6])))) - (sPAR[14] * (X[6] / (sPAR[5] + X[6]))))));
    F[3]=((sPAR[14] * (X[6] / (sPAR[5] + X[6]))) - (sPAR[17] * (X[5] * (X[3] / (sPAR[2] + X[3])))));
    F[5]=((sPAR[10] * (X[4] / ((1.0 + (X[2] / sPAR[9])) * (sPAR[16] + X[4])))) - (sPAR[12] * (X[5] / (sPAR[1] + X[5]))));
    F[4]=((sPAR[12] * (X[5] / (sPAR[1] + X[5]))) - (sPAR[10] * (X[4] / ((1.0 + (X[2] / sPAR[9])) * (sPAR[16] + X[4])))));

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
    sPAR[0]=15.0; //KK10
    sPAR[1]=8.0; //KK2
    sPAR[2]=15.0; //KK3
    sPAR[3]=15.0; //KK4
    sPAR[4]=15.0; //KK5
    sPAR[5]=15.0; //KK6
    sPAR[6]=15.0; //KK7
    sPAR[7]=15.0; //KK8
    sPAR[8]=15.0; //KK9
    sPAR[9]=9.0; //Ki
    sPAR[10]=2.5; //V1
    sPAR[11]=0.5; //V10
    sPAR[12]=0.25; //V2
    sPAR[13]=0.75; //V5
    sPAR[14]=0.75; //V6
    sPAR[15]=0.5; //V9
    sPAR[16]=10.0; //k1
    sPAR[17]=0.025; //k3
    sPAR[18]=0.025; //k4
    sPAR[19]=0.025; //k7
    sPAR[20]=0.025; //k8
    sPAR[21]=1.0; //n
    X[0]=280.0; //MAPK
    X[1]=10.0; //MAPK_P
    X[2]=10.0; //MAPK_PP
    X[3]=280.0; //MKK
    X[4]=90.0; //MKKK
    X[5]=10.0; //MKKK_P
    X[6]=10.0; //MKK_P
    X[7]=10.0; //MKK_PP

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
