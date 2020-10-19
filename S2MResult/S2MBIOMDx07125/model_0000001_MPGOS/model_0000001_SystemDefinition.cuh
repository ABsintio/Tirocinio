
#ifndef model_0000001_PERTHREAD_SYSTEMDEFINITION_H
#define model_0000001_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
	X[0] = cPAR[2] * sPAR[14] - cPAR[5] * sPAR[10];
	X[1] = cPAR[3] * sPAR[13] - cPAR[6] * sPAR[9];
	X[2] = cPAR[1] * sPAR[11] + cPAR[0] * sPAR[12] - cPAR[4] * sPAR[8];

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
	ACC[0] = 0.0;
	ACC[1] = X[2]/sPAR[15];
	ACC[2] = X[1]/sPAR[15];
	ACC[3] = X[0]/sPAR[15];
	ACC[4] = sPAR[0]/sPAR[15];
	ACC[5] = elmt_compartment_0000001.elmt_x0_amount/sPAR[15];
	cPAR[0] = sPAR[15] * sPAR[3] * ACC[5];
	cPAR[1] = sPAR[15] * sPAR[2] * ACC[4];
	cPAR[2] = sPAR[15] * ACC[1] * sPAR[1];
	cPAR[3] = sPAR[15] * ACC[1] * sPAR[4];
	cPAR[4] = sPAR[15] * sPAR[5] * ACC[1];
	cPAR[5] = sPAR[15] * sPAR[7] * ACC[3];
	cPAR[6] = sPAR[15] * sPAR[6] * ACC[2];

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
