
#ifndef BIOMD032_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD032_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[14]=((pow(X[8],2.0) * (sPAR[40] / (16.0 + pow(X[8],2.0)))) - (X[14] * sPAR[41]));
    F[3]=((X[36] * sPAR[38]) - (X[5] * (X[3] * sPAR[39])));
    F[36]=((X[5] * (X[3] * sPAR[39])) - (X[36] * sPAR[38]));
    F[35]=((X[12] * (X[5] * sPAR[36])) - (X[35] * sPAR[37]));
    F[6]=(X[4] * (X[3] * sPAR[35]));
    F[5]=((X[4] * (pow(X[8],2.0) * (sPAR[32] / (10000.0 + pow(X[8],2.0))))) + ((X[35] * sPAR[37]) + ((X[36] * sPAR[38]) + (X[5] * (((-(sPAR[34])) - (X[12] * sPAR[36])) - (X[3] * sPAR[39]))))));
    F[4]=((X[5] * sPAR[34]) - (X[4] * ((pow(X[8],2.0) * (sPAR[32] / (10000.0 + pow(X[8],2.0)))) + (X[3] * sPAR[35]))));
    F[2]=(X[1] * sPAR[31]);
    F[1]=((X[17] * (X[0] * sPAR[29])) - (X[1] * (sPAR[30] + sPAR[31])));
    F[0]=((X[1] * sPAR[30]) - (X[17] * (X[0] * sPAR[29])));
    F[17]=((X[16] * (X[8] * sPAR[27])) - (X[17] * sPAR[28]));
    F[16]=((X[17] * sPAR[28]) - (X[16] * (X[8] * sPAR[27])));
    F[33]=((X[34] * (X[7] * sPAR[21])) - (X[33] * (sPAR[23] + sPAR[24])));
    F[8]=((X[32] * sPAR[20]) + ((X[17] * sPAR[28]) + (((-(X[8])) * sPAR[26]) - (X[16] * (X[8] * sPAR[27])))));
    F[34]=((X[32] * sPAR[20]) + ((X[33] * sPAR[23]) - (X[34] * ((X[7] * sPAR[21]) + sPAR[25]))));
    F[32]=((X[31] * sPAR[18]) + ((X[33] * sPAR[24]) - (X[32] * sPAR[20])));
    F[31]=((X[30] * sPAR[16]) - (X[31] * (sPAR[18] + sPAR[19])));
    F[30]=((X[29] * sPAR[14]) - (X[30] * (sPAR[16] + sPAR[17])));
    F[29]=((X[28] * sPAR[12]) - (X[29] * (sPAR[14] + sPAR[15])));
    F[28]=((X[27] * (X[19] * sPAR[9])) - (X[28] * (sPAR[10] + (sPAR[12] + sPAR[13]))));
    F[19]=((X[28] * (sPAR[10] + sPAR[13])) + ((X[29] * sPAR[15]) + ((X[30] * sPAR[17]) + ((X[31] * sPAR[19]) + ((X[34] * sPAR[25]) - (X[27] * (X[19] * sPAR[9])))))));
    F[25]=((X[22] * (X[7] * sPAR[5])) + (((-(X[25])) * sPAR[6]) - (X[24] * (X[25] * sPAR[7]))));
    F[7]=((X[25] * sPAR[6]) + ((X[26] * sPAR[8]) + ((X[28] * sPAR[13]) + ((X[29] * sPAR[15]) + ((X[30] * sPAR[17]) + ((X[31] * sPAR[19]) + ((X[33] * sPAR[23]) + ((X[8] * sPAR[26]) + (X[7] * (((-(X[22])) * sPAR[5]) - (X[34] * sPAR[21])))))))))));
    F[22]=((X[25] * sPAR[6]) + ((X[26] * sPAR[8]) + ((X[28] * sPAR[13]) + ((X[29] * sPAR[15]) + ((X[30] * sPAR[17]) + ((X[31] * sPAR[19]) + ((X[34] * sPAR[25]) - (X[22] * (X[7] * sPAR[5])))))))));
    F[24]=((X[21] * (X[15] * sPAR[3])) - (X[24] * (sPAR[4] + (X[25] * sPAR[7]))));
    F[15]=((X[24] * sPAR[4]) + ((X[26] * sPAR[8]) + ((X[28] * sPAR[13]) + ((X[29] * sPAR[15]) + ((X[30] * sPAR[17]) + ((X[31] * sPAR[19]) + ((X[34] * sPAR[25]) - (X[21] * (X[15] * sPAR[3])))))))));
    F[21]=((X[24] * sPAR[4]) + ((X[26] * sPAR[8]) + ((X[28] * sPAR[13]) + ((X[29] * sPAR[15]) + ((X[30] * sPAR[17]) + ((X[31] * sPAR[19]) + ((X[34] * sPAR[25]) - (X[21] * (X[15] * sPAR[3])))))))));
    F[27]=((X[12] * (X[26] * sPAR[1])) + ((X[28] * sPAR[10]) - (X[27] * (sPAR[2] + (X[19] * sPAR[9])))));
    F[26]=((X[27] * sPAR[2]) + ((X[24] * (X[25] * sPAR[7])) + (X[26] * (((-(X[12])) * sPAR[1]) - sPAR[8]))));
    F[9]=((X[10] * (sPAR[44] + (X[14] * sPAR[45]))) - (X[9] * (X[12] * sPAR[46])));
    F[12]=((X[20] * (X[11] * sPAR[43])) + ((X[27] * sPAR[2]) + ((X[28] * sPAR[13]) + ((X[29] * sPAR[15]) + ((X[30] * sPAR[17]) + ((X[31] * sPAR[19]) + ((X[34] * sPAR[25]) + ((X[35] * sPAR[37]) + (X[12] * ((((-(X[5])) * sPAR[36]) - (X[9] * sPAR[46])) - (X[26] * sPAR[1])))))))))));
    F[10]=((X[20] * (X[11] * sPAR[43])) - (X[10] * (sPAR[44] + (X[14] * sPAR[45]))));
    F[11]=((X[9] * (X[12] * sPAR[46])) - (X[20] * (X[11] * sPAR[43])));
    F[20]=((X[18] * (X[23] * sPAR[11])) - (X[20] * (sPAR[22] + sPAR[33])));
    F[18]=((X[20] * sPAR[22]) - (X[18] * ((X[23] * sPAR[11]) + sPAR[42])));
    F[23]=((-(X[23])) * (X[2] * sPAR[0]));
    F[13]=0.0;

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
    sPAR[0]=0.03; //k1
    sPAR[1]=0.1; //k10
    sPAR[2]=5.0; //k11
    sPAR[3]=1.0; //k12
    sPAR[4]=3.0; //k13
    sPAR[5]=1.0; //k14
    sPAR[6]=3.0; //k15
    sPAR[7]=3.0; //k16
    sPAR[8]=100.0; //k17
    sPAR[9]=5.0; //k18
    sPAR[10]=1.0; //k19
    sPAR[11]=0.001; //k2
    sPAR[12]=10.0; //k20
    sPAR[13]=5.0; //k21
    sPAR[14]=47.0; //k22
    sPAR[15]=5.0; //k23
    sPAR[16]=345.0; //k24
    sPAR[17]=5.0; //k25
    sPAR[18]=50.0; //k26
    sPAR[19]=5.0; //k27
    sPAR[20]=140.0; //k28
    sPAR[21]=10.0; //k29
    sPAR[22]=0.6; //k3
    sPAR[23]=1.0; //k30
    sPAR[24]=250.0; //k31
    sPAR[25]=5.0; //k32
    sPAR[26]=50.0; //k33
    sPAR[27]=18.0; //k34
    sPAR[28]=10.0; //k35
    sPAR[29]=0.1; //k36
    sPAR[30]=0.1; //k37
    sPAR[31]=0.01; //k38
    sPAR[32]=18.0; //k39
    sPAR[33]=0.24; //k4
    sPAR[34]=1.0; //k40
    sPAR[35]=0.02; //k41
    sPAR[36]=0.1; //k42
    sPAR[37]=0.01; //k43
    sPAR[38]=0.01; //k44
    sPAR[39]=0.1; //k45
    sPAR[40]=200.0; //k46
    sPAR[41]=1.0; //k47
    sPAR[42]=0.024; //k5
    sPAR[43]=0.004; //k6
    sPAR[44]=0.24; //k7
    sPAR[45]=0.033; //k8
    sPAR[46]=2000.0; //k9
    X[0]=200.0; //Bar1
    X[1]=0.0; //Bar1a
    X[2]=0.0; //Bar1aex
    X[3]=300.0; //Cdc28
    X[4]=500.0; //Far1
    X[5]=0.0; //Far1PP
    X[6]=0.0; //Far1U
    X[7]=686.3997016405129; //Fus3
    X[8]=0.0; //Fus3PP
    X[9]=0.0; //GaGDP
    X[10]=0.0; //GaGTP
    X[11]=1666.6666667; //Gabc
    X[12]=0.0; //Gbc
    X[13]=0.0; //P
    X[14]=0.0; //Sst2
    X[15]=158.33176608789; //Ste11
    X[16]=200.0; //Ste12
    X[17]=0.0; //Ste12a
    X[18]=1666.6666667; //Ste2
    X[19]=1000.0; //Ste20
    X[20]=0.0; //Ste2a
    X[21]=158.33176608789; //Ste5
    X[22]=36.3997016405141; //Ste7
    X[23]=100.0; //alpha
    X[24]=105.943298120207; //complexA
    X[25]=77.8753625675829; //complexB
    X[26]=235.724935791903; //complexC
    X[27]=0.0; //complexD
    X[28]=0.0; //complexE
    X[29]=0.0; //complexF
    X[30]=0.0; //complexG
    X[31]=0.0; //complexH
    X[32]=0.0; //complexI
    X[33]=0.0; //complexK
    X[34]=0.0; //complexL
    X[35]=0.0; //complexM
    X[36]=0.0; //complexN

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
