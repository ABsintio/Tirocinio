
#ifndef BIOMD053_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD053_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[1]=(294.1176470588235 * X[1]);
    ACC[0]=(294.1176470588235 * X[0]);
    F[1]=(sPAR[8] * ((sPAR[12] * (sPAR[5] * X[0])) + ((sPAR[13] * (sPAR[6] * (X[3] * X[4]))) + (sPAR[14] * (sPAR[4] * pow((4.0 * X[5]),0.36))))));
    F[3]=((sPAR[8] * ((sPAR[11] * (sPAR[4] * pow((4.0 * X[2]),0.36))) + ((0.005 * (sPAR[15] * (sPAR[4] * pow((4.0 * X[5]),0.36)))) - (sPAR[13] * (sPAR[6] * (X[3] * X[4])))))) - (sPAR[7] * X[3]));
    F[0]=((sPAR[10] * ((sPAR[2] * X[5]) - (sPAR[3] * X[0]))) - (sPAR[8] * (sPAR[12] * (sPAR[5] * X[0]))));
    F[5]=((sPAR[9] * (sPAR[0] * (X[2] * X[4]))) + ((sPAR[10] * (sPAR[3] * X[0])) + (((((-(sPAR[8])) * (sPAR[15] * (sPAR[4] * pow((4.0 * X[5]),0.36)))) - (sPAR[1] * X[5])) - (sPAR[10] * (sPAR[2] * X[5]))) - (sPAR[8] * (sPAR[14] * (sPAR[4] * pow((4.0 * X[5]),0.36)))))));
    F[4]=((sPAR[1] * X[5]) + ((0.05 * (sPAR[8] * (sPAR[15] * (sPAR[4] * pow((4.0 * X[5]),0.36))))) + (((-(sPAR[9])) * (sPAR[0] * (X[2] * X[4]))) - (sPAR[8] * (sPAR[13] * (sPAR[6] * (X[3] * X[4])))))));
    F[2]=((sPAR[1] * X[5]) + (((-(sPAR[9])) * (sPAR[0] * (X[2] * X[4]))) - (sPAR[8] * (sPAR[11] * (sPAR[4] * pow((4.0 * X[2]),0.36))))));

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
    ACC[0]=0.0; //Fraction_Amadori
    ACC[1]=0.0; //Fraction_CML
    sPAR[0]=0.09; //k1a
    sPAR[1]=0.36; //k1b
    sPAR[2]=0.033; //k2a
    sPAR[3]=0.001; //k2b
    sPAR[4]=7.92e-07; //k3
    sPAR[5]=8.7e-05; //k4
    sPAR[6]=0.019; //k5
    sPAR[7]=0.002; //k5b
    sPAR[8]=1.0; //ox
    sPAR[9]=0.115; //p1
    sPAR[10]=0.75; //p2
    sPAR[11]=1.0; //p3
    sPAR[12]=1.0; //p4
    sPAR[13]=1.0; //p5
    sPAR[14]=2.7; //p6
    sPAR[15]=60.0; //p7
    X[0]=0.0; //Amadori
    X[1]=0.0; //CML
    X[2]=0.25; //Glucose
    X[3]=0.0; //Glyoxal
    X[4]=0.0034; //Lysine
    X[5]=0.0; //Schiff

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
