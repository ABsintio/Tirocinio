
#ifndef BIOMD085_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD085_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[1]=((2500000000.0 * (X[7] + X[3])) + (1300000.0 * (X[2] + X[12])));
    ACC[0]=(100000000.0 * (X[12] + (X[2] + (X[7] + X[3]))));
    F[8]=(sPAR[0] * ((sPAR[9] * X[7]) + ((sPAR[27] * (X[6] * X[15])) - (X[8] * (sPAR[10] + (sPAR[26] * X[14]))))));
    F[7]=(sPAR[0] * ((sPAR[7] * (X[6] * X[10])) + ((sPAR[8] * (X[2] * X[0])) + ((sPAR[26] * (X[8] * X[14])) + ((((-(sPAR[25])) - sPAR[9]) - sPAR[24]) * X[7])))));
    F[6]=(sPAR[0] * ((sPAR[6] * (X[9] * X[11])) + ((sPAR[10] * X[8]) + ((sPAR[24] * X[7]) + (((-(X[6])) * (sPAR[23] + (sPAR[27] * X[15]))) - (sPAR[7] * (X[6] * X[10])))))));
    F[5]=(sPAR[0] * ((sPAR[17] * (X[13] * X[11])) + ((sPAR[2] * X[2]) + ((sPAR[20] * (X[16] * X[15])) + (X[5] * ((((-(sPAR[19])) * X[14]) - sPAR[3]) - sPAR[34]))))));
    F[4]=(sPAR[0] * ((sPAR[16] * (X[13] * X[0])) + ((sPAR[4] * X[3]) + ((sPAR[22] * (X[9] * X[15])) + (X[4] * ((((-(sPAR[21])) * X[14]) - sPAR[5]) - sPAR[33]))))));
    F[3]=(sPAR[0] * ((sPAR[15] * (X[12] * X[0])) + ((sPAR[21] * (X[4] * X[14])) + (((-(sPAR[4])) - sPAR[32]) * X[3]))));
    F[2]=(sPAR[0] * ((sPAR[13] * (X[16] * X[10])) + ((sPAR[14] * (X[12] * X[11])) + ((sPAR[19] * (X[5] * X[14])) + ((sPAR[25] * X[7]) + (X[2] * ((((-(sPAR[31])) - (sPAR[8] * X[0])) - sPAR[2]) - sPAR[30])))))));
    F[16]=(sPAR[0] * ((sPAR[3] * X[5]) + ((sPAR[30] * X[2]) + (X[16] * (((-(sPAR[13])) * X[10]) - (sPAR[20] * X[15]))))));
    F[15]=(sPAR[0] * ((sPAR[12] * X[13]) + ((sPAR[3] * X[5]) + ((sPAR[5] * X[4]) + ((sPAR[10] * X[8]) + (((((-(sPAR[20])) * (X[16] * X[15])) - (sPAR[27] * (X[6] * X[15]))) - (sPAR[22] * (X[9] * X[15]))) - (sPAR[29] * (X[1] * X[15]))))))));
    F[14]=(sPAR[0] * ((sPAR[11] * X[12]) + ((sPAR[2] * X[2]) + ((sPAR[4] * X[3]) + ((sPAR[9] * X[7]) + (((((-(sPAR[19])) * (X[5] * X[14])) - (sPAR[26] * (X[8] * X[14]))) - (sPAR[21] * (X[4] * X[14]))) - (sPAR[28] * (X[13] * X[14]))))))));
    F[13]=(sPAR[0] * ((sPAR[11] * X[12]) + ((sPAR[29] * (X[1] * X[15])) + ((sPAR[33] * X[4]) + ((sPAR[34] * X[5]) + ((X[13] * ((((-(sPAR[16])) * X[0]) - sPAR[12]) - (sPAR[28] * X[14]))) - (sPAR[17] * (X[13] * X[11]))))))));
    F[12]=(sPAR[0] * ((sPAR[1] * (X[1] * X[10])) + ((sPAR[28] * (X[13] * X[14])) + ((sPAR[31] * X[2]) + ((sPAR[32] * X[3]) + ((X[12] * ((((-(sPAR[14])) * X[11]) - sPAR[11]) - sPAR[18])) - (sPAR[15] * (X[12] * X[0]))))))));
    F[11]=((-(sPAR[0])) * ((sPAR[14] * (X[12] * X[11])) + ((sPAR[17] * (X[13] * X[11])) + ((sPAR[6] * (X[9] * X[11])) + ((((-(sPAR[34])) * X[5]) - (sPAR[23] * X[6])) - (sPAR[31] * X[2]))))));
    F[10]=((-(sPAR[0])) * ((sPAR[1] * (X[1] * X[10])) + ((sPAR[13] * (X[16] * X[10])) + ((sPAR[7] * (X[6] * X[10])) + ((((-(sPAR[30])) * X[2]) - (sPAR[24] * X[7])) - (sPAR[18] * X[12]))))));
    F[9]=(sPAR[0] * ((sPAR[5] * X[4]) + ((sPAR[23] * X[6]) + (X[9] * (((-(sPAR[6])) * X[11]) - (sPAR[22] * X[15]))))));
    F[1]=(sPAR[0] * ((sPAR[12] * X[13]) + ((sPAR[18] * X[12]) + (X[1] * (((-(sPAR[1])) * X[10]) - (sPAR[29] * X[15]))))));
    F[0]=((-(sPAR[0])) * ((sPAR[15] * (X[12] * X[0])) + ((sPAR[16] * (X[13] * X[0])) + ((sPAR[8] * (X[2] * X[0])) + ((((-(sPAR[33])) * X[4]) - (sPAR[25] * X[7])) - (sPAR[32] * X[3]))))));

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
    ACC[0]=0.0; //parameter_0
    ACC[1]=0.0; //parameter_1
    sPAR[0]=1.0; //compartment_0
    sPAR[1]=529000.0; //k1_reaction_1
    sPAR[2]=0.013; //k1_reaction_10
    sPAR[3]=2.0; //k1_reaction_11
    sPAR[4]=25.0; //k1_reaction_13
    sPAR[5]=0.0001; //k1_reaction_14
    sPAR[6]=3960000000.0; //k1_reaction_16
    sPAR[7]=1620000.0; //k1_reaction_17
    sPAR[8]=6300000.0; //k1_reaction_19
    sPAR[9]=25.0; //k1_reaction_20
    sPAR[10]=2.75; //k1_reaction_23
    sPAR[11]=0.013; //k1_reaction_3
    sPAR[12]=0.0001; //k1_reaction_4
    sPAR[13]=853000.0; //k1_reaction_5
    sPAR[14]=132000000.0; //k1_reaction_6
    sPAR[15]=386000.0; //k1_reaction_7
    sPAR[16]=64100.0; //k1_reaction_8
    sPAR[17]=94700000.0; //k1_reaction_9
    sPAR[18]=8.379999999999999e-06; //k2_reaction_1
    sPAR[19]=2.22e-09; //k2_reaction_10
    sPAR[20]=1470000.0; //k2_reaction_11
    sPAR[21]=0.244; //k2_reaction_13
    sPAR[22]=3.83; //k2_reaction_14
    sPAR[23]=5.43e-05; //k2_reaction_16
    sPAR[24]=0.008750000000000001; //k2_reaction_17
    sPAR[25]=0.478; //k2_reaction_19
    sPAR[26]=0.00297; //k2_reaction_20
    sPAR[27]=2940.0; //k2_reaction_23
    sPAR[28]=9.03e-07; //k2_reaction_3
    sPAR[29]=62.3; //k2_reaction_4
    sPAR[30]=0.00468; //k2_reaction_5
    sPAR[31]=1.28; //k2_reaction_6
    sPAR[32]=0.0408; //k2_reaction_7
    sPAR[33]=0.95; //k2_reaction_8
    sPAR[34]=0.00227; //k2_reaction_9
    X[0]=0.0; //species_0
    X[1]=1e-08; //species_1
    X[2]=0.0; //species_10
    X[3]=0.0; //species_11
    X[4]=0.0; //species_12
    X[5]=0.0; //species_13
    X[6]=0.0; //species_14
    X[7]=0.0; //species_15
    X[8]=0.0; //species_16
    X[9]=0.0; //species_2
    X[10]=0.000468; //species_3
    X[11]=1e-05; //species_4
    X[12]=0.0; //species_5
    X[13]=0.0; //species_6
    X[14]=0.0044; //species_7
    X[15]=0.000149; //species_8
    X[16]=0.0; //species_9

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
