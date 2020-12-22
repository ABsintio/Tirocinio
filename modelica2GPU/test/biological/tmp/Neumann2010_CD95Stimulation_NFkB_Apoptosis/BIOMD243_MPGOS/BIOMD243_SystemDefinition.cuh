
#ifndef BIOMD243_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD243_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[15]=(sPAR[0] * (sPAR[15] * (X[14] * X[5])));
    F[13]=(sPAR[0] * ((sPAR[15] * (X[11] * X[5])) + (sPAR[14] * (X[14] * X[4]))));
    F[12]=(sPAR[0] * (sPAR[14] * (X[11] * X[4])));
    F[10]=(sPAR[0] * ((sPAR[15] * (X[9] * X[5])) + (sPAR[13] * (X[14] * X[2]))));
    F[6]=((-(sPAR[0])) * (sPAR[5] * (X[20] * X[6])));
    F[5]=((-(sPAR[0])) * ((sPAR[12] * (X[8] * X[5])) + (sPAR[15] * (X[5] * (X[9] + (X[11] + X[14]))))));
    F[4]=((-(sPAR[0])) * ((sPAR[11] * (X[8] * X[4])) + (sPAR[14] * (X[4] * (X[9] + (X[11] + X[14]))))));
    F[19]=((-(sPAR[0])) * (sPAR[1] * (X[7] * X[19])));
    F[18]=(sPAR[0] * ((sPAR[7] * X[17]) - (sPAR[9] * X[18])));
    F[21]=(sPAR[0] * ((sPAR[5] * (X[20] * X[6])) - (sPAR[8] * X[21])));
    F[17]=(sPAR[0] * ((sPAR[6] * (X[16] * X[21])) - (sPAR[7] * X[17])));
    F[16]=((-(sPAR[0])) * (sPAR[6] * (X[16] * X[21])));
    F[20]=(sPAR[0] * ((sPAR[14] * (X[9] * X[4])) + ((sPAR[13] * (X[11] * X[2])) - (sPAR[5] * (X[20] * X[6])))));
    F[1]=(sPAR[0] * ((sPAR[17] * (X[0] * X[3])) - (sPAR[4] * X[1])));
    F[3]=(sPAR[0] * ((sPAR[16] * pow(X[22],2.0)) - (sPAR[3] * X[3])));
    F[2]=((-(sPAR[0])) * ((sPAR[10] * (X[8] * X[2])) + (X[2] * ((sPAR[13] * (X[9] + (X[11] + X[14]))) + (sPAR[2] * X[1])))));
    F[0]=((-(sPAR[0])) * (sPAR[17] * (X[0] * X[3])));
    F[22]=(sPAR[0] * ((2.0 * (sPAR[13] * (X[9] * X[2]))) + ((sPAR[2] * (X[2] * X[1])) + (2.0 * ((-(sPAR[16])) * pow(X[22],2.0))))));
    F[14]=(sPAR[0] * ((sPAR[12] * (X[8] * X[5])) + ((X[14] * (((-(sPAR[13])) * X[2]) - (sPAR[14] * X[4]))) - (sPAR[15] * (X[14] * X[5])))));
    F[11]=(sPAR[0] * ((sPAR[11] * (X[8] * X[4])) + ((X[11] * (((-(sPAR[13])) * X[2]) - (sPAR[14] * X[4]))) - (sPAR[15] * (X[11] * X[5])))));
    F[9]=(sPAR[0] * ((sPAR[10] * (X[8] * X[2])) + ((X[9] * (((-(sPAR[13])) * X[2]) - (sPAR[14] * X[4]))) - (sPAR[15] * (X[9] * X[5])))));
    F[8]=(sPAR[0] * ((sPAR[1] * (X[7] * X[19])) + ((X[8] * (((-(sPAR[10])) * X[2]) - (sPAR[11] * X[4]))) - (sPAR[12] * (X[8] * X[5])))));
    F[7]=((-(sPAR[0])) * (sPAR[1] * (X[7] * X[19])));

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
    sPAR[0]=1.0; //default
    sPAR[1]=1.0; //k1
    sPAR[2]=0.1205258; //k10
    sPAR[3]=0.02891451; //k11
    sPAR[4]=0.1502914; //k12
    sPAR[5]=0.0007204261; //k13
    sPAR[6]=0.3588224; //k14
    sPAR[7]=3.684162; //k15
    sPAR[8]=0.02229912; //k16
    sPAR[9]=0.0064182; //k17
    sPAR[10]=0.0001277248; //k2
    sPAR[11]=0.6693316; //k3
    sPAR[12]=1e-05; //k4
    sPAR[13]=0.0005946569; //k5
    sPAR[14]=0.9999999000000001; //k6
    sPAR[15]=0.8875063; //k7
    sPAR[16]=0.0008044378; //k8
    sPAR[17]=0.002249759; //k9
    X[0]=1.443404; //C3
    X[1]=0.0; //C3_star
    X[2]=64.47651999999999; //C8
    X[3]=0.0; //C8_star
    X[4]=7.398562; //FL
    X[5]=5.083923; //FS
    X[6]=5.772825; //IKK
    X[7]=113.22; //L
    X[8]=0.0; //L_RF
    X[9]=0.0; //L_RF_C8
    X[10]=0.0; //L_RF_C8_FS
    X[11]=0.0; //L_RF_FL
    X[12]=0.0; //L_RF_FL_FL
    X[13]=0.0; //L_RF_FL_FS
    X[14]=0.0; //L_RF_FS
    X[15]=0.0; //L_RF_FS_FS
    X[16]=4.739546; //NF_kB_IkB
    X[17]=0.0; //NF_kB_IkB_P
    X[18]=0.0; //NF_kB_star
    X[19]=91.26591999999999; //RF
    X[20]=0.0; //p43_FLIP
    X[21]=0.0; //p43_FLIP_IKK_star
    X[22]=0.0; //p43_p41

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
