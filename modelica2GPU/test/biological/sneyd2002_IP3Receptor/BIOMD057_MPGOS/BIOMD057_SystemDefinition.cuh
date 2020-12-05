
#ifndef BIOMD057_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD057_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[7]=pow(((0.1 * X[3]) + (0.9 * X[0])),4.0);
    ACC[0]=((12.0 + (sPAR[5] * sPAR[1])) * (sPAR[4] / (sPAR[1] + (sPAR[4] * (1.0 + (sPAR[1] / sPAR[2]))))));
    ACC[1]=(((sPAR[6] * sPAR[2]) + (14.0 * sPAR[4])) / (sPAR[2] + (sPAR[4] * (1.0 + (sPAR[2] / sPAR[1])))));
    ACC[5]=((sPAR[10] + (sPAR[17] * sPAR[4])) / (1.0 + (sPAR[4] / sPAR[3])));
    ACC[2]=(sPAR[7] * (sPAR[3] / (sPAR[3] + sPAR[4])));
    ACC[3]=((16.0 + (sPAR[8] * sPAR[3])) * (sPAR[4] / (sPAR[3] + sPAR[4])));
    ACC[6]=(sPAR[1] * ((sPAR[12] + sPAR[18]) / (sPAR[1] + sPAR[4])));
    ACC[4]=((12.0 + (sPAR[5] * sPAR[1])) * (sPAR[4] / (sPAR[1] + sPAR[4])));
    F[2]=((ACC[4] * X[0]) + (((-(sPAR[9])) - sPAR[16]) * X[2]));
    F[0]=((ACC[3] * X[3]) + (((sPAR[16] + sPAR[9]) * X[2]) + (((-(ACC[4])) - ACC[6]) * X[0])));
    F[5]=((ACC[2] * X[3]) - (sPAR[11] * X[5]));
    F[1]=((ACC[0] * X[4]) + (((-(sPAR[9])) - sPAR[16]) * X[1]));
    F[3]=((ACC[1] * (sPAR[0] * X[4])) + ((sPAR[11] * X[5]) + ((ACC[6] * X[0]) + ((((-(ACC[2])) - ACC[3]) - ACC[5]) * X[3]))));
    F[4]=((ACC[5] * X[3]) + (((sPAR[16] + sPAR[9]) * X[1]) + (((-(ACC[0])) * X[4]) - (ACC[1] * (sPAR[0] * X[4])))));

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
    ACC[0]=0.0; //Phi1
    ACC[1]=0.0; //Phi2
    ACC[2]=0.0; //Phi3
    ACC[3]=0.0; //Phi4
    ACC[4]=0.0; //Phi5
    ACC[5]=0.0; //Phi_minus2
    ACC[6]=0.0; //Phi_minus4
    ACC[7]=0.0; //open_probability
    sPAR[0]=10.0; //IP3
    sPAR[1]=0.12; //L1
    sPAR[2]=0.025; //L3
    sPAR[3]=57.4; //L5
    sPAR[4]=10.0; //c
    sPAR[5]=0.64; //k1
    sPAR[6]=37.4; //k2
    sPAR[7]=0.11; //k3
    sPAR[8]=4.0; //k4
    sPAR[9]=0.04; //kminus1
    sPAR[10]=1.4; //kminus2
    sPAR[11]=29.8; //kminus3
    sPAR[12]=0.54; //kminus4
    sPAR[13]=1.7; //l2
    sPAR[14]=1.7; //l4
    sPAR[15]=4707.0; //l6
    sPAR[16]=0.8; //lminus2
    sPAR[17]=2.5; //lminus4
    sPAR[18]=11.4; //lminus6
    X[0]=0.0; //A
    X[1]=0.0; //I1
    X[2]=0.0; //I2
    X[3]=0.0; //O
    X[4]=1.0; //R
    X[5]=0.0; //S

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
