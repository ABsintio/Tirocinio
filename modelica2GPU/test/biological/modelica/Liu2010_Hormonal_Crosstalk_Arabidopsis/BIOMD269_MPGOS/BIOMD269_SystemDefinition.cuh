
#ifndef BIOMD269_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD269_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[0]=(X[4] - X[5]);
    ACC[2]=(X[12] - X[13]);
    ACC[1]=(X[10] - X[11]);
    F[3]=0.0;
    F[0]=0.0;
    F[7]=0.0;
    F[4]=0.0;
    F[12]=0.0;
    F[8]=(sPAR[0] * (function_6(sPAR[26],X[11],X[6],sPAR[27]) - function_7(sPAR[28],X[8])));
    F[6]=(sPAR[0] * (function_13(X[1],X[2],sPAR[6],sPAR[7]) + ((sPAR[33] * X[0]) - function_15(X[6],sPAR[8]))));
    F[2]=(sPAR[0] * (function_20(X[1],sPAR[15],sPAR[14]) + ((sPAR[32] * X[3]) - function_21(X[2],sPAR[16]))));
    F[10]=0.0;
    F[9]=(sPAR[0] * (function_8(sPAR[29],X[8]) - function_9(sPAR[30],X[9])));
    F[14]=(sPAR[0] * (function_18(X[5],sPAR[11],sPAR[12]) - function_19(X[14],sPAR[13])));
    F[1]=(sPAR[0] * (function_2(sPAR[17],X[14],sPAR[2]) + (function_3(sPAR[18],sPAR[19],X[6],X[2],sPAR[20],X[9],sPAR[21]) + ((sPAR[31] * X[7]) - function_1(sPAR[22],sPAR[23],X[14],X[1])))));
    F[5]=(sPAR[0] * (function_16(X[13],sPAR[9],ACC[0]) - function_17(X[5],sPAR[10])));
    F[13]=(sPAR[0] * (function_10(sPAR[3],X[9],sPAR[4],ACC[2]) - function_12(X[13],X[6],sPAR[5])));
    F[11]=(sPAR[0] * (function_4(sPAR[24],X[1],ACC[1]) - (sPAR[25] * X[11])));

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
    ACC[0]=0.0; //CTR1
    ACC[1]=0.0; //Ra
    ACC[2]=0.0; //Re
    sPAR[0]=1.0; //compartment_1
    sPAR[1]=1.0; //extra
    sPAR[2]=1.0; //k1
    sPAR[3]=0.0003; //k10
    sPAR[4]=0.5; //k10a
    sPAR[5]=5.0; //k11
    sPAR[6]=0.1; //k12
    sPAR[7]=0.1; //k12a
    sPAR[8]=1.0; //k13
    sPAR[9]=3.0; //k14
    sPAR[10]=0.08500000000000001; //k15
    sPAR[11]=0.3; //k16
    sPAR[12]=1.0; //k16a
    sPAR[13]=0.1; //k17
    sPAR[14]=0.1; //k18
    sPAR[15]=1.0; //k18a
    sPAR[16]=1.0; //k19
    sPAR[17]=1.0; //k1a
    sPAR[18]=0.2; //k2
    sPAR[19]=2.8; //k2a
    sPAR[20]=1.0; //k2b
    sPAR[21]=0.01; //k2c
    sPAR[22]=2.0; //k3
    sPAR[23]=0.45; //k3a
    sPAR[24]=1.0; //k4
    sPAR[25]=1.0; //k5
    sPAR[26]=0.3; //k6
    sPAR[27]=0.2; //k6a
    sPAR[28]=1.0; //k7
    sPAR[29]=1.0; //k8
    sPAR[30]=1.0; //k9
    sPAR[31]=70.0; //k_auxin
    sPAR[32]=10.0; //k_cytokinin
    sPAR[33]=0.5; //k_ethylene
    X[0]=0.0; //ACC
    X[1]=0.1; //Auxin
    X[2]=0.1; //CK
    X[3]=0.0; //CK_ex
    X[4]=0.3; //CTR1T
    X[5]=0.3; //CTR1_star
    X[6]=0.1; //ET
    X[7]=0.0; //IAA
    X[8]=0.1; //PLSm
    X[9]=0.1; //PLSp
    X[10]=1.0; //RaT
    X[11]=1.0; //Ra_star
    X[12]=0.3; //ReT
    X[13]=0.3; //Re_star
    X[14]=0.1; //X

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
