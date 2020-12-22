
#ifndef BIOMD294_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD294_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[9]=(1.0 / sPAR[7]);
    ACC[8]=(1.0 / sPAR[6]);
    ACC[6]=(365.0 / sPAR[8]);
    ACC[7]=(1.0 / sPAR[3]);
    ACC[5]=(sPAR[0] * (ACC[6] + ACC[7]));
    ACC[10]=((X[0] + X[3]) / X[5]);
    ACC[11]=((X[1] + (X[4] + X[2])) / X[5]);
    ACC[3]=(X[9] / X[5]);
    ACC[4]=(X[10] / X[5]);
    ACC[0]=((X[7] + X[6]) / X[5]);
    ACC[1]=((X[8] + X[6]) / X[5]);
    ACC[2]=(X[6] / X[5]);
    F[6]=((ACC[6] * (((X[3] + X[4]) / (1.0 - sPAR[4])) + (X[2] / (1.0 - sPAR[2])))) + (((-(ACC[7])) - ACC[8]) * X[6]));
    F[0]=((ACC[5] * (X[9] * ACC[10])) + (((-(ACC[7])) - ACC[6]) * X[0]));
    F[8]=((ACC[6] * X[1]) + ((((-(ACC[8])) - ACC[7]) * X[8]) - (ACC[5] * ((1.0 - sPAR[10]) * (X[8] * ACC[10])))));
    F[3]=((ACC[5] * ((1.0 - sPAR[10]) * (X[8] * ACC[10]))) - (X[3] * (ACC[7] + (ACC[6] / (1.0 - sPAR[4])))));
    F[9]=((ACC[7] * ((1.0 - sPAR[5]) * X[5])) + ((ACC[8] * (X[7] + (X[8] + X[6]))) + ((ACC[9] * X[10]) + (((-(X[9])) * (ACC[7] + (ACC[5] * ACC[10]))) - (ACC[5] * (X[9] * ACC[11]))))));
    F[1]=((ACC[5] * (X[9] * ACC[11])) + (((-(ACC[7])) - ACC[6]) * X[1]));
    F[7]=((ACC[6] * X[0]) + ((((-(ACC[8])) - ACC[7]) * X[7]) - (ACC[5] * ((1.0 - sPAR[10]) * (X[7] * ACC[11])))));
    F[10]=((ACC[7] * ((sPAR[5] * X[5]) - X[10])) + (((-(ACC[5])) * ((1.0 - sPAR[9]) * (X[10] * ACC[11]))) - (ACC[9] * X[10])));
    F[2]=((ACC[5] * ((1.0 - sPAR[9]) * (X[10] * ACC[11]))) - (X[2] * (ACC[7] + (ACC[6] / (1.0 - sPAR[2])))));
    F[4]=((ACC[5] * ((1.0 - sPAR[10]) * (X[7] * ACC[11]))) - (X[4] * (ACC[7] + (ACC[6] / (1.0 - sPAR[4])))));
    F[5]=0.0;

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
    ACC[0]=0.0; //R_1_frac
    ACC[1]=0.0; //R_2_frac
    ACC[2]=0.0; //R_frac
    ACC[3]=0.0; //S_frac
    ACC[4]=0.0; //V_frac
    ACC[5]=0.0; //beta
    ACC[6]=0.0; //gamma
    ACC[7]=0.0; //mu
    ACC[8]=0.0; //sigma
    ACC[9]=0.0; //sigmaV
    ACC[10]=0.0; //strain1_frac
    ACC[11]=0.0; //strain2_frac
    sPAR[0]=17.0; //R0
    sPAR[1]=1.0; //env
    sPAR[2]=0.5; //eta
    sPAR[3]=50.0; //l_e
    sPAR[4]=0.5; //nu
    sPAR[5]=1.0; //p
    sPAR[6]=20.0; //tImm
    sPAR[7]=50.0; //tImm_V
    sPAR[8]=21.0; //tInf
    sPAR[9]=0.7; //tau
    sPAR[10]=0.5; //theta
    X[0]=0.00176967; //I1
    X[1]=1e-06; //I2
    X[2]=0.5; //Iv2
    X[3]=0.0; //J1
    X[4]=0.0; //J2
    X[5]=1.0; //N
    X[6]=0.0; //R
    X[7]=0.439407; //R1
    X[8]=0.0; //R2
    X[9]=0.0588235; //S
    X[10]=0.9; //V

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
