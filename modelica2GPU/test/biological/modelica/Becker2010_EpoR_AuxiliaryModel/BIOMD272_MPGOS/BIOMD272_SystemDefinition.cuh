
#ifndef BIOMD272_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD272_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[0]=(X[3] + X[5]);
    ACC[1]=(X[1] + X[4]);
    F[4]=(sPAR[3] * (X[3] * sPAR[1]));
    F[5]=(sPAR[4] * (X[3] * sPAR[1]));
    F[3]=((sPAR[8] * (X[2] * sPAR[1])) + ((((-(sPAR[3])) - sPAR[5]) - sPAR[4]) * (X[3] * sPAR[1])));
    F[2]=((sPAR[7] * (X[1] * (X[0] * sPAR[1]))) + (((-(sPAR[6])) - sPAR[8]) * (X[2] * sPAR[1])));
    F[1]=((sPAR[6] * (X[2] * sPAR[1])) + ((sPAR[5] * (X[3] * sPAR[1])) - (sPAR[7] * (X[1] * (X[0] * sPAR[1])))));
    F[0]=((sPAR[8] * (sPAR[0] * sPAR[1])) + ((sPAR[6] * (X[2] * sPAR[1])) + (((-(sPAR[8])) * (X[0] * sPAR[1])) - (sPAR[7] * (X[1] * (X[0] * sPAR[1]))))));

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
    ACC[0]=0.0; //SAv_cells
    ACC[1]=0.0; //SAv_medium
    sPAR[0]=76.0; //Bmax_SAv
    sPAR[1]=1.0; //cell
    sPAR[2]=1.0; //cellsurface
    sPAR[3]=0.0164042; //kde
    sPAR[4]=0.00317871; //kdi
    sPAR[5]=0.01101; //kex_SAv
    sPAR[6]=0.00679946; //koff_SAv
    sPAR[7]=2.29402e-06; //kon_SAv
    sPAR[8]=0.0329366; //kt
    sPAR[9]=1.0; //medium
    X[0]=76.0; //EpoR
    X[1]=999.293; //SAv
    X[2]=0.0; //SAv_EpoR
    X[3]=0.0; //SAv_EpoRi
    X[4]=0.0; //dSAve
    X[5]=0.0; //dSAvi

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
