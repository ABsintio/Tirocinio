
#ifndef BIOMD197_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD197_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[0]=(X[2] + X[3]);
    ACC[1]=(X[0] + (X[1] + (X[2] + (X[3] + X[4]))));
    F[4]=((X[2] * (sPAR[4] + sPAR[7])) + (sPAR[3] * (X[0] - X[4])));
    F[3]=((sPAR[11] * (X[2] * (sPAR[2] - X[3]))) - (sPAR[1] * X[3]));
    F[2]=((X[0] * (sPAR[0] + sPAR[5])) + ((sPAR[1] * X[3]) + (X[2] * ((sPAR[11] * (X[3] - sPAR[2])) + (((-(sPAR[7])) - sPAR[6]) - sPAR[4])))));
    F[1]=((sPAR[8] * (X[0] * (sPAR[10] - X[1]))) - (sPAR[9] * X[1]));
    F[0]=((sPAR[6] * X[2]) + ((sPAR[9] * X[1]) + ((X[0] * ((sPAR[8] * (X[1] - sPAR[10])) + ((-(sPAR[5])) - sPAR[0]))) + (sPAR[3] * (X[4] - X[0])))));

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
    ACC[0]=0.0; //BSP_cell
    ACC[1]=0.0; //BSP_tot
    sPAR[0]=0.0025; //p1
    sPAR[1]=1.6; //p10
    sPAR[2]=1000.0; //p11
    sPAR[3]=0.0003; //p12
    sPAR[4]=0.0784; //p2
    sPAR[5]=0.0013; //p3
    sPAR[6]=0.0827; //p4
    sPAR[7]=0.0091; //p5
    sPAR[8]=6.4e-05; //p6
    sPAR[9]=0.0397; //p7
    sPAR[10]=1000.0; //p8
    sPAR[11]=0.0098; //p9
    X[0]=88.0; //x1
    X[1]=0.0; //x2
    X[3]=0.0; //x4
    X[2]=(ACC[0] - X[3]); //x3
    X[4]=0.0; //x5

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
