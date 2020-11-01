
#ifndef BIOMD0000000005_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD0000000005_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[9]=0.0;
    F[8]=0.0;
    F[16]=0.0;
    F[1]=0.0;
    F[17]=0.0;
    F[19]=0.0;
    F[18]=0.0;
    F[13]=0.0;
    F[0]=0.0;
    F[14]=0.0;
    F[11]=0.0;
    F[7]=0.0;
    F[10]=0.0;
    F[6]=0.0;
    F[15]=0.0;
    F[2]=0.0;
    F[5]=0.0;
    F[26]=0.0;
    F[22]=0.0;
    F[23]=((ACC[14] * X[5]) + (((-(ACC[10])) * X[11]) - (ACC[6] * X[10])));
    F[24]=((ACC[6] * X[6]) - (ACC[13] * X[14]));
    F[27]=((ACC[10] * X[1]) + ((ACC[9] * X[9]) - (ACC[14] * X[15])));
    F[25]=((ACC[11] * X[2]) + (((-(ACC[12])) * X[13]) - (ACC[9] * X[19])));
    F[21]=((ACC[7] * X[7]) + (((-(ACC[8])) * X[17]) - (ACC[9] * X[18])));
    F[20]=((ACC[8] * X[8]) + ((ACC[6] * X[0]) - (ACC[7] * X[16])));
    F[4]=0.0;
    F[3]=0.0;
    F[12]=0.0;

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
    ACC[11]=(X[26] * sPAR[5]);
    ACC[16]=((ACC[18] + (ACC[15] + (ACC[5] + ACC[19]))) * X[26]);
    ACC[3]=((ACC[1] + (ACC[2] + (ACC[5] + ACC[19]))) * X[26]);
    ACC[12]=(X[26] * (sPAR[6] * ACC[18]));
    ACC[6]=(X[26] * (sPAR[0] * ACC[5]));
    ACC[10]=(X[26] * (sPAR[4] * ACC[5]));
    ACC[0]=pow((ACC[5] / ACC[3]),2.0);
    ACC[14]=(X[26] * (ACC[19] * (sPAR[9] + (sPAR[8] * ACC[0]))));
    ACC[13]=(X[26] * (sPAR[7] * ACC[15]));
    ACC[8]=(X[26] * (ACC[2] * sPAR[2]));
    ACC[9]=(X[26] * (ACC[2] * (sPAR[3] * ACC[18])));
    ACC[7]=(X[26] * (ACC[1] * sPAR[1]));

}

template<class Precision> __forceinline__ __device__ void PerThread_Initialization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
    T     = TD[0];
    DOIDX = 0;
    ACC[2]=(0.75 / X[26]);
    ACC[19]=(0.25 / X[26]);
    ACC[3]=((ACC[1] + (ACC[2] + (ACC[5] + ACC[19]))) * X[26]);
    ACC[14]=(X[26] * (ACC[19] * (sPAR[9] + (sPAR[8] * pow((ACC[5] / ACC[3]),2.0)))));
    ACC[16]=((ACC[18] + (ACC[15] + (ACC[5] + ACC[19]))) * X[26]);
    ACC[11]=(X[26] * sPAR[5]);
    ACC[12]=(X[26] * (sPAR[6] * ACC[18]));
    ACC[6]=(X[26] * (sPAR[0] * ACC[5]));
    ACC[10]=(X[26] * (sPAR[4] * ACC[5]));
    ACC[0]=pow((ACC[5] / ACC[3]),2.0);
    ACC[13]=(X[26] * (sPAR[7] * ACC[15]));
    ACC[8]=(X[26] * (ACC[2] * sPAR[2]));
    ACC[9]=(X[26] * (ACC[2] * (sPAR[3] * ACC[18])));
    ACC[7]=(X[26] * (ACC[1] * sPAR[1]));

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
