
#ifndef HEATINGSYSTEM_N_20_PERTHREAD_SYSTEMDEFINITION_H
#define HEATINGSYSTEM_N_20_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[61]=(0.5 + sat((15.0 * X[40]),-0.5,0.5));
    ACC[20]=(200.0 * ((X[0] - X[20]) * ACC[61]));
    ACC[60]=(0.5 + sat((15.0 * X[39]),-0.5,0.5));
    ACC[19]=(200.0 * ((X[0] - X[19]) * ACC[60]));
    ACC[59]=(0.5 + sat((15.0 * X[38]),-0.5,0.5));
    ACC[18]=(200.0 * ((X[0] - X[18]) * ACC[59]));
    ACC[58]=(0.5 + sat((15.0 * X[37]),-0.5,0.5));
    ACC[17]=(200.0 * ((X[0] - X[17]) * ACC[58]));
    ACC[57]=(0.5 + sat((15.0 * X[36]),-0.5,0.5));
    ACC[16]=(200.0 * ((X[0] - X[16]) * ACC[57]));
    ACC[56]=(0.5 + sat((15.0 * X[35]),-0.5,0.5));
    ACC[15]=(200.0 * ((X[0] - X[15]) * ACC[56]));
    ACC[55]=(0.5 + sat((15.0 * X[34]),-0.5,0.5));
    ACC[14]=(200.0 * ((X[0] - X[14]) * ACC[55]));
    ACC[54]=(0.5 + sat((15.0 * X[33]),-0.5,0.5));
    ACC[13]=(200.0 * ((X[0] - X[13]) * ACC[54]));
    ACC[53]=(0.5 + sat((15.0 * X[32]),-0.5,0.5));
    ACC[12]=(200.0 * ((X[0] - X[12]) * ACC[53]));
    ACC[52]=(0.5 + sat((15.0 * X[31]),-0.5,0.5));
    ACC[11]=(200.0 * ((X[0] - X[11]) * ACC[52]));
    ACC[51]=(0.5 + sat((15.0 * X[30]),-0.5,0.5));
    ACC[10]=(200.0 * ((X[0] - X[10]) * ACC[51]));
    ACC[50]=(0.5 + sat((15.0 * X[29]),-0.5,0.5));
    ACC[9]=(200.0 * ((X[0] - X[9]) * ACC[50]));
    ACC[49]=(0.5 + sat((15.0 * X[28]),-0.5,0.5));
    ACC[8]=(200.0 * ((X[0] - X[8]) * ACC[49]));
    ACC[48]=(0.5 + sat((15.0 * X[27]),-0.5,0.5));
    ACC[7]=(200.0 * ((X[0] - X[7]) * ACC[48]));
    ACC[47]=(0.5 + sat((15.0 * X[26]),-0.5,0.5));
    ACC[6]=(200.0 * ((X[0] - X[6]) * ACC[47]));
    ACC[46]=(0.5 + sat((15.0 * X[25]),-0.5,0.5));
    ACC[5]=(200.0 * ((X[0] - X[5]) * ACC[46]));
    ACC[45]=(0.5 + sat((15.0 * X[24]),-0.5,0.5));
    ACC[4]=(200.0 * ((X[0] - X[4]) * ACC[45]));
    ACC[44]=(0.5 + sat((15.0 * X[23]),-0.5,0.5));
    ACC[3]=(200.0 * ((X[0] - X[3]) * ACC[44]));
    ACC[43]=(0.5 + sat((15.0 * X[22]),-0.5,0.5));
    ACC[2]=(200.0 * ((X[0] - X[2]) * ACC[43]));
    ACC[42]=(0.5 + sat((15.0 * X[21]),-0.5,0.5));
    ACC[1]=(200.0 * ((X[0] - X[1]) * ACC[42]));
    ACC[0]=sat((15000.0 * (343.15 - X[0])),0.0,60000.0);
    ACC[41]=(278.15 + (8.0 * sin((7.27220521664304e-05 * T))));
    ACC[21]=(150.0 * (X[1] - ACC[41]));
    ACC[22]=(150.0 * (X[2] - ACC[41]));
    ACC[23]=(150.0 * (X[3] - ACC[41]));
    ACC[24]=(150.0 * (X[4] - ACC[41]));
    ACC[25]=(150.0 * (X[5] - ACC[41]));
    ACC[26]=(150.0 * (X[6] - ACC[41]));
    ACC[27]=(150.0 * (X[7] - ACC[41]));
    ACC[28]=(150.0 * (X[8] - ACC[41]));
    ACC[29]=(150.0 * (X[9] - ACC[41]));
    ACC[30]=(150.0 * (X[10] - ACC[41]));
    ACC[31]=(150.0 * (X[11] - ACC[41]));
    ACC[32]=(150.0 * (X[12] - ACC[41]));
    ACC[33]=(150.0 * (X[13] - ACC[41]));
    ACC[34]=(150.0 * (X[14] - ACC[41]));
    ACC[35]=(150.0 * (X[15] - ACC[41]));
    ACC[36]=(150.0 * (X[16] - ACC[41]));
    ACC[37]=(150.0 * (X[17] - ACC[41]));
    ACC[38]=(150.0 * (X[18] - ACC[41]));
    ACC[39]=(150.0 * (X[19] - ACC[41]));
    ACC[40]=(150.0 * (X[20] - ACC[41]));
    F[40]=(50.0 * hist(X[40],(293.15 - X[20]),0.5));
    F[39]=(50.0 * hist(X[39],(293.15 - X[19]),0.5));
    F[38]=(50.0 * hist(X[38],(293.15 - X[18]),0.5));
    F[37]=(50.0 * hist(X[37],(293.15 - X[17]),0.5));
    F[36]=(50.0 * hist(X[36],(293.15 - X[16]),0.5));
    F[35]=(50.0 * hist(X[35],(293.15 - X[15]),0.5));
    F[34]=(50.0 * hist(X[34],(293.15 - X[14]),0.5));
    F[33]=(50.0 * hist(X[33],(293.15 - X[13]),0.5));
    F[32]=(50.0 * hist(X[32],(293.15 - X[12]),0.5));
    F[31]=(50.0 * hist(X[31],(293.15 - X[11]),0.5));
    F[30]=(50.0 * hist(X[30],(293.15 - X[10]),0.5));
    F[29]=(50.0 * hist(X[29],(293.15 - X[9]),0.5));
    F[28]=(50.0 * hist(X[28],(293.15 - X[8]),0.5));
    F[27]=(50.0 * hist(X[27],(293.15 - X[7]),0.5));
    F[26]=(50.0 * hist(X[26],(293.15 - X[6]),0.5));
    F[25]=(50.0 * hist(X[25],(293.15 - X[5]),0.5));
    F[24]=(50.0 * hist(X[24],(293.15 - X[4]),0.5));
    F[23]=(50.0 * hist(X[23],(293.15 - X[3]),0.5));
    F[22]=(50.0 * hist(X[22],(293.15 - X[2]),0.5));
    F[21]=(50.0 * hist(X[21],(293.15 - X[1]),0.5));
    F[0]=((2.5e-08 * ACC[0]) + ((((((((((((((((((((-2.5e-08 * ACC[20]) - (2.5e-08 * ACC[19])) - (2.5e-08 * ACC[18])) - (2.5e-08 * ACC[17])) - (2.5e-08 * ACC[16])) - (2.5e-08 * ACC[15])) - (2.5e-08 * ACC[14])) - (2.5e-08 * ACC[13])) - (2.5e-08 * ACC[12])) - (2.5e-08 * ACC[11])) - (2.5e-08 * ACC[10])) - (2.5e-08 * ACC[9])) - (2.5e-08 * ACC[8])) - (2.5e-08 * ACC[7])) - (2.5e-08 * ACC[6])) - (2.5e-08 * ACC[5])) - (2.5e-08 * ACC[4])) - (2.5e-08 * ACC[3])) - (2.5e-08 * ACC[1])) - (2.5e-08 * ACC[2])));
    F[1]=(1e-07 * (ACC[1] - ACC[21]));
    F[2]=((ACC[2] - ACC[22]) / 10709473.68421053);
    F[3]=((ACC[3] - ACC[23]) / 11418947.36842105);
    F[4]=((ACC[4] - ACC[24]) / 12128421.05263158);
    F[5]=((ACC[5] - ACC[25]) / 12837894.73684211);
    F[6]=((ACC[6] - ACC[26]) / 13547368.42105263);
    F[7]=((ACC[7] - ACC[27]) / 14256842.10526316);
    F[8]=((ACC[8] - ACC[28]) / 14966315.78947368);
    F[9]=((ACC[9] - ACC[29]) / 15675789.47368421);
    F[10]=((ACC[10] - ACC[30]) / 16385263.15789474);
    F[11]=((ACC[11] - ACC[31]) / 17094736.84210527);
    F[12]=((ACC[12] - ACC[32]) / 17804210.52631579);
    F[13]=((ACC[13] - ACC[33]) / 18513684.21052632);
    F[14]=((ACC[14] - ACC[34]) / 19223157.89473685);
    F[15]=((ACC[15] - ACC[35]) / 19932631.57894737);
    F[16]=((ACC[16] - ACC[36]) / 20642105.26315789);
    F[17]=((ACC[17] - ACC[37]) / 21351578.94736842);
    F[18]=((ACC[18] - ACC[38]) / 22061052.63157894);
    F[19]=((ACC[19] - ACC[39]) / 22770526.31578948);
    F[20]=((ACC[20] - ACC[40]) / 23480000.0);

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
    ACC[11]=0.0; //Qh[11]
    ACC[12]=0.0; //Qh[12]
    ACC[13]=0.0; //Qh[13]
    ACC[14]=0.0; //Qh[14]
    ACC[15]=0.0; //Qh[15]
    ACC[16]=0.0; //Qh[16]
    ACC[17]=0.0; //Qh[17]
    ACC[18]=0.0; //Qh[18]
    ACC[19]=0.0; //Qh[19]
    ACC[20]=0.0; //Qh[20]
    ACC[21]=0.0; //Que[1]
    ACC[22]=0.0; //Que[2]
    ACC[23]=0.0; //Que[3]
    ACC[24]=0.0; //Que[4]
    ACC[25]=0.0; //Que[5]
    ACC[26]=0.0; //Que[6]
    ACC[27]=0.0; //Que[7]
    ACC[28]=0.0; //Que[8]
    ACC[29]=0.0; //Que[9]
    ACC[30]=0.0; //Que[10]
    ACC[31]=0.0; //Que[11]
    ACC[32]=0.0; //Que[12]
    ACC[33]=0.0; //Que[13]
    ACC[34]=0.0; //Que[14]
    ACC[35]=0.0; //Que[15]
    ACC[36]=0.0; //Que[16]
    ACC[37]=0.0; //Que[17]
    ACC[38]=0.0; //Que[18]
    ACC[39]=0.0; //Que[19]
    ACC[40]=0.0; //Que[20]
    ACC[41]=0.0; //Text
    ACC[42]=0.0; //u[1]
    ACC[43]=0.0; //u[2]
    ACC[44]=0.0; //u[3]
    ACC[45]=0.0; //u[4]
    ACC[46]=0.0; //u[5]
    ACC[47]=0.0; //u[6]
    ACC[48]=0.0; //u[7]
    ACC[49]=0.0; //u[8]
    ACC[50]=0.0; //u[9]
    ACC[51]=0.0; //u[10]
    ACC[52]=0.0; //u[11]
    ACC[53]=0.0; //u[12]
    ACC[54]=0.0; //u[13]
    ACC[55]=0.0; //u[14]
    ACC[56]=0.0; //u[15]
    ACC[57]=0.0; //u[16]
    ACC[58]=0.0; //u[17]
    ACC[59]=0.0; //u[18]
    ACC[60]=0.0; //u[19]
    ACC[61]=0.0; //u[20]
    sPARi[0]=20; //N
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
    X[11]=293.15; //Tu[11]
    X[12]=293.15; //Tu[12]
    X[13]=293.15; //Tu[13]
    X[14]=293.15; //Tu[14]
    X[15]=293.15; //Tu[15]
    X[16]=293.15; //Tu[16]
    X[17]=293.15; //Tu[17]
    X[18]=293.15; //Tu[18]
    X[19]=293.15; //Tu[19]
    X[20]=293.15; //Tu[20]
    X[21]=-0.5; //x[1]
    X[22]=-0.5; //x[2]
    X[23]=-0.5; //x[3]
    X[24]=-0.5; //x[4]
    X[25]=-0.5; //x[5]
    X[26]=-0.5; //x[6]
    X[27]=-0.5; //x[7]
    X[28]=-0.5; //x[8]
    X[29]=-0.5; //x[9]
    X[30]=-0.5; //x[10]
    X[31]=-0.5; //x[11]
    X[32]=-0.5; //x[12]
    X[33]=-0.5; //x[13]
    X[34]=-0.5; //x[14]
    X[35]=-0.5; //x[15]
    X[36]=-0.5; //x[16]
    X[37]=-0.5; //x[17]
    X[38]=-0.5; //x[18]
    X[39]=-0.5; //x[19]
    X[40]=-0.5; //x[20]

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
