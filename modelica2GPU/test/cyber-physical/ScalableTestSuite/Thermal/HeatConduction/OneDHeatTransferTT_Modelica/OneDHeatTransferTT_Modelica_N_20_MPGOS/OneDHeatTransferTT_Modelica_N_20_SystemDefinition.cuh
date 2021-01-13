
#ifndef ONEDHEATTRANSFERTT_MODELICA_N_20_PERTHREAD_SYSTEMDEFINITION_H
#define ONEDHEATTRANSFERTT_MODELICA_N_20_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[57]=X[17];
    ACC[170]=ACC[57];
    ACC[133]=ACC[57];
    ACC[56]=X[16];
    ACC[169]=ACC[56];
    ACC[132]=ACC[56];
    ACC[55]=X[15];
    ACC[168]=ACC[55];
    ACC[131]=ACC[55];
    ACC[54]=X[14];
    ACC[167]=ACC[54];
    ACC[130]=ACC[54];
    ACC[53]=X[13];
    ACC[166]=ACC[53];
    ACC[129]=ACC[53];
    ACC[52]=X[12];
    ACC[165]=ACC[52];
    ACC[128]=ACC[52];
    ACC[51]=X[11];
    ACC[164]=ACC[51];
    ACC[127]=ACC[51];
    ACC[50]=X[10];
    ACC[163]=ACC[50];
    ACC[126]=ACC[50];
    ACC[49]=X[9];
    ACC[162]=ACC[49];
    ACC[125]=ACC[49];
    ACC[48]=X[8];
    ACC[124]=ACC[48];
    ACC[161]=ACC[48];
    ACC[47]=X[7];
    ACC[160]=ACC[47];
    ACC[123]=ACC[47];
    ACC[46]=X[6];
    ACC[159]=ACC[46];
    ACC[122]=ACC[46];
    ACC[45]=X[5];
    ACC[158]=ACC[45];
    ACC[121]=ACC[45];
    ACC[44]=X[4];
    ACC[157]=ACC[44];
    ACC[120]=ACC[44];
    ACC[43]=X[3];
    ACC[156]=ACC[43];
    ACC[119]=ACC[43];
    ACC[42]=X[2];
    ACC[155]=ACC[42];
    ACC[118]=ACC[42];
    ACC[41]=X[1];
    ACC[154]=ACC[41];
    ACC[117]=ACC[41];
    ACC[40]=X[0];
    ACC[153]=ACC[40];
    ACC[116]=ACC[40];
    ACC[94]=(ACC[132] - ACC[170]);
    ACC[75]=(1125.75 * ACC[94]);
    ACC[113]=ACC[75];
    ACC[151]=(-(ACC[75]));
    ACC[93]=(ACC[131] - ACC[169]);
    ACC[74]=(1125.75 * ACC[93]);
    ACC[112]=ACC[74];
    ACC[150]=(-(ACC[74]));
    ACC[38]=((-(ACC[113])) - ACC[150]);
    ACC[20]=(ACC[38] / 1371.066666666667);
    ACC[92]=(ACC[130] - ACC[168]);
    ACC[73]=(1125.75 * ACC[92]);
    ACC[111]=ACC[73];
    ACC[149]=(-(ACC[73]));
    ACC[37]=((-(ACC[112])) - ACC[149]);
    ACC[19]=(ACC[37] / 1371.066666666667);
    ACC[91]=(ACC[129] - ACC[167]);
    ACC[72]=(1125.75 * ACC[91]);
    ACC[110]=ACC[72];
    ACC[148]=(-(ACC[72]));
    ACC[36]=((-(ACC[111])) - ACC[148]);
    ACC[18]=(ACC[36] / 1371.066666666667);
    ACC[90]=(ACC[128] - ACC[166]);
    ACC[71]=(1125.75 * ACC[90]);
    ACC[109]=ACC[71];
    ACC[147]=(-(ACC[71]));
    ACC[35]=((-(ACC[110])) - ACC[147]);
    ACC[17]=(ACC[35] / 1371.066666666667);
    ACC[89]=(ACC[127] - ACC[165]);
    ACC[70]=(1125.75 * ACC[89]);
    ACC[108]=ACC[70];
    ACC[146]=(-(ACC[70]));
    ACC[34]=((-(ACC[109])) - ACC[146]);
    ACC[16]=(ACC[34] / 1371.066666666667);
    ACC[88]=(ACC[126] - ACC[164]);
    ACC[69]=(1125.75 * ACC[88]);
    ACC[107]=ACC[69];
    ACC[145]=(-(ACC[69]));
    ACC[33]=((-(ACC[108])) - ACC[145]);
    ACC[15]=(ACC[33] / 1371.066666666667);
    ACC[87]=(ACC[125] - ACC[163]);
    ACC[68]=(1125.75 * ACC[87]);
    ACC[106]=ACC[68];
    ACC[144]=(-(ACC[68]));
    ACC[32]=((-(ACC[107])) - ACC[144]);
    ACC[14]=(ACC[32] / 1371.066666666667);
    ACC[86]=(ACC[124] - ACC[162]);
    ACC[67]=(1125.75 * ACC[86]);
    ACC[105]=ACC[67];
    ACC[143]=(-(ACC[67]));
    ACC[31]=((-(ACC[106])) - ACC[143]);
    ACC[13]=(ACC[31] / 1371.066666666667);
    ACC[85]=(ACC[123] - ACC[161]);
    ACC[66]=(1125.75 * ACC[85]);
    ACC[104]=ACC[66];
    ACC[142]=(-(ACC[66]));
    ACC[30]=((-(ACC[105])) - ACC[142]);
    ACC[12]=(ACC[30] / 1371.066666666667);
    ACC[84]=(ACC[122] - ACC[160]);
    ACC[65]=(1125.75 * ACC[84]);
    ACC[103]=ACC[65];
    ACC[141]=(-(ACC[65]));
    ACC[29]=((-(ACC[104])) - ACC[141]);
    ACC[11]=(ACC[29] / 1371.066666666667);
    ACC[83]=(ACC[121] - ACC[159]);
    ACC[64]=(1125.75 * ACC[83]);
    ACC[102]=ACC[64];
    ACC[140]=(-(ACC[64]));
    ACC[28]=((-(ACC[103])) - ACC[140]);
    ACC[10]=(ACC[28] / 1371.066666666667);
    ACC[82]=(ACC[120] - ACC[158]);
    ACC[63]=(1125.75 * ACC[82]);
    ACC[101]=ACC[63];
    ACC[139]=(-(ACC[63]));
    ACC[27]=((-(ACC[102])) - ACC[139]);
    ACC[9]=(ACC[27] / 1371.066666666667);
    ACC[81]=(ACC[119] - ACC[157]);
    ACC[62]=(1125.75 * ACC[81]);
    ACC[100]=ACC[62];
    ACC[138]=(-(ACC[62]));
    ACC[26]=((-(ACC[101])) - ACC[138]);
    ACC[8]=(ACC[26] / 1371.066666666667);
    ACC[80]=(ACC[118] - ACC[156]);
    ACC[61]=(1125.75 * ACC[80]);
    ACC[99]=ACC[61];
    ACC[137]=(-(ACC[61]));
    ACC[25]=((-(ACC[100])) - ACC[137]);
    ACC[7]=(ACC[25] / 1371.066666666667);
    ACC[79]=(ACC[117] - ACC[155]);
    ACC[60]=(1125.75 * ACC[79]);
    ACC[98]=ACC[60];
    ACC[136]=(-(ACC[60]));
    ACC[24]=((-(ACC[99])) - ACC[136]);
    ACC[6]=(ACC[24] / 1371.066666666667);
    ACC[78]=(ACC[116] - ACC[154]);
    ACC[59]=(1125.75 * ACC[78]);
    ACC[97]=ACC[59];
    ACC[135]=(-(ACC[59]));
    ACC[23]=((-(ACC[98])) - ACC[135]);
    ACC[5]=(ACC[23] / 1371.066666666667);
    ACC[3]=300.0;
    ACC[171]=ACC[3];
    ACC[95]=(ACC[133] - ACC[171]);
    ACC[76]=(1125.75 * ACC[95]);
    ACC[114]=ACC[76];
    ACC[39]=((-(ACC[114])) - ACC[151]);
    ACC[21]=(ACC[39] / 1371.066666666667);
    ACC[152]=(-(ACC[76]));
    ACC[2]=(-(ACC[152]));
    ACC[1]=330.0;
    ACC[115]=ACC[1];
    ACC[77]=(ACC[115] - ACC[153]);
    ACC[58]=(1125.75 * ACC[77]);
    ACC[96]=ACC[58];
    ACC[0]=(-(ACC[96]));
    ACC[134]=(-(ACC[58]));
    ACC[22]=((-(ACC[97])) - ACC[134]);
    ACC[4]=(ACC[22] / 1371.066666666667);
    F[16]=ACC[20];
    F[15]=ACC[19];
    F[14]=ACC[18];
    F[13]=ACC[17];
    F[12]=ACC[16];
    F[11]=ACC[15];
    F[10]=ACC[14];
    F[9]=ACC[13];
    F[8]=ACC[12];
    F[7]=ACC[11];
    F[6]=ACC[10];
    F[5]=ACC[9];
    F[4]=ACC[8];
    F[3]=ACC[7];
    F[2]=ACC[6];
    F[1]=ACC[5];
    F[17]=ACC[21];
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
    ACC[12]=0.0; //heatcapacitor[9].der_T
    ACC[13]=0.0; //heatcapacitor[10].der_T
    ACC[14]=0.0; //heatcapacitor[11].der_T
    ACC[15]=0.0; //heatcapacitor[12].der_T
    ACC[16]=0.0; //heatcapacitor[13].der_T
    ACC[17]=0.0; //heatcapacitor[14].der_T
    ACC[18]=0.0; //heatcapacitor[15].der_T
    ACC[19]=0.0; //heatcapacitor[16].der_T
    ACC[20]=0.0; //heatcapacitor[17].der_T
    ACC[21]=0.0; //heatcapacitor[18].der_T
    ACC[22]=0.0; //heatcapacitor[1].port.Q_flow
    ACC[23]=0.0; //heatcapacitor[2].port.Q_flow
    ACC[24]=0.0; //heatcapacitor[3].port.Q_flow
    ACC[25]=0.0; //heatcapacitor[4].port.Q_flow
    ACC[26]=0.0; //heatcapacitor[5].port.Q_flow
    ACC[27]=0.0; //heatcapacitor[6].port.Q_flow
    ACC[28]=0.0; //heatcapacitor[7].port.Q_flow
    ACC[29]=0.0; //heatcapacitor[8].port.Q_flow
    ACC[30]=0.0; //heatcapacitor[9].port.Q_flow
    ACC[31]=0.0; //heatcapacitor[10].port.Q_flow
    ACC[32]=0.0; //heatcapacitor[11].port.Q_flow
    ACC[33]=0.0; //heatcapacitor[12].port.Q_flow
    ACC[34]=0.0; //heatcapacitor[13].port.Q_flow
    ACC[35]=0.0; //heatcapacitor[14].port.Q_flow
    ACC[36]=0.0; //heatcapacitor[15].port.Q_flow
    ACC[37]=0.0; //heatcapacitor[16].port.Q_flow
    ACC[38]=0.0; //heatcapacitor[17].port.Q_flow
    ACC[39]=0.0; //heatcapacitor[18].port.Q_flow
    ACC[40]=288.15; //heatcapacitor[1].port.T
    ACC[41]=288.15; //heatcapacitor[2].port.T
    ACC[42]=288.15; //heatcapacitor[3].port.T
    ACC[43]=288.15; //heatcapacitor[4].port.T
    ACC[44]=288.15; //heatcapacitor[5].port.T
    ACC[45]=288.15; //heatcapacitor[6].port.T
    ACC[46]=288.15; //heatcapacitor[7].port.T
    ACC[47]=288.15; //heatcapacitor[8].port.T
    ACC[48]=288.15; //heatcapacitor[9].port.T
    ACC[49]=288.15; //heatcapacitor[10].port.T
    ACC[50]=288.15; //heatcapacitor[11].port.T
    ACC[51]=288.15; //heatcapacitor[12].port.T
    ACC[52]=288.15; //heatcapacitor[13].port.T
    ACC[53]=288.15; //heatcapacitor[14].port.T
    ACC[54]=288.15; //heatcapacitor[15].port.T
    ACC[55]=288.15; //heatcapacitor[16].port.T
    ACC[56]=288.15; //heatcapacitor[17].port.T
    ACC[57]=288.15; //heatcapacitor[18].port.T
    ACC[58]=0.0; //thermalconductor[1].Q_flow
    ACC[59]=0.0; //thermalconductor[2].Q_flow
    ACC[60]=0.0; //thermalconductor[3].Q_flow
    ACC[61]=0.0; //thermalconductor[4].Q_flow
    ACC[62]=0.0; //thermalconductor[5].Q_flow
    ACC[63]=0.0; //thermalconductor[6].Q_flow
    ACC[64]=0.0; //thermalconductor[7].Q_flow
    ACC[65]=0.0; //thermalconductor[8].Q_flow
    ACC[66]=0.0; //thermalconductor[9].Q_flow
    ACC[67]=0.0; //thermalconductor[10].Q_flow
    ACC[68]=0.0; //thermalconductor[11].Q_flow
    ACC[69]=0.0; //thermalconductor[12].Q_flow
    ACC[70]=0.0; //thermalconductor[13].Q_flow
    ACC[71]=0.0; //thermalconductor[14].Q_flow
    ACC[72]=0.0; //thermalconductor[15].Q_flow
    ACC[73]=0.0; //thermalconductor[16].Q_flow
    ACC[74]=0.0; //thermalconductor[17].Q_flow
    ACC[75]=0.0; //thermalconductor[18].Q_flow
    ACC[76]=0.0; //thermalconductor[19].Q_flow
    ACC[77]=0.0; //thermalconductor[1].dT
    ACC[78]=0.0; //thermalconductor[2].dT
    ACC[79]=0.0; //thermalconductor[3].dT
    ACC[80]=0.0; //thermalconductor[4].dT
    ACC[81]=0.0; //thermalconductor[5].dT
    ACC[82]=0.0; //thermalconductor[6].dT
    ACC[83]=0.0; //thermalconductor[7].dT
    ACC[84]=0.0; //thermalconductor[8].dT
    ACC[85]=0.0; //thermalconductor[9].dT
    ACC[86]=0.0; //thermalconductor[10].dT
    ACC[87]=0.0; //thermalconductor[11].dT
    ACC[88]=0.0; //thermalconductor[12].dT
    ACC[89]=0.0; //thermalconductor[13].dT
    ACC[90]=0.0; //thermalconductor[14].dT
    ACC[91]=0.0; //thermalconductor[15].dT
    ACC[92]=0.0; //thermalconductor[16].dT
    ACC[93]=0.0; //thermalconductor[17].dT
    ACC[94]=0.0; //thermalconductor[18].dT
    ACC[95]=0.0; //thermalconductor[19].dT
    ACC[96]=0.0; //thermalconductor[1].port_a.Q_flow
    ACC[97]=0.0; //thermalconductor[2].port_a.Q_flow
    ACC[98]=0.0; //thermalconductor[3].port_a.Q_flow
    ACC[99]=0.0; //thermalconductor[4].port_a.Q_flow
    ACC[100]=0.0; //thermalconductor[5].port_a.Q_flow
    ACC[101]=0.0; //thermalconductor[6].port_a.Q_flow
    ACC[102]=0.0; //thermalconductor[7].port_a.Q_flow
    ACC[103]=0.0; //thermalconductor[8].port_a.Q_flow
    ACC[104]=0.0; //thermalconductor[9].port_a.Q_flow
    ACC[105]=0.0; //thermalconductor[10].port_a.Q_flow
    ACC[106]=0.0; //thermalconductor[11].port_a.Q_flow
    ACC[107]=0.0; //thermalconductor[12].port_a.Q_flow
    ACC[108]=0.0; //thermalconductor[13].port_a.Q_flow
    ACC[109]=0.0; //thermalconductor[14].port_a.Q_flow
    ACC[110]=0.0; //thermalconductor[15].port_a.Q_flow
    ACC[111]=0.0; //thermalconductor[16].port_a.Q_flow
    ACC[112]=0.0; //thermalconductor[17].port_a.Q_flow
    ACC[113]=0.0; //thermalconductor[18].port_a.Q_flow
    ACC[114]=0.0; //thermalconductor[19].port_a.Q_flow
    ACC[115]=288.15; //thermalconductor[1].port_a.T
    ACC[116]=288.15; //thermalconductor[2].port_a.T
    ACC[117]=288.15; //thermalconductor[3].port_a.T
    ACC[118]=288.15; //thermalconductor[4].port_a.T
    ACC[119]=288.15; //thermalconductor[5].port_a.T
    ACC[120]=288.15; //thermalconductor[6].port_a.T
    ACC[121]=288.15; //thermalconductor[7].port_a.T
    ACC[122]=288.15; //thermalconductor[8].port_a.T
    ACC[123]=288.15; //thermalconductor[9].port_a.T
    ACC[124]=288.15; //thermalconductor[10].port_a.T
    ACC[125]=288.15; //thermalconductor[11].port_a.T
    ACC[126]=288.15; //thermalconductor[12].port_a.T
    ACC[127]=288.15; //thermalconductor[13].port_a.T
    ACC[128]=288.15; //thermalconductor[14].port_a.T
    ACC[129]=288.15; //thermalconductor[15].port_a.T
    ACC[130]=288.15; //thermalconductor[16].port_a.T
    ACC[131]=288.15; //thermalconductor[17].port_a.T
    ACC[132]=288.15; //thermalconductor[18].port_a.T
    ACC[133]=288.15; //thermalconductor[19].port_a.T
    ACC[134]=0.0; //thermalconductor[1].port_b.Q_flow
    ACC[135]=0.0; //thermalconductor[2].port_b.Q_flow
    ACC[136]=0.0; //thermalconductor[3].port_b.Q_flow
    ACC[137]=0.0; //thermalconductor[4].port_b.Q_flow
    ACC[138]=0.0; //thermalconductor[5].port_b.Q_flow
    ACC[139]=0.0; //thermalconductor[6].port_b.Q_flow
    ACC[140]=0.0; //thermalconductor[7].port_b.Q_flow
    ACC[141]=0.0; //thermalconductor[8].port_b.Q_flow
    ACC[142]=0.0; //thermalconductor[9].port_b.Q_flow
    ACC[143]=0.0; //thermalconductor[10].port_b.Q_flow
    ACC[144]=0.0; //thermalconductor[11].port_b.Q_flow
    ACC[145]=0.0; //thermalconductor[12].port_b.Q_flow
    ACC[146]=0.0; //thermalconductor[13].port_b.Q_flow
    ACC[147]=0.0; //thermalconductor[14].port_b.Q_flow
    ACC[148]=0.0; //thermalconductor[15].port_b.Q_flow
    ACC[149]=0.0; //thermalconductor[16].port_b.Q_flow
    ACC[150]=0.0; //thermalconductor[17].port_b.Q_flow
    ACC[151]=0.0; //thermalconductor[18].port_b.Q_flow
    ACC[152]=0.0; //thermalconductor[19].port_b.Q_flow
    ACC[153]=288.15; //thermalconductor[1].port_b.T
    ACC[154]=288.15; //thermalconductor[2].port_b.T
    ACC[155]=288.15; //thermalconductor[3].port_b.T
    ACC[156]=288.15; //thermalconductor[4].port_b.T
    ACC[157]=288.15; //thermalconductor[5].port_b.T
    ACC[158]=288.15; //thermalconductor[6].port_b.T
    ACC[159]=288.15; //thermalconductor[7].port_b.T
    ACC[160]=288.15; //thermalconductor[8].port_b.T
    ACC[161]=288.15; //thermalconductor[9].port_b.T
    ACC[162]=288.15; //thermalconductor[10].port_b.T
    ACC[163]=288.15; //thermalconductor[11].port_b.T
    ACC[164]=288.15; //thermalconductor[12].port_b.T
    ACC[165]=288.15; //thermalconductor[13].port_b.T
    ACC[166]=288.15; //thermalconductor[14].port_b.T
    ACC[167]=288.15; //thermalconductor[15].port_b.T
    ACC[168]=288.15; //thermalconductor[16].port_b.T
    ACC[169]=288.15; //thermalconductor[17].port_b.T
    ACC[170]=288.15; //thermalconductor[18].port_b.T
    ACC[171]=288.15; //thermalconductor[19].port_b.T
    sPAR[0]=0.05; //A
    sPAR[1]=0.2; //L
    sPAR[2]=273.15; //T0
    sPAR[3]=330.0; //T1
    sPAR[4]=300.0; //TN
    sPAR[5]=910.0; //cp
    sPAR[6]=330.0; //fixedtemperature1.T
    sPAR[7]=300.0; //fixedtemperatureN.T
    sPAR[8]=1371.066666666667; //heatcapacitor[1].C
    sPAR[9]=1371.066666666667; //heatcapacitor[2].C
    sPAR[10]=1371.066666666667; //heatcapacitor[3].C
    sPAR[11]=1371.066666666667; //heatcapacitor[4].C
    sPAR[12]=1371.066666666667; //heatcapacitor[5].C
    sPAR[13]=1371.066666666667; //heatcapacitor[6].C
    sPAR[14]=1371.066666666667; //heatcapacitor[7].C
    sPAR[15]=1371.066666666667; //heatcapacitor[8].C
    sPAR[16]=1371.066666666667; //heatcapacitor[9].C
    sPAR[17]=1371.066666666667; //heatcapacitor[10].C
    sPAR[18]=1371.066666666667; //heatcapacitor[11].C
    sPAR[19]=1371.066666666667; //heatcapacitor[12].C
    sPAR[20]=1371.066666666667; //heatcapacitor[13].C
    sPAR[21]=1371.066666666667; //heatcapacitor[14].C
    sPAR[22]=1371.066666666667; //heatcapacitor[15].C
    sPAR[23]=1371.066666666667; //heatcapacitor[16].C
    sPAR[24]=1371.066666666667; //heatcapacitor[17].C
    sPAR[25]=1371.066666666667; //heatcapacitor[18].C
    sPAR[26]=237.0; //lambda
    sPAR[27]=27.12; //m
    sPAR[28]=2712.0; //rho
    sPAR[29]=1125.75; //thermalconductor[1].G
    sPAR[30]=1125.75; //thermalconductor[2].G
    sPAR[31]=1125.75; //thermalconductor[3].G
    sPAR[32]=1125.75; //thermalconductor[4].G
    sPAR[33]=1125.75; //thermalconductor[5].G
    sPAR[34]=1125.75; //thermalconductor[6].G
    sPAR[35]=1125.75; //thermalconductor[7].G
    sPAR[36]=1125.75; //thermalconductor[8].G
    sPAR[37]=1125.75; //thermalconductor[9].G
    sPAR[38]=1125.75; //thermalconductor[10].G
    sPAR[39]=1125.75; //thermalconductor[11].G
    sPAR[40]=1125.75; //thermalconductor[12].G
    sPAR[41]=1125.75; //thermalconductor[13].G
    sPAR[42]=1125.75; //thermalconductor[14].G
    sPAR[43]=1125.75; //thermalconductor[15].G
    sPAR[44]=1125.75; //thermalconductor[16].G
    sPAR[45]=1125.75; //thermalconductor[17].G
    sPAR[46]=1125.75; //thermalconductor[18].G
    sPAR[47]=1125.75; //thermalconductor[19].G
    sPAR[48]=0.01; //v
    sPARi[0]=20; //N
    X[0]=293.15; //heatcapacitor[1].T
    X[1]=293.15; //heatcapacitor[2].T
    X[2]=293.15; //heatcapacitor[3].T
    X[3]=293.15; //heatcapacitor[4].T
    X[4]=293.15; //heatcapacitor[5].T
    X[5]=293.15; //heatcapacitor[6].T
    X[6]=293.15; //heatcapacitor[7].T
    X[7]=293.15; //heatcapacitor[8].T
    X[8]=293.15; //heatcapacitor[9].T
    X[9]=293.15; //heatcapacitor[10].T
    X[10]=293.15; //heatcapacitor[11].T
    X[11]=293.15; //heatcapacitor[12].T
    X[12]=293.15; //heatcapacitor[13].T
    X[13]=293.15; //heatcapacitor[14].T
    X[14]=293.15; //heatcapacitor[15].T
    X[15]=293.15; //heatcapacitor[16].T
    X[16]=293.15; //heatcapacitor[17].T
    X[17]=293.15; //heatcapacitor[18].T

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
