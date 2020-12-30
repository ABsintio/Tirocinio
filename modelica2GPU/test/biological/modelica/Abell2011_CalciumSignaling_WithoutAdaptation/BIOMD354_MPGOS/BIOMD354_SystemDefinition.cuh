
#ifndef BIOMD354_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD354_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[2]=0.0;
    F[1]=((sPAR[17] * (pow(X[0],4.0) / (pow(X[0],4.0) + pow(sPAR[19],4.0)))) + ((sPAR[18] * ((sPAR[6] + ((1.0 - X[5]) * (sPAR[0] * (pow(X[4],2.0) * (pow(X[0],2.0) / ((pow(X[4],2.0) + pow(sPAR[11],2.0)) * (pow(X[0],2.0) + pow(sPAR[16],2.0)))))))) * X[3])) - (sPAR[21] * (X[1] / (0.01 + X[1])))));
    F[3]=((sPAR[1] * (pow(X[0],2.0) / (pow(X[0],2.0) + pow(sPAR[10],2.0)))) + (((-1.0 + sPAR[18]) * ((sPAR[6] + ((1.0 - X[5]) * (sPAR[0] * (pow(X[4],2.0) * (pow(X[0],2.0) / ((pow(X[4],2.0) + pow(sPAR[11],2.0)) * (pow(X[0],2.0) + pow(sPAR[16],2.0)))))))) * X[3])) - (sPAR[18] * ((sPAR[6] + ((1.0 - X[5]) * (sPAR[0] * (pow(X[4],2.0) * (pow(X[0],2.0) / ((pow(X[0],2.0) + pow(sPAR[16],2.0)) * (pow(X[4],2.0) + pow(sPAR[11],2.0)))))))) * X[3]))));
    F[5]=((sPAR[3] * (pow(X[0],4.0) * ((1.0 - X[5]) / (pow(X[0],4.0) + pow(sPAR[22],4.0))))) - (sPAR[5] * X[5]));
    F[4]=((sPAR[8] * X[0]) - (sPAR[2] * X[4]));
    F[0]=(((1.0 - sPAR[18]) * ((sPAR[6] + ((1.0 - X[5]) * (sPAR[0] * (pow(X[4],2.0) * (pow(X[0],2.0) / ((pow(X[0],2.0) + pow(sPAR[16],2.0)) * (pow(X[4],2.0) + pow(sPAR[11],2.0)))))))) * X[3])) + ((sPAR[14] * (sPAR[7] + (pow(sPAR[12],8.0) / (pow(X[3],8.0) + pow(sPAR[12],8.0))))) + ((sPAR[21] * (X[1] / (0.01 + X[1]))) + ((pow(X[0],2.0) * (((-(sPAR[1])) / (pow(X[0],2.0) + pow(sPAR[10],2.0))) - (sPAR[20] / (pow(X[0],2.0) + pow(sPAR[15],2.0))))) - (sPAR[17] * (pow(X[0],4.0) / (pow(X[0],4.0) + pow(sPAR[19],4.0))))))));

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
    sPAR[0]=3.0; //A
    sPAR[1]=0.266; //B
    sPAR[2]=2.0; //D
    sPAR[3]=5.0; //E
    sPAR[4]=1.0; //ER_store
    sPAR[5]=0.018; //F
    sPAR[6]=0.01; //L
    sPAR[7]=0.0346; //PMleak
    sPAR[8]=1.0; //R
    sPAR[9]=1.0; //cytosol
    sPAR[10]=0.175; //k2
    sPAR[11]=0.175; //kIP3R
    sPAR[12]=1.0; //kSTIM
    sPAR[13]=1.0; //mitochondria
    sPAR[14]=0.02; //mw004dcb62_da5f_41c7_a7bd_033574894f48
    sPAR[15]=0.2; //mw3a93c3a6_623a_44fe_84e9_a47823defd1f
    sPAR[16]=0.13; //mw78dd80b8_e003_4c62_81d1_547d001767af
    sPAR[17]=0.03; //mw886be93a_22c7_4966_a1fa_113afd832ae3
    sPAR[18]=0.03; //mwc714c217_c8fd_4024_912c_681cd6931f59
    sPAR[19]=0.6; //mwc8d6bdb5_59d4_43fa_b96d_7426f4857e0d
    sPAR[20]=0.013; //mwd21d3f76_d133_4053_8e44_02a538657e0a
    sPAR[21]=0.005; //mwd90ce3ea_f8d5_4f0a_8093_e39a2d3dbf33
    sPAR[22]=1.0; //mwf998b218_be11_4aa4_81ae_41141861fb42
    sPAR[23]=1.0; //outside
    X[0]=0.05; //CaI
    X[1]=0.0; //CaM
    X[2]=1000.0; //CaO
    X[3]=2.0; //CaS
    X[4]=0.0; //IP3
    X[5]=0.002; //g

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
