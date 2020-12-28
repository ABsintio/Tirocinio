
#ifndef BIOMD124_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD124_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[6]=(sPAR[9] * (X[6] * (X[7] * (X[0] - sPAR[25]))));
    ACC[18]=(X[2] * (sPAR[12] * (sPAR[4] / (((sPAR[4] + X[2]) * (sPAR[3] + X[2])) * (sPAR[5] + sPAR[12])))));
    ACC[11]=(ACC[18] * (X[3] - X[2]));
    ACC[12]=(sPAR[16] * (X[3] - X[2]));
    ACC[14]=(sPAR[15] * X[2]);
    ACC[10]=(ACC[12] + (ACC[11] - ACC[14]));
    ACC[0]=(1.0 / (1.0 + pow(2.718281828459045,((sPAR[17] - X[2]) / sPAR[18]))));
    ACC[17]=(1.0 / (1.0 + pow(2.718281828459045,((sPAR[28] - X[0]) / sPAR[20]))));
    ACC[8]=(X[4] * (X[1] * (X[0] - sPAR[26])));
    ACC[22]=(pow(X[2],5.0) / (pow(X[2],5.0) + pow(sPAR[13],5.0)));
    ACC[9]=(sPAR[11] * (ACC[22] * (X[0] - sPAR[26])));
    ACC[7]=(sPAR[10] * (X[5] * (X[0] - sPAR[26])));
    ACC[15]=(1.0 / (1.0 + pow(2.718281828459045,((sPAR[27] - X[0]) / sPAR[19]))));
    ACC[5]=(sPAR[8] * (ACC[15] * (X[0] - sPAR[23])));
    ACC[13]=(((-(sPAR[0])) * ACC[5]) - (sPAR[14] * X[2]));
    ACC[4]=(0.15 / (1.0 + pow(2.718281828459045,(-0.05 * (120.0 + X[0])))));
    ACC[2]=(30.0 / (1.0 + pow(2.718281828459045,(0.04 * (230.0 + X[0])))));
    ACC[19]=(1.0 / (1.0 + (ACC[4] / ACC[2])));
    ACC[21]=(1.0 / (ACC[2] + ACC[4]));
    ACC[3]=(0.00035 * pow(2.718281828459045,(0.07000000000000001 * (25.0 + X[0]))));
    ACC[1]=(0.09 / (1.0 + pow(2.718281828459045,(0.11 * (100.0 + X[0])))));
    ACC[16]=(1.0 / (1.0 + (ACC[3] / ACC[1])));
    ACC[20]=(1.0 / (ACC[1] + ACC[3]));
    F[4]=0.0;
    F[3]=((-(sPAR[7])) * (sPAR[24] * (ACC[10] * sPAR[1])));
    F[1]=((ACC[0] - X[1]) / sPAR[21]);
    F[5]=((ACC[17] - X[5]) / sPAR[22]);
    F[2]=(sPAR[1] * (sPAR[6] * (ACC[13] + ACC[10])));
    F[0]=((((((-(ACC[6])) - ACC[8]) - ACC[9]) - ACC[5]) - ACC[7]) / sPAR[2]);
    F[7]=((ACC[19] - X[7]) / ACC[21]);
    F[6]=((ACC[16] - X[6]) / ACC[20]);

}

template<class Precision> __forceinline__ __device__ void PerThread_EventFunction(
	int tid, int NT, Precision*	  EF, \
	Precision     T, Precision    dT, Precision*    TD, Precision*	X, \
	Precision* cPAR, Precision* sPAR, int*       sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[23]=T > 30000.0;

    EF[0] = (! (ACC[23]));
}

template<class Precision> __forceinline__ __device__ void PerThread_ActionAfterEventDetection(
    int tid, int NT, int IDX, int& UDT, \
    Precision    &T, Precision   &dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR, int*       sPARi, Precision* ACC, int* ACCi
) {
    if (IDX == 0){
	    X[4]=530.0;
    }

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
    ACC[0]=0.0; //ainf
    ACC[1]=0.0; //alphaIRn
    ACC[2]=0.0; //alphaIRr
    ACC[3]=0.0; //betaIRn
    ACC[4]=0.0; //betaIRr
    ACC[5]=0.0; //ica
    ACC[6]=0.0; //iir
    ACC[7]=0.0; //ik
    ACC[8]=0.0; //ikatp
    ACC[9]=0.0; //ikca
    ACC[10]=0.0; //jer
    ACC[11]=0.0; //jip3
    ACC[12]=0.0; //jleak
    ACC[13]=0.0; //jmem
    ACC[14]=0.0; //jserca
    ACC[15]=0.0; //minf
    ACC[16]=0.0; //nIRinf
    ACC[17]=0.0; //ninf
    ACC[18]=0.0; //oinf
    ACC[19]=0.0; //rIRinf
    ACC[20]=0.0; //tauIRn
    ACC[21]=0.0; //tauIRr
    ACC[22]=0.0; //w
    ACC[23]=0; //$whenCondition1
    sPAR[0]=4.5e-06; //alpha
    sPAR[1]=1.0; //cell
    sPAR[2]=5300.0; //cm
    sPAR[3]=0.35; //dact
    sPAR[4]=0.4; //dinact
    sPAR[5]=0.5; //dip3
    sPAR[6]=0.01; //fcyt
    sPAR[7]=0.01; //fer
    sPAR[8]=1000.0; //gca
    sPAR[9]=5.0; //gir
    sPAR[10]=1400.0; //gk
    sPAR[11]=900.0; //gkca
    sPAR[12]=0.0; //ip3
    sPAR[13]=0.3; //kd
    sPAR[14]=0.2; //kpmca
    sPAR[15]=0.4; //kserca
    sPAR[16]=0.0005; //pleak
    sPAR[17]=0.14; //r
    sPAR[18]=0.1; //sa
    sPAR[19]=12.0; //sm
    sPAR[20]=5.0; //sn
    sPAR[21]=300000.0; //taua
    sPAR[22]=16.0; //taun
    sPAR[23]=50.0; //vca
    sPAR[24]=5.0; //vcytver
    sPAR[25]=-75.0; //vir
    sPAR[26]=-75.0; //vk
    sPAR[27]=-20.0; //vm
    sPAR[28]=-16.0; //vn
    X[0]=-60.0; //V
    X[1]=0.46; //a
    X[2]=0.1; //c
    X[3]=100.0; //cer
    X[4]=500.0; //gkatp
    X[5]=0.01; //n
    X[6]=0.008; //nIR
    X[7]=0.282; //rIR

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
