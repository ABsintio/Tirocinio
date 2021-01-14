
#ifndef BIOMD380_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD380_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[5]=log10((X[13] / sPAR[47]));
    ACC[3]=log10((X[11] / sPAR[45]));
    ACC[4]=log10((X[12] / sPAR[46]));
    ACC[1]=log10((X[4] / sPAR[33]));
    ACC[0]=log10((X[3] / sPAR[32]));
    ACC[2]=log10((X[5] / sPAR[34]));
    F[10]=0.0;
    F[7]=0.0;
    F[9]=0.0;
    F[14]=0.0;
    F[8]=0.0;
    F[6]=0.0;
    F[15]=0.0;
    F[2]=0.0;
    F[1]=0.0;
    F[0]=0.0;
    F[13]=(sPAR[31] * ((pow(sPAR[44],sPAR[35]) * (sPAR[29] * (X[15] * (X[3] / ((sPAR[7] * sPAR[21]) * (((sPAR[17] + X[15]) / sPAR[21]) + ((X[3] / sPAR[7]) + ((X[15] * (X[3] / (sPAR[21] * sPAR[7]))) + (X[13] * ((sPAR[17] / (sPAR[16] * sPAR[21])) + (X[3] / (sPAR[7] * sPAR[16])))))))))))) - (sPAR[30] * (pow(sPAR[42],sPAR[35]) * (sPAR[27] * (X[4] * (X[13] / (((sPAR[20] * sPAR[11]) * (1.0 + (X[4] / sPAR[11]))) * (1.0 + (X[13] / sPAR[20]))))))))));
    F[11]=(sPAR[31] * ((sPAR[30] * (pow(sPAR[42],sPAR[35]) * (sPAR[27] * (X[4] * (X[13] / (((sPAR[20] * sPAR[11]) * (1.0 + (X[4] / sPAR[11]))) * (1.0 + (X[13] / sPAR[20])))))))) - (pow(sPAR[41],sPAR[35]) * (sPAR[26] * (X[11] / (sPAR[18] * (1.0 + (X[11] / sPAR[18]))))))));
    F[12]=(sPAR[31] * ((pow(sPAR[41],sPAR[35]) * (sPAR[26] * (X[11] / (sPAR[18] * (1.0 + (X[11] / sPAR[18])))))) - (pow(sPAR[43],sPAR[35]) * (sPAR[28] * (X[12] / (sPAR[19] * (1.0 + (X[12] / sPAR[19]))))))));
    F[4]=(sPAR[31] * ((pow(sPAR[39],sPAR[35]) * (sPAR[24] * (((X[5] * X[1]) - (X[4] * (X[0] / sPAR[3]))) / (((sPAR[13] * sPAR[1]) * (1.0 + ((X[5] / sPAR[13]) + ((X[4] / sPAR[9]) + (X[11] / sPAR[15]))))) * (1.0 + ((X[1] / sPAR[1]) + (X[0] / sPAR[0]))))))) + ((((-(pow(sPAR[37],sPAR[35]))) * (sPAR[22] * ((X[4] - (X[2] / sPAR[2])) / (sPAR[8] * (1.0 + ((X[4] / sPAR[8]) + (X[2] / sPAR[5]))))))) - (pow(sPAR[40],sPAR[35]) * (sPAR[25] * ((X[4] - (X[3] / sPAR[4])) / ((1.0 + ((X[4] / sPAR[10]) + (X[3] / sPAR[6]))) * sPAR[10]))))) - (sPAR[30] * (pow(sPAR[42],sPAR[35]) * (sPAR[27] * (X[4] * (X[13] / (((sPAR[20] * sPAR[11]) * (1.0 + (X[4] / sPAR[11]))) * (1.0 + (X[13] / sPAR[20])))))))))));
    F[3]=(sPAR[31] * ((pow(sPAR[40],sPAR[35]) * (sPAR[25] * ((X[4] - (X[3] / sPAR[4])) / (sPAR[10] * (1.0 + ((X[4] / sPAR[10]) + (X[3] / sPAR[6]))))))) - (pow(sPAR[44],sPAR[35]) * (sPAR[29] * (X[15] * (X[3] / ((sPAR[7] * sPAR[21]) * (((sPAR[17] + X[15]) / sPAR[21]) + ((X[3] / sPAR[7]) + ((X[15] * (X[3] / (sPAR[21] * sPAR[7]))) + (X[13] * ((sPAR[17] / (sPAR[16] * sPAR[21])) + (X[3] / (sPAR[7] * sPAR[16]))))))))))))));
    F[5]=(sPAR[31] * ((pow(sPAR[38],sPAR[35]) * (sPAR[23] * ((X[6] - X[5]) / ((1.0 + (((X[6] + X[5]) / sPAR[12]) + (sPAR[14] * (X[6] * (X[5] / pow(sPAR[12],2.0)))))) * sPAR[12])))) + ((2.0 * (pow(sPAR[43],sPAR[35]) * (sPAR[28] * (X[12] / ((1.0 + (X[12] / sPAR[19])) * sPAR[19]))))) - (pow(sPAR[39],sPAR[35]) * (sPAR[24] * (((X[5] * X[1]) - (X[4] * (X[0] / sPAR[3]))) / (((sPAR[13] * sPAR[1]) * (1.0 + ((X[5] / sPAR[13]) + ((X[4] / sPAR[9]) + (X[11] / sPAR[15]))))) * (1.0 + ((X[1] / sPAR[1]) + (X[0] / sPAR[0]))))))))));

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
    ACC[0]=0.0; //g1p_change
    ACC[1]=0.0; //g6p_change
    ACC[2]=0.0; //glc_change
    ACC[3]=0.0; //t6p_change
    ACC[4]=0.0; //trh_change
    ACC[5]=0.0; //udg_change
    sPAR[0]=0.23; //Kadp_2
    sPAR[1]=0.15; //Katp_2
    sPAR[2]=0.3; //Keq_0
    sPAR[3]=2000.0; //Keq_2
    sPAR[4]=0.1667; //Keq_3
    sPAR[5]=0.29; //Kf6p_0
    sPAR[6]=0.023; //Kg1p_3
    sPAR[7]=0.32; //Kg1p_7
    sPAR[8]=1.4; //Kg6p_0
    sPAR[9]=30.0; //Kg6p_2
    sPAR[10]=0.05; //Kg6p_3
    sPAR[11]=3.8; //Kg6p_5
    sPAR[12]=1.1918; //Kglc_1
    sPAR[13]=0.08; //Kglc_2
    sPAR[14]=0.91; //Ki_1
    sPAR[15]=0.04; //Kit6p_2
    sPAR[16]=0.0035; //Kiudg_7
    sPAR[17]=0.11; //Kiutp_7
    sPAR[18]=0.5; //Kt6p_4
    sPAR[19]=2.99; //Ktrh_6
    sPAR[20]=0.886; //Kudg_5
    sPAR[21]=0.11; //Kutp_7
    sPAR[22]=1071.0; //Vmax_0
    sPAR[23]=97.23999999999999; //Vmax_1
    sPAR[24]=289.6; //Vmax_2
    sPAR[25]=0.3545; //Vmax_3
    sPAR[26]=6.5; //Vmax_4
    sPAR[27]=1.371; //Vmax_5
    sPAR[28]=15.2; //Vmax_6
    sPAR[29]=36.82; //Vmax_7
    sPAR[30]=1.0; //activity_5
    sPAR[31]=1.0; //cell
    sPAR[32]=0.1; //g1p_0
    sPAR[33]=2.675; //g6p_0
    sPAR[34]=0.09765; //glc_0
    sPAR[35]=0.0; //heat
    sPAR[36]=1.0; //medium
    sPAR[37]=1.0; //shock_0
    sPAR[38]=8.0; //shock_1
    sPAR[39]=8.0; //shock_2
    sPAR[40]=16.0; //shock_3
    sPAR[41]=18.0; //shock_4
    sPAR[42]=12.0; //shock_5
    sPAR[43]=6.0; //shock_6
    sPAR[44]=16.0; //shock_7
    sPAR[45]=0.02; //t6p_0
    sPAR[46]=0.05; //trh_0
    sPAR[47]=0.7; //udg_0
    X[0]=1.282; //adp
    X[1]=2.525; //atp
    X[2]=0.625; //f6p
    X[3]=sPAR[32]; //g1p
    X[4]=sPAR[33]; //g6p
    X[5]=sPAR[34]; //glc
    X[6]=100.0; //glx
    X[7]=0.0; //h
    X[8]=0.0; //h2o
    X[9]=0.0; //pho
    X[10]=0.0; //ppi
    X[11]=sPAR[45]; //t6p
    X[12]=sPAR[46]; //trh
    X[13]=sPAR[47]; //udg
    X[14]=0.2815; //udp
    X[15]=0.6491; //utp

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
