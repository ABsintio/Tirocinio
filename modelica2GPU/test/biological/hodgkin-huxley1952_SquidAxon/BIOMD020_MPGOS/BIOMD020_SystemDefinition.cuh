
#ifndef BIOMD020_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD020_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[0]=pow(3.141592653589793,(0.0125 * X[0]));
    ACC[1]=pow(3.141592653589793,(0.05 * X[0]));
    ACC[2]=pow(3.141592653589793,(0.05555555555555555 * X[0]));
    ACC[3]=pow(3.141592653589793,(0.1 * (10.0 + X[0])));
    ACC[4]=pow(3.141592653589793,(0.1 * (25.0 + X[0])));
    ACC[5]=pow(3.141592653589793,(0.1 * (30.0 + X[0])));
    ACC[13]=(1.0 / (1.0 + ACC[5]));
    ACC[11]=(0.1 * ((25.0 + X[0]) / (-1.0 + ACC[4])));
    ACC[12]=(0.01 * ((10.0 + X[0]) / (-1.0 + ACC[3])));
    ACC[14]=(4.0 * ACC[2]);
    ACC[17]=(sPAR[7] * (X[0] - ACC[8]));
    ACC[18]=(sPAR[8] * (pow(X[2],3.0) * (X[1] * (X[0] - ACC[9]))));
    ACC[16]=(sPAR[6] * (pow(X[3],4.0) * (X[0] - ACC[7])));
    ACC[10]=(0.07000000000000001 * ACC[1]);
    ACC[15]=(0.125 * ACC[0]);
    ACC[6]=(X[0] + sPAR[4]);
    F[2]=((ACC[11] * (1.0 - X[2])) - (ACC[14] * X[2]));
    F[0]=((sPAR[5] + (((-(ACC[16])) - ACC[17]) - ACC[18])) / sPAR[0]);
    F[1]=((ACC[10] * (1.0 - X[1])) - (ACC[13] * X[1]));
    F[3]=((ACC[12] * (1.0 - X[3])) - (ACC[15] * X[3]));

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
    ACC[4]=0.0; //$cse5
    ACC[5]=0.0; //$cse6
    ACC[6]=0.0; //E
    ACC[7]=12.0; //V_K
    ACC[8]=-10.613; //V_L
    ACC[9]=-115.0; //V_Na
    ACC[10]=0.0; //alpha_h
    ACC[11]=0.0; //alpha_m
    ACC[12]=0.0; //alpha_n
    ACC[13]=0.0; //beta_h
    ACC[14]=0.0; //beta_m
    ACC[15]=0.0; //beta_n
    ACC[16]=0.0; //i_K
    ACC[17]=0.0; //i_L
    ACC[18]=0.0; //i_Na
    sPAR[0]=1.0; //Cm
    sPAR[1]=-63.0; //E_K
    sPAR[2]=-85.613; //E_L
    sPAR[3]=-190.0; //E_Na
    sPAR[4]=-75.0; //E_R
    sPAR[5]=0.0; //I
    sPAR[6]=36.0; //g_K
    sPAR[7]=0.3; //g_L
    sPAR[8]=120.0; //g_Na
    X[0]=0.0; //V
    X[1]=0.596; //h
    X[2]=0.053; //m
    X[3]=0.0; //n

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
