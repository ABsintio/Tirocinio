
#ifndef BIOMD077_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD077_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[0]=pow(2.718281828459045,(1.0 - (sPAR[1] * T)));
    ACC[1]=(0.001 * (sPAR[0] * (X[5] * ((0.3 + (0.3 * (sPAR[1] * (T * ACC[0])))) / (1.0 + (0.001 * (sPAR[0] * X[5])))))));
    F[5]=((sPAR[9] * X[0]) - (sPAR[5] * X[5]));
    F[1]=((sPAR[8] * X[0]) - (sPAR[4] * (X[4] * X[1])));
    F[0]=((sPAR[4] * (X[4] * X[1])) - (sPAR[8] * X[0]));
    F[4]=((sPAR[3] * pow(X[3],2.0)) + ((sPAR[8] * X[0]) + (X[4] * (((-(sPAR[4])) * X[1]) - sPAR[7]))));
    F[6]=((sPAR[6] * X[3]) - (sPAR[2] * (X[2] * X[6])));
    F[3]=((sPAR[2] * (X[2] * X[6])) + ((-2.0 * ((sPAR[3] * pow(X[3],2.0)) - (sPAR[7] * X[4]))) - (sPAR[6] * X[3])));
    F[2]=((sPAR[6] * X[3]) - (sPAR[2] * (X[2] * X[6])));

}

template<class Precision> __forceinline__ __device__ void PerThread_EventFunction(
	int tid, int NT, Precision*	  EF, \
	Precision     T, Precision    dT, Precision*    TD, Precision*	X, \
	Precision* cPAR, Precision* sPAR, int*       sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[2]=T > 5.0;

    EF[0] = (! (ACC[2]));
}

template<class Precision> __forceinline__ __device__ void PerThread_ActionAfterEventDetection(
    int tid, int NT, int IDX, int& UDT, \
    Precision    &T, Precision   &dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR, int*       sPARi, Precision* ACC, int* ACCi
) {
    if (IDX == 0){
	    X[2]=0.0;
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
    ACC[0]=0.0; //$cse1
    ACC[1]=0.0; //CHO
    ACC[2]=0; //$whenCondition1
    sPAR[0]=2.0; //alpha
    sPAR[1]=4.0; //beta
    sPAR[2]=2.5; //k1_reaction_0
    sPAR[3]=2500.0; //k1_reaction_1
    sPAR[4]=4000.0; //k1_reaction_2
    sPAR[5]=10.0; //k1_reaction_3
    sPAR[6]=5.0; //k2_reaction_0
    sPAR[7]=5.0; //k2_reaction_1
    sPAR[8]=200.0; //k2_reaction_2
    sPAR[9]=20000000.0; //k_reaction_4
    X[0]=0.0; //E
    X[1]=0.1; //GQ
    X[2]=1.0; //H
    X[3]=0.0; //HR
    X[4]=0.0; //HRRH
    X[5]=((-(ACC[1])) / (((0.001 * sPAR[0]) * (0.3 + (0.3 * (sPAR[1] * (T * pow(2.718281828459045,(1.0 - (sPAR[1] * T)))))))) * (-1.0 - ((((-(sPAR[0])) * 0.001) * ACC[1]) / ((0.001 * sPAR[0]) * (0.3 + (0.3 * (sPAR[1] * (T * pow(2.718281828459045,(1.0 - (sPAR[1] * T)))))))))))); //IP3
    X[6]=0.01; //R

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
