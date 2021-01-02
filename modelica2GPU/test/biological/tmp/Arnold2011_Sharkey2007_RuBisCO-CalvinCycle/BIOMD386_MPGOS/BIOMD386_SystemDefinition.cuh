
#ifndef BIOMD386_PERTHREAD_SYSTEMDEFINITION_H
#define BIOMD386_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[1]=(sPAR[8] * ((X[0] + (-0.5 * (X[0] + ((sPAR[2] * (1.0 + (X[2] / sPAR[3]))) + (((sPAR[8] - sPAR[5]) / sPAR[10]) - sqrt((pow((X[0] + ((sPAR[2] * (1.0 + (X[2] / sPAR[3]))) + ((sPAR[8] - sPAR[5]) / sPAR[10]))),2.0) + (4.0 * (((sPAR[5] * (X[0] + (sPAR[2] * (1.0 + (X[2] / sPAR[3]))))) + (sPAR[8] * (sPAR[0] - X[0]))) / sPAR[10]))))))))) / (X[0] + ((-0.5 * (X[0] + ((sPAR[2] * (1.0 + (X[2] / sPAR[3]))) + (((sPAR[8] - sPAR[5]) / sPAR[10]) - sqrt((pow((X[0] + ((sPAR[2] * (1.0 + (X[2] / sPAR[3]))) + ((sPAR[8] - sPAR[5]) / sPAR[10]))),2.0) + (4.0 * (((sPAR[5] * (X[0] + (sPAR[2] * (1.0 + (X[2] / sPAR[3]))))) + (sPAR[8] * (sPAR[0] - X[0]))) / sPAR[10])))))))) + (sPAR[2] * (1.0 + (X[2] / sPAR[3])))))));
    ACC[3]=(3.0 * (sPAR[7] * ((X[0] + ((sPAR[5] + (-3.0 * sPAR[7])) / sPAR[10])) / (X[0] + (((sPAR[5] + (-3.0 * sPAR[7])) / sPAR[10]) - sPAR[0])))));
    ACC[0]=(sPAR[4] - X[1]);
    ACC[2]=(0.25 * (sPAR[1] * ((X[0] + (-0.5 * (X[0] + ((2.0 * sPAR[0]) + ((0.25 * ((sPAR[1] + (-4.0 * sPAR[5])) / sPAR[10])) - sqrt((pow((X[0] + ((2.0 * sPAR[0]) + (0.25 * ((sPAR[1] + (-4.0 * sPAR[5])) / sPAR[10])))),2.0) + (4.0 * (((sPAR[5] * (X[0] + (2.0 * sPAR[0]))) + (0.25 * (sPAR[1] * (sPAR[0] - X[0])))) / sPAR[10]))))))))) / (X[0] + ((-0.5 * (X[0] + ((2.0 * sPAR[0]) + ((0.25 * ((sPAR[1] + (-4.0 * sPAR[5])) / sPAR[10])) - sqrt((pow((X[0] + ((2.0 * sPAR[0]) + (0.25 * ((sPAR[1] + (-4.0 * sPAR[5])) / sPAR[10])))),2.0) + (4.0 * (((sPAR[5] * (X[0] + (2.0 * sPAR[0]))) + (0.25 * (sPAR[1] * (sPAR[0] - X[0])))) / sPAR[10])))))))) + (2.0 * sPAR[0]))))));
    ACC[5]=(0.5 * (abs(((0.5 * (abs((ACC[1] + ACC[2])) - abs((ACC[1] - ACC[2])))) + ACC[3])) - abs(((0.5 * (abs((ACC[1] + ACC[2])) - abs((ACC[1] - ACC[2])))) - ACC[3]))));
    ACC[4]=(0.21 * (sPAR[10] * (X[2] * (sPAR[2] / (((sPAR[10] * X[0]) + (sPAR[5] - ACC[5])) * sPAR[3])))));
    F[4]=0.0;
    F[2]=0.0;
    F[0]=0.0;
    F[3]=(sPAR[9] * ((2.0 * carboxylation(ACC[1],ACC[2],ACC[3])) + ((1.5 * oxygenation(ACC[4],ACC[1],ACC[2],ACC[3])) - PGA_consumption(X[3],sPAR[6],X[1],sPAR[4],sPAR[8]))));
    F[1]=((sPAR[9] * NADPH_production(sPAR[1],ACC[0],sPAR[4])) + (-2.0 * (sPAR[9] * (carboxylation(ACC[1],ACC[2],ACC[3]) + oxygenation(ACC[4],ACC[1],ACC[2],ACC[3])))));

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
    ACC[0]=0.0; //NADP
    ACC[1]=0.008929444915419679; //Vc
    ACC[2]=0.00593820961819415; //Vj
    ACC[3]=0.110677228404984; //Vp
    ACC[4]=0.286292104000314; //phi
    ACC[5]=0.00593820961819415; //v_c
    sPAR[0]=3.74116898182615; //Gamma
    sPAR[1]=0.0307678189755062; //J
    sPAR[2]=27.2372124161502; //Kc
    sPAR[3]=16.5788431231261; //Ko
    sPAR[4]=0.5; //Nt
    sPAR[5]=0.0307674936008629; //Rd
    sPAR[6]=3.2; //Rp
    sPAR[7]=0.0307585098788555; //TPU
    sPAR[8]=0.0307602623029146; //Vcmax
    sPAR[9]=1.0; //chloroplast
    sPAR[10]=0.0307740792044142; //gm
    X[0]=24.5; //CO2
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
