
#ifndef BIOMD030_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD030_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[6]=((sPAR[10] * X[14]) + ((sPAR[19] * (X[0] * X[2])) - (sPAR[11] * X[6])));
    F[5]=((sPAR[7] * X[9]) + ((sPAR[17] * (X[0] * X[2])) - (sPAR[8] * X[5])));
    F[9]=((sPAR[6] * (X[7] * X[2])) + (((-(sPAR[16])) - sPAR[7]) * X[9]));
    F[10]=((sPAR[4] * X[17]) + ((sPAR[15] * (X[7] * X[2])) - (sPAR[5] * X[10])));
    F[13]=((sPAR[2] * X[16]) + ((sPAR[14] * (X[11] * X[2])) - (sPAR[3] * X[13])));
    F[14]=((sPAR[9] * (X[11] * X[2])) + (((-(sPAR[18])) - sPAR[10]) * X[14]));
    F[16]=((sPAR[1] * (X[15] * X[2])) + (((-(sPAR[13])) - sPAR[2]) * X[16]));
    F[17]=((sPAR[0] * (X[15] * X[2])) + (((-(sPAR[12])) - sPAR[4]) * X[17]));
    F[3]=((sPAR[24] * (X[0] * X[1])) + (((-(sPAR[30])) - sPAR[25]) * X[3]));
    F[4]=((sPAR[20] * (X[0] * X[1])) + (((-(sPAR[28])) - sPAR[21]) * X[4]));
    F[8]=((sPAR[26] * (X[7] * X[1])) + (((-(sPAR[31])) - sPAR[27]) * X[8]));
    F[12]=((sPAR[22] * (X[11] * X[1])) + (((-(sPAR[29])) - sPAR[23]) * X[12]));
    F[2]=((sPAR[5] * X[10]) + ((sPAR[8] * X[5]) + ((sPAR[11] * X[6]) + ((sPAR[3] * X[13]) + ((sPAR[12] * X[17]) + ((sPAR[16] * X[9]) + ((sPAR[18] * X[14]) + ((sPAR[13] * X[16]) + (((((((((-(sPAR[6])) * (X[7] * X[2])) - (sPAR[1] * (X[15] * X[2]))) - (sPAR[14] * (X[11] * X[2]))) - (sPAR[17] * (X[0] * X[2]))) - (sPAR[15] * (X[7] * X[2]))) - (sPAR[19] * (X[0] * X[2]))) - (sPAR[9] * (X[11] * X[2]))) - (sPAR[0] * (X[15] * X[2])))))))))));
    F[1]=((sPAR[21] * X[4]) + ((sPAR[23] * X[12]) + ((sPAR[25] * X[3]) + ((sPAR[27] * X[8]) + ((sPAR[28] * X[4]) + ((sPAR[29] * X[12]) + ((sPAR[30] * X[3]) + ((sPAR[31] * X[8]) + ((((-(sPAR[20])) - sPAR[24]) * (X[0] * X[1])) + (((-(sPAR[22])) * (X[11] * X[1])) - (sPAR[26] * (X[7] * X[1]))))))))))));
    F[15]=((sPAR[23] * X[12]) + ((sPAR[27] * X[8]) + ((sPAR[12] * X[17]) + ((sPAR[13] * X[16]) + (((-(sPAR[1])) - sPAR[0]) * (X[15] * X[2]))))));
    F[7]=((sPAR[25] * X[3]) + ((sPAR[5] * X[10]) + ((sPAR[31] * X[8]) + ((sPAR[16] * X[9]) + ((X[7] * (((-(sPAR[15])) * X[2]) - (sPAR[26] * X[1]))) - (sPAR[6] * (X[7] * X[2])))))));
    F[11]=((sPAR[21] * X[4]) + ((sPAR[3] * X[13]) + ((sPAR[29] * X[12]) + ((sPAR[18] * X[14]) + ((X[11] * (((-(sPAR[14])) * X[2]) - (sPAR[22] * X[1]))) - (sPAR[9] * (X[11] * X[2])))))));
    F[0]=((sPAR[8] * X[5]) + ((sPAR[11] * X[6]) + ((sPAR[28] * X[4]) + ((sPAR[30] * X[3]) + (X[0] * ((((-(sPAR[17])) * X[2]) - (sPAR[20] * X[1])) + (((-(sPAR[19])) * X[2]) - (sPAR[24] * X[1]))))))));

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
    sPAR[1]=0.045; //h10
    sPAR[2]=0.092; //h11
    sPAR[3]=1.0; //h12
    sPAR[4]=0.092; //h2
    sPAR[5]=1.0; //h3
    sPAR[6]=0.01; //h4
    sPAR[7]=0.5; //h5
    sPAR[8]=0.08599999999999999; //h6
    sPAR[9]=0.01; //h7
    sPAR[10]=0.47; //h8
    sPAR[11]=0.14; //h9
    sPAR[12]=1.0; //h_1
    sPAR[13]=1.0; //h_10
    sPAR[14]=0.01; //h_12
    sPAR[15]=0.01; //h_3
    sPAR[16]=1.0; //h_4
    sPAR[17]=0.001; //h_6
    sPAR[18]=1.0; //h_7
    sPAR[19]=0.002; //h_9
    sPAR[20]=0.02; //k1
    sPAR[21]=0.01; //k2
    sPAR[22]=0.032; //k3
    sPAR[23]=15.0; //k4
    sPAR[24]=0.02; //k5
    sPAR[25]=0.01; //k6
    sPAR[26]=0.032; //k7
    sPAR[27]=15.0; //k8
    sPAR[28]=1.0; //k_1
    sPAR[29]=1.0; //k_3
    sPAR[30]=1.0; //k_5
    sPAR[31]=1.0; //k_7
    X[0]=800.0; //M     
    X[1]=180.0; //MAPKK
    X[2]=100.0; //MKP
    X[3]=0.0; //M_MAPKK_T
    X[4]=0.0; //M_MAPKK_Y
    X[5]=0.0; //M_MKP_T
    X[6]=0.0; //M_MKP_Y
    X[7]=0.0; //MpT
    X[8]=0.0; //MpT_MAPKK
    X[9]=0.0; //MpT_MKP_T
    X[10]=0.0; //MpT_MKP_Y
    X[11]=0.0; //MpY
    X[12]=0.0; //MpY_MAPKK
    X[13]=0.0; //MpY_MKP_T
    X[14]=0.0; //MpY_MKP_Y
    X[15]=0.0; //Mpp
    X[16]=0.0; //Mpp_MKP_T
    X[17]=0.0; //Mpp_MKP_Y

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
