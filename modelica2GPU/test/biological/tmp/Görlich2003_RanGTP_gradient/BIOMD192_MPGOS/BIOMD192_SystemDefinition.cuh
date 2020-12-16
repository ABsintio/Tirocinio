
#ifndef BIOMD192_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD192_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[8]=((sPAR[7] * (sPAR[9] * (X[9] - X[8]))) + (sPAR[2] * ((sPAR[4] * (X[10] * (X[7] / (X[10] + sPAR[1])))) + (sPAR[3] * (X[11] * (X[7] / (sPAR[0] + X[11])))))));
    F[10]=((((sPAR[6] * (X[11] * X[6])) - (sPAR[5] * X[10])) * sPAR[2]) - (sPAR[2] * (sPAR[4] * (X[10] * (X[7] / (X[10] + sPAR[1]))))));
    F[11]=((sPAR[8] * (sPAR[9] * (X[12] - X[11]))) + ((((sPAR[5] * X[10]) - (sPAR[6] * (X[11] * X[6]))) * sPAR[2]) - (sPAR[2] * (sPAR[3] * (X[11] * (X[7] / (sPAR[0] + X[11])))))));
    F[6]=(sPAR[2] * ((sPAR[4] * (X[10] * (X[7] / (X[10] + sPAR[1])))) + ((sPAR[5] * X[10]) - (sPAR[6] * (X[11] * X[6])))));
    F[7]=0.0;
    F[12]=((sPAR[9] * ((sPAR[13] * X[5]) - (sPAR[14] * (X[12] * X[2])))) - (sPAR[8] * (sPAR[9] * (X[12] - X[11]))));
    F[1]=0.0;
    F[3]=(sPAR[9] * ((sPAR[11] * X[4]) + ((sPAR[15] * X[5]) + (X[3] * (((-(sPAR[12])) * X[1]) - (sPAR[16] * X[0]))))));
    F[5]=(sPAR[9] * ((sPAR[12] * (X[3] * X[1])) + ((sPAR[14] * (X[12] * X[2])) + (((-(sPAR[13])) - sPAR[15]) * X[5]))));
    F[2]=(sPAR[9] * ((sPAR[13] * X[5]) + ((sPAR[17] * X[4]) + (((-(sPAR[10])) * (X[9] * X[2])) - (sPAR[14] * (X[12] * X[2]))))));
    F[0]=0.0;
    F[4]=(sPAR[9] * ((sPAR[10] * (X[9] * X[2])) + ((sPAR[16] * (X[3] * X[0])) + (((-(sPAR[11])) - sPAR[17]) * X[4]))));
    F[9]=((sPAR[9] * ((sPAR[17] * X[4]) - (sPAR[10] * (X[9] * X[2])))) - (sPAR[7] * (sPAR[9] * (X[9] - X[8]))));

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
    sPAR[0]=0.7; //Km_GAP_RanGAP_RanGDP
    sPAR[1]=0.1; //Km_RanBP1_RanGDP
    sPAR[2]=1.0; //cytoplasm
    sPAR[3]=10.6; //kcat_GAP_RanGAP_RanGDP
    sPAR[4]=10.8; //kcat_RanBP1_RanGDP
    sPAR[5]=0.0004; //koff_RanGTP_binding
    sPAR[6]=0.3; //kon_RanGTP_binding
    sPAR[7]=0.12; //kpermRanGDP_Nucleoplasmic_transfer
    sPAR[8]=0.03; //kpermRanGTP_Cytoplasmic_transfer
    sPAR[9]=1.0; //nucleus
    sPAR[10]=74.0; //r1_RCC1_binding
    sPAR[11]=21.0; //r2_GDP_dissociation
    sPAR[12]=0.6; //r3_GTP_binding
    sPAR[13]=55.0; //r4_RanGTP_release
    sPAR[14]=100.0; //r5_RanGTP_release
    sPAR[15]=19.0; //r6_GTP_binding
    sPAR[16]=11.0; //r7_GDP_dissociation
    sPAR[17]=55.0; //r8_RCC1_binding
    X[0]=1.6; //GDP
    X[1]=500.0; //GTP
    X[2]=0.7; //RCC1
    X[3]=0.0; //RCC1_Ran
    X[4]=0.0; //RCC1_RanGDP
    X[5]=0.0; //RCC1_RanGTP
    X[6]=2.0; //RanBP1
    X[7]=0.7; //RanGAP
    X[8]=5.0; //RanGDP_cy
    X[9]=0.0; //RanGDP_nuc
    X[10]=0.0; //RanGTP_RanBP1
    X[11]=0.0; //RanGTP_cy
    X[12]=0.0; //RanGTP_nuc

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
