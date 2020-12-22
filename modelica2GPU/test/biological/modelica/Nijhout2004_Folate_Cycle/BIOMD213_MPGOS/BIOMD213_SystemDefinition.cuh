
#ifndef BIOMD213_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD213_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[5]=0.0;
    F[6]=0.0;
    F[4]=0.0;
    F[0]=0.0;
    F[2]=0.0;
    F[13]=0.0;
    F[3]=0.0;
    F[7]=0.0;
    F[9]=((sPAR[10] * (X[4] * (X[8] / ((sPAR[9] + X[8]) * (sPAR[8] + X[4]))))) + ((sPAR[17] * (X[11] / (sPAR[16] + X[11]))) + ((X[9] * (((-(sPAR[18])) / (sPAR[15] + X[9])) - (sPAR[7] / (sPAR[6] + X[9])))) + (((-(sPAR[2])) * (X[0] * (X[9] / ((sPAR[0] + X[9]) * (sPAR[1] + X[0]))))) - (sPAR[30] * (X[2] * (X[9] / ((sPAR[29] + X[2]) * (sPAR[28] + X[9])))))))));
    F[11]=((sPAR[21] * (X[10] / (sPAR[19] + X[10]))) + ((sPAR[18] * (X[9] / (sPAR[15] + X[9]))) + (X[11] * (((-(sPAR[17])) / (sPAR[16] + X[11])) - (sPAR[22] / (sPAR[20] + X[11]))))));
    F[10]=((X[4] * (sPAR[26] * X[8])) + ((sPAR[33] * (X[7] * (X[8] / ((sPAR[31] + X[7]) * (sPAR[32] + X[8]))))) + ((sPAR[22] * (X[11] / (sPAR[20] + X[11]))) + (((((-(X[10])) * (sPAR[27] + (sPAR[21] / (sPAR[19] + X[10])))) - (sPAR[25] * (X[6] * (X[10] / ((sPAR[24] + X[6]) * (sPAR[23] + X[10])))))) - (sPAR[34] * (X[3] * (X[10] / ((sPAR[31] + X[3]) * (sPAR[32] + X[10])))))) - (sPAR[37] * (X[13] * (X[10] / ((sPAR[35] + X[10]) * (sPAR[36] + X[13])))))))));
    F[1]=((sPAR[37] * (X[13] * (X[10] / ((sPAR[36] + X[13]) * (sPAR[35] + X[10]))))) - (sPAR[5] * (X[6] * (X[1] / ((sPAR[4] + X[6]) * (sPAR[3] + X[1]))))));
    F[8]=((sPAR[14] * (X[12] * (X[5] / ((sPAR[13] * sPAR[12]) * (((sPAR[11] + X[12]) / sPAR[12]) + ((X[5] / sPAR[13]) + (X[12] * (X[5] / (sPAR[12] * sPAR[13]))))))))) + ((sPAR[7] * (X[9] / (sPAR[6] + X[9]))) + ((sPAR[2] * (X[0] * (X[9] / ((sPAR[0] + X[9]) * (sPAR[1] + X[0]))))) + ((sPAR[30] * (X[2] * (X[9] / ((sPAR[29] + X[2]) * (sPAR[28] + X[9]))))) + ((sPAR[5] * (X[6] * (X[1] / ((sPAR[3] + X[1]) * (sPAR[4] + X[6]))))) + ((sPAR[27] * X[10]) + ((sPAR[34] * (X[3] * (X[10] / ((sPAR[32] + X[10]) * (sPAR[31] + X[3]))))) + ((X[4] * (X[8] * (((-(sPAR[10])) / ((sPAR[9] + X[8]) * (sPAR[8] + X[4]))) - sPAR[26]))) - (sPAR[33] * (X[7] * (X[8] / ((sPAR[32] + X[8]) * (sPAR[31] + X[7])))))))))))));
    F[12]=((sPAR[25] * (X[6] * (X[10] / ((sPAR[24] + X[6]) * (sPAR[23] + X[10]))))) - (sPAR[14] * (X[12] * (X[5] / ((sPAR[13] * sPAR[12]) * (((sPAR[11] + X[12]) / sPAR[12]) + ((X[5] / sPAR[13]) + (X[12] * (X[5] / (sPAR[12] * sPAR[13]))))))))));

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
    sPAR[0]=5.9; //AICART_Km_10fTHF
    sPAR[1]=100.0; //AICART_Km_AICAR
    sPAR[2]=45000.0; //AICART_Vmax
    sPAR[3]=0.5; //DHFR_Km_DHF
    sPAR[4]=4.0; //DHFR_Km_NADPH
    sPAR[5]=50.0; //DHFR_Vmax
    sPAR[6]=20.0; //FTD_Km_10fTHF
    sPAR[7]=14000.0; //FTD_Vmax
    sPAR[8]=43.0; //FTS_Km_HCOOH
    sPAR[9]=3.0; //FTS_Km_THF
    sPAR[10]=2000.0; //FTS_Vmax
    sPAR[11]=1.0; //MS_Kd
    sPAR[12]=25.0; //MS_Km_5mTHF
    sPAR[13]=0.1; //MS_Km_Hcy
    sPAR[14]=500.0; //MS_Vmax
    sPAR[15]=100.0; //MTCH_Km_10fTHF
    sPAR[16]=250.0; //MTCH_Km_5_10_CHTHF
    sPAR[17]=800000.0; //MTCH_VmaxF
    sPAR[18]=20000.0; //MTCH_VmaxR
    sPAR[19]=2.0; //MTD_Km_5_10_CH2THF
    sPAR[20]=10.0; //MTD_Km_5_10_CHTHF
    sPAR[21]=200000.0; //MTD_VmaxF
    sPAR[22]=594000.0; //MTD_VmaxR
    sPAR[23]=50.0; //MTHFR_Km_5_10_CH2THF
    sPAR[24]=16.0; //MTHFR_Km_NADPH
    sPAR[25]=6000.0; //MTHFR_Vmax
    sPAR[26]=0.15; //NE_k1
    sPAR[27]=12.0; //NE_k2
    sPAR[28]=4.9; //PGT_Km_10fTHF
    sPAR[29]=520.0; //PGT_Km_GAR
    sPAR[30]=16200.0; //PGT_Vmax
    sPAR[31]=600.0; //SHMT_Km_Ser
    sPAR[32]=50.0; //SHMT_Km_THF
    sPAR[33]=40000.0; //SHMT_VmaxF
    sPAR[34]=25000.0; //SHMT_VmaxR
    sPAR[35]=14.0; //TS_Km_5_10_CH2THF
    sPAR[36]=6.3; //TS_Km_dUMP
    sPAR[37]=50.0; //TS_Vmax
    sPAR[38]=1.0; //compartment
    X[0]=2.1; //AICAR
    X[1]=0.027; //DHF
    X[2]=10.0; //GAR
    X[3]=1850.0; //Gly
    X[4]=900.0; //HCOOH
    X[5]=1.0; //Hcy
    X[6]=50.0; //NADPH
    X[7]=468.0; //Ser
    X[8]=6.73; //THF
    X[9]=5.99; //_10fTHF
    X[10]=0.94; //_5_10_CH2THF
    X[11]=1.153; //_5_10_CHTHF
    X[12]=5.16; //_5mTHF
    X[13]=20.0; //dUMP

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
