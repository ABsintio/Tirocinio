
#ifndef BIOMD139_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD139_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[0]=pow((-1999.0 + T),2.0);
    ACC[4]=(X[15] + X[23]);
    ACC[1]=(X[7] + (X[8] + (X[1] + X[2])));
    ACC[3]=(X[17] + (X[18] + (X[5] + X[6])));
    ACC[2]=(X[12] + (X[13] + (X[3] + X[4])));
    F[24]=0.0;
    F[27]=0.0;
    F[20]=((sPAR[25] * ((sPAR[5] * (X[19] * X[23])) - (sPAR[15] * X[20]))) + (-0.5 * (sPAR[25] * (sPAR[24] * X[20]))));
    F[21]=(sPAR[25] * (sPAR[38] - (sPAR[39] * X[21])));
    F[16]=(sPAR[25] * (sPAR[37] - (sPAR[39] * X[16])));
    F[11]=(sPAR[25] * (sPAR[36] + ((sPAR[35] * pow(X[23],2.0)) - (sPAR[39] * X[11]))));
    F[19]=((0.5 * ((sPAR[9] * (sPAR[32] * X[17])) - (sPAR[25] * (sPAR[33] * X[19])))) + (sPAR[25] * ((sPAR[15] * X[20]) - (sPAR[5] * (X[19] * X[23])))));
    F[15]=(sPAR[25] * ((sPAR[4] * (X[14] * X[23])) + (((-(sPAR[14])) * X[15]) - (sPAR[22] * ((X[26] + X[24]) * X[15])))));
    F[14]=((0.5 * ((sPAR[9] * (sPAR[32] * X[12])) - (sPAR[25] * (sPAR[33] * X[14])))) + (sPAR[25] * ((sPAR[14] * X[15]) - (sPAR[4] * (X[14] * X[23])))));
    F[10]=(sPAR[25] * ((sPAR[3] * (X[9] * X[23])) + (((-(sPAR[13])) - sPAR[21]) * X[10])));
    F[9]=((sPAR[9] * (sPAR[32] * X[7])) + (sPAR[25] * ((sPAR[13] * X[10]) + (X[9] * (((-(sPAR[3])) * X[23]) - sPAR[33])))));
    F[23]=((sPAR[9] * (sPAR[20] * X[22])) + (sPAR[25] * ((sPAR[13] * X[10]) + ((sPAR[14] * X[15]) + ((sPAR[15] * X[20]) + (((((-(sPAR[18])) * X[23]) - (sPAR[4] * (X[14] * X[23]))) - (sPAR[3] * (X[9] * X[23]))) - (sPAR[5] * (X[19] * X[23]))))))));
    F[6]=(sPAR[9] * ((sPAR[5] * (X[5] * X[22])) + ((sPAR[8] * (X[0] * X[18])) + ((((-(sPAR[12])) - sPAR[15]) - sPAR[31]) * X[6]))));
    F[5]=(sPAR[9] * ((sPAR[2] * (X[17] * X[0])) + ((sPAR[15] * X[6]) + (X[5] * ((((-(sPAR[5])) * X[22]) - sPAR[12]) - sPAR[28])))));
    F[4]=(sPAR[9] * ((sPAR[4] * (X[3] * X[22])) + ((sPAR[7] * (X[0] * X[13])) + ((((-(sPAR[11])) - sPAR[14]) - sPAR[30]) * X[4]))));
    F[3]=(sPAR[9] * ((sPAR[1] * (X[12] * X[0])) + ((sPAR[14] * X[4]) + (X[3] * ((((-(sPAR[4])) * X[22]) - sPAR[11]) - sPAR[27])))));
    F[0]=(sPAR[9] * ((sPAR[29] * X[2]) + ((sPAR[30] * X[4]) + ((sPAR[31] * X[6]) + ((sPAR[26] * X[1]) + ((sPAR[27] * X[3]) + ((sPAR[28] * X[5]) + ((sPAR[10] * X[1]) + ((sPAR[11] * X[3]) + ((sPAR[12] * X[5]) + ((sPAR[10] * X[2]) + ((sPAR[11] * X[4]) + ((sPAR[12] * X[6]) + ((X[0] * (((-(sPAR[7])) * X[13]) - sPAR[19])) + ((X[0] * (((-(sPAR[6])) * X[8]) - (sPAR[8] * X[18]))) + ((((-(sPAR[0])) * (X[7] * X[0])) - (sPAR[2] * (X[17] * X[0]))) - (sPAR[1] * (X[12] * X[0]))))))))))))))))));
    F[2]=(sPAR[9] * ((sPAR[3] * (X[1] * X[22])) + ((sPAR[6] * (X[0] * X[8])) + ((((-(sPAR[10])) - sPAR[13]) - sPAR[29]) * X[2]))));
    F[1]=(sPAR[9] * ((sPAR[0] * (X[7] * X[0])) + ((sPAR[13] * X[2]) + (X[1] * ((((-(sPAR[3])) * X[22]) - sPAR[10]) - sPAR[26])))));
    F[18]=((sPAR[9] * ((sPAR[5] * (X[17] * X[22])) - (sPAR[15] * X[18]))) + ((0.5 * (sPAR[25] * (sPAR[24] * X[20]))) + (sPAR[9] * ((sPAR[12] * X[6]) + (((-(sPAR[8])) * (X[0] * X[18])) - (sPAR[17] * X[18]))))));
    F[17]=((sPAR[25] * (sPAR[34] * X[21])) + ((sPAR[9] * ((sPAR[15] * X[18]) + ((sPAR[12] * X[5]) + ((X[17] * (((-(sPAR[5])) * X[22]) - sPAR[16])) - (sPAR[2] * (X[17] * X[0])))))) + (-0.5 * ((sPAR[9] * (sPAR[32] * X[17])) - (sPAR[25] * (sPAR[33] * X[19]))))));
    F[13]=((sPAR[9] * ((sPAR[4] * (X[12] * X[22])) - (sPAR[14] * X[13]))) + ((sPAR[25] * (sPAR[22] * ((X[26] + X[24]) * X[15]))) + (sPAR[9] * ((sPAR[11] * X[4]) + (((-(sPAR[7])) * (X[0] * X[13])) - (sPAR[17] * X[13]))))));
    F[12]=((sPAR[25] * (sPAR[34] * X[16])) + ((sPAR[9] * ((sPAR[14] * X[13]) + ((sPAR[11] * X[3]) + ((X[12] * (((-(sPAR[4])) * X[22]) - sPAR[16])) - (sPAR[1] * (X[12] * X[0])))))) + (-0.5 * ((sPAR[9] * (sPAR[32] * X[12])) - (sPAR[25] * (sPAR[33] * X[14]))))));
    F[8]=((sPAR[9] * ((sPAR[3] * (X[7] * X[22])) - (sPAR[13] * X[8]))) + ((sPAR[25] * (sPAR[21] * X[10])) + (sPAR[9] * ((sPAR[10] * X[2]) + (((-(sPAR[6])) * (X[0] * X[8])) - (sPAR[17] * X[8]))))));
    F[22]=((sPAR[9] * ((sPAR[29] * X[2]) + ((sPAR[30] * X[4]) + ((sPAR[31] * X[6]) + ((sPAR[17] * (X[8] + (X[13] + X[18]))) + ((sPAR[13] * X[8]) + ((sPAR[14] * X[13]) + ((sPAR[15] * X[18]) + ((sPAR[13] * X[2]) + ((sPAR[14] * X[4]) + ((sPAR[15] * X[6]) + (((((((-(sPAR[4])) * (X[3] * X[22])) - (sPAR[5] * (X[17] * X[22]))) - (sPAR[3] * (X[7] * X[22]))) - (sPAR[4] * (X[12] * X[22]))) - (sPAR[5] * (X[5] * X[22]))) - (sPAR[3] * (X[1] * X[22])))))))))))))) + ((sPAR[25] * (sPAR[18] * X[23])) - (sPAR[9] * (sPAR[20] * X[22]))));
    F[7]=((sPAR[25] * (sPAR[34] * X[11])) + ((sPAR[9] * ((sPAR[13] * X[8]) + ((sPAR[10] * X[1]) + ((X[7] * (((-(sPAR[3])) * X[22]) - sPAR[16])) - (sPAR[0] * (X[7] * X[0])))))) + ((sPAR[25] * (sPAR[33] * X[9])) - (sPAR[9] * (sPAR[32] * X[7])))));
    F[26]=(-0.5 * (X[27] / ACC[0]));
    F[25]=0.0;

}

