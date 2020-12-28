
#ifndef MANYEVENTSMANYCONDITIONS_PERTHREAD_SYSTEMDEFINITION_H
#define MANYEVENTSMANYCONDITIONS_PERTHREAD_SYSTEMDEFINITION_H

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
    ACC[0]=X[4] > 1.0;
    ACC[1]=ACC[14];
    ACC[2]=X[3] > 1.0;
    ACC[9]=ACC[13];
    ACC[3]=X[2] > 1.0;
    ACC[8]=ACC[12];
    ACC[4]=X[1] > 1.0;
    ACC[7]=ACC[11];
    ACC[5]=X[0] > 1.0;
    ACC[6]=ACC[10];

    EF[2] = (! (ACC[3]));
    EF[5] = (! (((((ACC[1] || ACC[9]) || ACC[8]) || ACC[7]) || ACC[6])));
    EF[4] = (! (ACC[5]));
    EF[1] = (! (ACC[2]));
    EF[3] = (! (ACC[4]));
    EF[0] = (! (ACC[0]));
}

template<class Precision> __forceinline__ __device__ void PerThread_ActionAfterEventDetection(
    int tid, int NT, int IDX, int& UDT, \
    Precision    &T, Precision   &dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR, int*       sPARi, Precision* ACC, int* ACCi
) {
    if (IDX == 0){
	    ACC[14]=1;
    }
    if (IDX == 1){
	    ACC[13]=1;
    }
    if (IDX == 2){
	    ACC[12]=1;
    }
    if (IDX == 3){
	    ACC[11]=1;
    }
    if (IDX == 4){
	    ACC[10]=1;
    }
    if (IDX == 5){
	    ACCi[0]=(1 + ACCi[1]);
    }

}

template<class Precision> __forceinline__ __device__ void PerThread_ActionAfterSuccessfulTimeStep(
    int tid, int NT, int& UDT, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR, int*       sPARi, Precision* ACC, int* ACCi
) {
    ACC[19]=ACC[14];
    ACC[18]=ACC[13];
    ACC[17]=ACC[12];
    ACC[16]=ACC[11];
    ACC[15]=ACC[10];
    ACCi[1]=ACCi[0];

}

template<class Precision> __forceinline__ __device__ void PerThread_Initialization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
    T     = TD[0];
    DOIDX = 0;
    ACC[0]=0; //$whenCondition1
    ACC[1]=0; //$whenCondition10
    ACC[2]=0; //$whenCondition2
    ACC[3]=0; //$whenCondition3
    ACC[4]=0; //$whenCondition4
    ACC[5]=0; //$whenCondition5
    ACC[6]=0; //$whenCondition6
    ACC[7]=0; //$whenCondition7
    ACC[8]=0; //$whenCondition8
    ACC[9]=0; //$whenCondition9
    ACC[10]=0; //e[1]
    ACC[11]=0; //e[2]
    ACC[12]=0; //e[3]
    ACC[13]=0; //e[4]
    ACC[14]=0; //e[5]
    ACCi[0]=0; //v
    sPARi[0]=5; //M
    sPARi[1]=5; //N
    X[0]=0.0; //x[1]
    X[1]=0.0; //x[2]
    X[2]=0.0; //x[3]
    X[3]=0.0; //x[4]
    X[4]=0.0; //x[5]
    ACC[15]=0; //$PRE.e[1]
    ACC[16]=0; //$PRE.e[2]
    ACC[17]=0; //$PRE.e[3]
    ACC[18]=0; //$PRE.e[4]
    ACC[19]=0; //$PRE.e[5]
    ACCi[1]=0; //$PRE.v

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
