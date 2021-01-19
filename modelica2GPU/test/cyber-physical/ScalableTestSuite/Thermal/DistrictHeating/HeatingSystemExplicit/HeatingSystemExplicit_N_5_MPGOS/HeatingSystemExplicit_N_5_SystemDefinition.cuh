
#ifndef HEATINGSYSTEMEXPLICIT_N_5_PERTHREAD_SYSTEMDEFINITION_H
#define HEATINGSYSTEMEXPLICIT_N_5_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[10]=(50.0 * hist(X[10],(293.15 - X[5]),0.5));
    F[5]=((8.517887563884156e-06 * ((X[0] - X[5]) * (0.5 + sat((15.0 * X[10]),-0.5,0.5)))) + (-6.388415672913117e-06 * (-278.15 + (X[5] + (-8.0 * sin((7.27220521664304e-05 * T)))))));
    F[9]=(50.0 * hist(X[9],(293.15 - X[4]),0.5));
    F[4]=((9.945300845350572e-06 * ((X[0] - X[4]) * (0.5 + sat((15.0 * X[9]),-0.5,0.5)))) + (-7.458975634012929e-06 * (-278.15 + (X[4] + (-8.0 * sin((7.27220521664304e-05 * T)))))));
    F[8]=(50.0 * hist(X[8],(293.15 - X[3]),0.5));
    F[3]=((1.194743130227001e-05 * ((X[0] - X[3]) * (0.5 + sat((15.0 * X[8]),-0.5,0.5)))) + (-8.960573476702509e-06 * (-278.15 + (X[3] + (-8.0 * sin((7.27220521664304e-05 * T)))))));
    F[7]=(50.0 * hist(X[7],(293.15 - X[2]),0.5));
    F[2]=((1.495886312640239e-05 * ((X[0] - X[2]) * (0.5 + sat((15.0 * X[7]),-0.5,0.5)))) + (-1.121914734480179e-05 * (-278.15 + (X[2] + (-8.0 * sin((7.27220521664304e-05 * T)))))));
    F[6]=(50.0 * hist(X[6],(293.15 - X[1]),0.5));
    F[1]=((2e-05 * ((X[0] - X[1]) * (0.5 + sat((15.0 * X[6]),-0.5,0.5)))) + (-1.5e-05 * (-278.15 + (X[1] + (-8.0 * sin((7.27220521664304e-05 * T)))))));
    F[0]=((1e-07 * sat((3750.0 * (343.15 - X[0])),0.0,15000.0)) + (-2e-05 * (((X[0] - X[1]) * (0.5 + sat((15.0 * X[6]),-0.5,0.5))) + (((X[0] - X[2]) * (0.5 + sat((15.0 * X[7]),-0.5,0.5))) + (((X[0] - X[3]) * (0.5 + sat((15.0 * X[8]),-0.5,0.5))) + (((X[0] - X[4]) * (0.5 + sat((15.0 * X[9]),-0.5,0.5))) + ((X[0] - X[5]) * (0.5 + sat((15.0 * X[10]),-0.5,0.5)))))))));

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
    sPARi[0]=5; //N
    X[0]=343.15; //Td
    X[1]=293.15; //Tu[1]
    X[2]=293.15; //Tu[2]
    X[3]=293.15; //Tu[3]
    X[4]=293.15; //Tu[4]
    X[5]=293.15; //Tu[5]
    X[6]=-0.5; //x[1]
    X[7]=-0.5; //x[2]
    X[8]=-0.5; //x[3]
    X[9]=-0.5; //x[4]
    X[10]=-0.5; //x[5]

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
