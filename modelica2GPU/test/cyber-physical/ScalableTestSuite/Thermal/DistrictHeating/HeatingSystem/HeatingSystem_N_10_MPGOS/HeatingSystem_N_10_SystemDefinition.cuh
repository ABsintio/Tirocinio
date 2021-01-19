
#ifndef HEATINGSYSTEM_N_10_PERTHREAD_SYSTEMDEFINITION_H
#define HEATINGSYSTEM_N_10_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[31]=(0.5 + sat((15.0 * X[20]),-0.5,0.5));
    ACC[10]=(200.0 * ((X[0] - X[10]) * ACC[31]));
    ACC[30]=(0.5 + sat((15.0 * X[19]),-0.5,0.5));
    ACC[9]=(200.0 * ((X[0] - X[9]) * ACC[30]));
    ACC[29]=(0.5 + sat((15.0 * X[18]),-0.5,0.5));
    ACC[8]=(200.0 * ((X[0] - X[8]) * ACC[29]));
    ACC[28]=(0.5 + sat((15.0 * X[17]),-0.5,0.5));
    ACC[7]=(200.0 * ((X[0] - X[7]) * ACC[28]));
    ACC[27]=(0.5 + sat((15.0 * X[16]),-0.5,0.5));
    ACC[6]=(200.0 * ((X[0] - X[6]) * ACC[27]));
    ACC[26]=(0.5 + sat((15.0 * X[15]),-0.5,0.5));
    ACC[5]=(200.0 * ((X[0] - X[5]) * ACC[26]));
    ACC[25]=(0.5 + sat((15.0 * X[14]),-0.5,0.5));
    ACC[4]=(200.0 * ((X[0] - X[4]) * ACC[25]));
    ACC[24]=(0.5 + sat((15.0 * X[13]),-0.5,0.5));
    ACC[3]=(200.0 * ((X[0] - X[3]) * ACC[24]));
    ACC[23]=(0.5 + sat((15.0 * X[12]),-0.5,0.5));
    ACC[2]=(200.0 * ((X[0] - X[2]) * ACC[23]));
    ACC[22]=(0.5 + sat((15.0 * X[11]),-0.5,0.5));
    ACC[1]=(200.0 * ((X[0] - X[1]) * ACC[22]));
    ACC[0]=sat((7500.0 * (343.15 - X[0])),0.0,30000.0);
    ACC[21]=(278.15 + (8.0 * sin((7.27220521664304e-05 * T))));
    ACC[11]=(150.0 * (X[1] - ACC[21]));
    ACC[12]=(150.0 * (X[2] - ACC[21]));
    ACC[13]=(150.0 * (X[3] - ACC[21]));
    ACC[14]=(150.0 * (X[4] - ACC[21]));
    ACC[15]=(150.0 * (X[5] - ACC[21]));
    ACC[16]=(150.0 * (X[6] - ACC[21]));
    ACC[17]=(150.0 * (X[7] - ACC[21]));
    ACC[18]=(150.0 * (X[8] - ACC[21]));
    ACC[19]=(150.0 * (X[9] - ACC[21]));
    ACC[20]=(150.0 * (X[10] - ACC[21]));
    F[20]=(50.0 * hist(X[20],(293.15 - X[10]),0.5));
    F[19]=(50.0 * hist(X[19],(293.15 - X[9]),0.5));
    F[18]=(50.0 * hist(X[18],(293.15 - X[8]),0.5));
    F[17]=(50.0 * hist(X[17],(293.15 - X[7]),0.5));
    F[16]=(50.0 * hist(X[16],(293.15 - X[6]),0.5));
    F[15]=(50.0 * hist(X[15],(293.15 - X[5]),0.5));
    F[14]=(50.0 * hist(X[14],(293.15 - X[4]),0.5));
    F[13]=(50.0 * hist(X[13],(293.15 - X[3]),0.5));
    F[12]=(50.0 * hist(X[12],(293.15 - X[2]),0.5));
    F[11]=(50.0 * hist(X[11],(293.15 - X[1]),0.5));
    F[0]=((5e-08 * ACC[0]) + ((((((((((-5e-08 * ACC[10]) - (5e-08 * ACC[9])) - (5e-08 * ACC[8])) - (5e-08 * ACC[7])) - (5e-08 * ACC[6])) - (5e-08 * ACC[5])) - (5e-08 * ACC[4])) - (5e-08 * ACC[3])) - (5e-08 * ACC[1])) - (5e-08 * ACC[2])));
    F[1]=(1e-07 * (ACC[1] - ACC[11]));
    F[2]=((ACC[2] - ACC[12]) / 11497777.77777778);
    F[3]=((ACC[3] - ACC[13]) / 12995555.55555556);
    F[4]=((ACC[4] - ACC[14]) / 14493333.33333333);
    F[5]=((ACC[5] - ACC[15]) / 15991111.11111111);
    F[6]=((ACC[6] - ACC[16]) / 17488888.88888889);
    F[7]=((ACC[7] - ACC[17]) / 18986666.66666667);
    F[8]=((ACC[8] - ACC[18]) / 20484444.44444445);
    F[9]=((ACC[9] - ACC[19]) / 21982222.22222222);
    F[10]=((ACC[10] - ACC[20]) / 23480000.0);

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
    ACC[0]=0.0; //Qd
    ACC[1]=0.0; //Qh[1]
    ACC[2]=0.0; //Qh[2]
    ACC[3]=0.0; //Qh[3]
    ACC[4]=0.0; //Qh[4]
    ACC[5]=0.0; //Qh[5]
    ACC[6]=0.0; //Qh[6]
    ACC[7]=0.0; //Qh[7]
    ACC[8]=0.0; //Qh[8]
    ACC[9]=0.0; //Qh[9]
    ACC[10]=0.0; //Qh[10]
    ACC[11]=0.0; //Que[1]
    ACC[12]=0.0; //Que[2]
    ACC[13]=0.0; //Que[3]
    ACC[14]=0.0; //Que[4]
    ACC[15]=0.0; //Que[5]
    ACC[16]=0.0; //Que[6]
    ACC[17]=0.0; //Que[7]
    ACC[18]=0.0; //Que[8]
    ACC[19]=0.0; //Que[9]
    ACC[20]=0.0; //Que[10]
    ACC[21]=0.0; //Text
    ACC[22]=0.0; //u[1]
    ACC[23]=0.0; //u[2]
    ACC[24]=0.0; //u[3]
    ACC[25]=0.0; //u[4]
    ACC[26]=0.0; //u[5]
    ACC[27]=0.0; //u[6]
    ACC[28]=0.0; //u[7]
    ACC[29]=0.0; //u[8]
    ACC[30]=0.0; //u[9]
    ACC[31]=0.0; //u[10]
    sPARi[0]=10; //N
    X[0]=343.15; //Td
    X[1]=293.15; //Tu[1]
    X[2]=293.15; //Tu[2]
    X[3]=293.15; //Tu[3]
    X[4]=293.15; //Tu[4]
    X[5]=293.15; //Tu[5]
    X[6]=293.15; //Tu[6]
    X[7]=293.15; //Tu[7]
    X[8]=293.15; //Tu[8]
    X[9]=293.15; //Tu[9]
    X[10]=293.15; //Tu[10]
    X[11]=-0.5; //x[1]
    X[12]=-0.5; //x[2]
    X[13]=-0.5; //x[3]
    X[14]=-0.5; //x[4]
    X[15]=-0.5; //x[5]
    X[16]=-0.5; //x[6]
    X[17]=-0.5; //x[7]
    X[18]=-0.5; //x[8]
    X[19]=-0.5; //x[9]
    X[20]=-0.5; //x[10]

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
