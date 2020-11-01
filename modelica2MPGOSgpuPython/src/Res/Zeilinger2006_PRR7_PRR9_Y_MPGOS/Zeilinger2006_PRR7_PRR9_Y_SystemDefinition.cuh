
#ifndef Zeilinger2006_PRR7_PRR9_Y_PERTHREAD_SYSTEMDEFINITION_H
#define Zeilinger2006_PRR7_PRR9_Y_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[155]=0.0;
    F[159]=((ACC[61] * X[109]) + (((-(ACC[62])) * X[138]) - (ACC[63] * X[140])));
    F[149]=((ACC[70] * X[116]) + ((ACC[28] * X[102]) + (((-(ACC[31])) * X[147]) - (ACC[69] * X[135]))));
    F[157]=((ACC[69] * X[112]) + (((-(ACC[71])) * X[148]) - (ACC[70] * X[146])));
    F[151]=((ACC[29] * X[113]) + ((ACC[67] * X[115]) + (((-(ACC[66])) * X[142]) - (ACC[30] * X[144]))));
    F[161]=((ACC[66] * X[114]) + (((-(ACC[68])) * X[145]) - (ACC[67] * X[143])));
    F[166]=((ACC[46] * X[99]) + (((-(ACC[48])) * X[125]) - (ACC[49] * X[127])));
    F[152]=((ACC[42] * X[96]) + ((ACC[20] * X[94]) + (((-(ACC[21])) * X[120]) - (ACC[41] * X[118]))));
    F[164]=((ACC[41] * X[95]) + (((-(ACC[43])) * X[121]) - (ACC[42] * X[119])));
    F[168]=((ACC[52] * X[104]) + (((-(ACC[53])) * X[130]) - (ACC[54] * X[132])));
    F[154]=((ACC[53] * X[105]) + ((ACC[24] * X[103]) + (((-(ACC[25])) * X[131]) - (ACC[52] * X[129]))));
    F[150]=((ACC[62] * X[110]) + ((ACC[26] * X[108]) + (((-(ACC[27])) * X[139]) - (ACC[61] * X[137]))));
    F[153]=((ACC[22] * X[98]) + ((ACC[48] * X[100]) + (((-(ACC[46])) * X[124]) - (ACC[23] * X[126]))));
    F[169]=0.0;
    F[97]=0.0;
    F[95]=0.0;
    F[96]=0.0;
    F[128]=0.0;
    F[131]=0.0;
    F[102]=0.0;
    F[130]=0.0;
    F[112]=0.0;
    F[134]=0.0;
    F[133]=0.0;
    F[91]=0.0;
    F[132]=0.0;
    F[92]=0.0;
    F[147]=0.0;
    F[98]=0.0;
    F[146]=0.0;
    F[99]=0.0;
    F[129]=0.0;
    F[116]=0.0;
    F[135]=0.0;
    F[122]=0.0;
    F[110]=0.0;
    F[111]=0.0;
    F[121]=0.0;
    F[125]=0.0;
    F[124]=0.0;
    F[127]=0.0;
    F[126]=0.0;
    F[114]=0.0;
    F[93]=0.0;
    F[115]=0.0;
    F[94]=0.0;
    F[123]=0.0;
    F[113]=0.0;
    F[106]=0.0;
    F[145]=0.0;
    F[118]=0.0;
    F[144]=0.0;
    F[117]=0.0;
    F[143]=0.0;
    F[120]=0.0;
    F[119]=0.0;
    F[108]=0.0;
    F[109]=0.0;
    F[142]=0.0;
    F[107]=0.0;
    F[141]=0.0;
    F[101]=0.0;
    F[100]=0.0;
    F[148]=0.0;
    F[138]=0.0;
    F[137]=0.0;
    F[140]=0.0;
    F[139]=0.0;
    F[104]=0.0;
    F[105]=0.0;
    F[136]=0.0;
    F[103]=0.0;
    F[162]=((ACC[56] * X[106]) + (((-(ACC[58])) * X[134]) - (ACC[57] * X[133])));
    F[57]=0.0;
    F[56]=0.0;
    F[59]=0.0;
    F[40]=0.0;
    F[58]=0.0;
    F[61]=0.0;
    F[60]=0.0;
    F[80]=0.0;
    F[76]=0.0;
    F[81]=0.0;
    F[82]=0.0;
    F[78]=0.0;
    F[77]=0.0;
    F[41]=0.0;
    F[55]=0.0;
    F[52]=0.0;
    F[13]=0.0;
    F[12]=0.0;
    F[15]=0.0;
    F[14]=0.0;
    F[75]=0.0;
    F[70]=0.0;
    F[69]=0.0;
    F[72]=0.0;
    F[71]=0.0;
    F[74]=0.0;
    F[73]=0.0;
    F[53]=0.0;
    F[54]=0.0;
    F[32]=0.0;
    F[31]=0.0;
    F[34]=0.0;
    F[6]=0.0;
    F[33]=0.0;
    F[36]=0.0;
    F[9]=0.0;
    F[35]=0.0;
    F[8]=0.0;
    F[11]=0.0;
    F[38]=0.0;
    F[10]=0.0;
    F[37]=0.0;
    F[28]=0.0;
    F[47]=0.0;
    F[29]=0.0;
    F[48]=0.0;
    F[30]=0.0;
    F[49]=0.0;
    F[50]=0.0;
    F[51]=0.0;
    F[20]=0.0;
    F[39]=0.0;
    F[21]=0.0;
    F[22]=0.0;
    F[23]=0.0;
    F[42]=0.0;
    F[24]=0.0;
    F[43]=0.0;
    F[25]=0.0;
    F[44]=0.0;
    F[26]=0.0;
    F[45]=0.0;
    F[27]=0.0;
    F[46]=0.0;
    F[7]=0.0;
    F[1]=0.0;
    F[67]=0.0;
    F[0]=0.0;
    F[90]=0.0;
    F[66]=0.0;
    F[3]=0.0;
    F[2]=0.0;
    F[68]=0.0;
    F[5]=0.0;
    F[4]=0.0;
    F[16]=0.0;
    F[18]=0.0;
    F[83]=0.0;
    F[17]=0.0;
    F[79]=0.0;
    F[85]=0.0;
    F[19]=0.0;
    F[84]=0.0;
    F[87]=0.0;
    F[63]=0.0;
    F[86]=0.0;
    F[62]=0.0;
    F[89]=0.0;
    F[65]=0.0;
    F[88]=0.0;
    F[64]=0.0;
    F[165]=((ACC[44] * X[97]) - (ACC[45] * X[123]));
    F[160]=((ACC[64] * X[111]) - (ACC[65] * X[141]));
    F[158]=((ACC[59] * X[107]) - (ACC[60] * X[136]));
    F[167]=((ACC[50] * X[101]) - (ACC[51] * X[128]));
    F[156]=((ACC[39] * X[91]) + ((ACC[47] * X[92]) - (ACC[55] * X[122])));
    F[163]=((ACC[72] * X[93]) - (ACC[40] * X[117]));

}

