
#ifndef BIOMD190_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD190_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[1]=(3.0 * sPAR[44]);
    ACC[0]=sPAR[44];
    F[3]=0.0;
    F[1]=0.0;
    F[6]=0.0;
    F[5]=0.0;
    F[13]=(sPAR[50] * ((X[12] * (X[4] * (X[1] / ((sPAR[29] * ((1.0 + (X[8] / sPAR[36])) * (sPAR[19] * (1.0 + (X[3] / sPAR[25]))))) + ((sPAR[19] * ((1.0 + (X[3] / sPAR[25])) * X[4])) + ((sPAR[29] * ((1.0 + (X[8] / sPAR[36])) * X[1])) + (X[4] * X[1]))))))) + (X[13] * (((-(sPAR[46])) / (sPAR[21] * (1.0 + ((X[13] / sPAR[21]) + ((X[14] / sPAR[23]) + ((X[4] / sPAR[27]) + (X[8] / sPAR[34]))))))) - sPAR[2]))));
    F[14]=(sPAR[50] * ((X[12] * (X[8] * (X[1] / (((sPAR[37] * ((1.0 + (X[4] / sPAR[30])) * (sPAR[20] * (1.0 + (X[3] / sPAR[26]))))) + ((sPAR[20] * ((1.0 + (X[3] / sPAR[26])) * X[8])) + ((sPAR[37] * ((1.0 + (X[4] / sPAR[30])) * X[1])) + (X[8] * X[1])))) * sPAR[0])))) - (sPAR[47] * (X[14] / ((1.0 + ((X[13] / sPAR[22]) + ((X[14] / sPAR[24]) + ((X[4] / sPAR[28]) + (X[8] / sPAR[35]))))) * sPAR[24])))));
    F[4]=(sPAR[50] * ((sPAR[47] * (X[14] / ((1.0 + ((X[13] / sPAR[22]) + ((X[14] / sPAR[24]) + ((X[4] / sPAR[28]) + (X[8] / sPAR[35]))))) * sPAR[24]))) + ((sPAR[48] * (X[0] * (X[7] / ((sPAR[39] * ((sPAR[12] * (1.0 + (X[4] / sPAR[14]))) + X[0])) + ((sPAR[1] * ((1.0 + (X[4] / sPAR[14])) * X[7])) + (X[0] * X[7])))))) + (((-(X[12])) * (X[4] * (X[1] / ((sPAR[29] * ((1.0 + (X[8] / sPAR[36])) * (sPAR[19] * (1.0 + (X[3] / sPAR[25]))))) + ((sPAR[19] * ((1.0 + (X[3] / sPAR[25])) * X[4])) + ((sPAR[29] * ((1.0 + (X[8] / sPAR[36])) * X[1])) + (X[4] * X[1]))))))) - (sPAR[49] * (X[0] * (X[4] / ((sPAR[8] * ((sPAR[13] * (1.0 + (X[8] / sPAR[18]))) + X[0])) + ((sPAR[4] * ((1.0 + (X[8] / sPAR[18])) * X[4])) + (X[0] * X[4]))))))))));
    F[8]=(sPAR[50] * ((sPAR[49] * (X[0] * (X[4] / ((sPAR[8] * ((sPAR[13] * (1.0 + (X[8] / sPAR[18]))) + X[0])) + ((sPAR[4] * ((1.0 + (X[8] / sPAR[18])) * X[4])) + (X[0] * X[4])))))) - (X[12] * (X[8] * (X[1] / (((sPAR[37] * ((1.0 + (X[4] / sPAR[30])) * (sPAR[20] * (1.0 + (X[3] / sPAR[26]))))) + ((sPAR[20] * ((1.0 + (X[3] / sPAR[26])) * X[8])) + ((sPAR[37] * ((1.0 + (X[4] / sPAR[30])) * X[1])) + (X[8] * X[1])))) * sPAR[0]))))));
    F[7]=(sPAR[50] * ((X[10] * (X[6] / ((sPAR[32] * (1.0 + (X[7] / sPAR[16]))) + X[6]))) + ((sPAR[46] * (X[13] / ((1.0 + ((X[13] / sPAR[21]) + ((X[14] / sPAR[23]) + ((X[4] / sPAR[27]) + (X[8] / sPAR[34]))))) * sPAR[21]))) + (((-(sPAR[48])) * (X[0] * (X[7] / ((sPAR[39] * ((sPAR[12] * (1.0 + (X[4] / sPAR[14]))) + X[0])) + ((sPAR[1] * ((1.0 + (X[4] / sPAR[14])) * X[7])) + (X[0] * X[7])))))) - (sPAR[38] * X[7])))));
    F[0]=(sPAR[50] * ((X[11] * (X[9] / ((1.0 + (X[8] / sPAR[17])) * ((sPAR[33] * (1.0 + ((sPAR[3] / X[7]) + (X[0] / sPAR[11])))) + X[9])))) + (X[0] * (((-(sPAR[48])) * (X[7] / ((sPAR[39] * ((sPAR[12] * (1.0 + (X[4] / sPAR[14]))) + X[0])) + ((sPAR[1] * ((1.0 + (X[4] / sPAR[14])) * X[7])) + (X[0] * X[7]))))) - (sPAR[49] * (X[4] / ((sPAR[8] * ((sPAR[13] * (1.0 + (X[8] / sPAR[18]))) + X[0])) + ((sPAR[4] * ((1.0 + (X[8] / sPAR[18])) * X[4])) + (X[0] * X[4])))))))));
    F[9]=(sPAR[50] * ((sPAR[45] / (1.0 + (sPAR[31] * ((1.0 + (X[9] / sPAR[15])) / X[5])))) - (X[11] * (X[9] / (((sPAR[33] * (1.0 + ((sPAR[3] / X[7]) + (X[0] / sPAR[11])))) + X[9]) * (1.0 + (X[8] / sPAR[17])))))));
    F[2]=((sPAR[40] * (1.0 + (-1.0 / (1.0 + (0.01 * (sPAR[10] * (X[4] + X[8]))))))) - (sPAR[5] * X[2]));
    F[11]=((sPAR[42] / (1.0 + (sPAR[10] * (X[4] + X[8])))) - (sPAR[7] * X[11]));
    F[12]=((sPAR[43] * (1.0 + (-1.0 / (1.0 + (sPAR[10] * (X[4] + X[8])))))) - (sPAR[9] * (X[12] / (1.0 + (sPAR[10] * (X[4] + X[8]))))));
    F[10]=((sPAR[41] / (1.0 + (sPAR[10] * (X[4] + X[8])))) - (sPAR[6] * (X[2] * X[10])));

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
    ACC[0]=0.004; //Kaccoa
    ACC[1]=0.012; //Kcoa
    sPAR[0]=4.44; //C
    sPAR[1]=0.3; //KaSpds_SpdS
    sPAR[2]=0.01; //Kadefflux_aD_efflux
    sPAR[3]=0.5; //Kapsamdc_SAMdc
    sPAR[4]=0.1; //Kaspms_SpmS
    sPAR[5]=0.02; //Kdantz
    sPAR[6]=0.05; //Kdodc
    sPAR[7]=0.02; //Kdsamdc
    sPAR[8]=60.0; //Kdspms_SpmS
    sPAR[9]=0.2; //Kdssat
    sPAR[10]=1.0; //Keq
    sPAR[11]=2.5; //Kiasamdc_SAMdc
    sPAR[12]=0.8; //Kiaspds_SpdS
    sPAR[13]=0.06; //Kiaspms_SpmS
    sPAR[14]=100.0; //Kidspds_SpdS
    sPAR[15]=50.0; //Kimetmat_MAT
    sPAR[16]=1300.0; //Kipodc_ODC
    sPAR[17]=500.0; //Kissamdc_SAMdc
    sPAR[18]=25.0; //Kisspms_SpmS
    sPAR[19]=1.5; //Kmaccoassat_SSAT_for_D
    sPAR[20]=1.5; //Kmaccoassat_SSAT_for_S
    sPAR[21]=14.0; //Kmadpao_PAO_for_aD
    sPAR[22]=14.0; //Kmadpao_PAO_for_aS
    sPAR[23]=0.6; //Kmaspao_PAO_for_aD
    sPAR[24]=0.6; //Kmaspao_PAO_for_aS
    sPAR[25]=40.0; //Kmcoassat_SSAT_for_D
    sPAR[26]=40.0; //Kmcoassat_SSAT_for_S
    sPAR[27]=50.0; //Kmdpao_PAO_for_aD
    sPAR[28]=50.0; //Kmdpao_PAO_for_aS
    sPAR[29]=130.0; //Kmdssat_SSAT_for_D
    sPAR[30]=130.0; //Kmdssat_SSAT_for_S
    sPAR[31]=41.0; //Kmmat_MAT
    sPAR[32]=60.0; //Kmodc_ODC
    sPAR[33]=50.0; //Kmsamdc_SAMdc
    sPAR[34]=15.0; //Kmspao_PAO_for_aD
    sPAR[35]=15.0; //Kmspao_PAO_for_aS
    sPAR[36]=35.0; //Kmsssat_SSAT_for_D
    sPAR[37]=35.0; //Kmsssat_SSAT_for_S
    sPAR[38]=0.01; //Kpefflux_P_efflux
    sPAR[39]=40.0; //Kpspds_SpdS
    sPAR[40]=0.02; //Ksantz
    sPAR[41]=5.0; //Ksodc
    sPAR[42]=1.0; //Kssamdc
    sPAR[43]=0.001; //Ksssat
    sPAR[44]=0.004; //R
    sPAR[45]=0.45; //Vmmat_MAT
    sPAR[46]=10.35; //Vmpao_PAO_for_aD
    sPAR[47]=10.35; //Vmpao_PAO_for_aS
    sPAR[48]=10.95; //Vmspds_SpdS
    sPAR[49]=3.23; //Vmspms_SpmS
    sPAR[50]=1.0; //cytosol
    X[0]=0.01; //A
    X[1]=39.5; //AcCoA
    X[2]=0.574589492832405; //Antz
    X[3]=160.0; //CoA
    X[4]=0.01; //D
    X[5]=50.0; //Met
    X[6]=300.0; //ORN
    X[7]=0.01; //P
    X[8]=0.01; //S
    X[9]=0.01; //SAM
    X[10]=1.27905671844446; //Vmaxodc
    X[11]=0.367465856805639; //Vmaxsamdc
    X[12]=0.677298510125025; //Vmaxssat
    X[13]=0.01; //aD
    X[14]=0.01; //aS

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
