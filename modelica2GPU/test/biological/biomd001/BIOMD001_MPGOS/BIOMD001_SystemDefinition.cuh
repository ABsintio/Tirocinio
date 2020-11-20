
#ifndef BIOMD001_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD001_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[6]=((sPAR[2] * X[9]) + ((sPAR[13] * X[7]) + (((-(X[14])) - sPAR[15]) * X[6])));
    F[7]=((X[14] * X[6]) + ((sPAR[3] * X[10]) + ((sPAR[14] * X[8]) + ((((-(sPAR[16])) - X[15]) - sPAR[13]) * X[7]))));
    F[8]=((X[15] * X[7]) + ((sPAR[4] * X[11]) + (((-(sPAR[17])) - sPAR[14]) * X[8])));
    F[0]=((sPAR[6] * X[3]) + ((sPAR[19] * X[1]) + ((sPAR[25] * X[9]) + ((((-(X[16])) - sPAR[8]) - sPAR[21]) * X[0]))));
    F[1]=((X[16] * X[0]) + ((sPAR[7] * X[4]) + ((sPAR[20] * X[2]) + ((sPAR[11] * X[10]) + (((((-(sPAR[22])) - sPAR[0]) - X[17]) - sPAR[19]) * X[1])))));
    F[2]=((sPAR[5] * X[5]) + ((sPAR[6] * X[3]) + ((sPAR[12] * X[11]) + ((((-(sPAR[21])) * X[0]) - (sPAR[1] * X[2])) - (sPAR[18] * X[2])))));
    F[9]=((sPAR[8] * X[0]) + ((sPAR[23] * X[10]) + ((sPAR[15] * X[6]) + ((((-(X[18])) - sPAR[2]) - sPAR[25]) * X[9]))));
    F[10]=((X[18] * X[9]) + ((sPAR[0] * X[1]) + ((sPAR[24] * X[11]) + ((sPAR[16] * X[7]) + (((((-(sPAR[11])) - sPAR[3]) - X[19]) - sPAR[23]) * X[10])))));
    F[11]=((X[19] * X[10]) + ((sPAR[1] * X[2]) + ((sPAR[17] * X[8]) + ((((-(sPAR[12])) - sPAR[4]) - sPAR[24]) * X[11]))));
    F[3]=((sPAR[9] * X[4]) + ((sPAR[21] * X[0]) + (((-(sPAR[6])) - X[12]) * X[3])));
    F[4]=((X[12] * X[3]) + ((sPAR[10] * X[5]) + ((sPAR[22] * X[1]) + ((((-(X[13])) - sPAR[7]) - sPAR[9]) * X[4]))));
    F[5]=((X[13] * X[4]) + ((sPAR[18] * X[2]) + (((-(sPAR[5])) - sPAR[10]) * X[5])));
    F[15]=0.0;
    F[19]=0.0;
    F[17]=0.0;
    F[13]=0.0;
    F[14]=0.0;
    F[18]=0.0;
    F[16]=0.0;
    F[12]=0.0;

}

template<class Precision> __forceinline__ __device__ void PerThread_EventFunction(
	int tid, int NT, Precision*	  EF, \
	Precision     T, Precision    dT, Precision*    TD, Precision*	X, \
	Precision* cPAR, Precision* sPAR, int*       sPARi, Precision* ACC, int* ACCi  		
) {
    ACCi[0]=T > sPAR[26];

    EF[0] = (! (ACCi[0]));
}

template<class Precision> __forceinline__ __device__ void PerThread_ActionAfterEventDetection(
    int tid, int NT, int IDX, int& UDT, \
    Precision    &T, Precision   &dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR, int*       sPARi, Precision* ACC, int* ACCi
) {
    if (IDX == 0){
	    X[15]=0.0;
    }
    if (IDX == 0){
	    X[19]=0.0;
    }
    if (IDX == 0){
	    X[17]=0.0;
    }
    if (IDX == 0){
	    X[13]=0.0;
    }
    if (IDX == 0){
	    X[14]=0.0;
    }
    if (IDX == 0){
	    X[18]=0.0;
    }
    if (IDX == 0){
	    X[16]=0.0;
    }
    if (IDX == 0){
	    X[12]=0.0;
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
    ACCi[0]=0; //$whenCondition1
    sPAR[0]=19.85; //kf_10
    sPAR[1]=20.0; //kf_11
    sPAR[2]=0.05; //kf_14
    sPAR[3]=0.05; //kf_15
    sPAR[4]=0.05; //kf_16
    sPAR[5]=30000.0; //kf_2
    sPAR[6]=0.54; //kf_5
    sPAR[7]=130.0; //kf_6
    sPAR[8]=19.7; //kf_9
    sPAR[9]=8000.0; //kr_0
    sPAR[10]=16000.0; //kr_1
    sPAR[11]=1.74; //kr_10
    sPAR[12]=0.8100000000000001; //kr_11
    sPAR[13]=4.0; //kr_12
    sPAR[14]=8.0; //kr_13
    sPAR[15]=0.001; //kr_14
    sPAR[16]=0.001; //kr_15
    sPAR[17]=0.001; //kr_16
    sPAR[18]=700.0; //kr_2
    sPAR[19]=8.640000000000001; //kr_3
    sPAR[20]=17.28; //kr_4
    sPAR[21]=10800.0; //kr_5
    sPAR[22]=2740.0; //kr_6
    sPAR[23]=4.0; //kr_7
    sPAR[24]=8.0; //kr_8
    sPAR[25]=3.74; //kr_9
    sPAR[26]=20.0; //t2
    X[0]=0.0; //A
    X[1]=0.0; //AL
    X[2]=0.0; //ALL
    X[3]=1.66057788110262e-21; //B
    X[4]=0.0; //BL
    X[5]=0.0; //BLL
    X[6]=0.0; //D
    X[7]=0.0; //DL
    X[8]=0.0; //DLL
    X[9]=0.0; //I
    X[10]=0.0; //IL
    X[11]=0.0; //ILL
    X[12]=3000.0; //kf_0
    X[13]=1500.0; //kf_1
    X[14]=3000.0; //kf_12
    X[15]=1500.0; //kf_13
    X[16]=3000.0; //kf_3
    X[17]=1500.0; //kf_4
    X[18]=3000.0; //kf_7
    X[19]=1500.0; //kf_8

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
