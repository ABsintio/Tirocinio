
#ifndef BIOMD445_FUNCTIONS_H
#define BIOMD445_FUNCTIONS_H

#include <iostream>

#define PRECISION double

__device__ PRECISION function_4_cABAR_m_degr(PRECISION def,PRECISION m37,PRECISION species_1){
    PRECISION y = 0.0;
    y=(m37 * (species_1 / def));
    return y;
}
__device__ PRECISION function_4_cABAR_m_trscr_1(PRECISION cL,PRECISION cT,PRECISION def,PRECISION e,PRECISION parameter_13,PRECISION parameter_17,PRECISION parameter_24,PRECISION parameter_7){
    PRECISION y = 0.0;
    y=(pow(parameter_13,parameter_7) * (parameter_24 * (pow(cL,e) / ((def * (pow(parameter_13,parameter_7) + pow(cT,parameter_7))) * (pow(cL,e) + pow(parameter_17,e))))));
    return y;
}
__device__ PRECISION function_4_cCOP1c_degr(PRECISION L,PRECISION cCOP1c,PRECISION m27,PRECISION p15){
    PRECISION y = 0.0;
    y=(m27 * (cCOP1c * (1.0 + (p15 * L))));
    return y;
}
__device__ PRECISION function_4_cCOP1d_activ(PRECISION L,PRECISION cCOP1n,PRECISION cP,PRECISION n14,PRECISION n6){
    PRECISION y = 0.0;
    y=((n6 * (L * (cP * cCOP1n))) + (n14 * cCOP1n));
    return y;
}
__device__ PRECISION function_4_cCOP1d_degr(PRECISION L,PRECISION cCOP1d,PRECISION m31,PRECISION m33){
    PRECISION y = 0.0;
    y=(m31 * ((1.0 + (m33 * (1.0 - L))) * cCOP1d));
    return y;
}
__device__ PRECISION function_4_cCOP1n_degr(PRECISION L,PRECISION cCOP1n,PRECISION m27,PRECISION p15){
    PRECISION y = 0.0;
    y=(m27 * (cCOP1n * (1.0 + (p15 * L))));
    return y;
}
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
__device__ PRECISION function_4_cE3n_degr(PRECISION cCOP1d,PRECISION cCOP1n,PRECISION cE3n,PRECISION cE4,PRECISION cG,PRECISION cLUX,PRECISION def,PRECISION m10,PRECISION m19,PRECISION m9,PRECISION p17,PRECISION p21,PRECISION p25,PRECISION p26,PRECISION p28,PRECISION p29){
    PRECISION y = 0.0;
    y=(((cE3n * ((m10 * cCOP1n) + (m9 * cCOP1d))) + ((p25 * (cE4 * cE3n)) + ((p17 * (cE3n * (p28 * (cG / (p29 + (m19 + (p17 * cE3n))))))) - (p21 * (p25 * (cE4 * (cE3n / ((p26 * cLUX) + (p21 + ((m9 * cCOP1d) + (m10 * cCOP1n))))))))))) / def);
    return y;
}
__device__ PRECISION function_4_cE3n_import(PRECISION cE3,PRECISION cE3n,PRECISION def,PRECISION p19,PRECISION p20){
    PRECISION y = 0.0;
    y=(((p19 * cE3) - (p20 * cE3n)) / def);
    return y;
}
__device__ PRECISION function_4_cE4_degr(PRECISION cCOP1d,PRECISION cCOP1n,PRECISION cE3n,PRECISION cE4,PRECISION cLUX,PRECISION def,PRECISION m10,PRECISION m35,PRECISION m9,PRECISION p21,PRECISION p25,PRECISION p26){
    PRECISION y = 0.0;
    y=(((cE4 * (m35 + (p25 * cE3n))) - (p21 * (p25 * (cE4 * (cE3n / ((p26 * cLUX) + (p21 + ((m9 * cCOP1d) + (m10 * cCOP1n))))))))) / def);
    return y;
}
__device__ PRECISION function_4_cE4_m_degr(PRECISION cE4_m,PRECISION def,PRECISION m34){
    PRECISION y = 0.0;
    y=(m34 * (cE4_m / def));
    return y;
}
__device__ PRECISION function_4_cE4_m_trscr_1(PRECISION cEC,PRECISION cL,PRECISION cT,PRECISION def,PRECISION e,PRECISION g6,PRECISION parameter_4,PRECISION parameter_5,PRECISION parameter_7,PRECISION parameter_8){
    PRECISION y = 0.0;
    y=(pow(parameter_5,parameter_7) * (parameter_8 * (parameter_4 * (pow(g6,e) / (((def * (pow(parameter_5,parameter_7) + pow(cT,parameter_7))) * (pow(cL,e) + pow(g6,e))) * (cEC + parameter_4))))));
    return y;
}
__device__ PRECISION function_4_cE4_trsl(PRECISION cE4_m,PRECISION def,PRECISION p23){
    PRECISION y = 0.0;
    y=(p23 * (cE4_m / def));
    return y;
}
__device__ PRECISION function_4_cEC_degr(PRECISION L,PRECISION cCOP1d,PRECISION cCOP1n,PRECISION cE3n,PRECISION cEC,PRECISION cEG,PRECISION cG,PRECISION d,PRECISION g7,PRECISION m10,PRECISION m19,PRECISION m32,PRECISION m9,PRECISION p17,PRECISION p18,PRECISION p24,PRECISION p28,PRECISION p29,PRECISION parameter_26){
    PRECISION y = 0.0;
    y=((m10 * (cCOP1n * cEC)) + ((m9 * (cCOP1d * cEC)) + (m32 * (cEC * (1.0 + (p24 * (L * (pow(((p28 * (cG / (p29 + (m19 + (p17 * cE3n))))) + (((p18 * cEG) + (p17 * (cE3n * (p28 * (cG / (p29 + (m19 + (p17 * cE3n)))))))) / ((m10 * cCOP1n) + ((m9 * cCOP1d) + parameter_26)))),d) / (pow(((p28 * (cG / (p29 + (m19 + (p17 * cE3n))))) + (((p18 * cEG) + (p17 * (cE3n * (p28 * (cG / (p29 + (m19 + (p17 * cE3n)))))))) / ((m10 * cCOP1n) + ((m9 * cCOP1d) + parameter_26)))),d) + pow(g7,d))))))))));
    return y;
}
__device__ PRECISION function_4_cEC_form(PRECISION cCOP1d,PRECISION cCOP1n,PRECISION cE3n,PRECISION cE4,PRECISION cLUX,PRECISION def,PRECISION m10,PRECISION m9,PRECISION p21,PRECISION p25,PRECISION p26){
    PRECISION y = 0.0;
    y=(p26 * (cLUX * (p25 * (cE4 * (cE3n / (def * ((p26 * cLUX) + (p21 + ((m9 * cCOP1d) + (m10 * cCOP1n))))))))));
    return y;
}
__device__ PRECISION function_4_cEG_degr_1(PRECISION cCOP1c,PRECISION cCOP1d,PRECISION cCOP1n,PRECISION cE3n,PRECISION cEG,PRECISION cG,PRECISION def,PRECISION m10,PRECISION m19,PRECISION m9,PRECISION p17,PRECISION p18,PRECISION p28,PRECISION p29,PRECISION parameter_26){
    PRECISION y = 0.0;
    y=(((cEG * ((m10 * cCOP1c) + p18)) - (parameter_26 * (((p18 * cEG) + (p17 * (cE3n * (p28 * (cG / (p29 + (m19 + (p17 * cE3n)))))))) / ((m10 * cCOP1n) + ((m9 * cCOP1d) + parameter_26))))) / def);
    return y;
}
__device__ PRECISION function_4_cG_cE3_assoc(PRECISION cE3,PRECISION cG,PRECISION def,PRECISION p17){
    PRECISION y = 0.0;
    y=(p17 * (cE3 * (cG / def)));
    return y;
}
__device__ PRECISION function_4_cG_cZTL_assoc(PRECISION L,PRECISION cG,PRECISION cZG,PRECISION cZTL,PRECISION p12,PRECISION p13){
    PRECISION y = 0.0;
    y=((p12 * (L * (cZTL * cG))) - (p13 * ((1.0 - L) * cZG)));
    return y;
}
__device__ PRECISION function_4_cG_degr_1(PRECISION cE3n,PRECISION cG,PRECISION def,PRECISION m19,PRECISION p17,PRECISION p28,PRECISION p29){
    PRECISION y = 0.0;
    y=(((cG * (m19 + p28)) - (p29 * (p28 * (cG / (p29 + (m19 + (p17 * cE3n))))))) / def);
    return y;
}
__device__ PRECISION function_4_cG_m_degr(PRECISION cG_m,PRECISION def,PRECISION m18){
    PRECISION y = 0.0;
    y=(m18 * (cG_m / def));
    return y;
}
__device__ PRECISION function_4_cG_m_trscr_1(PRECISION L,PRECISION cEC,PRECISION cL,PRECISION cP,PRECISION cT,PRECISION e,PRECISION g14,PRECISION g15,PRECISION n12,PRECISION parameter_1,PRECISION parameter_7,PRECISION q2){
    PRECISION y = 0.0;
    y=(pow(parameter_1,parameter_7) * (((L * (q2 * cP)) + (n12 * (g14 * (pow(g15,e) / ((pow(cL,e) + pow(g15,e)) * (cEC + g14)))))) / (pow(parameter_1,parameter_7) + pow(cT,parameter_7))));
    return y;
}
__device__ PRECISION function_4_cG_trsl(PRECISION cG_m,PRECISION def,PRECISION p11){
    PRECISION y = 0.0;
    y=(p11 * (cG_m / def));
    return y;
}
__device__ PRECISION function_4_cLUX_degr_1(PRECISION cCOP1d,PRECISION cCOP1n,PRECISION cE3n,PRECISION cE4,PRECISION cLUX,PRECISION def,PRECISION m10,PRECISION m36,PRECISION m9,PRECISION p21,PRECISION p25,PRECISION p26){
    PRECISION y = 0.0;
    y=(cLUX * ((m36 + (p26 * (p25 * (cE4 * (cE3n / ((p26 * cLUX) + (p21 + ((m9 * cCOP1d) + (m10 * cCOP1n))))))))) / def));
    return y;
}
__device__ PRECISION function_4_cLUX_m_degr(PRECISION cLUX_m,PRECISION def,PRECISION m34){
    PRECISION y = 0.0;
    y=(m34 * (cLUX_m / def));
    return y;
}
__device__ PRECISION function_4_cLUX_m_trscr(PRECISION cEC,PRECISION cL,PRECISION cT,PRECISION def,PRECISION e,PRECISION g2,PRECISION g6,PRECISION n13,PRECISION parameter_3,PRECISION parameter_7){
    PRECISION y = 0.0;
    y=(pow(parameter_3,parameter_7) * (n13 * (g2 * (pow(g6,e) / (((def * (pow(parameter_3,parameter_7) + pow(cT,parameter_7))) * (pow(cL,e) + pow(g6,e))) * (cEC + g2))))));
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
__device__ PRECISION function_4_cL_m_degr(PRECISION L,PRECISION cL_m,PRECISION m1,PRECISION m2){
    PRECISION y = 0.0;
    y=((m2 + ((m1 - m2) * L)) * cL_m);
    return y;
}
__device__ PRECISION function_4_cL_m_trscr(PRECISION L,PRECISION a,PRECISION cNI,PRECISION cP,PRECISION cP7,PRECISION cP9,PRECISION cT,PRECISION g1,PRECISION n1,PRECISION q1){
    PRECISION y = 0.0;
    y=((L * (q1 * cP)) + (n1 * (pow(g1,a) / (pow((cP9 + (cP7 + (cNI + cT))),a) + pow(g1,a)))));
    return y;
}
__device__ PRECISION function_4_cL_modif(PRECISION c,PRECISION cL,PRECISION def,PRECISION g3,PRECISION p3){
    PRECISION y = 0.0;
    y=(p3 * (pow(cL,c) / (def * (pow(cL,c) + pow(g3,c)))));
    return y;
}
__device__ PRECISION function_4_cL_trsl(PRECISION L,PRECISION cL_m,PRECISION p1,PRECISION p2){
    PRECISION y = 0.0;
    y=(cL_m * ((p1 * L) + p2));
    return y;
}
__device__ PRECISION function_4_cLm_degr(PRECISION cLm,PRECISION def,PRECISION m4){
    PRECISION y = 0.0;
    y=(m4 * (cLm / def));
    return y;
}
__device__ PRECISION function_4_cNI_degr(PRECISION L,PRECISION cNI,PRECISION m17,PRECISION m24){
    PRECISION y = 0.0;
    y=((m17 + (m24 * (1.0 - L))) * cNI);
    return y;
}
__device__ PRECISION function_4_cNI_m_degr(PRECISION cNI_m,PRECISION def,PRECISION m16){
    PRECISION y = 0.0;
    y=(m16 * (cNI_m / def));
    return y;
}
__device__ PRECISION function_4_cNI_m_trscr_1(PRECISION b,PRECISION cLm,PRECISION cP7,PRECISION cT,PRECISION def,PRECISION e,PRECISION g12,PRECISION g13,PRECISION n10,PRECISION n11,PRECISION parameter_12,PRECISION parameter_7){
    PRECISION y = 0.0;
    y=(pow(parameter_12,parameter_7) * (((n10 * (pow(cLm,e) / (pow(cLm,e) + pow(g12,e)))) + (n11 * (pow(cP7,b) / (pow(cP7,b) + pow(g13,b))))) / (def * (pow(parameter_12,parameter_7) + pow(cT,parameter_7)))));
    return y;
}
__device__ PRECISION function_4_cNI_trsl(PRECISION cNI_m,PRECISION def,PRECISION p10){
    PRECISION y = 0.0;
    y=(p10 * (cNI_m / def));
    return y;
}
__device__ PRECISION function_4_cP7_degr(PRECISION L,PRECISION cP7,PRECISION m15,PRECISION m23){
    PRECISION y = 0.0;
    y=((m15 + (m23 * (1.0 - L))) * cP7);
    return y;
}
__device__ PRECISION function_4_cP7_m_degr(PRECISION cP7_m,PRECISION def,PRECISION m14){
    PRECISION y = 0.0;
    y=(m14 * (cP7_m / def));
    return y;
}
__device__ PRECISION function_4_cP7_m_trscr_1(PRECISION cL,PRECISION cLm,PRECISION cP9,PRECISION cT,PRECISION def,PRECISION e,PRECISION f,PRECISION g10,PRECISION g11,PRECISION n8,PRECISION n9,PRECISION parameter_6,PRECISION parameter_7){
    PRECISION y = 0.0;
    y=(pow(parameter_6,parameter_7) * (((n8 * (pow((cLm + cL),e) / (pow((cLm + cL),e) + pow(g10,e)))) + (n9 * (pow(cP9,f) / (pow(cP9,f) + pow(g11,f))))) / (def * (pow(parameter_6,parameter_7) + pow(cT,parameter_7)))));
    return y;
}
__device__ PRECISION function_4_cP7_trsl(PRECISION cP7_m,PRECISION def,PRECISION p9){
    PRECISION y = 0.0;
    y=(p9 * (cP7_m / def));
    return y;
}
__device__ PRECISION function_4_cP9_degr(PRECISION L,PRECISION cP9,PRECISION m13,PRECISION m22){
    PRECISION y = 0.0;
    y=((m13 + (m22 * (1.0 - L))) * cP9);
    return y;
}
__device__ PRECISION function_4_cP9_m_degr(PRECISION cP9_m,PRECISION def,PRECISION m12){
    PRECISION y = 0.0;
    y=(m12 * (cP9_m / def));
    return y;
}
__device__ PRECISION function_4_cP9_m_trscr_1(PRECISION L,PRECISION cEC,PRECISION cL,PRECISION cP,PRECISION cT,PRECISION e,PRECISION g8,PRECISION g9,PRECISION n4,PRECISION n7,PRECISION parameter_2,PRECISION parameter_7,PRECISION q3){
    PRECISION y = 0.0;
    y=(pow(parameter_2,parameter_7) * (((L * (q3 * cP)) + ((n4 + (n7 * (pow(cL,e) / (pow(cL,e) + pow(g9,e))))) * (g8 / (cEC + g8)))) / (pow(parameter_2,parameter_7) + pow(cT,parameter_7))));
    return y;
}
__device__ PRECISION function_4_cP9_trsl(PRECISION cP9_m,PRECISION def,PRECISION p8){
    PRECISION y = 0.0;
    y=(p8 * (cP9_m / def));
    return y;
}
__device__ PRECISION function_4_cPP2C_act_1(PRECISION def,PRECISION parameter_16,PRECISION parameter_18,PRECISION parameter_28,PRECISION parameter_29,PRECISION parameter_9,PRECISION species_1){
    PRECISION y = 0.0;
    y=(parameter_28 * (pow(parameter_16,parameter_9) / (def * (pow((0.5 * (parameter_29 + (species_1 + (parameter_18 - pow((pow((parameter_29 + (species_1 + parameter_18)),2.0) + (-4.0 * (parameter_29 * species_1))),0.5))))),parameter_9) + pow(parameter_16,parameter_9)))));
    return y;
}
__device__ PRECISION function_4_cPP2C_degr_1(PRECISION def,PRECISION parameter_20,PRECISION species_2){
    PRECISION y = 0.0;
    y=(parameter_20 * (species_2 / def));
    return y;
}
__device__ PRECISION function_4_cP_degr(PRECISION L,PRECISION cP,PRECISION m11){
    PRECISION y = 0.0;
    y=(m11 * (cP * L));
    return y;
}
__device__ PRECISION function_4_cP_trsl(PRECISION L,PRECISION cP,PRECISION p7){
    PRECISION y = 0.0;
    y=(p7 * ((1.0 - L) * (1.0 - cP)));
    return y;
}
__device__ PRECISION function_4_cSnRK2_degr(PRECISION def,PRECISION m30,PRECISION species_2,PRECISION species_3){
    PRECISION y = 0.0;
    y=(m30 * (species_3 * (species_2 / def)));
    return y;
}
__device__ PRECISION function_4_cT_degr(PRECISION L,PRECISION cT,PRECISION cZG,PRECISION cZTL,PRECISION m6,PRECISION m7,PRECISION m8,PRECISION p5){
    PRECISION y = 0.0;
    y=(cT * (((m6 + (m7 * (1.0 - L))) * ((p5 * cZTL) + cZG)) + m8));
    return y;
}
__device__ PRECISION function_4_cT_m_degr(PRECISION cT_m,PRECISION def,PRECISION m5){
    PRECISION y = 0.0;
    y=(m5 * (cT_m / def));
    return y;
}
__device__ PRECISION function_4_cT_m_trscr(PRECISION cEC,PRECISION cL,PRECISION def,PRECISION e,PRECISION g4,PRECISION g5,PRECISION n2,PRECISION parameter_11,PRECISION parameter_14,PRECISION species_3){
    PRECISION y = 0.0;
    y=(n2 * (g4 / ((def * (1.0 + pow((cL / ((1.0 + pow((species_3 / parameter_14),parameter_11)) * g5)),e))) * (cEC + g4))));
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
__device__ PRECISION function_4_cs_act_1(PRECISION L,PRECISION def,PRECISION parameter_10,PRECISION parameter_15,PRECISION parameter_21,PRECISION parameter_25,PRECISION species_3,PRECISION species_4){
    PRECISION y = 0.0;
    y=((parameter_25 + (parameter_21 * L)) * ((1.0 - species_4) * (pow(parameter_15,parameter_10) / (def * (pow(parameter_15,parameter_10) + pow(species_3,parameter_10))))));
    return y;
}
__device__ PRECISION function_4_cs_degr_1(PRECISION def,PRECISION m29,PRECISION species_4){
    PRECISION y = 0.0;
    y=(m29 * (species_4 / def));
    return y;
}

#endif
