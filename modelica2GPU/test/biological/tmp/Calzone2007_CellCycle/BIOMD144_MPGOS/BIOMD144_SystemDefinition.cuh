
#ifndef BIOMD144_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD144_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[2]=(((sPAR[11] - (X[4] * (sPAR[0] * (X[12] + X[10])))) / (1.0 - (X[4] * sPAR[0]))) - X[11]);
    ACC[1]=(((1.0 - (X[4] * sPAR[0])) * X[5]) + (X[4] * (sPAR[0] * X[6])));
    ACC[0]=(((1.0 - (X[4] * sPAR[0])) * (X[2] + X[15])) + (X[4] * (sPAR[0] * (X[3] + X[16]))));
    F[4]=0.0;
    F[1]=(sPAR[45] * ((sPAR[15] * ((1.0 - X[1]) * (X[3] / (1.0 + (sPAR[2] - X[1]))))) - (sPAR[27] * (X[1] / (sPAR[6] + X[1])))));
    F[0]=(sPAR[45] * ((sPAR[14] * (X[1] * ((1.0 - X[0]) / (1.0 + (sPAR[1] - X[0]))))) - (sPAR[26] * (X[0] / (sPAR[5] + X[0])))));
    F[9]=((sPAR[12] * (sPAR[28] * X[7])) + (sPAR[45] * ((sPAR[30] * (X[6] / (sPAR[7] + X[6]))) + (X[9] * ((((-(sPAR[17])) - (sPAR[16] * X[3])) / (sPAR[3] + X[9])) + ((-(sPAR[34])) - sPAR[24]))))));
    F[6]=((sPAR[12] * (sPAR[28] * X[5])) + (sPAR[45] * (((sPAR[17] + (sPAR[16] * X[3])) * (X[9] / (sPAR[3] + X[9]))) + (((-(X[6])) * (sPAR[34] + (sPAR[30] / (sPAR[7] + X[6])))) - (sPAR[24] * X[6])))));
    F[12]=((sPAR[12] * (sPAR[29] * X[11])) + (sPAR[45] * ((sPAR[18] * (X[10] / (sPAR[4] + X[10]))) + (X[12] * ((((-(sPAR[32])) - (sPAR[31] * X[3])) / (sPAR[8] + X[12])) - sPAR[35])))));
    F[16]=((sPAR[12] * (sPAR[42] * X[15])) + (sPAR[45] * (((sPAR[44] + (sPAR[43] * X[12])) * X[3]) + (X[16] * (((((-(sPAR[23])) - (sPAR[22] * X[0])) - sPAR[39]) - sPAR[33]) - (sPAR[38] * X[6]))))));
    F[3]=((sPAR[12] * (sPAR[42] * X[2])) + (sPAR[45] * (((sPAR[39] + (sPAR[38] * X[6])) * X[16]) + (X[3] * (((((-(sPAR[23])) - (sPAR[22] * X[0])) - sPAR[44]) - sPAR[33]) - (sPAR[43] * X[12]))))));
    F[13]=(sPAR[45] * (sPAR[40] * X[4]));
    F[7]=((sPAR[12] * ((sPAR[37] * X[8]) + (sPAR[30] * (X[5] / (sPAR[7] + X[5]))))) + ((sPAR[45] * (sPAR[34] * (X[9] * (sPAR[0] * (X[4] / (1.0 - (X[4] * sPAR[0]))))))) - (sPAR[12] * ((X[7] * (((sPAR[17] + (sPAR[16] * X[2])) / (sPAR[3] + X[7])) + sPAR[24])) + (sPAR[28] * (X[7] * (sPAR[0] * (X[4] / (1.0 - (X[4] * sPAR[0]))))))))));
    F[14]=(sPAR[12] * (sPAR[41] * X[13]));
    F[8]=((-(sPAR[45])) * ((sPAR[21] * (X[8] / (sPAR[9] + X[8]))) + (sPAR[20] * (X[14] * X[8]))));
    F[5]=((sPAR[12] * ((sPAR[17] + (sPAR[16] * X[2])) * (X[7] / (sPAR[3] + X[7])))) + ((sPAR[45] * (sPAR[34] * (X[6] * (sPAR[0] * (X[4] / (1.0 - (X[4] * sPAR[0]))))))) - (sPAR[12] * ((X[5] * ((sPAR[30] / (sPAR[7] + X[5])) + sPAR[24])) + (sPAR[28] * (X[5] * (sPAR[0] * (X[4] / (1.0 - (X[4] * sPAR[0]))))))))));
    F[15]=((sPAR[12] * ((sPAR[44] + (sPAR[43] * X[11])) * X[2])) + ((sPAR[45] * (sPAR[33] * (X[16] * (X[4] * (sPAR[0] / (1.0 - (X[4] * sPAR[0]))))))) - (sPAR[12] * ((X[15] * (sPAR[39] + ((sPAR[38] * X[5]) + sPAR[19]))) + (sPAR[42] * (X[15] * (sPAR[0] * (X[4] / (1.0 - (X[4] * sPAR[0]))))))))));
    F[2]=((sPAR[12] * (sPAR[36] + ((sPAR[39] + (sPAR[38] * X[5])) * X[15]))) + ((sPAR[45] * (sPAR[33] * (X[3] * (sPAR[0] * (X[4] / (1.0 - (X[4] * sPAR[0]))))))) - (sPAR[12] * ((X[2] * (sPAR[44] + ((sPAR[43] * X[11]) + sPAR[19]))) + (sPAR[42] * (X[2] * (sPAR[0] * (X[4] / (1.0 - (X[4] * sPAR[0]))))))))));
    F[11]=((sPAR[12] * (sPAR[18] * (ACC[2] / (sPAR[4] + ACC[2])))) + ((sPAR[45] * (sPAR[35] * (X[12] * (X[4] * (sPAR[0] / (1.0 - (X[4] * sPAR[0]))))))) - (sPAR[12] * (X[11] * (((sPAR[32] + (sPAR[31] * X[2])) / (sPAR[8] + X[11])) + (sPAR[29] * (sPAR[0] * (X[4] / (1.0 - (X[4] * sPAR[0]))))))))));
    F[10]=((sPAR[12] * (sPAR[29] * ACC[2])) + (sPAR[45] * (((sPAR[32] + (sPAR[31] * X[3])) * (X[12] / (sPAR[8] + X[12]))) - (X[10] * (sPAR[35] + (sPAR[18] / (sPAR[4] + X[10])))))));

}

