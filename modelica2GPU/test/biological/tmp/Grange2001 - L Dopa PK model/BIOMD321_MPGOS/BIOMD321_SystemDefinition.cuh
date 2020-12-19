
#ifndef BIOMD321_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD321_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[1]=(sPAR[1] * sPAR[8]);
    ACC[0]=(sPAR[1] * sPAR[7]);
    ACC[7]=(1.0 - (sPAR[7] + sPAR[8]));
    ACC[4]=(sPAR[1] * ACC[7]);
    ACC[3]=(ACC[0] + (ACC[4] + ACC[1]));
    ACC[2]=(sPAR[9] * ACC[3]);
    ACC[5]=(1.0 - (ACC[2] / sPAR[4]));
    ACC[6]=(ACC[5] * sPAR[2]);
    F[2]=((sPAR[11] * (X[0] * ACC[6])) + ((((-(ACC[4])) - ACC[0]) - ACC[1]) * X[2]));
    F[1]=((ACC[1] * X[2]) - (sPAR[0] * X[1]));
    F[0]=((-(sPAR[11])) * X[0]);

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
    ACC[0]=0.0; //CL_AADC
    ACC[1]=0.0; //CL_COMT
    ACC[2]=0.0; //CL_H
    ACC[3]=0.0; //CL_dopa
    ACC[4]=0.0; //CL_rest
    ACC[5]=0.0; //F_H
    ACC[6]=0.0; //F_b
    ACC[7]=0.0; //f_rest
    sPAR[0]=0.012; //CL_OMD
    sPAR[1]=0.823; //CL_dopa0
    sPAR[2]=0.24; //F_G
    sPAR[3]=404.0; //L_Dopa_per_kg_rat
    sPAR[4]=0.828; //Q
    sPAR[5]=1.0; //V_3_OMD
    sPAR[6]=1.0; //Vdopa
    sPAR[7]=0.6899999999999999; //f_AADC
    sPAR[8]=0.1; //f_COMT
    sPAR[9]=0.13; //f_H
    sPAR[10]=1.0; //gut
    sPAR[11]=2.11; //ka_b
    sPAR[12]=0.25; //rat_body_mass
    X[0]=(sPAR[3] * sPAR[12]); //A_dopa
    X[1]=0.0; //C_OMD
    X[2]=0.0; //C_dopa

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
