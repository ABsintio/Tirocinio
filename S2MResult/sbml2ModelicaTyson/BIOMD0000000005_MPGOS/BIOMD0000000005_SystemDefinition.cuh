
#ifndef BIOMD0000000005_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD0000000005_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
	X[0] = cPAR[2] * sPAR[8] - cPAR[9] * sPAR[12];
	X[1] = cPAR[6] * sPAR[18] + cPAR[5] * sPAR[21] - cPAR[10] * sPAR[7];
	X[2] = cPAR[3] * sPAR[10] + (-cPAR[4]) * sPAR[17] - cPAR[5] * sPAR[15];
	X[3] = cPAR[7] * sPAR[6] + (-cPAR[8]) * sPAR[14] - cPAR[5] * sPAR[16];
	X[4] = cPAR[4] * sPAR[20] + cPAR[2] * sPAR[13] - cPAR[3] * sPAR[19];
	X[5] = cPAR[10] * sPAR[5] + (-cPAR[6]) * sPAR[11] - cPAR[2] * sPAR[9];

}


template<class Precision> __forceinline__ __device__ void PerThread_EventFunction(
	int tid, int NT, Precision*	  EF, \
	Precision     T, Precision    dT, Precision    TD, Precision*	X, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
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
	ACC[0] = X[5]/sPAR[4];
	ACC[1] = cPAR[1]/sPAR[4];
	ACC[2] = X[4]/sPAR[4];
	ACC[3] = X[3]/sPAR[4];
	ACC[4] = sPAR[3]/sPAR[4];
	ACC[5] = X[2]/sPAR[4];
	ACC[6] = X[1]/sPAR[4];
	ACC[7] = cPAR[0]/sPAR[4];
	ACC[8] = X[0]/sPAR[4];
	cPAR[0] = (ACC[3] + ACC[8] + ACC[0] + ACC[6]) * sPAR[4];
	cPAR[1] = (ACC[2] + ACC[5] + ACC[0] + ACC[6]) * sPAR[4];
	cPAR[2] = sPAR[4] * sPAR[31] * ACC[0];
	cPAR[3] = sPAR[4] * ACC[2] * sPAR[30];
	cPAR[4] = sPAR[4] * ACC[5] * sPAR[29];
	cPAR[5] = sPAR[4] * ACC[5] * sPAR[28] * ACC[3];
	cPAR[6] = sPAR[4] * sPAR[27] * ACC[0];
	cPAR[7] = sPAR[4] * sPAR[26];
	cPAR[8] = sPAR[4] * sPAR[25] * ACC[3];
	cPAR[9] = sPAR[4] * sPAR[24] * ACC[8];
	cPAR[10] = sPAR[4] * ACC[6] * (sPAR[22] + sPAR[23] * pow(ACC[0] / ACC[1], 2.0));

}


template<class Precision> __forceinline__ __device__ void PerThread_Initialization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
    T     = TD[0];
    DOIDX = 0;

}


template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}



#endif
