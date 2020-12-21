
#ifndef BIOMD278_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD278_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[2]=(sPAR[19] / sPAR[18]);
    ACC[1]=(sPAR[11] / sPAR[22]);
    ACC[3]=(sPAR[7] / sPAR[22]);
    ACC[6]=((ACC[3] + ACC[1]) / (ACC[3] + ACC[2]));
    ACC[0]=(sPAR[13] * sPAR[12]);
    ACC[4]=((X[1] + (sPAR[13] * sPAR[0])) / (X[1] + sPAR[0]));
    ACC[5]=(sPAR[16] * (sPAR[9] * (ACC[6] * (X[0] * ((1.0 + (sPAR[5] / sPAR[23])) / (sPAR[17] * (1.0 + ((sPAR[16] * (sPAR[8] / sPAR[17])) + (sPAR[14] * ((sPAR[6] + (sPAR[10] * (X[2] / ACC[6]))) / (sPAR[20] * sPAR[15])))))))))));
    F[2]=((sPAR[4] * ACC[4]) - (ACC[0] * (X[2] / ACC[4])));
    F[0]=((ACC[0] * (X[2] / ACC[4])) - (sPAR[21] * X[0]));
    F[1]=((sPAR[3] * ACC[5]) - (sPAR[2] * (ACC[4] * X[1])));

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
    ACC[0]=0.0; //D_B
    ACC[1]=0.0; //P_O
    ACC[2]=0.0; //P_S
    ACC[3]=0.0; //Pbar
    ACC[4]=0.0; //Phi_C
    ACC[5]=0.0; //Phi_L
    ACC[6]=0.0; //Phi_P
    sPAR[0]=0.005; //C_s
    sPAR[1]=1.0; //Compartment
    sPAR[2]=0.7; //D_A
    sPAR[3]=0.0021; //D_C
    sPAR[4]=0.0007; //D_R
    sPAR[5]=0.0; //I_L
    sPAR[6]=0.0; //I_O
    sPAR[7]=10.0; //I_P
    sPAR[8]=10.0; //K
    sPAR[9]=3000000.0; //K_L_P
    sPAR[10]=200000.0; //K_O_P
    sPAR[11]=250.0; //S_P
    sPAR[12]=0.7; //d_B
    sPAR[13]=0.05; //f0
    sPAR[14]=0.01; //k1
    sPAR[15]=10.0; //k2
    sPAR[16]=0.00058; //k3
    sPAR[17]=0.017; //k4
    sPAR[18]=0.02; //k5
    sPAR[19]=3.0; //k6
    sPAR[20]=0.35; //kO
    sPAR[21]=0.189; //k_B
    sPAR[22]=86.0; //k_P
    sPAR[23]=1000.0; //r_L
    X[0]=0.0007282; //B
    X[1]=0.0009127; //C
    X[2]=0.0007734; //R

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
