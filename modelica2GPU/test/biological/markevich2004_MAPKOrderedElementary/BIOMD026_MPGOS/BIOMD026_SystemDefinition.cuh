
#ifndef BIOMD026_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD026_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[4]=((sPAR[4] * X[7]) + ((sPAR[9] * (X[0] * X[2])) - (sPAR[5] * X[4])));
    F[7]=((sPAR[3] * (X[5] * X[2])) + (((-(sPAR[8])) - sPAR[4]) * X[7]));
    F[8]=((sPAR[1] * X[10]) + ((sPAR[7] * (X[5] * X[2])) - (sPAR[2] * X[8])));
    F[10]=((sPAR[0] * (X[9] * X[2])) + (((-(sPAR[6])) - sPAR[1]) * X[10]));
    F[6]=((sPAR[12] * (X[5] * X[1])) + (((-(sPAR[15])) - sPAR[13]) * X[6]));
    F[3]=((sPAR[10] * (X[0] * X[1])) + (((-(sPAR[14])) - sPAR[11]) * X[3]));
    F[2]=((sPAR[2] * X[8]) + ((sPAR[5] * X[4]) + ((sPAR[6] * X[10]) + ((sPAR[8] * X[7]) + (((((-(sPAR[9])) * (X[0] * X[2])) - (sPAR[3] * (X[5] * X[2]))) - (sPAR[0] * (X[9] * X[2]))) - (sPAR[7] * (X[5] * X[2])))))));
    F[1]=((sPAR[11] * X[3]) + ((sPAR[13] * X[6]) + ((sPAR[14] * X[3]) + ((sPAR[15] * X[6]) + (((-(sPAR[12])) * (X[5] * X[1])) - (sPAR[10] * (X[0] * X[1])))))));
    F[9]=((sPAR[13] * X[6]) + ((sPAR[6] * X[10]) - (sPAR[0] * (X[9] * X[2]))));
    F[5]=((sPAR[11] * X[3]) + ((sPAR[2] * X[8]) + ((sPAR[15] * X[6]) + ((sPAR[8] * X[7]) + ((X[5] * (((-(sPAR[7])) * X[2]) - (sPAR[12] * X[1]))) - (sPAR[3] * (X[5] * X[2])))))));
    F[0]=((sPAR[5] * X[4]) + ((sPAR[14] * X[3]) + (X[0] * (((-(sPAR[10])) * X[1]) - (sPAR[9] * X[2])))));

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
    sPAR[0]=0.045; //h1
    sPAR[1]=0.092; //h2
    sPAR[2]=1.0; //h3
    sPAR[3]=0.01; //h4
    sPAR[4]=0.5; //h5
    sPAR[5]=0.08599999999999999; //h6
    sPAR[6]=1.0; //h_1
    sPAR[7]=0.01; //h_3
    sPAR[8]=1.0; //h_4
    sPAR[9]=0.001; //h_6
    sPAR[10]=0.02; //k1
    sPAR[11]=0.01; //k2
    sPAR[12]=0.032; //k3
    sPAR[13]=15.0; //k4
    sPAR[14]=1.0; //k_1
    sPAR[15]=1.0; //k_3
    X[0]=500.0; //M
    X[1]=50.0; //MAPKK
    X[2]=100.0; //MKP3
    X[3]=0.0; //M_MAPKK
    X[4]=0.0; //M_MKP3
    X[5]=0.0; //Mp
    X[6]=0.0; //Mp_MAPKK
    X[7]=0.0; //Mp_MKP3
    X[8]=0.0; //Mp_MKP3_dep
    X[9]=0.0; //Mpp
    X[10]=0.0; //Mpp_MKP3

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
