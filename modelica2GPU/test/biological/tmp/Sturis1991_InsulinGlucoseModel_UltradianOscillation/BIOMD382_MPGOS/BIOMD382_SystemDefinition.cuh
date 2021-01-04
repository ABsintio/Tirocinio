
#ifndef BIOMD382_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD382_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[3]=(4.0 + (90.0 / (1.0 + pow(2.718281828459045,(7.76 + (-1.772 * log((X[4] * ((1.0 / sPAR[7]) + (1.0 / (sPAR[4] * sPAR[0])))))))))));
    ACC[4]=(180.0 / (1.0 + pow(2.718281828459045,(-7.5 + (0.29 * (X[2] / sPAR[6]))))));
    ACC[2]=(0.01 * (X[5] / sPAR[8]));
    ACC[1]=(72.0 * (1.0 - pow(2.718281828459045,(-0.006944444444444444 * (X[5] * sPAR[8])))));
    ACC[0]=(209.0 / (1.0 + pow(2.718281828459045,(6.6 + (-0.003333333333333334 * (X[5] / sPAR[8]))))));
    F[2]=(3.0 * ((X[1] - X[2]) / sPAR[5]));
    F[1]=(3.0 * ((X[0] - X[1]) / sPAR[5]));
    F[0]=(3.0 * ((X[3] - X[0]) / sPAR[5]));
    F[4]=((sPAR[0] * ((X[3] / sPAR[6]) - (X[4] / sPAR[7]))) - (X[4] / sPAR[4]));
    F[5]=(ACC[4] + (sPAR[1] + ((-(ACC[1])) - (ACC[2] * ACC[3]))));
    F[3]=(ACC[0] + ((sPAR[0] * ((X[4] / sPAR[7]) - (X[3] / sPAR[6]))) - (X[3] / sPAR[3])));

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
    ACC[0]=0.0; //f1
    ACC[1]=0.0; //f2
    ACC[2]=0.0; //f3
    ACC[3]=0.0; //f4
    ACC[4]=0.0; //f5
    sPAR[0]=0.21; //E
    sPAR[1]=216.0; //I
    sPAR[2]=1.0; //compartment1
    sPAR[3]=6.0; //t1
    sPAR[4]=100.0; //t2
    sPAR[5]=36.0; //t3
    sPAR[6]=3.0; //v1
    sPAR[7]=11.0; //v2
    sPAR[8]=10.0; //v3
    X[0]=70.0; //h1
    X[1]=70.0; //h2
    X[2]=70.0; //h3
    X[3]=90.0; //x
    X[4]=180.0; //y
    X[5]=13000.0; //z

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
