
#ifndef CASCADEDFIRSTORDER_N_400_PERTHREAD_SYSTEMDEFINITION_H
#define CASCADEDFIRSTORDER_N_400_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    F[400]=((X[399] - X[400]) / X[0]);
    F[399]=((X[398] - X[399]) / X[0]);
    F[398]=((X[397] - X[398]) / X[0]);
    F[397]=((X[396] - X[397]) / X[0]);
    F[396]=((X[395] - X[396]) / X[0]);
    F[395]=((X[394] - X[395]) / X[0]);
    F[394]=((X[393] - X[394]) / X[0]);
    F[393]=((X[392] - X[393]) / X[0]);
    F[392]=((X[391] - X[392]) / X[0]);
    F[391]=((X[390] - X[391]) / X[0]);
    F[390]=((X[389] - X[390]) / X[0]);
    F[389]=((X[388] - X[389]) / X[0]);
    F[388]=((X[387] - X[388]) / X[0]);
    F[387]=((X[386] - X[387]) / X[0]);
    F[386]=((X[385] - X[386]) / X[0]);
    F[385]=((X[384] - X[385]) / X[0]);
    F[384]=((X[383] - X[384]) / X[0]);
    F[383]=((X[382] - X[383]) / X[0]);
    F[382]=((X[381] - X[382]) / X[0]);
    F[381]=((X[380] - X[381]) / X[0]);
    F[380]=((X[379] - X[380]) / X[0]);
    F[379]=((X[378] - X[379]) / X[0]);
    F[378]=((X[377] - X[378]) / X[0]);
    F[377]=((X[376] - X[377]) / X[0]);
    F[376]=((X[375] - X[376]) / X[0]);
    F[375]=((X[374] - X[375]) / X[0]);
    F[374]=((X[373] - X[374]) / X[0]);
    F[373]=((X[372] - X[373]) / X[0]);
    F[372]=((X[371] - X[372]) / X[0]);
    F[371]=((X[370] - X[371]) / X[0]);
    F[370]=((X[369] - X[370]) / X[0]);
    F[369]=((X[368] - X[369]) / X[0]);
    F[368]=((X[367] - X[368]) / X[0]);
    F[367]=((X[366] - X[367]) / X[0]);
    F[366]=((X[365] - X[366]) / X[0]);
    F[365]=((X[364] - X[365]) / X[0]);
    F[364]=((X[363] - X[364]) / X[0]);
    F[363]=((X[362] - X[363]) / X[0]);
    F[362]=((X[361] - X[362]) / X[0]);
    F[361]=((X[360] - X[361]) / X[0]);
    F[360]=((X[359] - X[360]) / X[0]);
    F[359]=((X[358] - X[359]) / X[0]);
    F[358]=((X[357] - X[358]) / X[0]);
    F[357]=((X[356] - X[357]) / X[0]);
    F[356]=((X[355] - X[356]) / X[0]);
    F[355]=((X[354] - X[355]) / X[0]);
    F[354]=((X[353] - X[354]) / X[0]);
    F[353]=((X[352] - X[353]) / X[0]);
    F[352]=((X[351] - X[352]) / X[0]);
    F[351]=((X[350] - X[351]) / X[0]);
    F[350]=((X[349] - X[350]) / X[0]);
    F[349]=((X[348] - X[349]) / X[0]);
    F[348]=((X[347] - X[348]) / X[0]);
    F[347]=((X[346] - X[347]) / X[0]);
    F[346]=((X[345] - X[346]) / X[0]);
    F[345]=((X[344] - X[345]) / X[0]);
    F[344]=((X[343] - X[344]) / X[0]);
    F[343]=((X[342] - X[343]) / X[0]);
    F[342]=((X[341] - X[342]) / X[0]);
    F[341]=((X[340] - X[341]) / X[0]);
    F[340]=((X[339] - X[340]) / X[0]);
    F[339]=((X[338] - X[339]) / X[0]);
    F[338]=((X[337] - X[338]) / X[0]);
    F[337]=((X[336] - X[337]) / X[0]);
    F[336]=((X[335] - X[336]) / X[0]);
    F[335]=((X[334] - X[335]) / X[0]);
    F[334]=((X[333] - X[334]) / X[0]);
    F[333]=((X[332] - X[333]) / X[0]);
    F[332]=((X[331] - X[332]) / X[0]);
    F[331]=((X[330] - X[331]) / X[0]);
    F[330]=((X[329] - X[330]) / X[0]);
    F[329]=((X[328] - X[329]) / X[0]);
    F[328]=((X[327] - X[328]) / X[0]);
    F[327]=((X[326] - X[327]) / X[0]);
    F[326]=((X[325] - X[326]) / X[0]);
    F[325]=((X[324] - X[325]) / X[0]);
    F[324]=((X[323] - X[324]) / X[0]);
    F[323]=((X[322] - X[323]) / X[0]);
    F[322]=((X[321] - X[322]) / X[0]);
    F[321]=((X[320] - X[321]) / X[0]);
    F[320]=((X[319] - X[320]) / X[0]);
    F[319]=((X[318] - X[319]) / X[0]);
    F[318]=((X[317] - X[318]) / X[0]);
    F[317]=((X[316] - X[317]) / X[0]);
    F[316]=((X[315] - X[316]) / X[0]);
    F[315]=((X[314] - X[315]) / X[0]);
    F[314]=((X[313] - X[314]) / X[0]);
    F[313]=((X[312] - X[313]) / X[0]);
    F[312]=((X[311] - X[312]) / X[0]);
    F[311]=((X[310] - X[311]) / X[0]);
    F[310]=((X[309] - X[310]) / X[0]);
    F[309]=((X[308] - X[309]) / X[0]);
    F[308]=((X[307] - X[308]) / X[0]);
    F[307]=((X[306] - X[307]) / X[0]);
    F[306]=((X[305] - X[306]) / X[0]);
    F[305]=((X[304] - X[305]) / X[0]);
    F[304]=((X[303] - X[304]) / X[0]);
    F[303]=((X[302] - X[303]) / X[0]);
    F[302]=((X[301] - X[302]) / X[0]);
    F[301]=((X[300] - X[301]) / X[0]);
    F[300]=((X[299] - X[300]) / X[0]);
    F[299]=((X[298] - X[299]) / X[0]);
    F[298]=((X[297] - X[298]) / X[0]);
    F[297]=((X[296] - X[297]) / X[0]);
    F[296]=((X[295] - X[296]) / X[0]);
    F[295]=((X[294] - X[295]) / X[0]);
    F[294]=((X[293] - X[294]) / X[0]);
    F[293]=((X[292] - X[293]) / X[0]);
    F[292]=((X[291] - X[292]) / X[0]);
    F[291]=((X[290] - X[291]) / X[0]);
    F[290]=((X[289] - X[290]) / X[0]);
    F[289]=((X[288] - X[289]) / X[0]);
    F[288]=((X[287] - X[288]) / X[0]);
    F[287]=((X[286] - X[287]) / X[0]);
    F[286]=((X[285] - X[286]) / X[0]);
    F[285]=((X[284] - X[285]) / X[0]);
    F[284]=((X[283] - X[284]) / X[0]);
    F[283]=((X[282] - X[283]) / X[0]);
    F[282]=((X[281] - X[282]) / X[0]);
    F[281]=((X[280] - X[281]) / X[0]);
    F[280]=((X[279] - X[280]) / X[0]);
    F[279]=((X[278] - X[279]) / X[0]);
    F[278]=((X[277] - X[278]) / X[0]);
    F[277]=((X[276] - X[277]) / X[0]);
    F[276]=((X[275] - X[276]) / X[0]);
    F[275]=((X[274] - X[275]) / X[0]);
    F[274]=((X[273] - X[274]) / X[0]);
    F[273]=((X[272] - X[273]) / X[0]);
    F[272]=((X[271] - X[272]) / X[0]);
    F[271]=((X[270] - X[271]) / X[0]);
    F[270]=((X[269] - X[270]) / X[0]);
    F[269]=((X[268] - X[269]) / X[0]);
    F[268]=((X[267] - X[268]) / X[0]);
    F[267]=((X[266] - X[267]) / X[0]);
    F[266]=((X[265] - X[266]) / X[0]);
    F[265]=((X[264] - X[265]) / X[0]);
    F[264]=((X[263] - X[264]) / X[0]);
    F[263]=((X[262] - X[263]) / X[0]);
    F[262]=((X[261] - X[262]) / X[0]);
    F[261]=((X[260] - X[261]) / X[0]);
    F[260]=((X[259] - X[260]) / X[0]);
    F[259]=((X[258] - X[259]) / X[0]);
    F[258]=((X[257] - X[258]) / X[0]);
    F[257]=((X[256] - X[257]) / X[0]);
    F[256]=((X[255] - X[256]) / X[0]);
    F[255]=((X[254] - X[255]) / X[0]);
    F[254]=((X[253] - X[254]) / X[0]);
    F[253]=((X[252] - X[253]) / X[0]);
    F[252]=((X[251] - X[252]) / X[0]);
    F[251]=((X[250] - X[251]) / X[0]);
    F[250]=((X[249] - X[250]) / X[0]);
    F[249]=((X[248] - X[249]) / X[0]);
    F[248]=((X[247] - X[248]) / X[0]);
    F[247]=((X[246] - X[247]) / X[0]);
    F[246]=((X[245] - X[246]) / X[0]);
    F[245]=((X[244] - X[245]) / X[0]);
    F[244]=((X[243] - X[244]) / X[0]);
    F[243]=((X[242] - X[243]) / X[0]);
    F[242]=((X[241] - X[242]) / X[0]);
    F[241]=((X[240] - X[241]) / X[0]);
    F[240]=((X[239] - X[240]) / X[0]);
    F[239]=((X[238] - X[239]) / X[0]);
    F[238]=((X[237] - X[238]) / X[0]);
    F[237]=((X[236] - X[237]) / X[0]);
    F[236]=((X[235] - X[236]) / X[0]);
    F[235]=((X[234] - X[235]) / X[0]);
    F[234]=((X[233] - X[234]) / X[0]);
    F[233]=((X[232] - X[233]) / X[0]);
    F[232]=((X[231] - X[232]) / X[0]);
    F[231]=((X[230] - X[231]) / X[0]);
    F[230]=((X[229] - X[230]) / X[0]);
    F[229]=((X[228] - X[229]) / X[0]);
    F[228]=((X[227] - X[228]) / X[0]);
    F[227]=((X[226] - X[227]) / X[0]);
    F[226]=((X[225] - X[226]) / X[0]);
    F[225]=((X[224] - X[225]) / X[0]);
    F[224]=((X[223] - X[224]) / X[0]);
    F[223]=((X[222] - X[223]) / X[0]);
    F[222]=((X[221] - X[222]) / X[0]);
    F[221]=((X[220] - X[221]) / X[0]);
    F[220]=((X[219] - X[220]) / X[0]);
    F[219]=((X[218] - X[219]) / X[0]);
    F[218]=((X[217] - X[218]) / X[0]);
    F[217]=((X[216] - X[217]) / X[0]);
    F[216]=((X[215] - X[216]) / X[0]);
    F[215]=((X[214] - X[215]) / X[0]);
    F[214]=((X[213] - X[214]) / X[0]);
    F[213]=((X[212] - X[213]) / X[0]);
    F[212]=((X[211] - X[212]) / X[0]);
    F[211]=((X[210] - X[211]) / X[0]);
    F[210]=((X[209] - X[210]) / X[0]);
    F[209]=((X[208] - X[209]) / X[0]);
    F[208]=((X[207] - X[208]) / X[0]);
    F[207]=((X[206] - X[207]) / X[0]);
    F[206]=((X[205] - X[206]) / X[0]);
    F[205]=((X[204] - X[205]) / X[0]);
    F[204]=((X[203] - X[204]) / X[0]);
    F[203]=((X[202] - X[203]) / X[0]);
    F[202]=((X[201] - X[202]) / X[0]);
    F[201]=((X[200] - X[201]) / X[0]);
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
    sPARi[0]=400; //N
    X[0]=(0.0025 * sPAR[0]); //tau
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
    X[201]=0.0; //x[201]
    X[202]=0.0; //x[202]
    X[203]=0.0; //x[203]
    X[204]=0.0; //x[204]
    X[205]=0.0; //x[205]
    X[206]=0.0; //x[206]
    X[207]=0.0; //x[207]
    X[208]=0.0; //x[208]
    X[209]=0.0; //x[209]
    X[210]=0.0; //x[210]
    X[211]=0.0; //x[211]
    X[212]=0.0; //x[212]
    X[213]=0.0; //x[213]
    X[214]=0.0; //x[214]
    X[215]=0.0; //x[215]
    X[216]=0.0; //x[216]
    X[217]=0.0; //x[217]
    X[218]=0.0; //x[218]
    X[219]=0.0; //x[219]
    X[220]=0.0; //x[220]
    X[221]=0.0; //x[221]
    X[222]=0.0; //x[222]
    X[223]=0.0; //x[223]
    X[224]=0.0; //x[224]
    X[225]=0.0; //x[225]
    X[226]=0.0; //x[226]
    X[227]=0.0; //x[227]
    X[228]=0.0; //x[228]
    X[229]=0.0; //x[229]
    X[230]=0.0; //x[230]
    X[231]=0.0; //x[231]
    X[232]=0.0; //x[232]
    X[233]=0.0; //x[233]
    X[234]=0.0; //x[234]
    X[235]=0.0; //x[235]
    X[236]=0.0; //x[236]
    X[237]=0.0; //x[237]
    X[238]=0.0; //x[238]
    X[239]=0.0; //x[239]
    X[240]=0.0; //x[240]
    X[241]=0.0; //x[241]
    X[242]=0.0; //x[242]
    X[243]=0.0; //x[243]
    X[244]=0.0; //x[244]
    X[245]=0.0; //x[245]
    X[246]=0.0; //x[246]
    X[247]=0.0; //x[247]
    X[248]=0.0; //x[248]
    X[249]=0.0; //x[249]
    X[250]=0.0; //x[250]
    X[251]=0.0; //x[251]
    X[252]=0.0; //x[252]
    X[253]=0.0; //x[253]
    X[254]=0.0; //x[254]
    X[255]=0.0; //x[255]
    X[256]=0.0; //x[256]
    X[257]=0.0; //x[257]
    X[258]=0.0; //x[258]
    X[259]=0.0; //x[259]
    X[260]=0.0; //x[260]
    X[261]=0.0; //x[261]
    X[262]=0.0; //x[262]
    X[263]=0.0; //x[263]
    X[264]=0.0; //x[264]
    X[265]=0.0; //x[265]
    X[266]=0.0; //x[266]
    X[267]=0.0; //x[267]
    X[268]=0.0; //x[268]
    X[269]=0.0; //x[269]
    X[270]=0.0; //x[270]
    X[271]=0.0; //x[271]
    X[272]=0.0; //x[272]
    X[273]=0.0; //x[273]
    X[274]=0.0; //x[274]
    X[275]=0.0; //x[275]
    X[276]=0.0; //x[276]
    X[277]=0.0; //x[277]
    X[278]=0.0; //x[278]
    X[279]=0.0; //x[279]
    X[280]=0.0; //x[280]
    X[281]=0.0; //x[281]
    X[282]=0.0; //x[282]
    X[283]=0.0; //x[283]
    X[284]=0.0; //x[284]
    X[285]=0.0; //x[285]
    X[286]=0.0; //x[286]
    X[287]=0.0; //x[287]
    X[288]=0.0; //x[288]
    X[289]=0.0; //x[289]
    X[290]=0.0; //x[290]
    X[291]=0.0; //x[291]
    X[292]=0.0; //x[292]
    X[293]=0.0; //x[293]
    X[294]=0.0; //x[294]
    X[295]=0.0; //x[295]
    X[296]=0.0; //x[296]
    X[297]=0.0; //x[297]
    X[298]=0.0; //x[298]
    X[299]=0.0; //x[299]
    X[300]=0.0; //x[300]
    X[301]=0.0; //x[301]
    X[302]=0.0; //x[302]
    X[303]=0.0; //x[303]
    X[304]=0.0; //x[304]
    X[305]=0.0; //x[305]
    X[306]=0.0; //x[306]
    X[307]=0.0; //x[307]
    X[308]=0.0; //x[308]
    X[309]=0.0; //x[309]
    X[310]=0.0; //x[310]
    X[311]=0.0; //x[311]
    X[312]=0.0; //x[312]
    X[313]=0.0; //x[313]
    X[314]=0.0; //x[314]
    X[315]=0.0; //x[315]
    X[316]=0.0; //x[316]
    X[317]=0.0; //x[317]
    X[318]=0.0; //x[318]
    X[319]=0.0; //x[319]
    X[320]=0.0; //x[320]
    X[321]=0.0; //x[321]
    X[322]=0.0; //x[322]
    X[323]=0.0; //x[323]
    X[324]=0.0; //x[324]
    X[325]=0.0; //x[325]
    X[326]=0.0; //x[326]
    X[327]=0.0; //x[327]
    X[328]=0.0; //x[328]
    X[329]=0.0; //x[329]
    X[330]=0.0; //x[330]
    X[331]=0.0; //x[331]
    X[332]=0.0; //x[332]
    X[333]=0.0; //x[333]
    X[334]=0.0; //x[334]
    X[335]=0.0; //x[335]
    X[336]=0.0; //x[336]
    X[337]=0.0; //x[337]
    X[338]=0.0; //x[338]
    X[339]=0.0; //x[339]
    X[340]=0.0; //x[340]
    X[341]=0.0; //x[341]
    X[342]=0.0; //x[342]
    X[343]=0.0; //x[343]
    X[344]=0.0; //x[344]
    X[345]=0.0; //x[345]
    X[346]=0.0; //x[346]
    X[347]=0.0; //x[347]
    X[348]=0.0; //x[348]
    X[349]=0.0; //x[349]
    X[350]=0.0; //x[350]
    X[351]=0.0; //x[351]
    X[352]=0.0; //x[352]
    X[353]=0.0; //x[353]
    X[354]=0.0; //x[354]
    X[355]=0.0; //x[355]
    X[356]=0.0; //x[356]
    X[357]=0.0; //x[357]
    X[358]=0.0; //x[358]
    X[359]=0.0; //x[359]
    X[360]=0.0; //x[360]
    X[361]=0.0; //x[361]
    X[362]=0.0; //x[362]
    X[363]=0.0; //x[363]
    X[364]=0.0; //x[364]
    X[365]=0.0; //x[365]
    X[366]=0.0; //x[366]
    X[367]=0.0; //x[367]
    X[368]=0.0; //x[368]
    X[369]=0.0; //x[369]
    X[370]=0.0; //x[370]
    X[371]=0.0; //x[371]
    X[372]=0.0; //x[372]
    X[373]=0.0; //x[373]
    X[374]=0.0; //x[374]
    X[375]=0.0; //x[375]
    X[376]=0.0; //x[376]
    X[377]=0.0; //x[377]
    X[378]=0.0; //x[378]
    X[379]=0.0; //x[379]
    X[380]=0.0; //x[380]
    X[381]=0.0; //x[381]
    X[382]=0.0; //x[382]
    X[383]=0.0; //x[383]
    X[384]=0.0; //x[384]
    X[385]=0.0; //x[385]
    X[386]=0.0; //x[386]
    X[387]=0.0; //x[387]
    X[388]=0.0; //x[388]
    X[389]=0.0; //x[389]
    X[390]=0.0; //x[390]
    X[391]=0.0; //x[391]
    X[392]=0.0; //x[392]
    X[393]=0.0; //x[393]
    X[394]=0.0; //x[394]
    X[395]=0.0; //x[395]
    X[396]=0.0; //x[396]
    X[397]=0.0; //x[397]
    X[398]=0.0; //x[398]
    X[399]=0.0; //x[399]
    X[400]=0.0; //x[400]

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
