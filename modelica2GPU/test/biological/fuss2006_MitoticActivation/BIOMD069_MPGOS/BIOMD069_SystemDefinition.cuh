
#ifndef BIOMD069_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD069_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[1]=((sPAR[16] * X[9]) + ((sPAR[14] * X[6]) + (sPAR[17] + (sPAR[15] * X[7]))));
    ACC[0]=(sPAR[1] + (sPAR[0] * X[5]));
    F[0]=((sPAR[7] * X[3]) - (X[2] * (sPAR[8] * X[0])));
    F[3]=((X[2] * (sPAR[8] * X[0])) - (sPAR[7] * X[3]));
    F[4]=((sPAR[12] * X[5]) + ((((-(sPAR[10])) * ACC[1]) - sPAR[13]) * X[4]));
    F[5]=((((sPAR[10] * ACC[1]) + sPAR[13]) * X[4]) - (sPAR[12] * X[5]));
    F[1]=((-(sPAR[9])) * (ACC[1] * X[1]));
    F[2]=((sPAR[9] * (ACC[1] * X[1])) + ((sPAR[7] * X[3]) - (X[2] * (sPAR[8] * X[0]))));
    F[8]=((sPAR[6] * (sPAR[11] * X[7])) + ((sPAR[3] * (X[3] * X[9])) - (sPAR[4] * (ACC[0] * X[8]))));
    F[9]=((sPAR[4] * (ACC[0] * X[8])) + ((sPAR[11] * X[6]) + (((-(sPAR[5])) * (ACC[1] * X[9])) - (sPAR[3] * (X[3] * X[9])))));
    F[6]=((sPAR[5] * (ACC[1] * X[9])) + ((sPAR[4] * (ACC[0] * X[7])) + (((-(sPAR[3])) * (X[3] * X[6])) - (sPAR[11] * X[6]))));
    F[7]=((sPAR[3] * (X[3] * X[6])) + (((-(sPAR[4])) * (ACC[0] * X[7])) - (sPAR[6] * (sPAR[11] * X[7]))));

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
    ACC[0]=0.0; //ptp_activity
    ACC[1]=0.0; //src_activity
    sPAR[0]=1.0; //Kser
    sPAR[1]=0.0; //PTP_background
    sPAR[2]=0.0; //acsk0
    sPAR[3]=1.0; //k1
    sPAR[4]=0.8; //k2
    sPAR[5]=1.0; //k3
    sPAR[6]=10.0; //k4
    sPAR[7]=0.01; //kCSKoff
    sPAR[8]=0.1; //kCSKon
    sPAR[9]=1.0; //kCbp
    sPAR[10]=1.0; //kPTP
    sPAR[11]=0.05; //p1
    sPAR[12]=0.15; //p2
    sPAR[13]=0.035; //p3
    sPAR[14]=1.0; //rho_srca
    sPAR[15]=1.0; //rho_srcc
    sPAR[16]=0.0; //rho_srco
    sPAR[17]=0.0001; //src_background
    X[0]=1.0; //CSK_cytoplasm
    X[1]=1.0; //Cbp
    X[2]=0.0; //Cbp_P
    X[3]=0.0; //Cbp_P_CSK
    X[4]=1.0; //PTP
    X[5]=0.0; //PTP_pY789
    X[6]=0.0; //srca
    X[7]=0.0; //srcc
    X[8]=1.0; //srci
    X[9]=0.0; //srco

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
