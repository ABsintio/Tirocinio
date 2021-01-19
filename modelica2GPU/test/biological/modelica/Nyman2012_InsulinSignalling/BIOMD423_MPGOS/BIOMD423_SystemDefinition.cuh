
#ifndef BIOMD423_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD423_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[0]=(X[6] + (X[5] + X[0]));
    ACC[2]=(X[6] + X[4]);
    ACC[1]=X[2];
    F[8]=((8.62917e-05 * (X[7] * X[2])) + (-0.132671 * X[8]));
    F[7]=((0.132671 * X[8]) + (-8.62917e-05 * (X[7] * X[2])));
    F[2]=((538004.0 * (X[1] * ((X[6] + (1.7252e-06 * X[4])) / (1.0 + (88.9096 * X[8]))))) + (-262759.0 * X[2]));
    F[1]=((262759.0 * X[2]) + (-538004.0 * (X[1] * ((X[6] + (1.7252e-06 * X[4])) / (1.0 + (88.9096 * X[8]))))));
    F[3]=((X[4] * (5.25027e-05 + (119.353 * (X[8] / (1.0 + X[8]))))) + (-37954.7 * X[3]));
    F[4]=((4.78844 * X[6]) - (X[4] * (5.25027e-05 + (119.353 * (X[8] / (1.0 + X[8]))))));
    F[6]=((0.5742660000000001 * X[5]) + (-8.937429999999999 * X[6]));
    F[5]=((15.3801389 * X[0]) + (-0.5742694699000001 * X[5]));
    F[0]=((3.4699e-06 * X[5]) + ((4.14899 * X[6]) + ((37954.7 * X[3]) + (-15.3801389 * X[0]))));

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
    ACC[0]=0.0; //IRmem
    ACC[1]=0.0; //measIRS1
    ACC[2]=0.0; //measIRp
    X[0]=8.94067597532632; //IR
    X[1]=9.439981942255439; //IRS
    X[2]=0.560018057744573; //IRSiP
    X[3]=4.83863890758515e-06; //IRi
    X[4]=0.424076631823384; //IRiP
    X[5]=0.59688996214639; //IRins
    X[6]=0.0383525925240207; //IRp
    X[7]=9.99635886407151; //X
    X[8]=0.00364113592848386; //Xp

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
