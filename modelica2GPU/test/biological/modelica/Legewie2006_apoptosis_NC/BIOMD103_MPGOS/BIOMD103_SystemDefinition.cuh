
#ifndef BIOMD103_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD103_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[6]=(sPAR[1] * ((sPAR[0] * (sPAR[14] * (X[8] * X[5]))) + ((sPAR[0] * (sPAR[47] * (X[4] * X[9]))) + ((sPAR[0] * (sPAR[3] * (X[15] * X[0]))) + ((((((-(sPAR[38])) * X[6]) - (sPAR[2] * (sPAR[49] * X[6]))) - (sPAR[2] * (sPAR[15] * X[6]))) - (sPAR[2] * (sPAR[48] * X[6]))) - (sPAR[36] * X[6]))))));
    F[15]=(sPAR[1] * ((sPAR[0] * (sPAR[14] * (X[8] * X[14]))) + ((sPAR[0] * (sPAR[47] * (X[13] * X[9]))) + ((sPAR[2] * (sPAR[49] * X[6])) + (((((-(sPAR[2])) * (sPAR[48] * X[15])) - (sPAR[0] * (sPAR[3] * (X[15] * X[0])))) - (sPAR[2] * (sPAR[15] * X[15]))) - (sPAR[37] * X[15]))))));
    F[3]=(sPAR[1] * ((sPAR[0] * (sPAR[14] * (X[8] * X[2]))) + ((sPAR[0] * (sPAR[47] * (X[1] * X[9]))) + ((sPAR[0] * (sPAR[3] * (X[12] * X[0]))) - (sPAR[2] * (X[3] * (sPAR[15] + (sPAR[48] + sPAR[49]))))))));
    F[12]=(sPAR[1] * ((sPAR[0] * (sPAR[14] * (X[8] * X[11]))) + ((sPAR[0] * (sPAR[47] * (X[10] * X[9]))) + ((sPAR[2] * (sPAR[49] * X[3])) + (((((-(sPAR[2])) * (sPAR[48] * X[12])) - (sPAR[0] * (sPAR[3] * (X[12] * X[0])))) - (sPAR[2] * (sPAR[15] * X[12]))) - (sPAR[34] * X[12]))))));
    F[5]=(sPAR[1] * ((sPAR[8] * (X[4] * X[16])) + ((sPAR[12] * (X[14] * X[0])) + (((((-(sPAR[9])) - sPAR[33]) - sPAR[13]) * X[5]) + ((sPAR[2] * (sPAR[15] * X[6])) - (sPAR[0] * (sPAR[14] * (X[8] * X[5]))))))));
    F[4]=(sPAR[1] * ((sPAR[42] * (X[1] * X[8])) + ((sPAR[45] * (X[13] * X[0])) + ((sPAR[44] * (X[7] * X[4])) + ((sPAR[9] * X[5]) + ((X[4] * (((-(sPAR[8])) * X[16]) - sPAR[32])) + ((sPAR[2] * (sPAR[48] * X[6])) + ((((-(sPAR[44])) * (X[7] * X[4])) - (sPAR[0] * (sPAR[47] * (X[4] * X[9])))) - (sPAR[46] * X[4])))))))));
    F[13]=(sPAR[1] * ((sPAR[39] * (X[10] * X[8])) + ((sPAR[43] * (X[7] * X[13])) + ((sPAR[46] * X[4]) + ((sPAR[7] * X[14]) + ((X[13] * (((-(sPAR[6])) * X[16]) - sPAR[31])) + ((sPAR[2] * (sPAR[48] * X[15])) + ((((-(sPAR[43])) * (X[7] * X[13])) - (sPAR[0] * (sPAR[47] * (X[13] * X[9])))) - (sPAR[45] * (X[13] * X[0]))))))))));
    F[14]=(sPAR[1] * ((sPAR[6] * (X[13] * X[16])) + ((sPAR[13] * X[5]) + ((X[14] * (((-(sPAR[7])) - sPAR[30]) - (sPAR[12] * X[0]))) + ((sPAR[2] * (sPAR[15] * X[15])) - (sPAR[0] * (sPAR[14] * (X[8] * X[14]))))))));
    F[9]=(sPAR[1] * ((sPAR[14] * (X[8] * X[16])) + ((((-(sPAR[15])) - sPAR[29]) * X[9]) + ((sPAR[2] * (sPAR[48] * X[12])) + ((sPAR[2] * (sPAR[48] * X[3])) + ((sPAR[2] * (sPAR[48] * X[15])) + ((sPAR[2] * (sPAR[48] * X[6])) - (sPAR[0] * (sPAR[47] * (X[9] * (X[10] + (X[13] + (X[1] + X[4])))))))))))));
    F[8]=(sPAR[1] * ((X[7] * ((sPAR[23] * X[10]) + (sPAR[35] * X[1]))) + ((sPAR[39] * (X[10] * X[8])) + ((sPAR[42] * (X[1] * X[8])) + ((X[7] * ((sPAR[43] * X[13]) + (sPAR[44] * X[4]))) + ((sPAR[15] * X[9]) + ((X[8] * (((-(sPAR[14])) * X[16]) - sPAR[28])) + ((sPAR[2] * (sPAR[15] * X[12])) + ((sPAR[2] * (sPAR[15] * X[3])) + ((sPAR[2] * (sPAR[15] * X[15])) + ((sPAR[2] * (sPAR[15] * X[6])) + (((((-(sPAR[0])) * (sPAR[14] * (X[8] * (X[2] + X[5])))) - (sPAR[42] * (X[1] * X[8]))) - (sPAR[39] * (X[10] * X[8]))) - (sPAR[0] * (sPAR[14] * (X[8] * (X[11] + X[14]))))))))))))))));
    F[7]=(sPAR[1] * (sPAR[27] + ((X[7] * (((((-(sPAR[23])) * X[10]) - sPAR[26]) - (sPAR[35] * X[1])) - (sPAR[43] * X[13]))) - (sPAR[44] * (X[7] * X[4])))));
    F[1]=(sPAR[1] * ((sPAR[3] * (X[0] * X[10])) + ((sPAR[35] * (X[7] * X[1])) + ((sPAR[5] * X[2]) + ((X[1] * (((-(sPAR[4])) * X[16]) - sPAR[25])) + ((sPAR[2] * (sPAR[48] * X[3])) + ((((-(sPAR[35])) * (X[7] * X[1])) - (sPAR[0] * (sPAR[47] * (X[1] * X[9])))) - (X[1] * (sPAR[49] + (sPAR[42] * X[8]))))))))));
    F[2]=(sPAR[1] * ((sPAR[4] * (X[1] * X[16])) + ((sPAR[10] * (X[11] * X[0])) + (((((-(sPAR[5])) - sPAR[24]) - sPAR[11]) * X[2]) + ((sPAR[2] * (sPAR[15] * X[3])) - (sPAR[0] * (sPAR[14] * (X[8] * X[2]))))))));
    F[16]=(sPAR[1] * (sPAR[21] + ((sPAR[48] * X[11]) + ((sPAR[5] * X[2]) + ((sPAR[15] * X[9]) + ((sPAR[7] * X[14]) + ((sPAR[9] * X[5]) + (((((((-(sPAR[14])) * (X[8] * X[16])) - (sPAR[8] * (X[4] * X[16]))) - (sPAR[47] * (X[10] * X[16]))) - (sPAR[20] * X[16])) - (sPAR[6] * (X[13] * X[16]))) - (sPAR[4] * (X[1] * X[16]))))))))));
    F[11]=(sPAR[1] * ((sPAR[47] * (X[10] * X[16])) + ((sPAR[11] * X[2]) + ((X[11] * (((-(sPAR[48])) - sPAR[22]) - (sPAR[10] * X[0]))) + ((sPAR[2] * (sPAR[15] * X[12])) - (sPAR[0] * (sPAR[14] * (X[8] * X[11]))))))));
    F[10]=(sPAR[1] * ((sPAR[23] * (X[7] * X[10])) + (sPAR[19] + ((sPAR[49] * X[1]) + ((sPAR[48] * X[11]) + ((sPAR[2] * (sPAR[48] * X[12])) + ((((((-(sPAR[47])) * (X[10] * X[16])) - (sPAR[0] * (sPAR[47] * (X[10] * X[9])))) - (sPAR[3] * (X[0] * X[10]))) - (X[10] * (sPAR[18] + (sPAR[39] * X[8])))) - (sPAR[23] * (X[7] * X[10])))))))));
    F[0]=(sPAR[1] * (sPAR[17] + ((sPAR[49] * X[1]) + ((sPAR[11] * X[2]) + ((sPAR[46] * X[4]) + ((sPAR[13] * X[5]) + ((sPAR[2] * (sPAR[49] * X[3])) + ((sPAR[2] * (sPAR[49] * X[6])) + ((((((((-(sPAR[12])) * (X[14] * X[0])) - (sPAR[0] * (sPAR[3] * (X[15] * X[0])))) - (sPAR[10] * (X[11] * X[0]))) - (sPAR[16] * X[0])) - (sPAR[3] * (X[0] * X[10]))) - (sPAR[0] * (sPAR[3] * (X[12] * X[0])))) - (sPAR[45] * (X[13] * X[0])))))))))));

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
    sPAR[0]=1.0; //a
    sPAR[1]=1.0; //cytosol
    sPAR[2]=1.0; //d
    sPAR[3]=0.002; //k1
    sPAR[4]=0.001; //k10
    sPAR[5]=0.001; //k10b
    sPAR[6]=0.001; //k11
    sPAR[7]=0.001; //k11b
    sPAR[8]=0.001; //k12
    sPAR[9]=0.001; //k12b
    sPAR[10]=0.002; //k13
    sPAR[11]=0.1; //k13b
    sPAR[12]=0.002; //k14
    sPAR[13]=0.1; //k14b
    sPAR[14]=0.003; //k15
    sPAR[15]=0.001; //k15b
    sPAR[16]=0.001; //k16
    sPAR[17]=0.02; //k16prod
    sPAR[18]=0.001; //k17
    sPAR[19]=0.02; //k17prod
    sPAR[20]=0.001; //k18
    sPAR[21]=0.04; //k18prod
    sPAR[22]=0.001; //k19
    sPAR[23]=5e-06; //k2
    sPAR[24]=0.001; //k20
    sPAR[25]=0.001; //k21
    sPAR[26]=0.001; //k22
    sPAR[27]=0.2; //k22prod
    sPAR[28]=0.001; //k23
    sPAR[29]=0.001; //k24
    sPAR[30]=0.001; //k25
    sPAR[31]=0.001; //k26
    sPAR[32]=0.001; //k27
    sPAR[33]=0.001; //k28
    sPAR[34]=0.001; //k29
    sPAR[35]=0.00035; //k3
    sPAR[36]=0.001; //k30
    sPAR[37]=0.001; //k31
    sPAR[38]=0.001; //k32
    sPAR[39]=0.0002; //k4
    sPAR[40]=1.0; //k41
    sPAR[41]=1.0; //k42
    sPAR[42]=0.0002; //k5
    sPAR[43]=5e-05; //k6
    sPAR[44]=0.0035; //k7
    sPAR[45]=0.002; //k8
    sPAR[46]=0.1; //k8b
    sPAR[47]=0.001; //k9
    sPAR[48]=0.001; //k9b
    sPAR[49]=0.1; //kb1
    X[0]=20.0; //A
    X[1]=0.0; //AC9
    X[2]=0.0; //AC9X
    X[3]=0.0; //AC9X_C3_star
    X[4]=0.0; //AC9_star
    X[5]=0.0; //AC9_starX
    X[6]=0.0; //AC9_starX_C3_star
    X[7]=200.0; //C3
    X[8]=0.0; //C3_star
    X[9]=0.0; //C3_starX
    X[10]=20.0; //C9
    X[11]=0.0; //C9X
    X[12]=0.0; //C9X_C3_star
    X[13]=0.0; //C9_star
    X[14]=0.0; //C9_starX
    X[15]=0.0; //C9_starX_C3_star
    X[16]=40.0; //X

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
