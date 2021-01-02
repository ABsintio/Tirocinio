
#ifndef ONEDHEATTRANSFERTT_FD_N_40_PERTHREAD_SYSTEMDEFINITION_H
#define ONEDHEATTRANSFERTT_FD_N_40_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[0]=sPAR[2];
    ACC[1]=sPAR[3];
    F[0]=(38025.0 * (sPAR[6] * ((sPAR[2] + ((-2.0 * X[0]) + X[1])) / (sPAR[4] * sPAR[7]))));
    F[37]=(38025.0 * (sPAR[6] * ((X[36] + ((-2.0 * X[37]) + sPAR[3])) / (sPAR[4] * sPAR[7]))));
    F[1]=(38025.0 * (sPAR[6] * ((X[0] + ((-2.0 * X[1]) + X[2])) / (sPAR[7] * sPAR[4]))));
    F[2]=(38025.0 * (sPAR[6] * ((X[1] + ((-2.0 * X[2]) + X[3])) / (sPAR[7] * sPAR[4]))));
    F[3]=(38025.0 * (sPAR[6] * ((X[2] + ((-2.0 * X[3]) + X[4])) / (sPAR[7] * sPAR[4]))));
    F[4]=(38025.0 * (sPAR[6] * ((X[3] + ((-2.0 * X[4]) + X[5])) / (sPAR[7] * sPAR[4]))));
    F[5]=(38025.0 * (sPAR[6] * ((X[4] + ((-2.0 * X[5]) + X[6])) / (sPAR[7] * sPAR[4]))));
    F[6]=(38025.0 * (sPAR[6] * ((X[5] + ((-2.0 * X[6]) + X[7])) / (sPAR[7] * sPAR[4]))));
    F[7]=(38025.0 * (sPAR[6] * ((X[6] + ((-2.0 * X[7]) + X[8])) / (sPAR[7] * sPAR[4]))));
    F[8]=(38025.0 * (sPAR[6] * ((X[7] + ((-2.0 * X[8]) + X[9])) / (sPAR[7] * sPAR[4]))));
    F[9]=(38025.0 * (sPAR[6] * ((X[8] + ((-2.0 * X[9]) + X[10])) / (sPAR[7] * sPAR[4]))));
    F[10]=(38025.0 * (sPAR[6] * ((X[9] + ((-2.0 * X[10]) + X[11])) / (sPAR[7] * sPAR[4]))));
    F[11]=(38025.0 * (sPAR[6] * ((X[10] + ((-2.0 * X[11]) + X[12])) / (sPAR[7] * sPAR[4]))));
    F[12]=(38025.0 * (sPAR[6] * ((X[11] + ((-2.0 * X[12]) + X[13])) / (sPAR[7] * sPAR[4]))));
    F[13]=(38025.0 * (sPAR[6] * ((X[12] + ((-2.0 * X[13]) + X[14])) / (sPAR[7] * sPAR[4]))));
    F[14]=(38025.0 * (sPAR[6] * ((X[13] + ((-2.0 * X[14]) + X[15])) / (sPAR[7] * sPAR[4]))));
    F[15]=(38025.0 * (sPAR[6] * ((X[14] + ((-2.0 * X[15]) + X[16])) / (sPAR[7] * sPAR[4]))));
    F[16]=(38025.0 * (sPAR[6] * ((X[15] + ((-2.0 * X[16]) + X[17])) / (sPAR[7] * sPAR[4]))));
    F[17]=(38025.0 * (sPAR[6] * ((X[16] + ((-2.0 * X[17]) + X[18])) / (sPAR[7] * sPAR[4]))));
    F[18]=(38025.0 * (sPAR[6] * ((X[17] + ((-2.0 * X[18]) + X[19])) / (sPAR[7] * sPAR[4]))));
    F[19]=(38025.0 * (sPAR[6] * ((X[18] + ((-2.0 * X[19]) + X[20])) / (sPAR[7] * sPAR[4]))));
    F[20]=(38025.0 * (sPAR[6] * ((X[19] + ((-2.0 * X[20]) + X[21])) / (sPAR[7] * sPAR[4]))));
    F[21]=(38025.0 * (sPAR[6] * ((X[20] + ((-2.0 * X[21]) + X[22])) / (sPAR[7] * sPAR[4]))));
    F[22]=(38025.0 * (sPAR[6] * ((X[21] + ((-2.0 * X[22]) + X[23])) / (sPAR[7] * sPAR[4]))));
    F[23]=(38025.0 * (sPAR[6] * ((X[22] + ((-2.0 * X[23]) + X[24])) / (sPAR[7] * sPAR[4]))));
    F[24]=(38025.0 * (sPAR[6] * ((X[23] + ((-2.0 * X[24]) + X[25])) / (sPAR[7] * sPAR[4]))));
    F[25]=(38025.0 * (sPAR[6] * ((X[24] + ((-2.0 * X[25]) + X[26])) / (sPAR[7] * sPAR[4]))));
    F[26]=(38025.0 * (sPAR[6] * ((X[25] + ((-2.0 * X[26]) + X[27])) / (sPAR[7] * sPAR[4]))));
    F[27]=(38025.0 * (sPAR[6] * ((X[26] + ((-2.0 * X[27]) + X[28])) / (sPAR[7] * sPAR[4]))));
    F[28]=(38025.0 * (sPAR[6] * ((X[27] + ((-2.0 * X[28]) + X[29])) / (sPAR[7] * sPAR[4]))));
    F[29]=(38025.0 * (sPAR[6] * ((X[28] + ((-2.0 * X[29]) + X[30])) / (sPAR[7] * sPAR[4]))));
    F[30]=(38025.0 * (sPAR[6] * ((X[29] + ((-2.0 * X[30]) + X[31])) / (sPAR[7] * sPAR[4]))));
    F[31]=(38025.0 * (sPAR[6] * ((X[30] + ((-2.0 * X[31]) + X[32])) / (sPAR[7] * sPAR[4]))));
    F[32]=(38025.0 * (sPAR[6] * ((X[31] + ((-2.0 * X[32]) + X[33])) / (sPAR[7] * sPAR[4]))));
    F[33]=(38025.0 * (sPAR[6] * ((X[32] + ((-2.0 * X[33]) + X[34])) / (sPAR[7] * sPAR[4]))));
    F[34]=(38025.0 * (sPAR[6] * ((X[33] + ((-2.0 * X[34]) + X[35])) / (sPAR[7] * sPAR[4]))));
    F[35]=(38025.0 * (sPAR[6] * ((X[34] + ((-2.0 * X[35]) + X[36])) / (sPAR[7] * sPAR[4]))));
    F[36]=(38025.0 * (sPAR[6] * ((X[35] + ((-2.0 * X[36]) + X[37])) / (sPAR[7] * sPAR[4]))));

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
    ACC[0]=330.0; //T[1]
    ACC[1]=300.0; //T[40]
    sPAR[0]=0.2; //L
    sPAR[1]=273.15; //T0
    sPAR[2]=330.0; //T1
    sPAR[3]=300.0; //TN
    sPAR[4]=910.0; //cp
    sPAR[5]=0.005128205128205128; //dx
    sPAR[6]=237.0; //lambda
    sPAR[7]=2712.0; //rho
    sPARi[0]=40; //N
    X[0]=sPAR[1]; //T[2]
    X[1]=sPAR[1]; //T[3]
    X[2]=sPAR[1]; //T[4]
    X[3]=sPAR[1]; //T[5]
    X[4]=sPAR[1]; //T[6]
    X[5]=sPAR[1]; //T[7]
    X[6]=sPAR[1]; //T[8]
    X[7]=sPAR[1]; //T[9]
    X[8]=sPAR[1]; //T[10]
    X[9]=sPAR[1]; //T[11]
    X[10]=sPAR[1]; //T[12]
    X[11]=sPAR[1]; //T[13]
    X[12]=sPAR[1]; //T[14]
    X[13]=sPAR[1]; //T[15]
    X[14]=sPAR[1]; //T[16]
    X[15]=sPAR[1]; //T[17]
    X[16]=sPAR[1]; //T[18]
    X[17]=sPAR[1]; //T[19]
    X[18]=sPAR[1]; //T[20]
    X[19]=sPAR[1]; //T[21]
    X[20]=sPAR[1]; //T[22]
    X[21]=sPAR[1]; //T[23]
    X[22]=sPAR[1]; //T[24]
    X[23]=sPAR[1]; //T[25]
    X[24]=sPAR[1]; //T[26]
    X[25]=sPAR[1]; //T[27]
    X[26]=sPAR[1]; //T[28]
    X[27]=sPAR[1]; //T[29]
    X[28]=sPAR[1]; //T[30]
    X[29]=sPAR[1]; //T[31]
    X[30]=sPAR[1]; //T[32]
    X[31]=sPAR[1]; //T[33]
    X[32]=sPAR[1]; //T[34]
    X[33]=sPAR[1]; //T[35]
    X[34]=sPAR[1]; //T[36]
    X[35]=sPAR[1]; //T[37]
    X[36]=sPAR[1]; //T[38]
    X[37]=sPAR[1]; //T[39]

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif