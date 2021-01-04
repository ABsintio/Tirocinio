
#ifndef COUNTERCURRENTHEATEXCHANGEREQUATIONS_N_20_PERTHREAD_SYSTEMDEFINITION_H
#define COUNTERCURRENTHEATEXCHANGEREQUATIONS_N_20_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[41]=310.0;
    ACC[40]=(T < 8.0 ? 300.0 : 301.0);
    ACC[0]=(0.5263157894736842 * ((X[38] + (-0.5 * (ACC[40] + X[0]))) * (sPAR[6] * sPAR[9])));
    ACC[37]=(0.5263157894736842 * (((0.5 * (310.0 + X[37])) - X[56]) * (sPAR[7] * sPAR[9])));
    ACC[42]=(T < 15.0 ? 1.0 : 1.1);
    ACC[1]=(0.5263157894736842 * ((X[39] + (-0.5 * (X[0] + X[1]))) * (sPAR[6] * sPAR[9])));
    ACC[36]=(0.5263157894736842 * (((0.5 * (X[37] + X[36])) - X[55]) * (sPAR[7] * sPAR[9])));
    ACC[2]=(0.5263157894736842 * ((X[40] + (-0.5 * (X[1] + X[2]))) * (sPAR[6] * sPAR[9])));
    ACC[35]=(0.5263157894736842 * (((0.5 * (X[36] + X[35])) - X[54]) * (sPAR[7] * sPAR[9])));
    ACC[3]=(0.5263157894736842 * ((X[41] + (-0.5 * (X[2] + X[3]))) * (sPAR[6] * sPAR[9])));
    ACC[34]=(0.5263157894736842 * (((0.5 * (X[35] + X[34])) - X[53]) * (sPAR[7] * sPAR[9])));
    ACC[4]=(0.5263157894736842 * ((X[42] + (-0.5 * (X[3] + X[4]))) * (sPAR[6] * sPAR[9])));
    ACC[33]=(0.5263157894736842 * (((0.5 * (X[34] + X[33])) - X[52]) * (sPAR[7] * sPAR[9])));
    ACC[5]=(0.5263157894736842 * ((X[43] + (-0.5 * (X[4] + X[5]))) * (sPAR[6] * sPAR[9])));
    ACC[32]=(0.5263157894736842 * (((0.5 * (X[33] + X[32])) - X[51]) * (sPAR[7] * sPAR[9])));
    ACC[6]=(0.5263157894736842 * ((X[44] + (-0.5 * (X[5] + X[6]))) * (sPAR[6] * sPAR[9])));
    ACC[31]=(0.5263157894736842 * (((0.5 * (X[32] + X[31])) - X[50]) * (sPAR[7] * sPAR[9])));
    ACC[7]=(0.5263157894736842 * ((X[45] + (-0.5 * (X[6] + X[7]))) * (sPAR[6] * sPAR[9])));
    ACC[30]=(0.5263157894736842 * (((0.5 * (X[31] + X[30])) - X[49]) * (sPAR[7] * sPAR[9])));
    ACC[8]=(0.5263157894736842 * ((X[46] + (-0.5 * (X[7] + X[8]))) * (sPAR[6] * sPAR[9])));
    ACC[29]=(0.5263157894736842 * (((0.5 * (X[30] + X[29])) - X[48]) * (sPAR[7] * sPAR[9])));
    ACC[9]=(0.5263157894736842 * ((X[47] + (-0.5 * (X[8] + X[9]))) * (sPAR[6] * sPAR[9])));
    ACC[28]=(0.5263157894736842 * (((0.5 * (X[29] + X[28])) - X[47]) * (sPAR[7] * sPAR[9])));
    ACC[10]=(0.5263157894736842 * ((X[48] + (-0.5 * (X[9] + X[10]))) * (sPAR[6] * sPAR[9])));
    ACC[27]=(0.5263157894736842 * (((0.5 * (X[28] + X[27])) - X[46]) * (sPAR[7] * sPAR[9])));
    ACC[11]=(0.5263157894736842 * ((X[49] + (-0.5 * (X[10] + X[11]))) * (sPAR[6] * sPAR[9])));
    ACC[26]=(0.5263157894736842 * (((0.5 * (X[27] + X[26])) - X[45]) * (sPAR[7] * sPAR[9])));
    ACC[12]=(0.5263157894736842 * ((X[50] + (-0.5 * (X[11] + X[12]))) * (sPAR[6] * sPAR[9])));
    ACC[25]=(0.5263157894736842 * (((0.5 * (X[26] + X[25])) - X[44]) * (sPAR[7] * sPAR[9])));
    ACC[13]=(0.5263157894736842 * ((X[51] + (-0.5 * (X[12] + X[13]))) * (sPAR[6] * sPAR[9])));
    ACC[24]=(0.5263157894736842 * (((0.5 * (X[25] + X[24])) - X[43]) * (sPAR[7] * sPAR[9])));
    ACC[14]=(0.5263157894736842 * ((X[52] + (-0.5 * (X[13] + X[14]))) * (sPAR[6] * sPAR[9])));
    ACC[23]=(0.5263157894736842 * (((0.5 * (X[24] + X[23])) - X[42]) * (sPAR[7] * sPAR[9])));
    ACC[15]=(0.5263157894736842 * ((X[53] + (-0.5 * (X[14] + X[15]))) * (sPAR[6] * sPAR[9])));
    ACC[22]=(0.5263157894736842 * (((0.5 * (X[23] + X[22])) - X[41]) * (sPAR[7] * sPAR[9])));
    ACC[16]=(0.5263157894736842 * ((X[54] + (-0.5 * (X[15] + X[16]))) * (sPAR[6] * sPAR[9])));
    ACC[21]=(0.5263157894736842 * (((0.5 * (X[22] + X[21])) - X[40]) * (sPAR[7] * sPAR[9])));
    ACC[17]=(0.5263157894736842 * ((X[55] + (-0.5 * (X[16] + X[17]))) * (sPAR[6] * sPAR[9])));
    ACC[20]=(0.5263157894736842 * (((0.5 * (X[21] + X[20])) - X[39]) * (sPAR[7] * sPAR[9])));
    ACC[18]=(0.5263157894736842 * ((X[56] + (-0.5 * (X[17] + X[18]))) * (sPAR[6] * sPAR[9])));
    ACC[38]=(ACC[0] + (ACC[1] + (ACC[2] + (ACC[3] + (ACC[4] + (ACC[5] + (ACC[6] + (ACC[7] + (ACC[8] + (ACC[9] + (ACC[10] + (ACC[11] + (ACC[12] + (ACC[13] + (ACC[14] + (ACC[15] + (ACC[16] + (ACC[17] + ACC[18]))))))))))))))))));
    ACC[19]=(0.5263157894736842 * (((0.5 * (X[20] + X[19])) - X[38]) * (sPAR[7] * sPAR[9])));
    ACC[39]=(ACC[19] + (ACC[20] + (ACC[21] + (ACC[22] + (ACC[23] + (ACC[24] + (ACC[25] + (ACC[26] + (ACC[27] + (ACC[28] + (ACC[29] + (ACC[30] + (ACC[31] + (ACC[32] + (ACC[33] + (ACC[34] + (ACC[35] + (ACC[36] + ACC[37]))))))))))))))))));
    F[37]=(((sPAR[12] * (sPAR[4] * (310.0 - X[37]))) - ACC[37]) / (((0.5263157894736842 * sPAR[11]) * sPAR[2]) * sPAR[4]));
    F[0]=(((ACC[42] * (sPAR[3] * (ACC[40] - X[0]))) + ACC[0]) / (((0.5263157894736842 * sPAR[10]) * sPAR[1]) * sPAR[3]));
    F[1]=(((ACC[42] * (sPAR[3] * (X[0] - X[1]))) + ACC[1]) / (((0.5263157894736842 * sPAR[10]) * sPAR[1]) * sPAR[3]));
    F[36]=(((sPAR[12] * (sPAR[4] * (X[37] - X[36]))) - ACC[36]) / (((0.5263157894736842 * sPAR[11]) * sPAR[2]) * sPAR[4]));
    F[2]=(((ACC[42] * (sPAR[3] * (X[1] - X[2]))) + ACC[2]) / (((0.5263157894736842 * sPAR[10]) * sPAR[1]) * sPAR[3]));
    F[35]=(((sPAR[12] * (sPAR[4] * (X[36] - X[35]))) - ACC[35]) / (((0.5263157894736842 * sPAR[11]) * sPAR[2]) * sPAR[4]));
    F[3]=(((ACC[42] * (sPAR[3] * (X[2] - X[3]))) + ACC[3]) / (((0.5263157894736842 * sPAR[10]) * sPAR[1]) * sPAR[3]));
    F[34]=(((sPAR[12] * (sPAR[4] * (X[35] - X[34]))) - ACC[34]) / (((0.5263157894736842 * sPAR[11]) * sPAR[2]) * sPAR[4]));
    F[4]=(((ACC[42] * (sPAR[3] * (X[3] - X[4]))) + ACC[4]) / (((0.5263157894736842 * sPAR[10]) * sPAR[1]) * sPAR[3]));
    F[33]=(((sPAR[12] * (sPAR[4] * (X[34] - X[33]))) - ACC[33]) / (((0.5263157894736842 * sPAR[11]) * sPAR[2]) * sPAR[4]));
    F[5]=(((ACC[42] * (sPAR[3] * (X[4] - X[5]))) + ACC[5]) / (((0.5263157894736842 * sPAR[10]) * sPAR[1]) * sPAR[3]));
    F[32]=(((sPAR[12] * (sPAR[4] * (X[33] - X[32]))) - ACC[32]) / (((0.5263157894736842 * sPAR[11]) * sPAR[2]) * sPAR[4]));
    F[6]=(((ACC[42] * (sPAR[3] * (X[5] - X[6]))) + ACC[6]) / (((0.5263157894736842 * sPAR[10]) * sPAR[1]) * sPAR[3]));
    F[31]=(((sPAR[12] * (sPAR[4] * (X[32] - X[31]))) - ACC[31]) / (((0.5263157894736842 * sPAR[11]) * sPAR[2]) * sPAR[4]));
    F[7]=(((ACC[42] * (sPAR[3] * (X[6] - X[7]))) + ACC[7]) / (((0.5263157894736842 * sPAR[10]) * sPAR[1]) * sPAR[3]));
    F[30]=(((sPAR[12] * (sPAR[4] * (X[31] - X[30]))) - ACC[30]) / (((0.5263157894736842 * sPAR[11]) * sPAR[2]) * sPAR[4]));
    F[8]=(((ACC[42] * (sPAR[3] * (X[7] - X[8]))) + ACC[8]) / (((0.5263157894736842 * sPAR[10]) * sPAR[1]) * sPAR[3]));
    F[29]=(((sPAR[12] * (sPAR[4] * (X[30] - X[29]))) - ACC[29]) / (((0.5263157894736842 * sPAR[11]) * sPAR[2]) * sPAR[4]));
    F[9]=(((ACC[42] * (sPAR[3] * (X[8] - X[9]))) + ACC[9]) / (((0.5263157894736842 * sPAR[10]) * sPAR[1]) * sPAR[3]));
    F[47]=((19.0 * (ACC[28] - ACC[9])) / sPAR[5]);
    F[28]=(((sPAR[12] * (sPAR[4] * (X[29] - X[28]))) - ACC[28]) / (((0.5263157894736842 * sPAR[11]) * sPAR[2]) * sPAR[4]));
    F[48]=((19.0 * (ACC[29] - ACC[10])) / sPAR[5]);
    F[10]=(((ACC[42] * (sPAR[3] * (X[9] - X[10]))) + ACC[10]) / (((0.5263157894736842 * sPAR[10]) * sPAR[1]) * sPAR[3]));
    F[27]=(((sPAR[12] * (sPAR[4] * (X[28] - X[27]))) - ACC[27]) / (((0.5263157894736842 * sPAR[11]) * sPAR[2]) * sPAR[4]));
    F[46]=((19.0 * (ACC[27] - ACC[8])) / sPAR[5]);
    F[49]=((19.0 * (ACC[30] - ACC[11])) / sPAR[5]);
    F[11]=(((ACC[42] * (sPAR[3] * (X[10] - X[11]))) + ACC[11]) / (((0.5263157894736842 * sPAR[10]) * sPAR[1]) * sPAR[3]));
    F[26]=(((sPAR[12] * (sPAR[4] * (X[27] - X[26]))) - ACC[26]) / (((0.5263157894736842 * sPAR[11]) * sPAR[2]) * sPAR[4]));
    F[45]=((19.0 * (ACC[26] - ACC[7])) / sPAR[5]);
    F[50]=((19.0 * (ACC[31] - ACC[12])) / sPAR[5]);
    F[12]=(((ACC[42] * (sPAR[3] * (X[11] - X[12]))) + ACC[12]) / (((0.5263157894736842 * sPAR[10]) * sPAR[1]) * sPAR[3]));
    F[25]=(((sPAR[12] * (sPAR[4] * (X[26] - X[25]))) - ACC[25]) / (((0.5263157894736842 * sPAR[11]) * sPAR[2]) * sPAR[4]));
    F[44]=((19.0 * (ACC[25] - ACC[6])) / sPAR[5]);
    F[51]=((19.0 * (ACC[32] - ACC[13])) / sPAR[5]);
    F[13]=(((ACC[42] * (sPAR[3] * (X[12] - X[13]))) + ACC[13]) / (((0.5263157894736842 * sPAR[10]) * sPAR[1]) * sPAR[3]));
    F[24]=(((sPAR[12] * (sPAR[4] * (X[25] - X[24]))) - ACC[24]) / (((0.5263157894736842 * sPAR[11]) * sPAR[2]) * sPAR[4]));
    F[43]=((19.0 * (ACC[24] - ACC[5])) / sPAR[5]);
    F[52]=((19.0 * (ACC[33] - ACC[14])) / sPAR[5]);
    F[14]=(((ACC[42] * (sPAR[3] * (X[13] - X[14]))) + ACC[14]) / (((0.5263157894736842 * sPAR[10]) * sPAR[1]) * sPAR[3]));
    F[23]=(((sPAR[12] * (sPAR[4] * (X[24] - X[23]))) - ACC[23]) / (((0.5263157894736842 * sPAR[11]) * sPAR[2]) * sPAR[4]));
    F[42]=((19.0 * (ACC[23] - ACC[4])) / sPAR[5]);
    F[53]=((19.0 * (ACC[34] - ACC[15])) / sPAR[5]);
    F[15]=(((ACC[42] * (sPAR[3] * (X[14] - X[15]))) + ACC[15]) / (((0.5263157894736842 * sPAR[10]) * sPAR[1]) * sPAR[3]));
    F[22]=(((sPAR[12] * (sPAR[4] * (X[23] - X[22]))) - ACC[22]) / (((0.5263157894736842 * sPAR[11]) * sPAR[2]) * sPAR[4]));
    F[41]=((19.0 * (ACC[22] - ACC[3])) / sPAR[5]);
    F[54]=((19.0 * (ACC[35] - ACC[16])) / sPAR[5]);
    F[16]=(((ACC[42] * (sPAR[3] * (X[15] - X[16]))) + ACC[16]) / (((0.5263157894736842 * sPAR[10]) * sPAR[1]) * sPAR[3]));
    F[21]=(((sPAR[12] * (sPAR[4] * (X[22] - X[21]))) - ACC[21]) / (((0.5263157894736842 * sPAR[11]) * sPAR[2]) * sPAR[4]));
    F[40]=((19.0 * (ACC[21] - ACC[2])) / sPAR[5]);
    F[55]=((19.0 * (ACC[36] - ACC[17])) / sPAR[5]);
    F[17]=(((ACC[42] * (sPAR[3] * (X[16] - X[17]))) + ACC[17]) / (((0.5263157894736842 * sPAR[10]) * sPAR[1]) * sPAR[3]));
    F[20]=(((sPAR[12] * (sPAR[4] * (X[21] - X[20]))) - ACC[20]) / (((0.5263157894736842 * sPAR[11]) * sPAR[2]) * sPAR[4]));
    F[39]=((19.0 * (ACC[20] - ACC[1])) / sPAR[5]);
    F[18]=(((ACC[42] * (sPAR[3] * (X[17] - X[18]))) + ACC[18]) / (((0.5263157894736842 * sPAR[10]) * sPAR[1]) * sPAR[3]));
    F[56]=((19.0 * (ACC[37] - ACC[18])) / sPAR[5]);
    F[19]=(((sPAR[12] * (sPAR[4] * (X[20] - X[19]))) - ACC[19]) / (((0.5263157894736842 * sPAR[11]) * sPAR[2]) * sPAR[4]));
    F[38]=((19.0 * (ACC[19] - ACC[0])) / sPAR[5]);

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
    ACC[0]=0.0; //QA[1]
    ACC[1]=0.0; //QA[2]
    ACC[2]=0.0; //QA[3]
    ACC[3]=0.0; //QA[4]
    ACC[4]=0.0; //QA[5]
    ACC[5]=0.0; //QA[6]
    ACC[6]=0.0; //QA[7]
    ACC[7]=0.0; //QA[8]
    ACC[8]=0.0; //QA[9]
    ACC[9]=0.0; //QA[10]
    ACC[10]=0.0; //QA[11]
    ACC[11]=0.0; //QA[12]
    ACC[12]=0.0; //QA[13]
    ACC[13]=0.0; //QA[14]
    ACC[14]=0.0; //QA[15]
    ACC[15]=0.0; //QA[16]
    ACC[16]=0.0; //QA[17]
    ACC[17]=0.0; //QA[18]
    ACC[18]=0.0; //QA[19]
    ACC[19]=0.0; //QB[1]
    ACC[20]=0.0; //QB[2]
    ACC[21]=0.0; //QB[3]
    ACC[22]=0.0; //QB[4]
    ACC[23]=0.0; //QB[5]
    ACC[24]=0.0; //QB[6]
    ACC[25]=0.0; //QB[7]
    ACC[26]=0.0; //QB[8]
    ACC[27]=0.0; //QB[9]
    ACC[28]=0.0; //QB[10]
    ACC[29]=0.0; //QB[11]
    ACC[30]=0.0; //QB[12]
    ACC[31]=0.0; //QB[13]
    ACC[32]=0.0; //QB[14]
    ACC[33]=0.0; //QB[15]
    ACC[34]=0.0; //QB[16]
    ACC[35]=0.0; //QB[17]
    ACC[36]=0.0; //QB[18]
    ACC[41]=310.0; //TB[20]
    X[37]=300.0; //TB[19]
    X[56]=300.0; //TW[19]
    sPAR[7]=10000.0; //gammaB
    sPAR[9]=0.1; //omega
    ACC[37]=(0.5263157894736842 * (((0.5 * (ACC[41] + X[37])) - X[56]) * (sPAR[7] * sPAR[9]))); //QB[19]
    ACC[38]=0.0; //QtotA
    ACC[39]=0.0; //QtotB
    ACC[40]=300.0; //TA[1]
    ACC[42]=1.0; //wA
    sPAR[0]=10.0; //L
    sPAR[1]=5e-05; //areaA
    sPAR[2]=5e-05; //areaB
    sPAR[3]=4200.0; //cpA
    sPAR[4]=4200.0; //cpB
    sPAR[5]=2000.0; //cpW
    sPAR[6]=4000.0; //gammaA
    sPAR[8]=0.5263157894736842; //l
    sPAR[10]=1000.0; //rhoA
    sPAR[11]=1000.0; //rhoB
    sPAR[12]=1.0; //wB
    sPARi[0]=20; //N
    X[0]=300.0; //TA[2]
    X[1]=300.0; //TA[3]
    X[2]=300.0; //TA[4]
    X[3]=300.0; //TA[5]
    X[4]=300.0; //TA[6]
    X[5]=300.0; //TA[7]
    X[6]=300.0; //TA[8]
    X[7]=300.0; //TA[9]
    X[8]=300.0; //TA[10]
    X[9]=300.0; //TA[11]
    X[10]=300.0; //TA[12]
    X[11]=300.0; //TA[13]
    X[12]=300.0; //TA[14]
    X[13]=300.0; //TA[15]
    X[14]=300.0; //TA[16]
    X[15]=300.0; //TA[17]
    X[16]=300.0; //TA[18]
    X[17]=300.0; //TA[19]
    X[18]=300.0; //TA[20]
    X[19]=300.0; //TB[1]
    X[20]=300.0; //TB[2]
    X[21]=300.0; //TB[3]
    X[22]=300.0; //TB[4]
    X[23]=300.0; //TB[5]
    X[24]=300.0; //TB[6]
    X[25]=300.0; //TB[7]
    X[26]=300.0; //TB[8]
    X[27]=300.0; //TB[9]
    X[28]=300.0; //TB[10]
    X[29]=300.0; //TB[11]
    X[30]=300.0; //TB[12]
    X[31]=300.0; //TB[13]
    X[32]=300.0; //TB[14]
    X[33]=300.0; //TB[15]
    X[34]=300.0; //TB[16]
    X[35]=300.0; //TB[17]
    X[36]=300.0; //TB[18]
    X[38]=300.0; //TW[1]
    X[39]=300.0; //TW[2]
    X[40]=300.0; //TW[3]
    X[41]=300.0; //TW[4]
    X[42]=300.0; //TW[5]
    X[43]=300.0; //TW[6]
    X[44]=300.0; //TW[7]
    X[45]=300.0; //TW[8]
    X[46]=300.0; //TW[9]
    X[47]=300.0; //TW[10]
    X[48]=300.0; //TW[11]
    X[49]=300.0; //TW[12]
    X[50]=300.0; //TW[13]
    X[51]=300.0; //TW[14]
    X[52]=300.0; //TW[15]
    X[53]=300.0; //TW[16]
    X[54]=300.0; //TW[17]
    X[55]=300.0; //TW[18]

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
