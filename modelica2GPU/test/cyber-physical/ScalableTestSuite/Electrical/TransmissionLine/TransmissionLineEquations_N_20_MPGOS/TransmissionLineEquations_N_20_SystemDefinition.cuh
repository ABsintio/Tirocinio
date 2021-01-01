
#ifndef TRANSMISSIONLINEEQUATIONS_N_20_PERTHREAD_SYSTEMDEFINITION_H
#define TRANSMISSIONLINEEQUATIONS_N_20_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[1]=((-(X[38])) / -50.04948046732858);
    ACC[0]=(T > 0.0 ? 1.0 : 0.0);
    F[18]=((790513.8339920948 * (X[37] - X[38])) - (3952569.169960474 * (sPAR[6] * X[18])));
    F[17]=((790513.8339920948 * (X[36] - X[37])) - (3952569.169960474 * (sPAR[6] * X[17])));
    F[37]=(1980198019.80198 * (X[17] - X[18]));
    F[16]=((790513.8339920948 * (X[35] - X[36])) - (3952569.169960474 * (sPAR[6] * X[16])));
    F[36]=(1980198019.80198 * (X[16] - X[17]));
    F[15]=((790513.8339920948 * (X[34] - X[35])) - (3952569.169960474 * (sPAR[6] * X[15])));
    F[35]=(1980198019.80198 * (X[15] - X[16]));
    F[14]=((790513.8339920948 * (X[33] - X[34])) - (3952569.169960474 * (sPAR[6] * X[14])));
    F[34]=(1980198019.80198 * (X[14] - X[15]));
    F[13]=((790513.8339920948 * (X[32] - X[33])) - (3952569.169960474 * (sPAR[6] * X[13])));
    F[33]=(1980198019.80198 * (X[13] - X[14]));
    F[12]=((790513.8339920948 * (X[31] - X[32])) - (3952569.169960474 * (sPAR[6] * X[12])));
    F[32]=(1980198019.80198 * (X[12] - X[13]));
    F[11]=((790513.8339920948 * (X[30] - X[31])) - (3952569.169960474 * (sPAR[6] * X[11])));
    F[31]=(1980198019.80198 * (X[11] - X[12]));
    F[10]=((790513.8339920948 * (X[29] - X[30])) - (3952569.169960474 * (sPAR[6] * X[10])));
    F[30]=(1980198019.80198 * (X[10] - X[11]));
    F[9]=((790513.8339920948 * (X[28] - X[29])) - (3952569.169960474 * (sPAR[6] * X[9])));
    F[29]=(1980198019.80198 * (X[9] - X[10]));
    F[8]=((790513.8339920948 * (X[27] - X[28])) - (3952569.169960474 * (sPAR[6] * X[8])));
    F[28]=(1980198019.80198 * (X[8] - X[9]));
    F[7]=((790513.8339920948 * (X[26] - X[27])) - (3952569.169960474 * (sPAR[6] * X[7])));
    F[27]=(1980198019.80198 * (X[7] - X[8]));
    F[6]=((790513.8339920948 * (X[25] - X[26])) - (3952569.169960474 * (sPAR[6] * X[6])));
    F[26]=(1980198019.80198 * (X[6] - X[7]));
    F[5]=((790513.8339920948 * (X[24] - X[25])) - (3952569.169960474 * (sPAR[6] * X[5])));
    F[25]=(1980198019.80198 * (X[5] - X[6]));
    F[4]=((790513.8339920948 * (X[23] - X[24])) - (3952569.169960474 * (sPAR[6] * X[4])));
    F[24]=(1980198019.80198 * (X[4] - X[5]));
    F[3]=((790513.8339920948 * (X[22] - X[23])) - (3952569.169960474 * (sPAR[6] * X[3])));
    F[23]=(1980198019.80198 * (X[3] - X[4]));
    F[2]=((790513.8339920948 * (X[21] - X[22])) - (3952569.169960474 * (sPAR[6] * X[2])));
    F[22]=(1980198019.80198 * (X[2] - X[3]));
    F[1]=((790513.8339920948 * (X[20] - X[21])) - (3952569.169960474 * (sPAR[6] * X[1])));
    F[21]=(1980198019.80198 * (X[1] - X[2]));
    F[0]=((790513.8339920948 * (X[19] - X[20])) - (3952569.169960474 * (sPAR[6] * X[0])));
    F[20]=(1980198019.80198 * (X[0] - X[1]));
    F[38]=(1980198019.80198 * (X[18] - ACC[1]));
    F[19]=X[39];
    F[39]=((ACC[0] - (X[19] + (2.0 * (X[39] / sPAR[8])))) * pow(sPAR[8],2.0));

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
    ACC[0]=0.0; //Vstep
    ACC[1]=0.0; //cur[20]
    sPAR[0]=100.0; //L
    sPAR[1]=50.04948046732858; //RL
    sPAR[2]=5.054997527200187e-07; //TD
    sPAR[3]=1.01e-10; //cap
    sPAR[4]=2.53e-07; //ind
    sPAR[5]=5.0; //l
    sPAR[6]=4.8e-05; //res
    sPAR[7]=197824033.4677019; //v
    sPAR[8]=5000000.0; //w
    sPARi[0]=20; //N
    X[0]=0.0; //cur[1]
    X[1]=0.0; //cur[2]
    X[2]=0.0; //cur[3]
    X[3]=0.0; //cur[4]
    X[4]=0.0; //cur[5]
    X[5]=0.0; //cur[6]
    X[6]=0.0; //cur[7]
    X[7]=0.0; //cur[8]
    X[8]=0.0; //cur[9]
    X[9]=0.0; //cur[10]
    X[10]=0.0; //cur[11]
    X[11]=0.0; //cur[12]
    X[12]=0.0; //cur[13]
    X[13]=0.0; //cur[14]
    X[14]=0.0; //cur[15]
    X[15]=0.0; //cur[16]
    X[16]=0.0; //cur[17]
    X[17]=0.0; //cur[18]
    X[18]=0.0; //cur[19]
    X[19]=0.0; //vol[1]
    X[20]=0.0; //vol[2]
    X[21]=0.0; //vol[3]
    X[22]=0.0; //vol[4]
    X[23]=0.0; //vol[5]
    X[24]=0.0; //vol[6]
    X[25]=0.0; //vol[7]
    X[26]=0.0; //vol[8]
    X[27]=0.0; //vol[9]
    X[28]=0.0; //vol[10]
    X[29]=0.0; //vol[11]
    X[30]=0.0; //vol[12]
    X[31]=0.0; //vol[13]
    X[32]=0.0; //vol[14]
    X[33]=0.0; //vol[15]
    X[34]=0.0; //vol[16]
    X[35]=0.0; //vol[17]
    X[36]=0.0; //vol[18]
    X[37]=0.0; //vol[19]
    X[38]=0.0; //vol[20]
    X[39]=0.0; //vvol

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
