#ifndef Bhartiya2003_Tryptophan_operon_PERTHREAD_SYSTEMDEFINITION_H
#define Bhartiya2003_Tryptophan_operon_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
	X[0] = cPAR[5] * sPAR[11] + (-cPAR[6]) * sPAR[9] - cPAR[2] * sPAR[8];
	X[1] = cPAR[4] * sPAR[10] - cPAR[3] * sPAR[7];

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
	ACC[0] = X[1]/sPAR[12];
	ACC[1] = X[0]/sPAR[12];
	ACC[2] = cPAR[1]/sPAR[12];
	ACC[3] = cPAR[0]/sPAR[12];
	cPAR[0] = sPAR[5] * sPAR[3] * sPAR[12] / (sPAR[3] * (1.0 + ACC[1] / sPAR[6]) + sPAR[4]);
	cPAR[1] = (ACC[3] + ACC[1]) * sPAR[12];
	cPAR[2] = sPAR[12] * sPAR[22] * ACC[1];
	cPAR[3] = sPAR[12] * sPAR[21] * ACC[0];
	cPAR[4] = sPAR[12] * sPAR[18] * pow(sPAR[19], sPAR[20]) * sPAR[17] / (pow(sPAR[19], sPAR[20]) + pow(ACC[2], sPAR[20]));
	cPAR[5] = sPAR[12] * sPAR[16] * ACC[0] * sPAR[15] / (sPAR[15] + ACC[2]);
	cPAR[6] = sPAR[12] * sPAR[13] * ACC[1] / (sPAR[14] + ACC[1]);

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
