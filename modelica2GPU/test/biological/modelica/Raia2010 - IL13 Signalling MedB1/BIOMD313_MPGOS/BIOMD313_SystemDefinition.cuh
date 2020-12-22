
#ifndef BIOMD313_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD313_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[0]=(2.265 * sPAR[2]);
    F[2]=(sPAR[1] * (ACC[0] * (X[1] * sPAR[14])));
    F[1]=((-(sPAR[1])) * (ACC[0] * (X[1] * sPAR[14])));
    F[3]=((sPAR[5] * (ACC[0] * (X[5] * sPAR[14]))) - (sPAR[7] * (X[3] * (X[11] * sPAR[14]))));
    F[5]=((sPAR[8] * (X[6] * sPAR[14])) + (((-(sPAR[5])) * (ACC[0] * (X[5] * sPAR[14]))) - (sPAR[6] * (X[5] * sPAR[14]))));
    F[6]=((sPAR[6] * (X[5] * sPAR[14])) - (sPAR[8] * (X[6] * sPAR[14])));
    F[13]=((sPAR[7] * (X[3] * (X[11] * sPAR[14]))) - (sPAR[17] * (X[13] * sPAR[14])));
    F[14]=((sPAR[17] * (X[13] * sPAR[14])) - (sPAR[16] * (X[14] * sPAR[14])));
    F[4]=((sPAR[15] * (X[11] * (X[7] * sPAR[14]))) - (sPAR[4] * (X[4] * (sPAR[14] * ((X[3] + X[13]) / (1.0 + (sPAR[3] * X[8])))))));
    F[11]=((sPAR[4] * (X[4] * (sPAR[14] * ((X[3] + X[13]) / (1.0 + (sPAR[3] * X[8])))))) - (sPAR[15] * (X[11] * (X[7] * sPAR[14]))));
    F[7]=0.0;
    F[10]=((sPAR[18] * (X[12] * (X[7] * sPAR[14]))) - (sPAR[13] * (X[10] * (X[11] * sPAR[14]))));
    F[12]=((sPAR[13] * (X[10] * (X[11] * sPAR[14]))) - (sPAR[18] * (X[12] * (X[7] * sPAR[14]))));
    F[9]=(X[12] * (sPAR[12] * sPAR[14]));
    F[8]=((X[9] * (sPAR[11] * (sPAR[14] / (sPAR[9] + X[9])))) - (sPAR[10] * (X[8] * sPAR[14])));
    F[0]=(X[12] * (sPAR[0] * sPAR[14]));

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
    ACC[0]=2.265; //IL13
    sPAR[0]=8.217520000000001e-05; //CD274mRNA_production
    sPAR[1]=0.000124391; //DecoyR_binding
    sPAR[2]=1.0; //IL13stimulation
    sPAR[3]=0.0168268; //JAK2_p_inhibition
    sPAR[4]=0.157057; //JAK2_phosphorylation
    sPAR[5]=0.00341992; //Kon_IL13Rec
    sPAR[6]=0.103346; //Rec_intern
    sPAR[7]=999.631; //Rec_phosphorylation
    sPAR[8]=0.00135598; //Rec_recycle
    sPAR[9]=3.70803; //SOCS3_accumulation
    sPAR[10]=0.0429186; //SOCS3_degradation
    sPAR[11]=11.9086; //SOCS3_translation
    sPAR[12]=0.00215826; //SOCS3mRNA_production
    sPAR[13]=0.0382596; //STAT5_phosphorylation
    sPAR[14]=1.0; //cell
    sPAR[15]=0.000621906; //pJAK2_dephosphorylation
    sPAR[16]=0.172928; //pRec_degradation
    sPAR[17]=0.15254; //pRec_intern
    sPAR[18]=0.000343392; //pSTAT5_dephosphorylation
    X[0]=0.0; //CD274mRNA
    X[1]=0.34; //DecoyR
    X[2]=0.0; //IL13_DecoyR
    X[3]=0.0; //IL13_Rec
    X[4]=2.8; //JAK2
    X[5]=1.3; //Rec
    X[6]=113.194; //Rec_i
    X[7]=91.0; //SHP1
    X[8]=0.0; //SOCS3
    X[9]=0.0; //SOCS3mRNA
    X[10]=165.0; //STAT5
    X[11]=0.0; //pJAK2
    X[12]=0.0; //pSTAT5
    X[13]=0.0; //p_IL13_Rec
    X[14]=0.0; //p_IL13_Rec_i

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
