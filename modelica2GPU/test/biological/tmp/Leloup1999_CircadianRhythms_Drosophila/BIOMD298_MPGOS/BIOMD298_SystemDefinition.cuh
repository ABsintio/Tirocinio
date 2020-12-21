
#ifndef BIOMD298_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD298_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[0]=pow(sPAR[1],sPAR[32]); // Non presente nell'XML
    ACC[1]=pow(X[1],sPAR[32]);
    ACC[2]=pow(sPAR[2],sPAR[32]); // Non presente nell'XML
    ACC[3]=(X[4] + (X[5] + (X[6] + (X[0] + X[1]))));
    F[1]=((sPAR[23] * X[0]) - (X[1] * (sPAR[24] + sPAR[29])));
    F[0]=((sPAR[25] * (X[6] * X[9])) + ((sPAR[24] * X[1]) - (X[0] * (sPAR[26] + (sPAR[23] + sPAR[28])))));
    F[9]=((sPAR[20] * (X[8] / (sPAR[6] + X[8]))) + ((sPAR[26] * X[0]) + ((((-(sPAR[22])) * (X[9] / (sPAR[8] + X[9]))) - (sPAR[25] * (X[6] * X[9]))) - (X[9] * ((sPAR[34] / (sPAR[12] + X[9])) + sPAR[27])))));
    F[8]=((sPAR[16] * (X[7] / (sPAR[2] + X[7]))) + ((sPAR[22] * (X[9] / (sPAR[8] + X[9]))) - (X[8] * ((sPAR[18] / (sPAR[4] + X[8])) + ((sPAR[20] / (sPAR[6] + X[8])) + sPAR[27])))));
    F[7]=((sPAR[31] * X[3]) + ((sPAR[18] * (X[8] / (sPAR[4] + X[8]))) - (X[7] * ((sPAR[16] / (sPAR[2] + X[7])) + sPAR[27]))));
    F[3]=((sPAR[38] * (ACC[2] / (ACC[2] + ACC[1]))) - (X[3] * ((sPAR[36] / (sPAR[14] + X[3])) + sPAR[27])));
    F[6]=((sPAR[19] * (X[5] / (sPAR[5] + X[5]))) + ((sPAR[26] * X[0]) - (X[6] * ((sPAR[21] / (sPAR[7] + X[6])) + ((sPAR[25] * X[9]) + ((sPAR[33] / (sPAR[11] + X[6])) + sPAR[27]))))));
    F[5]=((sPAR[15] * (X[4] / (sPAR[1] + X[4]))) + ((sPAR[21] * (X[6] / (sPAR[7] + X[6]))) - (X[5] * ((sPAR[17] / (sPAR[3] + X[5])) + ((sPAR[19] / (sPAR[5] + X[5])) + sPAR[27])))));
    F[4]=((sPAR[30] * X[2]) + ((sPAR[17] * (X[5] / (sPAR[3] + X[5]))) - (X[4] * ((sPAR[15] / (sPAR[1] + X[4])) + sPAR[27]))));
    F[2]=((sPAR[37] * (ACC[0] / (ACC[0] + ACC[1]))) - (X[2] * ((sPAR[35] / (sPAR[13] + X[2])) + sPAR[27])));

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
    ACC[3]=0.0; //Pt
    sPAR[0]=1.0; //Compartment
    sPAR[1]=2.0; //K1P
    sPAR[2]=2.0; //K1T
    sPAR[3]=2.0; //K2P
    sPAR[4]=2.0; //K2T
    sPAR[5]=2.0; //K3P
    sPAR[6]=2.0; //K3T
    sPAR[7]=2.0; //K4P
    sPAR[8]=2.0; //K4T
    sPAR[9]=1.0; //KIP
    sPAR[10]=1.0; //KIT
    sPAR[11]=0.2; //KdP
    sPAR[12]=0.2; //KdT
    sPAR[13]=0.2; //KmP
    sPAR[14]=0.2; //KmT
    sPAR[15]=8.0; //V1P
    sPAR[16]=8.0; //V1T
    sPAR[17]=1.0; //V2P
    sPAR[18]=1.0; //V2T
    sPAR[19]=8.0; //V3P
    sPAR[20]=8.0; //V3T
    sPAR[21]=1.0; //V4P
    sPAR[22]=1.0; //V4T
    sPAR[23]=0.8; //k1
    sPAR[24]=0.2; //k2
    sPAR[25]=1.2; //k3
    sPAR[26]=0.6; //k4
    sPAR[27]=0.01; //kd
    sPAR[28]=0.01; //kdC
    sPAR[29]=0.01; //kdN
    sPAR[30]=0.9; //ksP
    sPAR[31]=0.9; //ksT
    sPAR[32]=4.0; //n
    sPAR[33]=2.2; //vdP
    sPAR[34]=3.0; //vdT
    sPAR[35]=1.0; //vmP
    sPAR[36]=0.7; //vmT
    sPAR[37]=1.1; //vsP
    sPAR[38]=1.0; //vsT
    X[0]=0.207614; //C
    X[1]=1.34728; //CN
    X[2]=0.0614368; //MP
    X[3]=0.08603420000000001; //MT
    X[4]=0.0169928; //P0
    X[5]=0.0141356; //P1
    X[6]=0.0614368; //P2
    X[7]=0.0217261; //T0
    X[8]=0.0213384; //T1
    X[9]=0.0145428; //T2

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
