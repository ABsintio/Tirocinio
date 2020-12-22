
#ifndef BIOMD280_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD280_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[0]=tanh(((X[1] - sPAR[2]) / sPAR[3]));
    ACC[1]=tanh(((X[1] - sPAR[4]) / sPAR[5]));
    ACC[2]=cosh((0.5 * ((X[1] - sPAR[4]) / sPAR[5])));
    ACC[5]=(sPAR[12] * ACC[2]);
    ACC[4]=(0.5 + (0.5 * ACC[1]));
    ACC[3]=(0.5 + (0.5 * ACC[0]));
    F[0]=(ACC[5] * (ACC[4] - X[0]));
    F[1]=((sPAR[1] + ((sPAR[11] * (sPAR[8] - X[1])) + (((-(sPAR[9])) * (ACC[3] * (X[1] - sPAR[6]))) - (sPAR[10] * (X[0] * (X[1] - sPAR[7])))))) / sPAR[0]);

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
    ACC[0]=-1.0; //$cse1
    ACC[1]=-1.0; //$cse2
    ACC[2]=0.0; //$cse3
    ACC[3]=0.0; //Minf
    ACC[4]=0.0; //Ninf
    ACC[5]=0.0; //lambdaN
    sPAR[0]=20.0; //C
    sPAR[1]=300.0; //Iapp
    sPAR[2]=10.0; //V1
    sPAR[3]=15.0; //V2
    sPAR[4]=-1.0; //V3
    sPAR[5]=14.5; //V4
    sPAR[6]=100.0; //VCa
    sPAR[7]=-70.0; //VK
    sPAR[8]=-50.0; //VL
    sPAR[9]=4.0; //gCa
    sPAR[10]=8.0; //gK
    sPAR[11]=2.0; //gL
    sPAR[12]=0.066666666667; //lambdaN_bar
    sPAR[13]=1.0; //musclefiber
    X[0]=6.1441746e-06; //N
    X[1]=-50.0; //V

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif