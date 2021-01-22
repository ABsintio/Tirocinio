
#ifndef BIOMD476_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD476_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[2]=((0.2528 * X[0]) + ((-0.2212 * X[2]) - function_1(0.0156,X[2],0.6104000000000001)));
    F[0]=((0.2907 * X[1]) + ((-0.2528 * X[0]) + ((0.2212 * X[2]) - function_1(4.4505,X[0],0.0703))));
    F[1]=((2.4514 * (LightFunction(T,0.0,1.0,0.0,12.0,24.0,0.0416666667) * X[6])) + ((8.070600000000001 * (pow(X[5],1.0258) / (0.0003268836051658604 + pow(X[5],1.0258)))) + (-12.2398 * (X[1] / (10.3617 + X[1])))));
    F[6]=((0.5 * (1.0 - LightFunction(T,0.0,1.0,0.0,12.0,24.0,0.0416666667))) + (X[6] * ((-1.2 / (1.2 + X[6])) - LightFunction(T,0.0,1.0,0.0,12.0,24.0,0.0416666667))));
    F[15]=((2.2123 * X[13]) + ((-0.2002 * X[15]) - function_1(0.6114000000000001,X[15],1.8066)));
    F[13]=((0.2485 * X[14]) + ((-2.2123 * X[13]) + ((0.2002 * X[15]) - function_1(0.1347,X[13],1.8258))));
    F[14]=((0.06044303731259908 * (((2.4017 * (LightFunction(T,0.0,1.0,0.0,12.0,24.0,0.0416666667) * X[6])) + (1.805420525148465 * ((0.1649 + (0.0857 * LightFunction(T,0.0,1.0,0.0,12.0,24.0,0.0416666667))) / (1.805420525148465 + pow(X[9],3.6064))))) / (0.06044303731259908 + pow(X[5],1.0237)))) + (-4.297 * (X[14] / (1.7303 + X[14]))));
    F[12]=((1.0352 * X[10]) + ((-3.3017 * X[12]) - function_1(3.3442,X[12],17.1111)));
    F[10]=((2.147 * X[11]) + ((-1.0352 * X[10]) + ((3.3017 * X[12]) - function_1(0.2179,X[10],0.6632))));
    F[11]=((0.2431 * (pow(X[9],1.4422) / (0.4098876810644242 + pow(X[9],1.4422)))) + (-10.1132 * (X[11] / (6.5585 + X[11]))));
    F[9]=((0.3166 * X[7]) + ((-2.1509 * X[9]) + ((-0.0492 * ((1.0 - LightFunction(T,0.0,1.0,0.0,12.0,24.0,0.0416666667)) * (X[9] / (0.4033 + X[9])))) + (-4.0424 * (X[9] / (0.4033 + X[9]))))));
    F[7]=((4.324 * X[8]) + ((-0.3166 * X[7]) + ((2.1509 * X[9]) + ((-0.0013 * ((1.0 - LightFunction(T,0.0,1.0,0.0,12.0,24.0,0.0416666667)) * (X[7] / (2.7454 + X[7])))) + (-3.1741 * (X[7] / (2.7454 + X[7])))))));
    F[8]=((0.7728360658234472 * (pow(X[15],1.0258) / ((0.03379455190933202 + pow(X[15],1.0258)) * (0.2568671073298924 + pow(X[5],1.0258))))) - function_1(3.8231,X[8],2.5734));
    F[5]=((16.8363 * X[3]) + ((-0.1687 * X[5]) - function_1(3.6888,X[5],1.2765)));
    F[3]=((0.8295 * X[4]) + ((-16.8363 * X[3]) + ((0.1687 * X[5]) - function_1(20.44,X[3],1.5644))));
    F[4]=((((LightFunction(T,0.0,1.0,0.0,12.0,24.0,0.0416666667) * (0.05 + (4.1954 * X[6]))) + (7.8142 * (pow(X[12],1.2479) / (4.167014509415162 + pow(X[12],1.2479))))) / (1.0 + pow(X[2],4.0))) - function_1(1.999,X[4],2.392));

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
    X[0]=0.7027; //cAc
    X[1]=14.6921; //cAm
    X[2]=0.8648; //cAn
    X[3]=0.0132; //cLc
    X[4]=0.4625; //cLm
    X[5]=0.0699; //cLn
    X[6]=0.8476; //cPn
    X[7]=10.2965; //cTc
    X[8]=0.4303; //cTm
    X[9]=0.5402; //cTn
    X[10]=1.5413; //cXc
    X[11]=0.09569999999999999; //cXm
    X[12]=0.4585; //cXn
    X[13]=0.0041; //cYc
    X[14]=0.0303; //cYm
    X[15]=0.0122; //cYn

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