template<class Precision> __forceinline__ __device__ void PerThread_EventFunction(
	int tid, int NT, Precision*	  EF, \
	Precision     T, Precision    dT, Precision    TD, Precision*	X, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACCi[0]=T > 30.0;

}

template<class Precision> __forceinline__ __device__ void PerThread_ActionAfterEventDetection(
    int tid, int NT, int IDX, int& UDT, \
    Precision    &T, Precision   &dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR, int*       sPARi, Precision* ACC, int* ACCi
) {
    if (ACCi[0]){
	    X[39]=ACC[38];
    }

}

template<class Precision> __forceinline__ __device__ void PerThread_ActionAfterSuccessfulTimeStep(
    int tid, int NT, int& UDT, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR, int*       sPARi, Precision* ACC, int* ACCi
) {
    ACC[38]=1.0;
    ACC[35]=(X[152] / X[155]);
    ACC[34]=(X[151] / X[155]);
    ACC[36]=(X[153] / X[155]);
    ACC[33]=(X[150] / X[155]);
    ACC[37]=(X[154] / X[155]);
    ACC[32]=(X[149] / X[155]);
    ACC[82]=(X[165] / X[169]);
    ACC[85]=(X[168] / X[169]);
    ACC[84]=(X[167] / X[169]);
    ACC[81]=(X[164] / X[169]);
    ACC[80]=(X[163] / X[169]);
    ACC[83]=(X[166] / X[169]);
    ACC[78]=(X[161] / X[169]);
    ACC[74]=(X[157] / X[169]);
    ACC[77]=(X[160] / X[169]);
    ACC[73]=(X[156] / X[169]);
    ACC[76]=(X[159] / X[169]);
    ACC[75]=(X[158] / X[169]);
    ACC[79]=(X[162] / X[169]);
    ACCi[1]=ACCi[0];
    ACC[69]=(X[155] * (X[79] * ACC[32]));
    ACC[31]=(X[155] * (X[52] * (ACC[32] / (X[31] + ACC[32]))));
    ACC[30]=(X[155] * (X[53] * (ACC[34] / (X[29] + ACC[34]))));
    ACC[66]=(X[155] * (X[81] * ACC[34]));
    ACC[23]=(X[155] * (X[42] * (ACC[36] / (X[37] + ACC[36]))));
    ACC[46]=(X[155] * (X[86] * ACC[36]));
    ACC[52]=(X[155] * (X[88] * ACC[37]));
    ACC[25]=(X[155] * (X[45] * (ACC[37] / (X[22] + ACC[37]))));
    ACC[41]=(X[155] * (X[84] * ACC[35]));
    ACC[21]=(X[155] * ((((X[40] - X[39]) * X[57]) + X[58]) * (ACC[35] / (X[34] + ACC[35]))));
    ACC[61]=(X[155] * (X[90] * ACC[33]));
    ACC[27]=(X[155] * (X[49] * (ACC[33] / (X[26] + ACC[33]))));
    ACC[62]=(X[169] * (X[80] * ACC[76]));
    ACC[63]=(X[169] * (X[50] * (ACC[76] / (X[27] + ACC[76]))));
    ACC[18]=pow(ACC[76],X[16]);
    ACC[28]=(X[155] * (X[69] * ACC[73]));
    ACC[55]=(X[169] * (X[41] * (ACC[73] / (X[20] + ACC[73]))));
    ACC[65]=(X[169] * (X[51] * (ACC[77] / (X[28] + ACC[77]))));
    ACC[29]=(X[155] * (X[75] * ACC[77]));
    ACC[39]=(X[169] * (X[39] * (X[76] * ACC[79])));
    ACC[58]=(X[169] * (X[78] * (X[39] * ACC[79])));
    ACC[57]=(X[169] * (X[47] * (ACC[79] / (X[24] + ACC[79]))));
    ACC[70]=(X[169] * (X[83] * ACC[74]));
    ACC[71]=(X[169] * (X[55] * (ACC[74] / (X[32] + ACC[74]))));
    ACC[8]=pow(ACC[74],X[19]);
    ACC[6]=pow(ACC[74],X[18]);
    ACC[5]=pow(ACC[74],X[5]);
    ACC[14]=pow(ACC[74],X[2]);
    ACC[67]=(X[169] * (X[82] * ACC[78]));
    ACC[68]=(X[169] * (X[54] * (ACC[78] / (X[30] + ACC[78]))));
    ACC[1]=pow(ACC[78],X[17]);
    ACC[49]=(X[169] * (X[43] * (ACC[83] / (X[38] + ACC[83]))));
    ACC[48]=(X[169] * (X[87] * ACC[83]));
    ACC[15]=pow(ACC[83],X[0]);
    ACC[20]=(X[155] * (X[70] * ACC[80]));
    ACC[40]=(X[169] * (X[56] * (ACC[80] / (X[33] + ACC[80]))));
    ACC[42]=(X[169] * (X[85] * ACC[81]));
    ACC[43]=(X[169] * ((((X[40] - X[39]) * X[59]) + X[60]) * (ACC[81] / (X[35] + ACC[81]))));
    ACC[10]=pow(ACC[81],X[3]);
    ACC[3]=pow(ACC[81],X[4]);
    ACC[51]=(X[169] * (X[44] * (ACC[84] / (X[21] + ACC[84]))));
    ACC[24]=(X[155] * (X[72] * ACC[84]));
    ACC[54]=(X[169] * (X[46] * (ACC[85] / (X[23] + ACC[85]))));
    ACC[53]=(X[169] * (X[89] * ACC[85]));
    ACC[0]=pow(ACC[85],X[1]);
    ACC[60]=(X[169] * (X[48] * (ACC[75] / (X[25] + ACC[75]))));
    ACC[26]=(X[155] * (X[74] * ACC[75]));
    ACC[22]=(X[155] * (X[71] * ACC[82]));
    ACC[45]=(X[169] * (X[61] * (ACC[82] / (X[36] + ACC[82]))));
    ACC[56]=(X[169] * ((X[40] - X[39]) * X[73]));
    ACC[12]=pow(X[10],X[3]);
    ACC[44]=(X[169] * (X[64] * (ACC[10] / (ACC[12] + ACC[10]))));
    ACC[9]=pow(X[7],X[19]);
    ACC[64]=(X[169] * (X[68] * (ACC[8] / (ACC[9] + ACC[8]))));
    ACC[7]=pow(X[15],X[18]);
    ACC[59]=(X[169] * (X[67] * (ACC[6] / (ACC[7] + ACC[6]))));
    ACC[4]=pow(X[12],X[5]);
    ACC[2]=pow(X[11],X[4]);
    ACC[50]=(X[169] * (((X[39] * (X[77] * ACC[79])) + (((X[39] * X[65]) + X[66]) * (ACC[2] / (ACC[2] + ACC[3])))) * (ACC[4] / (ACC[4] + ACC[5]))));
    ACC[19]=pow(X[6],X[0]);
    ACC[17]=pow(X[14],X[17]);
    ACC[16]=pow(X[13],X[16]);
    ACC[47]=(X[169] * (X[62] * (ACC[15] * (ACC[16] * (ACC[17] / (((ACC[16] + ACC[18]) * (ACC[19] + ACC[15])) * (ACC[17] + ACC[1])))))));
    ACC[13]=pow(X[8],X[1]);
    ACC[11]=pow(X[9],X[2]);
    ACC[72]=(X[169] * (X[63] * (ACC[0] * (ACC[11] / ((ACC[13] + ACC[0]) * (ACC[11] + ACC[14]))))));

}

