
#ifndef BIOMD499_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD499_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[8]=((3.27 * X[8]) + (-2.27 * X[13]));
    ACC[7]=(3.27 + (-2.27 * X[3]));
    ACC[6]=((3.27 * X[0]) + (-2.27 * X[1]));
    ACC[5]=((3.27 * (1.0 - X[8])) + (-2.27 * X[11]));
    ACC[2]=(1.788908765652951 * (ACC[5] + ACC[8]));
    ACC[14]=(X[10] + (X[12] + (X[6] + X[7])));
    ACC[12]=(X[13] + ((-2.0 * X[1]) - X[2]));
    ACC[3]=0.7105263157894738;
    ACC[15]=(X[12] / (1.0 + ACC[3]));
    ACC[16]=(X[12] * (ACC[3] / (1.0 + ACC[3])));
    ACC[1]=9.359999999999999;
    ACC[0]=0.171;
    ACC[4]=(60.0 / ACC[0]);
    ACC[11]=(X[3] - X[2]);
    ACC[10]=((3.27 * X[4]) + (-2.27 * X[2]));
    ACC[13]=(ACC[7] - ACC[10]);
    ACC[9]=(ACC[8] + ((-2.0 * ACC[6]) - ACC[10]));
    F[5]=0.0;
    F[7]=(0.32 * ((24.5383 * X[6]) + (-4.0 * X[7])));
    F[10]=(0.32 * (0.95 + (-1.08 * X[10])));
    F[11]=((20.0 * ACC[5]) + ((-9.359999999999999 + (-4.2008888975 * (X[7] / (0.196565 + X[5])))) * X[11]));
    F[9]=(0.32 * ((-0.35 + (-100.0 * ACC[16])) * X[9]));
    F[12]=(0.32 * ((0.08 * X[10]) + ((-100.0 * (X[9] * ACC[16])) - ACC[15])));
    F[6]=(0.32 * ((100.0 * (X[9] * ACC[16])) + (-28.5383 * X[6])));
    F[1]=((ACC[4] * pow(ACC[12],2.0)) + (-113.352 * X[1]));
    F[2]=((ACC[4] * (ACC[11] * ACC[12])) + (-113.352 * X[2]));
    F[3]=((ACC[1] * ACC[13]) + (-9.359999999999999 * (ACC[11] + (5.7 * X[2]))));
    F[0]=(0.3058103975535168 * ((ACC[4] * ((2.27 * pow(ACC[12],2.0)) + pow(ACC[9],2.0))) + (-60.0 * ((2.27 * X[1]) + ACC[6]))));
    F[8]=(0.3058103975535168 * ((9.536017797325 * (X[7] * (X[11] / (0.196565 + X[5])))) + (-24.0 * ACC[9])));
    F[13]=((4.2008888975 * (X[7] * (X[11] / (0.196565 + X[5])))) + ((20.0 * ACC[9]) + (-9.359999999999999 * (ACC[12] + (5.7 * (X[2] + (2.0 * X[1])))))));
    F[4]=(0.3058103975535168 * ((ACC[4] * ((2.27 * (ACC[11] * ACC[12])) + (ACC[9] * ACC[13]))) + (-60.0 * ((2.27 * X[2]) + ACC[10]))));

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
    ACC[0]=0.171; //parameter_10
    ACC[1]=9.359999999999999; //parameter_19
    ACC[2]=1.0; //parameter_20
    ACC[3]=0.710526315789474; //parameter_21
    ACC[4]=350.877192982456; //parameter_9
    ACC[5]=0.0; //species_10
    ACC[6]=0.0; //species_11
    ACC[7]=0.0; //species_12
    ACC[8]=0.0; //species_14
    ACC[9]=0.0; //species_15
    ACC[10]=0.0; //species_16
    ACC[11]=0.0; //species_18
    ACC[12]=0.0; //species_20
    ACC[13]=0.0; //species_21
    ACC[14]=0.0; //species_23
    ACC[15]=0.0; //species_25
    ACC[16]=0.0; //species_9
    X[0]=0.0; //species_1
    X[1]=0.0; //species_13
    X[2]=0.0; //species_17
    X[3]=1.0; //species_19
    X[4]=0.0; //species_2
    X[5]=0.0; //species_22
    X[6]=0.0; //species_24
    X[7]=0.0; //species_26
    X[8]=0.0; //species_3
    X[9]=4.0; //species_4
    X[10]=0.8796296296296295; //species_5
    X[11]=1.194302410518627; //species_6
    X[12]=0.1203703703703704; //species_7
    X[13]=0.0; //species_8

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