template<class Precision> __forceinline__ __device__ void PerThread_EventFunction(
	int tid, int NT, Precision*	  EF, \
	Precision     T, Precision    dT, Precision*    TD, Precision*	X, \
	Precision* cPAR, Precision* sPAR, int*       sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[5]=T >= 2000.0;

    EF[0] = (! (ACC[5]));
}

template<class Precision> __forceinline__ __device__ void PerThread_ActionAfterEventDetection(
    int tid, int NT, int IDX, int& UDT, \
    Precision    &T, Precision   &dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR, int*       sPARi, Precision* ACC, int* ACCi
) {
    if (IDX == 0){
	    X[24]=0.0;
    }
    if (IDX == 0){
	    X[27]=1.0;
    }
    if (IDX == 0){
	    X[0]=0.1;
    }

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
    ACC[0]=0.0; //$cse1
    ACC[1]=0.0; //Total_IkBalpha
    ACC[2]=0.0; //Total_IkBbeta
    ACC[3]=0.0; //Total_IkBeps
    ACC[4]=0.0; //Total_NFkBn
    ACC[5]=0; //$whenCondition1
    sPAR[0]=1.35; //a1
    sPAR[1]=0.36; //a2
    sPAR[2]=0.54; //a3
    sPAR[3]=30.0; //a4
    sPAR[4]=30.0; //a5
    sPAR[5]=30.0; //a6
    sPAR[6]=11.1; //a7
    sPAR[7]=2.88; //a8
    sPAR[8]=4.2; //a9
    sPAR[9]=1.0; //cytoplasm
    sPAR[10]=0.075; //d1
    sPAR[11]=0.105; //d2
    sPAR[12]=0.105; //d3
    sPAR[13]=0.03; //d4
    sPAR[14]=0.03; //d5
    sPAR[15]=0.03; //d6
    sPAR[16]=0.00678; //deg1
    sPAR[17]=0.00135; //deg4
    sPAR[18]=0.0048; //k01
    sPAR[19]=0.0072; //k02
    sPAR[20]=5.4; //k1
    sPAR[21]=0.828; //k2
    sPAR[22]=0.0069; //k2_IkBbeta_nuc_NFkB_nuc_v39
    sPAR[23]=0.624; //k2_beta
    sPAR[24]=0.624; //k2_eps
    sPAR[25]=1.0; //nucleus
    sPAR[26]=0.2442; //r1
    sPAR[27]=0.09; //r2
    sPAR[28]=0.132; //r3
    sPAR[29]=1.224; //r4
    sPAR[30]=0.45; //r5
    sPAR[31]=0.66; //r6
    sPAR[32]=0.018; //tp1
    sPAR[33]=0.012; //tp2
    sPAR[34]=0.2448; //tr1
    sPAR[35]=0.99; //tr2
    sPAR[36]=9.25e-05; //tr2a
    sPAR[37]=0.0; //tr2b
    sPAR[38]=0.0; //tr2e
    sPAR[39]=0.0168; //tr3
    X[0]=0.0; //IKK
    X[1]=0.0; //IKK_IkBalpha
    X[2]=0.0; //IKK_IkBalpha_NFkB
    X[3]=0.0; //IKK_IkBbeta
    X[4]=0.0; //IKK_IkBbeta_NFkB
    X[5]=0.0; //IKK_IkBeps
    X[6]=0.0; //IKK_IkBeps_NFkB
    X[7]=0.1; //IkBalpha
    X[8]=0.0; //IkBalpha_NFkB
    X[9]=0.0; //IkBalpha_nuc
    X[10]=0.0; //IkBalpha_nuc_NFkB_nuc
    X[11]=0.0; //IkBalpha_transcript
    X[12]=0.0; //IkBbeta
    X[13]=0.0; //IkBbeta_NFkB
    X[14]=0.0; //IkBbeta_nuc
    X[15]=0.0; //IkBbeta_nuc_NFkB_nuc
    X[16]=0.0; //IkBbeta_transcript
    X[17]=0.0; //IkBeps
    X[18]=0.0; //IkBeps_NFkB
    X[19]=0.0; //IkBeps_nuc
    X[20]=0.0; //IkBeps_nuc_NFkB_nuc
    X[21]=0.0; //IkBeps_transcript
    X[22]=0.1; //NFkB
    X[23]=0.001; //NFkB_nuc
    X[24]=0.5; //flag_for_after_trigger
    X[25]=1.0; //fr
    X[26]=0.5; //fr_after_trigger
    X[27]=0.0; //trigger_value

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
