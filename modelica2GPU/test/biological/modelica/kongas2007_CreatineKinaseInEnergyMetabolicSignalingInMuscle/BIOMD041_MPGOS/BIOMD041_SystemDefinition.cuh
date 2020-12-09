
#ifndef BIOMD041_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD041_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[6]=((sPAR[24] * X[2]) + (sPAR[23] * (X[9] - X[6])));
    F[9]=((sPAR[23] * (X[6] - X[9])) - (sPAR[14] * (X[1] * (X[9] / ((sPAR[0] * sPAR[1]) * (1.0 + ((X[1] / sPAR[0]) + ((X[9] / sPAR[1]) + (X[1] * (X[9] / (sPAR[1] * sPAR[0])))))))))));
    F[4]=((sPAR[19] * (X[5] - X[4])) + (((sPAR[16] * (X[0] * (X[7] / (sPAR[11] * sPAR[5])))) - (sPAR[18] * (X[2] * (X[4] / (sPAR[7] * sPAR[3]))))) / (1.0 + ((X[4] / sPAR[9]) + ((X[7] / sPAR[13]) + ((X[2] * ((1.0 / sPAR[7]) + (X[4] / (sPAR[3] * sPAR[7])))) + (X[0] * ((1.0 / sPAR[11]) + ((X[4] / (sPAR[9] * sPAR[11])) + (X[7] / (sPAR[11] * sPAR[5])))))))))));
    F[2]=((sPAR[22] * (X[3] - X[2])) + ((((sPAR[16] * (X[0] * (X[7] / (sPAR[5] * sPAR[11])))) - (sPAR[18] * (X[2] * (X[4] / (sPAR[3] * sPAR[7]))))) / (1.0 + ((X[4] / sPAR[9]) + ((X[7] / sPAR[13]) + ((X[2] * ((1.0 / sPAR[7]) + (X[4] / (sPAR[7] * sPAR[3])))) + (X[0] * ((1.0 / sPAR[11]) + ((X[4] / (sPAR[11] * sPAR[9])) + (X[7] / (sPAR[5] * sPAR[11])))))))))) - (sPAR[24] * X[2])));
    F[0]=((((sPAR[18] * (X[2] * (X[4] / (sPAR[3] * sPAR[7])))) - (sPAR[16] * (X[0] * (X[7] / (sPAR[5] * sPAR[11]))))) / (1.0 + ((X[4] / sPAR[9]) + ((X[7] / sPAR[13]) + ((X[2] * ((1.0 / sPAR[7]) + (X[4] / (sPAR[7] * sPAR[3])))) + (X[0] * ((1.0 / sPAR[11]) + ((X[4] / (sPAR[11] * sPAR[9])) + (X[7] / (sPAR[5] * sPAR[11])))))))))) + ((sPAR[24] * X[2]) + (sPAR[20] * (X[1] - X[0]))));
    F[7]=((((sPAR[18] * (X[2] * (X[4] / (sPAR[7] * sPAR[3])))) - (sPAR[16] * (X[0] * (X[7] / (sPAR[11] * sPAR[5]))))) / (1.0 + ((X[4] / sPAR[9]) + ((X[7] / sPAR[13]) + ((X[2] * ((1.0 / sPAR[7]) + (X[4] / (sPAR[3] * sPAR[7])))) + (X[0] * ((1.0 / sPAR[11]) + ((X[4] / (sPAR[9] * sPAR[11])) + (X[7] / (sPAR[11] * sPAR[5])))))))))) + (sPAR[21] * (X[8] - X[7])));
    F[8]=((((sPAR[17] * (X[3] * (X[5] / (sPAR[6] * sPAR[2])))) - (sPAR[15] * (X[1] * (X[8] / (sPAR[10] * sPAR[4]))))) / (1.0 + ((X[5] / sPAR[8]) + ((X[8] / sPAR[12]) + ((X[3] * ((1.0 / sPAR[6]) + (X[5] / (sPAR[2] * sPAR[6])))) + (X[1] * ((1.0 / sPAR[10]) + ((X[5] / (sPAR[8] * sPAR[10])) + (X[8] / (sPAR[10] * sPAR[4])))))))))) + (sPAR[21] * (X[7] - X[8])));
    F[5]=((((sPAR[15] * (X[1] * (X[8] / (sPAR[10] * sPAR[4])))) - (sPAR[17] * (X[3] * (X[5] / (sPAR[6] * sPAR[2]))))) / (1.0 + ((X[5] / sPAR[8]) + ((X[8] / sPAR[12]) + ((X[3] * ((1.0 / sPAR[6]) + (X[5] / (sPAR[2] * sPAR[6])))) + (X[1] * ((1.0 / sPAR[10]) + ((X[5] / (sPAR[8] * sPAR[10])) + (X[8] / (sPAR[10] * sPAR[4])))))))))) + (sPAR[19] * (X[4] - X[5])));
    F[3]=((sPAR[14] * (X[1] * (X[9] / (((1.0 + ((X[1] / sPAR[0]) + ((X[9] / sPAR[1]) + (X[1] * (X[9] / (sPAR[0] * sPAR[1])))))) * sPAR[1]) * sPAR[0])))) + ((((sPAR[15] * (X[1] * (X[8] / (sPAR[4] * sPAR[10])))) - (sPAR[17] * (X[3] * (X[5] / (sPAR[2] * sPAR[6]))))) / (1.0 + ((X[5] / sPAR[8]) + ((X[8] / sPAR[12]) + ((X[3] * ((1.0 / sPAR[6]) + (X[5] / (sPAR[6] * sPAR[2])))) + (X[1] * ((1.0 / sPAR[10]) + ((X[5] / (sPAR[10] * sPAR[8])) + (X[8] / (sPAR[4] * sPAR[10])))))))))) + (sPAR[22] * (X[2] - X[3]))));
    F[1]=((((sPAR[17] * (X[3] * (X[5] / (sPAR[2] * sPAR[6])))) - (sPAR[15] * (X[1] * (X[8] / (sPAR[4] * sPAR[10]))))) / (1.0 + ((X[5] / sPAR[8]) + ((X[8] / sPAR[12]) + ((X[3] * ((1.0 / sPAR[6]) + (X[5] / (sPAR[6] * sPAR[2])))) + (X[1] * ((1.0 / sPAR[10]) + ((X[5] / (sPAR[10] * sPAR[8])) + (X[8] / (sPAR[4] * sPAR[10])))))))))) + ((sPAR[20] * (X[0] - X[1])) - (sPAR[14] * (X[1] * (X[9] / (((1.0 + ((X[1] / sPAR[0]) + ((X[9] / sPAR[1]) + (X[1] * (X[9] / (sPAR[0] * sPAR[1])))))) * sPAR[1]) * sPAR[0]))))));

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
    sPAR[0]=800.0; //Ka_1
    sPAR[1]=20.0; //Kb_1
    sPAR[2]=5200.0; //Kb_2
    sPAR[3]=15500.0; //Kb_3
    sPAR[4]=500.0; //Kd_2
    sPAR[5]=1670.0; //Kd_3
    sPAR[6]=750.0; //Kia_2
    sPAR[7]=900.0; //Kia_3
    sPAR[8]=28800.0; //Kib_2
    sPAR[9]=34900.0; //Kib_3
    sPAR[10]=204.8; //Kic_2
    sPAR[11]=222.4; //Kic_3
    sPAR[12]=1600.0; //Kid_2
    sPAR[13]=4730.0; //Kid_3
    sPAR[14]=4600.0; //V_1
    sPAR[15]=11160.0; //Vb_2
    sPAR[16]=29250.0; //Vb_3
    sPAR[17]=2658.0; //Vf_2
    sPAR[18]=6966.0; //Vf_3
    sPAR[19]=14.6; //k1_6
    sPAR[20]=8.16; //k1_7
    sPAR[21]=14.6; //k1_8
    sPAR[22]=8.16; //k1_9
    sPAR[23]=18.4; //k2_5
    sPAR[24]=4600.0; //v_4
    X[0]=0.0; //ADP
    X[1]=0.0; //ADPi
    X[2]=9700.0; //ATP
    X[3]=0.0; //ATPi
    X[4]=26000.0; //Cr
    X[5]=0.0; //Cri
    X[6]=0.0; //P
    X[7]=0.0; //PCr
    X[8]=0.0; //PCri
    X[9]=32000.0; //Pi

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
