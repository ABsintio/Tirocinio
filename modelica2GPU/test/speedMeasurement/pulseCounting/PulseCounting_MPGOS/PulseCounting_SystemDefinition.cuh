
#ifndef PULSECOUNTING_PERTHREAD_SYSTEMDEFINITION_H
#define PULSECOUNTING_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[1]=(((sPAR[2] * (X[2] - X[3])) + ((sPAR[4] * (X[0] - X[1])) + (((-(sPAR[3])) * X[3]) - (sPAR[5] * X[1])))) / sPAR[1]);
    F[3]=X[1];
    F[0]=(((sPAR[2] * (X[3] - X[2])) + (sPAR[4] * (X[1] - X[0]))) / sPAR[0]);
    F[2]=X[0];
    F[4]=0.0;
    F[5]=0.0;
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
    ACC[5]=ACC[1];
    ACC[1]=ACC[5];
    ACCi[4]=ACCi[0];
    ACCi[0]=ACCi[4];
    ACC[3]=ACC[2];
    ACC[2]=ACC[3];
    ACC[4]=ACC[0];
    ACC[0]=ACC[4];
    ACCi[7]=ACCi[1];
    ACCi[1]=X[2] >= ACC[4];
    ACCi[6]=ACCi[2];
    ACCi[2]=X[2] <= ACC[3];
    ACCi[5]=ACCi[3];
    ACCi[8]=ACCi[3] ? 1 + ACCi[8] : ACCi[8];
    if ((ACCi[2] || ACCi[1])){
        ACC[4]=ACC[0];
        ACC[0]=(X[2] + sPAR[7]);
        ACC[3]=ACC[2];
        ACC[2]=(X[2] - sPAR[7]);
        ACCi[4]=ACCi[0];
        ACCi[0]=(1 + ACCi[4]);
        X[5]=ACCi[0];
    }
    if (ACCi[3]){
        ACC[5]=ACC[1];
        ACC[1]=(ACCi[4] * (sPAR[7] / sPAR[6]));
        X[4]=ACC[1];
        ACCi[4]=ACCi[0];
        ACCi[0]=0;
        X[5]=ACCi[0];
    }
    ACCi[3]=abs(T - ((round(0.0 * 100) / 100) + ACCi[8] * (round(sPAR[6] * 100) / 100))) < 9.0e-10;

}

template<class Precision> __forceinline__ __device__ void PerThread_Initialization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
    T     = TD[0];
    DOIDX = 0;
    X[2]=0.0;
    sPAR[7]=0.0314159;
    ACC[0]=(X[2] + sPAR[7]);
    ACC[5]=0.0;
    ACC[1]=ACC[5];
    ACC[2]=(X[2] - sPAR[7]);
    ACCi[0]=0.0;
    ACCi[1]=0;
    ACCi[2]=0;
    ACCi[3]=1;
    sPAR[0]=0.4;
    sPAR[1]=1.0;
    sPAR[2]=11.0;
    sPAR[3]=5.0;
    sPAR[4]=0.2;
    sPAR[5]=1.0;
    sPAR[6]=0.125;
    sPARi[0]=200;
    X[0]=0.0;
    X[1]=0.0;
    X[3]=1.0;
    ACC[3]=(X[2] - sPAR[7]);
    ACC[4]=(X[2] + sPAR[7]);
    ACCi[4]=0.0;
    ACCi[5]=0;
    ACCi[6]=0;
    ACCi[7]=0;
    ACCi[8]=0;
    X[4]=ACC[1];
    X[5]=ACCi[0];
}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
