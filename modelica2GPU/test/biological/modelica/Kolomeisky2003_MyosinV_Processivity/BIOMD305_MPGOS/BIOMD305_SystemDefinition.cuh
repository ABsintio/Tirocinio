
#ifndef BIOMD305_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD305_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[0]=pow(2.718281828459045, -sPAR[8]*sPAR[0]*sPAR[2]/sPAR[3]);
    ACC[1]=pow(2.718281828459045, -sPAR[9]*sPAR[0]*sPAR[2]/sPAR[3]);
    ACC[2]=pow(2.718281828459045, -sPAR[10]*sPAR[0]*sPAR[2]/sPAR[3]);
    ACC[3]=pow(2.718281828459045, -sPAR[11]*sPAR[0]*sPAR[2]/sPAR[3]);
    ACC[7]=(((sPAR[4] * (X[1] * ACC[0])) + ((sPAR[5] * ACC[1]) + ((sPAR[6] * (X[1] * ACC[2])) + (sPAR[7] * ACC[3])))) / (((sPAR[4] * (ACC[0] * (sPAR[5] * ACC[1]))) + (sPAR[6] * (ACC[2] * (sPAR[7] * ACC[3])))) * X[1]));
    ACC[4]=(X[3] + X[4]);
    ACC[5]=(0.5 * (sPAR[2] * (((sPAR[4] * (X[3] * (X[1] * ACC[0]))) + ((sPAR[5] * (X[4] * ACC[1])) + (((-(sPAR[6])) * (X[3] * (X[1] * ACC[2]))) - (sPAR[7] * (X[4] * ACC[3]))))) / ACC[4])));
    ACC[6]=(0.5 * (sPAR[2] * ((X[7] + (X[8] + ((-(X[5])) - X[6]))) / (T * ACC[4]))));
    F[2]=0.0;
    F[0]=0.0;
    F[6]=(sPAR[7] * (X[4] * ACC[3]));
    F[5]=(sPAR[6] * (X[3] * (X[1] * ACC[2])));
    F[8]=(sPAR[5] * (X[4] * ACC[1]));
    F[7]=(sPAR[4] * (X[3] * (X[1] * ACC[0])));
    F[4]=((X[3] * (X[1] * ((sPAR[4] * ACC[0]) + (sPAR[6] * ACC[2])))) + (X[4] * (((-(sPAR[5])) * ACC[1]) - (sPAR[7] * ACC[3]))));
    F[1]=0.0;
    F[3]=((X[4] * ((sPAR[5] * ACC[1]) + (sPAR[7] * ACC[3]))) + (X[3] * (X[1] * (((-(sPAR[4])) * ACC[0]) - (sPAR[6] * ACC[2])))));

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
    ACC[2]=0.0; //$cse3
    ACC[3]=0.0; //$cse4
    ACC[4]=0.0; //S_tot
    ACC[5]=0.0; //V
    ACC[6]=0.0; //V_ave
    ACC[7]=0.0; //tau
    sPAR[0]=0.0; //Force
    sPAR[1]=1.0; //compartment_
    sPAR[2]=36.0; //d
    sPAR[3]=4.1164; //kT
    sPAR[4]=0.7; //k_1
    sPAR[5]=12.0; //k_2
    sPAR[6]=5e-06; //k_3
    sPAR[7]=6e-06; //k_4
    sPAR[8]=-0.01; //th_1
    sPAR[9]=0.045; //th_2
    sPAR[10]=0.58; //th_3
    sPAR[11]=0.385; //th_4
    X[0]=0.0; //ADP
    X[1]=20.0; //ATP
    X[2]=0.0; //Pi_
    X[3]=10.0; //S0
    X[4]=0.0; //S1
    X[5]=0.0; //back_step1
    X[6]=0.0; //back_step2
    X[7]=0.0; //fwd_step1
    X[8]=0.0; //fwd_step2

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
