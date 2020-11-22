
#ifndef BIOMD012_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD012_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[3]=(1.442695040888963 * (ACC[0] * (sPAR[1] * (sPAR[6] / sPAR[0]))));
    ACC[2]=(1.442695040888963 * (ACC[1] * (sPAR[1] * (sPAR[6] / sPAR[0]))));
    ACC[5]=(sPAR[1] / ACC[8]);
    ACC[6]=(0.6931471805599453 / sPAR[5]);
    ACC[4]=(sPAR[5] / sPAR[6]);
    ACC[8]=(1.442695040888963 * sPAR[5]);
    ACC[1]=(60.0 * (sPAR[4] - sPAR[3]));
    ACC[0]=(60.0 * sPAR[3]);
    ACC[7]=(0.6931471805599453 / sPAR[6]);
    F[2]=((ACC[5] * X[5]) - (ACC[7] * X[2]));
    F[1]=((ACC[5] * X[4]) - (ACC[7] * X[1]));
    F[0]=((ACC[5] * X[3]) - (ACC[7] * X[0]));
    F[3]=(ACC[0] + ((ACC[1] * (pow(sPAR[0],sPAR[2]) / (pow(sPAR[0],sPAR[2]) + pow(X[2],sPAR[2])))) - (ACC[6] * X[3])));
    F[4]=(ACC[0] + ((ACC[1] * (pow(sPAR[0],sPAR[2]) / (pow(sPAR[0],sPAR[2]) + pow(X[0],sPAR[2])))) - (ACC[6] * X[4])));
    F[5]=(ACC[0] + ((ACC[1] * (pow(sPAR[0],sPAR[2]) / (pow(sPAR[0],sPAR[2]) + pow(X[1],sPAR[2])))) - (ACC[6] * X[5])));

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
    ACC[0]=0.0; //a0_tr
    ACC[1]=0.0; //a_tr
    ACC[2]=216.404; //alpha
    ACC[3]=0.216; //alpha0
    ACC[4]=0.2; //beta
    ACC[5]=0.0; //k_tl
    ACC[6]=0.0; //kd_mRNA
    ACC[7]=0.0; //kd_prot
    ACC[8]=0.0; //t_ave
    sPAR[0]=40.0; //KM
    sPAR[1]=20.0; //eff
    sPAR[2]=2.0; //n
    sPAR[3]=0.0005; //ps_0
    sPAR[4]=0.5; //ps_a
    sPAR[5]=2.0; //tau_mRNA
    sPAR[6]=10.0; //tau_prot
    X[0]=0.0; //PX
    X[1]=0.0; //PY
    X[2]=0.0; //PZ
    X[3]=0.0; //X
    X[4]=20.0; //Y
    X[5]=0.0; //Z

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
