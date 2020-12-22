
#ifndef BIOMD143_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD143_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[8]=(sPAR[4] * (sPAR[7] * pow(X[10],2.0)));
    F[16]=(sPAR[25] * ((sPAR[17] * (X[19] * X[15])) - (sPAR[19] * (X[16] * X[15]))));
    F[4]=((sPAR[4] * (sPAR[6] * (X[6] * X[9]))) + (sPAR[25] * (sPAR[12] * (X[5] - X[4]))));
    F[6]=((sPAR[25] * (sPAR[13] * (X[7] - X[6]))) - (sPAR[4] * (sPAR[6] * (X[6] * X[9]))));
    F[2]=(-2.0 * (sPAR[4] * (sPAR[22] * pow(X[14],2.0))));
    F[14]=((sPAR[4] * (sPAR[21] * (X[10] * X[12]))) + ((sPAR[25] * (sPAR[14] * (X[15] - X[14]))) + (-2.0 * (sPAR[4] * (sPAR[22] * pow(X[14],2.0))))));
    F[10]=((sPAR[4] * ((sPAR[6] * (X[6] * X[9])) - (sPAR[21] * (X[10] * X[12])))) + (-2.0 * (sPAR[4] * (sPAR[7] * pow(X[10],2.0)))));
    F[0]=((sPAR[4] * ((sPAR[20] * (X[9] * X[12])) + (sPAR[22] * pow(X[14],2.0)))) + (sPAR[25] * (sPAR[11] * (X[1] - X[0]))));
    F[11]=((sPAR[4] * ((sPAR[20] * (X[9] * X[12])) + (sPAR[21] * (X[10] * X[12])))) + (sPAR[25] * (sPAR[3] * (X[9] * ((1.0 + (X[9] / sPAR[0])) * (X[13] / (((sPAR[1] + X[13]) * (sPAR[2] + pow((1.0 + (X[9] / sPAR[0])),2.0))) * sPAR[0])))))));
    F[12]=((sPAR[4] * ((sPAR[22] * pow(X[14],2.0)) + sPAR[9])) + ((sPAR[25] * (sPAR[10] * (X[13] - X[12]))) - (sPAR[4] * ((sPAR[20] * (X[9] * X[12])) + ((sPAR[21] * (X[10] * X[12])) + (sPAR[24] * X[12]))))));
    F[9]=((sPAR[4] * (sPAR[8] + (((-(sPAR[20])) * (X[9] * X[12])) - (sPAR[6] * (X[6] * X[9]))))) - (sPAR[25] * (sPAR[3] * (X[9] * ((1.0 + (X[9] / sPAR[0])) * (X[13] / (((sPAR[1] + X[13]) * (sPAR[2] + pow((1.0 + (X[9] / sPAR[0])),2.0))) * sPAR[0])))))));
    F[13]=((sPAR[25] * ((sPAR[18] * pow(X[15],2.0)) + ((sPAR[19] * (X[16] * X[15])) + (sPAR[10] * (X[12] - X[13]))))) + (-2.0 * (sPAR[25] * (sPAR[3] * (X[9] * ((1.0 + (X[9] / sPAR[0])) * (X[13] / (((sPAR[1] + X[13]) * (sPAR[2] + pow((1.0 + (X[9] / sPAR[0])),2.0))) * sPAR[0]))))))));
    F[3]=(-2.0 * (sPAR[25] * (sPAR[18] * pow(X[15],2.0))));
    F[15]=(sPAR[25] * ((2.0 * (sPAR[3] * (X[9] * ((1.0 + (X[9] / sPAR[0])) * (X[13] / ((sPAR[0] * (sPAR[2] + pow((1.0 + (X[9] / sPAR[0])),2.0))) * (sPAR[1] + X[13]))))))) + ((-2.0 * (sPAR[18] * pow(X[15],2.0))) + ((sPAR[14] * (X[14] - X[15])) + (((-(sPAR[19])) * (X[16] * X[15])) - (sPAR[17] * (X[19] * X[15])))))));
    F[7]=(sPAR[25] * ((sPAR[15] * (X[18] * X[5])) + ((sPAR[16] * (X[17] * X[5])) + (sPAR[13] * (X[6] - X[7])))));
    F[17]=(sPAR[25] * ((sPAR[15] * (X[18] * X[5])) - (sPAR[16] * (X[17] * X[5]))));
    F[5]=((-(sPAR[25])) * ((sPAR[15] * (X[18] * X[5])) + ((sPAR[16] * (X[17] * X[5])) + (sPAR[12] * (X[5] - X[4])))));
    F[18]=(sPAR[25] * ((sPAR[5] * (X[1] * X[19])) + ((sPAR[19] * (X[16] * X[15])) - (X[18] * (sPAR[23] + (sPAR[15] * X[5]))))));
    F[19]=(sPAR[25] * ((sPAR[16] * (X[17] * X[5])) + ((sPAR[23] * X[18]) + (((-(sPAR[5])) * (X[1] * X[19])) - (sPAR[17] * (X[19] * X[15]))))));
    F[1]=(sPAR[25] * ((sPAR[18] * pow(X[15],2.0)) + ((sPAR[23] * X[18]) + ((sPAR[11] * (X[0] - X[1])) - (sPAR[5] * (X[1] * X[19]))))));

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
    sPAR[0]=60.0; //Knadph
    sPAR[1]=1.5; //Ko
    sPAR[2]=550.0; //L
    sPAR[3]=288.0; //V
    sPAR[4]=1.0; //cytoplasm
    sPAR[5]=50.0; //k1
    sPAR[6]=10.0; //k10
    sPAR[7]=60.0; //k11
    sPAR[8]=25.0; //k12
    sPAR[9]=12.5; //k13
    sPAR[10]=30.0; //k14
    sPAR[11]=30.0; //k15
    sPAR[12]=10.0; //k16
    sPAR[13]=10.0; //k17
    sPAR[14]=2.0; //k18
    sPAR[15]=10.0; //k2
    sPAR[16]=0.004; //k3
    sPAR[17]=20.0; //k4
    sPAR[18]=10.0; //k5
    sPAR[19]=0.1; //k6
    sPAR[20]=1e-06; //k7
    sPAR[21]=50.0; //k8
    sPAR[22]=500.0; //k9
    sPAR[23]=58.0; //kminus1
    sPAR[24]=0.045; //kminus13
    sPAR[25]=1.0; //phagosome
    X[0]=0.0; //H2O2_c
    X[1]=0.0; //H2O2_p
    X[2]=0.0; //H_c
    X[3]=0.0; //H_p
    X[4]=300.0; //MLTH_c
    X[5]=300.0; //MLTH_p
    X[6]=0.0; //MLT_c
    X[7]=0.0; //MLT_p
    X[8]=0.0; //NADP2_c
    X[9]=0.0; //NADPH_c
    X[10]=0.0; //NADP_c
    X[11]=0.0; //NADPplus_c
    X[12]=0.0; //O2_c
    X[13]=0.0; //O2_p
    X[14]=0.0; //O2minus_c
    X[15]=0.0; //O2minus_p
    X[16]=0.0; //coIII_p
    X[17]=0.0; //coII_p
    X[18]=0.0; //coI_p
    X[19]=300.0; //per3_p

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
