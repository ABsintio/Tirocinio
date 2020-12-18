
#ifndef BIOMD347_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD347_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[7]=0.0;
    F[13]=((sPAR[16] * (sPAR[22] * (X[14] * (sPAR[28] / sPAR[20])))) + ((sPAR[23] * (sPAR[16] * (sPAR[22] * sPAR[17]))) - (sPAR[22] * (X[13] * sPAR[28]))));
    F[14]=((sPAR[19] * (X[19] * sPAR[33])) - (sPAR[21] * (X[14] * sPAR[28])));
    F[19]=(sPAR[19] * ((X[18] - X[19]) * sPAR[33]));
    F[18]=(sPAR[19] * ((X[17] - X[18]) * sPAR[33]));
    F[17]=(sPAR[19] * ((X[16] - X[17]) * sPAR[33]));
    F[16]=(sPAR[19] * ((X[15] - X[16]) * sPAR[33]));
    F[15]=(((-(sPAR[20])) * (sPAR[21] * (X[21] * ((-1.0 + sPAR[0]) * (sPAR[33] / sPAR[32]))))) - (sPAR[19] * (X[15] * sPAR[33])));
    F[0]=((sPAR[1] * (sPAR[7] * (X[1] * (sPAR[28] / sPAR[5])))) + ((sPAR[8] * (sPAR[1] * (sPAR[7] * sPAR[2]))) - (sPAR[7] * (X[0] * sPAR[28]))));
    F[1]=((sPAR[4] * (X[6] * sPAR[33])) - (sPAR[6] * (X[1] * sPAR[28])));
    F[6]=(sPAR[4] * ((X[5] - X[6]) * sPAR[33]));
    F[5]=(sPAR[4] * ((X[4] - X[5]) * sPAR[33]));
    F[4]=(sPAR[4] * ((X[3] - X[4]) * sPAR[33]));
    F[3]=(sPAR[4] * ((X[2] - X[3]) * sPAR[33]));
    F[2]=(((-(sPAR[5])) * (sPAR[6] * (X[21] * ((-1.0 + sPAR[0]) * (sPAR[33] / sPAR[32]))))) - (sPAR[4] * (X[2] * sPAR[33])));
    F[21]=((sPAR[27] * (X[25] * sPAR[28])) - (sPAR[26] * (X[21] * sPAR[33])));
    F[25]=((X[20] * ((sPAR[25] * ((X[10] + (X[22] + (X[23] + X[24]))) * (sPAR[28] / (sPAR[30] * (1.0 + (sPAR[18] * (X[13] / sPAR[16]))))))) + (sPAR[24] * (pow(((X[22] + X[23]) / sPAR[30]),2.0) * (sPAR[28] / ((1.0 + (sPAR[3] * (X[0] / sPAR[1]))) * (1.0 + (sPAR[18] * (X[13] / sPAR[16]))))))))) - (sPAR[27] * (X[25] * sPAR[28])));
    F[20]=((sPAR[26] * (X[21] * sPAR[33])) + (X[20] * (((-(sPAR[25])) * ((X[10] + (X[22] + (X[23] + X[24]))) * (sPAR[28] / (sPAR[30] * (1.0 + (sPAR[18] * (X[13] / sPAR[16]))))))) - (sPAR[24] * (pow(((X[22] + X[23]) / sPAR[30]),2.0) * (sPAR[28] / ((1.0 + (sPAR[18] * (X[13] / sPAR[16]))) * (1.0 + (sPAR[3] * (X[0] / sPAR[1]))))))))));
    F[12]=((sPAR[14] * (X[11] * ((X[10] + (X[22] + (X[23] + X[24]))) * (sPAR[28] / sPAR[30])))) - (sPAR[15] * (X[12] * sPAR[28])));
    F[11]=((sPAR[15] * (X[12] * sPAR[28])) - (sPAR[14] * (X[11] * ((X[10] + (X[22] + (X[23] + X[24]))) * (sPAR[28] / sPAR[30])))));
    F[9]=((-(sPAR[11])) * (X[9] * ((X[22] + X[23]) * (sPAR[28] / sPAR[30]))));
    F[22]=((sPAR[9] * ((3.0 * (X[23] * (sPAR[28] / ((1.0 + (sPAR[18] * (X[13] / sPAR[16]))) * (1.0 + (sPAR[10] * X[9])))))) + (X[24] * (sPAR[28] / (1.0 + (sPAR[18] * (X[13] / sPAR[16]))))))) - (sPAR[13] * (X[12] * (X[22] * (sPAR[28] / sPAR[31])))));
    F[24]=((sPAR[9] * ((3.0 * (X[10] * (sPAR[28] / ((1.0 + (sPAR[18] * (X[13] / sPAR[16]))) * (1.0 + (sPAR[10] * X[9])))))) - (X[24] * (sPAR[28] / (1.0 + (sPAR[18] * (X[13] / sPAR[16]))))))) - (sPAR[13] * (X[12] * (X[24] * (sPAR[28] / sPAR[31])))));
    F[23]=((sPAR[9] * (X[10] * (sPAR[28] / (1.0 + (sPAR[18] * (X[13] / sPAR[16])))))) + ((-3.0 * (sPAR[9] * (X[23] * (sPAR[28] / ((1.0 + (sPAR[18] * (X[13] / sPAR[16]))) * (1.0 + (sPAR[10] * X[9]))))))) - (sPAR[13] * (X[12] * (X[23] * (sPAR[28] / sPAR[31]))))));
    F[10]=((sPAR[12] * (X[7] * (X[8] * (sPAR[28] / (1.0 + (sPAR[18] * (X[13] / sPAR[16]))))))) + ((sPAR[9] * (X[10] * ((-3.0 * (sPAR[28] / ((1.0 + (sPAR[10] * X[9])) * (1.0 + (sPAR[18] * (X[13] / sPAR[16])))))) - (sPAR[28] / (1.0 + (sPAR[18] * (X[13] / sPAR[16]))))))) - (sPAR[13] * (X[12] * (X[10] * (sPAR[28] / sPAR[31]))))));
    F[8]=((sPAR[13] * (X[12] * (sPAR[28] * ((X[10] + (X[23] + (X[24] + X[22]))) / sPAR[31])))) - (sPAR[12] * (X[7] * (X[8] * (sPAR[28] / (1.0 + (sPAR[18] * (X[13] / sPAR[16]))))))));

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
    sPAR[0]=0.0; //ActD
    sPAR[1]=432.871; //CISEqc
    sPAR[2]=0.530261; //CISEqcOE
    sPAR[3]=784653000.0; //CISInh
    sPAR[4]=0.144775; //CISRNADelay
    sPAR[5]=1.0; //CISRNAEqc
    sPAR[6]=1000.0; //CISRNATurn
    sPAR[7]=0.00839842; //CISTurn
    sPAR[8]=0.0; //CISoe
    sPAR[9]=0.267308; //EpoRActJAK2
    sPAR[10]=1000000.0; //EpoRCISInh
    sPAR[11]=5.42932; //EpoRCISRemove
    sPAR[12]=633253.0; //JAK2ActEpo
    sPAR[13]=142.722; //JAK2EpoRDeaSHP1
    sPAR[14]=0.001; //SHP1ActEpoR
    sPAR[15]=0.00816391; //SHP1Dea
    sPAR[16]=173.653; //SOCS3Eqc
    sPAR[17]=0.679157; //SOCS3EqcOE
    sPAR[18]=10.408; //SOCS3Inh
    sPAR[19]=1.06465; //SOCS3RNADelay
    sPAR[20]=1.0; //SOCS3RNAEqc
    sPAR[21]=0.00830844; //SOCS3RNATurn
    sPAR[22]=10000.0; //SOCS3Turn
    sPAR[23]=0.0; //SOCS3oe
    sPAR[24]=38.9757; //STAT5ActEpoR
    sPAR[25]=0.0780965; //STAT5ActJAK2
    sPAR[26]=0.0745155; //STAT5Exp
    sPAR[27]=0.0268889; //STAT5Imp
    sPAR[28]=1.0; //cyt
    sPAR[29]=1.24997e-07; //epo_level
    sPAR[30]=3.97622; //init_EpoRJAK2
    sPAR[31]=26.7251; //init_SHP1
    sPAR[32]=79.7535; //init_STAT5
    sPAR[33]=1.0; //nuc
    X[0]=0.0; //CIS
    X[1]=0.0; //CISRNA
    X[2]=0.0; //CISnRNA1
    X[3]=0.0; //CISnRNA2
    X[4]=0.0; //CISnRNA3
    X[5]=0.0; //CISnRNA4
    X[6]=0.0; //CISnRNA5
    X[7]=1.24997e-07; //Epo
    X[8]=3.97622; //EpoRJAK2
    X[9]=0.0; //EpoRJAK2_CIS
    X[10]=0.0; //EpoRpJAK2
    X[11]=26.7251; //SHP1
    X[12]=0.0; //SHP1Act
    X[13]=0.0; //SOCS3
    X[14]=0.0; //SOCS3RNA
    X[15]=0.0; //SOCS3nRNA1
    X[16]=0.0; //SOCS3nRNA2
    X[17]=0.0; //SOCS3nRNA3
    X[18]=0.0; //SOCS3nRNA4
    X[19]=0.0; //SOCS3nRNA5
    X[20]=79.7535; //STAT5
    X[21]=0.0; //npSTAT5
    X[22]=0.0; //p12EpoRpJAK2
    X[23]=0.0; //p1EpoRpJAK2
    X[24]=0.0; //p2EpoRpJAK2
    X[25]=0.0; //pSTAT5

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
