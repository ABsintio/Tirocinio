
#ifndef BIOMD238_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD238_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[3]=(sPAR[4] / sPAR[8]);
    ACC[2]=(sPAR[3] / sPAR[7]);
    ACC[13]=0.0;
    ACC[9]=(sPAR[6] + (-0.5 * sPAR[12]));
    ACC[8]=(sPAR[6] + (0.5 * sPAR[12]));
    ACC[22]=(sPAR[2] / (sPAR[6] - sPAR[5]));
    ACC[5]=((ACC[22] + (sPAR[15] * (ACC[8] - sPAR[6]))) * (ACC[8] - sPAR[5]));
    ACC[7]=((ACC[22] + (sPAR[15] * (ACC[9] - sPAR[6]))) * (ACC[9] - sPAR[5]));
    ACC[23]=((3600.0 * T) - (floor((3600.0 * (T / sPAR[11]))) * sPAR[11]));
    ACC[21]=(ACC[22] + (sPAR[15] * (X[2] - (sPAR[6] * (1.0 + (sPAR[23] * X[0]))))));
    ACC[14]=(sPAR[13] * pow((1.0 + pow(2.718281828459045,((-(sPAR[9])) * (T + ((-(sPAR[27])) - sPAR[26]))))),-1.0));
    ACC[6]=(((1.0 - ACC[14]) * ACC[7]) + (ACC[14] * ACC[5]));
    ACC[4]=piecewise(ACC[6],(0.0002777777777777778 * ACC[23]) >= sPAR[25] && (0.0002777777777777778 * ACC[23]) < sPAR[24],ACC[5]);
    ACC[10]=(0.04166666666666666 * (T - sPAR[27]));
    ACC[18]=piecewise(pow(ACC[3], sPAR[4]) / 6 * exp(-ACC[3] * ACC[10]) * pow(ACC[10], sPAR[4] - 1), ACC[10] > 0.0, 0.0);
    ACC[15]=piecewise(pow(ACC[2], sPAR[3]) / 6 * exp(-ACC[3] * ACC[10]) * pow(ACC[10], sPAR[3] - 1), ACC[10] > 0.0, 0);
    ACC[11]=(0.04166666666666666 * (T - sPAR[28]));
    ACC[19]=piecewise(pow(ACC[3], sPAR[4]) / 6 * exp(-ACC[3] * ACC[11]) * pow(ACC[11], sPAR[4] - 1), ACC[11] > 0.0, 0);
    ACC[16]=piecewise(pow(ACC[2], sPAR[3]) / 6 * exp(-ACC[3] * ACC[11]) * pow(ACC[11], sPAR[3] - 1), ACC[11] > 0.0, 0);
    ACC[12]=(0.04166666666666666 * (T - sPAR[29]));
    ACC[20]=piecewise(pow(ACC[3], sPAR[4]) / 6 * exp(-ACC[3] * ACC[12]) * pow(ACC[12], sPAR[4] - 1), ACC[12] > 0.0, 0);
    ACC[1]=(sPAR[0] * (sPAR[21] * (ACC[18] + (ACC[19] + ACC[20]))));
    ACC[17]=piecewise(pow(ACC[2], sPAR[3]) / 6 * exp(-ACC[3] * ACC[12]) * pow(ACC[12], sPAR[3] - 1), ACC[12] > 0.0, 0);
    ACC[0]=(sPAR[18] * (ACC[15] + (ACC[16] + ACC[17])));
    F[2]=(pow(sPAR[10],-1.0) * (X[1] + (ACC[21] * (sPAR[5] - X[2]))));
    F[1]=(sPAR[16] * (ACC[4] - X[1]));
    F[0]=((ACC[14] * ((ACC[1] + ACC[0]) * (1.0 - X[0]))) - (sPAR[14] * X[0]));

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
    ACC[0]=0.0; //E_fast
    ACC[1]=0.0; //E_slow
    ACC[2]=0.0; //Kf
    ACC[3]=0.0; //Ks
    ACC[4]=0.0; //M_c
    ACC[5]=0.0; //M_day
    ACC[6]=0.0; //M_night
    ACC[7]=0.0; //M_night_baseline
    ACC[8]=0.0; //T_day
    ACC[9]=0.0; //T_night
    ACC[10]=0.0; //X1
    ACC[11]=0.0; //X2
    ACC[12]=0.0; //X3
    ACC[13]=0.0; //f2_drug
    ACC[14]=0.0; //f_prime
    ACC[15]=0.0; //gNfTf1
    ACC[16]=0.0; //gNfTf2
    ACC[17]=0.0; //gNfTf3
    ACC[18]=0.0; //gNsTs1
    ACC[19]=0.0; //gNsTs2
    ACC[20]=0.0; //gNsTs3
    ACC[21]=0.0; //k
    ACC[22]=0.0; //kb
    ACC[23]=0.0; //tprime
    sPAR[0]=3.0; //AMT_dose
    sPAR[1]=1.0; //COMpartment
    sPAR[2]=3.0; //M_b
    sPAR[3]=4.0; //Nf
    sPAR[4]=4.0; //Ns
    sPAR[5]=21.0; //T_a
    sPAR[6]=38.0; //T_b
    sPAR[7]=0.368; //Tf
    sPAR[8]=2.45; //Ts
    sPAR[9]=0.2229166; //alpha
    sPAR[10]=3.47; //c
    sPAR[11]=86400.0; //day_length
    sPAR[12]=1.57; //delta_T
    sPAR[13]=1.0; //delta_high_dose
    sPAR[14]=5.35; //kR
    sPAR[15]=0.0258; //kinc
    sPAR[16]=1.1375; //km
    sPAR[17]=1.0; //pEf1
    sPAR[18]=3.57; //pEf2
    sPAR[19]=8.0; //pEf3
    sPAR[20]=0.2; //pEs1
    sPAR[21]=2.43; //pEs2
    sPAR[22]=50.0; //pEs3
    sPAR[23]=0.144; //pEtot
    sPAR[24]=17.5; //t_day
    sPAR[25]=6.73; //t_night
    sPAR[26]=45.12; //t_prime
    sPAR[27]=24.0; //tdose1
    sPAR[28]=72.0; //tdose2
    sPAR[29]=120.0; //tdose3
    X[0]=0.0; //BR
    X[1]=3.5; //M
    X[2]=38.785; //T

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
