
#ifndef BIOMD264_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD264_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[3]=(X[11] * sPAR[21]);
    ACC[0]=(sPAR[6] + (piecewise(sPAR[4], T <= sPAR[22], 0) + (sPAR[5] * (T / sPAR[23]))));
    ACC[2]=((X[9] + X[10]) * sPAR[20]);
    ACC[1]=((X[7] + X[8]) * sPAR[19]);
    F[5]=0.0;
    F[12]=0.0;
    F[11]=(sPAR[0] * ((sPAR[13] * X[8]) - (sPAR[15] * X[11])));
    F[8]=(sPAR[0] * ((sPAR[12] * (X[7] * X[6])) + (((-(sPAR[18])) - sPAR[13]) * X[8])));
    F[6]=(sPAR[0] * ((sPAR[15] * X[11]) + ((sPAR[18] * X[8]) - (sPAR[12] * (X[7] * X[6])))));
    F[7]=(sPAR[0] * ((sPAR[10] * X[10]) + ((sPAR[13] * X[8]) + ((sPAR[18] * X[8]) + (X[7] * (((-(sPAR[12])) * X[6]) - sPAR[14]))))));
    F[0]=(sPAR[0] * ((sPAR[14] * X[7]) + ((sPAR[17] * X[10]) - (sPAR[9] * (X[9] * X[0])))));
    F[10]=(sPAR[0] * ((sPAR[9] * (X[9] * X[0])) + (((-(sPAR[17])) - sPAR[10]) * X[10])));
    F[9]=(sPAR[0] * ((sPAR[10] * X[10]) + ((sPAR[16] * X[3]) + ((sPAR[17] * X[10]) + (X[9] * (((-(sPAR[9])) * X[0]) - sPAR[11]))))));
    F[1]=(sPAR[0] * ((sPAR[1] * X[12]) + ((sPAR[2] * X[3]) + ((sPAR[7] * X[2]) + ((((-(sPAR[3])) * (ACC[0] * X[1])) - (sPAR[8] * (X[5] * X[1]))) - (sPAR[1] * X[1]))))));
    F[3]=(sPAR[0] * ((sPAR[3] * (ACC[0] * X[1])) + ((((-(sPAR[2])) - sPAR[16]) * X[3]) + ((sPAR[7] * X[4]) - (sPAR[8] * (X[5] * X[3]))))));
    F[2]=(sPAR[0] * ((sPAR[8] * (X[5] * X[1])) + ((sPAR[2] * X[4]) + ((((-(sPAR[7])) - sPAR[1]) * X[2]) - (sPAR[3] * (ACC[0] * X[2]))))));
    F[4]=(sPAR[0] * ((sPAR[8] * (X[5] * X[3])) + ((sPAR[3] * (ACC[0] * X[2])) + (((-(sPAR[2])) - sPAR[7]) * X[4]))));

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
    sPAR[1]=0.000106386; //EGFR_turnover
    sPAR[2]=0.040749; //EGF_binding_kb
    sPAR[3]=0.00673816; //EGF_binding_kf
    sPAR[4]=0.0; //EGF_conc_pulse
    sPAR[5]=0.0; //EGF_conc_ramp
    sPAR[6]=30.0; //EGF_conc_step
    sPAR[7]=5.25096686262403e-05; //inhibitor_binding_kb
    sPAR[8]=2.43466029020655e-05; //inhibitor_binding_kf
    sPAR[9]=1.5543e-05; //k1_1
    sPAR[10]=0.0528141; //k1_2
    sPAR[11]=0.0997194; //k1_3
    sPAR[12]=2.10189e-06; //k1_4
    sPAR[13]=0.00121498; //k1_5
    sPAR[14]=0.0327962; //k1_6
    sPAR[15]=0.00113102; //k1_7
    sPAR[16]=0.0192391; //k1_9
    sPAR[17]=0.00517473; //k2_1
    sPAR[18]=5.1794e-15; //k2_4
    sPAR[19]=60.0588; //pAkt_scaleFactor
    sPAR[20]=0.000181735; //pEGFR_scaleFactor
    sPAR[21]=49886.2; //pS6_scaleFactor
    sPAR[22]=60.0; //pulse_time
    sPAR[23]=3600.0; //ramp_time
    X[0]=0.043309; //Akt
    X[12]=68190.2000000002; //pro_EGFR
    X[5]=0.0; //Inhibitor
    X[1]=(X[12] / (1.0 + (sPAR[8] * (X[5] / (sPAR[7] + sPAR[1]))))); //EGFR
    X[2]=(X[12] - X[1]); //EGFR_i
    X[3]=0.0; //EGF_EGFR
    X[4]=0.0; //EGF_EGFR_i
    X[6]=3.54317; //S6
    X[7]=0.0; //pAkt
    X[8]=0.0; //pAkt_S6
    X[9]=0.0; //pEGFR
    X[10]=0.0; //pEGFR_Akt
    X[11]=0.0; //pS6

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
