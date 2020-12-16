
#ifndef BIOMD187_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD187_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[12]=0.0;
    F[11]=0.0;
    F[1]=((X[12] * (sPAR[11] * (X[7] * sPAR[0]))) + (sPAR[0] * ((sPAR[13] * (X[0] * X[4])) - (sPAR[14] * X[1]))));
    F[7]=((X[11] * (sPAR[12] * (X[6] * (X[0] * sPAR[0])))) - (X[12] * (sPAR[11] * (X[7] * sPAR[0]))));
    F[0]=((sPAR[0] * ((sPAR[14] * X[1]) - (sPAR[13] * (X[0] * X[4])))) - (X[11] * (sPAR[12] * (X[6] * (X[0] * sPAR[0])))));
    F[3]=(sPAR[0] * ((X[11] * (sPAR[9] * (X[2] * X[4]))) - (sPAR[10] * X[3])));
    F[6]=((sPAR[0] * ((X[11] * (sPAR[7] * (X[5] * X[2]))) - (sPAR[8] * X[6]))) - (X[11] * (sPAR[12] * (X[6] * (X[0] * sPAR[0])))));
    F[2]=((X[12] * (sPAR[11] * (X[7] * sPAR[0]))) + (sPAR[0] * ((sPAR[8] * X[6]) + ((sPAR[10] * X[3]) - (X[11] * ((sPAR[9] * (X[2] * X[4])) + (sPAR[7] * (X[5] * X[2]))))))));
    F[5]=((X[11] * (sPAR[5] * (X[9] * (X[4] * sPAR[0])))) + ((sPAR[15] * (X[10] * (X[4] * sPAR[0]))) + ((sPAR[0] * ((sPAR[8] * X[6]) - (X[11] * (sPAR[7] * (X[5] * X[2]))))) - (sPAR[6] * (X[5] * sPAR[0])))));
    F[4]=((sPAR[6] * (X[5] * sPAR[0])) + ((sPAR[0] * ((sPAR[10] * X[3]) - (X[11] * (sPAR[9] * (X[2] * X[4]))))) + ((sPAR[0] * ((sPAR[14] * X[1]) - (sPAR[13] * (X[0] * X[4])))) + (((-(sPAR[15])) * (X[10] * (X[4] * sPAR[0]))) - (X[11] * (sPAR[5] * (X[9] * (X[4] * sPAR[0]))))))));
    F[9]=((sPAR[0] * ((X[11] * (sPAR[3] * (X[8] * X[10]))) - (sPAR[4] * X[9]))) - (X[11] * (sPAR[5] * (X[9] * (X[4] * sPAR[0])))));
    F[10]=((sPAR[6] * (X[5] * sPAR[0])) + ((X[12] * (sPAR[11] * (X[7] * sPAR[0]))) + ((sPAR[0] * ((sPAR[4] * X[9]) - (X[11] * (sPAR[3] * (X[8] * X[10]))))) - (sPAR[15] * (X[10] * (X[4] * sPAR[0]))))));
    F[8]=((X[11] * (sPAR[5] * (X[9] * (X[4] * sPAR[0])))) + (sPAR[0] * ((sPAR[4] * X[9]) - (X[11] * (sPAR[3] * (X[8] * X[10]))))));

}

template<class Precision> __forceinline__ __device__ void PerThread_EventFunction(
	int tid, int NT, Precision*	  EF, \
	Precision     T, Precision    dT, Precision*    TD, Precision*	X, \
	Precision* cPAR, Precision* sPAR, int*       sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[0]=T > 2000.0;

    EF[0] = (! (ACC[0]));
}

template<class Precision> __forceinline__ __device__ void PerThread_ActionAfterEventDetection(
    int tid, int NT, int IDX, int& UDT, \
    Precision    &T, Precision   &dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR, int*       sPARi, Precision* ACC, int* ACCi
) {
    if (IDX == 0){
	    X[12]=sPAR[2];
    }
    if (IDX == 0){
	    X[11]=sPAR[1];
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
    ACC[0]=0; //$whenCondition1
    sPAR[0]=1.0; //Cytoplasm
    sPAR[1]=0.0; //const_val_0
    sPAR[2]=1.0; //const_val_1
    sPAR[3]=200000.0; //k1f
    sPAR[4]=0.2; //k1r
    sPAR[5]=100000000.0; //k2f
    sPAR[6]=0.01; //k3f
    sPAR[7]=10000000.0; //k4f
    sPAR[8]=0.02; //k4r
    sPAR[9]=10000.0; //k5f
    sPAR[10]=0.2; //k5r
    sPAR[11]=0.08; //k7bf
    sPAR[12]=100000000.0; //k7f
    sPAR[13]=5000000.0; //k8f
    sPAR[14]=0.08; //k8r
    sPAR[15]=1000.0; //kf6
    X[0]=9e-08; //APC
    X[1]=0.0; //APC_Cdc20
    X[2]=1.27e-07; //Bub3_BubR1
    X[3]=0.0; //Bub3_BubR1_Cdc20
    X[4]=2.2e-07; //Cdc20
    X[5]=0.0; //Cdc20_CMad2
    X[6]=0.0; //MCC
    X[7]=0.0; //MCC_APC
    X[8]=5e-08; //Mad1_CMad2
    X[9]=0.0; //Mad1_CMad2_OMad2
    X[10]=1.3e-07; //OMad2
    X[11]=1.0; //u
    X[12]=0.0; //u_prime

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
