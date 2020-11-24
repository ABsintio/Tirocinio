
#ifndef BIOMD017_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD017_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[8]=0.0;
    F[15]=0.0;
    F[14]=0.0;
    F[9]=0.0;
    F[7]=((X[4] * ((sPAR[67] / (sPAR[7] * (1.0 + ((X[4] / sPAR[7]) + (X[7] / sPAR[5]))))) + sPAR[68])) + ((sPAR[57] * (((X[9] * (X[12] / sPAR[20])) - (X[7] * X[13])) / (((sPAR[43] * sPAR[4]) * (1.0 + ((X[7] / sPAR[4]) + (X[9] / sPAR[17])))) * (1.0 + ((X[13] / sPAR[43]) + (X[12] / sPAR[36])))))) - (sPAR[56] * (X[7] / ((1.0 + (X[7] / sPAR[3])) * sPAR[3])))));
    F[4]=((sPAR[66] * (X[18] * ((1.0 - (X[4] / (sPAR[26] * X[18]))) * (pow(((X[18] / sPAR[54]) + (X[4] / sPAR[6])),(-1.0 + sPAR[70])) / ((1.0 + pow(((X[18] / sPAR[54]) + (X[4] / sPAR[6])),sPAR[70])) * sPAR[54]))))) + (X[4] * (((-(sPAR[67])) / ((1.0 + ((X[4] / sPAR[7]) + (X[7] / sPAR[5]))) * sPAR[7])) - sPAR[68])));
    F[11]=0.0;
    F[5]=((sPAR[64] * (((X[3] * X[13]) - (X[10] * (X[12] * (X[5] / sPAR[24])))) / ((((sPAR[47] * sPAR[2]) * (1.0 + ((X[12] / sPAR[40]) + (X[13] / sPAR[47])))) * (1.0 + ((X[3] / sPAR[2]) + (X[10] / sPAR[19])))) * (1.0 + (X[5] / sPAR[8]))))) + (sPAR[65] * (((X[11] * (X[12] / sPAR[25])) - (X[5] * X[13])) / (((sPAR[48] * sPAR[9]) * (1.0 + ((X[12] / sPAR[41]) + (X[13] / sPAR[48])))) * (1.0 + ((X[5] / sPAR[9]) + (X[11] / sPAR[27])))))));
    F[2]=0.0;
    F[6]=((sPAR[62] * (((X[3] * X[15]) - (X[6] * (X[10] / sPAR[22]))) / ((sPAR[50] * sPAR[30]) * (1.0 + ((X[3] / sPAR[30]) + ((X[15] / sPAR[33]) + ((X[6] / sPAR[31]) + ((X[10] / sPAR[32]) + ((X[3] * (X[15] / (sPAR[50] * sPAR[30]))) + (X[6] * (X[10] / (sPAR[10] * sPAR[32])))))))))))) + (sPAR[63] * (((X[2] * (X[1] / sPAR[23])) - (X[6] * X[0])) / (((sPAR[11] * sPAR[13]) * (1.0 + ((X[6] / sPAR[11]) + (X[2] / sPAR[0])))) * (1.0 + ((X[0] / sPAR[13]) + (X[1] / sPAR[16])))))));
    F[3]=((sPAR[61] * (X[18] * (pow(X[12],2.0) * (X[10] / (((((((X[12] + (sPAR[29] * X[13])) * sPAR[53]) * sPAR[39]) * sPAR[18]) * (1.0 + (X[18] / sPAR[53]))) * (1.0 + ((X[12] / sPAR[39]) + (X[13] / sPAR[46])))) * (1.0 + ((X[10] / sPAR[18]) + (X[3] / sPAR[1])))))))) + ((sPAR[64] * (((X[10] * (X[12] * (X[5] / sPAR[24]))) - (X[3] * X[13])) / (((((1.0 + (X[5] / sPAR[8])) * (1.0 + ((X[3] / sPAR[2]) + (X[10] / sPAR[19])))) * (1.0 + ((X[12] / sPAR[40]) + (X[13] / sPAR[47])))) * sPAR[2]) * sPAR[47]))) + (sPAR[62] * (((X[6] * (X[10] / sPAR[22])) - (X[3] * X[15])) / (((1.0 + ((X[3] / sPAR[30]) + ((X[15] / sPAR[33]) + ((X[6] / sPAR[31]) + ((X[10] / sPAR[32]) + ((X[3] * (X[15] / (sPAR[30] * sPAR[50]))) + (X[6] * (X[10] / (sPAR[32] * sPAR[10]))))))))) * sPAR[30]) * sPAR[50])))));
    F[16]=0.0;
    F[10]=((sPAR[62] * (((X[3] * X[15]) - (X[6] * (X[10] / sPAR[22]))) / (((1.0 + ((X[3] / sPAR[30]) + ((X[15] / sPAR[33]) + ((X[6] / sPAR[31]) + ((X[10] / sPAR[32]) + ((X[3] * (X[15] / (sPAR[30] * sPAR[50]))) + (X[6] * (X[10] / (sPAR[32] * sPAR[10]))))))))) * sPAR[30]) * sPAR[50]))) + ((sPAR[64] * (((X[3] * X[13]) - (X[10] * (X[12] * (X[5] / sPAR[24])))) / (((((1.0 + (X[5] / sPAR[8])) * (1.0 + ((X[3] / sPAR[2]) + (X[10] / sPAR[19])))) * (1.0 + ((X[12] / sPAR[40]) + (X[13] / sPAR[47])))) * sPAR[2]) * sPAR[47]))) - (sPAR[61] * (X[18] * (pow(X[12],2.0) * (X[10] / (((((((X[12] + (sPAR[29] * X[13])) * sPAR[53]) * sPAR[39]) * sPAR[18]) * (1.0 + (X[18] / sPAR[53]))) * (1.0 + ((X[12] / sPAR[39]) + (X[13] / sPAR[46])))) * (1.0 + ((X[10] / sPAR[18]) + (X[3] / sPAR[1]))))))))));
    F[17]=0.0;
    F[18]=((sPAR[55] * (X[16] * (X[12] * (X[0] / (((((sPAR[12] * sPAR[35]) * sPAR[28]) * (1.0 + ((0.5 * (X[16] / sPAR[28])) + (X[18] / sPAR[51])))) * (1.0 + ((X[12] / sPAR[35]) + (X[13] / sPAR[42])))) * (1.0 + ((X[0] / sPAR[12]) + (X[1] / sPAR[14])))))))) + ((sPAR[60] * (((X[17] * (X[12] / sPAR[21])) - (X[18] * X[13])) / (((sPAR[52] * sPAR[45]) * (1.0 + ((X[18] / sPAR[52]) + (X[17] / sPAR[34])))) * (1.0 + ((X[13] / sPAR[45]) + (X[12] / sPAR[38])))))) + ((-2.0 * (sPAR[66] * (X[18] * ((1.0 - (X[4] / (sPAR[26] * X[18]))) * (pow(((X[18] / sPAR[54]) + (X[4] / sPAR[6])),(-1.0 + sPAR[70])) / ((1.0 + pow(((X[18] / sPAR[54]) + (X[4] / sPAR[6])),sPAR[70])) * sPAR[54])))))) - (sPAR[61] * (X[18] * (pow(X[12],2.0) * (X[10] / (((((((1.0 + ((X[10] / sPAR[18]) + (X[3] / sPAR[1]))) * (1.0 + ((X[12] / sPAR[39]) + (X[13] / sPAR[46])))) * (1.0 + (X[18] / sPAR[53]))) * sPAR[18]) * sPAR[39]) * sPAR[53]) * (X[12] + (sPAR[29] * X[13]))))))))));
    F[13]=((sPAR[61] * (X[18] * (pow(X[12],2.0) * (X[10] / (((((((X[12] + (sPAR[29] * X[13])) * sPAR[53]) * sPAR[39]) * sPAR[18]) * (1.0 + (X[18] / sPAR[53]))) * (1.0 + ((X[12] / sPAR[39]) + (X[13] / sPAR[46])))) * (1.0 + ((X[10] / sPAR[18]) + (X[3] / sPAR[1])))))))) + ((sPAR[55] * (X[16] * (X[12] * (X[0] / ((((((1.0 + ((X[0] / sPAR[12]) + (X[1] / sPAR[14]))) * (1.0 + ((X[12] / sPAR[35]) + (X[13] / sPAR[42])))) * (1.0 + ((0.5 * (X[16] / sPAR[28])) + (X[18] / sPAR[51])))) * sPAR[28]) * sPAR[35]) * sPAR[12]))))) + ((sPAR[57] * (((X[9] * (X[12] / sPAR[20])) - (X[7] * X[13])) / ((((1.0 + ((X[13] / sPAR[43]) + (X[12] / sPAR[36]))) * (1.0 + ((X[7] / sPAR[4]) + (X[9] / sPAR[17])))) * sPAR[4]) * sPAR[43]))) + ((sPAR[65] * (((X[11] * (X[12] / sPAR[25])) - (X[5] * X[13])) / (((sPAR[48] * sPAR[9]) * (1.0 + ((X[12] / sPAR[41]) + (X[13] / sPAR[48])))) * (1.0 + ((X[5] / sPAR[9]) + (X[11] / sPAR[27])))))) + ((sPAR[64] * (((X[10] * (X[12] * (X[5] / sPAR[24]))) - (X[3] * X[13])) / (((((1.0 + (X[5] / sPAR[8])) * (1.0 + ((X[3] / sPAR[2]) + (X[10] / sPAR[19])))) * (1.0 + ((X[12] / sPAR[40]) + (X[13] / sPAR[47])))) * sPAR[2]) * sPAR[47]))) + ((sPAR[60] * (((X[17] * (X[12] / sPAR[21])) - (X[18] * X[13])) / ((((1.0 + ((X[13] / sPAR[45]) + (X[12] / sPAR[38]))) * (1.0 + ((X[18] / sPAR[52]) + (X[17] / sPAR[34])))) * sPAR[45]) * sPAR[52]))) - (sPAR[59] * (X[13] * (X[14] / (((sPAR[44] * sPAR[49]) * (1.0 + ((X[13] / sPAR[44]) + (X[12] / sPAR[37])))) * (1.0 + (X[14] / sPAR[49]))))))))))));
    F[1]=((sPAR[55] * (X[16] * (X[12] * (X[0] / ((((((1.0 + ((X[0] / sPAR[12]) + (X[1] / sPAR[14]))) * (1.0 + ((X[12] / sPAR[35]) + (X[13] / sPAR[42])))) * (1.0 + ((0.5 * (X[16] / sPAR[28])) + (X[18] / sPAR[51])))) * sPAR[28]) * sPAR[35]) * sPAR[12]))))) + ((sPAR[63] * (((X[6] * X[0]) - (X[2] * (X[1] / sPAR[23]))) / (((sPAR[11] * sPAR[13]) * (1.0 + ((X[6] / sPAR[11]) + (X[2] / sPAR[0])))) * (1.0 + ((X[0] / sPAR[13]) + (X[1] / sPAR[16])))))) - (sPAR[58] * (pow((X[1] / (X[0] * sPAR[15])),sPAR[69]) / (1.0 + pow((X[1] / (X[0] * sPAR[15])),sPAR[69]))))));
    F[12]=((sPAR[60] * (((X[18] * X[13]) - (X[17] * (X[12] / sPAR[21]))) / ((((1.0 + ((X[13] / sPAR[45]) + (X[12] / sPAR[38]))) * (1.0 + ((X[18] / sPAR[52]) + (X[17] / sPAR[34])))) * sPAR[45]) * sPAR[52]))) + ((sPAR[64] * (((X[3] * X[13]) - (X[10] * (X[12] * (X[5] / sPAR[24])))) / (((((1.0 + (X[5] / sPAR[8])) * (1.0 + ((X[3] / sPAR[2]) + (X[10] / sPAR[19])))) * (1.0 + ((X[12] / sPAR[40]) + (X[13] / sPAR[47])))) * sPAR[2]) * sPAR[47]))) + ((sPAR[65] * (((X[5] * X[13]) - (X[11] * (X[12] / sPAR[25]))) / (((sPAR[48] * sPAR[9]) * (1.0 + ((X[12] / sPAR[41]) + (X[13] / sPAR[48])))) * (1.0 + ((X[5] / sPAR[9]) + (X[11] / sPAR[27])))))) + ((sPAR[57] * (((X[7] * X[13]) - (X[9] * (X[12] / sPAR[20]))) / ((((1.0 + ((X[13] / sPAR[43]) + (X[12] / sPAR[36]))) * (1.0 + ((X[7] / sPAR[4]) + (X[9] / sPAR[17])))) * sPAR[4]) * sPAR[43]))) + ((sPAR[59] * (X[13] * (X[14] / (((sPAR[44] * sPAR[49]) * (1.0 + ((X[13] / sPAR[44]) + (X[12] / sPAR[37])))) * (1.0 + (X[14] / sPAR[49])))))) + (((-(sPAR[55])) * (X[16] * (X[12] * (X[0] / ((((((1.0 + ((X[0] / sPAR[12]) + (X[1] / sPAR[14]))) * (1.0 + ((X[12] / sPAR[35]) + (X[13] / sPAR[42])))) * (1.0 + ((0.5 * (X[16] / sPAR[28])) + (X[18] / sPAR[51])))) * sPAR[28]) * sPAR[35]) * sPAR[12]))))) - (sPAR[61] * (X[18] * (pow(X[12],2.0) * (X[10] / (((((((X[12] + (sPAR[29] * X[13])) * sPAR[53]) * sPAR[39]) * sPAR[18]) * (1.0 + (X[18] / sPAR[53]))) * (1.0 + ((X[12] / sPAR[39]) + (X[13] / sPAR[46])))) * (1.0 + ((X[10] / sPAR[18]) + (X[3] / sPAR[1]))))))))))))));
    F[0]=((sPAR[58] * (pow((X[1] / (X[0] * sPAR[15])),sPAR[69]) / (1.0 + pow((X[1] / (X[0] * sPAR[15])),sPAR[69])))) + ((sPAR[63] * (((X[2] * (X[1] / sPAR[23])) - (X[6] * X[0])) / (((sPAR[11] * sPAR[13]) * (1.0 + ((X[6] / sPAR[11]) + (X[2] / sPAR[0])))) * (1.0 + ((X[0] / sPAR[13]) + (X[1] / sPAR[16])))))) - (sPAR[55] * (X[16] * (X[12] * (X[0] / ((((((1.0 + ((X[0] / sPAR[12]) + (X[1] / sPAR[14]))) * (1.0 + ((X[12] / sPAR[35]) + (X[13] / sPAR[42])))) * (1.0 + ((0.5 * (X[16] / sPAR[28])) + (X[18] / sPAR[51])))) * sPAR[28]) * sPAR[35]) * sPAR[12])))))));

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
    sPAR[0]=7.0; //Kac_5
    sPAR[1]=0.008; //Kaccoa_3
    sPAR[2]=0.007; //Kaccoa_6
    sPAR[3]=5.0; //Kacet_10
    sPAR[4]=0.06; //Kacet_11
    sPAR[5]=100.0; //Kacet_9
    sPAR[6]=100.0; //Kaclac_8
    sPAR[7]=10.0; //Kaclac_9
    sPAR[8]=10.0; //Kaco_6
    sPAR[9]=0.03; //Kaco_7
    sPAR[10]=0.7; //Kacp_4
    sPAR[11]=0.16; //Kacp_5
    sPAR[12]=0.047; //Kadp_1
    sPAR[13]=0.5; //Kadp_5
    sPAR[14]=0.019; //Katp_1
    sPAR[15]=6.196; //Katp_12
    sPAR[16]=0.07000000000000001; //Katp_5
    sPAR[17]=2.6; //Kbut_11
    sPAR[18]=0.014; //Kcoa_3
    sPAR[19]=0.008; //Kcoa_6
    sPAR[20]=1400.0; //Keq_11
    sPAR[21]=21120.69; //Keq_2
    sPAR[22]=0.007; //Keq_4
    sPAR[23]=174.217; //Keq_5
    sPAR[24]=1.0; //Keq_6
    sPAR[25]=12354.9; //Keq_7
    sPAR[26]=9000000000000.0; //Keq_8
    sPAR[27]=1.0; //Ketoh_7
    sPAR[28]=0.1; //Kglc_1
    sPAR[29]=46.416; //Ki_3
    sPAR[30]=0.2; //Kiaccoa_4
    sPAR[31]=0.2; //Kiacp_4
    sPAR[32]=0.029; //Kicoa_4
    sPAR[33]=2.6; //Kipi_4
    sPAR[34]=100.0; //Klac_2
    sPAR[35]=0.141; //Knad_1
    sPAR[36]=0.16; //Knad_11
    sPAR[37]=1.0; //Knad_13
    sPAR[38]=2.4; //Knad_2
    sPAR[39]=0.4; //Knad_3
    sPAR[40]=0.08; //Knad_6
    sPAR[41]=0.08; //Knad_7
    sPAR[42]=0.09; //Knadh_1
    sPAR[43]=0.02; //Knadh_11
    sPAR[44]=0.041; //Knadh_13
    sPAR[45]=0.08; //Knadh_2
    sPAR[46]=0.1; //Knadh_3
    sPAR[47]=0.025; //Knadh_6
    sPAR[48]=0.05; //Knadh_7
    sPAR[49]=0.2; //Ko_13
    sPAR[50]=2.6; //Kpi_4
    sPAR[51]=2.5; //Kpyr_1
    sPAR[52]=1.5; //Kpyr_2
    sPAR[53]=1.0; //Kpyr_3
    sPAR[54]=50.0; //Kpyr_8
    sPAR[55]=2397.0; //V_1
    sPAR[56]=200.0; //V_10
    sPAR[57]=105.0; //V_11
    sPAR[58]=900.0; //V_12
    sPAR[59]=118.0; //V_13
    sPAR[60]=5118.0; //V_2
    sPAR[61]=259.0; //V_3
    sPAR[62]=42.0; //V_4
    sPAR[63]=2700.0; //V_5
    sPAR[64]=97.0; //V_6
    sPAR[65]=162.0; //V_7
    sPAR[66]=600.0; //V_8
    sPAR[67]=106.0; //V_9
    sPAR[68]=0.0003; //k_14
    sPAR[69]=2.58; //n_12
    sPAR[70]=2.4; //n_8
    X[0]=4.9; //ADP
    X[1]=0.1; //ATP
    X[2]=1.0; //Ac
    X[3]=0.0; //AcCoA
    X[4]=0.0; //AcLac
    X[5]=0.0; //AcO
    X[6]=0.0; //AcP
    X[7]=0.0; //AcetoinIn
    X[8]=0.0; //AcetoinOut
    X[9]=0.01; //Butanediol
    X[10]=1.0; //CoA
    X[11]=1.0; //EtOH
    X[12]=6.33; //NAD
    X[13]=3.67; //NADH
    X[14]=0.2; //O2
    X[15]=10.0; //PO4
    X[16]=30.0; //halfglucose
    X[17]=0.1; //lactate
    X[18]=1.0; //pyruvate

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
