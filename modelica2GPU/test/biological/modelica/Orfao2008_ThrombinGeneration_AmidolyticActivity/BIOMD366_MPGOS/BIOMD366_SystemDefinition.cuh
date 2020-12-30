
#ifndef BIOMD366_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD366_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[0]=(X[1] + (0.556 * X[3]));
    F[6]=0.0;
    F[2]=(sPAR[0] * (sPAR[7] * X[1]));
    F[3]=(sPAR[0] * (sPAR[8] * X[1]));
    F[0]=((-(sPAR[0])) * (HenriMichaelisMenten_irreversible_kcat(sPAR[4],X[5],X[0],sPAR[11]) + HenriMichaelisMenten_irreversible_kcat(sPAR[3],X[10],X[0],sPAR[10])));
    F[7]=((-(sPAR[0])) * HenriMichaelisMenten_irreversible_kcat(sPAR[5],X[1],X[7],sPAR[12]));
    F[1]=(sPAR[0] * (HenriMichaelisMenten_irreversible_kcat(sPAR[4],X[5],X[0],sPAR[11]) + (HenriMichaelisMenten_irreversible_kcat(sPAR[3],X[10],X[0],sPAR[10]) + (((-(sPAR[8])) - sPAR[7]) * X[1]))));
    F[8]=(sPAR[0] * (HenriMichaelisMenten_irreversible_kcat(sPAR[5],X[1],X[7],sPAR[12]) + ((sPAR[1] * X[5]) - (sPAR[2] * (X[8] * (X[10] * X[4]))))));
    F[5]=(sPAR[0] * ((sPAR[2] * (X[8] * (X[10] * X[4]))) - (sPAR[1] * X[5])));
    F[4]=(sPAR[0] * ((sPAR[1] * X[5]) - (sPAR[2] * (X[8] * (X[10] * X[4])))));
    F[11]=(sPAR[0] * (sPAR[9] * X[10]));
    F[10]=(sPAR[0] * (HenriMichaelisMenten_irreversible_kcat(sPAR[6],X[6],X[9],sPAR[13]) + ((sPAR[1] * X[5]) + (((-(sPAR[2])) * (X[8] * (X[10] * X[4]))) - (sPAR[9] * X[10])))));
    F[9]=((-(sPAR[0])) * HenriMichaelisMenten_irreversible_kcat(sPAR[6],X[6],X[9],sPAR[13]));

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
    ACC[0]=0.0; //AmAct
    sPAR[0]=1.0; //compartment_1
    sPAR[1]=801.4; //k_PL
    sPAR[2]=122.9; //k_PT
    sPAR[3]=12.4; //kcat_2
    sPAR[4]=43.87; //kcat_II
    sPAR[5]=7.844; //kcat_V
    sPAR[6]=239.1; //kcat_X
    sPAR[7]=0.7859; //ki_IIaATIII
    sPAR[8]=0.1762; //ki_IIaAlpha2M
    sPAR[9]=4.531; //ki_Xa
    sPAR[10]=0.06148; //km_2
    sPAR[11]=62.25; //km_II
    sPAR[12]=149.7; //km_V
    sPAR[13]=23.65; //km_X
    X[0]=1.4; //II
    X[1]=0.0; //IIa
    X[2]=0.0; //IIa_ATIII
    X[3]=0.0; //IIa_alpha2M
    X[4]=0.04999999; //PL
    X[5]=0.0; //PT
    X[6]=0.03; //RVV
    X[7]=0.02999999; //V
    X[8]=0.0; //Va
    X[9]=0.1999999; //X
    X[10]=0.0; //Xa
    X[11]=0.0; //Xa_ATIII

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
