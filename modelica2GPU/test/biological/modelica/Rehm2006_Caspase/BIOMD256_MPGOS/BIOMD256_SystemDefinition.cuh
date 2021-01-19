
#ifndef BIOMD256_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD256_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[5]=(X[8] / X[29]);
    ACC[3]=(X[6] / X[29]);
    ACC[1]=(X[3] / X[29]);
    ACC[4]=(X[5] / X[29]);
    ACC[2]=(X[2] / X[29]);
    ACC[16]=((X[30] + X[32]) / X[29]);
    ACC[14]=((X[27] + X[28]) / X[29]);
    ACC[13]=((X[26] + X[28]) / X[29]);
    ACC[15]=(X[24] / X[29]);
    ACC[0]=(1.0 - (X[19] / X[13]));
    ACC[11]=(1.0 - (X[21] / X[22]));
    ACC[9]=(X[18] / X[10]);
    ACC[6]=(X[9] / X[10]);
    ACC[7]=(X[12] / X[13]);
    ACC[8]=(X[11] / X[13]);
    ACC[12]=(X[25] / X[29]);
    ACC[10]=(X[20] / X[29]);
    ACC[17]=piecewise(X[19], X[19] < X[0], X[0]);
    F[1]=0.0;
    F[17]=0.0;
    F[22]=0.0;
    F[10]=0.0;
    F[13]=0.0;
    F[29]=0.0;
    F[45]=0.0;
    F[44]=0.0;
    F[43]=0.0;
    F[42]=0.0;
    F[41]=0.0;
    F[40]=0.0;
    F[39]=0.0;
    F[38]=0.0;
    F[37]=0.0;
    F[36]=0.0;
    F[35]=0.0;
    F[34]=0.0;
    F[33]=0.0;
    F[21]=(-0.6931471805599453 * (sPAR[1] * (X[21] / sPAR[63])));
    F[14]=(sPAR[1] * (sPAR[52] * (X[9] * X[23])));
    F[23]=((-(sPAR[1])) * (sPAR[52] * (X[9] * X[23])));
    F[31]=(sPAR[1] * ((sPAR[39] * (X[30] * pow(X[20],2.0))) + (((-(sPAR[40])) - X[40]) * X[31])));
    F[20]=(sPAR[1] * ((0.6931471805599453 * (X[21] / sPAR[63])) + ((-2.0 * ((sPAR[22] * (X[24] * pow(X[20],2.0))) - (sPAR[23] * X[25]))) + ((-2.0 * ((sPAR[24] * (X[27] * pow(X[20],2.0))) + ((sPAR[26] * (X[26] * pow(X[20],2.0))) + ((sPAR[28] * (X[28] * pow(X[20],2.0))) + ((X[25] * (((-(sPAR[25])) * X[11]) - (sPAR[27] * X[9]))) - (sPAR[29] * (X[25] * (X[9] * X[11])))))))) + ((sPAR[32] * X[4]) + ((sPAR[34] * X[7]) + ((sPAR[36] * (X[4] * X[9])) + ((sPAR[38] * (X[7] * X[11])) + ((-2.0 * ((sPAR[39] * (X[30] * pow(X[20],2.0))) - (sPAR[40] * X[31]))) + ((((((-(sPAR[37])) * (X[6] * X[20])) - (sPAR[33] * (X[5] * X[20]))) - (sPAR[35] * (X[3] * X[20]))) - (sPAR[31] * (X[2] * X[20]))) - (sPAR[51] * X[20])))))))))));
    F[7]=(sPAR[1] * ((sPAR[10] * (X[9] * X[25])) + ((sPAR[33] * (X[5] * X[20])) + ((sPAR[37] * (X[6] * X[20])) + (X[7] * ((((-(sPAR[38])) * X[11]) - sPAR[34]) - X[43]))))));
    F[4]=(sPAR[1] * ((sPAR[10] * (X[9] * X[25])) + ((sPAR[31] * (X[2] * X[20])) + ((sPAR[35] * (X[3] * X[20])) + (X[4] * ((((-(sPAR[36])) * X[9]) - sPAR[32]) - sPAR[48]))))));
    F[25]=(sPAR[1] * ((sPAR[22] * (X[24] * pow(X[20],2.0))) + ((sPAR[24] * (X[27] * pow(X[20],2.0))) + ((sPAR[26] * (X[26] * pow(X[20],2.0))) + ((sPAR[28] * (X[28] * pow(X[20],2.0))) + ((X[25] * (((-(sPAR[29])) * (X[9] * X[11])) - X[41])) + ((((-(X[25])) * (sPAR[23] + (sPAR[25] * X[11]))) - (sPAR[27] * (X[25] * X[9]))) - (sPAR[10] * (X[9] * X[25])))))))));
    F[8]=(sPAR[1] * ((X[9] * ((sPAR[7] * X[30]) + (sPAR[8] * X[32]))) + ((sPAR[13] * (X[9] * X[6])) + (((-(sPAR[20])) - X[45]) * X[8]))));
    F[6]=(sPAR[1] * ((X[9] * ((sPAR[5] * X[27]) + (sPAR[9] * X[28]))) + ((sPAR[18] * (X[11] * X[5])) + ((sPAR[38] * (X[7] * X[11])) + ((((-(sPAR[19])) - X[44]) * X[6]) + (((-(sPAR[13])) * (X[9] * X[6])) - (sPAR[37] * (X[6] * X[20]))))))));
    F[5]=(sPAR[1] * ((X[9] * ((sPAR[4] * X[24]) + (sPAR[6] * X[26]))) + ((sPAR[20] * X[8]) + ((sPAR[19] * X[6]) + ((sPAR[34] * X[7]) + (((-(X[5])) * (X[42] + (sPAR[33] * X[20]))) - (sPAR[18] * (X[11] * X[5]))))))));
    F[3]=(sPAR[1] * ((sPAR[2] * (X[9] * X[2])) + ((sPAR[6] * (X[9] * X[26])) + ((sPAR[8] * (X[9] * X[32])) + ((sPAR[9] * (X[9] * X[28])) + ((sPAR[36] * (X[4] * X[9])) + (X[3] * ((((-(sPAR[35])) * X[20]) - sPAR[3]) - sPAR[49]))))))));
    F[2]=(sPAR[1] * ((X[9] * ((sPAR[4] * X[24]) + (sPAR[5] * X[27]))) + ((sPAR[7] * (X[9] * X[30])) + ((sPAR[3] * X[3]) + ((sPAR[32] * X[4]) + (((-(X[2])) * (sPAR[47] + (sPAR[31] * X[20]))) - (sPAR[2] * (X[9] * X[2]))))))));
    F[32]=(sPAR[1] * ((sPAR[58] * (X[9] * X[30])) + ((sPAR[11] * (X[9] * X[28])) + ((((-(sPAR[46])) - sPAR[59]) * X[32]) - (sPAR[8] * (X[9] * X[32]))))));
    F[30]=(sPAR[1] * ((sPAR[12] * (X[9] * X[27])) + ((sPAR[59] * X[32]) + ((((-(sPAR[58])) - sPAR[7]) * (X[9] * X[30])) + ((sPAR[40] * X[31]) + (X[30] * ((((-(sPAR[39])) * pow(X[20],2.0)) - sPAR[21]) - sPAR[45])))))));
    F[28]=(sPAR[1] * ((sPAR[56] * (X[9] * X[27])) + ((sPAR[16] * (X[11] * X[26])) + ((sPAR[29] * (X[25] * (X[9] * X[11]))) + ((((-(sPAR[17])) - X[38]) * X[28]) + ((((-(sPAR[9])) - sPAR[11]) * (X[9] * X[28])) - (X[28] * (sPAR[57] + (sPAR[28] * pow(X[20],2.0))))))))));
    F[27]=(sPAR[1] * ((sPAR[14] * (X[11] * X[24])) + ((sPAR[57] * X[28]) + (((((-(sPAR[12])) - sPAR[5]) - sPAR[56]) * (X[9] * X[27])) + ((sPAR[25] * (X[25] * X[11])) + (X[27] * ((((-(sPAR[24])) * pow(X[20],2.0)) - sPAR[15]) - X[39])))))));
    F[26]=(sPAR[1] * ((sPAR[54] * (X[9] * X[24])) + ((sPAR[17] * X[28]) + ((sPAR[27] * (X[25] * X[9])) + (((((-(X[37])) * X[26]) - (sPAR[16] * (X[11] * X[26]))) - (sPAR[6] * (X[9] * X[26]))) - (X[26] * (sPAR[55] + (sPAR[26] * pow(X[20],2.0)))))))));
    F[12]=(sPAR[1] * ((sPAR[44] * (X[11] * X[9])) + ((sPAR[50] * (X[12] * X[18])) + ((X[9] * ((sPAR[11] * X[28]) + (sPAR[12] * X[27]))) + ((sPAR[13] * (X[9] * X[6])) + (X[12] * (((-(sPAR[50])) * X[18]) - sPAR[41])))))));
    F[9]=(sPAR[1] * ((X[11] * ((sPAR[30] * X[18]) + (sPAR[44] * X[9]))) + ((sPAR[50] * (X[12] * X[18])) + ((2.0 * (sPAR[53] * (X[18] * X[9]))) + ((X[9] * ((sPAR[4] * X[24]) + ((sPAR[5] * X[27]) + ((sPAR[6] * X[26]) + ((sPAR[7] * X[30]) + ((sPAR[8] * X[32]) + ((sPAR[9] * X[28]) + ((sPAR[10] * X[25]) + ((sPAR[11] * X[28]) + ((sPAR[12] * X[27]) + (sPAR[13] * X[6]))))))))))) + ((sPAR[26] * (X[26] * pow(X[20],2.0))) + ((sPAR[28] * (X[28] * pow(X[20],2.0))) + ((sPAR[35] * (X[3] * X[20])) + ((sPAR[52] * (X[9] * X[23])) + ((sPAR[55] * X[26]) + ((sPAR[57] * X[28]) + ((sPAR[59] * X[32]) + ((sPAR[3] * X[3]) + ((X[9] * (((-(sPAR[58])) * X[30]) - (sPAR[4] * X[24]))) + ((X[9] * (((-(sPAR[2])) * X[2]) - (sPAR[5] * X[27]))) + ((X[9] * (((-(sPAR[54])) * X[24]) - (sPAR[6] * X[26]))) + ((X[9] * (((-(sPAR[56])) * X[27]) - (sPAR[7] * X[30]))) + ((((((((((((((-(sPAR[52])) * (X[9] * X[23])) - (sPAR[29] * (X[25] * (X[9] * X[11])))) - (sPAR[13] * (X[9] * X[6]))) - (sPAR[11] * (X[9] * X[28]))) - (sPAR[9] * (X[9] * X[28]))) - (sPAR[53] * (X[18] * X[9]))) - (sPAR[27] * (X[25] * X[9]))) - (sPAR[44] * (X[11] * X[9]))) - (sPAR[8] * (X[9] * X[32]))) - (sPAR[10] * (X[9] * X[25]))) - (sPAR[12] * (X[9] * X[27]))) - (sPAR[36] * (X[4] * X[9]))) - (sPAR[43] * X[9])))))))))))))))))));
    F[24]=(sPAR[1] * (X[35] + ((sPAR[21] * X[30]) + ((sPAR[55] * X[26]) + ((sPAR[15] * X[27]) + ((sPAR[23] * X[25]) + (((((-(X[24])) * (X[36] + (sPAR[22] * pow(X[20],2.0)))) - (sPAR[4] * (X[9] * X[24]))) - (sPAR[14] * (X[11] * X[24]))) - (sPAR[54] * (X[9] * X[24])))))))));
    F[18]=(sPAR[1] * (X[33] + ((((-(sPAR[30])) * (X[11] * X[18])) - (X[18] * (X[34] + (sPAR[53] * X[9])))) - (sPAR[50] * (X[12] * X[18])))));
    F[11]=(sPAR[1] * ((sPAR[30] * (X[11] * X[18])) + ((sPAR[24] * (X[27] * pow(X[20],2.0))) + ((sPAR[28] * (X[28] * pow(X[20],2.0))) + ((sPAR[37] * (X[6] * X[20])) + ((X[25] * (((-(sPAR[25])) * X[11]) - (sPAR[29] * (X[9] * X[11])))) + ((0.6931471805599453 * (ACC[17] / sPAR[61])) + ((X[11] * (((-(sPAR[30])) * X[18]) - (sPAR[44] * X[9]))) + ((sPAR[15] * X[27]) + ((sPAR[17] * X[28]) + ((sPAR[19] * X[6]) + ((X[11] * (((-(sPAR[16])) * X[26]) - sPAR[42])) + ((X[11] * (((-(sPAR[14])) * X[24]) - (sPAR[18] * X[5]))) - (sPAR[38] * (X[7] * X[11])))))))))))))));
    F[19]=(-0.6931471805599453 * (sPAR[1] * (ACC[17] / sPAR[61])));
    F[0]=(-0.6931471805599453 * (sPAR[1] * (ACC[17] / sPAR[61])));
    F[15]=(0.6931471805599453 * (sPAR[1] * (X[16] / sPAR[62])));
    F[16]=(-0.6931471805599453 * (sPAR[1] * (X[16] / sPAR[62])));

}

