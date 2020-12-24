
#ifndef BIOMD262_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD262_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[3]=(X[8] * sPAR[19]);
    ACC[1]=((X[4] + X[5]) * sPAR[17]);
    ACC[2]=((X[6] + X[7]) * sPAR[18]);
    ACC[0]=(sPAR[4] + (piecewise(sPAR[2], T <= sPAR[20], 0) + (sPAR[3] * (T / sPAR[21]))));
    F[9]=0.0;
    F[8]=(sPAR[0] * ((sPAR[10] * X[5]) - (sPAR[12] * X[8])));
    F[5]=(sPAR[0] * ((sPAR[9] * (X[4] * X[3])) + (((-(sPAR[16])) - sPAR[10]) * X[5])));
    F[3]=(sPAR[0] * ((sPAR[12] * X[8]) + ((sPAR[16] * X[5]) - (sPAR[9] * (X[4] * X[3])))));
    F[4]=(sPAR[0] * ((sPAR[7] * X[7]) + ((sPAR[10] * X[5]) + ((sPAR[16] * X[5]) + (X[4] * (((-(sPAR[9])) * X[3]) - sPAR[11]))))));
    F[0]=(sPAR[0] * ((sPAR[11] * X[4]) + ((sPAR[15] * X[7]) - (sPAR[6] * (X[6] * X[0])))));
    F[7]=(sPAR[0] * ((sPAR[6] * (X[6] * X[0])) + (((-(sPAR[15])) - sPAR[7]) * X[7])));
    F[6]=(sPAR[0] * ((sPAR[7] * X[7]) + ((sPAR[13] * X[2]) + ((sPAR[15] * X[7]) + (X[6] * (((-(sPAR[6])) * X[0]) - sPAR[8]))))));
    F[1]=(sPAR[0] * ((sPAR[1] * X[9]) + ((sPAR[14] * X[2]) + (((-(sPAR[5])) * (ACC[0] * X[1])) - (sPAR[1] * X[1])))));
    F[2]=(sPAR[0] * ((sPAR[5] * (ACC[0] * X[1])) + (((-(sPAR[14])) - sPAR[13]) * X[2])));

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
    ACC[0]=0.0; //EGF
    ACC[1]=0.0; //pAkt_total
    ACC[2]=0.0; //pEGFR_total
    ACC[3]=0.0; //pS6_total
    sPAR[0]=1.0; //Cell
    sPAR[1]=0.000106386129269658; //EGFR_turnover
    sPAR[2]=0.0; //EGF_conc_impulse
    sPAR[3]=30.0; //EGF_conc_ramp
    sPAR[4]=0.0; //EGF_conc_step
    sPAR[5]=0.00673816; //k1_0
    sPAR[6]=1.5543e-05; //k1_1
    sPAR[7]=0.0305684; //k1_2
    sPAR[8]=0.0997194; //k1_3
    sPAR[9]=2.10189e-06; //k1_4
    sPAR[10]=0.00121498; //k1_5
    sPAR[11]=0.0327962; //k1_6
    sPAR[12]=0.00113102; //k1_7
    sPAR[13]=0.0192391; //k1_9
    sPAR[14]=0.040749; //k2_0
    sPAR[15]=0.00517473; //k2_1
    sPAR[16]=5.1794e-15; //k2_4
    sPAR[17]=60.0587507734138; //pAkt_scaleFactor
    sPAR[18]=0.000181734813832032; //pEGFR_scaleFactor
    sPAR[19]=49886.2313741851; //pS6_scaleFactor
    sPAR[20]=60.0; //pulse_time
    sPAR[21]=3600.0; //ramp_time
    X[0]=0.0433090165709309; //Akt
    X[9]=68190.1837333797; //pro_EGFR
    X[1]=X[9]; //EGFR
    X[2]=0.0; //EGF_EGFR
    X[3]=3.54316740542218; //S6
    X[4]=0.0; //pAkt
    X[5]=0.0; //pAkt_S6
    X[6]=0.0; //pEGFR
    X[7]=0.0; //pEGFR_Akt
    X[8]=0.0; //pS6

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
