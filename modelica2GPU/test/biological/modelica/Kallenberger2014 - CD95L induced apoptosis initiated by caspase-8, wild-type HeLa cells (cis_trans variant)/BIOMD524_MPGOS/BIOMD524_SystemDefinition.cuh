
#ifndef BIOMD524_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD524_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[0]=(237.8343446798331 * (pow(X[1],3.0) * (X[2] / ((2136.933678046925 + ((237.8343446798331 * pow(X[1],2.0)) + ((8.984966746176269 * pow(X[2],2.0)) + (277.1301357560074 * X[2])))) * (15.421878766215 + X[2])))));
    F[2]=0.0;
    F[11]=(0.00152252549827479 * (X[7] * X[12]));
    F[6]=(0.00152252549827479 * (X[7] * X[12]));
    F[10]=(0.00152252549827479 * (X[9] * (X[15] + X[12])));
    F[8]=(0.00152252549827479 * (X[9] * (X[15] + X[12])));
    F[17]=(0.00052867403363568 * (X[0] * (X[15] + X[12])));
    F[13]=(0.0949914492651531 * X[12]);
    F[12]=((0.0114186392006403 * X[15]) + ((X[14] * ((0.000446994772958953 * (X[4] + X[14])) + (0.00343995957326369 * X[15]))) + (-0.0949914492651531 * X[12])));
    F[15]=((X[4] * ((0.000446994772958953 * (X[4] + X[14])) + (0.00343995957326369 * X[15]))) + (-0.0114186392006403 * X[15]));
    F[14]=((0.0114186392006403 * X[4]) + (X[14] * ((-0.000446994772958953 * (X[4] + X[14])) + (-0.00343995957326369 * X[15]))));
    F[4]=((0.000491828591049766 * (X[16] * X[3])) + ((X[4] * (-0.0114186392006403 + (-0.000446994772958953 * (X[4] + X[14])))) + (-0.00343995957326369 * (X[4] * X[15]))));
    F[7]=(-0.00152252549827479 * (X[7] * X[12]));
    F[9]=(-0.00152252549827479 * (X[9] * (X[15] + X[12])));
    F[0]=(-0.00052867403363568 * (X[0] * (X[15] + X[12])));
    F[16]=(-0.000491828591049766 * (X[16] * X[3]));
    F[1]=0.0;
    F[5]=((0.00566528253772301 * X[3]) + (-0.000811711012144556 * (ACC[0] * X[5])));
    F[3]=((0.000811711012144556 * (ACC[0] * X[5])) + ((0.0114186392006403 * X[15]) + ((X[14] * ((0.000446994772958953 * (X[4] + X[14])) + (0.00343995957326369 * X[15]))) + ((-0.00566528253772301 * X[3]) + (-0.000491828591049766 * (X[16] * X[3]))))));

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
    X[0]=224.0; //Bid
    X[1]=12.0; //CD95
    X[2]=16.6; //CD95L
    X[3]=0.0; //DISC
    X[4]=0.0; //DISCp55
    X[5]=90.0; //FADD
    X[6]=0.0; //PrER
    X[7]=3316.0; //PrER_mGFP
    X[8]=0.0; //PrNES
    X[9]=1909.0; //PrNES_mCherry
    X[10]=0.0; //mCherry
    X[11]=0.0; //mGFP
    X[12]=0.0; //p18
    X[13]=0.0; //p18inactive
    X[14]=0.0; //p30
    X[15]=0.0; //p43
    X[16]=127.0; //p55free
    X[17]=0.0; //tBid

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
