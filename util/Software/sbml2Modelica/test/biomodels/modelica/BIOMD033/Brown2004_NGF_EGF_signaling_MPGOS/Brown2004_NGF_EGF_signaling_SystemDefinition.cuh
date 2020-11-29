
#ifndef BROWN2004_NGF_EGF_SIGNALING_PERTHREAD_SYSTEMDEFINITION_H
#define BROWN2004_NGF_EGF_SIGNALING_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>


template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \
	Precision*    F, Precision*    X, Precision     T, \
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
    ACC[22]=(X[45] * (ACC[24] * (ACC[57] * X[134])));
    ACC[52]=(X[134] * (X[39] * (ACC[26] * (ACC[51] / (ACC[51] + X[17])))));
    ACC[20]=(X[134] * (X[40] * (ACC[3] * (ACC[19] / (ACC[19] + X[18])))));
    ACC[18]=(X[134] * (X[36] * (ACC[32] * (ACC[17] / (ACC[17] + X[15])))));
    ACC[44]=(X[134] * (X[33] * (ACC[51] * (ACC[48] / (ACC[48] + X[12])))));
    ACC[41]=(X[134] * (X[30] * (ACC[43] * (ACC[40] / (ACC[40] + X[9])))));
    ACC[25]=(X[134] * (X[42] * (ACC[14] * (ACC[27] / (ACC[27] + X[20])))));
    ACC[15]=(X[134] * (X[35] * (ACC[32] * (ACC[14] / (ACC[14] + X[14])))));
    ACC[10]=(X[134] * (X[44] * (ACC[12] * ACC[56])));
    ACC[50]=(X[134] * (X[26] * (ACC[55] * (ACC[53] / (ACC[53] + X[4])))));
    ACC[23]=(X[47] * (ACC[55] * X[134]));
    ACC[7]=(X[134] * (X[24] * (ACC[55] * (ACC[9] / (ACC[9] + X[2])))));
    ACC[0]=(X[134] * (X[22] * (ACC[28] * (ACC[2] / (ACC[2] + X[0])))));
    ACC[11]=(X[134] * (X[46] * ACC[54]));
    ACC[49]=(X[134] * (X[25] * (ACC[54] * (ACC[53] / (ACC[53] + X[3])))));
    ACC[30]=(X[134] * (X[27] * (ACC[54] * (ACC[29] / (ACC[29] + X[5])))));
    ACC[34]=(X[134] * (X[38] * (ACC[1] * (ACC[33] / (ACC[33] + X[7])))));
    ACC[21]=(X[134] * (X[43] * (ACC[33] * (ACC[19] / (ACC[19] + X[21])))));
    ACC[38]=(X[134] * (X[37] * (ACC[37] * (ACC[33] / (ACC[33] + X[16])))));
    ACC[6]=(X[134] * (X[34] * (ACC[37] * (ACC[3] / (ACC[3] + X[13])))));
    ACC[4]=(X[134] * (X[29] * (ACC[40] * (ACC[5] / (ACC[5] + X[8])))));
    ACC[39]=(X[134] * (X[23] * (ACC[8] * (ACC[42] / (ACC[42] + X[1])))));
    ACC[13]=(X[134] * (X[41] * (ACC[17] * (ACC[16] / (ACC[16] + X[19])))));
    ACC[46]=(X[134] * (X[31] * (ACC[47] * (ACC[45] / (ACC[45] + X[10])))));
    ACC[31]=(X[134] * (X[28] * (ACC[45] * (ACC[29] / (ACC[29] + X[6])))));
    ACC[35]=(X[134] * (X[32] * (ACC[45] * (ACC[36] / (ACC[36] + X[11])))));
    F[4]=0.0;
    F[19]=0.0;
    F[9]=0.0;
    F[16]=0.0;
    F[20]=0.0;
    F[30]=0.0;
    F[26]=0.0;
    F[34]=0.0;
    F[17]=0.0;
    F[40]=0.0;
    F[27]=0.0;
    F[13]=0.0;
    F[2]=0.0;
    F[45]=0.0;
    F[44]=0.0;
    F[11]=0.0;
    F[6]=0.0;
    F[31]=0.0;
    F[47]=0.0;
    F[39]=0.0;
    F[24]=0.0;
    F[21]=0.0;
    F[28]=0.0;
    F[12]=0.0;
    F[1]=0.0;
    F[32]=0.0;
    F[38]=0.0;
    F[3]=0.0;
    F[7]=0.0;
    F[0]=0.0;
    F[25]=0.0;
    F[29]=0.0;
    F[8]=0.0;
    F[22]=0.0;
    F[37]=0.0;
    F[14]=0.0;
    F[18]=0.0;
    F[33]=0.0;
    F[15]=0.0;
    F[23]=0.0;
    F[42]=0.0;
    F[46]=0.0;
    F[43]=0.0;
    F[10]=0.0;
    F[35]=0.0;
    F[36]=0.0;
    F[5]=0.0;
    F[41]=0.0;
    F[93]=0.0;
    F[94]=0.0;
    F[61]=0.0;
    F[60]=0.0;
    F[97]=0.0;
    F[95]=0.0;
    F[96]=0.0;
    F[58]=0.0;
    F[103]=0.0;
    F[57]=0.0;
    F[59]=0.0;
    F[66]=0.0;
    F[98]=0.0;
    F[99]=0.0;
    F[68]=0.0;
    F[67]=0.0;
    F[79]=0.0;
    F[80]=0.0;
    F[100]=0.0;
    F[78]=0.0;
    F[63]=0.0;
    F[62]=0.0;
    F[64]=0.0;
    F[72]=0.0;
    F[82]=0.0;
    F[49]=0.0;
    F[74]=0.0;
    F[48]=0.0;
    F[73]=0.0;
    F[85]=0.0;
    F[86]=0.0;
    F[83]=0.0;
    F[84]=0.0;
    F[81]=0.0;
    F[70]=0.0;
    F[69]=0.0;
    F[75]=0.0;
    F[77]=0.0;
    F[88]=0.0;
    F[87]=0.0;
    F[56]=0.0;
    F[101]=0.0;
    F[55]=0.0;
    F[102]=0.0;
    F[91]=0.0;
    F[92]=0.0;
    F[89]=0.0;
    F[71]=0.0;
    F[65]=0.0;
    F[76]=0.0;
    F[90]=0.0;
    F[54]=0.0;
    F[51]=0.0;
    F[50]=0.0;
    F[53]=0.0;
    F[52]=0.0;
    F[134]=0.0;
    F[123]=0.0;
    F[120]=0.0;
    F[126]=0.0;
    F[128]=0.0;
    F[116]=(ACC[25] * X[63]);
    F[117]=((-(ACC[25])) * X[91]);
    F[136]=((ACC[23] * X[49]) - (ACC[22] * X[102]));
    F[115]=((ACC[23] * X[48]) - (ACC[22] * X[101]));
    F[133]=((ACC[22] * X[75]) - (ACC[23] * X[103]));
    F[109]=((-(ACC[7])) * X[96]);
    F[108]=(ACC[7] * X[69]);
    F[105]=((-(ACC[0])) * X[94]);
    F[104]=(ACC[0] * X[67]);
    F[110]=((ACC[11] * X[65]) - (ACC[10] * X[76]));
    F[135]=((ACC[11] * X[71]) - (ACC[10] * X[77]));
    F[132]=((ACC[10] * X[54]) - (ACC[11] * X[87]));
    F[131]=((ACC[52] * X[52]) + (((-(ACC[49])) * X[78]) - (ACC[50] * X[79])));
    F[130]=((ACC[49] * X[50]) + ((ACC[50] * X[51]) - (ACC[52] * X[80])));
    F[113]=((ACC[21] * X[57]) + ((ACC[20] * X[58]) - (ACC[18] * X[88])));
    F[114]=((ACC[18] * X[60]) + (((-(ACC[21])) * X[84]) - (ACC[20] * X[85])));
    F[106]=((ACC[4] * X[73]) - (ACC[6] * X[100]));
    F[107]=((ACC[6] * X[74]) - (ACC[4] * X[99]));
    F[124]=((ACC[39] * X[70]) - (ACC[41] * X[98]));
    F[125]=((ACC[41] * X[72]) - (ACC[39] * X[97]));
    F[111]=((ACC[13] * X[59]) - (ACC[15] * X[89]));
    F[112]=((ACC[15] * X[61]) - (ACC[13] * X[86]));
    F[127]=((ACC[44] * X[53]) - (ACC[46] * X[82]));
    F[129]=((ACC[46] * X[55]) - (ACC[44] * X[81]));
    F[119]=(((-(ACC[31])) * X[93]) - (ACC[30] * X[92]));
    F[118]=((ACC[31] * X[66]) + (ACC[30] * X[64]));
    F[122]=((ACC[34] * X[68]) + ((ACC[38] * X[62]) - (ACC[35] * X[83])));
    F[121]=((ACC[35] * X[56]) + (((-(ACC[34])) * X[95]) - (ACC[38] * X[90])));

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
    ACC[5]=(X[107] / X[134]);
    ACC[19]=(X[114] / X[134]);
    ACC[16]=(X[112] / X[134]);
    ACC[33]=(X[121] / X[134]);
    ACC[28]=(X[118] / X[134]);
    ACC[51]=(X[130] / X[134]);
    ACC[37]=(X[123] / X[134]);
    ACC[29]=(X[119] / X[134]);
    ACC[42]=(X[125] / X[134]);
    ACC[55]=(X[133] / X[134]);
    ACC[36]=(X[122] / X[134]);
    ACC[14]=(X[111] / X[134]);
    ACC[40]=(X[124] / X[134]);
    ACC[48]=(X[129] / X[134]);
    ACC[32]=(X[120] / X[134]);
    ACC[43]=(X[126] / X[134]);
    ACC[47]=(X[128] / X[134]);
    ACC[3]=(X[106] / X[134]);
    ACC[54]=(X[132] / X[134]);
    ACC[27]=(X[117] / X[134]);
    ACC[8]=(X[108] / X[134]);
    ACC[1]=(X[104] / X[134]);
    ACC[56]=(X[135] / X[134]);
    ACC[17]=(X[113] / X[134]);
    ACC[9]=(X[109] / X[134]);
    ACC[45]=(X[127] / X[134]);
    ACC[2]=(X[105] / X[134]);
    ACC[12]=(X[110] / X[134]);
    ACC[26]=(X[116] / X[134]);
    ACC[53]=(X[131] / X[134]);
    ACC[24]=(X[115] / X[134]);
    ACC[57]=(X[136] / X[134]);

}

