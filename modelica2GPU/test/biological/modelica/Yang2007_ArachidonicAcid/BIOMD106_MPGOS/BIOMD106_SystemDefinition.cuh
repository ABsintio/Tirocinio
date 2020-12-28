
#ifndef BIOMD106_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD106_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[17]=0.0;
    F[24]=((sPAR[34] * (X[23] * sPAR[17])) - (sPAR[35] * (X[24] * sPAR[17])));
    F[23]=(sPAR[17] * ((sPAR[5] * (X[12] * (X[21] / (X[21] + (sPAR[23] * (1.0 + (X[23] / sPAR[53]))))))) - (sPAR[34] * X[23])));
    F[22]=(sPAR[17] * (sPAR[4] * (X[10] * (X[21] / (X[21] + (sPAR[22] * (1.0 + ((X[0] / sPAR[36]) + ((X[18] / sPAR[45]) + (X[22] / sPAR[53]))))))))));
    F[21]=(sPAR[17] * ((sPAR[3] * (X[9] * (X[0] / (X[0] + (sPAR[21] * (1.0 + ((X[22] / sPAR[46]) + (X[21] / sPAR[53])))))))) + (((-(sPAR[4])) * (X[10] * (X[21] / (X[21] + (sPAR[22] * (1.0 + ((X[0] / sPAR[36]) + ((X[18] / sPAR[45]) + (X[22] / sPAR[53]))))))))) - (sPAR[5] * (X[12] * (X[21] / (X[21] + (sPAR[23] * (1.0 + (X[23] / sPAR[53]))))))))));
    F[20]=(sPAR[17] * (sPAR[9] * (X[16] * (X[19] / (X[19] + (sPAR[27] * (1.0 + (X[20] / sPAR[53]))))))));
    F[19]=(sPAR[17] * ((sPAR[2] * (X[8] * (X[0] / (X[0] + (sPAR[20] * (1.0 + ((X[19] / sPAR[44]) + ((X[18] / sPAR[42]) + (X[19] / sPAR[53]))))))))) - (sPAR[9] * (X[16] * (X[19] / (X[19] + (sPAR[27] * (1.0 + (X[20] / sPAR[53])))))))));
    F[18]=((sPAR[17] * (sPAR[9] * (X[16] * (X[11] / (X[11] + (sPAR[27] * (1.0 + (X[18] / sPAR[53])))))))) - (sPAR[33] * (X[18] * sPAR[17])));
    F[16]=0.0;
    F[15]=0.0;
    F[14]=(-0.007751937984496124 * (sPAR[17] * (sPAR[7] * (X[14] * (X[3] / (X[3] + sPAR[25]))))));
    F[13]=(sPAR[17] * ((sPAR[14] * (X[4] * X[13])) + ((((-(sPAR[52])) * (X[3] * X[13])) - (sPAR[37] * (X[1] * X[13]))) - (sPAR[49] * (X[13] * X[11])))));
    F[12]=(((-(sPAR[47])) * (X[11] * (X[12] * sPAR[17]))) - (sPAR[17] * (sPAR[48] * (X[21] * X[12]))));
    F[11]=((sPAR[17] * ((sPAR[1] * (X[7] * (X[0] / (X[0] + (sPAR[19] * (1.0 + (X[11] / sPAR[53]))))))) - (sPAR[9] * (X[16] * (X[11] / (X[11] + (sPAR[27] * (1.0 + (X[18] / sPAR[53]))))))))) - (sPAR[32] * (sPAR[17] * X[11])));
    F[10]=0.0;
    F[9]=0.0;
    F[8]=((-(sPAR[17])) * (sPAR[43] * (X[11] * X[8])));
    F[7]=(sPAR[17] * ((sPAR[16] * (pow(X[22],2.0) / (pow(X[22],2.0) + pow(sPAR[15],2.0)))) - (sPAR[31] * X[7])));
    F[6]=0.0;
    F[5]=(sPAR[17] * (sPAR[8] * (X[15] * (X[4] / (X[4] + (sPAR[26] * (1.0 + ((X[20] / sPAR[40]) + ((X[2] / sPAR[41]) + (X[5] / sPAR[53]))))))))));
    F[4]=(sPAR[17] * ((sPAR[7] * (X[14] * (X[3] / (X[3] + (sPAR[25] * (1.0 + (X[4] / sPAR[53]))))))) + (((-(sPAR[8])) * (X[15] * (X[4] / (X[4] + (sPAR[26] * (1.0 + ((X[20] / sPAR[40]) + ((X[2] / sPAR[41]) + (X[5] / sPAR[53]))))))))) - (sPAR[30] * X[4]))));
    F[3]=(sPAR[17] * ((sPAR[6] * (X[13] * (X[1] / (X[1] + (sPAR[24] * (1.0 + ((X[20] / sPAR[50]) + ((X[18] / sPAR[51]) + ((X[22] / sPAR[38]) + ((X[2] / sPAR[39]) + (X[3] / sPAR[53]))))))))))) + (((-(sPAR[7])) * (X[14] * (X[3] / (X[3] + (sPAR[25] * (1.0 + (X[4] / sPAR[53]))))))) - (X[3] * sPAR[29]))));
    F[2]=((sPAR[17] * (sPAR[9] * (X[16] * (X[1] / (X[1] + (sPAR[27] * (1.0 + (X[2] / sPAR[53])))))))) - (sPAR[28] * (X[2] * sPAR[17])));
    F[1]=(sPAR[17] * ((sPAR[6] * (X[13] * (X[0] / (X[0] + (sPAR[24] * (1.0 + ((X[20] / sPAR[50]) + ((X[18] / sPAR[51]) + ((X[22] / sPAR[38]) + ((X[2] / sPAR[39]) + (X[1] / sPAR[53]))))))))))) + (((-(sPAR[9])) * (X[16] * (X[1] / (X[1] + (sPAR[27] * (1.0 + (X[2] / sPAR[53]))))))) - (sPAR[6] * (X[13] * (X[1] / (X[1] + (sPAR[24] * (1.0 + ((X[20] / sPAR[50]) + ((X[18] / sPAR[51]) + ((X[22] / sPAR[38]) + ((X[2] / sPAR[39]) + (X[3] / sPAR[53]))))))))))))));
    F[0]=((sPAR[17] * ((sPAR[0] * (X[6] * (sPAR[54] * ((1.0 + ((X[19] / sPAR[10]) + ((X[11] / sPAR[11]) + ((X[4] / sPAR[12]) + (X[2] / sPAR[13]))))) / (sPAR[54] + (sPAR[18] * (1.0 + (X[0] / sPAR[53])))))))) + (((((-(sPAR[2])) * (X[8] * (X[0] / (X[0] + (sPAR[20] * (1.0 + ((X[19] / sPAR[44]) + ((X[18] / sPAR[42]) + (X[19] / sPAR[53]))))))))) - (sPAR[3] * (X[9] * (X[0] / (X[0] + (sPAR[21] * (1.0 + ((X[22] / sPAR[46]) + (X[21] / sPAR[53]))))))))) - (sPAR[1] * (X[7] * (X[0] / (X[0] + (sPAR[19] * (1.0 + (X[11] / sPAR[53])))))))) - (sPAR[6] * (X[13] * (X[0] / (X[0] + (sPAR[24] * (1.0 + ((X[20] / sPAR[50]) + ((X[18] / sPAR[51]) + ((X[22] / sPAR[38]) + ((X[2] / sPAR[39]) + (X[1] / sPAR[53])))))))))))))) + (-0.1 * (X[0] * sPAR[17])));

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
    sPAR[0]=3600.0; //K15
    sPAR[1]=1000.0; //K16
    sPAR[2]=1000.0; //K17
    sPAR[3]=1000.0; //K18
    sPAR[4]=3000.0; //K19
    sPAR[5]=1599.0; //K20
    sPAR[6]=5000.0; //K21
    sPAR[7]=125.0; //K22
    sPAR[8]=150.0; //K23
    sPAR[9]=500.0; //K24
    sPAR[10]=500.0; //KI19
    sPAR[11]=200.0; //KI20
    sPAR[12]=500.0; //KI21
    sPAR[13]=500.0; //KI22
    sPAR[14]=0.053; //KI23
    sPAR[15]=2.3e-05; //KI24
    sPAR[16]=0.15; //a24
    sPAR[17]=1.0; //cell
    sPAR[18]=2600.0; //k15
    sPAR[19]=70.0; //k16
    sPAR[20]=50.0; //k17
    sPAR[21]=50.0; //k18
    sPAR[22]=160.0; //k19
    sPAR[23]=4.0; //k20
    sPAR[24]=5.0; //k21
    sPAR[25]=20.0; //k22
    sPAR[26]=3.9; //k23
    sPAR[27]=70.0; //k24
    sPAR[28]=0.001; //kd11
    sPAR[29]=0.07000000000000001; //kd12
    sPAR[30]=0.01; //kd13
    sPAR[31]=0.01; //kd16
    sPAR[32]=0.05; //kd2
    sPAR[33]=0.01; //kd3
    sPAR[34]=0.1; //kd8
    sPAR[35]=0.001; //kd9
    sPAR[36]=0.3; //ki1
    sPAR[37]=0.01; //ki10
    sPAR[38]=15.0; //ki11
    sPAR[39]=6.3; //ki12
    sPAR[40]=0.2; //ki14
    sPAR[41]=0.86; //ki15
    sPAR[42]=10.0; //ki16
    sPAR[43]=10.0; //ki17
    sPAR[44]=10.0; //ki18
    sPAR[45]=30.0; //ki2
    sPAR[46]=30.0; //ki3
    sPAR[47]=0.6; //ki4
    sPAR[48]=0.1; //ki5
    sPAR[49]=0.01; //ki6
    sPAR[50]=30.0; //ki7
    sPAR[51]=4.0; //ki8
    sPAR[52]=0.175; //ki9
    sPAR[53]=500.0; //ks
    sPAR[54]=12.0; //lin
    X[0]=0.001; //x1
    X[1]=0.001; //x10
    X[2]=0.001; //x11
    X[3]=0.001; //x12
    X[4]=0.001; //x13
    X[5]=0.001; //x14
    X[6]=1.5; //x15
    X[7]=1.5; //x16
    X[8]=0.5; //x17
    X[9]=0.2; //x18
    X[10]=0.5; //x19
    X[11]=0.001; //x2
    X[12]=0.5; //x20
    X[13]=5.0; //x21
    X[14]=0.76; //x22
    X[15]=0.07000000000000001; //x23
    X[16]=0.8; //x24
    X[17]=0.0; //x25
    X[18]=0.001; //x3
    X[19]=0.001; //x4
    X[20]=0.001; //x5
    X[21]=0.001; //x6
    X[22]=0.001; //x7
    X[23]=0.001; //x8
    X[24]=0.001; //x9

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
