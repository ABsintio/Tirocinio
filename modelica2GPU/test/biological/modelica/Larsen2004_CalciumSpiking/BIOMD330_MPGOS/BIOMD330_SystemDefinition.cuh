
#ifndef BIOMD330_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD330_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[0]=pow(X[4],4.0);
    ACC[1]=pow(sPAR[1],4.0); // Non presente nell'XML
    ACC[2]=pow(X[1],8.0);
    ACC[3]=pow(sPAR[4],8.0); // Non presente nell'XML
    F[2]=((sPAR[16] * (ACC[2] / (ACC[3] + ACC[2]))) + ((X[1] - X[2]) * (sPAR[18] * (X[1] / (X[1] + sPAR[5])))));
    F[0]=((sPAR[15] * (X[1] / (X[1] + sPAR[3]))) + ((X[1] - X[0]) * (sPAR[11] * (X[1] * (ACC[0] / (ACC[0] + ACC[1]))))));
    F[1]=(((X[0] - X[1]) * (sPAR[11] * (X[1] * (ACC[0] / (ACC[0] + ACC[1]))))) + ((sPAR[12] * X[4]) + ((sPAR[13] * X[3]) + ((X[1] * (((-(sPAR[14])) / (X[1] + sPAR[2])) - (sPAR[15] / (X[1] + sPAR[3])))) + (((X[2] - X[1]) * (sPAR[18] * (X[1] / (X[1] + sPAR[5])))) - (sPAR[16] * (ACC[2] / (ACC[3] + ACC[2]))))))));
    F[4]=((sPAR[21] * X[3]) - (sPAR[22] * (X[4] / (X[4] + sPAR[8]))));
    F[3]=(sPAR[10] + ((X[3] * (sPAR[17] - (sPAR[19] * (X[4] / (X[3] + sPAR[6]))))) - (sPAR[20] * (X[3] * (X[1] / (X[3] + sPAR[7]))))));

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
    ACC[2]=0.0; //$cse3
    ACC[3]=0.0; //$cse4
    sPAR[0]=1.0; //ER
    sPAR[1]=2.667; //K11
    sPAR[2]=0.16; //K15
    sPAR[3]=0.05; //K17
    sPAR[4]=2.0; //K19
    sPAR[5]=1.5; //K21
    sPAR[6]=0.783; //K4
    sPAR[7]=0.7; //K6
    sPAR[8]=29.09; //K9
    sPAR[9]=1.0; //cytoplasm
    sPAR[10]=0.35; //k1
    sPAR[11]=0.93; //k10
    sPAR[12]=0.76; //k12
    sPAR[13]=0.0; //k13
    sPAR[14]=149.0; //k14
    sPAR[15]=20.9; //k16
    sPAR[16]=79.0; //k18
    sPAR[17]=0.0; //k2
    sPAR[18]=1.5; //k20
    sPAR[19]=0.0001; //k3
    sPAR[20]=1.24; //k5
    sPAR[21]=5.82; //k7
    sPAR[22]=32.24; //k8
    sPAR[23]=1.0; //mit
    X[0]=10.0; //Ca_ER
    X[1]=0.01; //Ca_cyt
    X[2]=0.001; //Ca_mit
    X[3]=0.01; //G_alpha
    X[4]=0.01; //PLC

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
