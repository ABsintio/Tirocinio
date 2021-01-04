
#ifndef BIOMD372_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD372_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[7]=(sPAR[8] / (1.0 + pow(2.718281828459045,(sPAR[17] * ((X[5] / sPAR[15]) - sPAR[4])))));
    ACC[6]=(sPAR[10] + ((sPAR[12] - sPAR[10]) / (1.0 + pow((X[1] * (((1.0 / sPAR[14]) + (1.0 / (sPAR[6] * sPAR[20]))) / sPAR[3])),(-(sPAR[18]))))));
    ACC[5]=(X[0] / (sPAR[13] * sPAR[2]));
    ACC[4]=(sPAR[11] * (1.0 - pow(2.718281828459045,((-(X[0])) / (sPAR[13] * sPAR[1])))));
    ACC[0]=(0.1 * (X[0] / sPAR[13]));
    ACC[1]=(X[1] / sPAR[14]);
    ACC[2]=(X[2] / sPAR[15]);
    ACC[3]=(sPAR[9] / (1.0 + pow(2.718281828459045,((sPAR[0] - (X[0] / sPAR[13])) / sPAR[16]))));
    F[4]=(3.0 * ((X[3] - X[4]) / sPAR[19]));
    F[3]=(3.0 * ((X[2] - X[3]) / sPAR[19]));
    F[5]=(3.0 * ((X[4] - X[5]) / sPAR[19]));
    F[0]=(sPAR[7] + (ACC[7] + ((-(ACC[4])) - (ACC[5] * ACC[6]))));
    F[1]=((sPAR[6] * (ACC[2] - ACC[1])) - (X[1] / sPAR[20]));
    F[2]=(ACC[3] + ((sPAR[6] * (ACC[1] - ACC[2])) - (X[2] / sPAR[21])));

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
    ACC[0]=123.4261665; //G_conc
    ACC[1]=22.1169562090909; //Ii_conc
    ACC[2]=31.12147233; //Ip_conc
    ACC[3]=15.174877041143; //f1_G
    ACC[4]=71.9863579104227; //f2_G
    ACC[5]=1.234261665; //f3_G
    ACC[6]=204.190214963962; //f4_Ii
    ACC[7]=12.7950632297315; //f5_x3
    sPAR[0]=2000.0; //C1
    sPAR[1]=144.0; //C2
    sPAR[2]=1000.0; //C3
    sPAR[3]=80.0; //C4
    sPAR[4]=26.0; //C5
    sPAR[5]=1.0; //COMpartment
    sPAR[6]=0.2; //E
    sPAR[7]=216.0; //Gin
    sPAR[8]=180.0; //Rg
    sPAR[9]=210.0; //Rm
    sPAR[10]=40.0; //U0
    sPAR[11]=72.0; //Ub
    sPAR[12]=940.0; //Um
    sPAR[13]=10.0; //Vg
    sPAR[14]=11.0; //Vi
    sPAR[15]=3.0; //Vp
    sPAR[16]=300.0; //a1
    sPAR[17]=0.29; //alpha
    sPAR[18]=1.77; //beta
    sPAR[19]=36.0; //td
    sPAR[20]=100.0; //ti
    sPAR[21]=6.0; //tp
    X[0]=12342.61665; //G
    X[1]=243.2865182999999; //Ii
    X[2]=93.36441699000001; //Ip
    X[3]=110.420253; //x1
    X[4]=112.7601171; //x2
    X[5]=104.5878705; //x3

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
