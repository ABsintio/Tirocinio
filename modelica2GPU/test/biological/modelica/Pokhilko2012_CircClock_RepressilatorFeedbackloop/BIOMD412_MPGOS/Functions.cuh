
#ifndef BIOMD412_FUNCTIONS_H
#define BIOMD412_FUNCTIONS_H

#include <iostream>

#define PRECISION double

__device__ PRECISION function_4_cCOP1n_import(PRECISION cCOP1c,PRECISION def,PRECISION p6){
    PRECISION y = 0.0;
    y=(p6 * (cCOP1c / def));
    return y;
}
__device__ PRECISION function_4_cE3_degr(PRECISION cCOP1c,PRECISION cE3,PRECISION def,PRECISION m9){
    PRECISION y = 0.0;
    y=(m9 * (cE3 * (cCOP1c / def)));
    return y;
}
__device__ PRECISION function_4_cE3_m_degr(PRECISION cE3_m,PRECISION def,PRECISION m26){
    PRECISION y = 0.0;
    y=(m26 * (cE3_m / def));
    return y;
}
__device__ PRECISION function_4_cE3_m_trscr(PRECISION cL,PRECISION def,PRECISION e,PRECISION g16,PRECISION n3){
    PRECISION y = 0.0;
    y=(n3 * (pow(g16,e) / (def * (pow(cL,e) + pow(g16,e)))));
    return y;
}
__device__ PRECISION function_4_cE3_trsl(PRECISION cE3_m,PRECISION def,PRECISION p16){
    PRECISION y = 0.0;
    y=(p16 * (cE3_m / def));
    return y;
}
__device__ PRECISION function_4_cE3n_degr(PRECISION cCOP1d,PRECISION cCOP1n,PRECISION cE3n,PRECISION cE4,PRECISION cG,PRECISION cLUX,PRECISION def,PRECISION m19,PRECISION m29,PRECISION m30,PRECISION m36,PRECISION m37,PRECISION p17,PRECISION p21,PRECISION p25,PRECISION p26,PRECISION p28,PRECISION p29){
    PRECISION y = 0.0;
    y=(((cE3n * ((m29 * cCOP1n) + (m30 * cCOP1d))) + ((p25 * (cE4 * cE3n)) + ((p17 * (cE3n * (p28 * (cG / (p29 + (m19 + (p17 * cE3n))))))) - (p21 * (p25 * (cE4 * (cE3n / ((p26 * cLUX) + (p21 + ((m37 * cCOP1d) + (m36 * cCOP1n))))))))))) / def);
    return y;
}
__device__ PRECISION function_4_cE3n_import(PRECISION cE3,PRECISION cE3n,PRECISION def,PRECISION p19,PRECISION p20){
    PRECISION y = 0.0;
    y=(((p19 * cE3) - (p20 * cE3n)) / def);
    return y;
}
__device__ PRECISION function_4_cE4_degr(PRECISION cCOP1d,PRECISION cCOP1n,PRECISION cE3n,PRECISION cE4,PRECISION cLUX,PRECISION def,PRECISION m35,PRECISION m36,PRECISION m37,PRECISION p21,PRECISION p25,PRECISION p26){
    PRECISION y = 0.0;
    y=(((cE4 * (m35 + (p25 * cE3n))) - (p21 * (p25 * (cE4 * (cE3n / ((p26 * cLUX) + (p21 + ((m37 * cCOP1d) + (m36 * cCOP1n))))))))) / def);
    return y;
}
__device__ PRECISION function_4_cE4_m_degr(PRECISION cE4_m,PRECISION def,PRECISION m34){
    PRECISION y = 0.0;
    y=(m34 * (cE4_m / def));
    return y;
}
__device__ PRECISION function_4_cE4_m_trscr_1(PRECISION cEC,PRECISION cL,PRECISION def,PRECISION e,PRECISION g2,PRECISION g6,PRECISION n13){
    PRECISION y = 0.0;
    y=(n13 * (g2 * (pow(g6,e) / ((def * (cEC + g2)) * (pow(cL,e) + pow(g6,e))))));
    return y;
}
__device__ PRECISION function_4_cE4_trsl(PRECISION cE4_m,PRECISION def,PRECISION p23){
    PRECISION y = 0.0;
    y=(p23 * (cE4_m / def));
    return y;
}
__device__ PRECISION function_4_cEC_form(PRECISION cCOP1d,PRECISION cCOP1n,PRECISION cE3n,PRECISION cE4,PRECISION cLUX,PRECISION def,PRECISION m36,PRECISION m37,PRECISION p21,PRECISION p25,PRECISION p26){
    PRECISION y = 0.0;
    y=(p26 * (cLUX * (p25 * (cE4 * (cE3n / (def * ((p26 * cLUX) + (p21 + ((m37 * cCOP1d) + (m36 * cCOP1n))))))))));
    return y;
}
__device__ PRECISION function_4_cEG_degr(PRECISION cCOP1c,PRECISION cCOP1d,PRECISION cCOP1n,PRECISION cE3n,PRECISION cEG,PRECISION cG,PRECISION def,PRECISION m10,PRECISION m19,PRECISION m9,PRECISION p17,PRECISION p18,PRECISION p28,PRECISION p29,PRECISION p31){
    PRECISION y = 0.0;
    y=(((cEG * ((m9 * cCOP1c) + p18)) - (p31 * (((p18 * cEG) + (p17 * (cE3n * (p28 * (cG / (p29 + (m19 + (p17 * cE3n)))))))) / ((m9 * cCOP1n) + ((m10 * cCOP1d) + p31))))) / def);
    return y;
}
__device__ PRECISION function_4_cG_cE3_assoc(PRECISION cE3,PRECISION cG,PRECISION def,PRECISION p17){
    PRECISION y = 0.0;
    y=(p17 * (cE3 * (cG / def)));
    return y;
}
__device__ PRECISION function_4_cG_degr(PRECISION cE3n,PRECISION cG,PRECISION def,PRECISION m19,PRECISION p17,PRECISION p28,PRECISION p29){
    PRECISION y = 0.0;
    y=(((cG * (m19 + p28)) - (p29 * (p28 * (cG / (p29 + (m19 + (p17 * cE3n))))))) / def);
    return y;
}
__device__ PRECISION function_4_cG_m_degr(PRECISION cG_m,PRECISION def,PRECISION m18){
    PRECISION y = 0.0;
    y=(m18 * (cG_m / def));
    return y;
}
__device__ PRECISION function_4_cG_trsl(PRECISION cG_m,PRECISION def,PRECISION p11){
    PRECISION y = 0.0;
    y=(p11 * (cG_m / def));
    return y;
}
__device__ PRECISION function_4_cLUX_degr(PRECISION cCOP1d,PRECISION cCOP1n,PRECISION cE3n,PRECISION cE4,PRECISION cLUX,PRECISION def,PRECISION m36,PRECISION m37,PRECISION m39,PRECISION p21,PRECISION p25,PRECISION p26){
    PRECISION y = 0.0;
    y=(cLUX * ((m39 + (p26 * (p25 * (cE4 * (cE3n / ((p26 * cLUX) + (p21 + ((m37 * cCOP1d) + (m36 * cCOP1n))))))))) / def));
    return y;
}
__device__ PRECISION function_4_cLUX_m_degr(PRECISION cLUX_m,PRECISION def,PRECISION m34){
    PRECISION y = 0.0;
    y=(m34 * (cLUX_m / def));
    return y;
}
__device__ PRECISION function_4_cLUX_m_trscr(PRECISION cEC,PRECISION cL,PRECISION def,PRECISION e,PRECISION g2,PRECISION g6,PRECISION n13){
    PRECISION y = 0.0;
    y=(n13 * (g2 * (pow(g6,e) / ((def * (cEC + g2)) * (pow(cL,e) + pow(g6,e))))));
    return y;
}
__device__ PRECISION function_4_cLUX_trsl(PRECISION cLUX_m,PRECISION def,PRECISION p27){
    PRECISION y = 0.0;
    y=(p27 * (cLUX_m / def));
    return y;
}
__device__ PRECISION function_4_cL_degr(PRECISION c,PRECISION cL,PRECISION def,PRECISION g3,PRECISION m3,PRECISION p3){
    PRECISION y = 0.0;
    y=(((m3 * cL) + (p3 * (pow(cL,c) / (pow(cL,c) + pow(g3,c))))) / def);
    return y;
}
__device__ PRECISION function_4_cL_modif(PRECISION c,PRECISION cL,PRECISION def,PRECISION g3,PRECISION p3){
    PRECISION y = 0.0;
    y=(p3 * (pow(cL,c) / (def * (pow(cL,c) + pow(g3,c)))));
    return y;
}
__device__ PRECISION function_4_cLm_degr(PRECISION cLm,PRECISION def,PRECISION m4){
    PRECISION y = 0.0;
    y=(m4 * (cLm / def));
    return y;
}
__device__ PRECISION function_4_cNI_m_degr(PRECISION cNI_m,PRECISION def,PRECISION m16){
    PRECISION y = 0.0;
    y=(m16 * (cNI_m / def));
    return y;
}
__device__ PRECISION function_4_cNI_m_trscr(PRECISION b,PRECISION cLm,PRECISION cP7,PRECISION def,PRECISION e,PRECISION g12,PRECISION g13,PRECISION n10,PRECISION n11){
    PRECISION y = 0.0;
    y=(((n10 * (pow(cLm,e) / (pow(cLm,e) + pow(g12,e)))) + (n11 * (pow(cP7,b) / (pow(cP7,b) + pow(g13,b))))) / def);
    return y;
}
__device__ PRECISION function_4_cNI_trsl(PRECISION cNI_m,PRECISION def,PRECISION p10){
    PRECISION y = 0.0;
    y=(p10 * (cNI_m / def));
    return y;
}
__device__ PRECISION function_4_cP7_m_degr(PRECISION cP7_m,PRECISION def,PRECISION m14){
    PRECISION y = 0.0;
    y=(m14 * (cP7_m / def));
    return y;
}
__device__ PRECISION function_4_cP7_m_trscr(PRECISION cL,PRECISION cLm,PRECISION cP9,PRECISION def,PRECISION e,PRECISION f,PRECISION g10,PRECISION g11,PRECISION n8,PRECISION n9){
    PRECISION y = 0.0;
    y=(((n8 * (pow((cLm + cL),e) / (pow((cLm + cL),e) + pow(g10,e)))) + (n9 * (pow(cP9,f) / (pow(cP9,f) + pow(g11,f))))) / def);
    return y;
}
__device__ PRECISION function_4_cP7_trsl(PRECISION cP7_m,PRECISION def,PRECISION p9){
    PRECISION y = 0.0;
    y=(p9 * (cP7_m / def));
    return y;
}
__device__ PRECISION function_4_cP9_m_degr(PRECISION cP9_m,PRECISION def,PRECISION m12){
    PRECISION y = 0.0;
    y=(m12 * (cP9_m / def));
    return y;
}
__device__ PRECISION function_4_cP9_trsl(PRECISION cP9_m,PRECISION def,PRECISION p8){
    PRECISION y = 0.0;
    y=(p8 * (cP9_m / def));
    return y;
}
__device__ PRECISION function_4_cT_m_degr(PRECISION cT_m,PRECISION def,PRECISION m5){
    PRECISION y = 0.0;
    y=(m5 * (cT_m / def));
    return y;
}
__device__ PRECISION function_4_cT_m_trscr_1(PRECISION cEC,PRECISION cL,PRECISION def,PRECISION e,PRECISION g4,PRECISION g5,PRECISION n2){
    PRECISION y = 0.0;
    y=(n2 * (g4 * (pow(g5,e) / ((def * (cEC + g4)) * (pow(cL,e) + pow(g5,e))))));
    return y;
}
__device__ PRECISION function_4_cT_trsl(PRECISION cT_m,PRECISION def,PRECISION p4){
    PRECISION y = 0.0;
    y=(p4 * (cT_m / def));
    return y;
}
__device__ PRECISION function_4_cZG_degr(PRECISION cZG,PRECISION def,PRECISION m21){
    PRECISION y = 0.0;
    y=(m21 * (cZG / def));
    return y;
}
__device__ PRECISION function_4_cZTL_degr(PRECISION cZTL,PRECISION def,PRECISION m20){
    PRECISION y = 0.0;
    y=(m20 * (cZTL / def));
    return y;
}
__device__ PRECISION lightfun(PRECISION t,PRECISION lightOffset,PRECISION lightAmplitude,PRECISION cyclePeriod,PRECISION photoPeriod,PRECISION phase,PRECISION twilightPeriod){
    PRECISION y = 0.0;
    y=(lightOffset + ((lightAmplitude * ((0.5 * (1.0 + tanh((cyclePeriod * ((((t + phase) / cyclePeriod) - floor((floor((t + phase)) / cyclePeriod))) / twilightPeriod))))) + (-0.5 * (1.0 + tanh((((cyclePeriod * (((t + phase) / cyclePeriod) - floor((floor((t + phase)) / cyclePeriod)))) - photoPeriod) / twilightPeriod)))))) + (0.5 * (lightAmplitude * (1.0 + tanh((((cyclePeriod * (((t + phase) / cyclePeriod) - floor((floor((t + phase)) / cyclePeriod)))) - cyclePeriod) / twilightPeriod)))))));
    return y;
}
__device__ PRECISION pow(PRECISION x,PRECISION power){
    PRECISION y = 0.0;
    y=pow(x,power);
    return y;
}

#endif
