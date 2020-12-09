
#ifndef BIOMD028_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD028_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[6]=((sPAR[7] * X[13]) + ((sPAR[14] * (X[0] * X[2])) - (sPAR[8] * X[6])));
    F[5]=((sPAR[4] * X[9]) + ((sPAR[12] * (X[0] * X[2])) - (sPAR[5] * X[5])));
    F[9]=((sPAR[3] * (X[7] * X[2])) + (((-(sPAR[11])) - sPAR[4]) * X[9]));
    F[10]=((sPAR[1] * X[15]) + ((sPAR[10] * (X[7] * X[2])) - (sPAR[2] * X[10])));
    F[13]=((sPAR[6] * (X[11] * X[2])) + (((-(sPAR[13])) - sPAR[7]) * X[13]));
    F[15]=((sPAR[0] * (X[14] * X[2])) + (((-(sPAR[9])) - sPAR[1]) * X[15]));
    F[3]=((sPAR[19] * (X[0] * X[1])) + (((-(sPAR[25])) - sPAR[20]) * X[3]));
    F[4]=((sPAR[15] * (X[0] * X[1])) + (((-(sPAR[23])) - sPAR[16]) * X[4]));
    F[8]=((sPAR[21] * (X[7] * X[1])) + (((-(sPAR[26])) - sPAR[22]) * X[8]));
    F[12]=((sPAR[17] * (X[11] * X[1])) + (((-(sPAR[24])) - sPAR[18]) * X[12]));
    F[2]=((sPAR[2] * X[10]) + ((sPAR[5] * X[5]) + ((sPAR[8] * X[6]) + ((sPAR[9] * X[15]) + ((sPAR[11] * X[9]) + ((sPAR[13] * X[13]) + (((((((-(sPAR[0])) * (X[14] * X[2])) - (sPAR[6] * (X[11] * X[2]))) - (sPAR[12] * (X[0] * X[2]))) - (sPAR[10] * (X[7] * X[2]))) - (sPAR[3] * (X[7] * X[2]))) - (sPAR[14] * (X[0] * X[2])))))))));
    F[1]=((sPAR[16] * X[4]) + ((sPAR[18] * X[12]) + ((sPAR[20] * X[3]) + ((sPAR[22] * X[8]) + ((sPAR[23] * X[4]) + ((sPAR[24] * X[12]) + ((sPAR[25] * X[3]) + ((sPAR[26] * X[8]) + ((((-(sPAR[15])) - sPAR[19]) * (X[0] * X[1])) + (((-(sPAR[17])) * (X[11] * X[1])) - (sPAR[21] * (X[7] * X[1]))))))))))));
    F[14]=((sPAR[18] * X[12]) + ((sPAR[22] * X[8]) + ((sPAR[9] * X[15]) - (sPAR[0] * (X[14] * X[2])))));
    F[7]=((sPAR[20] * X[3]) + ((sPAR[2] * X[10]) + ((sPAR[26] * X[8]) + ((sPAR[11] * X[9]) + ((X[7] * (((-(sPAR[10])) * X[2]) - (sPAR[21] * X[1]))) - (sPAR[3] * (X[7] * X[2])))))));
    F[11]=((sPAR[16] * X[4]) + ((sPAR[24] * X[12]) + ((sPAR[13] * X[13]) + (X[11] * (((-(sPAR[6])) * X[2]) - (sPAR[17] * X[1]))))));
    F[0]=((sPAR[5] * X[5]) + ((sPAR[8] * X[6]) + ((sPAR[23] * X[4]) + ((sPAR[25] * X[3]) + (X[0] * ((((-(sPAR[12])) * X[2]) - (sPAR[15] * X[1])) + (((-(sPAR[14])) * X[2]) - (sPAR[19] * X[1]))))))));

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
    sPAR[0]=0.045; //h1
    sPAR[1]=0.092; //h2
    sPAR[2]=1.0; //h3
    sPAR[3]=0.01; //h4
    sPAR[4]=0.5; //h5
    sPAR[5]=0.08599999999999999; //h6
    sPAR[6]=0.01; //h7
    sPAR[7]=0.47; //h8
    sPAR[8]=0.14; //h9
    sPAR[9]=1.0; //h_1
    sPAR[10]=0.01; //h_3
    sPAR[11]=1.0; //h_4
    sPAR[12]=0.001; //h_6
    sPAR[13]=1.0; //h_7
    sPAR[14]=0.002; //h_9
    sPAR[15]=0.005; //k1
    sPAR[16]=1.08; //k2
    sPAR[17]=0.025; //k3
    sPAR[18]=0.007; //k4
    sPAR[19]=0.05; //k5
    sPAR[20]=0.008; //k6
    sPAR[21]=0.005; //k7
    sPAR[22]=0.45; //k8
    sPAR[23]=1.0; //k_1
    sPAR[24]=1.0; //k_3
    sPAR[25]=1.0; //k_5
    sPAR[26]=1.0; //k_7
    X[0]=800.0; //M
    X[1]=180.0; //MEK
    X[2]=100.0; //MKP3
    X[3]=0.0; //M_MEK_T
    X[4]=0.0; //M_MEK_Y
    X[5]=0.0; //M_MKP3_T
    X[6]=0.0; //M_MKP3_Y
    X[7]=0.0; //MpT
    X[8]=0.0; //MpT_MEK
    X[9]=0.0; //MpT_MKP3_T
    X[10]=0.0; //MpT_MKP3_Y
    X[11]=0.0; //MpY
    X[12]=0.0; //MpY_MEK
    X[13]=0.0; //MpY_MKP3
    X[14]=0.0; //Mpp
    X[15]=0.0; //Mpp_MKP3

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
