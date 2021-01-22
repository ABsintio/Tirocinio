
#ifndef BIOMD443_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD443_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[7]=0.0;
    F[10]=((22.56 * X[6]) + (-15.40025 * X[10]));
    F[9]=((10.34 * X[15]) + ((-2.86 * X[9]) + (function_4(X[3],X[9],X[10],0.68,10300.0,87.0) - function_5(X[10],X[9],X[3],0.31,87.0,10300.0))));
    F[8]=((10.34 * X[14]) + ((-2.86 * X[8]) + function_5(X[10],X[9],X[3],0.31,87.0,10300.0)));
    F[6]=(function_3(0.0012,X[5]) + ((-22.56025 * X[6]) + (15.4 * X[10])));
    F[5]=((0.022 * X[4]) + (-0.0078 * X[5]));
    F[4]=(function_2(29.24,3.97,169.0,X[3]) + (-0.022 * X[4]));
    F[3]=(function_1(10.34,X[16],2.86,X[3]) - function_4(X[3],X[9],X[10],0.68,10300.0,87.0));
    F[2]=0.0;
    F[18]=0.0;
    F[17]=0.0;
    F[16]=(function_4_8_1(20.0,0.1,X[13],X[14],X[15]) + ((-(function_4_9_1(200.0,0.1,X[2],X[15],X[16]))) - function_1(10.34,X[16],2.86,X[3])));
    F[15]=(function_4_7_1(20.0,0.1,X[13],X[14],X[15]) + (function_4_9_1(200.0,0.1,X[2],X[15],X[16]) + ((-10.34 * X[15]) + ((2.86 * X[9]) + ((-(function_4_10_1(200.0,0.1,X[2],X[15],X[16]))) - function_4_8_1(20.0,0.1,X[13],X[14],X[15]))))));
    F[14]=(function_4_10_1(200.0,0.1,X[2],X[15],X[16]) + ((-10.34 * X[14]) + ((2.86 * X[8]) - function_4_7_1(20.0,0.1,X[13],X[14],X[15]))));
    F[13]=(function_4_4_1(10.0,20.0,500.0,0.1,X[1],X[11],X[12],X[16]) - function_4_5_1(200.0,0.1,X[12],X[13],X[18]));
    F[12]=(function_4_3_1(10.0,20.0,500.0,0.1,X[1],X[11],X[12],X[16]) + (function_4_5_1(200.0,0.1,X[12],X[13],X[18]) + ((-(function_4_4_1(10.0,20.0,500.0,0.1,X[1],X[11],X[12],X[16]))) - function_4_6_1(200.0,0.1,X[12],X[13],X[18]))));
    F[11]=(function_4_6_1(200.0,0.1,X[12],X[13],X[18]) - function_4_3_1(10.0,20.0,500.0,0.1,X[1],X[11],X[12],X[16]));
    F[1]=(function_4_1_1(20.0,9.0,2.5,X[0],X[16]) - function_4_2_1(200.0,0.025,X[1],X[17]));
    F[0]=(function_4_2_1(200.0,0.025,X[1],X[17]) - function_4_1_1(20.0,9.0,2.5,X[0],X[16]));

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
    X[0]=999.999903688753; //species_0
    X[1]=0.0; //species_1
    X[2]=499.999975922188; //species_10
    X[3]=0.0; //species_11
    X[4]=0.0; //species_12
    X[5]=0.0; //species_13
    X[6]=0.0; //species_14
    X[7]=0.0; //species_15
    X[8]=0.0; //species_16
    X[9]=0.0; //species_17
    X[10]=0.0; //species_18
    X[11]=3999.99961475501; //species_2
    X[12]=0.0; //species_3
    X[13]=0.0; //species_4
    X[14]=999.999903688753; //species_5
    X[15]=0.0; //species_6
    X[16]=0.0; //species_7
    X[17]=99.9999903688752; //species_8
    X[18]=499.999951844377; //species_9

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
