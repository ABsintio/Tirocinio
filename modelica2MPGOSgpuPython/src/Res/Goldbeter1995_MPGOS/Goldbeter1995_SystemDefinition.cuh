
#ifndef Goldbeter1995_PERTHREAD_SYSTEMDEFINITION_H
#define Goldbeter1995_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[9]=0.0;
    F[17]=0.0;
    F[8]=0.0;
    F[18]=0.0;
    F[1]=0.0;
    F[19]=0.0;
    F[13]=0.0;
    F[0]=0.0;
    F[14]=0.0;
    F[7]=0.0;
    F[11]=0.0;
    F[12]=0.0;
    F[6]=0.0;
    F[15]=0.0;
    F[3]=0.0;
    F[2]=0.0;
    F[26]=0.0;
    F[28]=0.0;
    F[27]=0.0;
    F[20]=0.0;
    F[21]=((ACC[8] * X[0]) - (ACC[15] * X[14]));
    F[25]=((ACC[17] * X[2]) - (ACC[18] * X[13]));
    F[24]=((ACC[18] * X[3]) + ((ACC[11] * X[9]) + ((((-(ACC[12])) * X[11]) - (ACC[17] * X[12])) - (ACC[14] * X[15]))));
    F[22]=((ACC[10] * X[8]) + ((ACC[13] * X[6]) - (ACC[9] * X[17])));
    F[23]=((ACC[9] * X[7]) + ((ACC[12] * X[1]) + (((-(ACC[10])) * X[18]) - (ACC[11] * X[19]))));
    F[4]=0.0;
    F[5]=0.0;
    F[10]=0.0;
    F[16]=0.0;

}

template<class Precision> __forceinline__ __device__ void PerThread_EventFunction(
	int tid, int NT, Precision*	  EF, \
	Precision     T, Precision    dT, Precision    TD, Precision*	X, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
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
    ACC[16]=(X[25] / X[26]);
    ACC[19]=(X[27] / X[28]);
    ACC[18]=(sPAR[12] * (ACC[16] * X[26]));
    ACC[1]=pow(ACC[16],sPAR[2]);
    ACC[8]=(X[28] * (sPAR[1] * (ACC[0] / (ACC[0] + ACC[1]))));
    ACC[6]=((ACC[3] + (ACC[4] + (ACC[5] + ACC[16]))) * X[20]);
    ACC[10]=(X[20] * (sPAR[6] * (ACC[4] / (sPAR[5] + ACC[4]))));
    ACC[11]=(X[20] * (sPAR[8] * (ACC[4] / (sPAR[7] + ACC[4]))));
    ACC[13]=(sPAR[13] * (ACC[2] * X[28]));
    ACC[15]=(sPAR[17] * (ACC[2] * (X[20] / (sPAR[16] + ACC[2]))));
    ACC[17]=(sPAR[11] * (ACC[5] * X[20]));
    ACC[12]=(X[20] * (sPAR[10] * (ACC[5] / (sPAR[9] + ACC[5]))));
    ACC[14]=(X[20] * (sPAR[15] * (ACC[5] / (sPAR[14] + ACC[5]))));
    ACC[9]=(X[20] * (sPAR[4] * (ACC[3] / (sPAR[3] + ACC[3]))));

}

template<class Precision> __forceinline__ __device__ void PerThread_Initialization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
    T     = TD[0];
    DOIDX = 0;
    ACC[6]=((ACC[3] + (ACC[4] + (ACC[5] + ACC[16]))) * X[20]);
    ACC[8]=(X[28] * (sPAR[1] * (pow(sPAR[0],sPAR[2]) / (pow(sPAR[0],sPAR[2]) + pow(ACC[16],sPAR[2])))));
    ACC[18]=(sPAR[12] * (ACC[16] * X[26]));
    ACC[1]=pow(ACC[16],sPAR[2]);
    ACC[10]=(X[20] * (sPAR[6] * (ACC[4] / (sPAR[5] + ACC[4]))));
    ACC[11]=(X[20] * (sPAR[8] * (ACC[4] / (sPAR[7] + ACC[4]))));
    ACC[13]=(sPAR[13] * (ACC[2] * X[28]));
    ACC[15]=(sPAR[17] * (ACC[2] * (X[20] / (sPAR[16] + ACC[2]))));
    ACC[17]=(sPAR[11] * (ACC[5] * X[20]));
    ACC[12]=(X[20] * (sPAR[10] * (ACC[5] / (sPAR[9] + ACC[5]))));
    ACC[14]=(X[20] * (sPAR[15] * (ACC[5] / (sPAR[14] + ACC[5]))));
    ACC[9]=(X[20] * (sPAR[4] * (ACC[3] / (sPAR[3] + ACC[3]))));

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