template<class Precision> __forceinline__ __device__ void PerThread_Initialization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
    T     = TD[0];
    DOIDX = 0;
    ACC[0]=0.0; //elmt_cell.elmt_AktActivationReaction
    ACC[1]=0.0; //elmt_cell.elmt_AktActive_conc
    ACC[2]=120000.0; //elmt_cell.elmt_AktInactive_conc
    ACC[3]=0.0; //elmt_cell.elmt_BRafActive_conc
    ACC[4]=0.0; //elmt_cell.elmt_BRafByRap1ActivationReaction
    ACC[5]=120000.0; //elmt_cell.elmt_BRafInactive_conc
    ACC[6]=0.0; //elmt_cell.elmt_BRafbyPPtaseDeactivationReaction
    ACC[7]=0.0; //elmt_cell.elmt_C3GActivationReaction
    ACC[8]=0.0; //elmt_cell.elmt_C3GActive_conc
    ACC[9]=120000.0; //elmt_cell.elmt_C3GInactive_conc
    ACC[10]=0.0; //elmt_cell.elmt_EGFBindingReaction
    ACC[11]=0.0; //elmt_cell.elmt_EGFUnbindingReaction
    ACC[12]=10002000.0; //elmt_cell.elmt_EGF_conc
    ACC[13]=0.0; //elmt_cell.elmt_ErkActivationReaction
    ACC[14]=0.0; //elmt_cell.elmt_ErkActive_conc
    ACC[15]=0.0; //elmt_cell.elmt_ErkDeactivationReaction
    ACC[16]=600000.0; //elmt_cell.elmt_ErkInactive_conc
    ACC[17]=0.0; //elmt_cell.elmt_MekActive_conc
    ACC[18]=0.0; //elmt_cell.elmt_MekDeactivationReaction
    ACC[19]=600000.0; //elmt_cell.elmt_MekInactive_conc
    ACC[20]=0.0; //elmt_cell.elmt_MekbyBRafActivationReaction
    ACC[21]=0.0; //elmt_cell.elmt_MekbyRaf1ActivationReaction
    ACC[22]=0.0; //elmt_cell.elmt_NGFBindingReaction
    ACC[23]=0.0; //elmt_cell.elmt_NGFUnbindingReaction
    ACC[24]=456000.0; //elmt_cell.elmt_NGF_conc
    ACC[25]=0.0; //elmt_cell.elmt_P90RskActivationReaction
    ACC[26]=0.0; //elmt_cell.elmt_P90RskActive_conc
    ACC[27]=120000.0; //elmt_cell.elmt_P90RskInactive_conc
    ACC[28]=0.0; //elmt_cell.elmt_PI3KActive_conc
    ACC[29]=120000.0; //elmt_cell.elmt_PI3KInactive_conc
    ACC[30]=0.0; //elmt_cell.elmt_PI3KbyEGFRActivationReaction
    ACC[31]=0.0; //elmt_cell.elmt_PI3KbyRasActivationReaction
    ACC[32]=120000.0; //elmt_cell.elmt_PP2AActive_conc
    ACC[33]=0.0; //elmt_cell.elmt_Raf1Active_conc
    ACC[34]=0.0; //elmt_cell.elmt_Raf1ByAktDeactivationReaction
    ACC[35]=0.0; //elmt_cell.elmt_Raf1ByRasActivationReaction
    ACC[36]=120000.0; //elmt_cell.elmt_Raf1Inactive_conc
    ACC[37]=120000.0; //elmt_cell.elmt_Raf1PPtase_conc
    ACC[38]=0.0; //elmt_cell.elmt_Raf1byPPtaseDeactivationReaction
    ACC[39]=0.0; //elmt_cell.elmt_Rap1ActivationReaction
    ACC[40]=0.0; //elmt_cell.elmt_Rap1Active_conc
    ACC[41]=0.0; //elmt_cell.elmt_Rap1DeactivationReaction
    ACC[42]=120000.0; //elmt_cell.elmt_Rap1Inactive_conc
    ACC[43]=120000.0; //elmt_cell.elmt_RapGapActive_conc
    ACC[44]=0.0; //elmt_cell.elmt_RasActivationReaction
    ACC[45]=0.0; //elmt_cell.elmt_RasActive_conc
    ACC[46]=0.0; //elmt_cell.elmt_RasDeactivationReaction
    ACC[47]=120000.0; //elmt_cell.elmt_RasGapActive_conc
    ACC[48]=120000.0; //elmt_cell.elmt_RasInactive_conc
    ACC[49]=0.0; //elmt_cell.elmt_SosActivationByEGFReaction
    ACC[50]=0.0; //elmt_cell.elmt_SosActivationByNGFReaction
    ACC[51]=0.0; //elmt_cell.elmt_SosActive_conc
    ACC[52]=0.0; //elmt_cell.elmt_SosDeactivationReaction
    ACC[53]=120000.0; //elmt_cell.elmt_SosInactive_conc
    ACC[54]=0.0; //elmt_cell.elmt_boundEGFReceptor_conc
    ACC[55]=0.0; //elmt_cell.elmt_boundNGFReceptor_conc
    ACC[56]=80000.0; //elmt_cell.elmt_freeEGFReceptor_conc
    ACC[57]=10000.0; //elmt_cell.elmt_freeNGFReceptor_conc
    X[0]=653951.0; //Params.elmt_KmAkt
    X[1]=10965.6; //Params.elmt_KmC3G
    X[2]=12876.2; //Params.elmt_KmC3GNGF
    X[3]=6086070.0; //Params.elmt_KmEGF
    X[4]=2112.66; //Params.elmt_KmNGF
    X[5]=184912.0; //Params.elmt_KmPI3K
    X[6]=272056.0; //Params.elmt_KmPI3KRas
    X[7]=119355.0; //Params.elmt_KmRaf1ByAkt
    X[8]=1025460.0; //Params.elmt_KmRap1ToBRaf
    X[9]=295990.0; //Params.elmt_KmRapGap
    X[10]=1432410.0; //Params.elmt_KmRasGap
    X[11]=62464.6; //Params.elmt_KmRasToRaf1
    X[12]=35954.3; //Params.elmt_KmSos
    X[13]=10879500.0; //Params.elmt_KmdBRaf
    X[14]=3496490.0; //Params.elmt_KmdErk
    X[15]=518753.0; //Params.elmt_KmdMek
    X[16]=1061.71; //Params.elmt_KmdRaf1
    X[17]=896896.0; //Params.elmt_KmdSos
    X[18]=157948.0; //Params.elmt_KmpBRaf
    X[19]=1007340.0; //Params.elmt_KmpMekCytoplasmic
    X[20]=763523.0; //Params.elmt_KmpP90Rsk
    X[21]=4768350.0; //Params.elmt_KmpRaf1
    X[22]=0.0566279; //Params.elmt_kAkt
    X[23]=1.40145; //Params.elmt_kC3G
    X[24]=146.912; //Params.elmt_kC3GNGF
    X[25]=694.731; //Params.elmt_kEGF
    X[26]=389.428; //Params.elmt_kNGF
    X[27]=10.6737; //Params.elmt_kPI3K
    X[28]=0.0771067; //Params.elmt_kPI3KRas
    X[29]=2.20995; //Params.elmt_kRap1ToBRaf
    X[30]=27.265; //Params.elmt_kRapGap
    X[31]=1509.36; //Params.elmt_kRasGap
    X[32]=0.884096; //Params.elmt_kRasToRaf1
    X[33]=32.344; //Params.elmt_kSos
    X[34]=441.287; //Params.elmt_kdBRaf
    X[35]=8.8912; //Params.elmt_kdErk
    X[36]=2.83243; //Params.elmt_kdMek
    X[37]=0.126329; //Params.elmt_kdRaf1
    X[38]=15.1212; //Params.elmt_kdRaf1ByAkt
    X[39]=1611.97; //Params.elmt_kdSos
    X[40]=125.089; //Params.elmt_kpBRaf
    X[41]=9.853669999999999; //Params.elmt_kpMekCytoplasmic
    X[42]=0.0213697; //Params.elmt_kpP90Rsk
    X[43]=185.759; //Params.elmt_kpRaf1
    X[44]=2.18503e-05; //Params.elmt_krbEGF
    X[45]=1.38209e-07; //Params.elmt_krbNGF
    X[46]=0.0121008; //Params.elmt_kruEGF
    X[47]=0.00723811; //Params.elmt_kruNGF
    X[48]=1.0; //Reacs.elmt_product10
    X[49]=1.0; //Reacs.elmt_product11
    X[50]=1.0; //Reacs.elmt_product13
    X[51]=1.0; //Reacs.elmt_product15
    X[52]=1.0; //Reacs.elmt_product17
    X[53]=1.0; //Reacs.elmt_product19
    X[54]=1.0; //Reacs.elmt_product2
    X[55]=1.0; //Reacs.elmt_product21
    X[56]=1.0; //Reacs.elmt_product23
    X[57]=1.0; //Reacs.elmt_product25
    X[58]=1.0; //Reacs.elmt_product27
    X[59]=1.0; //Reacs.elmt_product29
    X[60]=1.0; //Reacs.elmt_product31
    X[61]=1.0; //Reacs.elmt_product33
    X[62]=1.0; //Reacs.elmt_product35
    X[63]=1.0; //Reacs.elmt_product37
    X[64]=1.0; //Reacs.elmt_product39
    X[65]=1.0; //Reacs.elmt_product4
    X[66]=1.0; //Reacs.elmt_product41
    X[67]=1.0; //Reacs.elmt_product43
    X[68]=1.0; //Reacs.elmt_product45
    X[69]=1.0; //Reacs.elmt_product47
    X[70]=1.0; //Reacs.elmt_product49
    X[71]=1.0; //Reacs.elmt_product5
    X[72]=1.0; //Reacs.elmt_product51
    X[73]=1.0; //Reacs.elmt_product53
    X[74]=1.0; //Reacs.elmt_product55
    X[75]=1.0; //Reacs.elmt_product8
    X[76]=1.0; //Reacs.elmt_reactant0
    X[77]=1.0; //Reacs.elmt_reactant1
    X[78]=1.0; //Reacs.elmt_reactant12
    X[79]=1.0; //Reacs.elmt_reactant14
    X[80]=1.0; //Reacs.elmt_reactant16
    X[81]=1.0; //Reacs.elmt_reactant18
    X[82]=1.0; //Reacs.elmt_reactant20
    X[83]=1.0; //Reacs.elmt_reactant22
    X[84]=1.0; //Reacs.elmt_reactant24
    X[85]=1.0; //Reacs.elmt_reactant26
    X[86]=1.0; //Reacs.elmt_reactant28
    X[87]=1.0; //Reacs.elmt_reactant3
    X[88]=1.0; //Reacs.elmt_reactant30
    X[89]=1.0; //Reacs.elmt_reactant32
    X[90]=1.0; //Reacs.elmt_reactant34
    X[91]=1.0; //Reacs.elmt_reactant36
    X[92]=1.0; //Reacs.elmt_reactant38
    X[93]=1.0; //Reacs.elmt_reactant40
    X[94]=1.0; //Reacs.elmt_reactant42
    X[95]=1.0; //Reacs.elmt_reactant44
    X[96]=1.0; //Reacs.elmt_reactant46
    X[97]=1.0; //Reacs.elmt_reactant48
    X[98]=1.0; //Reacs.elmt_reactant50
    X[99]=1.0; //Reacs.elmt_reactant52
    X[100]=1.0; //Reacs.elmt_reactant54
    X[101]=1.0; //Reacs.elmt_reactant6
    X[102]=1.0; //Reacs.elmt_reactant7
    X[103]=1.0; //Reacs.elmt_reactant9
    X[104]=0.0; //elmt_cell.elmt_AktActive_amount
    X[105]=120000.0; //elmt_cell.elmt_AktInactive_amount
    X[106]=0.0; //elmt_cell.elmt_BRafActive_amount
    X[107]=120000.0; //elmt_cell.elmt_BRafInactive_amount
    X[108]=0.0; //elmt_cell.elmt_C3GActive_amount
    X[109]=120000.0; //elmt_cell.elmt_C3GInactive_amount
    X[110]=1.0002E7; //elmt_cell.elmt_EGF_amount
    X[111]=0.0; //elmt_cell.elmt_ErkActive_amount
    X[112]=600000.0; //elmt_cell.elmt_ErkInactive_amount
    X[113]=0.0; //elmt_cell.elmt_MekActive_amount
    X[114]=600000.0; //elmt_cell.elmt_MekInactive_amount
    X[115]=456000.0; //elmt_cell.elmt_NGF_amount
    X[116]=0.0; //elmt_cell.elmt_P90RskActive_amount
    X[117]=120000.0; //elmt_cell.elmt_P90RskInactive_amount
    X[118]=0.0; //elmt_cell.elmt_PI3KActive_amount
    X[119]=120000.0; //elmt_cell.elmt_PI3KInactive_amount
    X[120]=120000.0; //elmt_cell.elmt_PP2AActive_amount
    X[121]=0.0; //elmt_cell.elmt_Raf1Active_amount
    X[122]=120000.0; //elmt_cell.elmt_Raf1Inactive_amount
    X[123]=120000.0; //elmt_cell.elmt_Raf1PPtase_amount
    X[124]=0.0; //elmt_cell.elmt_Rap1Active_amount
    X[125]=120000.0; //elmt_cell.elmt_Rap1Inactive_amount
    X[126]=120000.0; //elmt_cell.elmt_RapGapActive_amount
    X[127]=0.0; //elmt_cell.elmt_RasActive_amount
    X[128]=120000.0; //elmt_cell.elmt_RasGapActive_amount
    X[129]=120000.0; //elmt_cell.elmt_RasInactive_amount
    X[130]=0.0; //elmt_cell.elmt_SosActive_amount
    X[131]=120000.0; //elmt_cell.elmt_SosInactive_amount
    X[132]=0.0; //elmt_cell.elmt_boundEGFReceptor_amount
    X[133]=0.0; //elmt_cell.elmt_boundNGFReceptor_amount
    X[134]=1.0; //elmt_cell.elmt_cell
    X[135]=80000.0; //elmt_cell.elmt_freeEGFReceptor_amount
    X[136]=10000.0; //elmt_cell.elmt_freeNGFReceptor_amount

}

template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
	
}


#endif
