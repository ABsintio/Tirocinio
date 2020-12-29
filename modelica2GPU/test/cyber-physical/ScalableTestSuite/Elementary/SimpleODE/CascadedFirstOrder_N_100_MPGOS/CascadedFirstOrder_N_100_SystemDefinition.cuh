
#ifndef CASCADEDFIRSTORDER_N_100_PERTHREAD_SYSTEMDEFINITION_H
#define CASCADEDFIRSTORDER_N_100_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[100]=((X[99] - X[100]) / X[0]);
    F[99]=((X[98] - X[99]) / X[0]);
    F[98]=((X[97] - X[98]) / X[0]);
    F[97]=((X[96] - X[97]) / X[0]);
    F[96]=((X[95] - X[96]) / X[0]);
    F[95]=((X[94] - X[95]) / X[0]);
    F[94]=((X[93] - X[94]) / X[0]);
    F[93]=((X[92] - X[93]) / X[0]);
    F[92]=((X[91] - X[92]) / X[0]);
    F[91]=((X[90] - X[91]) / X[0]);
    F[90]=((X[89] - X[90]) / X[0]);
    F[89]=((X[88] - X[89]) / X[0]);
    F[88]=((X[87] - X[88]) / X[0]);
    F[87]=((X[86] - X[87]) / X[0]);
    F[86]=((X[85] - X[86]) / X[0]);
    F[85]=((X[84] - X[85]) / X[0]);
    F[84]=((X[83] - X[84]) / X[0]);
    F[83]=((X[82] - X[83]) / X[0]);
    F[82]=((X[81] - X[82]) / X[0]);
    F[81]=((X[80] - X[81]) / X[0]);
    F[80]=((X[79] - X[80]) / X[0]);
    F[79]=((X[78] - X[79]) / X[0]);
    F[78]=((X[77] - X[78]) / X[0]);
    F[77]=((X[76] - X[77]) / X[0]);
    F[76]=((X[75] - X[76]) / X[0]);
    F[75]=((X[74] - X[75]) / X[0]);
    F[74]=((X[73] - X[74]) / X[0]);
    F[73]=((X[72] - X[73]) / X[0]);
    F[72]=((X[71] - X[72]) / X[0]);
    F[71]=((X[70] - X[71]) / X[0]);
    F[70]=((X[69] - X[70]) / X[0]);
    F[69]=((X[68] - X[69]) / X[0]);
    F[68]=((X[67] - X[68]) / X[0]);
    F[67]=((X[66] - X[67]) / X[0]);
    F[66]=((X[65] - X[66]) / X[0]);
    F[65]=((X[64] - X[65]) / X[0]);
    F[64]=((X[63] - X[64]) / X[0]);
    F[63]=((X[62] - X[63]) / X[0]);
    F[62]=((X[61] - X[62]) / X[0]);
    F[61]=((X[60] - X[61]) / X[0]);
    F[60]=((X[59] - X[60]) / X[0]);
    F[59]=((X[58] - X[59]) / X[0]);
    F[58]=((X[57] - X[58]) / X[0]);
    F[57]=((X[56] - X[57]) / X[0]);
    F[56]=((X[55] - X[56]) / X[0]);
    F[55]=((X[54] - X[55]) / X[0]);
    F[54]=((X[53] - X[54]) / X[0]);
    F[53]=((X[52] - X[53]) / X[0]);
    F[52]=((X[51] - X[52]) / X[0]);
    F[51]=((X[50] - X[51]) / X[0]);
    F[50]=((X[49] - X[50]) / X[0]);
    F[49]=((X[48] - X[49]) / X[0]);
    F[48]=((X[47] - X[48]) / X[0]);
    F[47]=((X[46] - X[47]) / X[0]);
    F[46]=((X[45] - X[46]) / X[0]);
    F[45]=((X[44] - X[45]) / X[0]);
    F[44]=((X[43] - X[44]) / X[0]);
    F[43]=((X[42] - X[43]) / X[0]);
    F[42]=((X[41] - X[42]) / X[0]);
    F[41]=((X[40] - X[41]) / X[0]);
    F[40]=((X[39] - X[40]) / X[0]);
    F[39]=((X[38] - X[39]) / X[0]);
    F[38]=((X[37] - X[38]) / X[0]);
    F[37]=((X[36] - X[37]) / X[0]);
    F[36]=((X[35] - X[36]) / X[0]);
    F[35]=((X[34] - X[35]) / X[0]);
    F[34]=((X[33] - X[34]) / X[0]);
    F[33]=((X[32] - X[33]) / X[0]);
    F[32]=((X[31] - X[32]) / X[0]);
    F[31]=((X[30] - X[31]) / X[0]);
    F[30]=((X[29] - X[30]) / X[0]);
    F[29]=((X[28] - X[29]) / X[0]);
    F[28]=((X[27] - X[28]) / X[0]);
    F[27]=((X[26] - X[27]) / X[0]);
    F[26]=((X[25] - X[26]) / X[0]);
    F[25]=((X[24] - X[25]) / X[0]);
    F[24]=((X[23] - X[24]) / X[0]);
    F[23]=((X[22] - X[23]) / X[0]);
    F[22]=((X[21] - X[22]) / X[0]);
    F[21]=((X[20] - X[21]) / X[0]);
    F[20]=((X[19] - X[20]) / X[0]);
    F[19]=((X[18] - X[19]) / X[0]);
    F[18]=((X[17] - X[18]) / X[0]);
    F[17]=((X[16] - X[17]) / X[0]);
    F[16]=((X[15] - X[16]) / X[0]);
    F[15]=((X[14] - X[15]) / X[0]);
    F[14]=((X[13] - X[14]) / X[0]);
    F[13]=((X[12] - X[13]) / X[0]);
    F[12]=((X[11] - X[12]) / X[0]);
    F[11]=((X[10] - X[11]) / X[0]);
    F[10]=((X[9] - X[10]) / X[0]);
    F[9]=((X[8] - X[9]) / X[0]);
    F[8]=((X[7] - X[8]) / X[0]);
    F[7]=((X[6] - X[7]) / X[0]);
    F[6]=((X[5] - X[6]) / X[0]);
    F[5]=((X[4] - X[5]) / X[0]);
    F[4]=((X[3] - X[4]) / X[0]);
    F[3]=((X[2] - X[3]) / X[0]);
    F[2]=((X[1] - X[2]) / X[0]);
    F[1]=((1.0 - X[1]) / X[0]);
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
    sPAR[0]=1.0; //T
    sPARi[0]=100; //N
    X[0]=(0.01 * sPAR[0]); //tau
    X[1]=0.0; //x[1]
    X[2]=0.0; //x[2]
    X[3]=0.0; //x[3]
    X[4]=0.0; //x[4]
    X[5]=0.0; //x[5]
    X[6]=0.0; //x[6]
    X[7]=0.0; //x[7]
    X[8]=0.0; //x[8]
    X[9]=0.0; //x[9]
    X[10]=0.0; //x[10]
    X[11]=0.0; //x[11]
    X[12]=0.0; //x[12]
    X[13]=0.0; //x[13]
    X[14]=0.0; //x[14]
    X[15]=0.0; //x[15]
    X[16]=0.0; //x[16]
    X[17]=0.0; //x[17]
    X[18]=0.0; //x[18]
    X[19]=0.0; //x[19]
    X[20]=0.0; //x[20]
    X[21]=0.0; //x[21]
    X[22]=0.0; //x[22]
    X[23]=0.0; //x[23]
    X[24]=0.0; //x[24]
    X[25]=0.0; //x[25]
    X[26]=0.0; //x[26]
    X[27]=0.0; //x[27]
    X[28]=0.0; //x[28]
    X[29]=0.0; //x[29]
    X[30]=0.0; //x[30]
    X[31]=0.0; //x[31]
    X[32]=0.0; //x[32]
    X[33]=0.0; //x[33]
    X[34]=0.0; //x[34]
    X[35]=0.0; //x[35]
    X[36]=0.0; //x[36]
    X[37]=0.0; //x[37]
    X[38]=0.0; //x[38]
    X[39]=0.0; //x[39]
    X[40]=0.0; //x[40]
    X[41]=0.0; //x[41]
    X[42]=0.0; //x[42]
    X[43]=0.0; //x[43]
    X[44]=0.0; //x[44]
    X[45]=0.0; //x[45]
    X[46]=0.0; //x[46]
    X[47]=0.0; //x[47]
    X[48]=0.0; //x[48]
    X[49]=0.0; //x[49]
    X[50]=0.0; //x[50]
    X[51]=0.0; //x[51]
    X[52]=0.0; //x[52]
    X[53]=0.0; //x[53]
    X[54]=0.0; //x[54]
    X[55]=0.0; //x[55]
    X[56]=0.0; //x[56]
    X[57]=0.0; //x[57]
    X[58]=0.0; //x[58]
    X[59]=0.0; //x[59]
    X[60]=0.0; //x[60]
    X[61]=0.0; //x[61]
    X[62]=0.0; //x[62]
    X[63]=0.0; //x[63]
    X[64]=0.0; //x[64]
    X[65]=0.0; //x[65]
    X[66]=0.0; //x[66]
    X[67]=0.0; //x[67]
    X[68]=0.0; //x[68]
    X[69]=0.0; //x[69]
    X[70]=0.0; //x[70]
    X[71]=0.0; //x[71]
    X[72]=0.0; //x[72]
    X[73]=0.0; //x[73]
    X[74]=0.0; //x[74]
    X[75]=0.0; //x[75]
    X[76]=0.0; //x[76]
    X[77]=0.0; //x[77]
    X[78]=0.0; //x[78]
    X[79]=0.0; //x[79]
    X[80]=0.0; //x[80]
    X[81]=0.0; //x[81]
    X[82]=0.0; //x[82]
    X[83]=0.0; //x[83]
    X[84]=0.0; //x[84]
    X[85]=0.0; //x[85]
    X[86]=0.0; //x[86]
    X[87]=0.0; //x[87]
    X[88]=0.0; //x[88]
    X[89]=0.0; //x[89]
    X[90]=0.0; //x[90]
    X[91]=0.0; //x[91]
    X[92]=0.0; //x[92]
    X[93]=0.0; //x[93]
    X[94]=0.0; //x[94]
    X[95]=0.0; //x[95]
    X[96]=0.0; //x[96]
    X[97]=0.0; //x[97]
    X[98]=0.0; //x[98]
    X[99]=0.0; //x[99]
    X[100]=0.0; //x[100]

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
