
#ifndef BIOMD232_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD232_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[0]=pow(2.718281828459045,(sPAR[10] * (X[3] - sPAR[2])));
    ACC[10]=(sPAR[7] - X[8]);
    ACC[3]=(sPAR[0] - X[0]);
    ACC[5]=(1.2 * (sPAR[3] * X[3]));
    ACC[2]=pow(2.718281828459045,(-3.0 * (ACC[5] / (sPAR[9] * sPAR[8]))));
    ACC[4]=(sPAR[0] / (1.0 + (ACC[2] / (X[12] * sPAR[5]))));
    ACC[1]=pow(2.718281828459045,(sPAR[11] * (X[0] - ACC[4])));
    ACC[7]=(sPAR[22] * (-1.0 + (2.0 / (1.0 + ACC[1]))));
    ACC[9]=(sPAR[24] * (ACC[10] / ((1.0 + ACC[0]) * (sPAR[4] + ACC[10]))));
    ACC[8]=(sPAR[23] * X[3]);
    ACC[6]=(sPAR[21] * X[0]);
    F[4]=0.0;
    F[6]=0.0;
    F[9]=0.0;
    F[11]=(sPAR[25] * (sPAR[13] + (X[11] * (((-(sPAR[14])) * X[8]) - (sPAR[19] * X[0])))));
    F[12]=0.0;
    F[2]=(sPAR[25] * ((sPAR[15] * (X[10] * X[1])) - (sPAR[16] * (X[2] * X[8]))));
    F[1]=(sPAR[25] * ((sPAR[14] * (X[11] * X[8])) - (sPAR[15] * (X[10] * X[1]))));
    F[7]=(sPAR[25] * ((sPAR[16] * (X[2] * X[8])) + ((sPAR[18] * (X[10] - (X[7] / sPAR[6]))) - (sPAR[17] * (X[7] * (X[8] * ACC[3]))))));
    F[10]=(sPAR[25] * ((sPAR[17] * (X[7] * (X[8] * ACC[3]))) + ((sPAR[19] * (X[11] * X[0])) + ((sPAR[18] * ((X[7] / sPAR[6]) - X[10])) + (X[10] * (((-(sPAR[15])) * X[1]) - sPAR[20]))))));
    F[8]=((sPAR[25] * (ACC[9] + (((-(sPAR[14])) * (X[11] * X[8])) - (sPAR[16] * (X[2] * X[8]))))) + (-2.0 * (sPAR[25] * (sPAR[17] * (X[7] * (X[8] * ACC[3]))))));
    F[3]=(((10.0 * ACC[9]) + ((-3.0 * ACC[7]) + ((-(ACC[8])) - ACC[6]))) / sPAR[1]);
    F[0]=(sPAR[25] * ((sPAR[17] * (X[7] * (X[8] * ACC[3]))) + (ACC[7] + (((-(sPAR[19])) * (X[11] * X[0])) - ACC[6]))));
    F[5]=0.0;

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
    ACC[0]=0.0; //$cse1
    ACC[1]=1.0; //$cse2
    ACC[2]=0.0; //$cse3
    ACC[3]=4.16; //ADP
    ACC[4]=0.0; //ATPcrit
    ACC[5]=0.0; //DeltaGtransport
    ACC[6]=0.0; //JANT
    ACC[7]=0.0; //JATP
    ACC[8]=0.0; //Jleak
    ACC[9]=0.0; //Jresp
    ACC[10]=0.0; //NADH
    sPAR[0]=4.16; //At
    sPAR[1]=6.75e-06; //C
    sPAR[2]=150.0; //DeltaPsim
    sPAR[3]=96485.0; //F
    sPAR[4]=2.0; //K
    sPAR[5]=4.4e-09; //Kapp
    sPAR[6]=0.3975; //Keq_5
    sPAR[7]=1.07; //Nt
    sPAR[8]=8314.0; //R
    sPAR[9]=298.0; //T
    sPAR[10]=0.1; //a
    sPAR[11]=0.004; //b
    sPAR[12]=1.0; //cytoplasm
    sPAR[13]=0.038; //k1_0
    sPAR[14]=0.152; //k2_1
    sPAR[15]=57.142; //k3_2
    sPAR[16]=0.053; //k4_3
    sPAR[17]=0.082361; //k5_4
    sPAR[18]=0.0032; //k6_5
    sPAR[19]=0.04; //k7_6
    sPAR[20]=3.6; //k8_7
    sPAR[21]=0.05387; //kANT
    sPAR[22]=131.9; //kATP
    sPAR[23]=0.000426; //kleak
    sPAR[24]=2.5; //kresp
    sPAR[25]=1.0; //mitochondrion
    X[0]=3.536; //ATP
    X[1]=0.063; //AcCoA
    X[2]=0.44; //Cit
    X[3]=150.0; //DeltaPsi
    X[4]=1.0; //H
    X[5]=1.0; //H2O
    X[6]=1.0; //He
    X[7]=0.225; //KG
    X[8]=0.856; //NAD
    X[9]=1.0; //O2
    X[10]=0.005; //OAA
    X[11]=0.154; //Pyr
    X[12]=2.44; //iP

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
