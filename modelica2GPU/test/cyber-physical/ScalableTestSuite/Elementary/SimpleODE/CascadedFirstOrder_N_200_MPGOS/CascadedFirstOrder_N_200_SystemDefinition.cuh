
#ifndef CASCADEDFIRSTORDER_N_200_PERTHREAD_SYSTEMDEFINITION_H
#define CASCADEDFIRSTORDER_N_200_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[200]=((X[199] - X[200]) / X[0]);
    F[199]=((X[198] - X[199]) / X[0]);
    F[198]=((X[197] - X[198]) / X[0]);
    F[197]=((X[196] - X[197]) / X[0]);
    F[196]=((X[195] - X[196]) / X[0]);
    F[195]=((X[194] - X[195]) / X[0]);
    F[194]=((X[193] - X[194]) / X[0]);
    F[193]=((X[192] - X[193]) / X[0]);
    F[192]=((X[191] - X[192]) / X[0]);
    F[191]=((X[190] - X[191]) / X[0]);
    F[190]=((X[189] - X[190]) / X[0]);
    F[189]=((X[188] - X[189]) / X[0]);
    F[188]=((X[187] - X[188]) / X[0]);
    F[187]=((X[186] - X[187]) / X[0]);
    F[186]=((X[185] - X[186]) / X[0]);
    F[185]=((X[184] - X[185]) / X[0]);
    F[184]=((X[183] - X[184]) / X[0]);
    F[183]=((X[182] - X[183]) / X[0]);
    F[182]=((X[181] - X[182]) / X[0]);
    F[181]=((X[180] - X[181]) / X[0]);
    F[180]=((X[179] - X[180]) / X[0]);
    F[179]=((X[178] - X[179]) / X[0]);
    F[178]=((X[177] - X[178]) / X[0]);
    F[177]=((X[176] - X[177]) / X[0]);
    F[176]=((X[175] - X[176]) / X[0]);
    F[175]=((X[174] - X[175]) / X[0]);
    F[174]=((X[173] - X[174]) / X[0]);
    F[173]=((X[172] - X[173]) / X[0]);
    F[172]=((X[171] - X[172]) / X[0]);
    F[171]=((X[170] - X[171]) / X[0]);
    F[170]=((X[169] - X[170]) / X[0]);
    F[169]=((X[168] - X[169]) / X[0]);
    F[168]=((X[167] - X[168]) / X[0]);
    F[167]=((X[166] - X[167]) / X[0]);
    F[166]=((X[165] - X[166]) / X[0]);
    F[165]=((X[164] - X[165]) / X[0]);
    F[164]=((X[163] - X[164]) / X[0]);
    F[163]=((X[162] - X[163]) / X[0]);
    F[162]=((X[161] - X[162]) / X[0]);
    F[161]=((X[160] - X[161]) / X[0]);
    F[160]=((X[159] - X[160]) / X[0]);
    F[159]=((X[158] - X[159]) / X[0]);
    F[158]=((X[157] - X[158]) / X[0]);
    F[157]=((X[156] - X[157]) / X[0]);
    F[156]=((X[155] - X[156]) / X[0]);
    F[155]=((X[154] - X[155]) / X[0]);
    F[154]=((X[153] - X[154]) / X[0]);
    F[153]=((X[152] - X[153]) / X[0]);
    F[152]=((X[151] - X[152]) / X[0]);
    F[151]=((X[150] - X[151]) / X[0]);
    F[150]=((X[149] - X[150]) / X[0]);
    F[149]=((X[148] - X[149]) / X[0]);
    F[148]=((X[147] - X[148]) / X[0]);
    F[147]=((X[146] - X[147]) / X[0]);
    F[146]=((X[145] - X[146]) / X[0]);
    F[145]=((X[144] - X[145]) / X[0]);
    F[144]=((X[143] - X[144]) / X[0]);
    F[143]=((X[142] - X[143]) / X[0]);
    F[142]=((X[141] - X[142]) / X[0]);
    F[141]=((X[140] - X[141]) / X[0]);
    F[140]=((X[139] - X[140]) / X[0]);
    F[139]=((X[138] - X[139]) / X[0]);
    F[138]=((X[137] - X[138]) / X[0]);
    F[137]=((X[136] - X[137]) / X[0]);
    F[136]=((X[135] - X[136]) / X[0]);
    F[135]=((X[134] - X[135]) / X[0]);
    F[134]=((X[133] - X[134]) / X[0]);
    F[133]=((X[132] - X[133]) / X[0]);
    F[132]=((X[131] - X[132]) / X[0]);
    F[131]=((X[130] - X[131]) / X[0]);
    F[130]=((X[129] - X[130]) / X[0]);
    F[129]=((X[128] - X[129]) / X[0]);
    F[128]=((X[127] - X[128]) / X[0]);
    F[127]=((X[126] - X[127]) / X[0]);
    F[126]=((X[125] - X[126]) / X[0]);
    F[125]=((X[124] - X[125]) / X[0]);
    F[124]=((X[123] - X[124]) / X[0]);
    F[123]=((X[122] - X[123]) / X[0]);
    F[122]=((X[121] - X[122]) / X[0]);
    F[121]=((X[120] - X[121]) / X[0]);
    F[120]=((X[119] - X[120]) / X[0]);
    F[119]=((X[118] - X[119]) / X[0]);
    F[118]=((X[117] - X[118]) / X[0]);
    F[117]=((X[116] - X[117]) / X[0]);
    F[116]=((X[115] - X[116]) / X[0]);
    F[115]=((X[114] - X[115]) / X[0]);
    F[114]=((X[113] - X[114]) / X[0]);
    F[113]=((X[112] - X[113]) / X[0]);
    F[112]=((X[111] - X[112]) / X[0]);
    F[111]=((X[110] - X[111]) / X[0]);
    F[110]=((X[109] - X[110]) / X[0]);
    F[109]=((X[108] - X[109]) / X[0]);
    F[108]=((X[107] - X[108]) / X[0]);
    F[107]=((X[106] - X[107]) / X[0]);
    F[106]=((X[105] - X[106]) / X[0]);
    F[105]=((X[104] - X[105]) / X[0]);
    F[104]=((X[103] - X[104]) / X[0]);
    F[103]=((X[102] - X[103]) / X[0]);
    F[102]=((X[101] - X[102]) / X[0]);
    F[101]=((X[100] - X[101]) / X[0]);
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
    sPARi[0]=200; //N
    X[0]=(0.005 * sPAR[0]); //tau
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
    X[101]=0.0; //x[101]
    X[102]=0.0; //x[102]
    X[103]=0.0; //x[103]
    X[104]=0.0; //x[104]
    X[105]=0.0; //x[105]
    X[106]=0.0; //x[106]
    X[107]=0.0; //x[107]
    X[108]=0.0; //x[108]
    X[109]=0.0; //x[109]
    X[110]=0.0; //x[110]
    X[111]=0.0; //x[111]
    X[112]=0.0; //x[112]
    X[113]=0.0; //x[113]
    X[114]=0.0; //x[114]
    X[115]=0.0; //x[115]
    X[116]=0.0; //x[116]
    X[117]=0.0; //x[117]
    X[118]=0.0; //x[118]
    X[119]=0.0; //x[119]
    X[120]=0.0; //x[120]
    X[121]=0.0; //x[121]
    X[122]=0.0; //x[122]
    X[123]=0.0; //x[123]
    X[124]=0.0; //x[124]
    X[125]=0.0; //x[125]
    X[126]=0.0; //x[126]
    X[127]=0.0; //x[127]
    X[128]=0.0; //x[128]
    X[129]=0.0; //x[129]
    X[130]=0.0; //x[130]
    X[131]=0.0; //x[131]
    X[132]=0.0; //x[132]
    X[133]=0.0; //x[133]
    X[134]=0.0; //x[134]
    X[135]=0.0; //x[135]
    X[136]=0.0; //x[136]
    X[137]=0.0; //x[137]
    X[138]=0.0; //x[138]
    X[139]=0.0; //x[139]
    X[140]=0.0; //x[140]
    X[141]=0.0; //x[141]
    X[142]=0.0; //x[142]
    X[143]=0.0; //x[143]
    X[144]=0.0; //x[144]
    X[145]=0.0; //x[145]
    X[146]=0.0; //x[146]
    X[147]=0.0; //x[147]
    X[148]=0.0; //x[148]
    X[149]=0.0; //x[149]
    X[150]=0.0; //x[150]
    X[151]=0.0; //x[151]
    X[152]=0.0; //x[152]
    X[153]=0.0; //x[153]
    X[154]=0.0; //x[154]
    X[155]=0.0; //x[155]
    X[156]=0.0; //x[156]
    X[157]=0.0; //x[157]
    X[158]=0.0; //x[158]
    X[159]=0.0; //x[159]
    X[160]=0.0; //x[160]
    X[161]=0.0; //x[161]
    X[162]=0.0; //x[162]
    X[163]=0.0; //x[163]
    X[164]=0.0; //x[164]
    X[165]=0.0; //x[165]
    X[166]=0.0; //x[166]
    X[167]=0.0; //x[167]
    X[168]=0.0; //x[168]
    X[169]=0.0; //x[169]
    X[170]=0.0; //x[170]
    X[171]=0.0; //x[171]
    X[172]=0.0; //x[172]
    X[173]=0.0; //x[173]
    X[174]=0.0; //x[174]
    X[175]=0.0; //x[175]
    X[176]=0.0; //x[176]
    X[177]=0.0; //x[177]
    X[178]=0.0; //x[178]
    X[179]=0.0; //x[179]
    X[180]=0.0; //x[180]
    X[181]=0.0; //x[181]
    X[182]=0.0; //x[182]
    X[183]=0.0; //x[183]
    X[184]=0.0; //x[184]
    X[185]=0.0; //x[185]
    X[186]=0.0; //x[186]
    X[187]=0.0; //x[187]
    X[188]=0.0; //x[188]
    X[189]=0.0; //x[189]
    X[190]=0.0; //x[190]
    X[191]=0.0; //x[191]
    X[192]=0.0; //x[192]
    X[193]=0.0; //x[193]
    X[194]=0.0; //x[194]
    X[195]=0.0; //x[195]
    X[196]=0.0; //x[196]
    X[197]=0.0; //x[197]
    X[198]=0.0; //x[198]
    X[199]=0.0; //x[199]
    X[200]=0.0; //x[200]

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif