
#ifndef ONEDHEATTRANSFERTT_MODELICA_N_10_PERTHREAD_SYSTEMDEFINITION_H
#define ONEDHEATTRANSFERTT_MODELICA_N_10_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[27]=X[7];
    ACC[80]=ACC[27];
    ACC[63]=ACC[27];
    ACC[26]=X[6];
    ACC[79]=ACC[26];
    ACC[62]=ACC[26];
    ACC[25]=X[5];
    ACC[78]=ACC[25];
    ACC[61]=ACC[25];
    ACC[24]=X[4];
    ACC[77]=ACC[24];
    ACC[60]=ACC[24];
    ACC[23]=X[3];
    ACC[76]=ACC[23];
    ACC[59]=ACC[23];
    ACC[22]=X[2];
    ACC[75]=ACC[22];
    ACC[58]=ACC[22];
    ACC[21]=X[1];
    ACC[74]=ACC[21];
    ACC[57]=ACC[21];
    ACC[20]=X[0];
    ACC[73]=ACC[20];
    ACC[56]=ACC[20];
    ACC[44]=(ACC[62] - ACC[80]);
    ACC[35]=(533.25 * ACC[44]);
    ACC[53]=ACC[35];
    ACC[71]=(-(ACC[35]));
    ACC[43]=(ACC[61] - ACC[79]);
    ACC[34]=(533.25 * ACC[43]);
    ACC[52]=ACC[34];
    ACC[70]=(-(ACC[34]));
    ACC[18]=((-(ACC[53])) - ACC[70]);
    ACC[10]=(ACC[18] / 3084.900000000001);
    ACC[42]=(ACC[60] - ACC[78]);
    ACC[33]=(533.25 * ACC[42]);
    ACC[51]=ACC[33];
    ACC[69]=(-(ACC[33]));
    ACC[17]=((-(ACC[52])) - ACC[69]);
    ACC[9]=(ACC[17] / 3084.900000000001);
    ACC[41]=(ACC[59] - ACC[77]);
    ACC[32]=(533.25 * ACC[41]);
    ACC[50]=ACC[32];
    ACC[68]=(-(ACC[32]));
    ACC[16]=((-(ACC[51])) - ACC[68]);
    ACC[8]=(ACC[16] / 3084.900000000001);
    ACC[40]=(ACC[58] - ACC[76]);
    ACC[31]=(533.25 * ACC[40]);
    ACC[49]=ACC[31];
    ACC[67]=(-(ACC[31]));
    ACC[15]=((-(ACC[50])) - ACC[67]);
    ACC[7]=(ACC[15] / 3084.900000000001);
    ACC[39]=(ACC[57] - ACC[75]);
    ACC[30]=(533.25 * ACC[39]);
    ACC[48]=ACC[30];
    ACC[66]=(-(ACC[30]));
    ACC[14]=((-(ACC[49])) - ACC[66]);
    ACC[6]=(ACC[14] / 3084.900000000001);
    ACC[38]=(ACC[56] - ACC[74]);
    ACC[29]=(533.25 * ACC[38]);
    ACC[47]=ACC[29];
    ACC[65]=(-(ACC[29]));
    ACC[13]=((-(ACC[48])) - ACC[65]);
    ACC[5]=(ACC[13] / 3084.900000000001);
    ACC[3]=300.0;
    ACC[81]=ACC[3];
    ACC[45]=(ACC[63] - ACC[81]);
    ACC[36]=(533.25 * ACC[45]);
    ACC[54]=ACC[36];
    ACC[19]=((-(ACC[54])) - ACC[71]);
    ACC[11]=(ACC[19] / 3084.900000000001);
    ACC[72]=(-(ACC[36]));
    ACC[2]=(-(ACC[72]));
    ACC[1]=330.0;
    ACC[55]=ACC[1];
    ACC[37]=(ACC[55] - ACC[73]);
    ACC[28]=(533.25 * ACC[37]);
    ACC[46]=ACC[28];
    ACC[0]=(-(ACC[46]));
    ACC[64]=(-(ACC[28]));
    ACC[12]=((-(ACC[47])) - ACC[64]);
    ACC[4]=(ACC[12] / 3084.900000000001);
    F[6]=ACC[10];
    F[5]=ACC[9];
    F[4]=ACC[8];
    F[3]=ACC[7];
    F[2]=ACC[6];
    F[1]=ACC[5];
    F[7]=ACC[11];
    F[0]=ACC[4];

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
    ACC[0]=0.0; //fixedtemperature1.port.Q_flow
    ACC[1]=288.15; //fixedtemperature1.port.T
    ACC[2]=0.0; //fixedtemperatureN.port.Q_flow
    ACC[3]=288.15; //fixedtemperatureN.port.T
    ACC[4]=0.0; //heatcapacitor[1].der_T
    ACC[5]=0.0; //heatcapacitor[2].der_T
    ACC[6]=0.0; //heatcapacitor[3].der_T
    ACC[7]=0.0; //heatcapacitor[4].der_T
    ACC[8]=0.0; //heatcapacitor[5].der_T
    ACC[9]=0.0; //heatcapacitor[6].der_T
    ACC[10]=0.0; //heatcapacitor[7].der_T
    ACC[11]=0.0; //heatcapacitor[8].der_T
    ACC[12]=0.0; //heatcapacitor[1].port.Q_flow
    ACC[13]=0.0; //heatcapacitor[2].port.Q_flow
    ACC[14]=0.0; //heatcapacitor[3].port.Q_flow
    ACC[15]=0.0; //heatcapacitor[4].port.Q_flow
    ACC[16]=0.0; //heatcapacitor[5].port.Q_flow
    ACC[17]=0.0; //heatcapacitor[6].port.Q_flow
    ACC[18]=0.0; //heatcapacitor[7].port.Q_flow
    ACC[19]=0.0; //heatcapacitor[8].port.Q_flow
    ACC[20]=288.15; //heatcapacitor[1].port.T
    ACC[21]=288.15; //heatcapacitor[2].port.T
    ACC[22]=288.15; //heatcapacitor[3].port.T
    ACC[23]=288.15; //heatcapacitor[4].port.T
    ACC[24]=288.15; //heatcapacitor[5].port.T
    ACC[25]=288.15; //heatcapacitor[6].port.T
    ACC[26]=288.15; //heatcapacitor[7].port.T
    ACC[27]=288.15; //heatcapacitor[8].port.T
    ACC[28]=0.0; //thermalconductor[1].Q_flow
    ACC[29]=0.0; //thermalconductor[2].Q_flow
    ACC[30]=0.0; //thermalconductor[3].Q_flow
    ACC[31]=0.0; //thermalconductor[4].Q_flow
    ACC[32]=0.0; //thermalconductor[5].Q_flow
    ACC[33]=0.0; //thermalconductor[6].Q_flow
    ACC[34]=0.0; //thermalconductor[7].Q_flow
    ACC[35]=0.0; //thermalconductor[8].Q_flow
    ACC[36]=0.0; //thermalconductor[9].Q_flow
    ACC[37]=0.0; //thermalconductor[1].dT
    ACC[38]=0.0; //thermalconductor[2].dT
    ACC[39]=0.0; //thermalconductor[3].dT
    ACC[40]=0.0; //thermalconductor[4].dT
    ACC[41]=0.0; //thermalconductor[5].dT
    ACC[42]=0.0; //thermalconductor[6].dT
    ACC[43]=0.0; //thermalconductor[7].dT
    ACC[44]=0.0; //thermalconductor[8].dT
    ACC[45]=0.0; //thermalconductor[9].dT
    ACC[46]=0.0; //thermalconductor[1].port_a.Q_flow
    ACC[47]=0.0; //thermalconductor[2].port_a.Q_flow
    ACC[48]=0.0; //thermalconductor[3].port_a.Q_flow
    ACC[49]=0.0; //thermalconductor[4].port_a.Q_flow
    ACC[50]=0.0; //thermalconductor[5].port_a.Q_flow
    ACC[51]=0.0; //thermalconductor[6].port_a.Q_flow
    ACC[52]=0.0; //thermalconductor[7].port_a.Q_flow
    ACC[53]=0.0; //thermalconductor[8].port_a.Q_flow
    ACC[54]=0.0; //thermalconductor[9].port_a.Q_flow
    ACC[55]=288.15; //thermalconductor[1].port_a.T
    ACC[56]=288.15; //thermalconductor[2].port_a.T
    ACC[57]=288.15; //thermalconductor[3].port_a.T
    ACC[58]=288.15; //thermalconductor[4].port_a.T
    ACC[59]=288.15; //thermalconductor[5].port_a.T
    ACC[60]=288.15; //thermalconductor[6].port_a.T
    ACC[61]=288.15; //thermalconductor[7].port_a.T
    ACC[62]=288.15; //thermalconductor[8].port_a.T
    ACC[63]=288.15; //thermalconductor[9].port_a.T
    ACC[64]=0.0; //thermalconductor[1].port_b.Q_flow
    ACC[65]=0.0; //thermalconductor[2].port_b.Q_flow
    ACC[66]=0.0; //thermalconductor[3].port_b.Q_flow
    ACC[67]=0.0; //thermalconductor[4].port_b.Q_flow
    ACC[68]=0.0; //thermalconductor[5].port_b.Q_flow
    ACC[69]=0.0; //thermalconductor[6].port_b.Q_flow
    ACC[70]=0.0; //thermalconductor[7].port_b.Q_flow
    ACC[71]=0.0; //thermalconductor[8].port_b.Q_flow
    ACC[72]=0.0; //thermalconductor[9].port_b.Q_flow
    ACC[73]=288.15; //thermalconductor[1].port_b.T
    ACC[74]=288.15; //thermalconductor[2].port_b.T
    ACC[75]=288.15; //thermalconductor[3].port_b.T
    ACC[76]=288.15; //thermalconductor[4].port_b.T
    ACC[77]=288.15; //thermalconductor[5].port_b.T
    ACC[78]=288.15; //thermalconductor[6].port_b.T
    ACC[79]=288.15; //thermalconductor[7].port_b.T
    ACC[80]=288.15; //thermalconductor[8].port_b.T
    ACC[81]=288.15; //thermalconductor[9].port_b.T
    sPAR[0]=0.05; //A
    sPAR[1]=0.2; //L
    sPAR[2]=273.15; //T0
    sPAR[3]=330.0; //T1
    sPAR[4]=300.0; //TN
    sPAR[5]=910.0; //cp
    sPAR[6]=330.0; //fixedtemperature1.T
    sPAR[7]=300.0; //fixedtemperatureN.T
    sPAR[8]=3084.900000000001; //heatcapacitor[1].C
    sPAR[9]=3084.900000000001; //heatcapacitor[2].C
    sPAR[10]=3084.900000000001; //heatcapacitor[3].C
    sPAR[11]=3084.900000000001; //heatcapacitor[4].C
    sPAR[12]=3084.900000000001; //heatcapacitor[5].C
    sPAR[13]=3084.900000000001; //heatcapacitor[6].C
    sPAR[14]=3084.900000000001; //heatcapacitor[7].C
    sPAR[15]=3084.900000000001; //heatcapacitor[8].C
    sPAR[16]=237.0; //lambda
    sPAR[17]=27.12; //m
    sPAR[18]=2712.0; //rho
    sPAR[19]=533.25; //thermalconductor[1].G
    sPAR[20]=533.25; //thermalconductor[2].G
    sPAR[21]=533.25; //thermalconductor[3].G
    sPAR[22]=533.25; //thermalconductor[4].G
    sPAR[23]=533.25; //thermalconductor[5].G
    sPAR[24]=533.25; //thermalconductor[6].G
    sPAR[25]=533.25; //thermalconductor[7].G
    sPAR[26]=533.25; //thermalconductor[8].G
    sPAR[27]=533.25; //thermalconductor[9].G
    sPAR[28]=0.01; //v
    sPARi[0]=10; //N
    X[0]=293.15; //heatcapacitor[1].T
    X[1]=293.15; //heatcapacitor[2].T
    X[2]=293.15; //heatcapacitor[3].T
    X[3]=293.15; //heatcapacitor[4].T
    X[4]=293.15; //heatcapacitor[5].T
    X[5]=293.15; //heatcapacitor[6].T
    X[6]=293.15; //heatcapacitor[7].T
    X[7]=293.15; //heatcapacitor[8].T

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
