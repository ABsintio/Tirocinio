
#ifndef BIOMD569_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD569_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[20]=(Ligand_Unbinding_1(4495.0,X[1]) + (Ligand_Unbinding_2(4495.0,X[2]) + (Ligand_Unbinding_3(4495.0,X[3]) + (Ligand_Unbinding_4(4495.0,X[4]) + (Ligand_Unbinding_1(270.4,X[16]) + (Ligand_Unbinding_2(270.4,X[17]) + (Ligand_Unbinding_3(270.4,X[18]) + (Ligand_Unbinding_4(270.4,X[19]) + (Ligand_Unbinding_1(16.65,X[11]) + (Ligand_Unbinding_2(16.65,X[12]) + (Ligand_Unbinding_3(16.65,X[13]) + (Ligand_Unbinding_4(16.65,X[14]) + (Ligand_Unbinding_1(1.149,X[6]) + (Ligand_Unbinding_2(1.149,X[7]) + (Ligand_Unbinding_3(1.149,X[8]) + (Ligand_Unbinding_4(1.149,X[9]) + ((((((((((((((((-(Ligand_Binding_4(5000000.0,X[8],X[20]))) - Ligand_Binding_1(5000000.0,X[0],X[20])) - Ligand_Binding_2(5000000.0,X[6],X[20])) - Ligand_Unbinding_4(5000000.0,X[13])) - Ligand_Binding_2(5000000.0,X[11],X[20])) - Ligand_Binding_4(5000000.0,X[18],X[20])) - Ligand_Binding_2(5000000.0,X[16],X[20])) - Ligand_Binding_4(5000000.0,X[3],X[20])) - Ligand_Binding_3(5000000.0,X[2],X[20])) - Ligand_Binding_1(5000000.0,X[15],X[20])) - Ligand_Binding_3(5000000.0,X[17],X[20])) - Ligand_Binding_1(5000000.0,X[10],X[20])) - Ligand_Binding_3(5000000.0,X[12],X[20])) - Ligand_Binding_1(5000000.0,X[5],X[20])) - Ligand_Binding_2(5000000.0,X[1],X[20])) - Ligand_Binding_3(5000000.0,X[7],X[20]))))))))))))))))));
    F[9]=((50000.0 * X[14]) + (Ligand_Binding_4(5000000.0,X[8],X[20]) + ((-691.0 * X[9]) - Ligand_Unbinding_4(1.149,X[9]))));
    F[8]=((13133.9255365637 * X[13]) + (Ligand_Binding_3(5000000.0,X[7],X[20]) + (Ligand_Unbinding_4(1.149,X[9]) + ((-2630.592042250873 * X[8]) + ((-(Ligand_Unbinding_3(1.149,X[8]))) - Ligand_Binding_4(5000000.0,X[8],X[20]))))));
    F[7]=((3450.0 * X[12]) + (Ligand_Binding_2(5000000.0,X[6],X[20]) + (Ligand_Unbinding_3(1.149,X[8]) + ((-10014.49275362319 * X[7]) + ((-(Ligand_Unbinding_2(1.149,X[7]))) - Ligand_Binding_3(5000000.0,X[7],X[20]))))));
    F[6]=((906.2408620228953 * X[11]) + (Ligand_Binding_1(5000000.0,X[5],X[20]) + (Ligand_Unbinding_2(1.149,X[7]) + ((-38124.52235146193 * X[6]) + ((-(Ligand_Unbinding_1(1.149,X[6]))) - Ligand_Binding_2(5000000.0,X[6],X[20]))))));
    F[5]=((238.0500000000001 * X[10]) + (Ligand_Unbinding_1(1.149,X[6]) + ((-145137.5761394665 * X[5]) - Ligand_Binding_1(5000000.0,X[5],X[20]))));
    F[14]=((20000.0 * X[19]) + ((691.0 * X[9]) + (Ligand_Unbinding_4(5000000.0,X[13]) + ((-50145.0 * X[14]) - Ligand_Unbinding_4(16.65,X[14])))));
    F[13]=((4963.869458396342 * X[18]) + ((2630.592042250873 * X[8]) + (Ligand_Binding_3(5000000.0,X[12],X[20]) + (Ligand_Unbinding_4(16.65,X[14]) + ((-13718.1471854821 * X[13]) + ((-(Ligand_Unbinding_3(16.65,X[13]))) - Ligand_Unbinding_4(5000000.0,X[13])))))));
    F[12]=((1232.0 * X[17]) + ((10014.49275362319 * X[7]) + (Ligand_Binding_2(5000000.0,X[11],X[20]) + (Ligand_Unbinding_3(16.65,X[13]) + ((-5803.896103896104 * X[12]) + ((-(Ligand_Unbinding_2(16.65,X[12]))) - Ligand_Binding_3(5000000.0,X[12],X[20])))))));
    F[11]=((305.7743586372147 * X[16]) + ((38124.52235146193 * X[6]) + (Ligand_Binding_1(5000000.0,X[10],X[20]) + (Ligand_Unbinding_2(16.65,X[12]) + ((-10390.35853926966 * X[11]) + ((-(Ligand_Unbinding_1(16.65,X[11]))) - Ligand_Binding_2(5000000.0,X[11],X[20])))))));
    F[10]=((75.89120000000001 * X[15]) + ((145137.5761394665 * X[5]) + (Ligand_Unbinding_1(16.65,X[11]) + ((-38450.64908922247 * X[10]) - Ligand_Binding_1(5000000.0,X[10],X[20])))));
    F[19]=((300000.0 * X[4]) + ((145.0 * X[14]) + (Ligand_Binding_4(5000000.0,X[18],X[20]) + ((-20860.0 * X[19]) - Ligand_Unbinding_4(270.4,X[19])))));
    F[4]=((860.0 * X[19]) + (Ligand_Binding_4(5000000.0,X[3],X[20]) + ((-300000.0 * X[4]) - Ligand_Unbinding_4(4495.0,X[4]))));
    F[18]=((73545.90403278757 * X[3]) + ((584.2216489184007 * X[13]) + (Ligand_Binding_3(5000000.0,X[17],X[20]) + (Ligand_Unbinding_4(270.4,X[19]) + ((-8471.88262912276 * X[18]) + ((-(Ligand_Unbinding_3(270.4,X[18]))) - Ligand_Binding_4(5000000.0,X[18],X[20])))))));
    F[3]=((3508.013170726418 * X[18]) + (Ligand_Binding_3(5000000.0,X[2],X[20]) + (Ligand_Unbinding_4(4495.0,X[4]) + ((-73545.90403278757 * X[3]) + ((-(Ligand_Unbinding_3(4495.0,X[3]))) - Ligand_Binding_4(5000000.0,X[3],X[20]))))));
    F[17]=((18030.0 * X[2]) + ((2353.896103896104 * X[12]) + (Ligand_Binding_2(5000000.0,X[16],X[20]) + (Ligand_Unbinding_3(270.4,X[18]) + ((-15541.48419301165 * X[17]) + ((-(Ligand_Unbinding_2(270.4,X[17]))) - Ligand_Binding_3(5000000.0,X[17],X[20])))))));
    F[2]=((14309.48419301165 * X[17]) + (Ligand_Binding_2(5000000.0,X[1],X[20]) + (Ligand_Unbinding_3(4495.0,X[3]) + ((-18030.0 * X[2]) + ((-(Ligand_Unbinding_2(4495.0,X[2]))) - Ligand_Binding_3(5000000.0,X[2],X[20]))))));
    F[16]=((4420.108832370533 * X[1]) + ((9484.117677246764 * X[11]) + (Ligand_Binding_1(5000000.0,X[15],X[20]) + (Ligand_Unbinding_2(270.4,X[17]) + ((-58675.37786490042 * X[16]) + ((-(Ligand_Unbinding_1(270.4,X[16]))) - Ligand_Binding_2(5000000.0,X[16],X[20])))))));
    F[1]=((58369.60350626321 * X[16]) + (Ligand_Binding_1(5000000.0,X[0],X[20]) + (Ligand_Unbinding_2(4495.0,X[2]) + ((-4420.108832370533 * X[1]) + ((-(Ligand_Unbinding_1(4495.0,X[1]))) - Ligand_Binding_2(5000000.0,X[1],X[20]))))));
    F[15]=((1083.603 * X[0]) + ((38212.59908922247 * X[10]) + (Ligand_Unbinding_1(270.4,X[16]) + ((-238170.4701186631 * X[15]) - Ligand_Binding_1(5000000.0,X[15],X[20])))));
    F[0]=((238094.5789186631 * X[15]) + (Ligand_Unbinding_1(4495.0,X[1]) + ((-1083.603 * X[0]) - Ligand_Binding_1(5000000.0,X[0],X[20]))));

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
    X[0]=8.30269391581363e-07; //B0
    X[1]=0.0; //B1
    X[2]=0.0; //B2
    X[3]=0.0; //B3
    X[4]=0.0; //B4
    X[5]=0.0; //L0
    X[6]=0.0; //L1
    X[7]=0.0; //L2
    X[8]=0.0; //L3
    X[9]=0.0; //L4
    X[10]=0.0; //M0
    X[11]=0.0; //M1
    X[12]=0.0; //M2
    X[13]=0.0; //M3
    X[14]=0.0; //M4
    X[15]=0.0; //S0
    X[16]=0.0; //S1
    X[17]=0.0; //S2
    X[18]=0.0; //S3
    X[19]=0.0; //S4
    X[20]=0.0008302693915813631; //glu

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
