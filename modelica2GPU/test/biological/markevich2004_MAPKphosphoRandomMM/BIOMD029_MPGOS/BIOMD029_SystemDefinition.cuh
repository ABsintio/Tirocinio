
#ifndef BIOMD029_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD029_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[2]=0.0;
    F[1]=0.0;
    F[5]=((X[1] * ((sPAR[9] * (X[4] / ((1.0 + ((X[0] * ((sPAR[0] + sPAR[2]) / (sPAR[0] * sPAR[2]))) + ((X[4] / sPAR[1]) + (X[3] / sPAR[3])))) * sPAR[1]))) + (sPAR[11] * (X[3] / ((1.0 + ((X[0] * ((sPAR[0] + sPAR[2]) / (sPAR[0] * sPAR[2]))) + ((X[4] / sPAR[1]) + (X[3] / sPAR[3])))) * sPAR[3]))))) - (sPAR[12] * (X[2] * (X[5] / (sPAR[4] * (1.0 + ((X[5] / sPAR[4]) + ((X[3] / sPAR[5]) + ((X[4] / sPAR[6]) + (X[0] / sPAR[7]))))))))));
    F[3]=((sPAR[10] * (X[1] * (X[0] / (sPAR[2] * (1.0 + ((X[0] * ((sPAR[0] + sPAR[2]) / (sPAR[2] * sPAR[0]))) + ((X[4] / sPAR[1]) + (X[3] / sPAR[3])))))))) + ((sPAR[12] * (X[2] * (X[5] / (sPAR[4] * (1.0 + ((X[5] / sPAR[4]) + ((X[3] / sPAR[5]) + ((X[4] / sPAR[6]) + (X[0] / sPAR[7]))))))))) + (((-(sPAR[11])) * (X[1] * (X[3] / ((1.0 + ((X[0] * ((sPAR[0] + sPAR[2]) / (sPAR[0] * sPAR[2]))) + ((X[4] / sPAR[1]) + (X[3] / sPAR[3])))) * sPAR[3])))) - (sPAR[13] * (X[2] * (X[3] / (sPAR[5] * (1.0 + ((X[5] / sPAR[4]) + ((X[3] / sPAR[5]) + ((X[4] / sPAR[6]) + (X[0] / sPAR[7]))))))))))));
    F[4]=((X[1] * ((sPAR[8] * (X[0] / ((1.0 + ((X[0] * ((sPAR[0] + sPAR[2]) / (sPAR[0] * sPAR[2]))) + ((X[4] / sPAR[1]) + (X[3] / sPAR[3])))) * sPAR[0]))) - (sPAR[9] * (X[4] / ((1.0 + ((X[0] * ((sPAR[0] + sPAR[2]) / (sPAR[0] * sPAR[2]))) + ((X[4] / sPAR[1]) + (X[3] / sPAR[3])))) * sPAR[1]))))) - (sPAR[14] * (X[2] * (X[4] / (sPAR[6] * (1.0 + ((X[5] / sPAR[4]) + ((X[3] / sPAR[5]) + ((X[4] / sPAR[6]) + (X[0] / sPAR[7]))))))))));
    F[0]=((X[2] * ((sPAR[13] * (X[3] / (sPAR[5] * (1.0 + ((X[5] / sPAR[4]) + ((X[3] / sPAR[5]) + ((X[4] / sPAR[6]) + (X[0] / sPAR[7])))))))) + (sPAR[14] * (X[4] / (sPAR[6] * (1.0 + ((X[5] / sPAR[4]) + ((X[3] / sPAR[5]) + ((X[4] / sPAR[6]) + (X[0] / sPAR[7])))))))))) + (X[1] * (X[0] * (((-(sPAR[8])) / ((1.0 + ((X[0] * ((sPAR[0] + sPAR[2]) / (sPAR[0] * sPAR[2]))) + ((X[4] / sPAR[1]) + (X[3] / sPAR[3])))) * sPAR[0])) - (sPAR[10] / (sPAR[2] * (1.0 + ((X[0] * ((sPAR[0] + sPAR[2]) / (sPAR[2] * sPAR[0]))) + ((X[4] / sPAR[1]) + (X[3] / sPAR[3]))))))))));

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
    sPAR[0]=410.0; //Km1
    sPAR[1]=40.0; //Km2
    sPAR[2]=20.0; //Km3
    sPAR[3]=300.0; //Km4
    sPAR[4]=22.0; //Km5
    sPAR[5]=18.0; //Km6
    sPAR[6]=34.0; //Km7
    sPAR[7]=40.0; //Km8
    sPAR[8]=1.08; //kcat1
    sPAR[9]=0.007; //kcat2
    sPAR[10]=0.008; //kcat3
    sPAR[11]=0.45; //kcat4
    sPAR[12]=0.08400000000000001; //kcat5
    sPAR[13]=0.06; //kcat6
    sPAR[14]=0.108; //kcat7
    X[0]=800.0; //M
    X[1]=180.0; //MEK
    X[2]=100.0; //MKP3
    X[3]=0.0; //MpT
    X[4]=0.0; //MpY
    X[5]=0.0; //Mpp

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
