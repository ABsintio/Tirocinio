
#ifndef BIOMD270_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD270_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[1]=(sPAR[26] * X[20]);
    ACC[0]=(sPAR[26] * X[17]);
    ACC[4]=(sPAR[26] * X[28]);
    ACC[8]=(sPAR[30] * X[32]);
    ACC[7]=(sPAR[30] * X[31]);
    ACC[6]=(sPAR[29] * X[30]);
    ACC[5]=(sPAR[29] * X[29]);
    ACC[3]=(sPAR[28] * X[24]);
    ACC[2]=(sPAR[27] * X[23]);
    F[10]=0.0;
    F[7]=(sPAR[9] * ((X[6] - X[7]) * sPAR[18]));
    F[6]=(sPAR[9] * ((X[5] - X[6]) * sPAR[18]));
    F[5]=(sPAR[9] * ((X[4] - X[5]) * sPAR[18]));
    F[4]=(sPAR[9] * ((X[3] - X[4]) * sPAR[18]));
    F[3]=(sPAR[9] * ((X[2] - X[3]) * sPAR[18]));
    F[2]=(sPAR[9] * ((X[1] - X[2]) * sPAR[18]));
    F[1]=(sPAR[9] * ((X[0] - X[1]) * sPAR[18]));
    F[0]=(sPAR[9] * ((X[19] - X[0]) * sPAR[18]));
    F[22]=((sPAR[2] * (X[9] * (sPAR[18] * (X[32] + X[31])))) + ((sPAR[3] * (X[30] * sPAR[18])) + (X[22] * (sPAR[18] * (((-(sPAR[12])) * (X[32] + X[31])) - sPAR[13])))));
    F[21]=((sPAR[1] * (X[8] * (sPAR[18] * (X[32] + X[31])))) + ((sPAR[3] * (X[29] * sPAR[18])) + (X[21] * (sPAR[18] * (((-(sPAR[11])) * (X[32] + X[31])) - sPAR[13])))));
    F[25]=((sPAR[4] * (X[13] * (X[27] * sPAR[18]))) + ((sPAR[6] * (X[31] * sPAR[18])) + (X[25] * (((-(sPAR[14])) * (X[27] * sPAR[18])) - (sPAR[16] * sPAR[18])))));
    F[26]=((sPAR[5] * (X[14] * (X[27] * sPAR[18]))) + ((sPAR[6] * (X[32] * sPAR[18])) + (X[26] * (((-(sPAR[15])) * (X[27] * sPAR[18])) - (sPAR[16] * sPAR[18])))));
    F[28]=((sPAR[25] * (X[20] * (sPAR[18] * (X[29] + X[30])))) - (sPAR[24] * (X[28] * sPAR[18])));
    F[30]=((sPAR[12] * (X[22] * (sPAR[18] * (X[32] + X[31])))) - (sPAR[3] * (X[30] * sPAR[18])));
    F[29]=((sPAR[11] * (X[21] * (sPAR[18] * (X[32] + X[31])))) - (sPAR[3] * (X[29] * sPAR[18])));
    F[31]=((sPAR[14] * (X[25] * (X[27] * sPAR[18]))) - (sPAR[6] * (X[31] * sPAR[18])));
    F[32]=((sPAR[15] * (X[26] * (X[27] * sPAR[18]))) - (sPAR[6] * (X[32] * sPAR[18])));
    F[27]=((sPAR[19] * (X[15] * (X[20] * sPAR[18]))) - (sPAR[23] * (X[27] * sPAR[18])));
    F[20]=((sPAR[10] * (X[17] * (X[23] * sPAR[18]))) + ((X[20] * (((-(sPAR[20])) * sPAR[18]) - (sPAR[25] * (X[29] * sPAR[18])))) - (sPAR[25] * (X[20] * (X[30] * sPAR[18])))));
    F[18]=((sPAR[9] * (X[7] * sPAR[18])) - (sPAR[17] * (X[18] * sPAR[18])));
    F[19]=((sPAR[8] * (X[16] * (X[23] * sPAR[18]))) - (sPAR[9] * (X[19] * sPAR[18])));
    F[23]=((sPAR[0] * (X[11] * (X[24] * sPAR[18]))) - (sPAR[21] * (X[23] * (X[18] * sPAR[18]))));
    F[24]=((sPAR[7] * (X[12] * (X[10] * sPAR[18]))) - (sPAR[22] * (X[24] * (X[18] * sPAR[18]))));
    F[9]=((sPAR[13] * (X[22] * sPAR[18])) - (sPAR[2] * (X[9] * (sPAR[18] * (X[32] + X[31])))));
    F[8]=((sPAR[13] * (X[21] * sPAR[18])) - (sPAR[1] * (X[8] * (sPAR[18] * (X[32] + X[31])))));
    F[13]=((sPAR[16] * (X[25] * sPAR[18])) - (sPAR[4] * (X[13] * (X[27] * sPAR[18]))));
    F[14]=((sPAR[16] * (X[26] * sPAR[18])) - (sPAR[5] * (X[14] * (X[27] * sPAR[18]))));
    F[15]=((sPAR[23] * (X[27] * sPAR[18])) - (sPAR[19] * (X[15] * (X[20] * sPAR[18]))));
    F[17]=((sPAR[20] * (X[20] * sPAR[18])) + ((sPAR[24] * (X[28] * sPAR[18])) - (sPAR[10] * (X[17] * (X[23] * sPAR[18])))));
    F[16]=((sPAR[17] * (X[18] * sPAR[18])) - (sPAR[8] * (X[16] * (X[23] * sPAR[18]))));
    F[11]=((sPAR[21] * (X[23] * (X[18] * sPAR[18]))) - (sPAR[0] * (X[11] * (X[24] * sPAR[18]))));
    F[12]=((sPAR[22] * (X[24] * (X[18] * sPAR[18]))) - (sPAR[7] * (X[12] * (X[10] * sPAR[18]))));

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
    ACC[0]=0.0; //rescaled_SOS
    ACC[1]=0.0; //rescaled_mSOS
    ACC[2]=0.0; //rescaled_pEpoR
    ACC[3]=0.0; //rescaled_pJAK2
    ACC[4]=0.0; //rescaled_pSOS
    ACC[5]=0.0; //rescaled_ppERK1
    ACC[6]=0.0; //rescaled_ppERK2
    ACC[7]=0.0; //rescaled_ppMEK1
    ACC[8]=0.0; //rescaled_ppMEK2
    sPAR[0]=3.15714; //EpoR_phosphorylation_by_pJAK2
    sPAR[1]=2.4927; //First_ERK1_phosphorylation_by_ppMEK
    sPAR[2]=2.44361; //First_ERK2_phosphorylation_by_ppMEK
    sPAR[3]=39.0886; //First_ERK_dephosphorylation
    sPAR[4]=0.6871930000000001; //First_MEK1_phosphorylation_by_pRaf
    sPAR[5]=3.11919; //First_MEK2_phosphorylation_by_pRaf
    sPAR[6]=0.130937; //First_MEK_dephosphorylation
    sPAR[7]=0.0122149; //JAK2_phosphorylation_by_Epo
    sPAR[8]=0.408408; //SHP1_activation_by_pEpoR
    sPAR[9]=0.408408; //SHP1_delay
    sPAR[10]=0.10271; //SOS_recruitment_by_pEpoR
    sPAR[11]=59.5251; //Second_ERK1_phosphorylation_by_ppMEK
    sPAR[12]=53.0816; //Second_ERK2_phosphorylation_by_ppMEK
    sPAR[13]=3.00453; //Second_ERK_dephosphorylation
    sPAR[14]=667.957; //Second_MEK1_phosphorylation_by_pRaf
    sPAR[15]=215.158; //Second_MEK2_phosphorylation_by_pRaf
    sPAR[16]=0.0732724; //Second_MEK_dephosphorylation
    sPAR[17]=0.0248773; //actSHP1_deactivation
    sPAR[18]=1.0; //cell
    sPAR[19]=0.144515; //mSOS_induced_Raf_phosphorylation
    sPAR[20]=15.5956; //mSOS_release_from_membrane
    sPAR[21]=1.19995; //pEpoR_dephosphorylation_by_actSHP1
    sPAR[22]=0.368384; //pJAK2_dephosphorylation_by_actSHP1
    sPAR[23]=0.374228; //pRaf_dephosphorylation
    sPAR[24]=0.124944; //pSOS_dephosphorylation
    sPAR[25]=5122.68; //ppERK_neg_feedback_on_mSOS
    sPAR[26]=1.10228; //scale_SOS
    sPAR[27]=0.493312; //scale_pEpoR
    sPAR[28]=0.21008; //scale_pJAK2
    sPAR[29]=13.5981; //scale_ppERK
    sPAR[30]=40.5364; //scale_ppMEK
    X[0]=0.0; //Delay01_mSHP1
    X[1]=0.0; //Delay02_mSHP1
    X[2]=0.0; //Delay03_mSHP1
    X[3]=0.0; //Delay04_mSHP1
    X[4]=0.0; //Delay05_mSHP1
    X[5]=0.0; //Delay06_mSHP1
    X[6]=0.0; //Delay07_mSHP1
    X[7]=0.0; //Delay08_mSHP1
    X[8]=7.0; //ERK1
    X[9]=21.0; //ERK2
    X[10]=50.0; //Epo
    X[11]=1.0; //EpoR
    X[12]=2.0; //JAK2
    X[13]=24.0; //MEK1
    X[14]=11.0; //MEK2
    X[15]=3.7719; //Raf
    X[16]=10.7991; //SHP1
    X[17]=2.5101; //SOS
    X[18]=0.0; //actSHP1
    X[19]=0.0; //mSHP1
    X[20]=0.0; //mSOS
    X[21]=0.0; //pERK1
    X[22]=0.0; //pERK2
    X[23]=0.0; //pEpoR
    X[24]=0.0; //pJAK2
    X[25]=0.0; //pMEK1
    X[26]=0.0; //pMEK2
    X[27]=0.0; //pRaf
    X[28]=0.0; //pSOS
    X[29]=0.0; //ppERK1
    X[30]=0.0; //ppERK2
    X[31]=0.0; //ppMEK1
    X[32]=0.0; //ppMEK2

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
