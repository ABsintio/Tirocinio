
#ifndef BIOMD328_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD328_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[0]=(sPAR[20] * (((1.0 - sPAR[27]) * (X[1] / sPAR[27])) - X[0]));
    F[9]=(sPAR[20] * (((1.0 - sPAR[26]) * (X[10] / sPAR[26])) - X[9]));
    F[3]=(sPAR[20] * (((1.0 - sPAR[27]) * (X[4] / sPAR[27])) - X[3]));
    F[6]=(sPAR[20] * (((1.0 - sPAR[27]) * (X[7] / sPAR[27])) - X[6]));
    F[12]=(sPAR[20] * (((1.0 - sPAR[26]) * (X[13] / sPAR[26])) - X[12]));
    F[15]=(sPAR[20] * (((1.0 - sPAR[26]) * (X[16] / sPAR[26])) - X[15]));
    F[4]=((sPAR[1] * (X[1] / ((1.0 + ((X[10] / sPAR[6]) + ((X[10] / sPAR[4]) + ((X[1] / sPAR[2]) + (X[1] / sPAR[0]))))) * sPAR[0]))) + ((sPAR[15] * X[5]) + ((((-(sPAR[28])) - sPAR[31]) * X[4]) + ((sPAR[20] * (X[3] + ((-1.0 + sPAR[27]) * (X[4] / sPAR[27])))) - (sPAR[9] * X[4])))));
    F[7]=((sPAR[3] * (X[1] / ((1.0 + ((X[10] / sPAR[6]) + ((X[10] / sPAR[4]) + ((X[1] / sPAR[2]) + (X[1] / sPAR[0]))))) * sPAR[2]))) + ((sPAR[16] * X[8]) + ((((-(sPAR[28])) - sPAR[31]) * X[7]) + ((sPAR[20] * (X[6] + ((-1.0 + sPAR[27]) * (X[7] / sPAR[27])))) - (sPAR[10] * X[7])))));
    F[13]=((sPAR[5] * (X[10] / ((1.0 + ((X[10] / sPAR[6]) + ((X[10] / sPAR[4]) + ((X[1] / sPAR[2]) + (X[1] / sPAR[0]))))) * sPAR[4]))) + (((sPAR[28] + sPAR[31]) * X[4]) + ((sPAR[18] * X[14]) + ((sPAR[20] * (X[12] + ((-1.0 + sPAR[26]) * (X[13] / sPAR[26])))) - (sPAR[12] * X[13])))));
    F[16]=((sPAR[7] * (X[10] / ((1.0 + ((X[10] / sPAR[6]) + ((X[10] / sPAR[4]) + ((X[1] / sPAR[2]) + (X[1] / sPAR[0]))))) * sPAR[6]))) + (((sPAR[28] + sPAR[31]) * X[7]) + ((sPAR[19] * X[17]) + ((sPAR[20] * (X[15] + ((-1.0 + sPAR[26]) * (X[16] / sPAR[26])))) - (sPAR[13] * X[16])))));
    F[1]=((sPAR[14] * X[2]) + ((sPAR[23] * (X[10] / (sPAR[22] + (X[10] + (pow(X[10],2.0) / sPAR[21]))))) + ((X[1] * (((((-(sPAR[8])) - (sPAR[3] / (sPAR[2] * (1.0 + ((X[10] / sPAR[6]) + ((X[10] / sPAR[4]) + ((X[1] / sPAR[2]) + (X[1] / sPAR[0])))))))) - (sPAR[1] / ((1.0 + ((X[10] / sPAR[6]) + ((X[10] / sPAR[4]) + ((X[1] / sPAR[2]) + (X[1] / sPAR[0]))))) * sPAR[0]))) - sPAR[28]) - sPAR[30])) + (sPAR[20] * (X[0] + ((-1.0 + sPAR[27]) * (X[1] / sPAR[27])))))));
    F[10]=((sPAR[17] * X[11]) + (((sPAR[28] + sPAR[30]) * X[1]) + ((X[10] * ((((-(sPAR[11])) - (sPAR[23] / (sPAR[22] + (X[10] + (pow(X[10],2.0) / sPAR[21]))))) - (sPAR[7] / (sPAR[6] * (1.0 + ((X[10] / sPAR[6]) + ((X[10] / sPAR[4]) + ((X[1] / sPAR[2]) + (X[1] / sPAR[0])))))))) - (sPAR[5] / ((1.0 + ((X[10] / sPAR[6]) + ((X[10] / sPAR[4]) + ((X[1] / sPAR[2]) + (X[1] / sPAR[0]))))) * sPAR[4])))) + (sPAR[20] * (X[9] + ((-1.0 + sPAR[26]) * (X[10] / sPAR[26])))))));
    F[5]=((sPAR[9] * X[4]) + (((-(sPAR[15])) - sPAR[29]) * X[5]));
    F[17]=((sPAR[29] * X[8]) + ((sPAR[13] * X[16]) - (sPAR[19] * X[17])));
    F[8]=((sPAR[10] * X[7]) + (((-(sPAR[16])) - sPAR[29]) * X[8]));
    F[14]=((sPAR[12] * X[13]) + ((sPAR[29] * X[5]) - (sPAR[18] * X[14])));
    F[2]=((sPAR[8] * X[1]) + (((-(sPAR[14])) - sPAR[29]) * X[2]));
    F[11]=((sPAR[11] * X[10]) + ((sPAR[29] * X[2]) - (sPAR[17] * X[11])));

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
    sPAR[0]=3900.0; //CYP3A4_ASLoOH_Km1
    sPAR[1]=39.1342; //CYP3A4_ASLoOH_Vmax
    sPAR[2]=1400.0; //CYP3A4_ASLpOH_Km1
    sPAR[3]=17.4446; //CYP3A4_ASLpOH_Vmax
    sPAR[4]=29700.0; //CYP3A4_ASoOH_Km1
    sPAR[5]=47.4985; //CYP3A4_ASoOH_Vmax
    sPAR[6]=25600.0; //CYP3A4_ASpOH_Km1
    sPAR[7]=15.7336; //CYP3A4_ASpOH_Vmax
    sPAR[8]=0.021822; //Export_ASL_k
    sPAR[9]=0.0026674; //Export_ASLoOH_k
    sPAR[10]=0.0011319; //Export_ASLpOH_k
    sPAR[11]=0.002166; //Export_AS_k
    sPAR[12]=0.0015983; //Export_ASoOH_k
    sPAR[13]=0.00079526; //Export_ASpOH_k
    sPAR[14]=0.2754; //Import_ASL_k
    sPAR[15]=0.026122; //Import_ASLoOH_k
    sPAR[16]=0.033729; //Import_ASLpOH_k
    sPAR[17]=0.020335; //Import_AS_k
    sPAR[18]=0.00038875; //Import_ASoOH_k
    sPAR[19]=0.0039614; //Import_ASpOH_k
    sPAR[20]=8.52; //Prot_k1
    sPAR[21]=75000.0; //UGT1A3_AS_KI1
    sPAR[22]=12000.0; //UGT1A3_AS_Km1
    sPAR[23]=13.5862; //UGT1A3_AS_Vmax
    sPAR[24]=1.0; //cell
    sPAR[25]=1.0; //compartment
    sPAR[26]=0.22; //fu_AS
    sPAR[27]=0.22; //fu_ASL
    sPAR[28]=3.55e-05; //k_CR_ASL_c
    sPAR[29]=0.005; //k_CR_ASL_m
    sPAR[30]=0.0043734; //k_PON_ASL_c
    sPAR[31]=0.0039829; //k_PON_OH_c
    sPAR[32]=1.0; //medium
    X[0]=0.0; //ASL_b
    X[1]=0.0; //ASL_c
    X[2]=30.56; //ASL_m
    X[3]=0.0; //ASLoOH_b
    X[4]=0.0; //ASLoOH_c
    X[5]=0.0; //ASLoOH_m
    X[6]=0.0; //ASLpOH_b
    X[7]=0.0; //ASLpOH_c
    X[8]=0.0; //ASLpOH_m
    X[9]=0.0; //AS_b
    X[10]=0.0; //AS_c
    X[11]=8797.15; //AS_m
    X[12]=0.0; //ASoOH_b
    X[13]=0.0; //ASoOH_c
    X[14]=0.0; //ASoOH_m
    X[15]=0.0; //ASpOH_b
    X[16]=0.0; //ASpOH_c
    X[17]=0.0; //ASpOH_m

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
