
#ifndef BIOMD236_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD236_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[4]=(sPAR[10] * (sPAR[16] / sPAR[21]));
    ACC[3]=(sPAR[9] * (sPAR[16] / sPAR[21]));
    ACC[6]=(sPAR[12] * (sPAR[16] / sPAR[21]));
    ACC[5]=(sPAR[11] * (sPAR[16] / sPAR[21]));
    ACC[1]=(X[2] * (sPAR[1] / (1.0 + sPAR[1])));
    ACC[7]=(ACC[1] / sPAR[8]);
    ACC[2]=(X[0] * (sPAR[2] / (1.0 + sPAR[2])));
    ACC[0]=(X[0] - ACC[2]);
    F[2]=(sPAR[15] * ((ACC[5] * (pow((X[3] / sPAR[7]),sPAR[17]) / (1.0 + pow((X[3] / sPAR[7]),sPAR[17])))) - (ACC[6] * (pow(ACC[7],(sPAR[19] + ((sPAR[18] - sPAR[19]) * (X[1] / ((1.0 + (X[1] / sPAR[5])) * sPAR[5]))))) / (pow(ACC[7],(sPAR[19] + ((sPAR[18] - sPAR[19]) * (X[1] / ((1.0 + (X[1] / sPAR[5])) * sPAR[5]))))) + ((1.0 + pow((X[1] / sPAR[13]),sPAR[20])) / (1.0 + (pow(sPAR[14],(sPAR[19] + ((sPAR[18] - sPAR[19]) * (X[1] / (sPAR[5] * (1.0 + (X[1] / sPAR[5]))))))) * pow((X[1] / sPAR[13]),sPAR[20])))))))));
    F[0]=(sPAR[15] * ((2.0 * (ACC[3] * (((X[1] / sPAR[5]) - (ACC[2] * (ACC[0] / ((sPAR[0] * sPAR[4]) * sPAR[3])))) / (1.0 + ((X[1] / sPAR[5]) + ((ACC[0] / sPAR[4]) + (ACC[2] * (ACC[0] / (sPAR[3] * sPAR[4]))))))))) - (ACC[4] * (ACC[2] / (sPAR[6] + ACC[2])))));
    F[1]=(sPAR[15] * ((ACC[6] * (pow(ACC[7],(sPAR[19] + ((sPAR[18] - sPAR[19]) * (X[1] / ((1.0 + (X[1] / sPAR[5])) * sPAR[5]))))) / (pow(ACC[7],(sPAR[19] + ((sPAR[18] - sPAR[19]) * (X[1] / ((1.0 + (X[1] / sPAR[5])) * sPAR[5]))))) + ((1.0 + pow((X[1] / sPAR[13]),sPAR[20])) / (1.0 + (pow(sPAR[14],(sPAR[19] + ((sPAR[18] - sPAR[19]) * (X[1] / (sPAR[5] * (1.0 + (X[1] / sPAR[5]))))))) * pow((X[1] / sPAR[13]),sPAR[20]))))))) + (ACC[3] * (((ACC[2] * (ACC[0] / ((sPAR[0] * sPAR[4]) * sPAR[3]))) - (X[1] / sPAR[5])) / (1.0 + ((X[1] / sPAR[5]) + ((ACC[0] / sPAR[4]) + (ACC[2] * (ACC[0] / (sPAR[3] * sPAR[4]))))))))));
    F[3]=0.0;

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
    ACC[0]=0.0; //DHAP
    ACC[1]=0.0; //F6P
    ACC[2]=0.0; //G3P
    ACC[3]=0.0; //Vfba
    ACC[4]=0.0; //Vgapdh
    ACC[5]=0.0; //Vgk
    ACC[6]=0.0; //Vpfk
    ACC[7]=0.0; //sigma
    sPAR[0]=0.1; //KeqFBA
    sPAR[1]=0.3; //KeqGPI
    sPAR[2]=0.045455; //KeqTPI
    sPAR[3]=0.5; //Pfba
    sPAR[4]=0.275; //Qfba
    sPAR[5]=0.005; //Sfba
    sPAR[6]=0.005; //Sgapdh
    sPAR[7]=8.0; //Sgk
    sPAR[8]=4.0; //Spfk
    sPAR[9]=25.0; //Vfba_min
    sPAR[10]=250.0; //Vgapdh_min
    sPAR[11]=10.0; //Vgk_min
    sPAR[12]=100.0; //Vpfk_min
    sPAR[13]=0.01; //Xpfk
    sPAR[14]=5.0; //alpha
    sPAR[15]=1.0; //cell
    sPAR[16]=0.3333; //dw_per_ml
    sPAR[17]=1.7; //hGK
    sPAR[18]=1.0; //hact
    sPAR[19]=2.5; //hpfk
    sPAR[20]=2.5; //hx
    sPAR[21]=60.0; //min_to_sec
    X[0]=0.00262966; //DHAP_G3P
    X[1]=0.00063612; //FBP
    X[2]=3.71728; //G6P_F6P
    X[3]=10.0; //GLC
}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