template<class Precision> __forceinline__ __device__ void PerThread_EventFunction(
	int tid, int NT, Precision*	  EF, \
	Precision     T, Precision    dT, Precision*    TD, Precision*	X, \
	Precision* cPAR, Precision* sPAR, int*       sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[3]=X[0] >= sPAR[25];

    EF[0] = (! (ACC[3]));
}

template<class Precision> __forceinline__ __device__ void PerThread_ActionAfterEventDetection(
    int tid, int NT, int IDX, int& UDT, \
    Precision    &T, Precision   &dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR, int*       sPARi, Precision* ACC, int* ACCi
) {
    if (IDX == 0){
	    X[2]=(X[2] * ((1.0 - (X[4] * sPAR[0])) / (1.0 + (-1.95 * (X[4] * sPAR[0])))));
    }
    if (IDX == 0){
	    X[6]=(0.5128205128205129 * X[6]);
    }
    if (IDX == 0){
	    X[7]=(X[7] * ((1.0 - (X[4] * sPAR[0])) / (1.0 + (-1.95 * (X[4] * sPAR[0])))));
    }
    if (IDX == 0){
	    X[5]=(X[5] * ((1.0 - (X[4] * sPAR[0])) / (1.0 + (-1.95 * (X[4] * sPAR[0])))));
    }
    if (IDX == 0){
	    X[9]=(0.5128205128205129 * X[9]);
    }
    if (IDX == 0){
	    X[11]=(X[11] * ((1.0 - (X[4] * sPAR[0])) / (1.0 + (-1.95 * (X[4] * sPAR[0])))));
    }
    if (IDX == 0){
	    X[10]=(0.5128205128205129 * X[10]);
    }
    if (IDX == 0){
	    X[12]=(0.5128205128205129 * X[12]);
    }
    if (IDX == 0){
	    X[16]=(0.5128205128205129 * X[16]);
    }
    if (IDX == 0){
	    X[3]=(0.5128205128205129 * X[3]);
    }
    if (IDX == 0){
	    X[4]=(sPAR[13] * X[4]);
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
    ACC[0]=0.0; //CycBT
    ACC[1]=0.0; //StgPT
    ACC[2]=0.0; //Wee1Pc
    ACC[3]=0.0; //$whenCondition1
    sPAR[0]=6.999999999999999e-05; //E_1
    sPAR[1]=0.01; //Jafzy
    sPAR[2]=0.01; //Jaie
    sPAR[3]=0.05; //Jastg
    sPAR[4]=0.05; //Jawee
    sPAR[5]=0.01; //Jifzy
    sPAR[6]=0.01; //Jiie
    sPAR[7]=0.05; //Jistg
    sPAR[8]=0.05; //Jiwee
    sPAR[9]=0.05; //Jm
    sPAR[10]=0.8; //StringT
    sPAR[11]=0.8; //Wee1T
    sPAR[12]=1.0; //cytoplasm
    sPAR[13]=1.95; //factor_1
    sPAR[14]=1.0; //kafzy
    sPAR[15]=1.0; //kaie
    sPAR[16]=1.0; //kastg
    sPAR[17]=0.0; //kastgp
    sPAR[18]=0.3; //kawee
    sPAR[19]=0.01; //kdc
    sPAR[20]=0.2; //kdm
    sPAR[21]=0.002; //kdmp
    sPAR[22]=1.5; //kdn
    sPAR[23]=0.01; //kdnp
    sPAR[24]=0.0; //kdstg
    sPAR[25]=0.5; //kez_1
    sPAR[26]=0.2; //kifzy
    sPAR[27]=0.4; //kiie
    sPAR[28]=0.08; //kins_1
    sPAR[29]=0.04; //kinw_1
    sPAR[30]=0.3; //kistg
    sPAR[31]=1.0; //kiwee
    sPAR[32]=0.01; //kiweep
    sPAR[33]=0.0; //kout_1
    sPAR[34]=0.02; //kouts_1
    sPAR[35]=0.01; //koutw_1
    sPAR[36]=0.01; //ksc
    sPAR[37]=0.0; //ksstg
    sPAR[38]=2.0; //kstg
    sPAR[39]=0.2; //kstgp
    sPAR[40]=0.0005; //ksxm_1
    sPAR[41]=0.001; //ksxp_1
    sPAR[42]=0.15; //kt
    sPAR[43]=1.0; //kwee
    sPAR[44]=0.005; //kweep
    sPAR[45]=1.0; //nuclei
    X[0]=0.0; //FZYa
    X[1]=0.0; //IEa_1
    X[2]=1.0; //MPFc
    X[3]=0.0; //MPFn
    X[4]=1.0; //N
    X[5]=0.8; //StgPc
    X[6]=0.0; //StgPn
    X[7]=0.0; //Stgc
    X[8]=1.0; //Stgm
    X[9]=0.0; //Stgn
    X[10]=0.0; //Wee1Pn
    X[11]=0.0; //Wee1c
    X[12]=0.0; //Wee1n
    X[13]=0.0; //Xm
    X[14]=0.0; //Xp
    X[15]=0.0; //preMPFc
    X[16]=0.0; //preMPFn

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
