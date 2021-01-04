
#ifndef COUNTERCURRENTHEATEXCHANGEREQUATIONS_N_10_PERTHREAD_SYSTEMDEFINITION_H
#define COUNTERCURRENTHEATEXCHANGEREQUATIONS_N_10_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[21]=310.0;
    ACC[20]=(T < 8.0 ? 300.0 : 301.0);
    ACC[0]=(1.111111111111111 * ((X[18] + (-0.5 * (ACC[20] + X[0]))) * (sPAR[6] * sPAR[9])));
    ACC[17]=(1.111111111111111 * (((0.5 * (310.0 + X[17])) - X[26]) * (sPAR[7] * sPAR[9])));
    ACC[22]=(T < 15.0 ? 1.0 : 1.1);
    ACC[1]=(1.111111111111111 * ((X[19] + (-0.5 * (X[0] + X[1]))) * (sPAR[6] * sPAR[9])));
    ACC[16]=(1.111111111111111 * (((0.5 * (X[17] + X[16])) - X[25]) * (sPAR[7] * sPAR[9])));
    ACC[2]=(1.111111111111111 * ((X[20] + (-0.5 * (X[1] + X[2]))) * (sPAR[6] * sPAR[9])));
    ACC[15]=(1.111111111111111 * (((0.5 * (X[16] + X[15])) - X[24]) * (sPAR[7] * sPAR[9])));
    ACC[3]=(1.111111111111111 * ((X[21] + (-0.5 * (X[2] + X[3]))) * (sPAR[6] * sPAR[9])));
    ACC[14]=(1.111111111111111 * (((0.5 * (X[15] + X[14])) - X[23]) * (sPAR[7] * sPAR[9])));
    ACC[4]=(1.111111111111111 * ((X[22] + (-0.5 * (X[3] + X[4]))) * (sPAR[6] * sPAR[9])));
    ACC[13]=(1.111111111111111 * (((0.5 * (X[14] + X[13])) - X[22]) * (sPAR[7] * sPAR[9])));
    ACC[5]=(1.111111111111111 * ((X[23] + (-0.5 * (X[4] + X[5]))) * (sPAR[6] * sPAR[9])));
    ACC[12]=(1.111111111111111 * (((0.5 * (X[13] + X[12])) - X[21]) * (sPAR[7] * sPAR[9])));
    ACC[6]=(1.111111111111111 * ((X[24] + (-0.5 * (X[5] + X[6]))) * (sPAR[6] * sPAR[9])));
    ACC[11]=(1.111111111111111 * (((0.5 * (X[12] + X[11])) - X[20]) * (sPAR[7] * sPAR[9])));
    ACC[7]=(1.111111111111111 * ((X[25] + (-0.5 * (X[6] + X[7]))) * (sPAR[6] * sPAR[9])));
    ACC[10]=(1.111111111111111 * (((0.5 * (X[11] + X[10])) - X[19]) * (sPAR[7] * sPAR[9])));
    ACC[8]=(1.111111111111111 * ((X[26] + (-0.5 * (X[7] + X[8]))) * (sPAR[6] * sPAR[9])));
    ACC[18]=(ACC[0] + (ACC[1] + (ACC[2] + (ACC[3] + (ACC[4] + (ACC[5] + (ACC[6] + (ACC[7] + ACC[8]))))))));
    ACC[9]=(1.111111111111111 * (((0.5 * (X[10] + X[9])) - X[18]) * (sPAR[7] * sPAR[9])));
    ACC[19]=(ACC[9] + (ACC[10] + (ACC[11] + (ACC[12] + (ACC[13] + (ACC[14] + (ACC[15] + (ACC[16] + ACC[17]))))))));
    F[17]=(((sPAR[12] * (sPAR[4] * (310.0 - X[17]))) - ACC[17]) / (((1.111111111111111 * sPAR[11]) * sPAR[2]) * sPAR[4]));
    F[0]=(((ACC[22] * (sPAR[3] * (ACC[20] - X[0]))) + ACC[0]) / (((1.111111111111111 * sPAR[10]) * sPAR[1]) * sPAR[3]));
    F[1]=(((ACC[22] * (sPAR[3] * (X[0] - X[1]))) + ACC[1]) / (((1.111111111111111 * sPAR[10]) * sPAR[1]) * sPAR[3]));
    F[16]=(((sPAR[12] * (sPAR[4] * (X[17] - X[16]))) - ACC[16]) / (((1.111111111111111 * sPAR[11]) * sPAR[2]) * sPAR[4]));
    F[2]=(((ACC[22] * (sPAR[3] * (X[1] - X[2]))) + ACC[2]) / (((1.111111111111111 * sPAR[10]) * sPAR[1]) * sPAR[3]));
    F[15]=(((sPAR[12] * (sPAR[4] * (X[16] - X[15]))) - ACC[15]) / (((1.111111111111111 * sPAR[11]) * sPAR[2]) * sPAR[4]));
    F[3]=(((ACC[22] * (sPAR[3] * (X[2] - X[3]))) + ACC[3]) / (((1.111111111111111 * sPAR[10]) * sPAR[1]) * sPAR[3]));
    F[14]=(((sPAR[12] * (sPAR[4] * (X[15] - X[14]))) - ACC[14]) / (((1.111111111111111 * sPAR[11]) * sPAR[2]) * sPAR[4]));
    F[4]=(((ACC[22] * (sPAR[3] * (X[3] - X[4]))) + ACC[4]) / (((1.111111111111111 * sPAR[10]) * sPAR[1]) * sPAR[3]));
    F[22]=((9.0 * (ACC[13] - ACC[4])) / sPAR[5]);
    F[13]=(((sPAR[12] * (sPAR[4] * (X[14] - X[13]))) - ACC[13]) / (((1.111111111111111 * sPAR[11]) * sPAR[2]) * sPAR[4]));
    F[23]=((9.0 * (ACC[14] - ACC[5])) / sPAR[5]);
    F[5]=(((ACC[22] * (sPAR[3] * (X[4] - X[5]))) + ACC[5]) / (((1.111111111111111 * sPAR[10]) * sPAR[1]) * sPAR[3]));
    F[12]=(((sPAR[12] * (sPAR[4] * (X[13] - X[12]))) - ACC[12]) / (((1.111111111111111 * sPAR[11]) * sPAR[2]) * sPAR[4]));
    F[21]=((9.0 * (ACC[12] - ACC[3])) / sPAR[5]);
    F[24]=((9.0 * (ACC[15] - ACC[6])) / sPAR[5]);
    F[6]=(((ACC[22] * (sPAR[3] * (X[5] - X[6]))) + ACC[6]) / (((1.111111111111111 * sPAR[10]) * sPAR[1]) * sPAR[3]));
    F[11]=(((sPAR[12] * (sPAR[4] * (X[12] - X[11]))) - ACC[11]) / (((1.111111111111111 * sPAR[11]) * sPAR[2]) * sPAR[4]));
    F[20]=((9.0 * (ACC[11] - ACC[2])) / sPAR[5]);
    F[25]=((9.0 * (ACC[16] - ACC[7])) / sPAR[5]);
    F[7]=(((ACC[22] * (sPAR[3] * (X[6] - X[7]))) + ACC[7]) / (((1.111111111111111 * sPAR[10]) * sPAR[1]) * sPAR[3]));
    F[10]=(((sPAR[12] * (sPAR[4] * (X[11] - X[10]))) - ACC[10]) / (((1.111111111111111 * sPAR[11]) * sPAR[2]) * sPAR[4]));
    F[19]=((9.0 * (ACC[10] - ACC[1])) / sPAR[5]);
    F[8]=(((ACC[22] * (sPAR[3] * (X[7] - X[8]))) + ACC[8]) / (((1.111111111111111 * sPAR[10]) * sPAR[1]) * sPAR[3]));
    F[26]=((9.0 * (ACC[17] - ACC[8])) / sPAR[5]);
    F[9]=(((sPAR[12] * (sPAR[4] * (X[10] - X[9]))) - ACC[9]) / (((1.111111111111111 * sPAR[11]) * sPAR[2]) * sPAR[4]));
    F[18]=((9.0 * (ACC[9] - ACC[0])) / sPAR[5]);

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
    ACC[0]=0.0; //QA[1]
    ACC[1]=0.0; //QA[2]
    ACC[2]=0.0; //QA[3]
    ACC[3]=0.0; //QA[4]
    ACC[4]=0.0; //QA[5]
    ACC[5]=0.0; //QA[6]
    ACC[6]=0.0; //QA[7]
    ACC[7]=0.0; //QA[8]
    ACC[8]=0.0; //QA[9]
    ACC[9]=0.0; //QB[1]
    ACC[10]=0.0; //QB[2]
    ACC[11]=0.0; //QB[3]
    ACC[12]=0.0; //QB[4]
    ACC[13]=0.0; //QB[5]
    ACC[14]=0.0; //QB[6]
    ACC[15]=0.0; //QB[7]
    ACC[16]=0.0; //QB[8]
    ACC[21]=310.0; //TB[10]
    X[17]=300.0; //TB[9]
    X[26]=300.0; //TW[9]
    sPAR[7]=10000.0; //gammaB
    sPAR[9]=0.1; //omega
    ACC[17]=(1.111111111111111 * (((0.5 * (ACC[21] + X[17])) - X[26]) * (sPAR[7] * sPAR[9]))); //QB[9]
    ACC[18]=0.0; //QtotA
    ACC[19]=0.0; //QtotB
    ACC[20]=300.0; //TA[1]
    ACC[22]=1.0; //wA
    sPAR[0]=10.0; //L
    sPAR[1]=5e-05; //areaA
    sPAR[2]=5e-05; //areaB
    sPAR[3]=4200.0; //cpA
    sPAR[4]=4200.0; //cpB
    sPAR[5]=2000.0; //cpW
    sPAR[6]=4000.0; //gammaA
    sPAR[8]=1.111111111111111; //l
    sPAR[10]=1000.0; //rhoA
    sPAR[11]=1000.0; //rhoB
    sPAR[12]=1.0; //wB
    sPARi[0]=10; //N
    X[0]=300.0; //TA[2]
    X[1]=300.0; //TA[3]
    X[2]=300.0; //TA[4]
    X[3]=300.0; //TA[5]
    X[4]=300.0; //TA[6]
    X[5]=300.0; //TA[7]
    X[6]=300.0; //TA[8]
    X[7]=300.0; //TA[9]
    X[8]=300.0; //TA[10]
    X[9]=300.0; //TB[1]
    X[10]=300.0; //TB[2]
    X[11]=300.0; //TB[3]
    X[12]=300.0; //TB[4]
    X[13]=300.0; //TB[5]
    X[14]=300.0; //TB[6]
    X[15]=300.0; //TB[7]
    X[16]=300.0; //TB[8]
    X[18]=300.0; //TW[1]
    X[19]=300.0; //TW[2]
    X[20]=300.0; //TW[3]
    X[21]=300.0; //TW[4]
    X[22]=300.0; //TW[5]
    X[23]=300.0; //TW[6]
    X[24]=300.0; //TW[7]
    X[25]=300.0; //TW[8]

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
