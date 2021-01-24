
#ifndef BIOMD474_FUNCTIONS_H
#define BIOMD474_FUNCTIONS_H

#include <iostream>

#define PRECISION double

__device__ PRECISION piecewise(PRECISION x,bool condition,PRECISION y){
    PRECISION z = 0.0;
    z=(condition ? x : y);
    return z;
}

__device__ PRECISION function_1(PRECISION InR,PRECISION Ins,PRECISION cellsurface,PRECISION extracellular,PRECISION k1){
    PRECISION y = 0.0;
    y=(k1 * (Ins * (extracellular * (InR * cellsurface))));
    return y;
}
__device__ PRECISION function_10(PRECISION cytoplasm,PRECISION cytoplasm_Ins_2_InR_P,PRECISION kminus4prime){
    PRECISION y = 0.0;
    y=(kminus4prime * (cytoplasm_Ins_2_InR_P * cytoplasm));
    return y;
}
__device__ PRECISION function_100(PRECISION ktr,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1 * (nucleus * ktr));
    return y;
}
__device__ PRECISION function_101(PRECISION dnabound,PRECISION dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1,PRECISION ktr){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1 * (dnabound * ktr));
    return y;
}
__device__ PRECISION function_102(PRECISION cytoplasm,PRECISION cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0,PRECISION ktr){
    PRECISION y = 0.0;
    y=(cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0 * (cytoplasm * ktr));
    return y;
}
__device__ PRECISION function_103(PRECISION ktr,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0 * (nucleus * ktr));
    return y;
}
__device__ PRECISION function_104(PRECISION ktr,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0 * (nucleus * ktr));
    return y;
}
__device__ PRECISION function_105(PRECISION dnabound,PRECISION dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0,PRECISION ktr){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0 * (dnabound * ktr));
    return y;
}
__device__ PRECISION function_106(PRECISION cytoplasm,PRECISION cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1,PRECISION ktr){
    PRECISION y = 0.0;
    y=(cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1 * (cytoplasm * ktr));
    return y;
}
__device__ PRECISION function_107(PRECISION ktr,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1 * (nucleus * ktr));
    return y;
}
__device__ PRECISION function_108(PRECISION ktr,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1 * (nucleus * ktr));
    return y;
}
__device__ PRECISION function_109(PRECISION dnabound,PRECISION dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1,PRECISION ktr){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1 * (dnabound * ktr));
    return y;
}
__device__ PRECISION function_11(PRECISION Ins_InR_P,PRECISION cellsurface,PRECISION k4prime){
    PRECISION y = 0.0;
    y=(k4prime * (Ins_InR_P * cellsurface));
    return y;
}
__device__ PRECISION function_110(PRECISION cytoplasm,PRECISION cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0,PRECISION ktr){
    PRECISION y = 0.0;
    y=(cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0 * (cytoplasm * ktr));
    return y;
}
__device__ PRECISION function_111(PRECISION ktr,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0 * (nucleus * ktr));
    return y;
}
__device__ PRECISION function_112(PRECISION ktr,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0 * (nucleus * ktr));
    return y;
}
__device__ PRECISION function_113(PRECISION dnabound,PRECISION dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0,PRECISION ktr){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0 * (dnabound * ktr));
    return y;
}
__device__ PRECISION function_114(PRECISION cytoplasm,PRECISION cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1,PRECISION ktr){
    PRECISION y = 0.0;
    y=(cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1 * (cytoplasm * ktr));
    return y;
}
__device__ PRECISION function_115(PRECISION ktr,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1 * (nucleus * ktr));
    return y;
}
__device__ PRECISION function_116(PRECISION ktr,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1 * (nucleus * ktr));
    return y;
}
__device__ PRECISION function_117(PRECISION dnabound,PRECISION dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1,PRECISION ktr){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1 * (dnabound * ktr));
    return y;
}
__device__ PRECISION function_118(PRECISION cytoplasm,PRECISION cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0,PRECISION ktr){
    PRECISION y = 0.0;
    y=(cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0 * (cytoplasm * ktr));
    return y;
}
__device__ PRECISION function_119(PRECISION ktr,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0 * (nucleus * ktr));
    return y;
}
__device__ PRECISION function_12(PRECISION cytoplasm,PRECISION cytoplasm_Ins_InR_P,PRECISION kminus4prime){
    PRECISION y = 0.0;
    y=(kminus4prime * (cytoplasm_Ins_InR_P * cytoplasm));
    return y;
}
__device__ PRECISION function_120(PRECISION ktr,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0 * (nucleus * ktr));
    return y;
}
__device__ PRECISION function_121(PRECISION dnabound,PRECISION dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0,PRECISION ktr){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0 * (dnabound * ktr));
    return y;
}
__device__ PRECISION function_122(PRECISION cytoplasm,PRECISION cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1,PRECISION ktr){
    PRECISION y = 0.0;
    y=(cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1 * (cytoplasm * ktr));
    return y;
}
__device__ PRECISION function_123(PRECISION ktr,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1 * (nucleus * ktr));
    return y;
}
__device__ PRECISION function_124(PRECISION ktr,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1 * (nucleus * ktr));
    return y;
}
__device__ PRECISION function_125(PRECISION dnabound,PRECISION dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1,PRECISION ktr){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1 * (dnabound * ktr));
    return y;
}
__device__ PRECISION function_126(PRECISION Akt_P2,PRECISION cytoplasm,PRECISION cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0,PRECISION kkin){
    PRECISION y = 0.0;
    y=(cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0 * (cytoplasm * (Akt_P2 * kkin)));
    return y;
}
__device__ PRECISION function_127(PRECISION Akt_P2,PRECISION cytoplasm,PRECISION kkin,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0 * (Akt_P2 * (cytoplasm * kkin)));
    return y;
}
__device__ PRECISION function_128(PRECISION Akt_P2,PRECISION cytoplasm,PRECISION dnabound,PRECISION dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0,PRECISION kkin){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0 * (Akt_P2 * (cytoplasm * kkin)));
    return y;
}
__device__ PRECISION function_129(PRECISION Akt_P2,PRECISION cytoplasm,PRECISION cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1,PRECISION kkin){
    PRECISION y = 0.0;
    y=(cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1 * (cytoplasm * (Akt_P2 * kkin)));
    return y;
}
__device__ PRECISION function_13(PRECISION PTP1B,PRECISION cytoplasm,PRECISION cytoplasm_Ins_2_InR_P,PRECISION k6){
    PRECISION y = 0.0;
    y=(k6 * (PTP1B * (cytoplasm * cytoplasm_Ins_2_InR_P)));
    return y;
}
__device__ PRECISION function_130(PRECISION Akt_P2,PRECISION cytoplasm,PRECISION kkin,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1 * (Akt_P2 * (cytoplasm * kkin)));
    return y;
}
__device__ PRECISION function_131(PRECISION Akt_P2,PRECISION cytoplasm,PRECISION dnabound,PRECISION dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1,PRECISION kkin){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1 * (Akt_P2 * (cytoplasm * kkin)));
    return y;
}
__device__ PRECISION function_132(PRECISION Akt_P2,PRECISION cytoplasm,PRECISION cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0,PRECISION kkin){
    PRECISION y = 0.0;
    y=(cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0 * (cytoplasm * (Akt_P2 * kkin)));
    return y;
}
__device__ PRECISION function_133(PRECISION Akt_P2,PRECISION cytoplasm,PRECISION kkin,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0 * (Akt_P2 * (cytoplasm * kkin)));
    return y;
}
__device__ PRECISION function_134(PRECISION Akt_P2,PRECISION cytoplasm,PRECISION dnabound,PRECISION dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0,PRECISION kkin){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0 * (Akt_P2 * (cytoplasm * kkin)));
    return y;
}
__device__ PRECISION function_135(PRECISION Akt_P2,PRECISION cytoplasm,PRECISION cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1,PRECISION kkin){
    PRECISION y = 0.0;
    y=(cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1 * (cytoplasm * (Akt_P2 * kkin)));
    return y;
}
__device__ PRECISION function_136(PRECISION Akt_P2,PRECISION cytoplasm,PRECISION kkin,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1 * (Akt_P2 * (cytoplasm * kkin)));
    return y;
}
__device__ PRECISION function_137(PRECISION Akt_P2,PRECISION cytoplasm,PRECISION dnabound,PRECISION dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1,PRECISION kkin){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1 * (Akt_P2 * (cytoplasm * kkin)));
    return y;
}
__device__ PRECISION function_138(PRECISION Akt_P2,PRECISION cytoplasm,PRECISION cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0,PRECISION kkin){
    PRECISION y = 0.0;
    y=(cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0 * (cytoplasm * (Akt_P2 * kkin)));
    return y;
}
__device__ PRECISION function_139(PRECISION Akt_P2,PRECISION cytoplasm,PRECISION kkin,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0 * (Akt_P2 * (cytoplasm * kkin)));
    return y;
}
__device__ PRECISION function_14(PRECISION PTP1B,PRECISION cytoplasm,PRECISION cytoplasm_Ins_InR_P,PRECISION k6){
    PRECISION y = 0.0;
    y=(k6 * (PTP1B * (cytoplasm * cytoplasm_Ins_InR_P)));
    return y;
}
__device__ PRECISION function_140(PRECISION Akt_P2,PRECISION cytoplasm,PRECISION dnabound,PRECISION dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0,PRECISION kkin){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0 * (Akt_P2 * (cytoplasm * kkin)));
    return y;
}
__device__ PRECISION function_141(PRECISION Akt_P2,PRECISION cytoplasm,PRECISION cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1,PRECISION kkin){
    PRECISION y = 0.0;
    y=(cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1 * (cytoplasm * (Akt_P2 * kkin)));
    return y;
}
__device__ PRECISION function_142(PRECISION Akt_P2,PRECISION cytoplasm,PRECISION kkin,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1 * (Akt_P2 * (cytoplasm * kkin)));
    return y;
}
__device__ PRECISION function_143(PRECISION Akt_P2,PRECISION cytoplasm,PRECISION dnabound,PRECISION dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1,PRECISION kkin){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1 * (Akt_P2 * (cytoplasm * kkin)));
    return y;
}
__device__ PRECISION function_144(PRECISION Akt_P2,PRECISION cytoplasm,PRECISION cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0,PRECISION kkin){
    PRECISION y = 0.0;
    y=(cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0 * (cytoplasm * (Akt_P2 * kkin)));
    return y;
}
__device__ PRECISION function_145(PRECISION Akt_P2,PRECISION cytoplasm,PRECISION kkin,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0 * (Akt_P2 * (cytoplasm * kkin)));
    return y;
}
__device__ PRECISION function_146(PRECISION Akt_P2,PRECISION cytoplasm,PRECISION dnabound,PRECISION dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0,PRECISION kkin){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0 * (Akt_P2 * (cytoplasm * kkin)));
    return y;
}
__device__ PRECISION function_147(PRECISION Akt_P2,PRECISION cytoplasm,PRECISION cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1,PRECISION kkin){
    PRECISION y = 0.0;
    y=(cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1 * (cytoplasm * (Akt_P2 * kkin)));
    return y;
}
__device__ PRECISION function_148(PRECISION Akt_P2,PRECISION cytoplasm,PRECISION kkin,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1 * (Akt_P2 * (cytoplasm * kkin)));
    return y;
}
__device__ PRECISION function_149(PRECISION Akt_P2,PRECISION cytoplasm,PRECISION dnabound,PRECISION dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1,PRECISION kkin){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1 * (Akt_P2 * (cytoplasm * kkin)));
    return y;
}
__device__ PRECISION function_15(PRECISION IRS1_TyrP_PI3K,PRECISION PIP2,PRECISION cytoplasm,PRECISION k9,PRECISION k9_basal){
    PRECISION y = 0.0;
    y=((k9_basal + (k9 * (IRS1_TyrP_PI3K * cytoplasm))) * PIP2);
    return y;
}
__device__ PRECISION function_150(PRECISION SGK,PRECISION cytoplasm,PRECISION cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0,PRECISION kkin){
    PRECISION y = 0.0;
    y=(cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0 * (cytoplasm * (SGK * kkin)));
    return y;
}
__device__ PRECISION function_151(PRECISION SGK,PRECISION cytoplasm,PRECISION kkin,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0 * (SGK * (cytoplasm * kkin)));
    return y;
}
__device__ PRECISION function_152(PRECISION SGK,PRECISION cytoplasm,PRECISION dnabound,PRECISION dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0,PRECISION kkin){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0 * (SGK * (cytoplasm * kkin)));
    return y;
}
__device__ PRECISION function_153(PRECISION SGK,PRECISION cytoplasm,PRECISION cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1,PRECISION kkin){
    PRECISION y = 0.0;
    y=(cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1 * (cytoplasm * (SGK * kkin)));
    return y;
}
__device__ PRECISION function_154(PRECISION SGK,PRECISION cytoplasm,PRECISION kkin,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1 * (SGK * (cytoplasm * kkin)));
    return y;
}
__device__ PRECISION function_155(PRECISION SGK,PRECISION cytoplasm,PRECISION dnabound,PRECISION dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1,PRECISION kkin){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1 * (SGK * (cytoplasm * kkin)));
    return y;
}
__device__ PRECISION function_156(PRECISION SGK,PRECISION cytoplasm,PRECISION cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0,PRECISION kkin){
    PRECISION y = 0.0;
    y=(cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0 * (cytoplasm * (SGK * kkin)));
    return y;
}
__device__ PRECISION function_157(PRECISION SGK,PRECISION cytoplasm,PRECISION kkin,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0 * (SGK * (cytoplasm * kkin)));
    return y;
}
__device__ PRECISION function_158(PRECISION SGK,PRECISION cytoplasm,PRECISION dnabound,PRECISION dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0,PRECISION kkin){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0 * (SGK * (cytoplasm * kkin)));
    return y;
}
__device__ PRECISION function_159(PRECISION SGK,PRECISION cytoplasm,PRECISION cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1,PRECISION kkin){
    PRECISION y = 0.0;
    y=(cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1 * (cytoplasm * (SGK * kkin)));
    return y;
}
__device__ PRECISION function_16(PRECISION PI345P3,PRECISION PTEN,PRECISION cytoplasm,PRECISION kminus9,PRECISION kminus9_basal){
    PRECISION y = 0.0;
    y=((kminus9_basal + (kminus9 * (PTEN * cytoplasm))) * PI345P3);
    return y;
}
__device__ PRECISION function_160(PRECISION SGK,PRECISION cytoplasm,PRECISION kkin,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1 * (SGK * (cytoplasm * kkin)));
    return y;
}
__device__ PRECISION function_161(PRECISION SGK,PRECISION cytoplasm,PRECISION dnabound,PRECISION dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1,PRECISION kkin){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1 * (SGK * (cytoplasm * kkin)));
    return y;
}
__device__ PRECISION function_162(PRECISION SGK,PRECISION cytoplasm,PRECISION cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0,PRECISION kkin){
    PRECISION y = 0.0;
    y=(cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0 * (cytoplasm * (SGK * kkin)));
    return y;
}
__device__ PRECISION function_163(PRECISION SGK,PRECISION cytoplasm,PRECISION kkin,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0 * (SGK * (cytoplasm * kkin)));
    return y;
}
__device__ PRECISION function_164(PRECISION SGK,PRECISION cytoplasm,PRECISION dnabound,PRECISION dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0,PRECISION kkin){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0 * (SGK * (cytoplasm * kkin)));
    return y;
}
__device__ PRECISION function_165(PRECISION SGK,PRECISION cytoplasm,PRECISION cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1,PRECISION kkin){
    PRECISION y = 0.0;
    y=(cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1 * (cytoplasm * (SGK * kkin)));
    return y;
}
__device__ PRECISION function_166(PRECISION SGK,PRECISION cytoplasm,PRECISION kkin,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1 * (SGK * (cytoplasm * kkin)));
    return y;
}
__device__ PRECISION function_167(PRECISION SGK,PRECISION cytoplasm,PRECISION dnabound,PRECISION dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1,PRECISION kkin){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1 * (SGK * (cytoplasm * kkin)));
    return y;
}
__device__ PRECISION function_168(PRECISION SGK,PRECISION cytoplasm,PRECISION cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0,PRECISION kkin){
    PRECISION y = 0.0;
    y=(cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0 * (cytoplasm * (SGK * kkin)));
    return y;
}
__device__ PRECISION function_169(PRECISION SGK,PRECISION cytoplasm,PRECISION kkin,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0 * (SGK * (cytoplasm * kkin)));
    return y;
}
__device__ PRECISION function_17(PRECISION Akt,PRECISION PI345P3,PRECISION cytoplasm,PRECISION k11,PRECISION pip3_basal){
    PRECISION y = 0.0;
    y=(k11 * (Akt * piecewise(((PI345P3 * cytoplasm) - pip3_basal),(PI345P3 * cytoplasm) > pip3_basal,0.0)));
    return y;
}
__device__ PRECISION function_170(PRECISION SGK,PRECISION cytoplasm,PRECISION dnabound,PRECISION dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0,PRECISION kkin){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0 * (SGK * (cytoplasm * kkin)));
    return y;
}
__device__ PRECISION function_171(PRECISION SGK,PRECISION cytoplasm,PRECISION cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1,PRECISION kkin){
    PRECISION y = 0.0;
    y=(cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1 * (cytoplasm * (SGK * kkin)));
    return y;
}
__device__ PRECISION function_172(PRECISION SGK,PRECISION cytoplasm,PRECISION kkin,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1 * (SGK * (cytoplasm * kkin)));
    return y;
}
__device__ PRECISION function_173(PRECISION SGK,PRECISION cytoplasm,PRECISION dnabound,PRECISION dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1,PRECISION kkin){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1 * (SGK * (cytoplasm * kkin)));
    return y;
}
__device__ PRECISION function_174(PRECISION PP2A,PRECISION cytoplasm,PRECISION cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0,PRECISION kdephos){
    PRECISION y = 0.0;
    y=(cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0 * (cytoplasm * (PP2A * kdephos)));
    return y;
}
__device__ PRECISION function_175(PRECISION PP2A,PRECISION cytoplasm,PRECISION kdephos,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0 * (PP2A * (cytoplasm * kdephos)));
    return y;
}
__device__ PRECISION function_176(PRECISION PP2A,PRECISION cytoplasm,PRECISION dnabound,PRECISION dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0,PRECISION kdephos){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0 * (PP2A * (cytoplasm * kdephos)));
    return y;
}
__device__ PRECISION function_177(PRECISION PP2A,PRECISION cytoplasm,PRECISION cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1,PRECISION kdephos){
    PRECISION y = 0.0;
    y=(cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1 * (cytoplasm * (PP2A * kdephos)));
    return y;
}
__device__ PRECISION function_178(PRECISION PP2A,PRECISION cytoplasm,PRECISION kdephos,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1 * (PP2A * (cytoplasm * kdephos)));
    return y;
}
__device__ PRECISION function_179(PRECISION PP2A,PRECISION cytoplasm,PRECISION dnabound,PRECISION dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1,PRECISION kdephos){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1 * (PP2A * (cytoplasm * kdephos)));
    return y;
}
__device__ PRECISION function_18(PRECISION Akt_P2,PRECISION PP2A,PRECISION cytoplasm,PRECISION kminus11){
    PRECISION y = 0.0;
    y=(kminus11 * (PP2A * (cytoplasm * Akt_P2)));
    return y;
}
__device__ PRECISION function_180(PRECISION PP2A,PRECISION cytoplasm,PRECISION cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0,PRECISION kdephos){
    PRECISION y = 0.0;
    y=(cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0 * (cytoplasm * (PP2A * kdephos)));
    return y;
}
__device__ PRECISION function_181(PRECISION PP2A,PRECISION cytoplasm,PRECISION kdephos,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0 * (PP2A * (cytoplasm * kdephos)));
    return y;
}
__device__ PRECISION function_182(PRECISION PP2A,PRECISION cytoplasm,PRECISION dnabound,PRECISION dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0,PRECISION kdephos){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0 * (PP2A * (cytoplasm * kdephos)));
    return y;
}
__device__ PRECISION function_183(PRECISION PP2A,PRECISION cytoplasm,PRECISION cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1,PRECISION kdephos){
    PRECISION y = 0.0;
    y=(cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1 * (cytoplasm * (PP2A * kdephos)));
    return y;
}
__device__ PRECISION function_184(PRECISION PP2A,PRECISION cytoplasm,PRECISION kdephos,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1 * (PP2A * (cytoplasm * kdephos)));
    return y;
}
__device__ PRECISION function_185(PRECISION PP2A,PRECISION cytoplasm,PRECISION dnabound,PRECISION dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1,PRECISION kdephos){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1 * (PP2A * (cytoplasm * kdephos)));
    return y;
}
__device__ PRECISION function_186(PRECISION PP2A,PRECISION cytoplasm,PRECISION cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0,PRECISION kdephos){
    PRECISION y = 0.0;
    y=(cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0 * (cytoplasm * (PP2A * kdephos)));
    return y;
}
__device__ PRECISION function_187(PRECISION PP2A,PRECISION cytoplasm,PRECISION kdephos,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0 * (PP2A * (cytoplasm * kdephos)));
    return y;
}
__device__ PRECISION function_188(PRECISION PP2A,PRECISION cytoplasm,PRECISION dnabound,PRECISION dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0,PRECISION kdephos){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0 * (PP2A * (cytoplasm * kdephos)));
    return y;
}
__device__ PRECISION function_189(PRECISION PP2A,PRECISION cytoplasm,PRECISION cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1,PRECISION kdephos){
    PRECISION y = 0.0;
    y=(cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1 * (cytoplasm * (PP2A * kdephos)));
    return y;
}
__device__ PRECISION function_19(PRECISION AS160,PRECISION Akt_P2,PRECISION cytoplasm,PRECISION kr16a){
    PRECISION y = 0.0;
    y=(kr16a * (Akt_P2 * (cytoplasm * AS160)));
    return y;
}
__device__ PRECISION function_190(PRECISION PP2A,PRECISION cytoplasm,PRECISION kdephos,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1 * (PP2A * (cytoplasm * kdephos)));
    return y;
}
__device__ PRECISION function_191(PRECISION PP2A,PRECISION cytoplasm,PRECISION dnabound,PRECISION dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1,PRECISION kdephos){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1 * (PP2A * (cytoplasm * kdephos)));
    return y;
}
__device__ PRECISION function_192(PRECISION PP2A,PRECISION cytoplasm,PRECISION cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0,PRECISION kdephos){
    PRECISION y = 0.0;
    y=(cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0 * (cytoplasm * (PP2A * kdephos)));
    return y;
}
__device__ PRECISION function_193(PRECISION PP2A,PRECISION cytoplasm,PRECISION kdephos,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0 * (PP2A * (cytoplasm * kdephos)));
    return y;
}
__device__ PRECISION function_194(PRECISION PP2A,PRECISION cytoplasm,PRECISION dnabound,PRECISION dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0,PRECISION kdephos){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0 * (PP2A * (cytoplasm * kdephos)));
    return y;
}
__device__ PRECISION function_195(PRECISION PP2A,PRECISION cytoplasm,PRECISION cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1,PRECISION kdephos){
    PRECISION y = 0.0;
    y=(cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1 * (cytoplasm * (PP2A * kdephos)));
    return y;
}
__device__ PRECISION function_196(PRECISION PP2A,PRECISION cytoplasm,PRECISION kdephos,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1 * (PP2A * (cytoplasm * kdephos)));
    return y;
}
__device__ PRECISION function_197(PRECISION PP2A,PRECISION cytoplasm,PRECISION dnabound,PRECISION dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1,PRECISION kdephos){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1 * (PP2A * (cytoplasm * kdephos)));
    return y;
}
__device__ PRECISION function_198(PRECISION IKK_P,PRECISION by_ikk_phos_factor,PRECISION cytoplasm,PRECISION cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0,PRECISION kkin){
    PRECISION y = 0.0;
    y=(cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0 * (cytoplasm * (IKK_P * (by_ikk_phos_factor * kkin))));
    return y;
}
__device__ PRECISION function_199(PRECISION IKK_P,PRECISION by_ikk_phos_factor,PRECISION cytoplasm,PRECISION kkin,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0 * (IKK_P * (cytoplasm * (by_ikk_phos_factor * kkin))));
    return y;
}
__device__ PRECISION function_2(PRECISION Ins_InR,PRECISION cellsurface,PRECISION kminus1){
    PRECISION y = 0.0;
    y=(kminus1 * (Ins_InR * cellsurface));
    return y;
}
__device__ PRECISION function_20(PRECISION AS160_P,PRECISION PP2A,PRECISION cytoplasm,PRECISION kminusr16a){
    PRECISION y = 0.0;
    y=(kminusr16a * (PP2A * (cytoplasm * AS160_P)));
    return y;
}
__device__ PRECISION function_200(PRECISION IKK_P,PRECISION by_ikk_phos_factor,PRECISION cytoplasm,PRECISION dnabound,PRECISION dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0,PRECISION kkin){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0 * (IKK_P * (cytoplasm * (by_ikk_phos_factor * kkin))));
    return y;
}
__device__ PRECISION function_201(PRECISION IKK_P,PRECISION by_ikk_phos_factor,PRECISION cytoplasm,PRECISION cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1,PRECISION kkin){
    PRECISION y = 0.0;
    y=(cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1 * (cytoplasm * (IKK_P * (by_ikk_phos_factor * kkin))));
    return y;
}
__device__ PRECISION function_202(PRECISION IKK_P,PRECISION by_ikk_phos_factor,PRECISION cytoplasm,PRECISION kkin,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1 * (IKK_P * (cytoplasm * (by_ikk_phos_factor * kkin))));
    return y;
}
__device__ PRECISION function_203(PRECISION IKK_P,PRECISION by_ikk_phos_factor,PRECISION cytoplasm,PRECISION dnabound,PRECISION dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1,PRECISION kkin){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1 * (IKK_P * (cytoplasm * (by_ikk_phos_factor * kkin))));
    return y;
}
__device__ PRECISION function_204(PRECISION IKK_P,PRECISION by_ikk_phos_factor,PRECISION cytoplasm,PRECISION cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0,PRECISION kkin){
    PRECISION y = 0.0;
    y=(cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0 * (cytoplasm * (IKK_P * (by_ikk_phos_factor * kkin))));
    return y;
}
__device__ PRECISION function_205(PRECISION IKK_P,PRECISION by_ikk_phos_factor,PRECISION cytoplasm,PRECISION kkin,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0 * (IKK_P * (cytoplasm * (by_ikk_phos_factor * kkin))));
    return y;
}
__device__ PRECISION function_206(PRECISION IKK_P,PRECISION by_ikk_phos_factor,PRECISION cytoplasm,PRECISION dnabound,PRECISION dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0,PRECISION kkin){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0 * (IKK_P * (cytoplasm * (by_ikk_phos_factor * kkin))));
    return y;
}
__device__ PRECISION function_207(PRECISION IKK_P,PRECISION by_ikk_phos_factor,PRECISION cytoplasm,PRECISION cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1,PRECISION kkin){
    PRECISION y = 0.0;
    y=(cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1 * (cytoplasm * (IKK_P * (by_ikk_phos_factor * kkin))));
    return y;
}
__device__ PRECISION function_208(PRECISION IKK_P,PRECISION by_ikk_phos_factor,PRECISION cytoplasm,PRECISION kkin,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1 * (IKK_P * (cytoplasm * (by_ikk_phos_factor * kkin))));
    return y;
}
__device__ PRECISION function_209(PRECISION IKK_P,PRECISION by_ikk_phos_factor,PRECISION cytoplasm,PRECISION dnabound,PRECISION dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1,PRECISION kkin){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1 * (IKK_P * (cytoplasm * (by_ikk_phos_factor * kkin))));
    return y;
}
__device__ PRECISION function_21(PRECISION PI345P3,PRECISION PKC,PRECISION cytoplasm,PRECISION k12,PRECISION pip3_basal){
    PRECISION y = 0.0;
    y=(k12 * (PKC * piecewise(((PI345P3 * cytoplasm) - pip3_basal),(PI345P3 * cytoplasm) > pip3_basal,0.0)));
    return y;
}
__device__ PRECISION function_210(PRECISION PP2A,PRECISION cytoplasm,PRECISION cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0,PRECISION kdephos){
    PRECISION y = 0.0;
    y=(cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0 * (cytoplasm * (PP2A * kdephos)));
    return y;
}
__device__ PRECISION function_211(PRECISION PP2A,PRECISION cytoplasm,PRECISION kdephos,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0 * (PP2A * (cytoplasm * kdephos)));
    return y;
}
__device__ PRECISION function_212(PRECISION PP2A,PRECISION cytoplasm,PRECISION dnabound,PRECISION dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0,PRECISION kdephos){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0 * (PP2A * (cytoplasm * kdephos)));
    return y;
}
__device__ PRECISION function_213(PRECISION PP2A,PRECISION cytoplasm,PRECISION cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1,PRECISION kdephos){
    PRECISION y = 0.0;
    y=(cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1 * (cytoplasm * (PP2A * kdephos)));
    return y;
}
__device__ PRECISION function_214(PRECISION PP2A,PRECISION cytoplasm,PRECISION kdephos,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1 * (PP2A * (cytoplasm * kdephos)));
    return y;
}
__device__ PRECISION function_215(PRECISION PP2A,PRECISION cytoplasm,PRECISION dnabound,PRECISION dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1,PRECISION kdephos){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1 * (PP2A * (cytoplasm * kdephos)));
    return y;
}
__device__ PRECISION function_216(PRECISION PP2A,PRECISION cytoplasm,PRECISION cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0,PRECISION kdephos){
    PRECISION y = 0.0;
    y=(cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0 * (cytoplasm * (PP2A * kdephos)));
    return y;
}
__device__ PRECISION function_217(PRECISION PP2A,PRECISION cytoplasm,PRECISION kdephos,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0 * (PP2A * (cytoplasm * kdephos)));
    return y;
}
__device__ PRECISION function_218(PRECISION PP2A,PRECISION cytoplasm,PRECISION dnabound,PRECISION dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0,PRECISION kdephos){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0 * (PP2A * (cytoplasm * kdephos)));
    return y;
}
__device__ PRECISION function_219(PRECISION PP2A,PRECISION cytoplasm,PRECISION cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1,PRECISION kdephos){
    PRECISION y = 0.0;
    y=(cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1 * (cytoplasm * (PP2A * kdephos)));
    return y;
}
__device__ PRECISION function_22(PRECISION PKC_P,PRECISION PP2A,PRECISION cytoplasm,PRECISION kminus12){
    PRECISION y = 0.0;
    y=(kminus12 * (PP2A * (cytoplasm * PKC_P)));
    return y;
}
__device__ PRECISION function_220(PRECISION PP2A,PRECISION cytoplasm,PRECISION kdephos,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1 * (PP2A * (cytoplasm * kdephos)));
    return y;
}
__device__ PRECISION function_221(PRECISION PP2A,PRECISION cytoplasm,PRECISION dnabound,PRECISION dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1,PRECISION kdephos){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1 * (PP2A * (cytoplasm * kdephos)));
    return y;
}
__device__ PRECISION function_222(PRECISION IKK_P,PRECISION by_ikk_phos_factor,PRECISION cytoplasm,PRECISION cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0,PRECISION kkin){
    PRECISION y = 0.0;
    y=(cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0 * (cytoplasm * (IKK_P * (by_ikk_phos_factor * kkin))));
    return y;
}
__device__ PRECISION function_223(PRECISION IKK_P,PRECISION by_ikk_phos_factor,PRECISION cytoplasm,PRECISION kkin,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0 * (IKK_P * (cytoplasm * (by_ikk_phos_factor * kkin))));
    return y;
}
__device__ PRECISION function_224(PRECISION IKK_P,PRECISION by_ikk_phos_factor,PRECISION cytoplasm,PRECISION dnabound,PRECISION dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0,PRECISION kkin){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0 * (IKK_P * (cytoplasm * (by_ikk_phos_factor * kkin))));
    return y;
}
__device__ PRECISION function_225(PRECISION IKK_P,PRECISION by_ikk_phos_factor,PRECISION cytoplasm,PRECISION cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1,PRECISION kkin){
    PRECISION y = 0.0;
    y=(cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1 * (cytoplasm * (IKK_P * (by_ikk_phos_factor * kkin))));
    return y;
}
__device__ PRECISION function_226(PRECISION IKK_P,PRECISION by_ikk_phos_factor,PRECISION cytoplasm,PRECISION kkin,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1 * (IKK_P * (cytoplasm * (by_ikk_phos_factor * kkin))));
    return y;
}
__device__ PRECISION function_227(PRECISION IKK_P,PRECISION by_ikk_phos_factor,PRECISION cytoplasm,PRECISION dnabound,PRECISION dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1,PRECISION kkin){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1 * (IKK_P * (cytoplasm * (by_ikk_phos_factor * kkin))));
    return y;
}
__device__ PRECISION function_228(PRECISION IKK_P,PRECISION by_ikk_phos_factor,PRECISION cytoplasm,PRECISION cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0,PRECISION kkin){
    PRECISION y = 0.0;
    y=(cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0 * (cytoplasm * (IKK_P * (by_ikk_phos_factor * kkin))));
    return y;
}
__device__ PRECISION function_229(PRECISION IKK_P,PRECISION by_ikk_phos_factor,PRECISION cytoplasm,PRECISION kkin,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0 * (IKK_P * (cytoplasm * (by_ikk_phos_factor * kkin))));
    return y;
}
__device__ PRECISION function_23(PRECISION AS160_P,PRECISION cytoplasm,PRECISION cytoplasm_GLUT4,PRECISION k13,PRECISION k13_basal){
    PRECISION y = 0.0;
    y=((k13_basal + (k13 * (AS160_P * cytoplasm))) * (cytoplasm_GLUT4 * cytoplasm));
    return y;
}
__device__ PRECISION function_230(PRECISION IKK_P,PRECISION by_ikk_phos_factor,PRECISION cytoplasm,PRECISION dnabound,PRECISION dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0,PRECISION kkin){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0 * (IKK_P * (cytoplasm * (by_ikk_phos_factor * kkin))));
    return y;
}
__device__ PRECISION function_231(PRECISION IKK_P,PRECISION by_ikk_phos_factor,PRECISION cytoplasm,PRECISION cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1,PRECISION kkin){
    PRECISION y = 0.0;
    y=(cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1 * (cytoplasm * (IKK_P * (by_ikk_phos_factor * kkin))));
    return y;
}
__device__ PRECISION function_232(PRECISION IKK_P,PRECISION by_ikk_phos_factor,PRECISION cytoplasm,PRECISION kkin,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1 * (IKK_P * (cytoplasm * (by_ikk_phos_factor * kkin))));
    return y;
}
__device__ PRECISION function_233(PRECISION IKK_P,PRECISION by_ikk_phos_factor,PRECISION cytoplasm,PRECISION dnabound,PRECISION dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1,PRECISION kkin){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1 * (IKK_P * (cytoplasm * (by_ikk_phos_factor * kkin))));
    return y;
}
__device__ PRECISION function_234(PRECISION PP2A,PRECISION cytoplasm,PRECISION cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0,PRECISION kdephos){
    PRECISION y = 0.0;
    y=(cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0 * (cytoplasm * (PP2A * kdephos)));
    return y;
}
__device__ PRECISION function_235(PRECISION PP2A,PRECISION cytoplasm,PRECISION kdephos,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0 * (PP2A * (cytoplasm * kdephos)));
    return y;
}
__device__ PRECISION function_236(PRECISION PP2A,PRECISION cytoplasm,PRECISION dnabound,PRECISION dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0,PRECISION kdephos){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0 * (PP2A * (cytoplasm * kdephos)));
    return y;
}
__device__ PRECISION function_237(PRECISION PP2A,PRECISION cytoplasm,PRECISION cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1,PRECISION kdephos){
    PRECISION y = 0.0;
    y=(cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1 * (cytoplasm * (PP2A * kdephos)));
    return y;
}
__device__ PRECISION function_238(PRECISION PP2A,PRECISION cytoplasm,PRECISION kdephos,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1 * (PP2A * (cytoplasm * kdephos)));
    return y;
}
__device__ PRECISION function_239(PRECISION PP2A,PRECISION cytoplasm,PRECISION dnabound,PRECISION dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1,PRECISION kdephos){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1 * (PP2A * (cytoplasm * kdephos)));
    return y;
}
__device__ PRECISION function_24(PRECISION cellsurface,PRECISION cellsurface_GLUT4,PRECISION kminus13){
    PRECISION y = 0.0;
    y=(kminus13 * (cellsurface_GLUT4 * cellsurface));
    return y;
}
__device__ PRECISION function_240(PRECISION PP2A,PRECISION cytoplasm,PRECISION cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0,PRECISION kdephos){
    PRECISION y = 0.0;
    y=(cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0 * (cytoplasm * (PP2A * kdephos)));
    return y;
}
__device__ PRECISION function_241(PRECISION PP2A,PRECISION cytoplasm,PRECISION kdephos,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0 * (PP2A * (cytoplasm * kdephos)));
    return y;
}
__device__ PRECISION function_242(PRECISION PP2A,PRECISION cytoplasm,PRECISION dnabound,PRECISION dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0,PRECISION kdephos){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0 * (PP2A * (cytoplasm * kdephos)));
    return y;
}
__device__ PRECISION function_243(PRECISION PP2A,PRECISION cytoplasm,PRECISION cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1,PRECISION kdephos){
    PRECISION y = 0.0;
    y=(cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1 * (cytoplasm * (PP2A * kdephos)));
    return y;
}
__device__ PRECISION function_244(PRECISION PP2A,PRECISION cytoplasm,PRECISION kdephos,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1 * (PP2A * (cytoplasm * kdephos)));
    return y;
}
__device__ PRECISION function_245(PRECISION PP2A,PRECISION cytoplasm,PRECISION dnabound,PRECISION dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1,PRECISION kdephos){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1 * (PP2A * (cytoplasm * kdephos)));
    return y;
}
__device__ PRECISION function_246(PRECISION JNK_P,PRECISION by_jnk_phos_factor,PRECISION cytoplasm,PRECISION cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0,PRECISION kkin){
    PRECISION y = 0.0;
    y=(cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0 * (cytoplasm * (JNK_P * (by_jnk_phos_factor * kkin))));
    return y;
}
__device__ PRECISION function_247(PRECISION JNK_P,PRECISION by_jnk_phos_factor,PRECISION cytoplasm,PRECISION kkin,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0 * (JNK_P * (cytoplasm * (by_jnk_phos_factor * kkin))));
    return y;
}
__device__ PRECISION function_248(PRECISION JNK_P,PRECISION by_jnk_phos_factor,PRECISION cytoplasm,PRECISION dnabound,PRECISION dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0,PRECISION kkin){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0 * (JNK_P * (cytoplasm * (by_jnk_phos_factor * kkin))));
    return y;
}
__device__ PRECISION function_249(PRECISION JNK_P,PRECISION by_jnk_phos_factor,PRECISION cytoplasm,PRECISION cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1,PRECISION kkin){
    PRECISION y = 0.0;
    y=(cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1 * (cytoplasm * (JNK_P * (by_jnk_phos_factor * kkin))));
    return y;
}
__device__ PRECISION function_25(PRECISION PTP1B,PRECISION ROS,PRECISION cytoplasm,PRECISION k30f){
    PRECISION y = 0.0;
    y=(k30f * (PTP1B * (cytoplasm * ROS)));
    return y;
}
__device__ PRECISION function_250(PRECISION JNK_P,PRECISION by_jnk_phos_factor,PRECISION cytoplasm,PRECISION kkin,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1 * (JNK_P * (cytoplasm * (by_jnk_phos_factor * kkin))));
    return y;
}
__device__ PRECISION function_251(PRECISION JNK_P,PRECISION by_jnk_phos_factor,PRECISION cytoplasm,PRECISION dnabound,PRECISION dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1,PRECISION kkin){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1 * (JNK_P * (cytoplasm * (by_jnk_phos_factor * kkin))));
    return y;
}
__device__ PRECISION function_252(PRECISION PP2A,PRECISION cytoplasm,PRECISION cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0,PRECISION kdephos){
    PRECISION y = 0.0;
    y=(cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0 * (cytoplasm * (PP2A * kdephos)));
    return y;
}
__device__ PRECISION function_253(PRECISION PP2A,PRECISION cytoplasm,PRECISION kdephos,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0 * (PP2A * (cytoplasm * kdephos)));
    return y;
}
__device__ PRECISION function_254(PRECISION PP2A,PRECISION cytoplasm,PRECISION dnabound,PRECISION dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0,PRECISION kdephos){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0 * (PP2A * (cytoplasm * kdephos)));
    return y;
}
__device__ PRECISION function_255(PRECISION PP2A,PRECISION cytoplasm,PRECISION cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1,PRECISION kdephos){
    PRECISION y = 0.0;
    y=(cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1 * (cytoplasm * (PP2A * kdephos)));
    return y;
}
__device__ PRECISION function_256(PRECISION PP2A,PRECISION cytoplasm,PRECISION kdephos,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1 * (PP2A * (cytoplasm * kdephos)));
    return y;
}
__device__ PRECISION function_257(PRECISION PP2A,PRECISION cytoplasm,PRECISION dnabound,PRECISION dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1,PRECISION kdephos){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1 * (PP2A * (cytoplasm * kdephos)));
    return y;
}
__device__ PRECISION function_258(PRECISION JNK_P,PRECISION by_jnk_phos_factor,PRECISION cytoplasm,PRECISION cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0,PRECISION kkin){
    PRECISION y = 0.0;
    y=(cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0 * (cytoplasm * (JNK_P * (by_jnk_phos_factor * kkin))));
    return y;
}
__device__ PRECISION function_259(PRECISION JNK_P,PRECISION by_jnk_phos_factor,PRECISION cytoplasm,PRECISION kkin,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0 * (JNK_P * (cytoplasm * (by_jnk_phos_factor * kkin))));
    return y;
}
__device__ PRECISION function_26(PRECISION GSH,PRECISION PTP1B_ox,PRECISION cytoplasm,PRECISION k30r){
    PRECISION y = 0.0;
    y=(k30r * (PTP1B_ox * (cytoplasm * GSH)));
    return y;
}
__device__ PRECISION function_260(PRECISION JNK_P,PRECISION by_jnk_phos_factor,PRECISION cytoplasm,PRECISION dnabound,PRECISION dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0,PRECISION kkin){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0 * (JNK_P * (cytoplasm * (by_jnk_phos_factor * kkin))));
    return y;
}
__device__ PRECISION function_261(PRECISION JNK_P,PRECISION by_jnk_phos_factor,PRECISION cytoplasm,PRECISION cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1,PRECISION kkin){
    PRECISION y = 0.0;
    y=(cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1 * (cytoplasm * (JNK_P * (by_jnk_phos_factor * kkin))));
    return y;
}
__device__ PRECISION function_262(PRECISION JNK_P,PRECISION by_jnk_phos_factor,PRECISION cytoplasm,PRECISION kkin,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1 * (JNK_P * (cytoplasm * (by_jnk_phos_factor * kkin))));
    return y;
}
__device__ PRECISION function_263(PRECISION JNK_P,PRECISION by_jnk_phos_factor,PRECISION cytoplasm,PRECISION dnabound,PRECISION dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1,PRECISION kkin){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1 * (JNK_P * (cytoplasm * (by_jnk_phos_factor * kkin))));
    return y;
}
__device__ PRECISION function_264(PRECISION PP2A,PRECISION cytoplasm,PRECISION cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0,PRECISION kdephos){
    PRECISION y = 0.0;
    y=(cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0 * (cytoplasm * (PP2A * kdephos)));
    return y;
}
__device__ PRECISION function_265(PRECISION PP2A,PRECISION cytoplasm,PRECISION kdephos,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0 * (PP2A * (cytoplasm * kdephos)));
    return y;
}
__device__ PRECISION function_266(PRECISION PP2A,PRECISION cytoplasm,PRECISION dnabound,PRECISION dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0,PRECISION kdephos){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0 * (PP2A * (cytoplasm * kdephos)));
    return y;
}
__device__ PRECISION function_267(PRECISION PP2A,PRECISION cytoplasm,PRECISION cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1,PRECISION kdephos){
    PRECISION y = 0.0;
    y=(cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1 * (cytoplasm * (PP2A * kdephos)));
    return y;
}
__device__ PRECISION function_268(PRECISION PP2A,PRECISION cytoplasm,PRECISION kdephos,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1 * (PP2A * (cytoplasm * kdephos)));
    return y;
}
__device__ PRECISION function_269(PRECISION PP2A,PRECISION cytoplasm,PRECISION dnabound,PRECISION dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1,PRECISION kdephos){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1 * (PP2A * (cytoplasm * kdephos)));
    return y;
}
__device__ PRECISION function_27(PRECISION PTEN,PRECISION ROS,PRECISION cytoplasm,PRECISION k31f){
    PRECISION y = 0.0;
    y=(k31f * (PTEN * (cytoplasm * ROS)));
    return y;
}
__device__ PRECISION function_270(PRECISION JNK_P,PRECISION by_jnk_phos_factor,PRECISION cytoplasm,PRECISION cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0,PRECISION kkin){
    PRECISION y = 0.0;
    y=(cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0 * (cytoplasm * (JNK_P * (by_jnk_phos_factor * kkin))));
    return y;
}
__device__ PRECISION function_271(PRECISION JNK_P,PRECISION by_jnk_phos_factor,PRECISION cytoplasm,PRECISION kkin,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0 * (JNK_P * (cytoplasm * (by_jnk_phos_factor * kkin))));
    return y;
}
__device__ PRECISION function_272(PRECISION JNK_P,PRECISION by_jnk_phos_factor,PRECISION cytoplasm,PRECISION dnabound,PRECISION dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0,PRECISION kkin){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0 * (JNK_P * (cytoplasm * (by_jnk_phos_factor * kkin))));
    return y;
}
__device__ PRECISION function_273(PRECISION JNK_P,PRECISION by_jnk_phos_factor,PRECISION cytoplasm,PRECISION cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1,PRECISION kkin){
    PRECISION y = 0.0;
    y=(cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1 * (cytoplasm * (JNK_P * (by_jnk_phos_factor * kkin))));
    return y;
}
__device__ PRECISION function_274(PRECISION JNK_P,PRECISION by_jnk_phos_factor,PRECISION cytoplasm,PRECISION kkin,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1 * (JNK_P * (cytoplasm * (by_jnk_phos_factor * kkin))));
    return y;
}
__device__ PRECISION function_275(PRECISION JNK_P,PRECISION by_jnk_phos_factor,PRECISION cytoplasm,PRECISION dnabound,PRECISION dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1,PRECISION kkin){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1 * (JNK_P * (cytoplasm * (by_jnk_phos_factor * kkin))));
    return y;
}
__device__ PRECISION function_276(PRECISION PP2A,PRECISION cytoplasm,PRECISION cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0,PRECISION kdephos){
    PRECISION y = 0.0;
    y=(cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0 * (cytoplasm * (PP2A * kdephos)));
    return y;
}
__device__ PRECISION function_277(PRECISION PP2A,PRECISION cytoplasm,PRECISION kdephos,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0 * (PP2A * (cytoplasm * kdephos)));
    return y;
}
__device__ PRECISION function_278(PRECISION PP2A,PRECISION cytoplasm,PRECISION dnabound,PRECISION dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0,PRECISION kdephos){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0 * (PP2A * (cytoplasm * kdephos)));
    return y;
}
__device__ PRECISION function_279(PRECISION PP2A,PRECISION cytoplasm,PRECISION cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1,PRECISION kdephos){
    PRECISION y = 0.0;
    y=(cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1 * (cytoplasm * (PP2A * kdephos)));
    return y;
}
__device__ PRECISION function_28(PRECISION GSH,PRECISION PTEN_ox,PRECISION cytoplasm,PRECISION k31r){
    PRECISION y = 0.0;
    y=(k31r * (PTEN_ox * (cytoplasm * GSH)));
    return y;
}
__device__ PRECISION function_280(PRECISION PP2A,PRECISION cytoplasm,PRECISION kdephos,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1 * (PP2A * (cytoplasm * kdephos)));
    return y;
}
__device__ PRECISION function_281(PRECISION PP2A,PRECISION cytoplasm,PRECISION dnabound,PRECISION dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1,PRECISION kdephos){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1 * (PP2A * (cytoplasm * kdephos)));
    return y;
}
__device__ PRECISION function_282(PRECISION JNK_P,PRECISION by_jnk_phos_factor,PRECISION cytoplasm,PRECISION cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0,PRECISION kkin){
    PRECISION y = 0.0;
    y=(cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0 * (cytoplasm * (JNK_P * (by_jnk_phos_factor * kkin))));
    return y;
}
__device__ PRECISION function_283(PRECISION JNK_P,PRECISION by_jnk_phos_factor,PRECISION cytoplasm,PRECISION kkin,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0 * (JNK_P * (cytoplasm * (by_jnk_phos_factor * kkin))));
    return y;
}
__device__ PRECISION function_284(PRECISION JNK_P,PRECISION by_jnk_phos_factor,PRECISION cytoplasm,PRECISION dnabound,PRECISION dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0,PRECISION kkin){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0 * (JNK_P * (cytoplasm * (by_jnk_phos_factor * kkin))));
    return y;
}
__device__ PRECISION function_285(PRECISION JNK_P,PRECISION by_jnk_phos_factor,PRECISION cytoplasm,PRECISION cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1,PRECISION kkin){
    PRECISION y = 0.0;
    y=(cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1 * (cytoplasm * (JNK_P * (by_jnk_phos_factor * kkin))));
    return y;
}
__device__ PRECISION function_286(PRECISION JNK_P,PRECISION by_jnk_phos_factor,PRECISION cytoplasm,PRECISION kkin,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1 * (JNK_P * (cytoplasm * (by_jnk_phos_factor * kkin))));
    return y;
}
__device__ PRECISION function_287(PRECISION JNK_P,PRECISION by_jnk_phos_factor,PRECISION cytoplasm,PRECISION dnabound,PRECISION dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1,PRECISION kkin){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1 * (JNK_P * (cytoplasm * (by_jnk_phos_factor * kkin))));
    return y;
}
__device__ PRECISION function_288(PRECISION PP2A,PRECISION cytoplasm,PRECISION cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0,PRECISION kdephos){
    PRECISION y = 0.0;
    y=(cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0 * (cytoplasm * (PP2A * kdephos)));
    return y;
}
__device__ PRECISION function_289(PRECISION PP2A,PRECISION cytoplasm,PRECISION kdephos,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0 * (PP2A * (cytoplasm * kdephos)));
    return y;
}
__device__ PRECISION function_29(PRECISION Ins,PRECISION NOX_inact,PRECISION cytoplasm,PRECISION extracellular,PRECISION k34f){
    PRECISION y = 0.0;
    y=(k34f * (NOX_inact * (cytoplasm * (Ins * extracellular))));
    return y;
}
__device__ PRECISION function_290(PRECISION PP2A,PRECISION cytoplasm,PRECISION dnabound,PRECISION dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0,PRECISION kdephos){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0 * (PP2A * (cytoplasm * kdephos)));
    return y;
}
__device__ PRECISION function_291(PRECISION PP2A,PRECISION cytoplasm,PRECISION cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1,PRECISION kdephos){
    PRECISION y = 0.0;
    y=(cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1 * (cytoplasm * (PP2A * kdephos)));
    return y;
}
__device__ PRECISION function_292(PRECISION PP2A,PRECISION cytoplasm,PRECISION kdephos,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1 * (PP2A * (cytoplasm * kdephos)));
    return y;
}
__device__ PRECISION function_293(PRECISION PP2A,PRECISION cytoplasm,PRECISION dnabound,PRECISION dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1,PRECISION kdephos){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1 * (PP2A * (cytoplasm * kdephos)));
    return y;
}
__device__ PRECISION function_294(PRECISION SCF,PRECISION cytoplasm,PRECISION cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0,PRECISION kub){
    PRECISION y = 0.0;
    y=(cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0 * (cytoplasm * (SCF * kub)));
    return y;
}
__device__ PRECISION function_295(PRECISION SCF,PRECISION cytoplasm,PRECISION kub,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0 * (SCF * (cytoplasm * kub)));
    return y;
}
__device__ PRECISION function_296(PRECISION SCF,PRECISION cytoplasm,PRECISION dnabound,PRECISION dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0,PRECISION kub){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0 * (SCF * (cytoplasm * kub)));
    return y;
}
__device__ PRECISION function_297(PRECISION SCF,PRECISION cytoplasm,PRECISION cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0,PRECISION kub){
    PRECISION y = 0.0;
    y=(cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0 * (cytoplasm * (SCF * kub)));
    return y;
}
__device__ PRECISION function_298(PRECISION SCF,PRECISION cytoplasm,PRECISION kub,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0 * (SCF * (cytoplasm * kub)));
    return y;
}
__device__ PRECISION function_299(PRECISION SCF,PRECISION cytoplasm,PRECISION dnabound,PRECISION dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0,PRECISION kub){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0 * (SCF * (cytoplasm * kub)));
    return y;
}
__device__ PRECISION function_3(PRECISION Ins_InR,PRECISION cellsurface,PRECISION k3){
    PRECISION y = 0.0;
    y=(k3 * Ins_InR);
    return y;
}
__device__ PRECISION function_30(PRECISION NOX,PRECISION cytoplasm,PRECISION k34r1){
    PRECISION y = 0.0;
    y=(k34r1 * (pow((NOX * cytoplasm),2.0) / cytoplasm));
    return y;
}
__device__ PRECISION function_300(PRECISION SCF,PRECISION cytoplasm,PRECISION cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0,PRECISION kub){
    PRECISION y = 0.0;
    y=(cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0 * (cytoplasm * (SCF * kub)));
    return y;
}
__device__ PRECISION function_301(PRECISION SCF,PRECISION cytoplasm,PRECISION kub,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0 * (SCF * (cytoplasm * kub)));
    return y;
}
__device__ PRECISION function_302(PRECISION SCF,PRECISION cytoplasm,PRECISION dnabound,PRECISION dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0,PRECISION kub){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0 * (SCF * (cytoplasm * kub)));
    return y;
}
__device__ PRECISION function_303(PRECISION SCF,PRECISION cytoplasm,PRECISION cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0,PRECISION kub){
    PRECISION y = 0.0;
    y=(cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0 * (cytoplasm * (SCF * kub)));
    return y;
}
__device__ PRECISION function_304(PRECISION SCF,PRECISION cytoplasm,PRECISION kub,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0 * (SCF * (cytoplasm * kub)));
    return y;
}
__device__ PRECISION function_305(PRECISION SCF,PRECISION cytoplasm,PRECISION dnabound,PRECISION dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0,PRECISION kub){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0 * (SCF * (cytoplasm * kub)));
    return y;
}
__device__ PRECISION function_306(PRECISION SCF,PRECISION cytoplasm,PRECISION cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0,PRECISION kub){
    PRECISION y = 0.0;
    y=(cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0 * (cytoplasm * (SCF * kub)));
    return y;
}
__device__ PRECISION function_307(PRECISION SCF,PRECISION cytoplasm,PRECISION kub,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0 * (SCF * (cytoplasm * kub)));
    return y;
}
__device__ PRECISION function_308(PRECISION SCF,PRECISION cytoplasm,PRECISION dnabound,PRECISION dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0,PRECISION kub){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0 * (SCF * (cytoplasm * kub)));
    return y;
}
__device__ PRECISION function_309(PRECISION SCF,PRECISION cytoplasm,PRECISION cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0,PRECISION kub){
    PRECISION y = 0.0;
    y=(cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0 * (cytoplasm * (SCF * kub)));
    return y;
}
__device__ PRECISION function_31(PRECISION NOX,PRECISION cytoplasm,PRECISION k34r2){
    PRECISION y = 0.0;
    y=(k34r2 * NOX);
    return y;
}
__device__ PRECISION function_310(PRECISION SCF,PRECISION cytoplasm,PRECISION kub,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0 * (SCF * (cytoplasm * kub)));
    return y;
}
__device__ PRECISION function_311(PRECISION SCF,PRECISION cytoplasm,PRECISION dnabound,PRECISION dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0,PRECISION kub){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0 * (SCF * (cytoplasm * kub)));
    return y;
}
__device__ PRECISION function_312(PRECISION SCF,PRECISION cytoplasm,PRECISION cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0,PRECISION kub){
    PRECISION y = 0.0;
    y=(cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0 * (cytoplasm * (SCF * kub)));
    return y;
}
__device__ PRECISION function_313(PRECISION SCF,PRECISION cytoplasm,PRECISION kub,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0 * (SCF * (cytoplasm * kub)));
    return y;
}
__device__ PRECISION function_314(PRECISION SCF,PRECISION cytoplasm,PRECISION dnabound,PRECISION dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0,PRECISION kub){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0 * (SCF * (cytoplasm * kub)));
    return y;
}
__device__ PRECISION function_315(PRECISION SCF,PRECISION cytoplasm,PRECISION cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0,PRECISION kub){
    PRECISION y = 0.0;
    y=(cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0 * (cytoplasm * (SCF * kub)));
    return y;
}
__device__ PRECISION function_316(PRECISION SCF,PRECISION cytoplasm,PRECISION kub,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0 * (SCF * (cytoplasm * kub)));
    return y;
}
__device__ PRECISION function_317(PRECISION SCF,PRECISION cytoplasm,PRECISION dnabound,PRECISION dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0,PRECISION kub){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0 * (SCF * (cytoplasm * kub)));
    return y;
}
__device__ PRECISION function_318(PRECISION Proteasome,PRECISION cytoplasm,PRECISION cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1,PRECISION kdeg){
    PRECISION y = 0.0;
    y=(cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1 * (cytoplasm * (Proteasome * kdeg)));
    return y;
}
__device__ PRECISION function_319(PRECISION Proteasome,PRECISION cytoplasm,PRECISION cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1,PRECISION kdeg){
    PRECISION y = 0.0;
    y=(cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1 * (cytoplasm * (Proteasome * kdeg)));
    return y;
}
__device__ PRECISION function_32(PRECISION NOX_deact,PRECISION cytoplasm,PRECISION k34r3){
    PRECISION y = 0.0;
    y=(k34r3 * (pow((NOX_deact * cytoplasm),2.0) / cytoplasm));
    return y;
}
__device__ PRECISION function_320(PRECISION Proteasome,PRECISION cytoplasm,PRECISION cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1,PRECISION kdeg){
    PRECISION y = 0.0;
    y=(cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1 * (cytoplasm * (Proteasome * kdeg)));
    return y;
}
__device__ PRECISION function_321(PRECISION Proteasome,PRECISION cytoplasm,PRECISION cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1,PRECISION kdeg){
    PRECISION y = 0.0;
    y=(cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1 * (cytoplasm * (Proteasome * kdeg)));
    return y;
}
__device__ PRECISION function_322(PRECISION Proteasome,PRECISION cytoplasm,PRECISION cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1,PRECISION kdeg){
    PRECISION y = 0.0;
    y=(cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1 * (cytoplasm * (Proteasome * kdeg)));
    return y;
}
__device__ PRECISION function_323(PRECISION Proteasome,PRECISION cytoplasm,PRECISION cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1,PRECISION kdeg){
    PRECISION y = 0.0;
    y=(cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1 * (cytoplasm * (Proteasome * kdeg)));
    return y;
}
__device__ PRECISION function_324(PRECISION Proteasome,PRECISION cytoplasm,PRECISION cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1,PRECISION kdeg){
    PRECISION y = 0.0;
    y=(cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1 * (cytoplasm * (Proteasome * kdeg)));
    return y;
}
__device__ PRECISION function_325(PRECISION Proteasome,PRECISION cytoplasm,PRECISION cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1,PRECISION kdeg){
    PRECISION y = 0.0;
    y=(cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1 * (cytoplasm * (Proteasome * kdeg)));
    return y;
}
__device__ PRECISION function_326(PRECISION dnabound,PRECISION dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0,PRECISION ktranscr){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0 * (dnabound * ktranscr));
    return y;
}
__device__ PRECISION function_327(PRECISION dnabound,PRECISION dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0,PRECISION ktranscr){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0 * (dnabound * ktranscr));
    return y;
}
__device__ PRECISION function_328(PRECISION dnabound,PRECISION dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1,PRECISION ktranscr){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1 * (dnabound * ktranscr));
    return y;
}
__device__ PRECISION function_329(PRECISION dnabound,PRECISION dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1,PRECISION ktranscr){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1 * (dnabound * ktranscr));
    return y;
}
__device__ PRECISION function_33(PRECISION NOX,PRECISION cytoplasm,PRECISION k35f){
    PRECISION y = 0.0;
    y=(k35f * NOX);
    return y;
}
__device__ PRECISION function_330(PRECISION dnabound,PRECISION dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0,PRECISION ktranscr){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0 * (dnabound * ktranscr));
    return y;
}
__device__ PRECISION function_331(PRECISION dnabound,PRECISION dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0,PRECISION ktranscr){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0 * (dnabound * ktranscr));
    return y;
}
__device__ PRECISION function_332(PRECISION dnabound,PRECISION dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1,PRECISION ktranscr){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1 * (dnabound * ktranscr));
    return y;
}
__device__ PRECISION function_333(PRECISION dnabound,PRECISION dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1,PRECISION ktranscr){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1 * (dnabound * ktranscr));
    return y;
}
__device__ PRECISION function_334(PRECISION dnabound,PRECISION dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0,PRECISION ktranscr){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0 * (dnabound * ktranscr));
    return y;
}
__device__ PRECISION function_335(PRECISION dnabound,PRECISION dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0,PRECISION ktranscr){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0 * (dnabound * ktranscr));
    return y;
}
__device__ PRECISION function_336(PRECISION dnabound,PRECISION dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1,PRECISION ktranscr){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1 * (dnabound * ktranscr));
    return y;
}
__device__ PRECISION function_337(PRECISION dnabound,PRECISION dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1,PRECISION ktranscr){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1 * (dnabound * ktranscr));
    return y;
}
__device__ PRECISION function_338(PRECISION dnabound,PRECISION dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0,PRECISION ktranscr){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0 * (dnabound * ktranscr));
    return y;
}
__device__ PRECISION function_339(PRECISION dnabound,PRECISION dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0,PRECISION ktranscr){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0 * (dnabound * ktranscr));
    return y;
}
__device__ PRECISION function_34(PRECISION ROS,PRECISION cytoplasm,PRECISION cytoplasm_SOD2,PRECISION k35r){
    PRECISION y = 0.0;
    y=(k35r * (ROS * (cytoplasm * cytoplasm_SOD2)));
    return y;
}
__device__ PRECISION function_340(PRECISION dnabound,PRECISION dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1,PRECISION ktranscr){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1 * (dnabound * ktranscr));
    return y;
}
__device__ PRECISION function_341(PRECISION dnabound,PRECISION dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1,PRECISION ktranscr){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1 * (dnabound * ktranscr));
    return y;
}
__device__ PRECISION function_342(PRECISION dnabound,PRECISION dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0,PRECISION ktranscr){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0 * (dnabound * ktranscr));
    return y;
}
__device__ PRECISION function_343(PRECISION dnabound,PRECISION dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0,PRECISION ktranscr){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0 * (dnabound * ktranscr));
    return y;
}
__device__ PRECISION function_344(PRECISION dnabound,PRECISION dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1,PRECISION ktranscr){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1 * (dnabound * ktranscr));
    return y;
}
__device__ PRECISION function_345(PRECISION dnabound,PRECISION dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1,PRECISION ktranscr){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1 * (dnabound * ktranscr));
    return y;
}
__device__ PRECISION function_346(PRECISION dnabound,PRECISION dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0,PRECISION ktranscr){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0 * (dnabound * ktranscr));
    return y;
}
__device__ PRECISION function_347(PRECISION dnabound,PRECISION dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0,PRECISION ktranscr){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0 * (dnabound * ktranscr));
    return y;
}
__device__ PRECISION function_348(PRECISION dnabound,PRECISION dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1,PRECISION ktranscr){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1 * (dnabound * ktranscr));
    return y;
}
__device__ PRECISION function_349(PRECISION dnabound,PRECISION dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1,PRECISION ktranscr){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1 * (dnabound * ktranscr));
    return y;
}
__device__ PRECISION function_35(PRECISION Mt,PRECISION cytoplasm,PRECISION k36f){
    PRECISION y = 0.0;
    y=(k36f * Mt);
    return y;
}
__device__ PRECISION function_350(PRECISION dnabound,PRECISION dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0,PRECISION ktranscr){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0 * (dnabound * ktranscr));
    return y;
}
__device__ PRECISION function_351(PRECISION dnabound,PRECISION dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0,PRECISION ktranscr){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0 * (dnabound * ktranscr));
    return y;
}
__device__ PRECISION function_352(PRECISION dnabound,PRECISION dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1,PRECISION ktranscr){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1 * (dnabound * ktranscr));
    return y;
}
__device__ PRECISION function_353(PRECISION dnabound,PRECISION dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1,PRECISION ktranscr){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1 * (dnabound * ktranscr));
    return y;
}
__device__ PRECISION function_354(PRECISION dnabound,PRECISION dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0,PRECISION ktranscr){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0 * (dnabound * ktranscr));
    return y;
}
__device__ PRECISION function_355(PRECISION dnabound,PRECISION dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0,PRECISION ktranscr){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0 * (dnabound * ktranscr));
    return y;
}
__device__ PRECISION function_356(PRECISION dnabound,PRECISION dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1,PRECISION ktranscr){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1 * (dnabound * ktranscr));
    return y;
}
__device__ PRECISION function_357(PRECISION dnabound,PRECISION dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1,PRECISION ktranscr){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1 * (dnabound * ktranscr));
    return y;
}
__device__ PRECISION function_359(PRECISION kexp,PRECISION nucleus,PRECISION nucleus_RNA_InR){
    PRECISION y = 0.0;
    y=(nucleus_RNA_InR * (nucleus * kexp));
    return y;
}
__device__ PRECISION function_36(PRECISION extracellular,PRECISION extracellular_ROS,PRECISION k_ros_perm){
    PRECISION y = 0.0;
    y=(k_ros_perm * (extracellular_ROS * extracellular));
    return y;
}
__device__ PRECISION function_360(PRECISION cytoplasm,PRECISION cytoplasm_RNA_InR,PRECISION kmdeg){
    PRECISION y = 0.0;
    y=(cytoplasm_RNA_InR * kmdeg);
    return y;
}
__device__ PRECISION function_361(PRECISION cytoplasm,PRECISION cytoplasm_RNA_InR,PRECISION ktransl){
    PRECISION y = 0.0;
    y=(cytoplasm_RNA_InR * ktransl);
    return y;
}
__device__ PRECISION function_362(PRECISION cytoplasm,PRECISION cytoplasm_InR,PRECISION kpdeg){
    PRECISION y = 0.0;
    y=(cytoplasm_InR * kpdeg);
    return y;
}
__device__ PRECISION function_363(PRECISION kexp,PRECISION nucleus,PRECISION nucleus_RNA_SOD2){
    PRECISION y = 0.0;
    y=(nucleus_RNA_SOD2 * (nucleus * kexp));
    return y;
}
__device__ PRECISION function_364(PRECISION cytoplasm,PRECISION cytoplasm_RNA_SOD2,PRECISION kmdeg){
    PRECISION y = 0.0;
    y=(cytoplasm_RNA_SOD2 * kmdeg);
    return y;
}
__device__ PRECISION function_365(PRECISION cytoplasm,PRECISION cytoplasm_RNA_SOD2,PRECISION ktransl){
    PRECISION y = 0.0;
    y=(cytoplasm_RNA_SOD2 * ktransl);
    return y;
}
__device__ PRECISION function_366(PRECISION cytoplasm,PRECISION cytoplasm_SOD2,PRECISION kpdeg){
    PRECISION y = 0.0;
    y=(cytoplasm_SOD2 * kpdeg);
    return y;
}
__device__ PRECISION function_37(PRECISION ROS,PRECISION cytoplasm,PRECISION extracellular,PRECISION k_ros_perm){
    PRECISION y = 0.0;
    y=(k_ros_perm * (extracellular * ROS));
    return y;
}
__device__ PRECISION function_38(PRECISION GSH,PRECISION ROS,PRECISION cytoplasm,PRECISION k38f){
    PRECISION y = 0.0;
    y=(k38f * (GSH * (cytoplasm * ROS)));
    return y;
}
__device__ PRECISION function_39(PRECISION GSSG,PRECISION cytoplasm,PRECISION k38r){
    PRECISION y = 0.0;
    y=(k38r * GSSG);
    return y;
}
__device__ PRECISION function_4(PRECISION Ins,PRECISION Ins_InR_P,PRECISION cellsurface,PRECISION extracellular,PRECISION k2){
    PRECISION y = 0.0;
    y=(k2 * (Ins * (extracellular * (Ins_InR_P * cellsurface))));
    return y;
}
__device__ PRECISION function_40(PRECISION IRS1,PRECISION IRp,PRECISION Ins_2_InR_P,PRECISION Ins_InR_P,PRECISION cellsurface,PRECISION cyto_vol,PRECISION cytoplasm,PRECISION k7){
    PRECISION y = 0.0;
    y=(cyto_vol * (k7 * (IRS1 * (cellsurface * ((Ins_2_InR_P + Ins_InR_P) / IRp)))));
    return y;
}
__device__ PRECISION function_41(PRECISION IRS1_TyrP,PRECISION PTP1B,PRECISION cyto_vol,PRECISION cytoplasm,PRECISION kminus7a){
    PRECISION y = 0.0;
    y=(cyto_vol * (kminus7a * (PTP1B * (cytoplasm * IRS1_TyrP))));
    return y;
}
__device__ PRECISION function_42(PRECISION IRS1,PRECISION PKC_P,PRECISION cyto_vol,PRECISION cytoplasm,PRECISION k2psp){
    PRECISION y = 0.0;
    y=(cyto_vol * (k2psp * (IRS1 * (cytoplasm * PKC_P))));
    return y;
}
__device__ PRECISION function_43(PRECISION IRS1_PolySerP,PRECISION PP2A,PRECISION cyto_vol,PRECISION cytoplasm,PRECISION kminus7b){
    PRECISION y = 0.0;
    y=(cyto_vol * (kminus7b * (PP2A * (cytoplasm * IRS1_PolySerP))));
    return y;
}
__device__ PRECISION function_44(PRECISION IRS1_TyrP,PRECISION PKC_P,PRECISION cyto_vol,PRECISION cytoplasm,PRECISION k2psp){
    PRECISION y = 0.0;
    y=(cyto_vol * (k2psp * (IRS1_TyrP * (cytoplasm * PKC_P))));
    return y;
}
__device__ PRECISION function_45(PRECISION IRS1_TyrP_PolySerP,PRECISION PP2A,PRECISION cyto_vol,PRECISION cytoplasm,PRECISION kminus7b){
    PRECISION y = 0.0;
    y=(cyto_vol * (kminus7b * (PP2A * (cytoplasm * IRS1_TyrP_PolySerP))));
    return y;
}
__device__ PRECISION function_46(PRECISION IRS1_TyrP,PRECISION PI3K,PRECISION cyto_vol,PRECISION cytoplasm,PRECISION k8){
    PRECISION y = 0.0;
    y=(cyto_vol * (k8 * (IRS1_TyrP * (cytoplasm * PI3K))));
    return y;
}
__device__ PRECISION function_47(PRECISION IRS1_TyrP_PI3K,PRECISION cyto_vol,PRECISION cytoplasm,PRECISION kminus8){
    PRECISION y = 0.0;
    y=(cyto_vol * (kminus8 * IRS1_TyrP_PI3K));
    return y;
}
__device__ PRECISION function_49(PRECISION IRS1,PRECISION cytoplasm,PRECISION k_irs1_basal_degr){
    PRECISION y = 0.0;
    y=(IRS1 * k_irs1_basal_degr);
    return y;
}
__device__ PRECISION function_5(PRECISION Ins_2_InR_P,PRECISION cellsurface,PRECISION kminus2){
    PRECISION y = 0.0;
    y=(kminus2 * (Ins_2_InR_P * cellsurface));
    return y;
}
__device__ PRECISION function_50(PRECISION IRS1_TyrP,PRECISION cytoplasm,PRECISION k_irs1_basal_degr){
    PRECISION y = 0.0;
    y=(IRS1_TyrP * k_irs1_basal_degr);
    return y;
}
__device__ PRECISION function_51(PRECISION IRS1_PolySerP,PRECISION cytoplasm,PRECISION k_irs1_polyserp_degr){
    PRECISION y = 0.0;
    y=(IRS1_PolySerP * k_irs1_polyserp_degr);
    return y;
}
__device__ PRECISION function_52(PRECISION IRS1_TyrP_PolySerP,PRECISION cytoplasm,PRECISION k_irs1_polyserp_degr){
    PRECISION y = 0.0;
    y=(IRS1_TyrP_PolySerP * k_irs1_polyserp_degr);
    return y;
}
__device__ PRECISION function_53(PRECISION IKK_P,PRECISION IRS1,PRECISION Km51,PRECISION cytoplasm,PRECISION kcat51){
    PRECISION y = 0.0;
    y=(kcat51 * (IRS1 * (cytoplasm * (IKK_P / (Km51 + (IRS1 * cytoplasm))))));
    return y;
}
__device__ PRECISION function_54(PRECISION IRS1,PRECISION JNK_P,PRECISION Km52,PRECISION cytoplasm,PRECISION kcat52){
    PRECISION y = 0.0;
    y=(kcat52 * (IRS1 * (cytoplasm * (JNK_P / (Km52 + (IRS1 * cytoplasm))))));
    return y;
}
__device__ PRECISION function_55(PRECISION JNK,PRECISION ROS,PRECISION alpha_ox,PRECISION cytoplasm,PRECISION k42f){
    PRECISION y = 0.0;
    y=(k42f * (alpha_ox * (JNK * (cytoplasm * ROS))));
    return y;
}
__device__ PRECISION function_56(PRECISION DUSP,PRECISION JNK_P,PRECISION cytoplasm,PRECISION k42r){
    PRECISION y = 0.0;
    y=(k42r * (JNK_P * (cytoplasm * DUSP)));
    return y;
}
__device__ PRECISION function_57(PRECISION IKK,PRECISION ROS,PRECISION cytoplasm,PRECISION k43f){
    PRECISION y = 0.0;
    y=(k43f * (IKK * (cytoplasm * ROS)));
    return y;
}
__device__ PRECISION function_58(PRECISION DUSP,PRECISION IKK_P,PRECISION cytoplasm,PRECISION k43r){
    PRECISION y = 0.0;
    y=(k43r * (IKK_P * (cytoplasm * DUSP)));
    return y;
}
__device__ PRECISION function_59(PRECISION DUSP,PRECISION ROS,PRECISION cytoplasm,PRECISION k32f){
    PRECISION y = 0.0;
    y=(k32f * (DUSP * (cytoplasm * ROS)));
    return y;
}
__device__ PRECISION function_6(PRECISION Ins_InR_P,PRECISION PTP1B,PRECISION cellsurface,PRECISION cytoplasm,PRECISION kminus3){
    PRECISION y = 0.0;
    y=(kminus3 * (PTP1B * (cytoplasm * Ins_InR_P)));
    return y;
}
__device__ PRECISION function_60(PRECISION DUSP_ox,PRECISION GSH,PRECISION cytoplasm,PRECISION k32r){
    PRECISION y = 0.0;
    y=(k32r * (DUSP_ox * (cytoplasm * GSH)));
    return y;
}
__device__ PRECISION function_61(PRECISION E2F1,PRECISION cytoplasm,PRECISION ksynth){
    PRECISION y = 0.0;
    y=(E2F1 * ksynth);
    return y;
}
__device__ PRECISION function_62(PRECISION cytoplasm,PRECISION cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0,PRECISION ktr){
    PRECISION y = 0.0;
    y=(cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0 * (cytoplasm * ktr));
    return y;
}
__device__ PRECISION function_63(PRECISION ktr,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0 * (nucleus * ktr));
    return y;
}
__device__ PRECISION function_64(PRECISION ktr,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0 * (nucleus * ktr));
    return y;
}
__device__ PRECISION function_65(PRECISION dnabound,PRECISION dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0,PRECISION ktr){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0 * (dnabound * ktr));
    return y;
}
__device__ PRECISION function_66(PRECISION cytoplasm,PRECISION cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1,PRECISION ktr){
    PRECISION y = 0.0;
    y=(cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1 * (cytoplasm * ktr));
    return y;
}
__device__ PRECISION function_67(PRECISION ktr,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1 * (nucleus * ktr));
    return y;
}
__device__ PRECISION function_68(PRECISION ktr,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1 * (nucleus * ktr));
    return y;
}
__device__ PRECISION function_69(PRECISION dnabound,PRECISION dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1,PRECISION ktr){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1 * (dnabound * ktr));
    return y;
}
__device__ PRECISION function_7(PRECISION InR,PRECISION cellsurface,PRECISION k4){
    PRECISION y = 0.0;
    y=(k4 * (InR * cellsurface));
    return y;
}
__device__ PRECISION function_70(PRECISION cytoplasm,PRECISION cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0,PRECISION ktr){
    PRECISION y = 0.0;
    y=(cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0 * (cytoplasm * ktr));
    return y;
}
__device__ PRECISION function_71(PRECISION ktr,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0 * (nucleus * ktr));
    return y;
}
__device__ PRECISION function_72(PRECISION ktr,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0 * (nucleus * ktr));
    return y;
}
__device__ PRECISION function_73(PRECISION dnabound,PRECISION dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0,PRECISION ktr){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0 * (dnabound * ktr));
    return y;
}
__device__ PRECISION function_74(PRECISION cytoplasm,PRECISION cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1,PRECISION ktr){
    PRECISION y = 0.0;
    y=(cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1 * (cytoplasm * ktr));
    return y;
}
__device__ PRECISION function_75(PRECISION ktr,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1 * (nucleus * ktr));
    return y;
}
__device__ PRECISION function_76(PRECISION ktr,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1 * (nucleus * ktr));
    return y;
}
__device__ PRECISION function_77(PRECISION dnabound,PRECISION dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1,PRECISION ktr){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1 * (dnabound * ktr));
    return y;
}
__device__ PRECISION function_78(PRECISION cytoplasm,PRECISION cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0,PRECISION ktr){
    PRECISION y = 0.0;
    y=(cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0 * (cytoplasm * ktr));
    return y;
}
__device__ PRECISION function_79(PRECISION ktr,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0 * (nucleus * ktr));
    return y;
}
__device__ PRECISION function_8(PRECISION cytoplasm,PRECISION cytoplasm_InR,PRECISION kminus4){
    PRECISION y = 0.0;
    y=(kminus4 * (cytoplasm_InR * cytoplasm));
    return y;
}
__device__ PRECISION function_80(PRECISION ktr,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0 * (nucleus * ktr));
    return y;
}
__device__ PRECISION function_81(PRECISION dnabound,PRECISION dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0,PRECISION ktr){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0 * (dnabound * ktr));
    return y;
}
__device__ PRECISION function_82(PRECISION cytoplasm,PRECISION cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1,PRECISION ktr){
    PRECISION y = 0.0;
    y=(cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1 * (cytoplasm * ktr));
    return y;
}
__device__ PRECISION function_83(PRECISION ktr,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1 * (nucleus * ktr));
    return y;
}
__device__ PRECISION function_84(PRECISION ktr,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1 * (nucleus * ktr));
    return y;
}
__device__ PRECISION function_85(PRECISION dnabound,PRECISION dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1,PRECISION ktr){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1 * (dnabound * ktr));
    return y;
}
__device__ PRECISION function_86(PRECISION cytoplasm,PRECISION cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0,PRECISION ktr){
    PRECISION y = 0.0;
    y=(cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0 * (cytoplasm * ktr));
    return y;
}
__device__ PRECISION function_87(PRECISION ktr,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0 * (nucleus * ktr));
    return y;
}
__device__ PRECISION function_88(PRECISION ktr,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0 * (nucleus * ktr));
    return y;
}
__device__ PRECISION function_89(PRECISION dnabound,PRECISION dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0,PRECISION ktr){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0 * (dnabound * ktr));
    return y;
}
__device__ PRECISION function_9(PRECISION Ins_2_InR_P,PRECISION cellsurface,PRECISION k4prime){
    PRECISION y = 0.0;
    y=(k4prime * (Ins_2_InR_P * cellsurface));
    return y;
}
__device__ PRECISION function_90(PRECISION cytoplasm,PRECISION cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1,PRECISION ktr){
    PRECISION y = 0.0;
    y=(cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1 * (cytoplasm * ktr));
    return y;
}
__device__ PRECISION function_91(PRECISION ktr,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1 * (nucleus * ktr));
    return y;
}
__device__ PRECISION function_92(PRECISION ktr,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1 * (nucleus * ktr));
    return y;
}
__device__ PRECISION function_93(PRECISION dnabound,PRECISION dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1,PRECISION ktr){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1 * (dnabound * ktr));
    return y;
}
__device__ PRECISION function_94(PRECISION cytoplasm,PRECISION cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0,PRECISION ktr){
    PRECISION y = 0.0;
    y=(cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0 * (cytoplasm * ktr));
    return y;
}
__device__ PRECISION function_95(PRECISION ktr,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0 * (nucleus * ktr));
    return y;
}
__device__ PRECISION function_96(PRECISION ktr,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0 * (nucleus * ktr));
    return y;
}
__device__ PRECISION function_97(PRECISION dnabound,PRECISION dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0,PRECISION ktr){
    PRECISION y = 0.0;
    y=(dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0 * (dnabound * ktr));
    return y;
}
__device__ PRECISION function_98(PRECISION cytoplasm,PRECISION cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1,PRECISION ktr){
    PRECISION y = 0.0;
    y=(cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1 * (cytoplasm * ktr));
    return y;
}
__device__ PRECISION function_99(PRECISION ktr,PRECISION nucleus,PRECISION nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1){
    PRECISION y = 0.0;
    y=(nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1 * (nucleus * ktr));
    return y;
}

#endif
