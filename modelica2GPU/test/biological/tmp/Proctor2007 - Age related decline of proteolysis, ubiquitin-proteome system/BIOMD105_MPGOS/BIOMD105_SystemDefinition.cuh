
#ifndef BIOMD105_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD105_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[0]=0.0;
    F[1]=0.0;
    F[4]=(sPAR[17] * (X[3] * X[27]));
    F[29]=(sPAR[16] * X[3]);
    F[3]=((sPAR[14] * (X[12] * ((0.5 * (-1.0 + X[12])) + (2.0 * X[3])))) + ((sPAR[15] * ((0.5 * ((X[13] * (-1.0 + X[13])) + ((X[14] * (-1.0 + X[14])) + ((X[15] * (-1.0 + X[15])) + ((X[16] * (-1.0 + X[16])) + ((X[18] * (-1.0 + X[18])) + ((X[20] * (-1.0 + X[20])) + ((X[22] * (-1.0 + X[22])) + (X[24] * (-1.0 + X[24])))))))))) + ((X[12] * (X[13] + (X[14] + (X[15] + (X[16] + (X[18] + (X[20] + (X[22] + X[24])))))))) + ((2.0 * (X[3] * (X[13] + (X[14] + (X[15] + (X[16] + (X[18] + (X[20] + (X[22] + X[24]))))))))) + ((X[13] * (X[14] + (X[15] + (X[16] + (X[18] + (X[20] + (X[22] + X[24]))))))) + ((X[14] * (X[15] + (X[16] + (X[18] + (X[20] + (X[22] + X[24])))))) + ((X[15] * (X[16] + (X[18] + (X[20] + (X[22] + X[24]))))) + ((X[16] * (X[18] + (X[20] + (X[22] + X[24])))) + ((X[18] * (X[20] + (X[22] + X[24]))) + ((X[20] * (X[22] + X[24])) + (X[22] * X[24]))))))))))) + ((X[3] * (((-(sPAR[16])) - (sPAR[15] * (X[13] + (X[14] + (X[16] + (X[15] + (X[20] + (X[18] + (X[24] + X[22]))))))))) - (sPAR[17] * X[27]))) - (sPAR[14] * (X[12] * X[3])))));
    F[37]=(sPAR[3] * X[12]);
    F[38]=(sPAR[2] * (X[26] * X[28]));
    F[36]=(sPAR[13] * (X[25] * (X[2] / (5000.0 + X[2]))));
    F[35]=(sPAR[13] * (X[23] * (X[2] / (5000.0 + X[2]))));
    F[34]=(sPAR[13] * (X[21] * (X[2] / (5000.0 + X[2]))));
    F[33]=(sPAR[13] * (X[19] * (X[2] / (5000.0 + X[2]))));
    F[32]=(sPAR[13] * (X[17] * (X[2] / (5000.0 + X[2]))));
    F[30]=0.0;
    F[2]=0.0;
    F[25]=((sPAR[11] * (X[24] * X[27])) + (X[25] * (((-(sPAR[12])) * X[5]) - (sPAR[13] * (X[2] / (5000.0 + X[2]))))));
    F[23]=((sPAR[11] * (X[22] * X[27])) + ((sPAR[12] * ((X[25] - X[23]) * X[5])) - (sPAR[13] * (X[23] * (X[2] / (5000.0 + X[2]))))));
    F[21]=((sPAR[11] * (X[20] * X[27])) + ((sPAR[12] * ((X[23] - X[21]) * X[5])) - (sPAR[13] * (X[21] * (X[2] / (5000.0 + X[2]))))));
    F[19]=((sPAR[11] * (X[18] * X[27])) + ((sPAR[12] * ((X[21] - X[19]) * X[5])) - (sPAR[13] * (X[19] * (X[2] / (5000.0 + X[2]))))));
    F[17]=((sPAR[11] * (X[16] * X[27])) + ((sPAR[12] * ((X[19] - X[17]) * X[5])) - (sPAR[13] * (X[17] * (X[2] / (5000.0 + X[2]))))));
    F[24]=((sPAR[9] * (X[22] * X[9])) + ((X[24] * (((-(sPAR[10])) * X[5]) - (sPAR[11] * X[27]))) - (sPAR[15] * (X[24] * (-1.0 + (X[24] + (X[12] + (X[3] + (X[13] + (X[14] + (X[15] + (X[16] + (X[18] + (X[20] + X[22]))))))))))))));
    F[22]=((sPAR[9] * (X[20] * X[9])) + ((sPAR[10] * (X[24] * X[5])) + ((X[22] * (((((-(sPAR[15])) * (-1.0 + X[22])) - (sPAR[11] * X[27])) - (sPAR[9] * X[9])) - (sPAR[10] * X[5]))) - (sPAR[15] * (X[22] * (X[12] + (X[3] + (X[13] + (X[14] + (X[15] + (X[16] + (X[18] + (X[20] + X[24])))))))))))));
    F[20]=((sPAR[9] * (X[18] * X[9])) + ((sPAR[10] * (X[22] * X[5])) + ((X[20] * (((((-(sPAR[15])) * (-1.0 + X[20])) - (sPAR[11] * X[27])) - (sPAR[9] * X[9])) - (sPAR[10] * X[5]))) - (sPAR[15] * (X[20] * (X[12] + (X[3] + (X[13] + (X[14] + (X[15] + (X[16] + (X[18] + (X[22] + X[24])))))))))))));
    F[18]=((sPAR[9] * (X[16] * X[9])) + ((sPAR[10] * (X[20] * X[5])) + ((X[18] * (((((-(sPAR[15])) * (-1.0 + X[18])) - (sPAR[11] * X[27])) - (sPAR[9] * X[9])) - (sPAR[10] * X[5]))) - (sPAR[15] * (X[18] * (X[12] + (X[3] + (X[13] + (X[14] + (X[15] + (X[16] + (X[20] + (X[22] + X[24])))))))))))));
    F[16]=((sPAR[9] * (X[15] * X[9])) + ((sPAR[10] * (X[18] * X[5])) + ((X[16] * (((((-(sPAR[15])) * (-1.0 + X[16])) - (sPAR[11] * X[27])) - (sPAR[9] * X[9])) - (sPAR[10] * X[5]))) - (sPAR[15] * (X[16] * (X[12] + (X[3] + (X[13] + (X[14] + (X[15] + (X[18] + (X[20] + (X[22] + X[24])))))))))))));
    F[15]=((sPAR[9] * (X[14] * X[9])) + ((sPAR[10] * (X[16] * X[5])) + ((sPAR[12] * (X[17] * X[5])) + ((X[15] * (((-(sPAR[9])) * X[9]) - (sPAR[10] * X[5]))) - (sPAR[15] * (X[15] * (-1.0 + (X[15] + (X[12] + (X[3] + (X[13] + (X[14] + (X[16] + (X[18] + (X[20] + (X[22] + X[24]))))))))))))))));
    F[14]=((sPAR[9] * (X[13] * X[9])) + ((sPAR[10] * (X[15] * X[5])) + ((X[14] * (((-(sPAR[9])) * X[9]) - (sPAR[10] * X[5]))) - (sPAR[15] * (X[14] * (-1.0 + (X[14] + (X[12] + (X[3] + (X[13] + (X[15] + (X[16] + (X[18] + (X[20] + (X[22] + X[24])))))))))))))));
    F[13]=((sPAR[8] * (X[9] * X[11])) + ((sPAR[10] * (X[14] * X[5])) + ((X[13] * (((-(sPAR[9])) * X[9]) - (sPAR[10] * X[5]))) - (sPAR[15] * (X[13] * (-1.0 + (X[13] + (X[12] + (X[3] + (X[14] + (X[15] + (X[16] + (X[18] + (X[20] + (X[22] + X[24])))))))))))))));
    F[11]=((sPAR[4] * (X[12] * X[10])) + (((-(sPAR[5])) * X[11]) - (sPAR[8] * (X[9] * X[11]))));
    F[9]=((sPAR[7] * (X[8] * X[7])) + ((X[9] * (((-(sPAR[9])) * (X[13] + X[14])) - (sPAR[8] * X[11]))) - (sPAR[9] * (X[9] * (X[15] + (X[16] + (X[18] + (X[20] + X[22]))))))));
    F[7]=((sPAR[6] * (X[6] * (X[31] * (X[2] / (5000.0 + X[2]))))) - (sPAR[7] * (X[8] * X[7])));
    F[28]=0.0;
    F[27]=((X[17] * ((sPAR[12] * X[5]) + (sPAR[13] * (X[2] / (5000.0 + X[2]))))) + ((sPAR[13] * (X[2] * ((X[19] + (X[21] + (X[23] + X[25]))) / (5000.0 + X[2])))) + (((-(sPAR[11])) * (X[27] * (X[16] + (X[18] + (X[20] + (X[22] + X[24])))))) - (sPAR[17] * (X[3] * X[27])))));
    F[5]=((X[5] * ((sPAR[10] * (X[24] + (X[22] + (X[20] + (X[18] + (X[16] + (X[15] + (X[14] + X[13])))))))) + ((sPAR[12] * (X[25] + X[23])) + ((sPAR[12] * (X[21] + (X[19] + X[17]))) + (((-(sPAR[10])) * (X[20] + (X[18] + (X[16] + (X[15] + (X[14] + (X[13] + (X[24] + X[22])))))))) - (sPAR[12] * (X[25] + X[23]))))))) - (sPAR[12] * (X[5] * (X[21] + (X[19] + X[17])))));
    F[10]=((sPAR[5] * X[11]) + ((sPAR[8] * (X[9] * X[11])) - (sPAR[4] * (X[12] * X[10]))));
    F[8]=((X[9] * ((sPAR[8] * X[11]) + (sPAR[9] * (X[13] + X[14])))) + ((sPAR[9] * (X[9] * (X[15] + (X[16] + (X[18] + (X[20] + X[22])))))) - (sPAR[7] * (X[8] * X[7]))));
    F[6]=((sPAR[7] * (X[8] * X[7])) - (sPAR[6] * (X[6] * (X[31] * (X[2] / (5000.0 + X[2]))))));
    F[31]=((X[5] * ((sPAR[10] * (X[24] + (X[22] + (X[20] + (X[18] + (X[16] + (X[15] + (X[14] + X[13])))))))) + (sPAR[12] * (X[25] + X[23])))) + ((sPAR[12] * (X[5] * (X[21] + (X[19] + X[17])))) + ((sPAR[13] * ((4.0 * (X[17] * (X[2] / (5000.0 + X[2])))) + ((5.0 * (X[19] * (X[2] / (5000.0 + X[2])))) + ((6.0 * (X[21] * (X[2] / (5000.0 + X[2])))) + (7.0 * (X[23] * (X[2] / (5000.0 + X[2])))))))) + ((8.0 * (sPAR[13] * (X[25] * (X[2] / (5000.0 + X[2]))))) - (sPAR[6] * (X[6] * (X[31] * (X[2] / (5000.0 + X[2])))))))));
    F[12]=((sPAR[2] * (X[26] * X[28])) + ((sPAR[5] * X[11]) + ((sPAR[10] * (X[13] * X[5])) + ((X[12] * (((-(sPAR[3])) - (sPAR[4] * X[10])) - (sPAR[14] * (-1.0 + (X[12] + X[3]))))) - (sPAR[15] * (X[12] * (X[13] + (X[14] + (X[15] + (X[16] + (X[18] + (X[20] + (X[22] + X[24])))))))))))));
    F[26]=((sPAR[1] * X[30]) + ((sPAR[3] * X[12]) - (sPAR[2] * (X[26] * X[28]))));

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
    sPAR[0]=1.0; //cytosol
    sPAR[1]=0.01; //k1
    sPAR[2]=2e-06; //k2
    sPAR[3]=4e-06; //k3
    sPAR[4]=1.7e-05; //k61
    sPAR[5]=0.0002; //k61r
    sPAR[6]=0.0002; //k62
    sPAR[7]=0.001; //k63
    sPAR[8]=0.001; //k64
    sPAR[9]=0.01; //k65
    sPAR[10]=1e-05; //k66
    sPAR[11]=1e-05; //k67
    sPAR[12]=1e-05; //k68
    sPAR[13]=0.0; //k69
    sPAR[14]=1e-08; //k71
    sPAR[15]=1e-08; //k72
    sPAR[16]=0.001; //k73
    sPAR[17]=1e-05; //k74
    X[0]=1000.0; //ADP
    X[1]=1000.0; //AMP
    X[2]=10000.0; //ATP
    X[3]=0.0; //AggP
    X[4]=0.0; //AggP_Proteasome
    X[5]=200.0; //DUB
    X[6]=100.0; //E1
    X[7]=0.0; //E1_Ub
    X[8]=100.0; //E2
    X[9]=0.0; //E2_Ub
    X[10]=100.0; //E3
    X[11]=0.0; //E3_MisP
    X[12]=0.0; //MisP
    X[13]=0.0; //MisP_Ub
    X[14]=0.0; //MisP_Ub2
    X[15]=0.0; //MisP_Ub3
    X[16]=0.0; //MisP_Ub4
    X[17]=0.0; //MisP_Ub4_Proteasome
    X[18]=0.0; //MisP_Ub5
    X[19]=0.0; //MisP_Ub5_Proteasome
    X[20]=0.0; //MisP_Ub6
    X[21]=0.0; //MisP_Ub6_Proteasome
    X[22]=0.0; //MisP_Ub7
    X[23]=0.0; //MisP_Ub7_Proteasome
    X[24]=0.0; //MisP_Ub8
    X[25]=0.0; //MisP_Ub8_Proteasome
    X[26]=500.0; //NatP
    X[27]=100.0; //Proteasome
    X[28]=10.0; //ROS
    X[29]=0.0; //SeqAggP
    X[30]=1.0; //Source
    X[31]=500.0; //Ub
    X[32]=0.0; //degUb4
    X[33]=0.0; //degUb5
    X[34]=0.0; //degUb6
    X[35]=0.0; //degUb7
    X[36]=0.0; //degUb8
    X[37]=0.0; //refNatP
    X[38]=0.0; //totMisP

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
