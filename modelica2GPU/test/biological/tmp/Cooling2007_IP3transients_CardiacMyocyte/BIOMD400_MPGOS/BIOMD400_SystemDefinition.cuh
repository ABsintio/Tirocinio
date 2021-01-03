
#ifndef BIOMD400_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD400_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[23]=(sPAR[21] * sPAR[4]);
    ACC[22]=(sPAR[19] * sPAR[3]);
    ACC[20]=(sPAR[11] * sPAR[1]);
    ACC[21]=(sPAR[13] * sPAR[2]);
    ACC[1]=(1.0 / (sPAR[9] * sPAR[10]));
    ACC[0]=(0.001660577881102624 / sPAR[10]);
    ACC[2]=(ACC[0] / ACC[1]);
    ACC[9]=(sPAR[17] * (X[6] * (sPAR[8] / ((sPAR[6] / ACC[2]) + sPAR[8]))));
    ACC[8]=(sPAR[16] * (X[5] * (sPAR[8] / ((sPAR[5] / ACC[2]) + sPAR[8]))));
    ACC[7]=(sPAR[15] * X[7]);
    ACC[6]=(sPAR[14] * X[6]);
    ACC[5]=((sPAR[13] * (X[7] * X[0])) - (ACC[21] * X[6]));
    ACC[4]=((sPAR[12] * (X[5] * X[2])) - (sPAR[27] * X[6]));
    ACC[17]=((sPAR[25] * (X[4] * X[0])) - (sPAR[29] * X[5]));
    ACC[18]=((sPAR[26] * (X[4] * X[2])) - (sPAR[30] * X[7]));
    ACC[10]=(sPAR[18] * X[3]);
    ACC[16]=(sPAR[24] * X[2]);
    ACC[19]=piecewise((sPAR[7] / (1.0 + pow(2.718281828459045,(-80.0 * (-0.05 + (T - sPAR[31])))))),(lt(T,(0.15 + sPAR[31])) && geq(T,sPAR[31])),piecewise(sPAR[7],geq(T,(0.15 + sPAR[31])),0.0));
    ACC[3]=((sPAR[11] * (X[8] * ACC[19])) - (ACC[20] * X[10]));
    ACC[13]=((sPAR[21] * (ACC[19] * X[9])) - (ACC[23] * X[11]));
    ACC[11]=((sPAR[19] * (X[8] * X[1])) - (ACC[22] * X[9]));
    ACC[12]=((sPAR[20] * (X[10] * X[1])) - (sPAR[28] * X[11]));
    ACC[14]=(sPAR[22] * X[11]);
    ACC[15]=(sPAR[23] * X[11]);
    F[6]=(ACC[4] + (ACC[5] - ACC[6]));
    F[5]=(ACC[17] + (ACC[6] - ACC[4]));
    F[0]=((-(ACC[2])) * (ACC[17] + ACC[5]));
    F[4]=(ACC[7] + ((-(ACC[18])) - ACC[17]));
    F[7]=(ACC[18] + ((-(ACC[5])) - ACC[7]));
    F[3]=((ACC[2] * (ACC[8] + ACC[9])) - ACC[10]);
    F[8]=((-(ACC[3])) - ACC[11]);
    F[9]=(ACC[11] - ACC[13]);
    F[1]=(ACC[16] + (ACC[7] + (ACC[6] + ((-(ACC[11])) - ACC[12]))));
    F[12]=ACC[14];
    F[10]=(ACC[3] + (ACC[15] - ACC[12]));
    F[11]=(ACC[12] + (ACC[13] + ((-(ACC[14])) - ACC[15])));
    F[2]=(ACC[15] + (((-(ACC[16])) - ACC[18]) - ACC[4]));

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
    ACC[0]=0.0; //Cc
    ACC[1]=0.0; //Cp
    ACC[2]=0.0; //Cpc
    ACC[3]=0.0; //J1
    ACC[4]=0.0; //J10
    ACC[5]=0.0; //J11
    ACC[6]=0.0; //J12
    ACC[7]=0.0; //J13
    ACC[8]=0.0; //J14
    ACC[9]=0.0; //J15
    ACC[10]=0.0; //J16
    ACC[11]=0.0; //J2
    ACC[12]=0.0; //J3
    ACC[13]=0.0; //J4
    ACC[14]=0.0; //J5
    ACC[15]=0.0; //J6
    ACC[16]=0.0; //J7
    ACC[17]=0.0; //J8
    ACC[18]=0.0; //J9
    ACC[19]=0.0; //L
    ACC[20]=0.0; //kr1
    ACC[21]=0.0; //kr11
    ACC[22]=0.0; //kr2
    ACC[23]=0.0; //kr4
    sPAR[0]=1.0; //Compartment
    sPAR[1]=3e-05; //Kd1
    sPAR[2]=0.1; //Kd11
    sPAR[3]=27500.0; //Kd2
    sPAR[4]=3e-05; //Kd4
    sPAR[5]=19.8; //Km14
    sPAR[6]=5.0; //Km15
    sPAR[7]=0.1; //Ls
    sPAR[8]=4000.0; //PIP2
    sPAR[9]=4.61; //Rpc
    sPAR[10]=2550.0; //Vc
    sPAR[11]=0.0003; //kf1
    sPAR[12]=0.042; //kf10
    sPAR[13]=0.0334; //kf11
    sPAR[14]=6.0; //kf12
    sPAR[15]=6.0; //kf13
    sPAR[16]=0.444; //kf14
    sPAR[17]=3.8; //kf15
    sPAR[18]=1.25; //kf16
    sPAR[19]=0.000275; //kf2
    sPAR[20]=1.0; //kf3
    sPAR[21]=0.3; //kf4
    sPAR[22]=0.0004; //kf5
    sPAR[23]=1.0; //kf6
    sPAR[24]=0.15; //kf7
    sPAR[25]=0.0167; //kf8
    sPAR[26]=0.0042; //kf9
    sPAR[27]=1.0; //kr10
    sPAR[28]=0.001; //kr3
    sPAR[29]=0.0167; //kr8
    sPAR[30]=1.0; //kr9
    sPAR[31]=30.0; //ts
    X[0]=0.1; //Ca
    X[1]=10000.0; //Gd
    X[2]=0.0; //Gt
    X[3]=0.0; //IP3
    X[4]=90.90000000000001; //P
    X[5]=0.0; //Pc
    X[6]=0.0; //Pcg
    X[7]=0.0; //Pg
    X[8]=13.9; //R
    X[9]=5.06; //Rg
    X[10]=0.0; //Rl
    X[11]=0.0; //Rlg
    X[12]=0.0; //Rlgp

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
