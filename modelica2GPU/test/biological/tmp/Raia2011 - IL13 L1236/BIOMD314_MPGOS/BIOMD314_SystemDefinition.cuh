
#ifndef BIOMD314_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD314_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[0]=(3.776 * sPAR[1]);
    F[1]=((sPAR[3] * (ACC[0] * (X[3] * sPAR[8]))) - (sPAR[5] * (X[1] * (X[7] * sPAR[8]))));
    F[3]=((sPAR[6] * (X[4] * sPAR[8])) + (((-(sPAR[3])) * (ACC[0] * (X[3] * sPAR[8]))) - (sPAR[4] * (X[3] * sPAR[8]))));
    F[4]=((sPAR[4] * (X[3] * sPAR[8])) - (sPAR[6] * (X[4] * sPAR[8])));
    F[9]=((sPAR[5] * (X[1] * (X[7] * sPAR[8]))) - (sPAR[11] * (X[9] * sPAR[8])));
    F[10]=((sPAR[11] * (X[9] * sPAR[8])) - (sPAR[10] * (X[10] * sPAR[8])));
    F[2]=((sPAR[9] * (X[7] * (X[5] * sPAR[8]))) - (sPAR[2] * (X[2] * (sPAR[8] * (X[1] + X[9])))));
    F[7]=((sPAR[2] * (X[2] * (sPAR[8] * (X[1] + X[9])))) - (sPAR[9] * (X[7] * (X[5] * sPAR[8]))));
    F[5]=0.0;
    F[6]=((sPAR[12] * (X[8] * (X[5] * sPAR[8]))) - (sPAR[7] * (X[6] * (X[7] * sPAR[8]))));
    F[8]=((sPAR[7] * (X[6] * (X[7] * sPAR[8]))) - (sPAR[12] * (X[8] * (X[5] * sPAR[8]))));
    F[0]=(X[8] * (sPAR[0] * sPAR[8]));

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
    ACC[0]=3.776; //IL13
    sPAR[0]=0.0115928; //CD274mRNA_production
    sPAR[1]=1.0; //IL13stimulation
    sPAR[2]=0.300019; //JAK2_phosphorylation
    sPAR[3]=0.00174087; //Kon_IL13Rec
    sPAR[4]=0.259686; //Rec_intern
    sPAR[5]=9.07541; //Rec_phosphorylation
    sPAR[6]=0.0039243; //Rec_recycle
    sPAR[7]=0.00426767; //STAT5_phosphorylation
    sPAR[8]=1.0; //cell
    sPAR[9]=0.0981611; //pJAK2_dephosphorylation
    sPAR[10]=0.417538; //pRec_degradation
    sPAR[11]=0.324132; //pRec_intern
    sPAR[12]=0.0116389; //pSTAT5_dephosphorylation
    X[0]=0.0; //CD274mRNA
    X[1]=0.0; //IL13_Rec
    X[2]=24.0; //JAK2
    X[3]=1.8; //Rec
    X[4]=118.598; //Rec_i
    X[5]=9.4; //SHP1
    X[6]=209.0; //STAT5
    X[7]=0.0; //pJAK2
    X[8]=0.0; //pSTAT5
    X[9]=0.0; //p_IL13_Rec
    X[10]=0.0; //p_IL13_Rec_i

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
