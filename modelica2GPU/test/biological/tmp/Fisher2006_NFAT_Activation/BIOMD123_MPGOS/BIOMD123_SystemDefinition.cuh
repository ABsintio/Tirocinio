
#ifndef BIOMD123_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD123_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[4]=((sPAR[0] * ((sPAR[13] * X[0]) - (sPAR[11] * (X[4] * pow(X[2],3.0))))) + ((sPAR[23] * (sPAR[19] * X[5])) - (sPAR[0] * (sPAR[18] * X[4]))));
    F[10]=((sPAR[0] * ((sPAR[6] * X[6]) + ((sPAR[3] * (X[12] * X[0])) + (((-(sPAR[4])) - sPAR[5]) * X[10])))) + ((sPAR[23] * (sPAR[21] * X[11])) - (sPAR[0] * (sPAR[20] * X[10]))));
    F[6]=((sPAR[23] * (sPAR[2] * X[7])) + (sPAR[0] * ((sPAR[5] * X[10]) + ((((-(sPAR[6])) - sPAR[22]) * X[6]) + ((sPAR[8] * (X[8] * X[0])) - (sPAR[7] * X[6]))))));
    F[12]=((sPAR[0] * ((sPAR[4] * X[10]) - (sPAR[3] * (X[12] * X[0])))) + ((sPAR[23] * (sPAR[17] * X[13])) + (sPAR[0] * ((sPAR[12] * X[8]) + (((-(sPAR[1])) - sPAR[16]) * X[12])))));
    F[0]=((sPAR[23] * (sPAR[19] * X[1])) + (sPAR[0] * ((sPAR[4] * X[10]) + ((sPAR[7] * X[6]) + ((sPAR[1] * X[12]) + ((sPAR[11] * (X[4] * pow(X[2],3.0))) + ((sPAR[12] * X[8]) + (((((((-(sPAR[8])) * (X[8] * X[0])) - (sPAR[13] * X[0])) - (sPAR[18] * X[0])) - (sPAR[3] * (X[12] * X[0]))) - (sPAR[12] * X[8])) - (sPAR[1] * X[12])))))))));
    F[8]=((sPAR[23] * (sPAR[10] * X[9])) + (sPAR[0] * ((sPAR[7] * X[6]) + ((X[8] * (((-(sPAR[8])) * X[0]) - sPAR[9])) + ((sPAR[1] * X[12]) - (sPAR[12] * X[8]))))));
    F[5]=((sPAR[0] * (sPAR[18] * X[4])) + (sPAR[23] * ((sPAR[13] * X[1]) + (X[5] * (((-(sPAR[11])) * pow(X[3],3.0)) - sPAR[19])))));
    F[11]=((sPAR[23] * ((sPAR[6] * X[7]) - (sPAR[5] * X[11]))) + ((sPAR[0] * (sPAR[20] * X[10])) + (sPAR[23] * ((sPAR[3] * (X[13] * X[1])) + (((-(sPAR[4])) - sPAR[21]) * X[11])))));
    F[7]=((sPAR[23] * ((sPAR[8] * (X[9] * X[1])) + ((sPAR[5] * X[11]) + (((-(sPAR[6])) - sPAR[7]) * X[7])))) + ((sPAR[0] * (sPAR[22] * X[6])) - (sPAR[23] * (sPAR[2] * X[7]))));
    F[13]=((sPAR[23] * ((sPAR[4] * X[11]) - (sPAR[3] * (X[13] * X[1])))) + ((sPAR[0] * (sPAR[16] * X[12])) + (sPAR[23] * ((sPAR[12] * X[9]) + (((-(sPAR[1])) - sPAR[17]) * X[13])))));
    F[1]=((sPAR[23] * ((sPAR[1] * X[13]) + ((sPAR[4] * X[11]) + ((sPAR[11] * (X[5] * pow(X[3],3.0))) + ((sPAR[12] * X[9]) + ((sPAR[7] * X[7]) + ((X[13] * (((-(sPAR[3])) * X[1]) - sPAR[1])) + ((X[9] * (((-(sPAR[8])) * X[1]) - sPAR[12])) - (sPAR[13] * X[1]))))))))) + ((sPAR[0] * (sPAR[18] * X[0])) - (sPAR[23] * (sPAR[19] * X[1]))));
    F[9]=((sPAR[23] * ((sPAR[1] * X[13]) + ((sPAR[7] * X[7]) + (X[9] * (((-(sPAR[8])) * X[1]) - sPAR[12]))))) + ((sPAR[0] * (sPAR[9] * X[8])) - (sPAR[23] * (sPAR[10] * X[9]))));
    F[2]=((-3.0 * (sPAR[0] * ((sPAR[11] * (X[4] * pow(X[2],3.0))) - (sPAR[13] * X[0])))) + ((sPAR[23] * (sPAR[15] * X[3])) - (sPAR[0] * (sPAR[14] * X[2]))));
    F[3]=((sPAR[0] * (sPAR[14] * X[2])) + (sPAR[23] * ((-3.0 * ((sPAR[11] * (X[5] * pow(X[3],3.0))) - (sPAR[13] * X[1]))) - (sPAR[15] * X[3]))));

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
    sPAR[0]=1.0; //cytosol
    sPAR[1]=2.56e-05; //k1
    sPAR[2]=0.005; //k10
    sPAR[3]=6.63; //k11
    sPAR[4]=0.00168; //k12
    sPAR[5]=0.5; //k13
    sPAR[6]=0.00256; //k14
    sPAR[7]=0.00168; //k15
    sPAR[8]=6.63; //k16
    sPAR[9]=0.0015; //k17
    sPAR[10]=0.00096; //k18
    sPAR[11]=1.0; //k19
    sPAR[12]=0.00256; //k2
    sPAR[13]=1.0; //k20
    sPAR[14]=0.21; //k21
    sPAR[15]=0.5; //k22
    sPAR[16]=0.005; //k3
    sPAR[17]=0.5; //k4
    sPAR[18]=0.0019; //k5
    sPAR[19]=0.00092; //k6
    sPAR[20]=0.005; //k7
    sPAR[21]=0.5; //k8
    sPAR[22]=0.5; //k9
    sPAR[23]=1.0; //nucleus
    X[0]=9.099999999999999e-06; //Act_C_Cyt
    X[1]=5.05e-05; //Act_C_Nuc
    X[2]=1.0; //Ca_Cyt
    X[3]=1.0; //Ca_Nuc
    X[4]=0.0097108; //Inact_C_Cyt
    X[5]=0.049198; //Inact_C_Nuc
    X[6]=6.1e-06; //NFAT_Act_C_Cyt
    X[7]=0.0009477; //NFAT_Act_C_Nuc
    X[8]=0.0001101; //NFAT_Cyt
    X[9]=0.0005218999999999999; //NFAT_Nuc
    X[10]=2.2e-06; //NFAT_Pi_Act_C_Cyt
    X[11]=2.5e-06; //NFAT_Pi_Act_C_Nuc
    X[12]=0.009439700000000001; //NFAT_Pi_Cyt
    X[13]=0.0002272; //NFAT_Pi_Nuc

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
