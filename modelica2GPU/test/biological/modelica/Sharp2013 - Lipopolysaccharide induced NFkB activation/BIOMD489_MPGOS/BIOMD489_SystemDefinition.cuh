
#ifndef BIOMD489_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD489_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[15]=0.0;
    F[48]=0.0;
    F[47]=(0.0001 * ((X[33] * (X[22] * (X[0] * (X[51] * (X[9] * (X[8] * (X[7] * X[48]))))))) - X[47]));
    F[46]=((0.008999999999999999 * (X[6] * X[29])) + ((-0.00395 * X[46]) + ((-0.5 * (X[46] * X[24])) + (0.0005 * X[31]))));
    F[45]=((0.006 * (X[6] * X[26])) + ((-0.00325 * X[45]) + ((-0.5 * (X[45] * X[24])) + (0.0005 * X[28]))));
    F[43]=((0.0225 * (X[6] * X[21])) + ((-0.00532 * X[43]) + ((-0.5 * (X[43] * X[24])) + (0.0005 * X[25]))));
    F[42]=((1.27e-07 * X[14]) + (-0.0002799999999999999 * X[42]));
    F[41]=((1.78e-07 * X[14]) + (-0.0002799999999999999 * X[41]));
    F[40]=((1.54e-06 * X[14]) + ((0.0165 * pow(X[32],2.0)) + (-0.0002799999999999999 * X[40])));
    F[39]=((0.5 * (X[38] * X[32])) + (-0.0057 * X[39]));
    F[38]=((0.00015 * X[29]) + ((-0.0001 * X[38]) + ((-0.5 * (X[38] * X[32])) + (0.0005 * X[39]))));
    F[37]=((0.5 * (X[36] * X[32])) + (-0.0057 * X[37]));
    F[36]=((0.00015 * X[26]) + ((-0.0001 * X[36]) + ((-0.5 * (X[36] * X[32])) + (0.0005 * X[37]))));
    F[35]=((0.5 * (X[34] * X[32])) + (-0.0143 * X[35]));
    F[34]=((0.0003 * X[21]) + ((-0.0002 * X[34]) + ((-0.5 * (X[34] * X[32])) + (0.0005 * X[35]))));
    F[32]=((0.09 * X[24]) + ((-8.000000000000001e-05 * X[32]) + ((1.734723475976807e-18 * pow(X[32],2.0)) + ((-0.5 * (X[34] * X[32])) + ((0.0005 * X[35]) + ((-0.5 * (X[36] * X[32])) + ((0.0005 * X[37]) + ((-0.5 * (X[38] * X[32])) + (0.0005 * X[39])))))))));
    F[31]=((0.07000000000000001 * (X[6] * X[30])) + ((-0.01325 * X[31]) + (0.5 * (X[46] * X[24]))));
    F[30]=((0.5 * (X[29] * X[24])) + ((-0.0005225 * X[30]) + ((0.0052 * X[39]) + ((-0.07000000000000001 * (X[6] * X[30])) + (0.00175 * X[31])))));
    F[29]=((0.00408 * X[42]) + ((-0.5 * (X[29] * X[24])) + ((0.0005 * X[30]) + ((-0.008999999999999999 * (X[6] * X[29])) + ((0.00175 * X[46]) + ((-0.000263 * X[29]) + (0.0001 * X[38])))))));
    F[28]=((0.048 * (X[6] * X[27])) + ((-0.00975 * X[28]) + (0.5 * (X[45] * X[24]))));
    F[27]=((0.5 * (X[26] * X[24])) + ((-0.0005225 * X[27]) + ((0.0052 * X[37]) + ((-0.048 * (X[6] * X[27])) + (0.00175 * X[28])))));
    F[26]=((0.00408 * X[41]) + ((-0.5 * (X[26] * X[24])) + ((0.0005 * X[27]) + ((-0.006 * (X[6] * X[26])) + ((0.00175 * X[45]) + ((-0.000263 * X[26]) + (0.0001 * X[36])))))));
    F[25]=((0.185 * (X[6] * X[23])) + ((-0.0334 * X[25]) + (0.5 * (X[43] * X[24]))));
    F[24]=((0.0209 * X[25]) + ((0.008 * X[28]) + ((0.0115 * X[31]) + ((2.25e-05 * (X[23] + (X[27] + X[30]))) + ((-0.5 * (X[21] * X[24])) + ((0.0005 * X[23]) + ((-0.5 * (X[26] * X[24])) + ((0.0005 * X[27]) + ((-0.5 * (X[29] * X[24])) + ((0.0005 * X[30]) + ((-0.09 * X[24]) + ((8.000000000000001e-05 * X[32]) + (-0.5 * (X[24] * (X[43] + (X[45] + X[46]))))))))))))))));
    F[23]=((0.5 * (X[21] * X[24])) + ((-0.0005225 * X[23]) + ((0.0138 * X[35]) + ((-0.185 * (X[6] * X[23])) + (0.0125 * X[25])))));
    F[21]=((0.00408 * X[40]) + ((-0.5 * (X[21] * X[24])) + ((0.0005 * X[23]) + ((-0.0225 * (X[6] * X[21])) + ((0.00125 * X[43]) + ((-0.000413 * X[21]) + (0.0002 * X[34])))))));
    F[20]=(0.1 * ((X[16] * (X[17] * (X[19] * (X[18] * X[7])))) - X[20]));
    F[19]=0.0;
    F[18]=0.0;
    F[17]=0.0;
    F[16]=((0.02 * pow(X[13],2.0)) + ((0.001 * (X[14] + pow(X[32],2.0))) + (-0.1 * (X[16] + ((X[16] * (X[17] * (X[19] * (X[18] * X[7])))) - X[20])))));
    F[14]=0.0;
    F[13]=(0.1 * (X[12] - X[13]));
    F[12]=(function_2(0.1,X[47],X[10],0.1) + (-0.1 * ((2.0 * X[12]) - X[13])));
    F[10]=((0.1 * X[12]) - function_2(0.1,X[47],X[10],0.1));
    F[9]=0.0;
    F[8]=0.0;
    F[7]=0.0;
    F[6]=(function_2(0.1,X[4],X[5],0.1) + (function_2(0.1,X[20],X[5],0.1) + ((0.0329 * X[25]) + ((0.00925 * X[28]) + ((0.01275 * X[31]) + ((0.00532 * X[43]) + ((0.00325 * X[45]) + ((0.00395 * X[46]) + ((X[6] * (-0.1 + ((-0.185 * X[23]) + ((-0.048 * X[27]) + ((-0.07000000000000001 * X[30]) + ((-0.0225 * X[21]) + (-0.006 * X[26]))))))) + (-0.008999999999999999 * (X[6] * X[29])))))))))));
    F[5]=((0.1 * X[6]) + ((-(function_2(0.1,X[4],X[5],0.1))) - function_2(0.1,X[20],X[5],0.1)));
    F[4]=((0.003 * (X[2] * X[3])) + (-0.01 * X[4]));
    F[3]=0.0;
    F[2]=(function_1(0.001,X[44],X[52],X[1],0.001,X[2]) + ((-0.003 * (X[2] * X[3])) + (0.01 * X[4])));
    F[1]=0.0;
    F[52]=(-(function_1(0.001,X[44],X[52],X[1],0.001,X[2])));
    F[51]=0.0;
    F[50]=0.0;
    F[49]=0.0;
    F[44]=(0.0001 * ((X[33] * (X[22] * (X[0] * (X[51] * (X[49] * (X[11] * X[50])))))) - X[44]));
    F[33]=0.0;
    F[22]=0.0;
    F[11]=0.0;
    F[0]=0.0;

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
    X[0]=1.0; //species_1
    X[1]=1.0; //species_10
    X[2]=0.0; //species_11
    X[3]=1.0; //species_12
    X[4]=0.0; //species_13
    X[5]=0.1; //species_14
    X[6]=0.0; //species_15
    X[7]=1.0; //species_16
    X[8]=1.0; //species_17
    X[9]=1.0; //species_18
    X[10]=1.0; //species_19
    X[11]=1.0; //species_2
    X[12]=0.0; //species_20
    X[13]=0.0; //species_21
    X[14]=1.0; //species_22
    X[15]=0.0; //species_23
    X[16]=0.0; //species_24
    X[17]=1.0; //species_25
    X[18]=1.0; //species_26
    X[19]=1.0; //species_27
    X[20]=0.0; //species_28
    X[21]=0.0; //species_29
    X[22]=1.0; //species_3
    X[23]=0.0; //species_30
    X[24]=0.1; //species_31
    X[25]=0.0; //species_32
    X[26]=0.0; //species_33
    X[27]=0.0; //species_34
    X[28]=0.0; //species_35
    X[29]=0.0; //species_36
    X[30]=0.0; //species_37
    X[31]=0.0; //species_38
    X[32]=0.0; //species_39
    X[33]=1.0; //species_4
    X[34]=0.0; //species_40
    X[35]=0.0; //species_41
    X[36]=0.0; //species_42
    X[37]=0.0; //species_43
    X[38]=0.0; //species_44
    X[39]=0.0; //species_45
    X[40]=0.0; //species_46
    X[41]=0.0; //species_47
    X[42]=0.0; //species_48
    X[43]=0.0; //species_49
    X[44]=0.0; //species_5
    X[45]=0.0; //species_50
    X[46]=0.0; //species_51
    X[47]=0.0; //species_52
    X[48]=1.0; //species_53
    X[49]=1.0; //species_6
    X[50]=1.0; //species_7
    X[51]=1.0; //species_8
    X[52]=1.0; //species_9

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
