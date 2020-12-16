
#ifndef BIOMD109_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD109_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[5]=(sPAR[25] + (sPAR[29] * (X[40] / (sPAR[33] + X[40]))));
    ACC[6]=(sPAR[26] + (sPAR[30] * (X[40] / (sPAR[34] + X[40]))));
    ACC[3]=(sPAR[23] + (sPAR[27] * (X[40] / (sPAR[31] + X[40]))));
    ACC[4]=(sPAR[24] + (sPAR[28] * (X[40] / (sPAR[32] + X[40]))));
    ACC[10]=(X[41] + X[8]);
    ACC[0]=(X[19] + X[22]);
    ACC[1]=(X[48] + X[49]);
    ACC[2]=(X[46] + X[47]);
    ACC[11]=(X[43] + (X[35] + (X[36] + (X[25] + (X[26] + (X[27] + (X[28] + (X[29] + X[30]))))))));
    ACC[7]=(X[37] + (X[10] + (X[12] + (X[17] + (X[22] + (X[27] + X[30]))))));
    ACC[9]=(X[39] + (X[16] + (X[19] + (X[26] + X[29]))));
    ACC[8]=(X[38] + (X[32] + X[36]));
    F[42]=0.0;
    F[49]=((sPAR[0] * ((sPAR[55] * X[21]) + ((sPAR[53] * X[24]) + (sPAR[52] * X[14])))) + (X[49] * (((-(sPAR[0])) * (sPAR[37] + sPAR[46])) - (sPAR[20] * sPAR[0]))));
    F[48]=((sPAR[20] * (X[49] * sPAR[0])) + (sPAR[0] * ((sPAR[55] * X[20]) + ((sPAR[53] * X[23]) + ((sPAR[52] * X[13]) + ((sPAR[46] * X[49]) - (sPAR[37] * X[48])))))));
    F[47]=((sPAR[0] * ((sPAR[54] * X[34]) + ((sPAR[47] * X[21]) + ((sPAR[39] * X[24]) + ((sPAR[38] * X[14]) + (sPAR[10] * (X[46] * X[40]))))))) + ((X[47] * (((-(sPAR[0])) * ((sPAR[11] * X[19]) + (sPAR[3] * X[22]))) - (sPAR[20] * sPAR[0]))) - (sPAR[0] * ((sPAR[2] * (X[46] * X[12])) + (sPAR[46] * X[47])))));
    F[46]=((sPAR[20] * (X[47] * sPAR[0])) + (sPAR[0] * ((sPAR[54] * X[33]) + ((sPAR[47] * X[20]) + ((sPAR[39] * X[23]) + ((sPAR[38] * X[13]) + ((sPAR[46] * X[47]) + (X[46] * (((((-(sPAR[2])) * X[12]) - (sPAR[10] * X[40])) - (sPAR[3] * X[22])) - (sPAR[11] * X[19]))))))))));
    F[45]=((sPAR[0] * ((sPAR[45] * X[34]) + ((sPAR[37] * X[49]) + (sPAR[10] * (X[44] * X[40]))))) + (X[45] * (((-(sPAR[0])) * ((sPAR[9] * X[32]) + sPAR[46])) - (sPAR[20] * sPAR[0]))));
    F[44]=((sPAR[20] * (X[45] * sPAR[0])) + (sPAR[0] * ((sPAR[45] * X[33]) + ((sPAR[37] * X[48]) + ((sPAR[46] * X[45]) + (X[44] * (((-(sPAR[9])) * X[32]) - (sPAR[10] * X[40]))))))));
    F[38]=((sPAR[0] * (sPAR[35] + (sPAR[43] * (X[32] + X[36])))) + (X[38] * (sPAR[0] * (((-(sPAR[7])) * (X[31] + X[35])) - sPAR[18]))));
    F[36]=((sPAR[7] * (X[35] * (X[38] * sPAR[0]))) + ((sPAR[14] * (X[32] * (X[43] * sPAR[0]))) + (((((-(sPAR[43])) - sPAR[22]) - sPAR[50]) - sPAR[18]) * (X[36] * sPAR[0]))));
    F[35]=((X[36] * (sPAR[0] * (sPAR[18] + sPAR[43]))) + ((sPAR[14] * (X[31] * (X[43] * sPAR[0]))) + ((X[35] * (((-(sPAR[22])) * sPAR[0]) - (sPAR[7] * (X[38] * sPAR[0])))) - (sPAR[50] * (X[35] * sPAR[0])))));
    F[34]=(sPAR[0] * ((sPAR[9] * (X[45] * X[32])) + (((-(sPAR[45])) - sPAR[54]) * X[34])));
    F[33]=(sPAR[0] * ((sPAR[9] * (X[44] * X[32])) + (((-(sPAR[45])) - sPAR[54]) * X[33])));
    F[32]=((sPAR[22] * (X[36] * sPAR[0])) + ((sPAR[7] * (X[31] * (X[38] * sPAR[0]))) + ((sPAR[50] * (X[36] * sPAR[0])) + ((sPAR[0] * ((sPAR[45] + sPAR[54]) * (X[33] + X[34]))) + ((X[32] * ((((-(sPAR[18])) - sPAR[43]) * sPAR[0]) - (sPAR[14] * (X[43] * sPAR[0])))) - (sPAR[0] * (sPAR[9] * (X[32] * (X[44] + X[45])))))))));
    F[31]=((sPAR[18] * (X[32] * sPAR[0])) + ((sPAR[22] * (X[35] * sPAR[0])) + ((sPAR[43] * (X[32] * sPAR[0])) + ((sPAR[50] * (X[35] * sPAR[0])) + (X[31] * (((-(sPAR[7])) * (X[38] * sPAR[0])) - (sPAR[14] * (X[43] * sPAR[0]))))))));
    F[30]=((sPAR[13] * (X[22] * (X[43] * sPAR[0]))) + ((X[42] * (X[27] * sPAR[0])) + ((sPAR[0] * ((sPAR[6] * (X[28] * X[37])) + (sPAR[40] * X[6]))) + (X[30] * (((((-(sPAR[17])) - sPAR[49]) - sPAR[22]) * sPAR[0]) - (sPAR[0] * (sPAR[42] + (sPAR[4] * X[0]))))))));
    F[29]=((sPAR[13] * (X[19] * (X[43] * sPAR[0]))) + ((X[42] * (X[26] * sPAR[0])) + ((sPAR[8] * (X[28] * (X[39] * sPAR[0]))) + (((((-(sPAR[49])) - sPAR[19]) - sPAR[44]) - sPAR[16]) * (X[29] * sPAR[0])))));
    F[28]=((sPAR[19] * (X[29] * sPAR[0])) + ((sPAR[17] * (X[30] * sPAR[0])) + ((sPAR[13] * (X[18] * (X[43] * sPAR[0]))) + ((X[42] * (X[25] * sPAR[0])) + ((sPAR[44] * (X[29] * sPAR[0])) + ((sPAR[0] * ((sPAR[42] * X[30]) + (sPAR[51] * X[6]))) + ((X[28] * ((((-(sPAR[22])) - sPAR[49]) * sPAR[0]) - (sPAR[8] * (X[39] * sPAR[0])))) - (sPAR[0] * (sPAR[6] * (X[28] * X[37]))))))))));
    F[27]=((sPAR[13] * (X[17] * (X[43] * sPAR[0]))) + ((sPAR[6] * (X[25] * (X[37] * sPAR[0]))) + ((sPAR[0] * (sPAR[40] * X[5])) + (X[27] * ((((((-(sPAR[17])) - sPAR[49]) - sPAR[22]) - X[42]) * sPAR[0]) - (sPAR[0] * (sPAR[42] + (sPAR[4] * X[0]))))))));
    F[26]=((sPAR[13] * (X[16] * (X[43] * sPAR[0]))) + ((sPAR[8] * (X[25] * (X[39] * sPAR[0]))) + ((((((-(X[42])) - sPAR[22]) - sPAR[49]) - sPAR[44]) - sPAR[19]) * (X[26] * sPAR[0]))));
    F[25]=((sPAR[19] * (X[26] * sPAR[0])) + ((sPAR[17] * (X[27] * sPAR[0])) + ((sPAR[13] * (X[15] * (X[43] * sPAR[0]))) + ((sPAR[44] * (X[26] * sPAR[0])) + ((sPAR[0] * ((sPAR[42] * X[27]) + (sPAR[51] * X[5]))) + ((X[25] * (((((-(sPAR[49])) - X[42]) - sPAR[22]) * sPAR[0]) - (sPAR[8] * (X[39] * sPAR[0])))) - (sPAR[6] * (X[25] * (X[37] * sPAR[0])))))))));
    F[24]=(sPAR[0] * ((sPAR[3] * (X[47] * X[22])) + (((-(sPAR[39])) - sPAR[53]) * X[24])));
    F[23]=(sPAR[0] * ((sPAR[3] * (X[46] * X[22])) + (((-(sPAR[39])) - sPAR[53]) * X[23])));
    F[21]=(sPAR[0] * ((sPAR[11] * (X[47] * X[19])) + (((-(sPAR[47])) - sPAR[55]) * X[21])));
    F[20]=(sPAR[0] * ((sPAR[11] * (X[46] * X[19])) + (((-(sPAR[47])) - sPAR[55]) * X[20])));
    F[18]=((sPAR[22] * (X[28] * sPAR[0])) + ((sPAR[19] * (X[19] * sPAR[0])) + ((sPAR[17] * (X[22] * sPAR[0])) + ((sPAR[49] * (X[28] * sPAR[0])) + ((X[42] * (X[15] * sPAR[0])) + ((sPAR[44] * (X[19] * sPAR[0])) + ((sPAR[0] * ((sPAR[42] * X[22]) + (sPAR[51] * X[4]))) + ((X[18] * (((-(sPAR[13])) * (X[43] * sPAR[0])) - (sPAR[8] * (X[39] * sPAR[0])))) - (sPAR[0] * (sPAR[6] * (X[18] * X[37])))))))))));
    F[17]=((X[27] * (sPAR[0] * (sPAR[22] + sPAR[49]))) + ((sPAR[6] * (X[15] * (X[37] * sPAR[0]))) + ((sPAR[0] * (sPAR[40] * X[3])) + ((X[17] * (((-(sPAR[17])) * sPAR[0]) - (sPAR[13] * (X[43] * sPAR[0])))) + ((((-(X[42])) - sPAR[42]) * (X[17] * sPAR[0])) - (sPAR[0] * (sPAR[4] * (X[17] * X[0]))))))));
    F[16]=((X[26] * (sPAR[0] * (sPAR[22] + sPAR[49]))) + ((sPAR[8] * (X[15] * (X[39] * sPAR[0]))) + ((X[16] * (((-(sPAR[19])) * sPAR[0]) - (sPAR[13] * (X[43] * sPAR[0])))) + (((-(X[42])) - sPAR[44]) * (X[16] * sPAR[0])))));
    F[15]=((sPAR[22] * (X[25] * sPAR[0])) + ((sPAR[19] * (X[16] * sPAR[0])) + ((sPAR[17] * (X[17] * sPAR[0])) + ((sPAR[49] * (X[25] * sPAR[0])) + ((sPAR[44] * (X[16] * sPAR[0])) + ((sPAR[42] * (X[17] * sPAR[0])) + ((sPAR[0] * (sPAR[51] * X[3])) + (X[15] * (((((-(X[42])) * sPAR[0]) - (sPAR[13] * (X[43] * sPAR[0]))) - (sPAR[6] * (X[37] * sPAR[0]))) - (sPAR[8] * (X[39] * sPAR[0])))))))))));
    F[14]=(sPAR[0] * ((sPAR[2] * (X[46] * X[12])) + (((-(sPAR[38])) - sPAR[52]) * X[14])));
    F[13]=(sPAR[0] * ((sPAR[2] * (X[46] * X[12])) + (((-(sPAR[38])) - sPAR[52]) * X[13])));
    F[12]=((sPAR[0] * ((X[42] * X[10]) + ((sPAR[5] * (X[11] * X[37])) + (((sPAR[38] + sPAR[52]) * (X[13] + X[14])) + (sPAR[40] * X[2]))))) + (((-(sPAR[0])) * ((sPAR[41] * X[12]) + ((2.0 * (sPAR[2] * (X[46] * X[12]))) + (sPAR[4] * (X[12] * X[0]))))) - (sPAR[17] * (X[12] * sPAR[0]))));
    F[11]=((sPAR[17] * (X[12] * sPAR[0])) + (sPAR[0] * ((X[42] * X[9]) + ((sPAR[41] * X[12]) + ((sPAR[51] * X[2]) - (sPAR[5] * (X[11] * X[37])))))));
    F[10]=((sPAR[0] * ((sPAR[5] * (X[9] * X[37])) + (sPAR[40] * X[1]))) + ((X[10] * (((-(sPAR[0])) * (X[42] + sPAR[41])) - (sPAR[17] * sPAR[0]))) - (sPAR[0] * (sPAR[4] * (X[10] * X[0])))));
    F[9]=((sPAR[17] * (X[10] * sPAR[0])) + (sPAR[0] * ((sPAR[41] * X[10]) + ((sPAR[51] * X[1]) - (X[9] * (X[42] + (sPAR[5] * X[37])))))));
    F[8]=((sPAR[0] * (sPAR[12] * (X[0] * X[41]))) + (((-(sPAR[21])) * (X[8] * sPAR[0])) - (sPAR[0] * (sPAR[48] * X[8]))));
    F[7]=(sPAR[0] * ((sPAR[4] * (X[37] * X[0])) + (((-(sPAR[40])) - sPAR[51]) * X[7])));
    F[6]=(sPAR[0] * ((sPAR[4] * (X[30] * X[0])) + (((-(sPAR[40])) - sPAR[51]) * X[6])));
    F[5]=(sPAR[0] * ((sPAR[4] * (X[27] * X[0])) + (((-(sPAR[40])) - sPAR[51]) * X[5])));
    F[4]=(sPAR[0] * ((sPAR[4] * (X[27] * X[0])) + (((-(sPAR[40])) - sPAR[51]) * X[4])));
    F[3]=(sPAR[0] * ((sPAR[4] * (X[17] * X[0])) + (((-(sPAR[40])) - sPAR[51]) * X[3])));
    F[2]=(sPAR[0] * ((sPAR[4] * (X[12] * X[0])) + (((-(sPAR[40])) - sPAR[51]) * X[2])));
    F[1]=(sPAR[0] * ((sPAR[4] * (X[10] * X[0])) + (((-(sPAR[40])) - sPAR[51]) * X[1])));
    F[0]=((sPAR[21] * (X[8] * sPAR[0])) + (sPAR[0] * ((sPAR[48] * X[8]) + (((sPAR[40] + sPAR[51]) * (X[7] + (X[3] + (X[5] + (X[4] + X[6]))))) + ((sPAR[51] * (X[1] + X[2])) + ((X[0] * (((-(sPAR[4])) * (X[37] + X[17])) - (sPAR[12] * X[41]))) + ((2.0 * ((-(sPAR[4])) * (X[27] * X[0]))) + (((((-(sPAR[4])) * (X[12] * X[0])) - (sPAR[40] * X[1])) - (sPAR[40] * X[2])) - (sPAR[4] * (X[0] * (X[30] + X[10])))))))))));
    F[40]=((sPAR[0] * (ACC[5] + (sPAR[46] * (X[45] + (X[47] + X[49]))))) + (((-(sPAR[0])) * (sPAR[10] * (X[40] * (X[44] + X[46])))) - (sPAR[15] * (X[40] * sPAR[0]))));
    F[41]=((sPAR[0] * (ACC[6] + (sPAR[48] * X[8]))) + (((-(sPAR[21])) * (X[41] * sPAR[0])) - (sPAR[0] * (sPAR[12] * (X[0] * X[41])))));
    F[37]=((ACC[3] * sPAR[0]) + ((sPAR[42] * (X[17] * sPAR[0])) + (sPAR[0] * ((sPAR[42] * (X[27] + (X[22] + X[30]))) + ((sPAR[41] * (X[10] + X[12])) + ((sPAR[40] * X[7]) + ((X[37] * ((((-(sPAR[17])) - (sPAR[6] * (X[15] + X[25]))) - (sPAR[6] * (X[18] + X[28]))) - (sPAR[5] * (X[9] + X[11])))) - (sPAR[4] * (X[37] * X[0])))))))));
    F[39]=((sPAR[0] * (ACC[4] + (sPAR[44] * (X[16] + X[26])))) + ((sPAR[44] * (sPAR[0] * (X[19] + X[29]))) + ((X[39] * (sPAR[0] * (((-(sPAR[8])) * (X[15] + X[25])) - sPAR[19]))) - (sPAR[8] * (X[39] * (sPAR[0] * (X[18] + X[28])))))));
    F[43]=((sPAR[0] * (sPAR[36] + (sPAR[50] * (X[35] + X[36])))) + ((sPAR[49] * (sPAR[0] * (X[25] + (X[26] + (X[27] + (X[28] + (X[29] + X[30]))))))) + ((X[43] * (sPAR[0] * (((-(sPAR[14])) * (X[31] + X[32])) - sPAR[22]))) - (sPAR[13] * (X[43] * (sPAR[0] * ((X[15] + X[16]) + ((X[17] + X[18]) + ACC[0]))))))));
    F[19]=((X[29] * (sPAR[0] * (sPAR[16] + sPAR[49]))) + ((X[42] * (X[16] * sPAR[0])) + ((sPAR[8] * (X[18] * (X[39] * sPAR[0]))) + ((sPAR[0] * ((sPAR[47] + sPAR[55]) * (X[20] + X[21]))) + ((X[19] * (((-(sPAR[19])) * sPAR[0]) - (sPAR[13] * (X[43] * sPAR[0])))) + (((-(sPAR[0])) * (sPAR[11] * (X[19] * ACC[2]))) - (sPAR[44] * (X[19] * sPAR[0]))))))));
    F[22]=((X[30] * (sPAR[0] * (sPAR[22] + sPAR[49]))) + ((X[42] * (X[17] * sPAR[0])) + ((sPAR[0] * ((sPAR[6] * (X[18] * X[37])) + (((sPAR[39] + sPAR[53]) * (X[23] + X[24])) + (sPAR[40] * X[4])))) + ((X[22] * (((-(sPAR[17])) * sPAR[0]) - (sPAR[13] * (X[43] * sPAR[0])))) - (sPAR[0] * ((X[22] * (sPAR[42] + (sPAR[3] * ACC[2]))) + (sPAR[4] * (X[27] * X[0]))))))));

}

