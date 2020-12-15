
#ifndef BIOMD202_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD202_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[1]=pow(X[1],2.0);
    ACC[0]=pow(sPAR[4],2.0); // Non c'era nell'XML
    ACC[3]=(ACC[0] * ((sPAR[19] - X[5]) / (ACC[1] + ACC[0])));
    ACC[2]=(sPAR[16] - (sPAR[39] * (X[4] + X[3])));
    F[3]=(sPAR[17] * ((sPAR[34] * (pow(X[5],sPAR[35]) * (X[4] / (pow(sPAR[14],sPAR[35]) + pow(X[5],sPAR[35]))))) + (((-(sPAR[33])) - sPAR[32]) * X[3])));
    F[1]=(sPAR[2] * ((sPAR[23] * (pow(X[0],sPAR[37]) / (pow(sPAR[8],sPAR[37]) + pow(X[0],sPAR[37])))) + (((-(sPAR[15])) - (sPAR[18] * pow((X[2] * (X[0] * (X[7] / ((X[2] + sPAR[13]) * (X[0] + sPAR[10]))))),3.0))) * (X[1] - X[0]))));
    F[2]=(sPAR[2] * (pow(X[0],2.0) * ((sPAR[20] / (pow(sPAR[6],2.0) + pow(X[0],2.0))) - (sPAR[31] * (X[2] / (pow(sPAR[9],2.0) + pow(X[0],2.0)))))));
    F[0]=(sPAR[2] * (((sPAR[15] + (sPAR[18] * pow((X[2] * (X[0] * (X[7] / ((X[2] + sPAR[13]) * (X[0] + sPAR[10]))))),3.0))) * (X[1] - X[0])) + ((((sPAR[28] * X[3]) + sPAR[22]) * (sPAR[1] - X[0])) + (((-(sPAR[23])) * (pow(X[0],sPAR[37]) / (pow(sPAR[8],sPAR[37]) + pow(X[0],sPAR[37])))) - (sPAR[21] * (pow(X[0],sPAR[38]) / (pow(sPAR[7],sPAR[38]) + pow(X[0],sPAR[38]))))))));
    F[7]=(sPAR[0] * (sPAR[12] + (((-(X[0])) - sPAR[12]) * X[7])));
    F[5]=(sPAR[3] * ((sPAR[26] * ACC[3]) - (sPAR[27] * X[5])));
    F[6]=(sPAR[3] * ((sPAR[25] * (pow(ACC[3],2.0) / (pow(ACC[3],2.0) + pow(sPAR[5],2.0)))) - (sPAR[29] * X[6])));
    F[4]=(sPAR[17] * ((sPAR[24] * (pow(ACC[2],sPAR[36]) / (pow(sPAR[11],sPAR[36]) + pow(ACC[2],sPAR[36])))) + ((sPAR[33] * X[3]) + (((-(sPAR[30])) * X[4]) - (sPAR[34] * (pow(X[5],sPAR[35]) * (X[4] / (pow(sPAR[14],sPAR[35]) + pow(X[5],sPAR[35])))))))));

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
    ACC[2]=0.0; //Orai1
    sPAR[4]=5.0; //K1
    sPAR[19]=0.6; //St
    X[5]=0.06; //S2a
    X[1]=0.0; //Ca_ER
    ACC[3]=(pow(sPAR[4],2.0) * ((sPAR[19] - X[5]) / (pow(X[1],2.0) + pow(sPAR[4],2.0)))); //S2
    sPAR[0]=0.5; //A
    sPAR[1]=1500.0; //Ca_ec
    sPAR[2]=1.0; //Cytoplasm
    sPAR[3]=1.0; //ER
    sPAR[5]=0.14; //K2
    sPAR[6]=0.12; //K_PLC
    sPAR[7]=0.45; //K_PMCA
    sPAR[8]=0.15; //K_SERCA
    sPAR[9]=0.1; //K_deg
    sPAR[10]=0.4; //Ka
    sPAR[11]=2e-05; //Kc
    sPAR[12]=0.4; //Kd
    sPAR[13]=1.0; //Ki
    sPAR[14]=0.2; //Ko
    sPAR[15]=0.0009300000000000001; //L
    sPAR[16]=0.001; //Orai1_t
    sPAR[17]=1.0; //PM
    sPAR[18]=66.59999999999999; //P_IP3R
    sPAR[20]=0.5; //V_PLC
    sPAR[21]=1.0; //V_PMCA
    sPAR[22]=5e-07; //V_PMleak
    sPAR[23]=1.0; //V_SERCA
    sPAR[24]=0.00018; //Vcp
    sPAR[25]=0.25; //Vs4
    sPAR[26]=4.0; //k_a
    sPAR[27]=6.0; //k_i
    sPAR[28]=2.3; //k_soc
    sPAR[29]=0.8; //kd_oligo
    sPAR[30]=0.5; //kdc
    sPAR[31]=0.5; //kdeg
    sPAR[32]=0.6; //kdo
    sPAR[33]=1.0; //kod
    sPAR[34]=0.5; //kop
    sPAR[35]=1.0; //l_hill
    sPAR[36]=3.0; //n_hill
    sPAR[37]=2.0; //p
    sPAR[38]=2.0; //q
    sPAR[39]=4.0; //r_hill
    X[0]=0.0; //Ca_Cyt
    X[2]=0.0; //IP3_Cyt
    X[3]=0.0; //O_o
    X[4]=0.0; //Oc
    X[6]=0.0; //S4
    X[7]=0.0; //h

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
