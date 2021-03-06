
#ifndef HARMONICOSCILLATOR_N_200_PERTHREAD_SYSTEMDEFINITION_H
#define HARMONICOSCILLATOR_N_200_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[199]=((sPAR[0] * (X[398] - X[399])) / sPAR[1]);
    F[198]=((sPAR[0] * (X[397] + ((-2.0 * X[398]) + X[399]))) / sPAR[1]);
    F[197]=((sPAR[0] * (X[396] + ((-2.0 * X[397]) + X[398]))) / sPAR[1]);
    F[196]=((sPAR[0] * (X[395] + ((-2.0 * X[396]) + X[397]))) / sPAR[1]);
    F[195]=((sPAR[0] * (X[394] + ((-2.0 * X[395]) + X[396]))) / sPAR[1]);
    F[194]=((sPAR[0] * (X[393] + ((-2.0 * X[394]) + X[395]))) / sPAR[1]);
    F[193]=((sPAR[0] * (X[392] + ((-2.0 * X[393]) + X[394]))) / sPAR[1]);
    F[192]=((sPAR[0] * (X[391] + ((-2.0 * X[392]) + X[393]))) / sPAR[1]);
    F[191]=((sPAR[0] * (X[390] + ((-2.0 * X[391]) + X[392]))) / sPAR[1]);
    F[190]=((sPAR[0] * (X[389] + ((-2.0 * X[390]) + X[391]))) / sPAR[1]);
    F[189]=((sPAR[0] * (X[388] + ((-2.0 * X[389]) + X[390]))) / sPAR[1]);
    F[188]=((sPAR[0] * (X[387] + ((-2.0 * X[388]) + X[389]))) / sPAR[1]);
    F[187]=((sPAR[0] * (X[386] + ((-2.0 * X[387]) + X[388]))) / sPAR[1]);
    F[186]=((sPAR[0] * (X[385] + ((-2.0 * X[386]) + X[387]))) / sPAR[1]);
    F[185]=((sPAR[0] * (X[384] + ((-2.0 * X[385]) + X[386]))) / sPAR[1]);
    F[184]=((sPAR[0] * (X[383] + ((-2.0 * X[384]) + X[385]))) / sPAR[1]);
    F[183]=((sPAR[0] * (X[382] + ((-2.0 * X[383]) + X[384]))) / sPAR[1]);
    F[182]=((sPAR[0] * (X[381] + ((-2.0 * X[382]) + X[383]))) / sPAR[1]);
    F[181]=((sPAR[0] * (X[380] + ((-2.0 * X[381]) + X[382]))) / sPAR[1]);
    F[180]=((sPAR[0] * (X[379] + ((-2.0 * X[380]) + X[381]))) / sPAR[1]);
    F[179]=((sPAR[0] * (X[378] + ((-2.0 * X[379]) + X[380]))) / sPAR[1]);
    F[178]=((sPAR[0] * (X[377] + ((-2.0 * X[378]) + X[379]))) / sPAR[1]);
    F[177]=((sPAR[0] * (X[376] + ((-2.0 * X[377]) + X[378]))) / sPAR[1]);
    F[176]=((sPAR[0] * (X[375] + ((-2.0 * X[376]) + X[377]))) / sPAR[1]);
    F[175]=((sPAR[0] * (X[374] + ((-2.0 * X[375]) + X[376]))) / sPAR[1]);
    F[174]=((sPAR[0] * (X[373] + ((-2.0 * X[374]) + X[375]))) / sPAR[1]);
    F[173]=((sPAR[0] * (X[372] + ((-2.0 * X[373]) + X[374]))) / sPAR[1]);
    F[172]=((sPAR[0] * (X[371] + ((-2.0 * X[372]) + X[373]))) / sPAR[1]);
    F[171]=((sPAR[0] * (X[370] + ((-2.0 * X[371]) + X[372]))) / sPAR[1]);
    F[170]=((sPAR[0] * (X[369] + ((-2.0 * X[370]) + X[371]))) / sPAR[1]);
    F[169]=((sPAR[0] * (X[368] + ((-2.0 * X[369]) + X[370]))) / sPAR[1]);
    F[168]=((sPAR[0] * (X[367] + ((-2.0 * X[368]) + X[369]))) / sPAR[1]);
    F[167]=((sPAR[0] * (X[366] + ((-2.0 * X[367]) + X[368]))) / sPAR[1]);
    F[166]=((sPAR[0] * (X[365] + ((-2.0 * X[366]) + X[367]))) / sPAR[1]);
    F[165]=((sPAR[0] * (X[364] + ((-2.0 * X[365]) + X[366]))) / sPAR[1]);
    F[164]=((sPAR[0] * (X[363] + ((-2.0 * X[364]) + X[365]))) / sPAR[1]);
    F[163]=((sPAR[0] * (X[362] + ((-2.0 * X[363]) + X[364]))) / sPAR[1]);
    F[162]=((sPAR[0] * (X[361] + ((-2.0 * X[362]) + X[363]))) / sPAR[1]);
    F[161]=((sPAR[0] * (X[360] + ((-2.0 * X[361]) + X[362]))) / sPAR[1]);
    F[160]=((sPAR[0] * (X[359] + ((-2.0 * X[360]) + X[361]))) / sPAR[1]);
    F[159]=((sPAR[0] * (X[358] + ((-2.0 * X[359]) + X[360]))) / sPAR[1]);
    F[158]=((sPAR[0] * (X[357] + ((-2.0 * X[358]) + X[359]))) / sPAR[1]);
    F[157]=((sPAR[0] * (X[356] + ((-2.0 * X[357]) + X[358]))) / sPAR[1]);
    F[156]=((sPAR[0] * (X[355] + ((-2.0 * X[356]) + X[357]))) / sPAR[1]);
    F[155]=((sPAR[0] * (X[354] + ((-2.0 * X[355]) + X[356]))) / sPAR[1]);
    F[154]=((sPAR[0] * (X[353] + ((-2.0 * X[354]) + X[355]))) / sPAR[1]);
    F[153]=((sPAR[0] * (X[352] + ((-2.0 * X[353]) + X[354]))) / sPAR[1]);
    F[152]=((sPAR[0] * (X[351] + ((-2.0 * X[352]) + X[353]))) / sPAR[1]);
    F[151]=((sPAR[0] * (X[350] + ((-2.0 * X[351]) + X[352]))) / sPAR[1]);
    F[150]=((sPAR[0] * (X[349] + ((-2.0 * X[350]) + X[351]))) / sPAR[1]);
    F[149]=((sPAR[0] * (X[348] + ((-2.0 * X[349]) + X[350]))) / sPAR[1]);
    F[148]=((sPAR[0] * (X[347] + ((-2.0 * X[348]) + X[349]))) / sPAR[1]);
    F[147]=((sPAR[0] * (X[346] + ((-2.0 * X[347]) + X[348]))) / sPAR[1]);
    F[146]=((sPAR[0] * (X[345] + ((-2.0 * X[346]) + X[347]))) / sPAR[1]);
    F[145]=((sPAR[0] * (X[344] + ((-2.0 * X[345]) + X[346]))) / sPAR[1]);
    F[144]=((sPAR[0] * (X[343] + ((-2.0 * X[344]) + X[345]))) / sPAR[1]);
    F[143]=((sPAR[0] * (X[342] + ((-2.0 * X[343]) + X[344]))) / sPAR[1]);
    F[142]=((sPAR[0] * (X[341] + ((-2.0 * X[342]) + X[343]))) / sPAR[1]);
    F[141]=((sPAR[0] * (X[340] + ((-2.0 * X[341]) + X[342]))) / sPAR[1]);
    F[140]=((sPAR[0] * (X[339] + ((-2.0 * X[340]) + X[341]))) / sPAR[1]);
    F[139]=((sPAR[0] * (X[338] + ((-2.0 * X[339]) + X[340]))) / sPAR[1]);
    F[138]=((sPAR[0] * (X[337] + ((-2.0 * X[338]) + X[339]))) / sPAR[1]);
    F[137]=((sPAR[0] * (X[336] + ((-2.0 * X[337]) + X[338]))) / sPAR[1]);
    F[136]=((sPAR[0] * (X[335] + ((-2.0 * X[336]) + X[337]))) / sPAR[1]);
    F[135]=((sPAR[0] * (X[334] + ((-2.0 * X[335]) + X[336]))) / sPAR[1]);
    F[134]=((sPAR[0] * (X[333] + ((-2.0 * X[334]) + X[335]))) / sPAR[1]);
    F[133]=((sPAR[0] * (X[332] + ((-2.0 * X[333]) + X[334]))) / sPAR[1]);
    F[132]=((sPAR[0] * (X[331] + ((-2.0 * X[332]) + X[333]))) / sPAR[1]);
    F[131]=((sPAR[0] * (X[330] + ((-2.0 * X[331]) + X[332]))) / sPAR[1]);
    F[130]=((sPAR[0] * (X[329] + ((-2.0 * X[330]) + X[331]))) / sPAR[1]);
    F[129]=((sPAR[0] * (X[328] + ((-2.0 * X[329]) + X[330]))) / sPAR[1]);
    F[128]=((sPAR[0] * (X[327] + ((-2.0 * X[328]) + X[329]))) / sPAR[1]);
    F[127]=((sPAR[0] * (X[326] + ((-2.0 * X[327]) + X[328]))) / sPAR[1]);
    F[126]=((sPAR[0] * (X[325] + ((-2.0 * X[326]) + X[327]))) / sPAR[1]);
    F[125]=((sPAR[0] * (X[324] + ((-2.0 * X[325]) + X[326]))) / sPAR[1]);
    F[124]=((sPAR[0] * (X[323] + ((-2.0 * X[324]) + X[325]))) / sPAR[1]);
    F[123]=((sPAR[0] * (X[322] + ((-2.0 * X[323]) + X[324]))) / sPAR[1]);
    F[122]=((sPAR[0] * (X[321] + ((-2.0 * X[322]) + X[323]))) / sPAR[1]);
    F[121]=((sPAR[0] * (X[320] + ((-2.0 * X[321]) + X[322]))) / sPAR[1]);
    F[120]=((sPAR[0] * (X[319] + ((-2.0 * X[320]) + X[321]))) / sPAR[1]);
    F[119]=((sPAR[0] * (X[318] + ((-2.0 * X[319]) + X[320]))) / sPAR[1]);
    F[118]=((sPAR[0] * (X[317] + ((-2.0 * X[318]) + X[319]))) / sPAR[1]);
    F[117]=((sPAR[0] * (X[316] + ((-2.0 * X[317]) + X[318]))) / sPAR[1]);
    F[116]=((sPAR[0] * (X[315] + ((-2.0 * X[316]) + X[317]))) / sPAR[1]);
    F[115]=((sPAR[0] * (X[314] + ((-2.0 * X[315]) + X[316]))) / sPAR[1]);
    F[114]=((sPAR[0] * (X[313] + ((-2.0 * X[314]) + X[315]))) / sPAR[1]);
    F[113]=((sPAR[0] * (X[312] + ((-2.0 * X[313]) + X[314]))) / sPAR[1]);
    F[112]=((sPAR[0] * (X[311] + ((-2.0 * X[312]) + X[313]))) / sPAR[1]);
    F[111]=((sPAR[0] * (X[310] + ((-2.0 * X[311]) + X[312]))) / sPAR[1]);
    F[110]=((sPAR[0] * (X[309] + ((-2.0 * X[310]) + X[311]))) / sPAR[1]);
    F[109]=((sPAR[0] * (X[308] + ((-2.0 * X[309]) + X[310]))) / sPAR[1]);
    F[108]=((sPAR[0] * (X[307] + ((-2.0 * X[308]) + X[309]))) / sPAR[1]);
    F[107]=((sPAR[0] * (X[306] + ((-2.0 * X[307]) + X[308]))) / sPAR[1]);
    F[106]=((sPAR[0] * (X[305] + ((-2.0 * X[306]) + X[307]))) / sPAR[1]);
    F[105]=((sPAR[0] * (X[304] + ((-2.0 * X[305]) + X[306]))) / sPAR[1]);
    F[104]=((sPAR[0] * (X[303] + ((-2.0 * X[304]) + X[305]))) / sPAR[1]);
    F[103]=((sPAR[0] * (X[302] + ((-2.0 * X[303]) + X[304]))) / sPAR[1]);
    F[102]=((sPAR[0] * (X[301] + ((-2.0 * X[302]) + X[303]))) / sPAR[1]);
    F[101]=((sPAR[0] * (X[300] + ((-2.0 * X[301]) + X[302]))) / sPAR[1]);
    F[100]=((sPAR[0] * (X[299] + ((-2.0 * X[300]) + X[301]))) / sPAR[1]);
    F[99]=((sPAR[0] * (X[298] + ((-2.0 * X[299]) + X[300]))) / sPAR[1]);
    F[98]=((sPAR[0] * (X[297] + ((-2.0 * X[298]) + X[299]))) / sPAR[1]);
    F[97]=((sPAR[0] * (X[296] + ((-2.0 * X[297]) + X[298]))) / sPAR[1]);
    F[96]=((sPAR[0] * (X[295] + ((-2.0 * X[296]) + X[297]))) / sPAR[1]);
    F[95]=((sPAR[0] * (X[294] + ((-2.0 * X[295]) + X[296]))) / sPAR[1]);
    F[94]=((sPAR[0] * (X[293] + ((-2.0 * X[294]) + X[295]))) / sPAR[1]);
    F[93]=((sPAR[0] * (X[292] + ((-2.0 * X[293]) + X[294]))) / sPAR[1]);
    F[92]=((sPAR[0] * (X[291] + ((-2.0 * X[292]) + X[293]))) / sPAR[1]);
    F[91]=((sPAR[0] * (X[290] + ((-2.0 * X[291]) + X[292]))) / sPAR[1]);
    F[90]=((sPAR[0] * (X[289] + ((-2.0 * X[290]) + X[291]))) / sPAR[1]);
    F[89]=((sPAR[0] * (X[288] + ((-2.0 * X[289]) + X[290]))) / sPAR[1]);
    F[88]=((sPAR[0] * (X[287] + ((-2.0 * X[288]) + X[289]))) / sPAR[1]);
    F[87]=((sPAR[0] * (X[286] + ((-2.0 * X[287]) + X[288]))) / sPAR[1]);
    F[86]=((sPAR[0] * (X[285] + ((-2.0 * X[286]) + X[287]))) / sPAR[1]);
    F[85]=((sPAR[0] * (X[284] + ((-2.0 * X[285]) + X[286]))) / sPAR[1]);
    F[84]=((sPAR[0] * (X[283] + ((-2.0 * X[284]) + X[285]))) / sPAR[1]);
    F[83]=((sPAR[0] * (X[282] + ((-2.0 * X[283]) + X[284]))) / sPAR[1]);
    F[82]=((sPAR[0] * (X[281] + ((-2.0 * X[282]) + X[283]))) / sPAR[1]);
    F[81]=((sPAR[0] * (X[280] + ((-2.0 * X[281]) + X[282]))) / sPAR[1]);
    F[80]=((sPAR[0] * (X[279] + ((-2.0 * X[280]) + X[281]))) / sPAR[1]);
    F[79]=((sPAR[0] * (X[278] + ((-2.0 * X[279]) + X[280]))) / sPAR[1]);
    F[78]=((sPAR[0] * (X[277] + ((-2.0 * X[278]) + X[279]))) / sPAR[1]);
    F[77]=((sPAR[0] * (X[276] + ((-2.0 * X[277]) + X[278]))) / sPAR[1]);
    F[76]=((sPAR[0] * (X[275] + ((-2.0 * X[276]) + X[277]))) / sPAR[1]);
    F[75]=((sPAR[0] * (X[274] + ((-2.0 * X[275]) + X[276]))) / sPAR[1]);
    F[74]=((sPAR[0] * (X[273] + ((-2.0 * X[274]) + X[275]))) / sPAR[1]);
    F[73]=((sPAR[0] * (X[272] + ((-2.0 * X[273]) + X[274]))) / sPAR[1]);
    F[72]=((sPAR[0] * (X[271] + ((-2.0 * X[272]) + X[273]))) / sPAR[1]);
    F[71]=((sPAR[0] * (X[270] + ((-2.0 * X[271]) + X[272]))) / sPAR[1]);
    F[70]=((sPAR[0] * (X[269] + ((-2.0 * X[270]) + X[271]))) / sPAR[1]);
    F[69]=((sPAR[0] * (X[268] + ((-2.0 * X[269]) + X[270]))) / sPAR[1]);
    F[68]=((sPAR[0] * (X[267] + ((-2.0 * X[268]) + X[269]))) / sPAR[1]);
    F[67]=((sPAR[0] * (X[266] + ((-2.0 * X[267]) + X[268]))) / sPAR[1]);
    F[66]=((sPAR[0] * (X[265] + ((-2.0 * X[266]) + X[267]))) / sPAR[1]);
    F[65]=((sPAR[0] * (X[264] + ((-2.0 * X[265]) + X[266]))) / sPAR[1]);
    F[64]=((sPAR[0] * (X[263] + ((-2.0 * X[264]) + X[265]))) / sPAR[1]);
    F[63]=((sPAR[0] * (X[262] + ((-2.0 * X[263]) + X[264]))) / sPAR[1]);
    F[62]=((sPAR[0] * (X[261] + ((-2.0 * X[262]) + X[263]))) / sPAR[1]);
    F[61]=((sPAR[0] * (X[260] + ((-2.0 * X[261]) + X[262]))) / sPAR[1]);
    F[60]=((sPAR[0] * (X[259] + ((-2.0 * X[260]) + X[261]))) / sPAR[1]);
    F[59]=((sPAR[0] * (X[258] + ((-2.0 * X[259]) + X[260]))) / sPAR[1]);
    F[58]=((sPAR[0] * (X[257] + ((-2.0 * X[258]) + X[259]))) / sPAR[1]);
    F[57]=((sPAR[0] * (X[256] + ((-2.0 * X[257]) + X[258]))) / sPAR[1]);
    F[56]=((sPAR[0] * (X[255] + ((-2.0 * X[256]) + X[257]))) / sPAR[1]);
    F[55]=((sPAR[0] * (X[254] + ((-2.0 * X[255]) + X[256]))) / sPAR[1]);
    F[54]=((sPAR[0] * (X[253] + ((-2.0 * X[254]) + X[255]))) / sPAR[1]);
    F[53]=((sPAR[0] * (X[252] + ((-2.0 * X[253]) + X[254]))) / sPAR[1]);
    F[52]=((sPAR[0] * (X[251] + ((-2.0 * X[252]) + X[253]))) / sPAR[1]);
    F[51]=((sPAR[0] * (X[250] + ((-2.0 * X[251]) + X[252]))) / sPAR[1]);
    F[50]=((sPAR[0] * (X[249] + ((-2.0 * X[250]) + X[251]))) / sPAR[1]);
    F[49]=((sPAR[0] * (X[248] + ((-2.0 * X[249]) + X[250]))) / sPAR[1]);
    F[48]=((sPAR[0] * (X[247] + ((-2.0 * X[248]) + X[249]))) / sPAR[1]);
    F[47]=((sPAR[0] * (X[246] + ((-2.0 * X[247]) + X[248]))) / sPAR[1]);
    F[46]=((sPAR[0] * (X[245] + ((-2.0 * X[246]) + X[247]))) / sPAR[1]);
    F[45]=((sPAR[0] * (X[244] + ((-2.0 * X[245]) + X[246]))) / sPAR[1]);
    F[44]=((sPAR[0] * (X[243] + ((-2.0 * X[244]) + X[245]))) / sPAR[1]);
    F[43]=((sPAR[0] * (X[242] + ((-2.0 * X[243]) + X[244]))) / sPAR[1]);
    F[42]=((sPAR[0] * (X[241] + ((-2.0 * X[242]) + X[243]))) / sPAR[1]);
    F[41]=((sPAR[0] * (X[240] + ((-2.0 * X[241]) + X[242]))) / sPAR[1]);
    F[40]=((sPAR[0] * (X[239] + ((-2.0 * X[240]) + X[241]))) / sPAR[1]);
    F[39]=((sPAR[0] * (X[238] + ((-2.0 * X[239]) + X[240]))) / sPAR[1]);
    F[38]=((sPAR[0] * (X[237] + ((-2.0 * X[238]) + X[239]))) / sPAR[1]);
    F[37]=((sPAR[0] * (X[236] + ((-2.0 * X[237]) + X[238]))) / sPAR[1]);
    F[36]=((sPAR[0] * (X[235] + ((-2.0 * X[236]) + X[237]))) / sPAR[1]);
    F[35]=((sPAR[0] * (X[234] + ((-2.0 * X[235]) + X[236]))) / sPAR[1]);
    F[34]=((sPAR[0] * (X[233] + ((-2.0 * X[234]) + X[235]))) / sPAR[1]);
    F[33]=((sPAR[0] * (X[232] + ((-2.0 * X[233]) + X[234]))) / sPAR[1]);
    F[32]=((sPAR[0] * (X[231] + ((-2.0 * X[232]) + X[233]))) / sPAR[1]);
    F[31]=((sPAR[0] * (X[230] + ((-2.0 * X[231]) + X[232]))) / sPAR[1]);
    F[30]=((sPAR[0] * (X[229] + ((-2.0 * X[230]) + X[231]))) / sPAR[1]);
    F[29]=((sPAR[0] * (X[228] + ((-2.0 * X[229]) + X[230]))) / sPAR[1]);
    F[28]=((sPAR[0] * (X[227] + ((-2.0 * X[228]) + X[229]))) / sPAR[1]);
    F[27]=((sPAR[0] * (X[226] + ((-2.0 * X[227]) + X[228]))) / sPAR[1]);
    F[26]=((sPAR[0] * (X[225] + ((-2.0 * X[226]) + X[227]))) / sPAR[1]);
    F[25]=((sPAR[0] * (X[224] + ((-2.0 * X[225]) + X[226]))) / sPAR[1]);
    F[24]=((sPAR[0] * (X[223] + ((-2.0 * X[224]) + X[225]))) / sPAR[1]);
    F[23]=((sPAR[0] * (X[222] + ((-2.0 * X[223]) + X[224]))) / sPAR[1]);
    F[22]=((sPAR[0] * (X[221] + ((-2.0 * X[222]) + X[223]))) / sPAR[1]);
    F[21]=((sPAR[0] * (X[220] + ((-2.0 * X[221]) + X[222]))) / sPAR[1]);
    F[20]=((sPAR[0] * (X[219] + ((-2.0 * X[220]) + X[221]))) / sPAR[1]);
    F[19]=((sPAR[0] * (X[218] + ((-2.0 * X[219]) + X[220]))) / sPAR[1]);
    F[18]=((sPAR[0] * (X[217] + ((-2.0 * X[218]) + X[219]))) / sPAR[1]);
    F[17]=((sPAR[0] * (X[216] + ((-2.0 * X[217]) + X[218]))) / sPAR[1]);
    F[16]=((sPAR[0] * (X[215] + ((-2.0 * X[216]) + X[217]))) / sPAR[1]);
    F[15]=((sPAR[0] * (X[214] + ((-2.0 * X[215]) + X[216]))) / sPAR[1]);
    F[14]=((sPAR[0] * (X[213] + ((-2.0 * X[214]) + X[215]))) / sPAR[1]);
    F[13]=((sPAR[0] * (X[212] + ((-2.0 * X[213]) + X[214]))) / sPAR[1]);
    F[12]=((sPAR[0] * (X[211] + ((-2.0 * X[212]) + X[213]))) / sPAR[1]);
    F[11]=((sPAR[0] * (X[210] + ((-2.0 * X[211]) + X[212]))) / sPAR[1]);
    F[10]=((sPAR[0] * (X[209] + ((-2.0 * X[210]) + X[211]))) / sPAR[1]);
    F[9]=((sPAR[0] * (X[208] + ((-2.0 * X[209]) + X[210]))) / sPAR[1]);
    F[8]=((sPAR[0] * (X[207] + ((-2.0 * X[208]) + X[209]))) / sPAR[1]);
    F[7]=((sPAR[0] * (X[206] + ((-2.0 * X[207]) + X[208]))) / sPAR[1]);
    F[6]=((sPAR[0] * (X[205] + ((-2.0 * X[206]) + X[207]))) / sPAR[1]);
    F[5]=((sPAR[0] * (X[204] + ((-2.0 * X[205]) + X[206]))) / sPAR[1]);
    F[4]=((sPAR[0] * (X[203] + ((-2.0 * X[204]) + X[205]))) / sPAR[1]);
    F[3]=((sPAR[0] * (X[202] + ((-2.0 * X[203]) + X[204]))) / sPAR[1]);
    F[2]=((sPAR[0] * (X[201] + ((-2.0 * X[202]) + X[203]))) / sPAR[1]);
    F[1]=((sPAR[0] * (X[200] + ((-2.0 * X[201]) + X[202]))) / sPAR[1]);
    F[0]=((sPAR[0] * (X[201] - X[200])) / sPAR[1]);
    F[399]=X[199];
    F[398]=X[198];
    F[397]=X[197];
    F[396]=X[196];
    F[395]=X[195];
    F[394]=X[194];
    F[393]=X[193];
    F[392]=X[192];
    F[391]=X[191];
    F[390]=X[190];
    F[389]=X[189];
    F[388]=X[188];
    F[387]=X[187];
    F[386]=X[186];
    F[385]=X[185];
    F[384]=X[184];
    F[383]=X[183];
    F[382]=X[182];
    F[381]=X[181];
    F[380]=X[180];
    F[379]=X[179];
    F[378]=X[178];
    F[377]=X[177];
    F[376]=X[176];
    F[375]=X[175];
    F[374]=X[174];
    F[373]=X[173];
    F[372]=X[172];
    F[371]=X[171];
    F[370]=X[170];
    F[369]=X[169];
    F[368]=X[168];
    F[367]=X[167];
    F[366]=X[166];
    F[365]=X[165];
    F[364]=X[164];
    F[363]=X[163];
    F[362]=X[162];
    F[361]=X[161];
    F[360]=X[160];
    F[359]=X[159];
    F[358]=X[158];
    F[357]=X[157];
    F[356]=X[156];
    F[355]=X[155];
    F[354]=X[154];
    F[353]=X[153];
    F[352]=X[152];
    F[351]=X[151];
    F[350]=X[150];
    F[349]=X[149];
    F[348]=X[148];
    F[347]=X[147];
    F[346]=X[146];
    F[345]=X[145];
    F[344]=X[144];
    F[343]=X[143];
    F[342]=X[142];
    F[341]=X[141];
    F[340]=X[140];
    F[339]=X[139];
    F[338]=X[138];
    F[337]=X[137];
    F[336]=X[136];
    F[335]=X[135];
    F[334]=X[134];
    F[333]=X[133];
    F[332]=X[132];
    F[331]=X[131];
    F[330]=X[130];
    F[329]=X[129];
    F[328]=X[128];
    F[327]=X[127];
    F[326]=X[126];
    F[325]=X[125];
    F[324]=X[124];
    F[323]=X[123];
    F[322]=X[122];
    F[321]=X[121];
    F[320]=X[120];
    F[319]=X[119];
    F[318]=X[118];
    F[317]=X[117];
    F[316]=X[116];
    F[315]=X[115];
    F[314]=X[114];
    F[313]=X[113];
    F[312]=X[112];
    F[311]=X[111];
    F[310]=X[110];
    F[309]=X[109];
    F[308]=X[108];
    F[307]=X[107];
    F[306]=X[106];
    F[305]=X[105];
    F[304]=X[104];
    F[303]=X[103];
    F[302]=X[102];
    F[301]=X[101];
    F[300]=X[100];
    F[299]=X[99];
    F[298]=X[98];
    F[297]=X[97];
    F[296]=X[96];
    F[295]=X[95];
    F[294]=X[94];
    F[293]=X[93];
    F[292]=X[92];
    F[291]=X[91];
    F[290]=X[90];
    F[289]=X[89];
    F[288]=X[88];
    F[287]=X[87];
    F[286]=X[86];
    F[285]=X[85];
    F[284]=X[84];
    F[283]=X[83];
    F[282]=X[82];
    F[281]=X[81];
    F[280]=X[80];
    F[279]=X[79];
    F[278]=X[78];
    F[277]=X[77];
    F[276]=X[76];
    F[275]=X[75];
    F[274]=X[74];
    F[273]=X[73];
    F[272]=X[72];
    F[271]=X[71];
    F[270]=X[70];
    F[269]=X[69];
    F[268]=X[68];
    F[267]=X[67];
    F[266]=X[66];
    F[265]=X[65];
    F[264]=X[64];
    F[263]=X[63];
    F[262]=X[62];
    F[261]=X[61];
    F[260]=X[60];
    F[259]=X[59];
    F[258]=X[58];
    F[257]=X[57];
    F[256]=X[56];
    F[255]=X[55];
    F[254]=X[54];
    F[253]=X[53];
    F[252]=X[52];
    F[251]=X[51];
    F[250]=X[50];
    F[249]=X[49];
    F[248]=X[48];
    F[247]=X[47];
    F[246]=X[46];
    F[245]=X[45];
    F[244]=X[44];
    F[243]=X[43];
    F[242]=X[42];
    F[241]=X[41];
    F[240]=X[40];
    F[239]=X[39];
    F[238]=X[38];
    F[237]=X[37];
    F[236]=X[36];
    F[235]=X[35];
    F[234]=X[34];
    F[233]=X[33];
    F[232]=X[32];
    F[231]=X[31];
    F[230]=X[30];
    F[229]=X[29];
    F[228]=X[28];
    F[227]=X[27];
    F[226]=X[26];
    F[225]=X[25];
    F[224]=X[24];
    F[223]=X[23];
    F[222]=X[22];
    F[221]=X[21];
    F[220]=X[20];
    F[219]=X[19];
    F[218]=X[18];
    F[217]=X[17];
    F[216]=X[16];
    F[215]=X[15];
    F[214]=X[14];
    F[213]=X[13];
    F[212]=X[12];
    F[211]=X[11];
    F[210]=X[10];
    F[209]=X[9];
    F[208]=X[8];
    F[207]=X[7];
    F[206]=X[6];
    F[205]=X[5];
    F[204]=X[4];
    F[203]=X[3];
    F[202]=X[2];
    F[201]=X[1];
    F[200]=X[0];

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
    sPAR[0]=10.0; //k
    sPAR[1]=1.0; //m
    sPARi[0]=200; //N
    X[0]=0.0; //v[1]
    X[1]=0.0; //v[2]
    X[2]=0.0; //v[3]
    X[3]=0.0; //v[4]
    X[4]=0.0; //v[5]
    X[5]=0.0; //v[6]
    X[6]=0.0; //v[7]
    X[7]=0.0; //v[8]
    X[8]=0.0; //v[9]
    X[9]=0.0; //v[10]
    X[10]=0.0; //v[11]
    X[11]=0.0; //v[12]
    X[12]=0.0; //v[13]
    X[13]=0.0; //v[14]
    X[14]=0.0; //v[15]
    X[15]=0.0; //v[16]
    X[16]=0.0; //v[17]
    X[17]=0.0; //v[18]
    X[18]=0.0; //v[19]
    X[19]=0.0; //v[20]
    X[20]=0.0; //v[21]
    X[21]=0.0; //v[22]
    X[22]=0.0; //v[23]
    X[23]=0.0; //v[24]
    X[24]=0.0; //v[25]
    X[25]=0.0; //v[26]
    X[26]=0.0; //v[27]
    X[27]=0.0; //v[28]
    X[28]=0.0; //v[29]
    X[29]=0.0; //v[30]
    X[30]=0.0; //v[31]
    X[31]=0.0; //v[32]
    X[32]=0.0; //v[33]
    X[33]=0.0; //v[34]
    X[34]=0.0; //v[35]
    X[35]=0.0; //v[36]
    X[36]=0.0; //v[37]
    X[37]=0.0; //v[38]
    X[38]=0.0; //v[39]
    X[39]=0.0; //v[40]
    X[40]=0.0; //v[41]
    X[41]=0.0; //v[42]
    X[42]=0.0; //v[43]
    X[43]=0.0; //v[44]
    X[44]=0.0; //v[45]
    X[45]=0.0; //v[46]
    X[46]=0.0; //v[47]
    X[47]=0.0; //v[48]
    X[48]=0.0; //v[49]
    X[49]=0.0; //v[50]
    X[50]=0.0; //v[51]
    X[51]=0.0; //v[52]
    X[52]=0.0; //v[53]
    X[53]=0.0; //v[54]
    X[54]=0.0; //v[55]
    X[55]=0.0; //v[56]
    X[56]=0.0; //v[57]
    X[57]=0.0; //v[58]
    X[58]=0.0; //v[59]
    X[59]=0.0; //v[60]
    X[60]=0.0; //v[61]
    X[61]=0.0; //v[62]
    X[62]=0.0; //v[63]
    X[63]=0.0; //v[64]
    X[64]=0.0; //v[65]
    X[65]=0.0; //v[66]
    X[66]=0.0; //v[67]
    X[67]=0.0; //v[68]
    X[68]=0.0; //v[69]
    X[69]=0.0; //v[70]
    X[70]=0.0; //v[71]
    X[71]=0.0; //v[72]
    X[72]=0.0; //v[73]
    X[73]=0.0; //v[74]
    X[74]=0.0; //v[75]
    X[75]=0.0; //v[76]
    X[76]=0.0; //v[77]
    X[77]=0.0; //v[78]
    X[78]=0.0; //v[79]
    X[79]=0.0; //v[80]
    X[80]=0.0; //v[81]
    X[81]=0.0; //v[82]
    X[82]=0.0; //v[83]
    X[83]=0.0; //v[84]
    X[84]=0.0; //v[85]
    X[85]=0.0; //v[86]
    X[86]=0.0; //v[87]
    X[87]=0.0; //v[88]
    X[88]=0.0; //v[89]
    X[89]=0.0; //v[90]
    X[90]=0.0; //v[91]
    X[91]=0.0; //v[92]
    X[92]=0.0; //v[93]
    X[93]=0.0; //v[94]
    X[94]=0.0; //v[95]
    X[95]=0.0; //v[96]
    X[96]=0.0; //v[97]
    X[97]=0.0; //v[98]
    X[98]=0.0; //v[99]
    X[99]=0.0; //v[100]
    X[100]=0.0; //v[101]
    X[101]=0.0; //v[102]
    X[102]=0.0; //v[103]
    X[103]=0.0; //v[104]
    X[104]=0.0; //v[105]
    X[105]=0.0; //v[106]
    X[106]=0.0; //v[107]
    X[107]=0.0; //v[108]
    X[108]=0.0; //v[109]
    X[109]=0.0; //v[110]
    X[110]=0.0; //v[111]
    X[111]=0.0; //v[112]
    X[112]=0.0; //v[113]
    X[113]=0.0; //v[114]
    X[114]=0.0; //v[115]
    X[115]=0.0; //v[116]
    X[116]=0.0; //v[117]
    X[117]=0.0; //v[118]
    X[118]=0.0; //v[119]
    X[119]=0.0; //v[120]
    X[120]=0.0; //v[121]
    X[121]=0.0; //v[122]
    X[122]=0.0; //v[123]
    X[123]=0.0; //v[124]
    X[124]=0.0; //v[125]
    X[125]=0.0; //v[126]
    X[126]=0.0; //v[127]
    X[127]=0.0; //v[128]
    X[128]=0.0; //v[129]
    X[129]=0.0; //v[130]
    X[130]=0.0; //v[131]
    X[131]=0.0; //v[132]
    X[132]=0.0; //v[133]
    X[133]=0.0; //v[134]
    X[134]=0.0; //v[135]
    X[135]=0.0; //v[136]
    X[136]=0.0; //v[137]
    X[137]=0.0; //v[138]
    X[138]=0.0; //v[139]
    X[139]=0.0; //v[140]
    X[140]=0.0; //v[141]
    X[141]=0.0; //v[142]
    X[142]=0.0; //v[143]
    X[143]=0.0; //v[144]
    X[144]=0.0; //v[145]
    X[145]=0.0; //v[146]
    X[146]=0.0; //v[147]
    X[147]=0.0; //v[148]
    X[148]=0.0; //v[149]
    X[149]=0.0; //v[150]
    X[150]=0.0; //v[151]
    X[151]=0.0; //v[152]
    X[152]=0.0; //v[153]
    X[153]=0.0; //v[154]
    X[154]=0.0; //v[155]
    X[155]=0.0; //v[156]
    X[156]=0.0; //v[157]
    X[157]=0.0; //v[158]
    X[158]=0.0; //v[159]
    X[159]=0.0; //v[160]
    X[160]=0.0; //v[161]
    X[161]=0.0; //v[162]
    X[162]=0.0; //v[163]
    X[163]=0.0; //v[164]
    X[164]=0.0; //v[165]
    X[165]=0.0; //v[166]
    X[166]=0.0; //v[167]
    X[167]=0.0; //v[168]
    X[168]=0.0; //v[169]
    X[169]=0.0; //v[170]
    X[170]=0.0; //v[171]
    X[171]=0.0; //v[172]
    X[172]=0.0; //v[173]
    X[173]=0.0; //v[174]
    X[174]=0.0; //v[175]
    X[175]=0.0; //v[176]
    X[176]=0.0; //v[177]
    X[177]=0.0; //v[178]
    X[178]=0.0; //v[179]
    X[179]=0.0; //v[180]
    X[180]=0.0; //v[181]
    X[181]=0.0; //v[182]
    X[182]=0.0; //v[183]
    X[183]=0.0; //v[184]
    X[184]=0.0; //v[185]
    X[185]=0.0; //v[186]
    X[186]=0.0; //v[187]
    X[187]=0.0; //v[188]
    X[188]=0.0; //v[189]
    X[189]=0.0; //v[190]
    X[190]=0.0; //v[191]
    X[191]=0.0; //v[192]
    X[192]=0.0; //v[193]
    X[193]=0.0; //v[194]
    X[194]=0.0; //v[195]
    X[195]=0.0; //v[196]
    X[196]=0.0; //v[197]
    X[197]=0.0; //v[198]
    X[198]=0.0; //v[199]
    X[199]=0.0; //v[200]
    X[200]=200.0; //x[1]
    X[201]=0.0; //x[2]
    X[202]=0.0; //x[3]
    X[203]=0.0; //x[4]
    X[204]=0.0; //x[5]
    X[205]=0.0; //x[6]
    X[206]=0.0; //x[7]
    X[207]=0.0; //x[8]
    X[208]=0.0; //x[9]
    X[209]=0.0; //x[10]
    X[210]=0.0; //x[11]
    X[211]=0.0; //x[12]
    X[212]=0.0; //x[13]
    X[213]=0.0; //x[14]
    X[214]=0.0; //x[15]
    X[215]=0.0; //x[16]
    X[216]=0.0; //x[17]
    X[217]=0.0; //x[18]
    X[218]=0.0; //x[19]
    X[219]=0.0; //x[20]
    X[220]=0.0; //x[21]
    X[221]=0.0; //x[22]
    X[222]=0.0; //x[23]
    X[223]=0.0; //x[24]
    X[224]=0.0; //x[25]
    X[225]=0.0; //x[26]
    X[226]=0.0; //x[27]
    X[227]=0.0; //x[28]
    X[228]=0.0; //x[29]
    X[229]=0.0; //x[30]
    X[230]=0.0; //x[31]
    X[231]=0.0; //x[32]
    X[232]=0.0; //x[33]
    X[233]=0.0; //x[34]
    X[234]=0.0; //x[35]
    X[235]=0.0; //x[36]
    X[236]=0.0; //x[37]
    X[237]=0.0; //x[38]
    X[238]=0.0; //x[39]
    X[239]=0.0; //x[40]
    X[240]=0.0; //x[41]
    X[241]=0.0; //x[42]
    X[242]=0.0; //x[43]
    X[243]=0.0; //x[44]
    X[244]=0.0; //x[45]
    X[245]=0.0; //x[46]
    X[246]=0.0; //x[47]
    X[247]=0.0; //x[48]
    X[248]=0.0; //x[49]
    X[249]=0.0; //x[50]
    X[250]=0.0; //x[51]
    X[251]=0.0; //x[52]
    X[252]=0.0; //x[53]
    X[253]=0.0; //x[54]
    X[254]=0.0; //x[55]
    X[255]=0.0; //x[56]
    X[256]=0.0; //x[57]
    X[257]=0.0; //x[58]
    X[258]=0.0; //x[59]
    X[259]=0.0; //x[60]
    X[260]=0.0; //x[61]
    X[261]=0.0; //x[62]
    X[262]=0.0; //x[63]
    X[263]=0.0; //x[64]
    X[264]=0.0; //x[65]
    X[265]=0.0; //x[66]
    X[266]=0.0; //x[67]
    X[267]=0.0; //x[68]
    X[268]=0.0; //x[69]
    X[269]=0.0; //x[70]
    X[270]=0.0; //x[71]
    X[271]=0.0; //x[72]
    X[272]=0.0; //x[73]
    X[273]=0.0; //x[74]
    X[274]=0.0; //x[75]
    X[275]=0.0; //x[76]
    X[276]=0.0; //x[77]
    X[277]=0.0; //x[78]
    X[278]=0.0; //x[79]
    X[279]=0.0; //x[80]
    X[280]=0.0; //x[81]
    X[281]=0.0; //x[82]
    X[282]=0.0; //x[83]
    X[283]=0.0; //x[84]
    X[284]=0.0; //x[85]
    X[285]=0.0; //x[86]
    X[286]=0.0; //x[87]
    X[287]=0.0; //x[88]
    X[288]=0.0; //x[89]
    X[289]=0.0; //x[90]
    X[290]=0.0; //x[91]
    X[291]=0.0; //x[92]
    X[292]=0.0; //x[93]
    X[293]=0.0; //x[94]
    X[294]=0.0; //x[95]
    X[295]=0.0; //x[96]
    X[296]=0.0; //x[97]
    X[297]=0.0; //x[98]
    X[298]=0.0; //x[99]
    X[299]=0.0; //x[100]
    X[300]=0.0; //x[101]
    X[301]=0.0; //x[102]
    X[302]=0.0; //x[103]
    X[303]=0.0; //x[104]
    X[304]=0.0; //x[105]
    X[305]=0.0; //x[106]
    X[306]=0.0; //x[107]
    X[307]=0.0; //x[108]
    X[308]=0.0; //x[109]
    X[309]=0.0; //x[110]
    X[310]=0.0; //x[111]
    X[311]=0.0; //x[112]
    X[312]=0.0; //x[113]
    X[313]=0.0; //x[114]
    X[314]=0.0; //x[115]
    X[315]=0.0; //x[116]
    X[316]=0.0; //x[117]
    X[317]=0.0; //x[118]
    X[318]=0.0; //x[119]
    X[319]=0.0; //x[120]
    X[320]=0.0; //x[121]
    X[321]=0.0; //x[122]
    X[322]=0.0; //x[123]
    X[323]=0.0; //x[124]
    X[324]=0.0; //x[125]
    X[325]=0.0; //x[126]
    X[326]=0.0; //x[127]
    X[327]=0.0; //x[128]
    X[328]=0.0; //x[129]
    X[329]=0.0; //x[130]
    X[330]=0.0; //x[131]
    X[331]=0.0; //x[132]
    X[332]=0.0; //x[133]
    X[333]=0.0; //x[134]
    X[334]=0.0; //x[135]
    X[335]=0.0; //x[136]
    X[336]=0.0; //x[137]
    X[337]=0.0; //x[138]
    X[338]=0.0; //x[139]
    X[339]=0.0; //x[140]
    X[340]=0.0; //x[141]
    X[341]=0.0; //x[142]
    X[342]=0.0; //x[143]
    X[343]=0.0; //x[144]
    X[344]=0.0; //x[145]
    X[345]=0.0; //x[146]
    X[346]=0.0; //x[147]
    X[347]=0.0; //x[148]
    X[348]=0.0; //x[149]
    X[349]=0.0; //x[150]
    X[350]=0.0; //x[151]
    X[351]=0.0; //x[152]
    X[352]=0.0; //x[153]
    X[353]=0.0; //x[154]
    X[354]=0.0; //x[155]
    X[355]=0.0; //x[156]
    X[356]=0.0; //x[157]
    X[357]=0.0; //x[158]
    X[358]=0.0; //x[159]
    X[359]=0.0; //x[160]
    X[360]=0.0; //x[161]
    X[361]=0.0; //x[162]
    X[362]=0.0; //x[163]
    X[363]=0.0; //x[164]
    X[364]=0.0; //x[165]
    X[365]=0.0; //x[166]
    X[366]=0.0; //x[167]
    X[367]=0.0; //x[168]
    X[368]=0.0; //x[169]
    X[369]=0.0; //x[170]
    X[370]=0.0; //x[171]
    X[371]=0.0; //x[172]
    X[372]=0.0; //x[173]
    X[373]=0.0; //x[174]
    X[374]=0.0; //x[175]
    X[375]=0.0; //x[176]
    X[376]=0.0; //x[177]
    X[377]=0.0; //x[178]
    X[378]=0.0; //x[179]
    X[379]=0.0; //x[180]
    X[380]=0.0; //x[181]
    X[381]=0.0; //x[182]
    X[382]=0.0; //x[183]
    X[383]=0.0; //x[184]
    X[384]=0.0; //x[185]
    X[385]=0.0; //x[186]
    X[386]=0.0; //x[187]
    X[387]=0.0; //x[188]
    X[388]=0.0; //x[189]
    X[389]=0.0; //x[190]
    X[390]=0.0; //x[191]
    X[391]=0.0; //x[192]
    X[392]=0.0; //x[193]
    X[393]=0.0; //x[194]
    X[394]=0.0; //x[195]
    X[395]=0.0; //x[196]
    X[396]=0.0; //x[197]
    X[397]=0.0; //x[198]
    X[398]=0.0; //x[199]
    X[399]=0.0; //x[200]

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