template<class Precision> __forceinline__ __device__ void PerThread_EventFunction(
	int tid, int NT, Precision*	  EF, \
	Precision     T, Precision    dT, Precision*    TD, Precision*	X, \
	Precision* cPAR, Precision* sPAR, int*       sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[18]=X[23] < sPAR[0];

    EF[0] = (! (ACC[18]));
}

template<class Precision> __forceinline__ __device__ void PerThread_ActionAfterEventDetection(
    int tid, int NT, int IDX, int& UDT, \
    Precision    &T, Precision   &dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR, int*       sPARi, Precision* ACC, int* ACCi
) {
    if (IDX == 0){
	    X[33]=0.0;
    }
    if (IDX == 0){
	    X[34]=0.0;
    }
    if (IDX == 0){
	    X[35]=0.0;
    }
    if (IDX == 0){
	    X[36]=0.0;
    }
    if (IDX == 0){
	    X[37]=0.0058;
    }
    if (IDX == 0){
	    X[38]=0.0058;
    }
    if (IDX == 0){
	    X[39]=0.0058;
    }
    if (IDX == 0){
	    X[40]=0.0058;
    }
    if (IDX == 0){
	    X[41]=0.0058;
    }
    if (IDX == 0){
	    X[42]=0.0058;
    }
    if (IDX == 0){
	    X[43]=0.0058;
    }
    if (IDX == 0){
	    X[44]=0.0058;
    }
    if (IDX == 0){
	    X[45]=0.0058;
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
    ACC[0]=0.0; //Apoform
    ACC[1]=0.0; //BIR12_C3_norm
    ACC[2]=0.0; //BIR12_norm
    ACC[3]=0.0; //BIR3R_C9_norm
    ACC[4]=0.0; //BIR3R_norm
    ACC[5]=0.0; //BIR3R_p2frag_norm
    ACC[6]=0.0; //C3norm
    ACC[7]=0.0; //C9Pnorm
    ACC[8]=0.0; //C9norm
    ACC[9]=0.0; //PC3norm
    ACC[10]=0.0; //SMAC_norm
    ACC[11]=0.0; //SMAC_rel
    ACC[12]=0.0; //XIAP_2SMAC_norm
    ACC[13]=0.0; //XIAP_C3_norm
    ACC[14]=0.0; //XIAP_C9_norm
    ACC[15]=0.0; //XIAP_norm
    ACC[16]=0.0; //XIAP_p2frag_norm
    ACC[17]=0.0; //apo_lim
    ACC[18]=0.0; //$whenCondition1
    sPAR[0]=0.01; //S_breakdown
    sPAR[1]=1.0; //cell
    sPAR[2]=156.0; //k10
    sPAR[3]=0.144; //k10r
    sPAR[4]=12.0; //k11
    sPAR[5]=12.0; //k12
    sPAR[6]=12.0; //k13
    sPAR[7]=12.0; //k14
    sPAR[8]=12.0; //k15
    sPAR[9]=12.0; //k16
    sPAR[10]=12.0; //k17
    sPAR[11]=12.0; //k18
    sPAR[12]=12.0; //k19
    sPAR[13]=12.0; //k20
    sPAR[14]=156.0; //k21
    sPAR[15]=0.144; //k21r
    sPAR[16]=156.0; //k22
    sPAR[17]=0.144; //k22r
    sPAR[18]=156.0; //k23
    sPAR[19]=0.144; //k23r
    sPAR[20]=0.0; //k24
    sPAR[21]=0.0; //k25
    sPAR[22]=420.0; //k26
    sPAR[23]=0.133; //k26r
    sPAR[24]=420.0; //k27
    sPAR[25]=156.0; //k27r
    sPAR[26]=420.0; //k28
    sPAR[27]=156.0; //k28r
    sPAR[28]=420.0; //k29
    sPAR[29]=156.0; //k29r
    sPAR[30]=6.0; //k3
    sPAR[31]=4.45; //k30
    sPAR[32]=31.9; //k30r
    sPAR[33]=0.33; //k31
    sPAR[34]=14.2; //k31r
    sPAR[35]=4.45; //k32
    sPAR[36]=156.0; //k32r
    sPAR[37]=0.33; //k33
    sPAR[38]=156.0; //k33r
    sPAR[39]=420.0; //k34
    sPAR[40]=156.0; //k34r
    sPAR[41]=0.0058; //k35
    sPAR[42]=0.0058; //k36
    sPAR[43]=0.0058; //k37
    sPAR[44]=12.0; //k4
    sPAR[45]=0.0058; //k41
    sPAR[46]=0.0347; //k42
    sPAR[47]=0.0058; //k45
    sPAR[48]=0.0058; //k47
    sPAR[49]=0.0058; //k49
    sPAR[50]=48.0; //k5
    sPAR[51]=0.0058; //k52
    sPAR[52]=12.0; //k53
    sPAR[53]=2.4; //k6
    sPAR[54]=156.0; //k7
    sPAR[55]=0.144; //k7r
    sPAR[56]=156.0; //k8
    sPAR[57]=0.144; //k8r
    sPAR[58]=156.0; //k9
    sPAR[59]=0.144; //k9r
    sPAR[60]=1.0; //mito
    sPAR[61]=2.3; //th_Apop
    sPAR[62]=1.5; //th_CytC
    sPAR[63]=7.0; //th_SMAC
    X[0]=3.372; //APAF1
    X[1]=3.372; //APAF1_tot
    X[2]=0.0; //BIR12
    X[3]=0.0; //BIR12_C3
    X[4]=0.0; //BIR12_SMAC
    X[5]=0.0; //BIR3R
    X[6]=0.0; //BIR3R_C9
    X[7]=0.0; //BIR3R_SMAC
    X[8]=0.0; //BIR3R_p2frag
    X[9]=0.0; //C3
    X[10]=0.12; //C3_tot
    X[11]=0.0; //C9
    X[12]=0.0; //C9P
    X[13]=0.03; //C9_tot
    X[14]=0.0; //ClvgPrds
    X[15]=0.0; //CytC_cell
    X[16]=10.0; //CytC_mit
    X[17]=10.0; //CytC_tot
    X[18]=0.0; //PC3
    X[19]=0.03; //PC9
    X[20]=0.0; //SMAC
    X[21]=0.126; //SMAC_mito
    X[22]=0.126; //SMAC_tot
    X[23]=1.0; //Substrate
    X[24]=0.0; //XIAP
    X[25]=0.0; //XIAP_2SMAC
    X[26]=0.0; //XIAP_C3
    X[27]=0.0; //XIAP_C9
    X[28]=0.0; //XIAP_C9_C3
    X[29]=0.063; //XIAP_ini
    X[30]=0.0; //XIAP_p2frag
    X[31]=0.0; //XIAP_p2frag_2SMAC
    X[32]=0.0; //XIAP_p2frag_C3
    X[33]=0.000468; //k1
    X[34]=0.0039; //k1r
    X[35]=0.0007308; //k2
    X[36]=0.0116; //k2r
    X[37]=0.0347; //k38
    X[38]=0.0347; //k39
    X[39]=0.0347; //k40
    X[40]=0.0347; //k43
    X[41]=0.0347; //k44
    X[42]=0.0347; //k46
    X[43]=0.0347; //k48
    X[44]=0.0058; //k50
    X[45]=0.0347; //k51

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