template<class Precision> __forceinline__ __device__ void PerThread_EventFunction(
	int tid, int NT, Precision*	  EF, \
	Precision     T, Precision    dT, Precision*    TD, Precision*	X, \
	Precision* cPAR, Precision* sPAR, int*       sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[12]=T > 240.0637;

    EF[0] = (! (ACC[12]));
}

template<class Precision> __forceinline__ __device__ void PerThread_ActionAfterEventDetection(
    int tid, int NT, int IDX, int& UDT, \
    Precision    &T, Precision   &dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR, int*       sPARi, Precision* ACC, int* ACCi
) {
    if (IDX == 0){
	    X[42]=sPAR[1];
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
    ACC[0]=0.0; //activeYCdk2
    ACC[1]=0.0; //hyperphosphorylatedYpRb
    ACC[2]=0.0; //hypophosphorylatedYpRb
    ACC[3]=0.0; //ksYCyclinA
    ACC[4]=0.0; //ksYCyclinE
    ACC[5]=0.0; //ksYE2F
    ACC[6]=0.0; //ksYEmi1
    ACC[7]=0.0; //totalYCyclinYA
    ACC[8]=0.0; //totalYCyclinYD
    ACC[9]=0.0; //totalYCyclinYE
    ACC[10]=0.0; //totalYEmi1
    ACC[11]=0.0; //totalYp27
    ACC[12]=0; //$whenCondition1
    sPAR[0]=1.0; //X
    sPAR[1]=0.01075; //k1Yact
    sPAR[2]=6.73e-05; //kbYA1YYpRb
    sPAR[3]=6.25e-05; //kbYA2YYpRb
    sPAR[4]=1.61e-05; //kbYAPCCYYCyclinA
    sPAR[5]=6.48e-05; //kbYCyclinAYYCdk1
    sPAR[6]=9.52e-05; //kbYCyclinAYYCdk2
    sPAR[7]=1.43e-06; //kbYCyclinDYYCdk4
    sPAR[8]=5.01e-05; //kbYCyclinEYYCdk2
    sPAR[9]=3.15e-05; //kbYD4YYpRb
    sPAR[10]=9.660000000000001e-06; //kbYE2FYYpRb
    sPAR[11]=5.74e-05; //kbYE2YYpRb
    sPAR[12]=0.0001; //kbYEmi1YYAPCC
    sPAR[13]=1.23e-05; //kbYp27YYCdk2
    sPAR[14]=6.34e-06; //kbYp27YYCdk4
    sPAR[15]=0.002229; //kd0YE2F
    sPAR[16]=0.071149; //kd1Yp27
    sPAR[17]=0.05; //kdYCyclinA
    sPAR[18]=0.05; //kdYCyclinD
    sPAR[19]=0.05; //kdYCyclinE
    sPAR[20]=0.006465; //kdYE2F
    sPAR[21]=0.018158; //kdYEmi1
    sPAR[22]=0.001575; //kdYp27
    sPAR[23]=499.9437; //ks0YCyclinA
    sPAR[24]=254.0742; //ks0YCyclinE
    sPAR[25]=6.927086; //ks0YE2F
    sPAR[26]=2.004744; //ks0YEmi1
    sPAR[27]=7999.996; //ks1YCyclinA
    sPAR[28]=980.611; //ks1YCyclinE
    sPAR[29]=65.44282; //ks1YE2F
    sPAR[30]=1788.517; //ks1YEmi1
    sPAR[31]=4064.384; //ksMYCyclinA
    sPAR[32]=9992.647000000001; //ksMYCyclinE
    sPAR[33]=9818.780000000001; //ksMYE2F
    sPAR[34]=9608.162; //ksMYEmi1
    sPAR[35]=1354.231; //ksYCyclinD
    sPAR[36]=195.4716; //ksYp27
    sPAR[37]=0.023194; //ktYpRbYYDephos
    sPAR[38]=0.1; //kuYA1YYpRb
    sPAR[39]=0.1; //kuYA2YYpRb
    sPAR[40]=0.1; //kuYAPCCYYCyclinA
    sPAR[41]=0.1; //kuYCyclinAYYCdk1
    sPAR[42]=0.1; //kuYCyclinAYYCdk2
    sPAR[43]=0.1; //kuYCyclinDYYCdk4
    sPAR[44]=0.1; //kuYCyclinEYYCdk2
    sPAR[45]=0.1; //kuYD4YYpRb
    sPAR[46]=0.1; //kuYE2FYYpRb
    sPAR[47]=0.1; //kuYE2YYpRb
    sPAR[48]=0.1; //kuYEmi1YYAPCC
    sPAR[49]=0.1; //kuYp27YYCdk2
    sPAR[50]=0.1; //kuYp27YYCdk4
    sPAR[51]=4.999555; //kudYAPCCYYCyclinA
    sPAR[52]=0.202132; //kupYA1YYpRb
    sPAR[53]=0.200091; //kupYA2YYpRb
    sPAR[54]=1.694662; //kupYD4YYpRb
    sPAR[55]=4.78271; //kupYE2YYpRb
    sPAR[56]=240.0637; //timeYModifier
    X[0]=24582.9; //APCC
    X[1]=104.388; //APCCYCdk1Y00YCdk1Y01YInt
    X[2]=0.0; //APCCYCdk1Y10YCdk1Y11YInt
    X[3]=52.8191; //APCCYCdk2Y000YCdk2Y002YInt
    X[4]=0.0; //APCCYCdk2Y010YCdk2Y012YInt
    X[5]=90.5091; //APCCYCdk2Y100YCdk2Y102YInt
    X[6]=0.0; //APCCYCdk2Y110YCdk2Y112YInt
    X[7]=8.79462; //APCCYCyclinAYInt
    X[8]=5160.61; //APCCYEmi1
    X[9]=98550.60000000001; //Cdk1Y00
    X[10]=1345.01; //Cdk1Y01
    X[11]=0.0; //Cdk1Y10
    X[12]=0.0; //Cdk1Y11
    X[13]=0.0; //Cdk1Y11YpRbY10YpRbY20YInt
    X[14]=0.0; //Cdk1Y11YpRbY11YpRbY21YInt
    X[15]=33942.0; //Cdk2Y000
    X[16]=2176.46; //Cdk2Y001
    X[17]=680.557; //Cdk2Y002
    X[18]=0.0; //Cdk2Y010
    X[19]=0.0; //Cdk2Y011
    X[20]=0.0; //Cdk2Y011YpRbY10YpRbY20YInt
    X[21]=0.0; //Cdk2Y011YpRbY11YpRbY21YInt
    X[22]=0.0; //Cdk2Y012
    X[23]=0.0; //Cdk2Y012YpRbY10YpRbY20YInt
    X[24]=0.0; //Cdk2Y012YpRbY11YpRbY21YInt
    X[25]=58162.0; //Cdk2Y100
    X[26]=3729.51; //Cdk2Y101
    X[27]=1166.18; //Cdk2Y102
    X[28]=0.0; //Cdk2Y110
    X[29]=0.0; //Cdk2Y111
    X[30]=0.0; //Cdk2Y112
    X[31]=46551.9; //Cdk4Y00
    X[32]=6547.64; //Cdk4Y01
    X[33]=0.0; //Cdk4Y01YpRbY00YpRbY10YInt
    X[34]=0.0; //Cdk4Y01YpRbY01YpRbY11YInt
    X[35]=41117.2; //Cdk4Y10
    X[36]=5783.23; //Cdk4Y11
    X[37]=113.316; //CyclinA
    X[38]=14753.7; //CyclinD
    X[39]=191.985; //CyclinE
    X[40]=-2056.292399396543; //E2F
    X[41]=248.046; //Emi1
    X[42]=0.0; //kYact
    X[43]=14150.9; //p27
    X[44]=30000.0; //pRbY00
    X[45]=0.0; //pRbY01
    X[46]=28583.4; //pRbY10
    X[47]=1416.59; //pRbY11
    X[48]=0.0; //pRbY20
    X[49]=0.0; //pRbY21

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
