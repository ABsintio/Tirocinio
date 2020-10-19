
#ifndef Goldbeter1995_PERTHREAD_SYSTEMDEFINITION_H
#define Goldbeter1995_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
	X[0] = cPAR[6] * sPAR[21] + cPAR[1] * sPAR[11] - cPAR[9] * sPAR[22];
	X[1] = cPAR[10] * sPAR[9] + cPAR[8] * sPAR[23] + (-cPAR[5]) * sPAR[13] - cPAR[2] * sPAR[12] - cPAR[7] * sPAR[10];
	X[2] = cPAR[9] * sPAR[14] + cPAR[5] * sPAR[19] + (-cPAR[6]) * sPAR[20] - cPAR[8] * sPAR[18];
	X[3] = cPAR[4] * sPAR[16] - cPAR[3] * sPAR[15];
	X[4] = cPAR[2] * sPAR[8] - cPAR[10] * sPAR[17];

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
	ACC[0] = X[3]/sPAR[44];
	ACC[1] = cPAR[0]/sPAR[44];
	ACC[2] = X[2]/sPAR[44];
	ACC[3] = X[1]/sPAR[44];
	ACC[4] = X[0]/sPAR[44];
	ACC[5] = sPAR[5]/sPAR[43];
	ACC[6] = X[4]/sPAR[42];
	cPAR[0] = (ACC[4] + ACC[2] + ACC[3] + ACC[6]) * sPAR[44];
	cPAR[1] = sPAR[41] * ACC[0] * sPAR[43];
	cPAR[2] = sPAR[40] * ACC[3] * sPAR[44];
	cPAR[3] = sPAR[39] * ACC[0] * sPAR[44] / (sPAR[38] + ACC[0]);
	cPAR[4] = sPAR[43] * sPAR[36] * pow(sPAR[37], sPAR[35]) / (pow(sPAR[37], sPAR[35]) + pow(ACC[6], sPAR[35]));
	cPAR[5] = sPAR[44] * sPAR[33] * ACC[3] / (sPAR[34] + ACC[3]);
	cPAR[6] = sPAR[44] * sPAR[31] * ACC[2] / (sPAR[32] + ACC[2]);
	cPAR[7] = sPAR[44] * sPAR[29] * ACC[3] / (sPAR[30] + ACC[3]);
	cPAR[8] = sPAR[44] * sPAR[27] * ACC[2] / (sPAR[28] + ACC[2]);
	cPAR[9] = sPAR[44] * sPAR[26] * ACC[4] / (sPAR[25] + ACC[4]);
	cPAR[10] = sPAR[24] * ACC[6] * sPAR[42];

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
