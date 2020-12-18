
#ifndef BIOMD295_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD295_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[0]=tanh((2.0 * (T + ((-24.0 * floor((0.04166666666666666 * T))) - sPAR[2]))));
    ACC[1]=tanh((2.0 * (T + ((-24.0 * floor((0.04166666666666666 * T))) - sPAR[3]))));
    ACC[2]=(X[0] + (X[1] + (X[2] + X[3])));
    F[4]=(((sPAR[17] + (0.25 * (sPAR[0] * ((1.0 + ACC[0]) * (1.0 - ACC[1]))))) * (pow(sPAR[8],sPAR[12]) / (pow(sPAR[8],sPAR[12]) + pow((X[2] + X[3]),sPAR[12])))) - (sPAR[16] * (X[4] / (sPAR[9] + X[4]))));
    F[3]=((sPAR[5] * X[1]) - (sPAR[7] * X[3]));
    F[2]=((sPAR[4] * X[0]) - (sPAR[6] * X[2]));
    F[1]=((sPAR[11] * X[4]) + ((sPAR[7] * X[3]) + (((-(sPAR[5])) - sPAR[15]) * X[1])));
    F[0]=((sPAR[10] * X[4]) + ((sPAR[6] * X[2]) + (((-(sPAR[4])) - sPAR[14]) * X[0])));

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
    ACC[0]=0.0; //$cse1
    ACC[1]=0.0; //$cse2
    ACC[2]=0.0; //Tot_FRQ
    sPAR[0]=0.0; //amp
    sPAR[1]=1.0; //cytoplasm
    sPAR[2]=6.0; //dawn
    sPAR[3]=18.0; //dusk
    sPAR[4]=0.222636680929471; //k1n
    sPAR[5]=0.272306464006464; //k1np
    sPAR[6]=0.331484503209686; //k2n
    sPAR[7]=0.295420749525813; //k2np
    sPAR[8]=5.04543346939346; //ki
    sPAR[9]=0.08460040964898941; //km
    sPAR[10]=0.313846476998244; //ks
    sPAR[11]=0.294840169149965; //ksp
    sPAR[12]=6.3958; //n
    sPAR[13]=1.0; //nucleus
    sPAR[14]=0.161111487362275; //vd
    sPAR[15]=0.139750313979272; //vdp
    sPAR[16]=0.885376326739544; //vm
    sPAR[17]=1.2236333742524; //vs
    X[0]=2.46246334204771; //FC
    X[1]=2.7123114824279; //FCp
    X[2]=1.84400040515923; //FN
    X[3]=2.74224951500791; //FNp
    X[4]=0.725579308537909; //MF

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
