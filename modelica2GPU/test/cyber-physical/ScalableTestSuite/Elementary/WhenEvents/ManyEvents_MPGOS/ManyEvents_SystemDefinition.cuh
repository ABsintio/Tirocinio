
#ifndef MANYEVENTS_PERTHREAD_SYSTEMDEFINITION_H
#define MANYEVENTS_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[0]=1.0;
    F[1]=1.25;
    F[2]=1.666666666666667;
    F[3]=2.5;
    F[4]=5.0;

}

template<class Precision> __forceinline__ __device__ void PerThread_EventFunction(
	int tid, int NT, Precision*	  EF, \
	Precision     T, Precision    dT, Precision*    TD, Precision*	X, \
	Precision* cPAR, Precision* sPAR, int*       sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[0]=X[0] > 1.0;
    ACC[1]=X[1] > 1.0;
    ACC[2]=X[2] > 1.0;
    ACC[3]=X[3] > 1.0;
    ACC[4]=X[4] > 1.0;

    EF[3] = (! (ACC[3]));
    EF[2] = (! (ACC[2]));
    EF[1] = (! (ACC[1]));
    EF[0] = (! (ACC[0]));
    EF[4] = (! (ACC[4]));
}

template<class Precision> __forceinline__ __device__ void PerThread_ActionAfterEventDetection(
    int tid, int NT, int IDX, int& UDT, \
    Precision    &T, Precision   &dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR, int*       sPARi, Precision* ACC, int* ACCi
) {
    if (IDX == 0){
	    ACC[5]=1;
    }
    if (IDX == 1){
	    ACC[6]=1;
    }
    if (IDX == 2){
	    ACC[7]=1;
    }
    if (IDX == 3){
	    ACC[8]=1;
    }
    if (IDX == 4){
	    ACC[9]=1;
    }

}

template<class Precision> __forceinline__ __device__ void PerThread_ActionAfterSuccessfulTimeStep(
    int tid, int NT, int& UDT, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR, int*       sPARi, Precision* ACC, int* ACCi
) {
    ACC[10]=ACC[5];
    ACC[11]=ACC[6];
    ACC[12]=ACC[7];
    ACC[13]=ACC[8];
    ACC[14]=ACC[9];

}

template<class Precision> __forceinline__ __device__ void PerThread_Initialization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
    T     = TD[0];
    DOIDX = 0;
    ACC[0]=0; //$whenCondition1
    ACC[1]=0; //$whenCondition2
    ACC[2]=0; //$whenCondition3
    ACC[3]=0; //$whenCondition4
    ACC[4]=0; //$whenCondition5
    ACC[5]=0; //e[1]
    ACC[6]=0; //e[2]
    ACC[7]=0; //e[3]
    ACC[8]=0; //e[4]
    ACC[9]=0; //e[5]
    sPARi[0]=5; //M
    sPARi[1]=5; //N
    X[0]=0.0; //x[1]
    X[1]=0.0; //x[2]
    X[2]=0.0; //x[3]
    X[3]=0.0; //x[4]
    X[4]=0.0; //x[5]
    ACC[10]=0; //$PRE.e[1]
    ACC[11]=0; //$PRE.e[2]
    ACC[12]=0; //$PRE.e[3]
    ACC[13]=0; //$PRE.e[4]
    ACC[14]=0; //$PRE.e[5]

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
