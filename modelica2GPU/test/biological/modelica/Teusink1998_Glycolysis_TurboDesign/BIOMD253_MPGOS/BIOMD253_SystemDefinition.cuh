
#ifndef BIOMD253_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD253_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[7]=(X[0] / sPAR[7]);
    ACC[1]=(sPAR[9] * pow(((1.0 + (sPAR[17] * ACC[7])) / (1.0 + ACC[7])),2.0));
    ACC[6]=(X[0] / sPAR[5]);
    ACC[5]=(X[3] / sPAR[6]);
    ACC[2]=(1.0 + (ACC[5] + (ACC[6] + (sPAR[18] * (ACC[5] * ACC[6])))));
    ACC[3]=(1.0 + ((sPAR[14] * ACC[5]) + ((sPAR[15] * ACC[6]) + (sPAR[19] * (sPAR[14] * (ACC[5] * (sPAR[15] * ACC[6])))))));
    ACC[0]=(5.0 - X[0]);
    ACC[4]=pow(X[3],2.0);
    F[2]=0.0;
    F[1]=(sPAR[16] * ((sPAR[12] * (sPAR[18] * (ACC[5] * (ACC[6] * (ACC[2] / (pow(ACC[2],2.0) + (ACC[1] * pow(ACC[3],2.0)))))))) - (sPAR[13] * (X[1] * (ACC[0] / (((sPAR[0] * sPAR[3]) * (1.0 + (X[1] / sPAR[3]))) * (1.0 + (ACC[0] / sPAR[0]))))))));
    F[3]=(sPAR[16] * ((sPAR[11] * (X[2] * (X[0] / (((sPAR[1] * sPAR[4]) * (1.0 + ((X[2] / sPAR[4]) + (sPAR[20] * (ACC[4] / sPAR[8]))))) * (1.0 + (X[0] / sPAR[1])))))) - (sPAR[12] * (sPAR[18] * (ACC[5] * (ACC[6] * (ACC[2] / (pow(ACC[2],2.0) + (ACC[1] * pow(ACC[3],2.0))))))))));
    F[0]=(sPAR[16] * ((4.0 * (sPAR[13] * (X[1] * (ACC[0] / (((sPAR[0] * sPAR[3]) * (1.0 + (X[1] / sPAR[3]))) * (1.0 + (ACC[0] / sPAR[0]))))))) + ((((-(sPAR[11])) * (X[2] * (X[0] / (((sPAR[1] * sPAR[4]) * (1.0 + ((X[2] / sPAR[4]) + (sPAR[20] * (ACC[4] / sPAR[8]))))) * (1.0 + (X[0] / sPAR[1])))))) - (sPAR[12] * (sPAR[18] * (ACC[5] * (ACC[6] * (ACC[2] / (pow(ACC[2],2.0) + (ACC[1] * pow(ACC[3],2.0))))))))) - (sPAR[10] * (X[0] / (sPAR[2] + X[0]))))));

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
    ACC[0]=5.0; //ADP
    ACC[1]=0.0; //L
    ACC[2]=0.0; //R
    ACC[3]=0.0; //T
    ACC[4]=0.0; //Tre6P
    ACC[5]=0.0; //lambda1
    ACC[6]=0.0; //lambda2
    ACC[7]=0.0; //lambda3
    sPAR[0]=0.1; //KADP_2
    sPAR[1]=0.15; //KATP_0
    sPAR[2]=3.0; //KATP_3
    sPAR[3]=1.0; //KFru16P2_2
    sPAR[4]=1.0; //KGlc_0
    sPAR[5]=0.06; //KRATP
    sPAR[6]=1.0; //KRHMP
    sPAR[7]=10.0; //KiATP
    sPAR[8]=4.422; //KiTre6P_0
    sPAR[9]=1000.0; //L0
    sPAR[10]=68.0; //VATPase_3
    sPAR[11]=68.0; //VHK_0
    sPAR[12]=30.0; //VPFK_1
    sPAR[13]=20.0; //Vlower_2
    sPAR[14]=0.0005; //c1
    sPAR[15]=1.0; //c2
    sPAR[16]=1.0; //cell
    sPAR[17]=10.0; //ci
    sPAR[18]=10.0; //gR
    sPAR[19]=1.0; //gT
    sPAR[20]=1.0; //wild_type_0
    X[0]=0.0; //ATP
    X[1]=1.0; //Fru16P2
    X[2]=10.0; //Glc
    X[3]=0.0; //HMP

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
