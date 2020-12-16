
#ifndef BIOMD210_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD210_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[10]=0.0;
    F[8]=0.0;
    F[14]=0.0;
    F[4]=0.0;
    F[2]=0.0;
    F[6]=0.0;
    F[17]=0.0;
    F[15]=0.0;
    F[16]=0.0;
    F[11]=0.0;
    F[5]=(((sPAR[36] + ((sPAR[37] * X[1]) + (sPAR[38] * X[3]))) / (1.0 + ((sPAR[39] * X[1]) + (sPAR[40] * X[3])))) - (sPAR[31] * X[5]));
    F[1]=(((sPAR[25] + (sPAR[26] * X[1])) / (1.0 + (X[1] * (sPAR[34] + (sPAR[35] * X[9]))))) - (sPAR[30] * X[1]));
    F[3]=((((sPAR[11] * X[11]) + (sPAR[12] * X[3])) / (1.0 + ((sPAR[15] * X[11]) + ((sPAR[16] * X[3]) + (sPAR[17] * X[7]))))) - (sPAR[32] * X[3]));
    F[7]=((X[11] * ((sPAR[1] + (sPAR[2] * X[7])) / (1.0 + ((X[11] * (sPAR[5] + (sPAR[6] * X[7]))) + (sPAR[7] * (X[11] * X[3])))))) - (sPAR[33] * X[7]));
    F[13]=(((sPAR[10] + (X[9] * (X[13] * (sPAR[11] + (sPAR[12] * X[7]))))) / (1.0 + ((X[9] * (sPAR[14] + (sPAR[15] * X[13]))) + (sPAR[16] * (X[9] * (X[13] * X[7])))))) - (sPAR[28] * X[13]));
    F[9]=(((sPAR[0] + ((sPAR[1] * X[0]) + (X[9] * (X[13] * (sPAR[2] + (sPAR[3] * X[7])))))) / (1.0 + ((sPAR[4] * X[0]) + ((X[9] * (sPAR[5] + (sPAR[6] * X[13]))) + ((sPAR[7] * (X[9] * (X[13] * X[7]))) + ((sPAR[8] * (X[1] * X[9])) + (sPAR[9] * X[5]))))))) - (sPAR[27] * X[9]));
    F[0]=0.0;
    F[12]=0.0;

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
    sPAR[0]=0.001; //a0
    sPAR[1]=0.02; //a1
    sPAR[2]=0.0125; //a2
    sPAR[3]=0.025; //a3
    sPAR[4]=1.0; //b0
    sPAR[5]=0.02; //b1
    sPAR[6]=0.0125; //b2
    sPAR[7]=0.03; //b3
    sPAR[8]=10.0; //b4
    sPAR[9]=10.0; //b5
    sPAR[10]=0.001; //c0
    sPAR[11]=0.05; //c1
    sPAR[12]=0.0125; //c2
    sPAR[13]=1.0; //cell
    sPAR[14]=0.001; //d0
    sPAR[15]=0.05; //d1
    sPAR[16]=0.0125; //d2
    sPAR[17]=0.05; //d3
    sPAR[18]=0.001; //e0
    sPAR[19]=0.1; //e1
    sPAR[20]=0.1; //e2
    sPAR[21]=0.001; //f0
    sPAR[22]=0.1; //f1
    sPAR[23]=0.1; //f2
    sPAR[24]=10.0; //f3
    sPAR[25]=0.001; //g0
    sPAR[26]=2.0; //g1
    sPAR[27]=0.1; //gamma1
    sPAR[28]=0.1; //gamma2
    sPAR[29]=0.1; //gamma3
    sPAR[30]=0.1; //gamma4
    sPAR[31]=0.1; //gamma5
    sPAR[32]=0.01; //gammag
    sPAR[33]=0.01; //gamman
    sPAR[34]=2.0; //h0
    sPAR[35]=5.0; //h1
    sPAR[36]=0.001; //i0
    sPAR[37]=0.1; //i1
    sPAR[38]=0.1; //i2
    sPAR[39]=0.1; //j0
    sPAR[40]=0.1; //j1
    sPAR[41]=0.1; //p0
    sPAR[42]=1.0; //p1
    sPAR[43]=0.00025; //p2
    sPAR[44]=1.0; //q0
    sPAR[45]=0.00025; //q1
    sPAR[46]=15.0; //q2
    X[0]=10.0; //A
    X[1]=0.01; //CDX2
    X[2]=0.0; //CDX2_Gene
    X[3]=0.01; //GATA6
    X[4]=0.0; //GATA6_Gene
    X[5]=0.01; //GCNF
    X[6]=0.0; //GCNF_Gene
    X[7]=0.01; //NANOG
    X[8]=0.0; //NANOG_Gene
    X[9]=0.01; //OCT4
    X[10]=0.0; //OCT4_Gene
    X[11]=0.1; //OCT4_SOX2
    X[12]=0.0; //Protein
    X[13]=0.01; //SOX2
    X[14]=0.0; //SOX2_Gene
    X[15]=0.0; //degradation
    X[16]=0.0; //p53
    X[17]=0.01; //targetGene

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
