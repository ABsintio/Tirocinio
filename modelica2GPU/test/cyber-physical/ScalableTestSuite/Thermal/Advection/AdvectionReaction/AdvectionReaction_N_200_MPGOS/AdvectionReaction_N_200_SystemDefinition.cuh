
#ifndef ADVECTIONREACTION_N_200_PERTHREAD_SYSTEMDEFINITION_H
#define ADVECTIONREACTION_N_200_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>
#include "Functions.cuh"


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[0]=1.0;
    F[199]=((200.0 * (X[198] - X[199])) - (sPAR[0] * (X[199] * ((-0.5 + X[199]) * (-1.0 + X[199])))));
    F[198]=((200.0 * (X[197] - X[198])) - (sPAR[0] * (X[198] * ((-0.5 + X[198]) * (-1.0 + X[198])))));
    F[197]=((200.0 * (X[196] - X[197])) - (sPAR[0] * (X[197] * ((-0.5 + X[197]) * (-1.0 + X[197])))));
    F[196]=((200.0 * (X[195] - X[196])) - (sPAR[0] * (X[196] * ((-0.5 + X[196]) * (-1.0 + X[196])))));
    F[195]=((200.0 * (X[194] - X[195])) - (sPAR[0] * (X[195] * ((-0.5 + X[195]) * (-1.0 + X[195])))));
    F[194]=((200.0 * (X[193] - X[194])) - (sPAR[0] * (X[194] * ((-0.5 + X[194]) * (-1.0 + X[194])))));
    F[193]=((200.0 * (X[192] - X[193])) - (sPAR[0] * (X[193] * ((-0.5 + X[193]) * (-1.0 + X[193])))));
    F[192]=((200.0 * (X[191] - X[192])) - (sPAR[0] * (X[192] * ((-0.5 + X[192]) * (-1.0 + X[192])))));
    F[191]=((200.0 * (X[190] - X[191])) - (sPAR[0] * (X[191] * ((-0.5 + X[191]) * (-1.0 + X[191])))));
    F[190]=((200.0 * (X[189] - X[190])) - (sPAR[0] * (X[190] * ((-0.5 + X[190]) * (-1.0 + X[190])))));
    F[189]=((200.0 * (X[188] - X[189])) - (sPAR[0] * (X[189] * ((-0.5 + X[189]) * (-1.0 + X[189])))));
    F[188]=((200.0 * (X[187] - X[188])) - (sPAR[0] * (X[188] * ((-0.5 + X[188]) * (-1.0 + X[188])))));
    F[187]=((200.0 * (X[186] - X[187])) - (sPAR[0] * (X[187] * ((-0.5 + X[187]) * (-1.0 + X[187])))));
    F[186]=((200.0 * (X[185] - X[186])) - (sPAR[0] * (X[186] * ((-0.5 + X[186]) * (-1.0 + X[186])))));
    F[185]=((200.0 * (X[184] - X[185])) - (sPAR[0] * (X[185] * ((-0.5 + X[185]) * (-1.0 + X[185])))));
    F[184]=((200.0 * (X[183] - X[184])) - (sPAR[0] * (X[184] * ((-0.5 + X[184]) * (-1.0 + X[184])))));
    F[183]=((200.0 * (X[182] - X[183])) - (sPAR[0] * (X[183] * ((-0.5 + X[183]) * (-1.0 + X[183])))));
    F[182]=((200.0 * (X[181] - X[182])) - (sPAR[0] * (X[182] * ((-0.5 + X[182]) * (-1.0 + X[182])))));
    F[181]=((200.0 * (X[180] - X[181])) - (sPAR[0] * (X[181] * ((-0.5 + X[181]) * (-1.0 + X[181])))));
    F[180]=((200.0 * (X[179] - X[180])) - (sPAR[0] * (X[180] * ((-0.5 + X[180]) * (-1.0 + X[180])))));
    F[179]=((200.0 * (X[178] - X[179])) - (sPAR[0] * (X[179] * ((-0.5 + X[179]) * (-1.0 + X[179])))));
    F[178]=((200.0 * (X[177] - X[178])) - (sPAR[0] * (X[178] * ((-0.5 + X[178]) * (-1.0 + X[178])))));
    F[177]=((200.0 * (X[176] - X[177])) - (sPAR[0] * (X[177] * ((-0.5 + X[177]) * (-1.0 + X[177])))));
    F[176]=((200.0 * (X[175] - X[176])) - (sPAR[0] * (X[176] * ((-0.5 + X[176]) * (-1.0 + X[176])))));
    F[175]=((200.0 * (X[174] - X[175])) - (sPAR[0] * (X[175] * ((-0.5 + X[175]) * (-1.0 + X[175])))));
    F[174]=((200.0 * (X[173] - X[174])) - (sPAR[0] * (X[174] * ((-0.5 + X[174]) * (-1.0 + X[174])))));
    F[173]=((200.0 * (X[172] - X[173])) - (sPAR[0] * (X[173] * ((-0.5 + X[173]) * (-1.0 + X[173])))));
    F[172]=((200.0 * (X[171] - X[172])) - (sPAR[0] * (X[172] * ((-0.5 + X[172]) * (-1.0 + X[172])))));
    F[171]=((200.0 * (X[170] - X[171])) - (sPAR[0] * (X[171] * ((-0.5 + X[171]) * (-1.0 + X[171])))));
    F[170]=((200.0 * (X[169] - X[170])) - (sPAR[0] * (X[170] * ((-0.5 + X[170]) * (-1.0 + X[170])))));
    F[169]=((200.0 * (X[168] - X[169])) - (sPAR[0] * (X[169] * ((-0.5 + X[169]) * (-1.0 + X[169])))));
    F[168]=((200.0 * (X[167] - X[168])) - (sPAR[0] * (X[168] * ((-0.5 + X[168]) * (-1.0 + X[168])))));
    F[167]=((200.0 * (X[166] - X[167])) - (sPAR[0] * (X[167] * ((-0.5 + X[167]) * (-1.0 + X[167])))));
    F[166]=((200.0 * (X[165] - X[166])) - (sPAR[0] * (X[166] * ((-0.5 + X[166]) * (-1.0 + X[166])))));
    F[165]=((200.0 * (X[164] - X[165])) - (sPAR[0] * (X[165] * ((-0.5 + X[165]) * (-1.0 + X[165])))));
    F[164]=((200.0 * (X[163] - X[164])) - (sPAR[0] * (X[164] * ((-0.5 + X[164]) * (-1.0 + X[164])))));
    F[163]=((200.0 * (X[162] - X[163])) - (sPAR[0] * (X[163] * ((-0.5 + X[163]) * (-1.0 + X[163])))));
    F[162]=((200.0 * (X[161] - X[162])) - (sPAR[0] * (X[162] * ((-0.5 + X[162]) * (-1.0 + X[162])))));
    F[161]=((200.0 * (X[160] - X[161])) - (sPAR[0] * (X[161] * ((-0.5 + X[161]) * (-1.0 + X[161])))));
    F[160]=((200.0 * (X[159] - X[160])) - (sPAR[0] * (X[160] * ((-0.5 + X[160]) * (-1.0 + X[160])))));
    F[159]=((200.0 * (X[158] - X[159])) - (sPAR[0] * (X[159] * ((-0.5 + X[159]) * (-1.0 + X[159])))));
    F[158]=((200.0 * (X[157] - X[158])) - (sPAR[0] * (X[158] * ((-0.5 + X[158]) * (-1.0 + X[158])))));
    F[157]=((200.0 * (X[156] - X[157])) - (sPAR[0] * (X[157] * ((-0.5 + X[157]) * (-1.0 + X[157])))));
    F[156]=((200.0 * (X[155] - X[156])) - (sPAR[0] * (X[156] * ((-0.5 + X[156]) * (-1.0 + X[156])))));
    F[155]=((200.0 * (X[154] - X[155])) - (sPAR[0] * (X[155] * ((-0.5 + X[155]) * (-1.0 + X[155])))));
    F[154]=((200.0 * (X[153] - X[154])) - (sPAR[0] * (X[154] * ((-0.5 + X[154]) * (-1.0 + X[154])))));
    F[153]=((200.0 * (X[152] - X[153])) - (sPAR[0] * (X[153] * ((-0.5 + X[153]) * (-1.0 + X[153])))));
    F[152]=((200.0 * (X[151] - X[152])) - (sPAR[0] * (X[152] * ((-0.5 + X[152]) * (-1.0 + X[152])))));
    F[151]=((200.0 * (X[150] - X[151])) - (sPAR[0] * (X[151] * ((-0.5 + X[151]) * (-1.0 + X[151])))));
    F[150]=((200.0 * (X[149] - X[150])) - (sPAR[0] * (X[150] * ((-0.5 + X[150]) * (-1.0 + X[150])))));
    F[149]=((200.0 * (X[148] - X[149])) - (sPAR[0] * (X[149] * ((-0.5 + X[149]) * (-1.0 + X[149])))));
    F[148]=((200.0 * (X[147] - X[148])) - (sPAR[0] * (X[148] * ((-0.5 + X[148]) * (-1.0 + X[148])))));
    F[147]=((200.0 * (X[146] - X[147])) - (sPAR[0] * (X[147] * ((-0.5 + X[147]) * (-1.0 + X[147])))));
    F[146]=((200.0 * (X[145] - X[146])) - (sPAR[0] * (X[146] * ((-0.5 + X[146]) * (-1.0 + X[146])))));
    F[145]=((200.0 * (X[144] - X[145])) - (sPAR[0] * (X[145] * ((-0.5 + X[145]) * (-1.0 + X[145])))));
    F[144]=((200.0 * (X[143] - X[144])) - (sPAR[0] * (X[144] * ((-0.5 + X[144]) * (-1.0 + X[144])))));
    F[143]=((200.0 * (X[142] - X[143])) - (sPAR[0] * (X[143] * ((-0.5 + X[143]) * (-1.0 + X[143])))));
    F[142]=((200.0 * (X[141] - X[142])) - (sPAR[0] * (X[142] * ((-0.5 + X[142]) * (-1.0 + X[142])))));
    F[141]=((200.0 * (X[140] - X[141])) - (sPAR[0] * (X[141] * ((-0.5 + X[141]) * (-1.0 + X[141])))));
    F[140]=((200.0 * (X[139] - X[140])) - (sPAR[0] * (X[140] * ((-0.5 + X[140]) * (-1.0 + X[140])))));
    F[139]=((200.0 * (X[138] - X[139])) - (sPAR[0] * (X[139] * ((-0.5 + X[139]) * (-1.0 + X[139])))));
    F[138]=((200.0 * (X[137] - X[138])) - (sPAR[0] * (X[138] * ((-0.5 + X[138]) * (-1.0 + X[138])))));
    F[137]=((200.0 * (X[136] - X[137])) - (sPAR[0] * (X[137] * ((-0.5 + X[137]) * (-1.0 + X[137])))));
    F[136]=((200.0 * (X[135] - X[136])) - (sPAR[0] * (X[136] * ((-0.5 + X[136]) * (-1.0 + X[136])))));
    F[135]=((200.0 * (X[134] - X[135])) - (sPAR[0] * (X[135] * ((-0.5 + X[135]) * (-1.0 + X[135])))));
    F[134]=((200.0 * (X[133] - X[134])) - (sPAR[0] * (X[134] * ((-0.5 + X[134]) * (-1.0 + X[134])))));
    F[133]=((200.0 * (X[132] - X[133])) - (sPAR[0] * (X[133] * ((-0.5 + X[133]) * (-1.0 + X[133])))));
    F[132]=((200.0 * (X[131] - X[132])) - (sPAR[0] * (X[132] * ((-0.5 + X[132]) * (-1.0 + X[132])))));
    F[131]=((200.0 * (X[130] - X[131])) - (sPAR[0] * (X[131] * ((-0.5 + X[131]) * (-1.0 + X[131])))));
    F[130]=((200.0 * (X[129] - X[130])) - (sPAR[0] * (X[130] * ((-0.5 + X[130]) * (-1.0 + X[130])))));
    F[129]=((200.0 * (X[128] - X[129])) - (sPAR[0] * (X[129] * ((-0.5 + X[129]) * (-1.0 + X[129])))));
    F[128]=((200.0 * (X[127] - X[128])) - (sPAR[0] * (X[128] * ((-0.5 + X[128]) * (-1.0 + X[128])))));
    F[127]=((200.0 * (X[126] - X[127])) - (sPAR[0] * (X[127] * ((-0.5 + X[127]) * (-1.0 + X[127])))));
    F[126]=((200.0 * (X[125] - X[126])) - (sPAR[0] * (X[126] * ((-0.5 + X[126]) * (-1.0 + X[126])))));
    F[125]=((200.0 * (X[124] - X[125])) - (sPAR[0] * (X[125] * ((-0.5 + X[125]) * (-1.0 + X[125])))));
    F[124]=((200.0 * (X[123] - X[124])) - (sPAR[0] * (X[124] * ((-0.5 + X[124]) * (-1.0 + X[124])))));
    F[123]=((200.0 * (X[122] - X[123])) - (sPAR[0] * (X[123] * ((-0.5 + X[123]) * (-1.0 + X[123])))));
    F[122]=((200.0 * (X[121] - X[122])) - (sPAR[0] * (X[122] * ((-0.5 + X[122]) * (-1.0 + X[122])))));
    F[121]=((200.0 * (X[120] - X[121])) - (sPAR[0] * (X[121] * ((-0.5 + X[121]) * (-1.0 + X[121])))));
    F[120]=((200.0 * (X[119] - X[120])) - (sPAR[0] * (X[120] * ((-0.5 + X[120]) * (-1.0 + X[120])))));
    F[119]=((200.0 * (X[118] - X[119])) - (sPAR[0] * (X[119] * ((-0.5 + X[119]) * (-1.0 + X[119])))));
    F[118]=((200.0 * (X[117] - X[118])) - (sPAR[0] * (X[118] * ((-0.5 + X[118]) * (-1.0 + X[118])))));
    F[117]=((200.0 * (X[116] - X[117])) - (sPAR[0] * (X[117] * ((-0.5 + X[117]) * (-1.0 + X[117])))));
    F[116]=((200.0 * (X[115] - X[116])) - (sPAR[0] * (X[116] * ((-0.5 + X[116]) * (-1.0 + X[116])))));
    F[115]=((200.0 * (X[114] - X[115])) - (sPAR[0] * (X[115] * ((-0.5 + X[115]) * (-1.0 + X[115])))));
    F[114]=((200.0 * (X[113] - X[114])) - (sPAR[0] * (X[114] * ((-0.5 + X[114]) * (-1.0 + X[114])))));
    F[113]=((200.0 * (X[112] - X[113])) - (sPAR[0] * (X[113] * ((-0.5 + X[113]) * (-1.0 + X[113])))));
    F[112]=((200.0 * (X[111] - X[112])) - (sPAR[0] * (X[112] * ((-0.5 + X[112]) * (-1.0 + X[112])))));
    F[111]=((200.0 * (X[110] - X[111])) - (sPAR[0] * (X[111] * ((-0.5 + X[111]) * (-1.0 + X[111])))));
    F[110]=((200.0 * (X[109] - X[110])) - (sPAR[0] * (X[110] * ((-0.5 + X[110]) * (-1.0 + X[110])))));
    F[109]=((200.0 * (X[108] - X[109])) - (sPAR[0] * (X[109] * ((-0.5 + X[109]) * (-1.0 + X[109])))));
    F[108]=((200.0 * (X[107] - X[108])) - (sPAR[0] * (X[108] * ((-0.5 + X[108]) * (-1.0 + X[108])))));
    F[107]=((200.0 * (X[106] - X[107])) - (sPAR[0] * (X[107] * ((-0.5 + X[107]) * (-1.0 + X[107])))));
    F[106]=((200.0 * (X[105] - X[106])) - (sPAR[0] * (X[106] * ((-0.5 + X[106]) * (-1.0 + X[106])))));
    F[105]=((200.0 * (X[104] - X[105])) - (sPAR[0] * (X[105] * ((-0.5 + X[105]) * (-1.0 + X[105])))));
    F[104]=((200.0 * (X[103] - X[104])) - (sPAR[0] * (X[104] * ((-0.5 + X[104]) * (-1.0 + X[104])))));
    F[103]=((200.0 * (X[102] - X[103])) - (sPAR[0] * (X[103] * ((-0.5 + X[103]) * (-1.0 + X[103])))));
    F[102]=((200.0 * (X[101] - X[102])) - (sPAR[0] * (X[102] * ((-0.5 + X[102]) * (-1.0 + X[102])))));
    F[101]=((200.0 * (X[100] - X[101])) - (sPAR[0] * (X[101] * ((-0.5 + X[101]) * (-1.0 + X[101])))));
    F[100]=((200.0 * (X[99] - X[100])) - (sPAR[0] * (X[100] * ((-0.5 + X[100]) * (-1.0 + X[100])))));
    F[99]=((200.0 * (X[98] - X[99])) - (sPAR[0] * (X[99] * ((-0.5 + X[99]) * (-1.0 + X[99])))));
    F[98]=((200.0 * (X[97] - X[98])) - (sPAR[0] * (X[98] * ((-0.5 + X[98]) * (-1.0 + X[98])))));
    F[97]=((200.0 * (X[96] - X[97])) - (sPAR[0] * (X[97] * ((-0.5 + X[97]) * (-1.0 + X[97])))));
    F[96]=((200.0 * (X[95] - X[96])) - (sPAR[0] * (X[96] * ((-0.5 + X[96]) * (-1.0 + X[96])))));
    F[95]=((200.0 * (X[94] - X[95])) - (sPAR[0] * (X[95] * ((-0.5 + X[95]) * (-1.0 + X[95])))));
    F[94]=((200.0 * (X[93] - X[94])) - (sPAR[0] * (X[94] * ((-0.5 + X[94]) * (-1.0 + X[94])))));
    F[93]=((200.0 * (X[92] - X[93])) - (sPAR[0] * (X[93] * ((-0.5 + X[93]) * (-1.0 + X[93])))));
    F[92]=((200.0 * (X[91] - X[92])) - (sPAR[0] * (X[92] * ((-0.5 + X[92]) * (-1.0 + X[92])))));
    F[91]=((200.0 * (X[90] - X[91])) - (sPAR[0] * (X[91] * ((-0.5 + X[91]) * (-1.0 + X[91])))));
    F[90]=((200.0 * (X[89] - X[90])) - (sPAR[0] * (X[90] * ((-0.5 + X[90]) * (-1.0 + X[90])))));
    F[89]=((200.0 * (X[88] - X[89])) - (sPAR[0] * (X[89] * ((-0.5 + X[89]) * (-1.0 + X[89])))));
    F[88]=((200.0 * (X[87] - X[88])) - (sPAR[0] * (X[88] * ((-0.5 + X[88]) * (-1.0 + X[88])))));
    F[87]=((200.0 * (X[86] - X[87])) - (sPAR[0] * (X[87] * ((-0.5 + X[87]) * (-1.0 + X[87])))));
    F[86]=((200.0 * (X[85] - X[86])) - (sPAR[0] * (X[86] * ((-0.5 + X[86]) * (-1.0 + X[86])))));
    F[85]=((200.0 * (X[84] - X[85])) - (sPAR[0] * (X[85] * ((-0.5 + X[85]) * (-1.0 + X[85])))));
    F[84]=((200.0 * (X[83] - X[84])) - (sPAR[0] * (X[84] * ((-0.5 + X[84]) * (-1.0 + X[84])))));
    F[83]=((200.0 * (X[82] - X[83])) - (sPAR[0] * (X[83] * ((-0.5 + X[83]) * (-1.0 + X[83])))));
    F[82]=((200.0 * (X[81] - X[82])) - (sPAR[0] * (X[82] * ((-0.5 + X[82]) * (-1.0 + X[82])))));
    F[81]=((200.0 * (X[80] - X[81])) - (sPAR[0] * (X[81] * ((-0.5 + X[81]) * (-1.0 + X[81])))));
    F[80]=((200.0 * (X[79] - X[80])) - (sPAR[0] * (X[80] * ((-0.5 + X[80]) * (-1.0 + X[80])))));
    F[79]=((200.0 * (X[78] - X[79])) - (sPAR[0] * (X[79] * ((-0.5 + X[79]) * (-1.0 + X[79])))));
    F[78]=((200.0 * (X[77] - X[78])) - (sPAR[0] * (X[78] * ((-0.5 + X[78]) * (-1.0 + X[78])))));
    F[77]=((200.0 * (X[76] - X[77])) - (sPAR[0] * (X[77] * ((-0.5 + X[77]) * (-1.0 + X[77])))));
    F[76]=((200.0 * (X[75] - X[76])) - (sPAR[0] * (X[76] * ((-0.5 + X[76]) * (-1.0 + X[76])))));
    F[75]=((200.0 * (X[74] - X[75])) - (sPAR[0] * (X[75] * ((-0.5 + X[75]) * (-1.0 + X[75])))));
    F[74]=((200.0 * (X[73] - X[74])) - (sPAR[0] * (X[74] * ((-0.5 + X[74]) * (-1.0 + X[74])))));
    F[73]=((200.0 * (X[72] - X[73])) - (sPAR[0] * (X[73] * ((-0.5 + X[73]) * (-1.0 + X[73])))));
    F[72]=((200.0 * (X[71] - X[72])) - (sPAR[0] * (X[72] * ((-0.5 + X[72]) * (-1.0 + X[72])))));
    F[71]=((200.0 * (X[70] - X[71])) - (sPAR[0] * (X[71] * ((-0.5 + X[71]) * (-1.0 + X[71])))));
    F[70]=((200.0 * (X[69] - X[70])) - (sPAR[0] * (X[70] * ((-0.5 + X[70]) * (-1.0 + X[70])))));
    F[69]=((200.0 * (X[68] - X[69])) - (sPAR[0] * (X[69] * ((-0.5 + X[69]) * (-1.0 + X[69])))));
    F[68]=((200.0 * (X[67] - X[68])) - (sPAR[0] * (X[68] * ((-0.5 + X[68]) * (-1.0 + X[68])))));
    F[67]=((200.0 * (X[66] - X[67])) - (sPAR[0] * (X[67] * ((-0.5 + X[67]) * (-1.0 + X[67])))));
    F[66]=((200.0 * (X[65] - X[66])) - (sPAR[0] * (X[66] * ((-0.5 + X[66]) * (-1.0 + X[66])))));
    F[65]=((200.0 * (X[64] - X[65])) - (sPAR[0] * (X[65] * ((-0.5 + X[65]) * (-1.0 + X[65])))));
    F[64]=((200.0 * (X[63] - X[64])) - (sPAR[0] * (X[64] * ((-0.5 + X[64]) * (-1.0 + X[64])))));
    F[63]=((200.0 * (X[62] - X[63])) - (sPAR[0] * (X[63] * ((-0.5 + X[63]) * (-1.0 + X[63])))));
    F[62]=((200.0 * (X[61] - X[62])) - (sPAR[0] * (X[62] * ((-0.5 + X[62]) * (-1.0 + X[62])))));
    F[61]=((200.0 * (X[60] - X[61])) - (sPAR[0] * (X[61] * ((-0.5 + X[61]) * (-1.0 + X[61])))));
    F[60]=((200.0 * (X[59] - X[60])) - (sPAR[0] * (X[60] * ((-0.5 + X[60]) * (-1.0 + X[60])))));
    F[59]=((200.0 * (X[58] - X[59])) - (sPAR[0] * (X[59] * ((-0.5 + X[59]) * (-1.0 + X[59])))));
    F[58]=((200.0 * (X[57] - X[58])) - (sPAR[0] * (X[58] * ((-0.5 + X[58]) * (-1.0 + X[58])))));
    F[57]=((200.0 * (X[56] - X[57])) - (sPAR[0] * (X[57] * ((-0.5 + X[57]) * (-1.0 + X[57])))));
    F[56]=((200.0 * (X[55] - X[56])) - (sPAR[0] * (X[56] * ((-0.5 + X[56]) * (-1.0 + X[56])))));
    F[55]=((200.0 * (X[54] - X[55])) - (sPAR[0] * (X[55] * ((-0.5 + X[55]) * (-1.0 + X[55])))));
    F[54]=((200.0 * (X[53] - X[54])) - (sPAR[0] * (X[54] * ((-0.5 + X[54]) * (-1.0 + X[54])))));
    F[53]=((200.0 * (X[52] - X[53])) - (sPAR[0] * (X[53] * ((-0.5 + X[53]) * (-1.0 + X[53])))));
    F[52]=((200.0 * (X[51] - X[52])) - (sPAR[0] * (X[52] * ((-0.5 + X[52]) * (-1.0 + X[52])))));
    F[51]=((200.0 * (X[50] - X[51])) - (sPAR[0] * (X[51] * ((-0.5 + X[51]) * (-1.0 + X[51])))));
    F[50]=((200.0 * (X[49] - X[50])) - (sPAR[0] * (X[50] * ((-0.5 + X[50]) * (-1.0 + X[50])))));
    F[49]=((200.0 * (X[48] - X[49])) - (sPAR[0] * (X[49] * ((-0.5 + X[49]) * (-1.0 + X[49])))));
    F[48]=((200.0 * (X[47] - X[48])) - (sPAR[0] * (X[48] * ((-0.5 + X[48]) * (-1.0 + X[48])))));
    F[47]=((200.0 * (X[46] - X[47])) - (sPAR[0] * (X[47] * ((-0.5 + X[47]) * (-1.0 + X[47])))));
    F[46]=((200.0 * (X[45] - X[46])) - (sPAR[0] * (X[46] * ((-0.5 + X[46]) * (-1.0 + X[46])))));
    F[45]=((200.0 * (X[44] - X[45])) - (sPAR[0] * (X[45] * ((-0.5 + X[45]) * (-1.0 + X[45])))));
    F[44]=((200.0 * (X[43] - X[44])) - (sPAR[0] * (X[44] * ((-0.5 + X[44]) * (-1.0 + X[44])))));
    F[43]=((200.0 * (X[42] - X[43])) - (sPAR[0] * (X[43] * ((-0.5 + X[43]) * (-1.0 + X[43])))));
    F[42]=((200.0 * (X[41] - X[42])) - (sPAR[0] * (X[42] * ((-0.5 + X[42]) * (-1.0 + X[42])))));
    F[41]=((200.0 * (X[40] - X[41])) - (sPAR[0] * (X[41] * ((-0.5 + X[41]) * (-1.0 + X[41])))));
    F[40]=((200.0 * (X[39] - X[40])) - (sPAR[0] * (X[40] * ((-0.5 + X[40]) * (-1.0 + X[40])))));
    F[39]=((200.0 * (X[38] - X[39])) - (sPAR[0] * (X[39] * ((-0.5 + X[39]) * (-1.0 + X[39])))));
    F[38]=((200.0 * (X[37] - X[38])) - (sPAR[0] * (X[38] * ((-0.5 + X[38]) * (-1.0 + X[38])))));
    F[37]=((200.0 * (X[36] - X[37])) - (sPAR[0] * (X[37] * ((-0.5 + X[37]) * (-1.0 + X[37])))));
    F[36]=((200.0 * (X[35] - X[36])) - (sPAR[0] * (X[36] * ((-0.5 + X[36]) * (-1.0 + X[36])))));
    F[35]=((200.0 * (X[34] - X[35])) - (sPAR[0] * (X[35] * ((-0.5 + X[35]) * (-1.0 + X[35])))));
    F[34]=((200.0 * (X[33] - X[34])) - (sPAR[0] * (X[34] * ((-0.5 + X[34]) * (-1.0 + X[34])))));
    F[33]=((200.0 * (X[32] - X[33])) - (sPAR[0] * (X[33] * ((-0.5 + X[33]) * (-1.0 + X[33])))));
    F[32]=((200.0 * (X[31] - X[32])) - (sPAR[0] * (X[32] * ((-0.5 + X[32]) * (-1.0 + X[32])))));
    F[31]=((200.0 * (X[30] - X[31])) - (sPAR[0] * (X[31] * ((-0.5 + X[31]) * (-1.0 + X[31])))));
    F[30]=((200.0 * (X[29] - X[30])) - (sPAR[0] * (X[30] * ((-0.5 + X[30]) * (-1.0 + X[30])))));
    F[29]=((200.0 * (X[28] - X[29])) - (sPAR[0] * (X[29] * ((-0.5 + X[29]) * (-1.0 + X[29])))));
    F[28]=((200.0 * (X[27] - X[28])) - (sPAR[0] * (X[28] * ((-0.5 + X[28]) * (-1.0 + X[28])))));
    F[27]=((200.0 * (X[26] - X[27])) - (sPAR[0] * (X[27] * ((-0.5 + X[27]) * (-1.0 + X[27])))));
    F[26]=((200.0 * (X[25] - X[26])) - (sPAR[0] * (X[26] * ((-0.5 + X[26]) * (-1.0 + X[26])))));
    F[25]=((200.0 * (X[24] - X[25])) - (sPAR[0] * (X[25] * ((-0.5 + X[25]) * (-1.0 + X[25])))));
    F[24]=((200.0 * (X[23] - X[24])) - (sPAR[0] * (X[24] * ((-0.5 + X[24]) * (-1.0 + X[24])))));
    F[23]=((200.0 * (X[22] - X[23])) - (sPAR[0] * (X[23] * ((-0.5 + X[23]) * (-1.0 + X[23])))));
    F[22]=((200.0 * (X[21] - X[22])) - (sPAR[0] * (X[22] * ((-0.5 + X[22]) * (-1.0 + X[22])))));
    F[21]=((200.0 * (X[20] - X[21])) - (sPAR[0] * (X[21] * ((-0.5 + X[21]) * (-1.0 + X[21])))));
    F[20]=((200.0 * (X[19] - X[20])) - (sPAR[0] * (X[20] * ((-0.5 + X[20]) * (-1.0 + X[20])))));
    F[19]=((200.0 * (X[18] - X[19])) - (sPAR[0] * (X[19] * ((-0.5 + X[19]) * (-1.0 + X[19])))));
    F[18]=((200.0 * (X[17] - X[18])) - (sPAR[0] * (X[18] * ((-0.5 + X[18]) * (-1.0 + X[18])))));
    F[17]=((200.0 * (X[16] - X[17])) - (sPAR[0] * (X[17] * ((-0.5 + X[17]) * (-1.0 + X[17])))));
    F[16]=((200.0 * (X[15] - X[16])) - (sPAR[0] * (X[16] * ((-0.5 + X[16]) * (-1.0 + X[16])))));
    F[15]=((200.0 * (X[14] - X[15])) - (sPAR[0] * (X[15] * ((-0.5 + X[15]) * (-1.0 + X[15])))));
    F[14]=((200.0 * (X[13] - X[14])) - (sPAR[0] * (X[14] * ((-0.5 + X[14]) * (-1.0 + X[14])))));
    F[13]=((200.0 * (X[12] - X[13])) - (sPAR[0] * (X[13] * ((-0.5 + X[13]) * (-1.0 + X[13])))));
    F[12]=((200.0 * (X[11] - X[12])) - (sPAR[0] * (X[12] * ((-0.5 + X[12]) * (-1.0 + X[12])))));
    F[11]=((200.0 * (X[10] - X[11])) - (sPAR[0] * (X[11] * ((-0.5 + X[11]) * (-1.0 + X[11])))));
    F[10]=((200.0 * (X[9] - X[10])) - (sPAR[0] * (X[10] * ((-0.5 + X[10]) * (-1.0 + X[10])))));
    F[9]=((200.0 * (X[8] - X[9])) - (sPAR[0] * (X[9] * ((-0.5 + X[9]) * (-1.0 + X[9])))));
    F[8]=((200.0 * (X[7] - X[8])) - (sPAR[0] * (X[8] * ((-0.5 + X[8]) * (-1.0 + X[8])))));
    F[7]=((200.0 * (X[6] - X[7])) - (sPAR[0] * (X[7] * ((-0.5 + X[7]) * (-1.0 + X[7])))));
    F[6]=((200.0 * (X[5] - X[6])) - (sPAR[0] * (X[6] * ((-0.5 + X[6]) * (-1.0 + X[6])))));
    F[5]=((200.0 * (X[4] - X[5])) - (sPAR[0] * (X[5] * ((-0.5 + X[5]) * (-1.0 + X[5])))));
    F[4]=((200.0 * (X[3] - X[4])) - (sPAR[0] * (X[4] * ((-0.5 + X[4]) * (-1.0 + X[4])))));
    F[3]=((200.0 * (X[2] - X[3])) - (sPAR[0] * (X[3] * ((-0.5 + X[3]) * (-1.0 + X[3])))));
    F[2]=((200.0 * (X[1] - X[2])) - (sPAR[0] * (X[2] * ((-0.5 + X[2]) * (-1.0 + X[2])))));
    F[1]=((200.0 * (X[0] - X[1])) - (sPAR[0] * (X[1] * ((-0.5 + X[1]) * (-1.0 + X[1])))));
    F[0]=((200.0 * (1.0 - X[0])) - (sPAR[0] * (X[0] * ((-0.5 + X[0]) * (-1.0 + X[0])))));

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
    ACC[0]=1.0; //u_in
    sPAR[0]=1000.0; //mu
    sPAR[1]=0.0; //alpha
    sPARi[0]=200; //N
    X[0]=0.0; //u[1]
    X[1]=0.0; //u[2]
    X[2]=0.0; //u[3]
    X[3]=0.0; //u[4]
    X[4]=0.0; //u[5]
    X[5]=0.0; //u[6]
    X[6]=0.0; //u[7]
    X[7]=0.0; //u[8]
    X[8]=0.0; //u[9]
    X[9]=0.0; //u[10]
    X[10]=0.0; //u[11]
    X[11]=0.0; //u[12]
    X[12]=0.0; //u[13]
    X[13]=0.0; //u[14]
    X[14]=0.0; //u[15]
    X[15]=0.0; //u[16]
    X[16]=0.0; //u[17]
    X[17]=0.0; //u[18]
    X[18]=0.0; //u[19]
    X[19]=0.0; //u[20]
    X[20]=0.0; //u[21]
    X[21]=0.0; //u[22]
    X[22]=0.0; //u[23]
    X[23]=0.0; //u[24]
    X[24]=0.0; //u[25]
    X[25]=0.0; //u[26]
    X[26]=0.0; //u[27]
    X[27]=0.0; //u[28]
    X[28]=0.0; //u[29]
    X[29]=0.0; //u[30]
    X[30]=0.0; //u[31]
    X[31]=0.0; //u[32]
    X[32]=0.0; //u[33]
    X[33]=0.0; //u[34]
    X[34]=0.0; //u[35]
    X[35]=0.0; //u[36]
    X[36]=0.0; //u[37]
    X[37]=0.0; //u[38]
    X[38]=0.0; //u[39]
    X[39]=0.0; //u[40]
    X[40]=0.0; //u[41]
    X[41]=0.0; //u[42]
    X[42]=0.0; //u[43]
    X[43]=0.0; //u[44]
    X[44]=0.0; //u[45]
    X[45]=0.0; //u[46]
    X[46]=0.0; //u[47]
    X[47]=0.0; //u[48]
    X[48]=0.0; //u[49]
    X[49]=0.0; //u[50]
    X[50]=0.0; //u[51]
    X[51]=0.0; //u[52]
    X[52]=0.0; //u[53]
    X[53]=0.0; //u[54]
    X[54]=0.0; //u[55]
    X[55]=0.0; //u[56]
    X[56]=0.0; //u[57]
    X[57]=0.0; //u[58]
    X[58]=0.0; //u[59]
    X[59]=0.0; //u[60]
    X[60]=0.0; //u[61]
    X[61]=0.0; //u[62]
    X[62]=0.0; //u[63]
    X[63]=0.0; //u[64]
    X[64]=0.0; //u[65]
    X[65]=0.0; //u[66]
    X[66]=0.0; //u[67]
    X[67]=0.0; //u[68]
    X[68]=0.0; //u[69]
    X[69]=0.0; //u[70]
    X[70]=0.0; //u[71]
    X[71]=0.0; //u[72]
    X[72]=0.0; //u[73]
    X[73]=0.0; //u[74]
    X[74]=0.0; //u[75]
    X[75]=0.0; //u[76]
    X[76]=0.0; //u[77]
    X[77]=0.0; //u[78]
    X[78]=0.0; //u[79]
    X[79]=0.0; //u[80]
    X[80]=0.0; //u[81]
    X[81]=0.0; //u[82]
    X[82]=0.0; //u[83]
    X[83]=0.0; //u[84]
    X[84]=0.0; //u[85]
    X[85]=0.0; //u[86]
    X[86]=0.0; //u[87]
    X[87]=0.0; //u[88]
    X[88]=0.0; //u[89]
    X[89]=0.0; //u[90]
    X[90]=0.0; //u[91]
    X[91]=0.0; //u[92]
    X[92]=0.0; //u[93]
    X[93]=0.0; //u[94]
    X[94]=0.0; //u[95]
    X[95]=0.0; //u[96]
    X[96]=0.0; //u[97]
    X[97]=0.0; //u[98]
    X[98]=0.0; //u[99]
    X[99]=0.0; //u[100]
    X[100]=0.0; //u[101]
    X[101]=0.0; //u[102]
    X[102]=0.0; //u[103]
    X[103]=0.0; //u[104]
    X[104]=0.0; //u[105]
    X[105]=0.0; //u[106]
    X[106]=0.0; //u[107]
    X[107]=0.0; //u[108]
    X[108]=0.0; //u[109]
    X[109]=0.0; //u[110]
    X[110]=0.0; //u[111]
    X[111]=0.0; //u[112]
    X[112]=0.0; //u[113]
    X[113]=0.0; //u[114]
    X[114]=0.0; //u[115]
    X[115]=0.0; //u[116]
    X[116]=0.0; //u[117]
    X[117]=0.0; //u[118]
    X[118]=0.0; //u[119]
    X[119]=0.0; //u[120]
    X[120]=0.0; //u[121]
    X[121]=0.0; //u[122]
    X[122]=0.0; //u[123]
    X[123]=0.0; //u[124]
    X[124]=0.0; //u[125]
    X[125]=0.0; //u[126]
    X[126]=0.0; //u[127]
    X[127]=0.0; //u[128]
    X[128]=0.0; //u[129]
    X[129]=0.0; //u[130]
    X[130]=0.0; //u[131]
    X[131]=0.0; //u[132]
    X[132]=0.0; //u[133]
    X[133]=0.0; //u[134]
    X[134]=0.0; //u[135]
    X[135]=0.0; //u[136]
    X[136]=0.0; //u[137]
    X[137]=0.0; //u[138]
    X[138]=0.0; //u[139]
    X[139]=0.0; //u[140]
    X[140]=0.0; //u[141]
    X[141]=0.0; //u[142]
    X[142]=0.0; //u[143]
    X[143]=0.0; //u[144]
    X[144]=0.0; //u[145]
    X[145]=0.0; //u[146]
    X[146]=0.0; //u[147]
    X[147]=0.0; //u[148]
    X[148]=0.0; //u[149]
    X[149]=0.0; //u[150]
    X[150]=0.0; //u[151]
    X[151]=0.0; //u[152]
    X[152]=0.0; //u[153]
    X[153]=0.0; //u[154]
    X[154]=0.0; //u[155]
    X[155]=0.0; //u[156]
    X[156]=0.0; //u[157]
    X[157]=0.0; //u[158]
    X[158]=0.0; //u[159]
    X[159]=0.0; //u[160]
    X[160]=0.0; //u[161]
    X[161]=0.0; //u[162]
    X[162]=0.0; //u[163]
    X[163]=0.0; //u[164]
    X[164]=0.0; //u[165]
    X[165]=0.0; //u[166]
    X[166]=0.0; //u[167]
    X[167]=0.0; //u[168]
    X[168]=0.0; //u[169]
    X[169]=0.0; //u[170]
    X[170]=0.0; //u[171]
    X[171]=0.0; //u[172]
    X[172]=0.0; //u[173]
    X[173]=0.0; //u[174]
    X[174]=0.0; //u[175]
    X[175]=0.0; //u[176]
    X[176]=0.0; //u[177]
    X[177]=0.0; //u[178]
    X[178]=0.0; //u[179]
    X[179]=0.0; //u[180]
    X[180]=0.0; //u[181]
    X[181]=0.0; //u[182]
    X[182]=0.0; //u[183]
    X[183]=0.0; //u[184]
    X[184]=0.0; //u[185]
    X[185]=0.0; //u[186]
    X[186]=0.0; //u[187]
    X[187]=0.0; //u[188]
    X[188]=0.0; //u[189]
    X[189]=0.0; //u[190]
    X[190]=0.0; //u[191]
    X[191]=0.0; //u[192]
    X[192]=0.0; //u[193]
    X[193]=0.0; //u[194]
    X[194]=0.0; //u[195]
    X[195]=0.0; //u[196]
    X[196]=0.0; //u[197]
    X[197]=0.0; //u[198]
    X[198]=0.0; //u[199]
    X[199]=0.0; //u[200]

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
