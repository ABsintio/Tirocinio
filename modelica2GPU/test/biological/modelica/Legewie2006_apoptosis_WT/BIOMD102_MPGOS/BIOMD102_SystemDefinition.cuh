
#ifndef BIOMD102_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD102_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[4]=(sPAR[0] * ((sPAR[6] * (X[3] * X[12])) + ((sPAR[10] * (X[11] * X[0])) + ((((-(sPAR[11])) - sPAR[7]) - sPAR[31]) * X[4]))));
    F[3]=(sPAR[0] * ((sPAR[34] * (X[1] * X[6])) + ((sPAR[37] * (X[10] * X[0])) + ((sPAR[36] * (X[5] * X[3])) + ((sPAR[7] * X[4]) + ((X[3] * (((-(sPAR[6])) * X[12]) - sPAR[30])) + (((-(sPAR[36])) * (X[5] * X[3])) - (sPAR[38] * X[3]))))))));
    F[10]=(sPAR[0] * ((sPAR[33] * (X[8] * X[6])) + ((sPAR[35] * (X[5] * X[10])) + ((sPAR[38] * X[3]) + ((sPAR[5] * X[11]) + ((X[10] * (((-(sPAR[4])) * X[12]) - sPAR[29])) + (((-(sPAR[35])) * (X[5] * X[10])) - (sPAR[37] * (X[10] * X[0])))))))));
    F[11]=(sPAR[0] * ((sPAR[4] * (X[10] * X[12])) + ((sPAR[11] * X[4]) + (X[11] * ((((-(sPAR[10])) * X[0]) - sPAR[5]) - sPAR[28])))));
    F[7]=(sPAR[0] * ((sPAR[12] * (X[6] * X[12])) + (((-(sPAR[13])) - sPAR[27]) * X[7])));
    F[6]=(sPAR[0] * ((X[5] * ((sPAR[21] * X[8]) + (sPAR[32] * X[1]))) + ((sPAR[33] * (X[8] * X[6])) + ((sPAR[34] * (X[1] * X[6])) + ((X[5] * ((sPAR[35] * X[10]) + (sPAR[36] * X[3]))) + ((sPAR[13] * X[7]) + ((X[6] * (((-(sPAR[12])) * X[12]) - sPAR[26])) + (((-(sPAR[34])) * (X[1] * X[6])) - (sPAR[33] * (X[8] * X[6]))))))))));
    F[5]=(sPAR[0] * (sPAR[25] + ((X[5] * (((((-(sPAR[21])) * X[8]) - sPAR[24]) - (sPAR[32] * X[1])) - (sPAR[35] * X[10]))) - (sPAR[36] * (X[5] * X[3])))));
    F[1]=(sPAR[0] * ((sPAR[1] * (X[0] * X[8])) + ((sPAR[32] * (X[5] * X[1])) + ((sPAR[3] * X[2]) + ((X[1] * (((-(sPAR[2])) * X[12]) - sPAR[23])) + (((-(sPAR[32])) * (X[5] * X[1])) - (X[1] * (sPAR[41] + (sPAR[34] * X[6])))))))));
    F[2]=(sPAR[0] * ((sPAR[2] * (X[1] * X[12])) + ((sPAR[8] * (X[9] * X[0])) + ((((-(sPAR[9])) - sPAR[3]) - sPAR[22]) * X[2]))));
    F[12]=(sPAR[0] * (sPAR[19] + ((sPAR[40] * X[9]) + ((sPAR[3] * X[2]) + ((sPAR[13] * X[7]) + ((sPAR[5] * X[11]) + ((sPAR[7] * X[4]) + (((((((-(sPAR[12])) * (X[6] * X[12])) - (sPAR[6] * (X[3] * X[12]))) - (sPAR[39] * (X[8] * X[12]))) - (sPAR[18] * X[12])) - (sPAR[4] * (X[10] * X[12]))) - (sPAR[2] * (X[1] * X[12]))))))))));
    F[9]=(sPAR[0] * ((sPAR[39] * (X[8] * X[12])) + ((sPAR[9] * X[2]) + (X[9] * ((((-(sPAR[8])) * X[0]) - sPAR[40]) - sPAR[20])))));
    F[8]=(sPAR[0] * ((sPAR[21] * (X[5] * X[8])) + (sPAR[17] + ((sPAR[41] * X[1]) + ((sPAR[40] * X[9]) + (((((-(sPAR[21])) * (X[5] * X[8])) - (X[8] * (sPAR[16] + (sPAR[33] * X[6])))) - (sPAR[39] * (X[8] * X[12]))) - (sPAR[1] * (X[0] * X[8]))))))));
    F[0]=(sPAR[0] * (sPAR[15] + ((sPAR[41] * X[1]) + ((sPAR[9] * X[2]) + ((sPAR[38] * X[3]) + ((sPAR[11] * X[4]) + ((((((-(sPAR[8])) * (X[9] * X[0])) - (sPAR[10] * (X[11] * X[0]))) - (sPAR[14] * X[0])) - (sPAR[37] * (X[10] * X[0]))) - (sPAR[1] * (X[0] * X[8])))))))));

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
    sPAR[1]=0.002; //k1
    sPAR[2]=0.001; //k10
    sPAR[3]=0.001; //k10b
    sPAR[4]=0.001; //k11
    sPAR[5]=0.001; //k11b
    sPAR[6]=0.001; //k12
    sPAR[7]=0.001; //k12b
    sPAR[8]=0.002; //k13
    sPAR[9]=0.1; //k13b
    sPAR[10]=0.002; //k14
    sPAR[11]=0.1; //k14b
    sPAR[12]=0.003; //k15
    sPAR[13]=0.001; //k15b
    sPAR[14]=0.001; //k16
    sPAR[15]=0.02; //k16prod
    sPAR[16]=0.001; //k17
    sPAR[17]=0.02; //k17prod
    sPAR[18]=0.001; //k18
    sPAR[19]=0.04; //k18prod
    sPAR[20]=0.001; //k19
    sPAR[21]=5e-06; //k2
    sPAR[22]=0.001; //k20
    sPAR[23]=0.001; //k21
    sPAR[24]=0.001; //k22
    sPAR[25]=0.2; //k22prod
    sPAR[26]=0.001; //k23
    sPAR[27]=0.001; //k24
    sPAR[28]=0.001; //k25
    sPAR[29]=0.001; //k26
    sPAR[30]=0.001; //k27
    sPAR[31]=0.001; //k28
    sPAR[32]=0.00035; //k3
    sPAR[33]=0.0002; //k4
    sPAR[34]=0.0002; //k5
    sPAR[35]=5e-05; //k6
    sPAR[36]=0.0035; //k7
    sPAR[37]=0.002; //k8
    sPAR[38]=0.1; //k8b
    sPAR[39]=0.001; //k9
    sPAR[40]=0.001; //k9b
    sPAR[41]=0.1; //kb1
    X[0]=20.0; //A
    X[1]=0.0; //AC9
    X[2]=0.0; //AC9X
    X[3]=0.0; //AC9_star
    X[4]=0.0; //AC9_starX
    X[5]=200.0; //C3
    X[6]=0.0; //C3_star
    X[7]=0.0; //C3_starX
    X[8]=20.0; //C9
    X[9]=0.0; //C9X
    X[10]=0.0; //C9_star
    X[11]=0.0; //C9_starX
    X[12]=40.0; //X

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
