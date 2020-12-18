
#ifndef BIOMD281_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD281_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[20]=(20000.0 * X[20]);
    ACC[18]=(10000.0 * X[18]);
    ACC[19]=(20000.0 * X[19]);
    ACC[1]=(769.2307692307693 * X[1]);
    ACC[24]=(0.326797385620915 * X[24]);
    ACC[25]=(326797.385620915 * X[25]);
    ACC[2]=(40.0 * X[2]);
    ACC[28]=(666.6666666666666 * X[28]);
    ACC[31]=(16666.66666666667 * X[31]);
    ACC[21]=(2000.0 * X[21]);
    ACC[30]=(16666.66666666667 * X[30]);
    ACC[29]=(16666.66666666667 * X[29]);
    ACC[5]=(14285.71428571429 * X[5]);
    ACC[6]=(14285.71428571429 * X[6]);
    ACC[17]=(833.3333333333334 * X[17]);
    ACC[26]=(500.0 * X[26]);
    ACC[22]=(5000.0 * X[22]);
    ACC[3]=(5000.0 * X[3]);
    ACC[23]=(200.0 * X[23]);
    ACC[7]=(5000.0 * X[7]);
    ACC[8]=(4000.0 * X[8]);
    ACC[4]=(769.2307692307693 * X[4]);
    ACC[13]=(5000.0 * X[13]);
    ACC[16]=(1000.0 * X[16]);
    ACC[11]=(99999.99999999999 * X[11]);
    ACC[12]=(99999.99999999999 * X[12]);
    ACC[14]=(1000.0 * X[14]);
    ACC[0]=(1000.0 * X[0]);
    ACC[27]=(666.6666666666666 * X[27]);
    ACC[9]=(98039.2156862745 * X[9]);
    ACC[10]=(98039.2156862745 * X[10]);
    ACC[15]=(333.3333333333333 * X[15]);
    F[20]=(1e-06 * (sPAR[0] * ((sPAR[21] * (X[18] * X[23])) - (sPAR[22] * (X[20] * X[8])))));
    F[18]=(1e-06 * (sPAR[0] * ((sPAR[20] * (X[13] * X[19])) - (sPAR[21] * (X[18] * X[23])))));
    F[19]=(1e-06 * (sPAR[0] * ((sPAR[22] * (X[20] * X[8])) - (sPAR[20] * (X[13] * X[19])))));
    F[1]=(1e-06 * (sPAR[0] * ((sPAR[18] * (X[4] * X[7])) - (sPAR[19] * (X[1] * X[8])))));
    F[24]=(1e-06 * (sPAR[0] * ((sPAR[14] * (X[27] * X[25])) - (sPAR[15] * X[24]))));
    F[25]=(1e-06 * (sPAR[0] * ((sPAR[15] * X[24]) - (sPAR[14] * (X[27] * X[25])))));
    F[2]=0.0;
    F[28]=(1e-06 * (sPAR[0] * ((sPAR[10] * (X[31] * X[0])) - (sPAR[12] * (X[28] * X[2])))));
    F[31]=(1e-06 * (sPAR[0] * ((sPAR[9] * (X[30] * X[23])) - (sPAR[10] * (X[31] * X[0])))));
    F[21]=(-1e-06 * (sPAR[0] * (sPAR[8] * (X[5] * (X[29] * X[21])))));
    F[30]=((sPAR[0] * ((3e-06 * (sPAR[8] * (X[5] * (X[29] * X[21])))) + (-1e-06 * (sPAR[9] * (X[30] * X[23]))))) + (-1e-06 * (sPAR[0] * (sPAR[11] * (X[30] * X[2])))));
    F[29]=(sPAR[0] * ((1e-06 * ((sPAR[10] * (X[31] * X[0])) + (sPAR[11] * (X[30] * X[2])))) + (-3e-06 * (sPAR[8] * (X[5] * (X[29] * X[21]))))));
    F[5]=(sPAR[0] * ((4e-06 * (sPAR[7] * (X[26] * X[6]))) + (-1e-06 * (sPAR[8] * (X[5] * (X[29] * X[21]))))));
    F[6]=(sPAR[0] * ((1e-06 * (sPAR[8] * (X[5] * (X[29] * X[21])))) + (-4e-06 * (sPAR[7] * (X[26] * X[6])))));
    F[17]=(1e-06 * (sPAR[0] * ((sPAR[5] * (X[26] * X[7])) - (sPAR[6] * (X[17] * X[8])))));
    F[26]=(1e-06 * (sPAR[0] * ((sPAR[4] * (X[22] * X[0])) + ((sPAR[6] * (X[17] * X[8])) + (X[26] * (((-(sPAR[5])) * X[7]) - (sPAR[7] * X[6])))))));
    F[22]=(1e-06 * (sPAR[0] * ((sPAR[3] * (X[3] * X[0])) - (sPAR[4] * (X[22] * X[0])))));
    F[3]=(1e-06 * (sPAR[0] * ((sPAR[21] * (X[18] * X[23])) - (sPAR[3] * (X[3] * X[0])))));
    F[23]=(1e-06 * (sPAR[0] * ((sPAR[15] * X[24]) + (((-(sPAR[21])) * (X[18] * X[23])) - (sPAR[9] * (X[30] * X[23]))))));
    F[7]=(1e-06 * (sPAR[0] * ((sPAR[19] * (X[1] * X[8])) + ((sPAR[20] * (X[13] * X[19])) + ((sPAR[6] * (X[17] * X[8])) + (((-(sPAR[18])) * (X[4] * X[7])) - (sPAR[5] * (X[26] * X[7]))))))));
    F[8]=(1e-06 * (sPAR[0] * ((sPAR[18] * (X[4] * X[7])) + ((sPAR[5] * (X[26] * X[7])) + ((((-(sPAR[19])) * (X[1] * X[8])) - (sPAR[22] * (X[20] * X[8]))) - (sPAR[6] * (X[17] * X[8])))))));
    F[4]=(1e-06 * (sPAR[0] * ((sPAR[17] * X[16]) + ((sPAR[19] * (X[1] * X[8])) - (sPAR[18] * (X[4] * X[7]))))));
    F[13]=(1e-06 * (sPAR[0] * ((sPAR[17] * X[16]) - (sPAR[20] * (X[13] * X[19])))));
    F[16]=(1e-06 * (sPAR[0] * ((sPAR[16] * (X[11] * X[27])) - (sPAR[17] * X[16]))));
    F[11]=(1e-06 * (sPAR[0] * ((sPAR[13] * (X[14] * X[12])) - (sPAR[16] * (X[11] * X[27])))));
    F[12]=(1e-06 * (sPAR[0] * ((sPAR[16] * (X[11] * X[27])) - (sPAR[13] * (X[14] * X[12])))));
    F[14]=(1e-06 * (sPAR[0] * ((sPAR[2] * (X[9] * X[27])) - (sPAR[13] * (X[14] * X[12])))));
    F[0]=(1e-06 * (sPAR[0] * ((sPAR[2] * (X[9] * X[27])) + ((sPAR[16] * (X[11] * X[27])) + ((sPAR[15] * X[24]) + ((((-(sPAR[3])) * (X[3] * X[0])) - (sPAR[4] * (X[22] * X[0]))) - (sPAR[10] * (X[31] * X[0]))))))));
    F[27]=(1e-06 * (sPAR[0] * ((sPAR[3] * (X[3] * X[0])) + ((sPAR[4] * (X[22] * X[0])) + ((sPAR[12] * (X[28] * X[2])) + ((((-(sPAR[2])) * (X[9] * X[27])) - (sPAR[16] * (X[11] * X[27]))) - (sPAR[14] * (X[27] * X[25]))))))));
    F[9]=(1e-06 * (sPAR[0] * ((sPAR[1] * (X[15] * X[10])) - (sPAR[2] * (X[9] * X[27])))));
    F[10]=(1e-06 * (sPAR[0] * ((sPAR[2] * (X[9] * X[27])) - (sPAR[1] * (X[15] * X[10])))));
    F[15]=(-1e-06 * (sPAR[0] * (sPAR[1] * (X[15] * X[10]))));

}

