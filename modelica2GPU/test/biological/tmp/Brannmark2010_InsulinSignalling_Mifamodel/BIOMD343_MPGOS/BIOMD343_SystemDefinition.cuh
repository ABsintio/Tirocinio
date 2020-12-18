
#ifndef BIOMD343_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD343_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[11]=(0.1 * (X[3] + X[5]));
    ACC[10]=(sPAR[15] * X[8]);
    ACC[8]=(sPAR[13] * (X[7] * X[2]));
    ACC[9]=(sPAR[14] * X[2]);
    ACC[7]=(sPAR[11] * ((X[6] + (sPAR[12] * X[5])) * X[1]));
    ACC[6]=(sPAR[10] * X[3]);
    ACC[5]=(sPAR[9] * X[6]);
    ACC[4]=(X[5] * (sPAR[7] + (sPAR[8] * (X[8] / (1.0 + X[8])))));
    ACC[3]=(sPAR[6] * X[6]);
    ACC[2]=(sPAR[5] * X[4]);
    ACC[1]=(sPAR[4] * X[4]);
    ACC[0]=((sPAR[2] * (sPAR[1] * X[0])) + (sPAR[3] * X[0]));
    ACC[14]=(sPAR[17] * X[2]);
    ACC[13]=(sPAR[18] * X[2]);
    ACC[12]=(sPAR[19] * X[2]);
    F[9]=0.0;
    F[7]=(ACC[10] - ACC[8]);
    F[8]=(ACC[8] - ACC[10]);
    F[1]=(ACC[9] - ACC[7]);
    F[2]=(ACC[7] - ACC[9]);
    F[3]=(ACC[4] - ACC[6]);
    F[5]=(ACC[3] - ACC[4]);
    F[6]=(ACC[2] + ((-(ACC[3])) - ACC[5]));
    F[0]=(ACC[1] + (ACC[6] + (ACC[5] - ACC[0])));
    F[4]=(ACC[0] + ((-(ACC[1])) - ACC[2]));

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
    ACC[0]=0.0; //V1a
    ACC[1]=0.0; //V1b
    ACC[2]=0.0; //V1c
    ACC[3]=0.0; //V1d
    ACC[4]=0.0; //V1e
    ACC[5]=0.0; //V1g
    ACC[6]=0.0; //V1r
    ACC[7]=0.0; //V2
    ACC[8]=0.0; //V3
    ACC[9]=0.0; //Vm2
    ACC[10]=0.0; //Vm3
    ACC[11]=0.0; //intamount
    ACC[12]=0.0; //measanna
    ACC[13]=0.0; //measdosR
    ACC[14]=0.0; //measdoublestep
    sPAR[0]=1.0; //compartment_0000001
    sPAR[1]=100.0; //ins
    sPAR[2]=0.3892881852; //k1a
    sPAR[3]=0.012452744; //k1abasic
    sPAR[4]=0.02000224505; //k1b
    sPAR[5]=0.3635167928; //k1c
    sPAR[6]=1580.6782649401; //k1d
    sPAR[7]=4.38334e-05; //k1e
    sPAR[8]=20.0726035037; //k1f
    sPAR[9]=286.6994648072; //k1g
    sPAR[10]=3.6327773442; //k1r
    sPAR[11]=1.6722503302; //k21
    sPAR[12]=0.036381619; //k22
    sPAR[13]=1.6286590231; //k3
    sPAR[14]=32.5942371891; //km2
    sPAR[15]=0.1131073982; //km3
    sPAR[16]=152.9631668536; //ky1
    sPAR[17]=8936.219557405; //ky2
    sPAR[18]=13740.4321729991; //kyDosR
    sPAR[19]=16760.1203140926; //kyanna
    X[0]=10.0; //IR
    X[1]=10.0; //IRS
    X[2]=0.0; //IRSip
    X[3]=0.0; //IRi
    X[4]=0.0; //IRins
    X[5]=0.0; //IRip
    X[6]=0.0; //IRp
    X[7]=10.0; //X
    X[8]=0.0; //Xp
    X[9]=1.0; //measIRp

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
