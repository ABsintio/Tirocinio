
#ifndef BIOMD385_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD385_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[0]=(0.03076923076923077 * (sPAR[10] * (sPAR[5] / sqrt((1.0 + pow((sPAR[10] * (sPAR[5] / sPAR[1])),2.0))))));
    ACC[3]=(0.25 * (ACC[0] * ((X[0] + (-0.8 * (((((1.6 * ((0.25 * ACC[0]) - sPAR[6])) + ((((sPAR[14] * (sPAR[13] * (sPAR[6] / X[0]))) + sPAR[12]) * (X[0] + (2.0 * sPAR[0]))) + (0.25 * (sPAR[14] * (sPAR[13] * (ACC[0] * ((sPAR[0] - X[0]) / X[0]))))))) / (1.6 - (sPAR[14] * (sPAR[13] * ((X[0] + (2.0 * sPAR[0])) / X[0]))))) + sqrt((pow((((1.6 * ((0.25 * ACC[0]) - sPAR[6])) + ((((sPAR[14] * (sPAR[13] * (sPAR[6] / X[0]))) + sPAR[12]) * (X[0] + (2.0 * sPAR[0]))) + (0.25 * (sPAR[14] * (sPAR[13] * (ACC[0] * ((sPAR[0] - X[0]) / X[0]))))))) / (1.6 - (sPAR[14] * (sPAR[13] * ((X[0] + (2.0 * sPAR[0])) / X[0]))))),2.0) + (4.0 * (sPAR[12] * (((sPAR[6] * (X[0] + (2.0 * sPAR[0]))) + (0.25 * (ACC[0] * (sPAR[0] - X[0])))) / (1.6 - (sPAR[14] * (sPAR[13] * ((X[0] + (2.0 * sPAR[0])) / X[0])))))))))) / (sPAR[12] + (0.5 * (sPAR[14] * (sPAR[13] * (((((1.6 * ((0.25 * ACC[0]) - sPAR[6])) + ((((sPAR[14] * (sPAR[13] * (sPAR[6] / X[0]))) + sPAR[12]) * (X[0] + (2.0 * sPAR[0]))) + (0.25 * (sPAR[14] * (sPAR[13] * (ACC[0] * ((sPAR[0] - X[0]) / X[0]))))))) / (1.6 - (sPAR[14] * (sPAR[13] * ((X[0] + (2.0 * sPAR[0])) / X[0]))))) + sqrt((pow((((1.6 * ((0.25 * ACC[0]) - sPAR[6])) + ((((sPAR[14] * (sPAR[13] * (sPAR[6] / X[0]))) + sPAR[12]) * (X[0] + (2.0 * sPAR[0]))) + (0.25 * (sPAR[14] * (sPAR[13] * (ACC[0] * ((sPAR[0] - X[0]) / X[0]))))))) / (1.6 - (sPAR[14] * (sPAR[13] * ((X[0] + (2.0 * sPAR[0])) / X[0]))))),2.0) + (4.0 * (sPAR[12] * (((sPAR[6] * (X[0] + (2.0 * sPAR[0]))) + (0.25 * (ACC[0] * (sPAR[0] - X[0])))) / (1.6 - (sPAR[14] * (sPAR[13] * ((X[0] + (2.0 * sPAR[0])) / X[0])))))))))) / X[0])))))))) / (X[0] + ((-0.8 * (((((1.6 * ((0.25 * ACC[0]) - sPAR[6])) + ((((sPAR[14] * (sPAR[13] * (sPAR[6] / X[0]))) + sPAR[12]) * (X[0] + (2.0 * sPAR[0]))) + (0.25 * (sPAR[14] * (sPAR[13] * (ACC[0] * ((sPAR[0] - X[0]) / X[0]))))))) / (1.6 - (sPAR[14] * (sPAR[13] * ((X[0] + (2.0 * sPAR[0])) / X[0]))))) + sqrt((pow((((1.6 * ((0.25 * ACC[0]) - sPAR[6])) + ((((sPAR[14] * (sPAR[13] * (sPAR[6] / X[0]))) + sPAR[12]) * (X[0] + (2.0 * sPAR[0]))) + (0.25 * (sPAR[14] * (sPAR[13] * (ACC[0] * ((sPAR[0] - X[0]) / X[0]))))))) / (1.6 - (sPAR[14] * (sPAR[13] * ((X[0] + (2.0 * sPAR[0])) / X[0]))))),2.0) + (4.0 * (sPAR[12] * (((sPAR[6] * (X[0] + (2.0 * sPAR[0]))) + (0.25 * (ACC[0] * (sPAR[0] - X[0])))) / (1.6 - (sPAR[14] * (sPAR[13] * ((X[0] + (2.0 * sPAR[0])) / X[0])))))))))) / (sPAR[12] + (0.5 * (sPAR[14] * (sPAR[13] * (((((1.6 * ((0.25 * ACC[0]) - sPAR[6])) + ((((sPAR[14] * (sPAR[13] * (sPAR[6] / X[0]))) + sPAR[12]) * (X[0] + (2.0 * sPAR[0]))) + (0.25 * (sPAR[14] * (sPAR[13] * (ACC[0] * ((sPAR[0] - X[0]) / X[0]))))))) / (1.6 - (sPAR[14] * (sPAR[13] * ((X[0] + (2.0 * sPAR[0])) / X[0]))))) + sqrt((pow((((1.6 * ((0.25 * ACC[0]) - sPAR[6])) + ((((sPAR[14] * (sPAR[13] * (sPAR[6] / X[0]))) + sPAR[12]) * (X[0] + (2.0 * sPAR[0]))) + (0.25 * (sPAR[14] * (sPAR[13] * (ACC[0] * ((sPAR[0] - X[0]) / X[0]))))))) / (1.6 - (sPAR[14] * (sPAR[13] * ((X[0] + (2.0 * sPAR[0])) / X[0]))))),2.0) + (4.0 * (sPAR[12] * (((sPAR[6] * (X[0] + (2.0 * sPAR[0]))) + (0.25 * (ACC[0] * (sPAR[0] - X[0])))) / (1.6 - (sPAR[14] * (sPAR[13] * ((X[0] + (2.0 * sPAR[0])) / X[0])))))))))) / X[0]))))))) + (2.0 * sPAR[0]))))));
    ACC[1]=(sPAR[4] - X[1]);
    ACC[2]=(sPAR[9] * ((X[0] + (-0.8 * (((((1.6 * (sPAR[9] - sPAR[6])) + ((((sPAR[14] * (sPAR[13] * (sPAR[6] / X[0]))) + sPAR[12]) * (X[0] + (sPAR[2] * (1.0 + (X[2] / sPAR[3]))))) + (sPAR[14] * (sPAR[13] * (sPAR[9] * ((sPAR[0] - X[0]) / X[0])))))) / (1.6 - (sPAR[14] * (sPAR[13] * ((X[0] + (sPAR[2] * (1.0 + (X[2] / sPAR[3])))) / X[0]))))) + sqrt((pow((((1.6 * (sPAR[9] - sPAR[6])) + ((((sPAR[14] * (sPAR[13] * (sPAR[6] / X[0]))) + sPAR[12]) * (X[0] + (sPAR[2] * (1.0 + (X[2] / sPAR[3]))))) + (sPAR[14] * (sPAR[13] * (sPAR[9] * ((sPAR[0] - X[0]) / X[0])))))) / (1.6 - (sPAR[14] * (sPAR[13] * ((X[0] + (sPAR[2] * (1.0 + (X[2] / sPAR[3])))) / X[0]))))),2.0) + (4.0 * (sPAR[12] * (((sPAR[6] * (X[0] + (sPAR[2] * (1.0 + (X[2] / sPAR[3]))))) + (sPAR[9] * (sPAR[0] - X[0]))) / (1.6 - (sPAR[14] * (sPAR[13] * ((X[0] + (sPAR[2] * (1.0 + (X[2] / sPAR[3])))) / X[0])))))))))) / (sPAR[12] + (0.5 * (sPAR[14] * (sPAR[13] * (((((1.6 * (sPAR[9] - sPAR[6])) + ((((sPAR[14] * (sPAR[13] * (sPAR[6] / X[0]))) + sPAR[12]) * (X[0] + (sPAR[2] * (1.0 + (X[2] / sPAR[3]))))) + (sPAR[14] * (sPAR[13] * (sPAR[9] * ((sPAR[0] - X[0]) / X[0])))))) / (1.6 - (sPAR[14] * (sPAR[13] * ((X[0] + (sPAR[2] * (1.0 + (X[2] / sPAR[3])))) / X[0]))))) + sqrt((pow((((1.6 * (sPAR[9] - sPAR[6])) + ((((sPAR[14] * (sPAR[13] * (sPAR[6] / X[0]))) + sPAR[12]) * (X[0] + (sPAR[2] * (1.0 + (X[2] / sPAR[3]))))) + (sPAR[14] * (sPAR[13] * (sPAR[9] * ((sPAR[0] - X[0]) / X[0])))))) / (1.6 - (sPAR[14] * (sPAR[13] * ((X[0] + (sPAR[2] * (1.0 + (X[2] / sPAR[3])))) / X[0]))))),2.0) + (4.0 * (sPAR[12] * (((sPAR[6] * (X[0] + (sPAR[2] * (1.0 + (X[2] / sPAR[3]))))) + (sPAR[9] * (sPAR[0] - X[0]))) / (1.6 - (sPAR[14] * (sPAR[13] * ((X[0] + (sPAR[2] * (1.0 + (X[2] / sPAR[3])))) / X[0])))))))))) / X[0])))))))) / (X[0] + ((-0.8 * (((((1.6 * (sPAR[9] - sPAR[6])) + ((((sPAR[14] * (sPAR[13] * (sPAR[6] / X[0]))) + sPAR[12]) * (X[0] + (sPAR[2] * (1.0 + (X[2] / sPAR[3]))))) + (sPAR[14] * (sPAR[13] * (sPAR[9] * ((sPAR[0] - X[0]) / X[0])))))) / (1.6 - (sPAR[14] * (sPAR[13] * ((X[0] + (sPAR[2] * (1.0 + (X[2] / sPAR[3])))) / X[0]))))) + sqrt((pow((((1.6 * (sPAR[9] - sPAR[6])) + ((((sPAR[14] * (sPAR[13] * (sPAR[6] / X[0]))) + sPAR[12]) * (X[0] + (sPAR[2] * (1.0 + (X[2] / sPAR[3]))))) + (sPAR[14] * (sPAR[13] * (sPAR[9] * ((sPAR[0] - X[0]) / X[0])))))) / (1.6 - (sPAR[14] * (sPAR[13] * ((X[0] + (sPAR[2] * (1.0 + (X[2] / sPAR[3])))) / X[0]))))),2.0) + (4.0 * (sPAR[12] * (((sPAR[6] * (X[0] + (sPAR[2] * (1.0 + (X[2] / sPAR[3]))))) + (sPAR[9] * (sPAR[0] - X[0]))) / (1.6 - (sPAR[14] * (sPAR[13] * ((X[0] + (sPAR[2] * (1.0 + (X[2] / sPAR[3])))) / X[0])))))))))) / (sPAR[12] + (0.5 * (sPAR[14] * (sPAR[13] * (((((1.6 * (sPAR[9] - sPAR[6])) + ((((sPAR[14] * (sPAR[13] * (sPAR[6] / X[0]))) + sPAR[12]) * (X[0] + (sPAR[2] * (1.0 + (X[2] / sPAR[3]))))) + (sPAR[14] * (sPAR[13] * (sPAR[9] * ((sPAR[0] - X[0]) / X[0])))))) / (1.6 - (sPAR[14] * (sPAR[13] * ((X[0] + (sPAR[2] * (1.0 + (X[2] / sPAR[3])))) / X[0]))))) + sqrt((pow((((1.6 * (sPAR[9] - sPAR[6])) + ((((sPAR[14] * (sPAR[13] * (sPAR[6] / X[0]))) + sPAR[12]) * (X[0] + (sPAR[2] * (1.0 + (X[2] / sPAR[3]))))) + (sPAR[14] * (sPAR[13] * (sPAR[9] * ((sPAR[0] - X[0]) / X[0])))))) / (1.6 - (sPAR[14] * (sPAR[13] * ((X[0] + (sPAR[2] * (1.0 + (X[2] / sPAR[3])))) / X[0]))))),2.0) + (4.0 * (sPAR[12] * (((sPAR[6] * (X[0] + (sPAR[2] * (1.0 + (X[2] / sPAR[3]))))) + (sPAR[9] * (sPAR[0] - X[0]))) / (1.6 - (sPAR[14] * (sPAR[13] * ((X[0] + (sPAR[2] * (1.0 + (X[2] / sPAR[3])))) / X[0])))))))))) / X[0]))))))) + (sPAR[2] * (1.0 + (X[2] / sPAR[3])))))));
    ACC[4]=(3.0 * (sPAR[8] * ((X[0] + (-0.8 * (((((1.6 * ((3.0 * sPAR[8]) - sPAR[6])) + ((((sPAR[14] * (sPAR[13] * (sPAR[6] / X[0]))) + sPAR[12]) * (X[0] - sPAR[0])) + (-3.0 * (sPAR[14] * (sPAR[13] * sPAR[8]))))) / (1.6 - (sPAR[14] * (sPAR[13] * ((X[0] - sPAR[0]) / X[0]))))) + sqrt((pow((((1.6 * ((3.0 * sPAR[8]) - sPAR[6])) + ((((sPAR[14] * (sPAR[13] * (sPAR[6] / X[0]))) + sPAR[12]) * (X[0] - sPAR[0])) + (-3.0 * (sPAR[14] * (sPAR[13] * sPAR[8]))))) / (1.6 - (sPAR[14] * (sPAR[13] * ((X[0] - sPAR[0]) / X[0]))))),2.0) + (4.0 * (sPAR[12] * (((sPAR[6] * (X[0] - sPAR[0])) + (-3.0 * (sPAR[8] * X[0]))) / (1.6 - (sPAR[14] * (sPAR[13] * ((X[0] - sPAR[0]) / X[0])))))))))) / (sPAR[12] + (0.5 * (sPAR[14] * (sPAR[13] * (((((1.6 * ((3.0 * sPAR[8]) - sPAR[6])) + ((((sPAR[14] * (sPAR[13] * (sPAR[6] / X[0]))) + sPAR[12]) * (X[0] - sPAR[0])) + (-3.0 * (sPAR[14] * (sPAR[13] * sPAR[8]))))) / (1.6 - (sPAR[14] * (sPAR[13] * ((X[0] - sPAR[0]) / X[0]))))) + sqrt((pow((((1.6 * ((3.0 * sPAR[8]) - sPAR[6])) + ((((sPAR[14] * (sPAR[13] * (sPAR[6] / X[0]))) + sPAR[12]) * (X[0] - sPAR[0])) + (-3.0 * (sPAR[14] * (sPAR[13] * sPAR[8]))))) / (1.6 - (sPAR[14] * (sPAR[13] * ((X[0] - sPAR[0]) / X[0]))))),2.0) + (4.0 * (sPAR[12] * (((sPAR[6] * (X[0] - sPAR[0])) + (-3.0 * (sPAR[8] * X[0]))) / (1.6 - (sPAR[14] * (sPAR[13] * ((X[0] - sPAR[0]) / X[0])))))))))) / X[0])))))))) / (X[0] + ((-0.8 * (((((1.6 * ((3.0 * sPAR[8]) - sPAR[6])) + ((((sPAR[14] * (sPAR[13] * (sPAR[6] / X[0]))) + sPAR[12]) * (X[0] - sPAR[0])) + (-3.0 * (sPAR[14] * (sPAR[13] * sPAR[8]))))) / (1.6 - (sPAR[14] * (sPAR[13] * ((X[0] - sPAR[0]) / X[0]))))) + sqrt((pow((((1.6 * ((3.0 * sPAR[8]) - sPAR[6])) + ((((sPAR[14] * (sPAR[13] * (sPAR[6] / X[0]))) + sPAR[12]) * (X[0] - sPAR[0])) + (-3.0 * (sPAR[14] * (sPAR[13] * sPAR[8]))))) / (1.6 - (sPAR[14] * (sPAR[13] * ((X[0] - sPAR[0]) / X[0]))))),2.0) + (4.0 * (sPAR[12] * (((sPAR[6] * (X[0] - sPAR[0])) + (-3.0 * (sPAR[8] * X[0]))) / (1.6 - (sPAR[14] * (sPAR[13] * ((X[0] - sPAR[0]) / X[0])))))))))) / (sPAR[12] + (0.5 * (sPAR[14] * (sPAR[13] * (((((1.6 * ((3.0 * sPAR[8]) - sPAR[6])) + ((((sPAR[14] * (sPAR[13] * (sPAR[6] / X[0]))) + sPAR[12]) * (X[0] - sPAR[0])) + (-3.0 * (sPAR[14] * (sPAR[13] * sPAR[8]))))) / (1.6 - (sPAR[14] * (sPAR[13] * ((X[0] - sPAR[0]) / X[0]))))) + sqrt((pow((((1.6 * ((3.0 * sPAR[8]) - sPAR[6])) + ((((sPAR[14] * (sPAR[13] * (sPAR[6] / X[0]))) + sPAR[12]) * (X[0] - sPAR[0])) + (-3.0 * (sPAR[14] * (sPAR[13] * sPAR[8]))))) / (1.6 - (sPAR[14] * (sPAR[13] * ((X[0] - sPAR[0]) / X[0]))))),2.0) + (4.0 * (sPAR[12] * (((sPAR[6] * (X[0] - sPAR[0])) + (-3.0 * (sPAR[8] * X[0]))) / (1.6 - (sPAR[14] * (sPAR[13] * ((X[0] - sPAR[0]) / X[0])))))))))) / X[0]))))))) - sPAR[0])))));
    ACC[6]=(0.5 * (abs(((0.5 * (abs((ACC[2] + ACC[3])) - abs((ACC[2] - ACC[3])))) + ACC[4])) - abs(((0.5 * (abs((ACC[2] + ACC[3])) - abs((ACC[2] - ACC[3])))) - ACC[4]))));
    ACC[5]=(0.21 * ((sPAR[12] + (sPAR[13] * (sPAR[14] * ((ACC[6] - sPAR[6]) / X[0])))) * (X[2] * (sPAR[2] / ((sPAR[12] + ((-1.6 + (sPAR[13] * sPAR[14])) * (ACC[6] - sPAR[6]))) * sPAR[3])))));
    F[3]=(sPAR[11] * ((2.0 * carboxylation(ACC[2],ACC[3],ACC[4])) + ((1.5 * oxygenation(ACC[5],ACC[2],ACC[3],ACC[4])) - PGA_consumption(X[3],sPAR[7],X[1],sPAR[4],sPAR[9]))));
    F[1]=((sPAR[11] * NADPH_production(ACC[0],ACC[1],sPAR[4])) + (-2.0 * (sPAR[11] * (carboxylation(ACC[2],ACC[3],ACC[4]) + oxygenation(ACC[5],ACC[2],ACC[3],ACC[4])))));
    F[0]=0.0;
    F[2]=0.0;
    F[4]=0.0;

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
    ACC[0]=2.98814971559545; //J
    ACC[1]=0.0; //NADP
    ACC[2]=0.666248728058741; //Vc
    ACC[3]=0.611525371598211; //Vj
    ACC[4]=0.768408279573721; //Vp
    ACC[5]=0.116856926991465; //phi
    ACC[6]=0.611525371598211; //v_c
    sPAR[0]=3.81695; //Gamma
    sPAR[1]=112.989573402043; //Jmax
    sPAR[2]=27.8535785188479; //Kc
    sPAR[3]=41.9469718861558; //Ko
    sPAR[4]=0.5; //Nt
    sPAR[5]=1000.0; //PPFD
    sPAR[6]=0.00624227154326423; //Rd
    sPAR[7]=3.2; //Rp
    sPAR[8]=0.227712577291006; //TPU
    sPAR[9]=1.4749455852483; //Vcmax
    sPAR[10]=0.19; //alpha
    sPAR[11]=1.0; //chloroplast
    sPAR[12]=0.468615384615385; //g0
    sPAR[13]=0.6; //h
    sPAR[14]=118.69; //k
    X[0]=35.0; //CO2
    X[1]=0.21; //NADPH
    X[2]=21.0; //O2
    X[3]=2.4; //PGA
    X[4]=2.0; //RuBP

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
