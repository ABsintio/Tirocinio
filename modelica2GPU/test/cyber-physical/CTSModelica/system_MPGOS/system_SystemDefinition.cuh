
#ifndef SYSTEM_PERTHREAD_SYSTEMDEFINITION_H
#define SYSTEM_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[1]=((sPAR[2] * X[0]) + ((sPAR[3] * X[1]) + (sPAR[5] * ACC[6])));
    F[0]=((sPAR[0] * X[0]) + ((sPAR[1] * X[1]) + (sPAR[4] * ACC[6])));

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
    ACCi[2]=ACCi[2];
    ACCi[2]=(!ACCi[3]);
    ACCi[1]=(abs(T - (1.0 + ACCi[4] * sPAR[12])) < 9.0e-10 ? 1.0 : 0.0);
    ACCi[4]=ACCi[1] ? 1 + ACCi[4] : ACCi[4];
    ACCi[0]=(abs(T - (0.0 + ACCi[5] * sPAR[13])) < 9.0e-10 ? 1.0 : 0.0);
    ACCi[5]=ACCi[0] ? 1 + ACCi[5] : ACCi[5];
    ACC[0]=((sPAR[6] * X[0]) + (sPAR[7] * X[1]));
    ACC[4]=sqrt((pow(X[0],2) + pow(X[1],2)));
    ACCi[3]=((ACC[4] <= 0.2 && ACC[5] >= 10.0) || ACC[5] < 10.0);
    ACC[5]=(ACCi[1] ? (1.0 + ACC[5]) : ACC[5]);
    ACC[6]=(ACCi[0] ? ((sPAR[10] * X[0]) + (sPAR[11] * X[1])) : ACC[6]);

}

template<class Precision> __forceinline__ __device__ void PerThread_Initialization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
    T     = TD[0];
    DOIDX = 0;
    ACC[1]=0.01;
    ACC[2]=6.0;
    ACC[3]=0.0;
    ACCi[0]=1;
    ACCi[1]=0;
    sPAR[0]=4.0;
    sPAR[1]=1.0;
    sPAR[2]=0.0;
    sPAR[3]=5.0;
    sPAR[4]=1.0;
    sPAR[5]=1.0;
    sPAR[6]=1.0;
    sPAR[7]=0.0;
    sPAR[8]=0.1;
    sPAR[9]=0.2;
    sPAR[10]=1.0;
    sPAR[11]=1.0;
    sPAR[12]=1.0;
    sPAR[13]=1.0;
    X[0]=sPAR[8];
    X[1]=sPAR[9];
    ACCi[4]=0;
    ACCi[5]=0;
    ACCi[2]=ACCi[2];
    ACCi[2]=(!ACCi[3]);
    ACC[0]=((sPAR[6] * X[0]) + (sPAR[7] * X[1]));
    ACC[4]=sqrt((pow(X[0],2) + pow(X[1],2)));
    ACCi[3]=((ACC[4] <= 0.2 && ACC[5] >= 10.0) || ACC[5] < 10.0);

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
