
#ifndef BIOMD275_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD275_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[1]=(X[3] / (X[3] + sPAR[2]));
    ACC[2]=(X[1] / (X[1] + sPAR[3]));
    ACC[3]=(ACC[2] / ACC[1]);
    ACC[0]=(sPAR[5] * (sPAR[20] / sPAR[4]));
    ACC[4]=(sPAR[15]*sPAR[7]*(1-(sPAR[20]/sPAR[4]))); // L'XML se lo era scordato
    F[1]=(sPAR[6] * ((sPAR[17] * (ACC[0] * (pow(sPAR[1],sPAR[18]) / (pow(sPAR[1],sPAR[18]) + pow(X[3],sPAR[18]))))) - (sPAR[13] * X[1])));
    F[0]=(sPAR[6] * ((sPAR[16] * X[2]) - (sPAR[11] * X[0])));
    F[2]=(sPAR[6] * (sPAR[8] + ((sPAR[9] * (pow(X[1],sPAR[19]) / (pow(sPAR[0],sPAR[19]) + pow(X[1],sPAR[19])))) - (sPAR[12] * X[2]))));
    F[3]=(sPAR[6] * (ACC[4] - (X[3] * (sPAR[14] + (sPAR[10] * X[0])))));

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
    sPAR[5]=5.0; //M_0
    sPAR[20]=15.0; //x
    sPAR[4]=50.0; //L
    ACC[0]=(sPAR[5] * (sPAR[20] / sPAR[4])); //M_F
    ACC[1]=0.0; //alpha1
    ACC[2]=0.0; //alpha2
    ACC[3]=0.0; //rho
    ACC[4]=0.0; //vs1
    sPAR[0]=0.2; //Ka
    sPAR[1]=0.2; //Ki
    sPAR[2]=1.0; //Kr1
    sPAR[3]=1.0; //Kr2
    sPAR[6]=1.0; //PSM
    sPAR[7]=7.1; //RALDH2_0
    sPAR[8]=0.365; //V0
    sPAR[9]=7.1; //Vsc
    sPAR[10]=1.0; //kd1
    sPAR[11]=0.28; //kd2
    sPAR[12]=1.0; //kd3
    sPAR[13]=1.0; //kd4
    sPAR[14]=0.0; //kd5
    sPAR[15]=1.0; //ks1
    sPAR[16]=1.0; //ks2
    sPAR[17]=1.0; //ks3
    sPAR[18]=2.0; //m
    sPAR[19]=2.0; //n
    X[0]=0.1; //C
    X[1]=1.0; //F
    X[2]=0.1; //M_C
    X[3]=0.1; //RA

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
