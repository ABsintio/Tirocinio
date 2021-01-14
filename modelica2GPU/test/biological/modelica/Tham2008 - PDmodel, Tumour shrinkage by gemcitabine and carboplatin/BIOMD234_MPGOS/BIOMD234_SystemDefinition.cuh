
#ifndef BIOMD234_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD234_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[3]=(1.0 / sPAR[9]);
    ACC[4]=(sPAR[8] * ACC[3]);
    ACC[2]=(0.6931471805599453 / sPAR[10]);
    ACC[5]=(T - (floor((T / sPAR[2])) * sPAR[2]));
    ACC[1]=piecewise_2(sPAR[3],((lt(T,(sPAR[2] * sPAR[7])) && lt(sPAR[4],ACC[5])) && lt(ACC[5],sPAR[6])),sPAR[3],((lt(T,(sPAR[2] * sPAR[7])) && lt(sPAR[5],ACC[5])) && lt(ACC[5],(sPAR[5] + sPAR[6]))),0.0);
    ACC[0]=(1.0 - (X[0] / (sPAR[0] + X[0])));
    F[0]=(ACC[1] - (X[0] * ACC[2]));
    F[1]=(((ACC[4] * ACC[0]) - (ACC[3] * X[1])) * X[1]);

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
    ACC[0]=0.0; //Effect
    ACC[1]=0.0; //Exposure
    ACC[2]=0.0; //Keq
    ACC[3]=0.0; //Kover
    ACC[4]=0.0; //RateIn
    ACC[5]=0.0; //rem_time
    sPAR[0]=10600.0; //AE50
    sPAR[1]=1.0; //COMpartment
    sPAR[2]=3.0; //Cycle_Int
    sPAR[3]=5203.84; //Dose
    sPAR[4]=0.0; //Dose_Int1
    sPAR[5]=1.0; //Dose_Int2
    sPAR[6]=0.44359; //Dose_Length
    sPAR[7]=6.0; //N_Cycle
    sPAR[8]=6.66; //Size_0
    sPAR[9]=21.8; //T_Turnover
    sPAR[10]=7.67; //Teq
    sPAR[11]=604800.0; //conversion_factor
    X[0]=0.0; //Ce
    X[1]=6.66; //Size

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
