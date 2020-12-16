
#ifndef BIOMD203_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD203_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[4]=0.0;
    F[2]=0.0;
    F[8]=0.0;
    F[11]=0.0;
    F[9]=0.0;
    F[6]=((((sPAR[23] * X[5]) + sPAR[18]) / (1.0 + ((sPAR[18] / sPAR[19]) + (X[5] * (sPAR[28] + (sPAR[29] * X[1])))))) - (sPAR[27] * X[6]));
    F[5]=((sPAR[30] * (X[3] * X[7])) + (((-(sPAR[31])) - sPAR[32]) * X[5]));
    F[1]=(((sPAR[17] + (X[5] * (sPAR[13] + (sPAR[14] * X[1])))) / (1.0 + ((sPAR[17] / sPAR[19]) + ((X[5] * (sPAR[21] + (sPAR[20] * X[1]))) + (sPAR[22] * X[10]))))) - (sPAR[25] * X[1]));
    F[7]=(((sPAR[16] + ((sPAR[6] * X[0]) + (X[5] * (sPAR[7] + (sPAR[8] * X[1]))))) / (1.0 + ((sPAR[16] / sPAR[19]) + ((sPAR[10] * X[0]) + (X[5] * (sPAR[11] + (sPAR[12] * X[1]))))))) + ((sPAR[31] * X[5]) + (((-(sPAR[30])) * (X[3] * X[7])) - (sPAR[26] * X[7]))));
    F[3]=(((sPAR[15] + ((sPAR[0] * X[0]) + (X[5] * (sPAR[1] + (sPAR[2] * X[1]))))) / (1.0 + ((sPAR[15] / sPAR[19]) + ((sPAR[3] * X[0]) + (X[5] * (sPAR[4] + (sPAR[5] * X[1]))))))) + ((sPAR[31] * X[5]) + (X[3] * (((-(sPAR[30])) * X[7]) - sPAR[24]))));
    F[0]=0.0;
    F[10]=0.0;

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
    sPAR[0]=1.0; //a1
    sPAR[1]=0.01; //a2
    sPAR[2]=0.2; //a3
    sPAR[3]=0.0011; //b1
    sPAR[4]=0.001; //b2
    sPAR[5]=0.0007; //b3
    sPAR[6]=1.0; //c1
    sPAR[7]=0.01; //c2
    sPAR[8]=0.2; //c3
    sPAR[9]=1.0; //compartment
    sPAR[10]=0.0011; //d1
    sPAR[11]=0.001; //d2
    sPAR[12]=0.0007; //d3
    sPAR[13]=0.005; //e1
    sPAR[14]=0.1; //e2
    sPAR[15]=0.0001; //eta1
    sPAR[16]=0.0001; //eta3
    sPAR[17]=0.0001; //eta5
    sPAR[18]=0.0001; //eta7
    sPAR[19]=1000.0; //f
    sPAR[20]=0.001; //f1
    sPAR[21]=0.000995; //f2
    sPAR[22]=0.01; //f3
    sPAR[23]=0.1; //g1
    sPAR[24]=1.0; //gamma1
    sPAR[25]=1.0; //gamma2
    sPAR[26]=1.0; //gamma3
    sPAR[27]=0.01; //gamma4
    sPAR[28]=0.0019; //h1
    sPAR[29]=0.05; //h2
    sPAR[30]=0.05; //k1c
    sPAR[31]=0.001; //k2c
    sPAR[32]=5.0; //k3c
    X[0]=10.0; //A
    X[1]=0.01; //NANOG
    X[2]=0.0; //NANOG_Gene
    X[3]=0.01; //OCT4
    X[4]=0.0; //OCT4_Gene
    X[5]=0.1; //OCT4_SOX2
    X[6]=0.0; //Protein
    X[7]=0.01; //SOX2
    X[8]=0.0; //SOX2_Gene
    X[9]=0.0; //degradation
    X[10]=0.0; //p53
    X[11]=0.01; //targetGene

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
