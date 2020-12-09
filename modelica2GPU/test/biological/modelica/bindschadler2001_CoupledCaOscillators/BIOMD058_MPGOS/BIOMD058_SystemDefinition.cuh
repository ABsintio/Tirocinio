
#ifndef BIOMD058_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD058_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[5]=(sPAR[9] / (sPAR[5] + X[1]));
    ACC[3]=((sPAR[8] + (sPAR[13] * X[1])) / (sPAR[4] + X[1]));
    ACC[7]=(sPAR[7] / (sPAR[4] + X[1]));
    ACC[1]=(sPAR[12] * (X[1] / (sPAR[3] + X[1])));
    ACC[4]=(sPAR[9] / (sPAR[5] + X[0]));
    ACC[2]=((sPAR[8] + (sPAR[13] * X[0])) / (sPAR[4] + X[0]));
    ACC[6]=(sPAR[7] / (sPAR[4] + X[0]));
    ACC[0]=(sPAR[12] * (X[0] / (sPAR[3] + X[0])));
    F[1]=((sPAR[10] * pow((sPAR[11] * (X[3] * (ACC[1] / ((ACC[1] * sPAR[11]) + ACC[7])))),4.0)) + (sPAR[1] + ((sPAR[0] * (X[0] - X[1])) - (sPAR[6] * (pow(X[1],2.0) / (pow(sPAR[2],2.0) + pow(X[1],2.0)))))));
    F[3]=((ACC[5] * (1.0 - X[3])) - (ACC[1] * (ACC[3] * (X[3] * (sPAR[11] / ((ACC[1] * sPAR[11]) + ACC[7]))))));
    F[0]=((sPAR[10] * pow((sPAR[11] * (X[2] * (ACC[0] / ((ACC[0] * sPAR[11]) + ACC[6])))),4.0)) + (sPAR[1] + ((sPAR[0] * (X[1] - X[0])) - (sPAR[6] * (pow(X[0],2.0) / (pow(sPAR[2],2.0) + pow(X[0],2.0)))))));
    F[2]=((ACC[4] * (1.0 - X[2])) - (ACC[0] * (ACC[2] * (X[2] * (sPAR[11] / ((ACC[0] * sPAR[11]) + ACC[6]))))));

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
    ACC[0]=0.0; //Phi1_c1
    ACC[1]=0.0; //Phi1_c2
    ACC[2]=0.0; //Phi2_c1
    ACC[3]=0.0; //Phi2_c2
    ACC[4]=0.0; //Phi3_c1
    ACC[5]=0.0; //Phi3_c2
    ACC[6]=0.0; //Phi_minus1_c1
    ACC[7]=0.0; //Phi_minus1_c2
    sPAR[0]=0.01; //D
    sPAR[1]=0.2; //Jleak
    sPAR[2]=0.18; //Kp
    sPAR[3]=6.0; //R1
    sPAR[4]=50.0; //R3
    sPAR[5]=1.6; //R5
    sPAR[6]=1.2; //Vp
    sPAR[7]=44.0; //k1
    sPAR[8]=26.5; //k2
    sPAR[9]=1.6; //k3
    sPAR[10]=28.0; //kf
    sPAR[11]=0.278; //p
    sPAR[12]=100.0; //r2
    sPAR[13]=20.0; //r4
    X[0]=0.0; //c1
    X[1]=0.0; //c2
    X[2]=0.8; //h1
    X[3]=0.1; //h2

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