template<class Precision> __forceinline__ __device__ void PerThread_Initialization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
    T     = TD[0];
    DOIDX = 0;
    ACC[44]=(X[169] * (X[64] * (pow(ACC[81],X[3]) / (pow(X[10],X[3]) + pow(ACC[81],X[3])))));
    ACC[47]=(X[169] * (X[62] * (pow(ACC[83],X[0]) * (pow(X[13],X[16]) * (pow(X[14],X[17]) / (((pow(X[13],X[16]) + pow(ACC[76],X[16])) * (pow(X[6],X[0]) + pow(ACC[83],X[0]))) * (pow(X[14],X[17]) + pow(ACC[78],X[17]))))))));
    ACC[50]=(X[169] * (((X[39] * (X[77] * ACC[79])) + (((X[39] * X[65]) + X[66]) * (pow(X[11],X[4]) / (pow(X[11],X[4]) + pow(ACC[81],X[4]))))) * (pow(X[12],X[5]) / (pow(X[12],X[5]) + pow(ACC[74],X[5])))));
    ACC[59]=(X[169] * (X[67] * (pow(ACC[74],X[18]) / (pow(X[15],X[18]) + pow(ACC[74],X[18])))));
    ACC[64]=(X[169] * (X[68] * (pow(ACC[74],X[19]) / (pow(X[7],X[19]) + pow(ACC[74],X[19])))));
    ACC[72]=(X[169] * (X[63] * (pow(ACC[85],X[1]) * (pow(X[9],X[2]) / ((pow(X[8],X[1]) + pow(ACC[85],X[1])) * (pow(X[9],X[2]) + pow(ACC[74],X[2])))))));
    ACC[38]=1.0;
    ACC[69]=(X[155] * (X[79] * ACC[32]));
    ACC[31]=(X[155] * (X[52] * (ACC[32] / (X[31] + ACC[32]))));
    ACC[30]=(X[155] * (X[53] * (ACC[34] / (X[29] + ACC[34]))));
    ACC[66]=(X[155] * (X[81] * ACC[34]));
    ACC[23]=(X[155] * (X[42] * (ACC[36] / (X[37] + ACC[36]))));
    ACC[46]=(X[155] * (X[86] * ACC[36]));
    ACC[52]=(X[155] * (X[88] * ACC[37]));
    ACC[25]=(X[155] * (X[45] * (ACC[37] / (X[22] + ACC[37]))));
    ACC[41]=(X[155] * (X[84] * ACC[35]));
    ACC[21]=(X[155] * ((((X[40] - X[39]) * X[57]) + X[58]) * (ACC[35] / (X[34] + ACC[35]))));
    ACC[61]=(X[155] * (X[90] * ACC[33]));
    ACC[27]=(X[155] * (X[49] * (ACC[33] / (X[26] + ACC[33]))));
    ACC[62]=(X[169] * (X[80] * ACC[76]));
    ACC[63]=(X[169] * (X[50] * (ACC[76] / (X[27] + ACC[76]))));
    ACC[18]=pow(ACC[76],X[16]);
    ACC[28]=(X[155] * (X[69] * ACC[73]));
    ACC[55]=(X[169] * (X[41] * (ACC[73] / (X[20] + ACC[73]))));
    ACC[65]=(X[169] * (X[51] * (ACC[77] / (X[28] + ACC[77]))));
    ACC[29]=(X[155] * (X[75] * ACC[77]));
    ACC[39]=(X[169] * (X[39] * (X[76] * ACC[79])));
    ACC[58]=(X[169] * (X[78] * (X[39] * ACC[79])));
    ACC[57]=(X[169] * (X[47] * (ACC[79] / (X[24] + ACC[79]))));
    ACC[70]=(X[169] * (X[83] * ACC[74]));
    ACC[71]=(X[169] * (X[55] * (ACC[74] / (X[32] + ACC[74]))));
    ACC[8]=pow(ACC[74],X[19]);
    ACC[6]=pow(ACC[74],X[18]);
    ACC[5]=pow(ACC[74],X[5]);
    ACC[14]=pow(ACC[74],X[2]);
    ACC[67]=(X[169] * (X[82] * ACC[78]));
    ACC[68]=(X[169] * (X[54] * (ACC[78] / (X[30] + ACC[78]))));
    ACC[1]=pow(ACC[78],X[17]);
    ACC[49]=(X[169] * (X[43] * (ACC[83] / (X[38] + ACC[83]))));
    ACC[48]=(X[169] * (X[87] * ACC[83]));
    ACC[15]=pow(ACC[83],X[0]);
    ACC[20]=(X[155] * (X[70] * ACC[80]));
    ACC[40]=(X[169] * (X[56] * (ACC[80] / (X[33] + ACC[80]))));
    ACC[42]=(X[169] * (X[85] * ACC[81]));
    ACC[43]=(X[169] * ((((X[40] - X[39]) * X[59]) + X[60]) * (ACC[81] / (X[35] + ACC[81]))));
    ACC[10]=pow(ACC[81],X[3]);
    ACC[3]=pow(ACC[81],X[4]);
    ACC[51]=(X[169] * (X[44] * (ACC[84] / (X[21] + ACC[84]))));
    ACC[24]=(X[155] * (X[72] * ACC[84]));
    ACC[54]=(X[169] * (X[46] * (ACC[85] / (X[23] + ACC[85]))));
    ACC[53]=(X[169] * (X[89] * ACC[85]));
    ACC[0]=pow(ACC[85],X[1]);
    ACC[60]=(X[169] * (X[48] * (ACC[75] / (X[25] + ACC[75]))));
    ACC[26]=(X[155] * (X[74] * ACC[75]));
    ACC[22]=(X[155] * (X[71] * ACC[82]));
    ACC[45]=(X[169] * (X[61] * (ACC[82] / (X[36] + ACC[82]))));
    ACC[56]=(X[169] * ((X[40] - X[39]) * X[73]));
    ACC[12]=pow(X[10],X[3]);
    ACC[9]=pow(X[7],X[19]);
    ACC[7]=pow(X[15],X[18]);
    ACC[4]=pow(X[12],X[5]);
    ACC[2]=pow(X[11],X[4]);
    ACC[19]=pow(X[6],X[0]);
    ACC[17]=pow(X[14],X[17]);
    ACC[16]=pow(X[13],X[16]);
    ACC[13]=pow(X[8],X[1]);
    ACC[11]=pow(X[9],X[2]);

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