template<class Precision> __forceinline__ __device__ void PerThread_EventFunction(
	int tid, int NT, Precision*	  EF, \
	Precision     T, Precision    dT, Precision*    TD, Precision*	X, \
	Precision* cPAR, Precision* sPAR, int*       sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[33]=T >= 64.0;
    ACC[32]=T >= 119.0;

    EF[1] = (! (ACC[32]));
    EF[0] = (! (ACC[33]));
}

template<class Precision> __forceinline__ __device__ void PerThread_ActionAfterEventDetection(
    int tid, int NT, int IDX, int& UDT, \
    Precision    &T, Precision   &dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR, int*       sPARi, Precision* ACC, int* ACCi
) {
    if (IDX == 0){
	    X[15]=0.003;
    }
    if (IDX == 1){
	    X[2]=0.025;
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
    ACC[0]=0.0; //ADP_0
    ACC[1]=0.0; //AGP_0
    ACC[2]=0.0; //DBP_0
    ACC[3]=0.0; //DGA_0
    ACC[4]=0.0; //DHA_0
    ACC[5]=0.0; //DIH_0
    ACC[6]=0.0; //DIN_0
    ACC[7]=0.0; //DPH_0
    ACC[8]=0.0; //DPN_0
    ACC[9]=0.0; //ENG_0
    ACC[10]=0.0; //ENZ_0
    ACC[11]=0.0; //ETG_0
    ACC[12]=0.0; //ETZ_0
    ACC[13]=0.0; //GAP_0
    ACC[14]=0.0; //GLP_0
    ACC[15]=0.0; //GLU_0
    ACC[16]=0.0; //GPP_0
    ACC[17]=0.0; //LAC_0
    ACC[18]=0.0; //MOB_0
    ACC[19]=0.0; //MOD_0
    ACC[20]=0.0; //MOX_0
    ACC[21]=0.0; //OXY_0
    ACC[22]=0.0; //PGA_0
    ACC[23]=0.0; //PID_0
    ACC[24]=0.0; //PPP_0
    ACC[25]=0.0; //PUE_0
    ACC[26]=0.0; //PYR_0
    ACC[27]=0.0; //TP1_0
    ACC[28]=0.0; //TP2_0
    ACC[29]=0.0; //XI_0
    ACC[30]=0.0; //XSI_0
    ACC[31]=0.0; //XSP_0
    ACC[32]=0; //$whenCondition1
    ACC[33]=0; //$whenCondition2
    sPAR[0]=1.0; //cell
    sPAR[1]=3000000000.0; //k_0
    sPAR[2]=10000000000.0; //k_1
    sPAR[3]=10000000000.0; //k_10
    sPAR[4]=5000000000.0; //k_11
    sPAR[5]=500000000.0; //k_12
    sPAR[6]=10000000.0; //k_13
    sPAR[7]=20000000.0; //k_14
    sPAR[8]=7500000000000.0; //k_15
    sPAR[9]=400000000.0; //k_16
    sPAR[10]=15000000000.0; //k_17
    sPAR[11]=120000000.0; //k_18
    sPAR[12]=4000000.0; //k_19
    sPAR[13]=40000000000.0; //k_2
    sPAR[14]=3000000000.0; //k_20
    sPAR[15]=2000000.0; //k_21
    sPAR[16]=40000000000.0; //k_3
    sPAR[17]=100000.0; //k_4
    sPAR[18]=2000000000.0; //k_5
    sPAR[19]=80000000.0; //k_6
    sPAR[20]=600000000000.0; //k_7
    sPAR[21]=400000000.0; //k_8
    sPAR[22]=6000000000.0; //k_9
    X[0]=0.0001; //ADP
    X[1]=0.0; //AGP
    X[2]=0.0; //DBP
    X[3]=0.0; //DGA
    X[4]=0.0; //DHA
    X[5]=3e-5; //DIH
    X[6]=3e-5; //DIN
    X[7]=0.0001; //DPH
    X[8]=0.0001; //DPN
    X[9]=0.0; //ENG
    X[10]=1e-5; //ENZ
    X[11]=0.0; //ETG
    X[12]=1e-5; //ETZ
    X[13]=0.0; //GAP
    X[14]=0.0; //GLP
    X[15]=0.0; //GLU
    X[16]=0.0; //GPP
    X[17]=0.001; //LAC
    X[18]=0.0; //MOB
    X[19]=5e-05; //MOD
    X[20]=0.0; //MOX
    X[21]=0.0005; //OXY
    X[22]=0.0; //PGA
    X[23]=0.004; //PID
    X[24]=1e-06; //PPP
    X[25]=2e-06; //PUE
    X[26]=0.001; //PYR
    X[27]=0.0005; //TP1
    X[28]=0.0005; //TP2
    X[29]=2e-5; //XI
    X[30]=2e-5; //XSI
    X[31]=2e-5; //XSP

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
