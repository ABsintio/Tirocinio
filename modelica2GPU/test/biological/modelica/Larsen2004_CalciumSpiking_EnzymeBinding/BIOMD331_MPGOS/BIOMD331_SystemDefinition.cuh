
#ifndef BIOMD331_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD331_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[0]=pow(X[5],4.0);
    ACC[1]=pow(sPAR[1],4.0); // non presente nell'XML
    ACC[2]=pow(X[1],8.0);
    ACC[3]=pow(sPAR[4],8.0); // non presente nell'XML
    ACC[4]=pow(X[1],sPAR[29]);
    ACC[5]=pow(sPAR[9],sPAR[29]); // non presente nell'XML
    F[6]=((sPAR[25] * X[3]) - (sPAR[27] * X[6]));
    F[3]=((sPAR[24] * (ACC[4] / (ACC[5] + ACC[4]))) - (sPAR[26] * X[3]));
    F[2]=((sPAR[17] * (ACC[2] / (ACC[3] + ACC[2]))) + ((X[1] - X[2]) * (sPAR[19] * (X[1] / (X[1] + sPAR[5])))));
    F[0]=((sPAR[16] * (X[1] / (X[1] + sPAR[3]))) + ((X[1] - X[0]) * (sPAR[12] * (X[1] * (ACC[0] / (ACC[0] + ACC[1]))))));
    F[1]=(((X[0] - X[1]) * (sPAR[12] * (X[1] * (ACC[0] / (ACC[0] + ACC[1]))))) + ((sPAR[13] * X[5]) + ((sPAR[14] * X[4]) + ((X[1] * (((-(sPAR[15])) / (X[1] + sPAR[2])) - (sPAR[16] / (X[1] + sPAR[3])))) + (((X[2] - X[1]) * (sPAR[19] * (X[1] / (X[1] + sPAR[5])))) - (sPAR[17] * (ACC[2] / (ACC[3] + ACC[2]))))))));
    F[5]=((sPAR[22] * X[4]) - (sPAR[23] * (X[5] / (X[5] + sPAR[8]))));
    F[4]=(sPAR[11] + ((X[4] * (sPAR[18] - (sPAR[20] * (X[5] / (X[4] + sPAR[6]))))) - (sPAR[21] * (X[4] * (X[1] / (X[4] + sPAR[7]))))));

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
    sPAR[0]=1.0; //ER
    sPAR[1]=3.0; //K11
    sPAR[2]=0.16; //K15
    sPAR[3]=0.05; //K17
    sPAR[4]=3.5; //K19
    sPAR[5]=4.5; //K21
    sPAR[6]=0.09; //K4
    sPAR[7]=1.18; //K6
    sPAR[8]=29.09; //K9
    sPAR[9]=0.62; //KM
    sPAR[10]=1.0; //cytoplasm
    sPAR[11]=0.01; //k1
    sPAR[12]=0.7; //k10
    sPAR[13]=2.8; //k12
    sPAR[14]=13.4; //k13
    sPAR[15]=153.0; //k14
    sPAR[16]=7.0; //k16
    sPAR[17]=79.0; //k18
    sPAR[18]=1.65; //k2
    sPAR[19]=0.8100000000000001; //k20
    sPAR[20]=0.64; //k3
    sPAR[21]=4.88; //k5
    sPAR[22]=2.08; //k7
    sPAR[23]=32.24; //k8
    sPAR[24]=5.0; //k_act
    sPAR[25]=3.0; //k_enz
    sPAR[26]=0.4; //k_inact
    sPAR[27]=3.0; //k_rem
    sPAR[28]=1.0; //mit
    sPAR[29]=4.0; //p
    X[0]=10.0; //Ca_ER
    X[1]=0.01; //Ca_cyt
    X[2]=0.001; //Ca_mit
    X[3]=0.0; //Enz
    X[4]=0.01; //G_alpha
    X[5]=0.01; //PLC
    X[6]=0.0; //Product

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
