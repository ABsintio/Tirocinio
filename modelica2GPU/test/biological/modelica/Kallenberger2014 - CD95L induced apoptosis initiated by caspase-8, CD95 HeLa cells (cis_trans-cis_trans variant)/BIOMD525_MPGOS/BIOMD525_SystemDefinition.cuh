
#ifndef BIOMD525_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD525_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[0]=(900.3624050244622 * (pow(X[1],3.0) * (X[2] / ((51505.23255066044 + ((900.3624050244622 * pow(X[1],2.0)) + ((57.2050013008496 * pow(X[2],2.0)) + (3432.991054495244 * X[2])))) * (30.0060394758199 + X[2])))));
    F[2]=0.0;
    F[11]=(0.00153710001025539 * (X[7] * X[12]));
    F[6]=(0.00153710001025539 * (X[7] * X[12]));
    F[10]=(0.00153710001025539 * (X[9] * (X[15] + X[12])));
    F[8]=(0.00153710001025539 * (X[9] * (X[15] + X[12])));
    F[17]=(0.00052134055139547 * (X[0] * (X[15] + X[12])));
    F[13]=(0.06471365155449101 * X[12]);
    F[12]=((X[15] * (0.00639775937416746 + (0.000223246421372882 * (X[4] + X[14])))) + ((5.29906975294056e-05 * pow(X[15],2.0)) + ((X[14] * (0.000644612643975149 + (0.000543518631342483 * (X[4] + X[14])))) + ((0.00413530054938906 * (X[14] * X[15])) + (-0.06471365155449101 * X[12])))));
    F[15]=((X[4] * (0.000644612643975149 + (0.000543518631342483 * (X[4] + X[14])))) + ((0.00413530054938906 * (X[4] * X[15])) + ((X[15] * (-0.00639775937416746 + (-0.000223246421372882 * (X[4] + X[14])))) + (-5.29906975294056e-05 * pow(X[15],2.0)))));
    F[14]=((X[4] * (0.00639775937416746 + (0.000223246421372882 * (X[4] + X[14])))) + ((5.29906975294056e-05 * (X[4] * X[15])) + ((X[14] * (-0.000644612643975149 + (-0.000543518631342483 * (X[4] + X[14])))) + (-0.00413530054938906 * (X[14] * X[15])))));
    F[4]=((0.000364965874405544 * (X[16] * X[3])) + (X[4] * (-0.007042372018142609 + ((-0.0007667650527153649 * (X[4] + X[14])) + (-0.004188291246918466 * X[15])))));
    F[7]=(-0.00153710001025539 * (X[7] * X[12]));
    F[9]=(-0.00153710001025539 * (X[9] * (X[15] + X[12])));
    F[0]=(-0.00052134055139547 * (X[0] * (X[15] + X[12])));
    F[16]=(-0.000364965874405544 * (X[16] * X[3]));
    F[1]=0.0;
    F[5]=((0.00130854998177646 * X[3]) + (-0.00108871858684363 * (ACC[0] * X[5])));
    F[3]=((0.00108871858684363 * (ACC[0] * X[5])) + ((X[15] * (0.00639775937416746 + (0.000223246421372882 * (X[4] + X[14])))) + ((5.29906975294056e-05 * pow(X[15],2.0)) + ((X[14] * (0.000644612643975149 + (0.000543518631342483 * (X[4] + X[14])))) + ((0.00413530054938906 * (X[14] * X[15])) + ((-0.00130854998177646 * X[3]) + (-0.000364965874405544 * (X[16] * X[3]))))))));

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
    ACC[0]=0.0; //CD95act
    X[0]=236.0; //Bid
    X[1]=116.0; //CD95
    X[2]=16.6; //CD95L
    X[3]=0.0; //DISC
    X[4]=0.0; //DISCp55
    X[5]=93.0; //FADD
    X[6]=0.0; //PrER
    X[7]=5178.0; //PrER_mGFP
    X[8]=0.0; //PrNES
    X[9]=973.0; //PrNES_mCherry
    X[10]=0.0; //mCherry
    X[11]=0.0; //mGFP
    X[12]=0.0; //p18
    X[13]=0.0; //p18inactive
    X[14]=0.0; //p30
    X[15]=0.0; //p43
    X[16]=155.0; //p55free
    X[17]=0.0; //tBid

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
