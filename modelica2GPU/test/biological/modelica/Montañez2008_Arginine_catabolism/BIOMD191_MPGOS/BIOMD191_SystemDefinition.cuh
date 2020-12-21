
#ifndef BIOMD191_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD191_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[1]=((sPAR[19] * (X[0] * ((sPAR[14] / ((1.0 + ((X[2] / sPAR[1]) + (X[1] / sPAR[5]))) * (sPAR[5] + X[0]))) + (sPAR[15] / ((1.0 + ((X[2] / sPAR[1]) + (X[1] / sPAR[7]))) * (sPAR[7] + X[0])))))) - (sPAR[18] * (X[1] * ((sPAR[11] / ((sPAR[3] * (1.0 + (X[2] / sPAR[0]))) + X[1])) + (sPAR[16] / (sPAR[9] + X[1]))))));
    F[2]=(sPAR[18] * ((sPAR[11] * (X[1] / ((sPAR[3] * (1.0 + (X[2] / sPAR[0]))) + X[1]))) + (((-(X[2])) * ((sPAR[12] / (((sPAR[2] * (1.0 + (X[1] / sPAR[6]))) + X[2]) * (1.0 + (X[0] / sPAR[6])))) + (sPAR[13] / (((sPAR[4] * (1.0 + (X[1] / sPAR[8]))) + X[2]) * (1.0 + (X[0] / sPAR[8])))))) - (sPAR[17] * (X[2] / (sPAR[10] + X[2]))))));
    F[0]=0.0;

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
    sPAR[0]=1000.0; //Kioarg_Arginase
    sPAR[1]=360.0; //Kiornhat_Arginine_transport
    sPAR[2]=360.0; //Kiornhat_Ornithine_efflux
    sPAR[3]=1500.0; //Kmarg_Arginase
    sPAR[4]=847.0; //Kmeffllat_Ornithine_efflux
    sPAR[5]=70.0; //Kmhat_Arginine_transport
    sPAR[6]=70.0; //Kmhat_Ornithine_efflux
    sPAR[7]=847.0; //Kmlat_Arginine_transport
    sPAR[8]=847.0; //Kmlat_Ornithine_efflux
    sPAR[9]=16.0; //Kmnos1_NOS
    sPAR[10]=90.0; //Kmodc_ODC
    sPAR[11]=110.0; //Vmaxarg_Arginase
    sPAR[12]=160.5; //Vmaxefflhat_Ornithine_efflux
    sPAR[13]=420.0; //Vmaxeffllat_Ornithine_efflux
    sPAR[14]=160.5; //Vmaxhat_Arginine_transport
    sPAR[15]=420.0; //Vmaxlat_Arginine_transport
    sPAR[16]=1.33; //Vmaxnos1_NOS
    sPAR[17]=0.013; //Vmaxodc_ODC
    sPAR[18]=1.0; //cytosol
    sPAR[19]=1.0; //extracellular
    X[0]=330.0; //ARGex
    X[1]=1.0; //ARGin
    X[2]=1.0; //ORN

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
