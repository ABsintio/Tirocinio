
#ifndef BIOMD067_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD067_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[4]=0.0;
    F[7]=((sPAR[12] / (1.0 + pow((X[5] / sPAR[7]),sPAR[20]))) + (sPAR[9] - (sPAR[19] * X[7])));
    F[2]=((sPAR[11] * (pow((X[1] / sPAR[6]),sPAR[20]) / (1.0 + pow((X[1] / sPAR[6]),sPAR[20])))) + (sPAR[9] - (sPAR[19] * X[2])));
    F[5]=((sPAR[10] * (pow((X[1] / sPAR[5]),sPAR[20]) / (1.0 + pow((X[1] / sPAR[5]),sPAR[20])))) + (sPAR[9] - (sPAR[19] * X[5])));
    F[3]=((sPAR[0] * ((X[6] * sPAR[1]) - (sPAR[4] * X[3]))) + (sPAR[15] * (X[4] - X[3])));
    F[6]=((sPAR[16] * X[1]) + ((sPAR[0] * ((sPAR[4] * X[3]) - (X[6] * sPAR[1]))) + (((-(sPAR[14])) * (X[2] * (X[6] / (sPAR[3] + X[6])))) - (sPAR[17] * X[6]))));
    F[1]=((sPAR[13] * (X[7] * (X[0] / (sPAR[2] + X[0])))) + ((sPAR[17] * X[6]) - (sPAR[16] * X[1])));
    F[0]=(sPAR[8] + ((sPAR[14] * (X[2] * (X[6] / (sPAR[3] + X[6])))) + (((-(sPAR[18])) * X[0]) - (sPAR[13] * (X[7] * (X[0] / (sPAR[2] + X[0])))))));

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
    sPAR[0]=100.0; //C
    sPAR[1]=1e-07; //H
    sPAR[2]=0.06; //KM1
    sPAR[3]=0.1; //KM2
    sPAR[4]=0.0005; //Keq
    sPAR[5]=10.0; //Kg1
    sPAR[6]=10.0; //Kg2
    sPAR[7]=0.001; //Kg3
    sPAR[8]=0.5; //S0
    sPAR[9]=0.0; //alpha0
    sPAR[10]=0.1; //alpha1
    sPAR[11]=2.0; //alpha2
    sPAR[12]=2.0; //alpha3
    sPAR[13]=80.0; //k1
    sPAR[14]=0.8; //k2
    sPAR[15]=0.01; //k3
    sPAR[16]=1.0; //kAck_f
    sPAR[17]=1.0; //kAck_r
    sPAR[18]=10.0; //kTCA
    sPAR[19]=0.06; //kd
    sPAR[20]=2.0; //n
    X[0]=0.0; //AcCoA
    X[1]=0.0; //AcP
    X[2]=0.0; //Acs
    X[3]=0.0; //HOAc
    X[4]=0.0; //HOAc_E
    X[5]=0.0; //LacI
    X[6]=0.0; //OAc
    X[7]=0.0; //Pta

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
