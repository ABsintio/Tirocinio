
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
    F[10]=(sPAR[13] * hist(X[10],(sPAR[12] - X[5]),sPAR[11]));
    F[5]=(((sPAR[6] * ((X[0] - X[5]) * (0.5 + sat((sPAR[14] * X[10]),-0.5,0.5)))) - (sPAR[7] * (-278.15 + (X[5] + (-8.0 * sin((2.314814814814815e-05 * (sPAR[15] * T)))))))) / sPAR[5]);
    F[9]=(sPAR[13] * hist(X[9],(sPAR[12] - X[4]),sPAR[11]));
    F[4]=(((sPAR[6] * ((X[0] - X[4]) * (0.5 + sat((sPAR[14] * X[9]),-0.5,0.5)))) - (sPAR[7] * (-278.15 + (X[4] + (-8.0 * sin((2.314814814814815e-05 * (sPAR[15] * T)))))))) / sPAR[4]);
    F[8]=(sPAR[13] * hist(X[8],(sPAR[12] - X[3]),sPAR[11]));
    F[3]=(((sPAR[6] * ((X[0] - X[3]) * (0.5 + sat((sPAR[14] * X[8]),-0.5,0.5)))) - (sPAR[7] * (-278.15 + (X[3] + (-8.0 * sin((2.314814814814815e-05 * (sPAR[15] * T)))))))) / sPAR[3]);
    F[7]=(sPAR[13] * hist(X[7],(sPAR[12] - X[2]),sPAR[11]));
    F[2]=(((sPAR[6] * ((X[0] - X[2]) * (0.5 + sat((sPAR[14] * X[7]),-0.5,0.5)))) - (sPAR[7] * (-278.15 + (X[2] + (-8.0 * sin((2.314814814814815e-05 * (sPAR[15] * T)))))))) / sPAR[2]);
    F[6]=(sPAR[13] * hist(X[6],(sPAR[12] - X[1]),sPAR[11]));
    F[1]=(((sPAR[6] * ((X[0] - X[1]) * (0.5 + sat((sPAR[14] * X[6]),-0.5,0.5)))) - (sPAR[7] * (-278.15 + (X[1] + (-8.0 * sin((2.314814814814815e-05 * (sPAR[15] * T)))))))) / sPAR[1]);
    F[0]=(1e-07 * (sat((3750.0 * (sPAR[10] - X[0])),0.0,15000.0) - (sPAR[6] * (((X[0] - X[1]) * (0.5 + sat((sPAR[14] * X[6]),-0.5,0.5))) + (((X[0] - X[2]) * (0.5 + sat((sPAR[14] * X[7]),-0.5,0.5))) + (((X[0] - X[3]) * (0.5 + sat((sPAR[14] * X[8]),-0.5,0.5))) + (((X[0] - X[4]) * (0.5 + sat((sPAR[14] * X[9]),-0.5,0.5))) + ((X[0] - X[5]) * (0.5 + sat((sPAR[14] * X[10]),-0.5,0.5))))))))));

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
    sPAR[0]=10000000.0; //Cd
    sPAR[1]=10000000.0; //Cu[1]
    sPAR[2]=13370000.0; //Cu[2]
    sPAR[3]=16740000.0; //Cu[3]
    sPAR[4]=20110000.0; //Cu[4]
    sPAR[5]=23480000.0; //Cu[5]
    sPAR[6]=200.0; //Gh
    sPAR[7]=150.0; //Gu
    sPAR[8]=3750.0; //Kp
    sPAR[9]=15000.0; //Qmax
    sPAR[10]=343.15; //Td0
    sPAR[11]=0.5; //Teps
    sPAR[12]=293.15; //Tu0
    sPAR[13]=50.0; //a
    sPAR[14]=15.0; //b
    sPAR[15]=3.141592653589793; //pi
    sPARi[0]=5; //N
    X[0]=sPAR[10]; //Td
    X[1]=sPAR[12]; //Tu[1]
    X[2]=sPAR[12]; //Tu[2]
    X[3]=sPAR[12]; //Tu[3]
    X[4]=sPAR[12]; //Tu[4]
    X[5]=sPAR[12]; //Tu[5]
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
