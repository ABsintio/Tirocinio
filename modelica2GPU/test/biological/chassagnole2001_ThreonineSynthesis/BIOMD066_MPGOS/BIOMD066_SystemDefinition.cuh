
#ifndef BIOMD066_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD066_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[4]=((((X[3] * (X[0] / sPAR[32])) - (X[2] * X[4])) * ((sPAR[39] / (((sPAR[2] * (((1.0 + pow((X[10] / sPAR[11]),sPAR[35])) / (1.0 + pow((X[10] / (sPAR[11] * sPAR[0])),sPAR[35]))) + (X[3] / sPAR[8]))) + X[2]) * ((sPAR[9] * (1.0 + (X[0] / sPAR[7]))) + X[4]))) + (sPAR[40] / (((1.0 + pow((sPAR[34] / sPAR[10]),sPAR[36])) * ((sPAR[3] * (1.0 + (X[3] / sPAR[5]))) + X[2])) * ((sPAR[6] * (1.0 + (X[0] / sPAR[4]))) + X[4]))))) + (((-(sPAR[38])) * sPAR[31]) - (sPAR[43] * (X[5] * (X[4] / (((X[5] + (sPAR[25] * ((1.0 + (X[10] / sPAR[29])) * (1.0 + (X[4] / sPAR[26]))))) * (X[4] + (sPAR[24] * (1.0 + (X[5] / sPAR[27]))))) * (1.0 + (sPAR[34] / sPAR[28]))))))));
    F[0]=((((X[2] * X[4]) - (X[3] * (X[0] / sPAR[32]))) * ((sPAR[39] / (((sPAR[2] * (((1.0 + pow((X[10] / sPAR[11]),sPAR[35])) / (1.0 + pow((X[10] / (sPAR[11] * sPAR[0])),sPAR[35]))) + (X[3] / sPAR[8]))) + X[2]) * ((sPAR[9] * (1.0 + (X[0] / sPAR[7]))) + X[4]))) + (sPAR[40] / (((1.0 + pow((sPAR[34] / sPAR[10]),sPAR[36])) * ((sPAR[3] * (1.0 + (X[3] / sPAR[5]))) + X[2])) * ((sPAR[6] * (1.0 + (X[0] / sPAR[4]))) + X[4]))))) + ((sPAR[43] * (X[5] * (X[4] / (((X[5] + (sPAR[25] * ((1.0 + (X[10] / sPAR[29])) * (1.0 + (X[4] / sPAR[26]))))) * (X[4] + (sPAR[24] * (1.0 + (X[5] / sPAR[27]))))) * (1.0 + (sPAR[34] / sPAR[28])))))) + (sPAR[38] * sPAR[31])));
    F[8]=((sPAR[41] * (((X[1] * (X[7] * (X[9] / sPAR[14]))) - (X[3] * X[8])) / (((sPAR[16] * (1.0 + (X[7] / sPAR[15]))) + X[8]) * ((sPAR[13] * ((1.0 + (X[1] / sPAR[12])) * (1.0 + (X[9] / sPAR[17])))) + X[3])))) + (((-(sPAR[38])) * (sPAR[33] * X[8])) - (sPAR[42] * (((X[1] * X[8]) - (X[5] * (X[7] / sPAR[19]))) * ((1.0 + pow((X[10] / (sPAR[23] * sPAR[1])),sPAR[37])) / ((((sPAR[22] * (1.0 + (X[7] / sPAR[21]))) + X[8]) * (sPAR[18] + (X[1] + (X[5] * (sPAR[18] / sPAR[20]))))) * (1.0 + pow((X[10] / sPAR[23]),sPAR[37]))))))));
    F[7]=((sPAR[41] * (((X[3] * X[8]) - (X[1] * (X[7] * (X[9] / sPAR[14])))) / (((sPAR[16] * (1.0 + (X[7] / sPAR[15]))) + X[8]) * ((sPAR[13] * ((1.0 + (X[1] / sPAR[12])) * (1.0 + (X[9] / sPAR[17])))) + X[3])))) + ((sPAR[42] * (((X[1] * X[8]) - (X[5] * (X[7] / sPAR[19]))) * ((1.0 + pow((X[10] / (sPAR[23] * sPAR[1])),sPAR[37])) / ((((sPAR[22] * (1.0 + (X[7] / sPAR[21]))) + X[8]) * (sPAR[18] + (X[1] + (X[5] * (sPAR[18] / sPAR[20]))))) * (1.0 + pow((X[10] / sPAR[23]),sPAR[37])))))) + (sPAR[38] * (sPAR[33] * X[8]))));
    F[2]=(((X[3] * (X[0] / sPAR[32])) - (X[2] * X[4])) * ((sPAR[39] / (((sPAR[2] * (((1.0 + pow((X[10] / sPAR[11]),sPAR[35])) / (1.0 + pow((X[10] / (sPAR[11] * sPAR[0])),sPAR[35]))) + (X[3] / sPAR[8]))) + X[2]) * ((sPAR[9] * (1.0 + (X[0] / sPAR[7]))) + X[4]))) + (sPAR[40] / (((1.0 + pow((sPAR[34] / sPAR[10]),sPAR[36])) * ((sPAR[3] * (1.0 + (X[3] / sPAR[5]))) + X[2])) * ((sPAR[6] * (1.0 + (X[0] / sPAR[4]))) + X[4])))));
    F[10]=(sPAR[44] * (X[6] / (X[6] + sPAR[30])));
    F[9]=((sPAR[41] * (((X[3] * X[8]) - (X[1] * (X[7] * (X[9] / sPAR[14])))) / (((sPAR[16] * (1.0 + (X[7] / sPAR[15]))) + X[8]) * ((sPAR[13] * ((1.0 + (X[1] / sPAR[12])) * (1.0 + (X[9] / sPAR[17])))) + X[3])))) + ((sPAR[44] * (X[6] / (X[6] + sPAR[30]))) + (sPAR[38] * sPAR[31])));
    F[6]=((sPAR[43] * (X[5] * (X[4] / (((1.0 + (sPAR[34] / sPAR[28])) * (X[4] + (sPAR[24] * (1.0 + (X[5] / sPAR[27]))))) * (X[5] + (sPAR[25] * ((1.0 + (X[10] / sPAR[29])) * (1.0 + (X[4] / sPAR[26]))))))))) - (sPAR[44] * (X[6] / (X[6] + sPAR[30]))));
    F[5]=((sPAR[42] * (((X[1] * X[8]) - (X[5] * (X[7] / sPAR[19]))) * ((1.0 + pow((X[10] / (sPAR[1] * sPAR[23])),sPAR[37])) / (((1.0 + pow((X[10] / sPAR[23]),sPAR[37])) * (sPAR[18] + (X[1] + (X[5] * (sPAR[18] / sPAR[20]))))) * ((sPAR[22] * (1.0 + (X[7] / sPAR[21]))) + X[8]))))) - (sPAR[43] * (X[5] * (X[4] / (((1.0 + (sPAR[34] / sPAR[28])) * (X[4] + (sPAR[24] * (1.0 + (X[5] / sPAR[27]))))) * (X[5] + (sPAR[25] * ((1.0 + (X[10] / sPAR[29])) * (1.0 + (X[4] / sPAR[26]))))))))));
    F[1]=((sPAR[41] * (((X[3] * X[8]) - (X[1] * (X[7] * (X[9] / sPAR[14])))) / (((sPAR[13] * ((1.0 + (X[1] / sPAR[12])) * (1.0 + (X[9] / sPAR[17])))) + X[3]) * ((sPAR[16] * (1.0 + (X[7] / sPAR[15]))) + X[8])))) - (sPAR[42] * (((X[1] * X[8]) - (X[5] * (X[7] / sPAR[19]))) * ((1.0 + pow((X[10] / (sPAR[1] * sPAR[23])),sPAR[37])) / (((1.0 + pow((X[10] / sPAR[23]),sPAR[37])) * (sPAR[18] + (X[1] + (X[5] * (sPAR[18] / sPAR[20]))))) * ((sPAR[22] * (1.0 + (X[7] / sPAR[21]))) + X[8]))))));
    F[3]=((((X[2] * X[4]) - (X[3] * (X[0] / sPAR[32]))) * ((sPAR[39] / (((sPAR[9] * (1.0 + (X[0] / sPAR[7]))) + X[4]) * ((sPAR[2] * (((1.0 + pow((X[10] / sPAR[11]),sPAR[35])) / (1.0 + pow((X[10] / (sPAR[0] * sPAR[11])),sPAR[35]))) + (X[3] / sPAR[8]))) + X[2]))) + (sPAR[40] / ((((sPAR[6] * (1.0 + (X[0] / sPAR[4]))) + X[4]) * ((sPAR[3] * (1.0 + (X[3] / sPAR[5]))) + X[2])) * (1.0 + pow((sPAR[34] / sPAR[10]),sPAR[36])))))) + (sPAR[41] * (((X[1] * (X[7] * (X[9] / sPAR[14]))) - (X[3] * X[8])) / (((sPAR[13] * ((1.0 + (X[1] / sPAR[12])) * (1.0 + (X[9] / sPAR[17])))) + X[3]) * ((sPAR[16] * (1.0 + (X[7] / sPAR[15]))) + X[8])))));

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
    sPAR[0]=2.47; //alpha
    sPAR[1]=3.39; //alpha3
    sPAR[2]=0.97; //k11
    sPAR[3]=0.32; //k13
    sPAR[4]=0.25; //k13adp
    sPAR[5]=0.017; //k13aspp
    sPAR[6]=0.22; //k13atp
    sPAR[7]=0.25; //k1adp
    sPAR[8]=0.017; //k1aspp
    sPAR[9]=0.98; //k1atp
    sPAR[10]=0.391; //k1lys
    sPAR[11]=0.167; //k1thr
    sPAR[12]=0.11; //k2asa
    sPAR[13]=0.022; //k2aspp
    sPAR[14]=56.415; //k2eq
    sPAR[15]=0.144; //k2nadp
    sPAR[16]=0.029; //k2nadph
    sPAR[17]=10.0; //k2p
    sPAR[18]=0.24; //k3asa
    sPAR[19]=3162.278; //k3eq
    sPAR[20]=3.39; //k3hs
    sPAR[21]=0.067; //k3nadp
    sPAR[22]=0.037; //k3nadph
    sPAR[23]=0.097; //k3thr
    sPAR[24]=0.07199999999999999; //k4atp
    sPAR[25]=0.11; //k4hs
    sPAR[26]=4.35; //k4iatp
    sPAR[27]=4.7; //k4ihs
    sPAR[28]=9.449999999999999; //k4lys
    sPAR[29]=1.09; //k4thr
    sPAR[30]=0.31; //k5hsp
    sPAR[31]=4.1e-05; //katpase
    sPAR[32]=0.0006400000000000001; //keqak
    sPAR[33]=5.4e-06; //knadph
    sPAR[34]=0.46; //lys
    sPAR[35]=4.09; //nak1
    sPAR[36]=2.8; //nak3
    sPAR[37]=1.41; //nhdh1
    sPAR[38]=202.0; //prot
    sPAR[39]=0.15; //vm11
    sPAR[40]=0.07199999999999999; //vm13
    sPAR[41]=0.181; //vm2f
    sPAR[42]=1.001; //vm3f
    sPAR[43]=0.1; //vm4f
    sPAR[44]=0.043; //vm5
    X[0]=0.0; //adp
    X[1]=0.0; //asa
    X[2]=2.0; //asp
    X[3]=0.0; //aspp
    X[4]=10.0; //atp
    X[5]=0.0; //hs
    X[6]=0.0; //hsp
    X[7]=0.0; //nadp
    X[8]=2.0; //nadph
    X[9]=0.0; //phos
    X[10]=2.0; //thr

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
