
#ifndef BIOMD266_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD266_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[11]=piecewise(1.0,eq(sPAR[2],6.0),1.0);
    ACC[10]=piecewise(18.0,eq(sPAR[2],1.0),1.0);
    ACC[9]=piecewise(1.0,eq(sPAR[2],12.0),1.0);
    ACC[8]=piecewise(16.0,eq(sPAR[2],1.0),1.0);
    ACC[7]=piecewise(50.0,eq(sPAR[2],1.0),1.0);
    ACC[6]=piecewise(1.0,eq(sPAR[2],50.0),1.0);
    ACC[5]=piecewise(1.0,eq(sPAR[2],16.0),1.0);
    ACC[4]=piecewise(16.0,eq(sPAR[2],1.0),1.0);
    ACC[3]=piecewise(16.0,eq(sPAR[2],1.0),1.0);
    ACC[2]=piecewise(1.0,eq(sPAR[2],16.0),1.0);
    ACC[1]=piecewise(1.0,eq(sPAR[2],6.0),1.0);
    ACC[0]=piecewise(1.0,eq(sPAR[2],1.0),1.0);
    ACC[13]=piecewise(1.0,eq(sPAR[2],8.0),1.0);
    ACC[12]=piecewise(8.0,eq(sPAR[2],1.0),1.0);
    ACC[14]=(31.912 * (pow(X[0],0.968) * (pow(X[2],-0.194) * (pow(X[7],0.009679999999999999) * (pow(ACC[12],0.968) * pow(ACC[11],0.0323))))));
    ACC[15]=(89.935 * (pow(X[1],0.75) * (pow(X[6],-0.4) * ACC[13])));
    ACC[16]=(142.72 * (pow(X[1],0.517) * (pow(X[2],-0.179) * (pow(X[3],0.183) * (pow(X[6],-0.276) * (pow(ACC[13],0.6889999999999999) * pow(ACC[3],0.311)))))));
    ACC[17]=(30.12 * (pow(X[1],-0.00333) * (pow(X[2],0.575) * (pow(X[3],-0.17) * (pow(X[4],0.00333) * (pow(ACC[0],0.5111) * (pow(ACC[1],0.0667) * (pow(ACC[2],0.411) * pow(ACC[9],0.0111)))))))));
    ACC[18]=(7.8819 * (pow(X[2],0.394) * (pow(X[3],-0.392) * (pow(X[4],-0.01) * (pow(X[5],0.0128) * (pow(ACC[2],0.949) * pow(ACC[7],0.0513)))))));
    ACC[19]=(76.434 * (pow(X[2],-0.412) * (pow(X[3],0.593) * (pow(ACC[3],0.718) * (pow(ACC[4],0.18) * pow(ACC[6],0.103))))));
    ACC[20]=(11.07 * (pow(X[3],0.5) * ACC[4]));
    ACC[21]=(3.4556 * (pow(X[1],-0.0429) * (pow(X[2],0.214) * (pow(X[4],0.386) * (pow(ACC[5],0.857) * pow(ACC[9],0.143))))));
    ACC[22]=(11.06 * (pow(X[2],0.04) * (pow(X[3],0.32) * (pow(X[4],0.16) * (pow(ACC[5],0.6) * pow(ACC[6],0.4))))));
    ACC[23]=(4.929 * (pow(X[2],-0.04) * (pow(X[4],-0.04) * (pow(X[5],0.25) * (pow(ACC[7],0.2) * pow(ACC[8],0.8))))));
    ACC[24]=(0.19424 * (pow(X[1],-0.3) * (pow(X[2],0.3) * (pow(X[4],0.3) * ACC[9]))));
    ACC[26]=(1.0939 * (pow(X[6],0.2) * ACC[10]));
    ACC[25]=ACC[26];
    ACC[27]=(1.2288 * (pow(X[7],0.3) * ACC[11]));
    F[1]=(ACC[14] - ACC[15]);
    F[2]=(ACC[16] - ACC[17]);
    F[3]=(ACC[18] - ACC[19]);
    F[4]=(ACC[20] - ACC[21]);
    F[5]=(ACC[22] - ACC[23]);
    F[6]=(ACC[24] - ACC[26]);
    F[7]=(ACC[26] - ACC[27]);
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
    ACC[0]=0.0; //X10
    ACC[1]=0.0; //X11
    ACC[2]=0.0; //X12f
    ACC[3]=0.0; //X12r
    ACC[4]=0.0; //X13
    ACC[5]=0.0; //X14
    ACC[6]=0.0; //X15f
    ACC[7]=0.0; //X15r
    ACC[8]=0.0; //X16
    ACC[9]=0.0; //X17
    ACC[10]=0.0; //X18
    ACC[11]=0.0; //X19
    ACC[12]=0.0; //X8
    ACC[13]=0.0; //X9
    ACC[14]=0.0; //flux_X1_in
    ACC[15]=0.0; //flux_X1_out
    ACC[16]=0.0; //flux_X2_in
    ACC[17]=0.0; //flux_X2_out
    ACC[18]=0.0; //flux_X3_in
    ACC[19]=0.0; //flux_X3_out
    ACC[20]=0.0; //flux_X4_in
    ACC[21]=0.0; //flux_X4_out
    ACC[22]=0.0; //flux_X5_in
    ACC[23]=0.0; //flux_X5_out
    ACC[24]=0.0; //flux_X6_in
    ACC[25]=0.0; //flux_X6_out
    ACC[26]=0.0; //flux_X7_in
    ACC[27]=0.0; //flux_X7_out
    sPAR[0]=1.0; //cell
    sPAR[1]=1.0; //external_
    sPAR[2]=0.0; //heat_shock
    X[0]=1.0; //X0
    X[1]=0.03; //X1
    X[2]=1.0; //X2
    X[3]=0.1; //X3
    X[4]=0.7; //X4
    X[5]=1.0; //X5
    X[6]=0.02; //X6
    X[7]=0.05; //X7

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
