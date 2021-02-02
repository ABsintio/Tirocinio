
#ifndef BIOMD564_FUNCTIONS_H
#define BIOMD564_FUNCTIONS_H

#include <iostream>

#define PRECISION double

__device__ PRECISION function_4_cG_cZTL_assoc_1(PRECISION D,PRECISION L,PRECISION cG,PRECISION cZG,PRECISION cZTL,PRECISION def,PRECISION p12,PRECISION p13);
__device__ PRECISION function_4_cG_degr_1(PRECISION cG,PRECISION def,PRECISION m19);
__device__ PRECISION function_4_cG_m_degr_1(PRECISION cG_m,PRECISION def,PRECISION m18);
__device__ PRECISION function_4_cG_m_trscr_1(PRECISION L,PRECISION cL,PRECISION cP,PRECISION cT,PRECISION def,PRECISION g14,PRECISION g15,PRECISION n,PRECISION n12,PRECISION o,PRECISION q4);
__device__ PRECISION function_4_cG_trsl_1(PRECISION cG_m,PRECISION def,PRECISION p11);
__device__ PRECISION function_4_cL_degr_1(PRECISION c,PRECISION cL,PRECISION def,PRECISION g3,PRECISION m3,PRECISION p3);
__device__ PRECISION function_4_cL_m_degr_1(PRECISION D,PRECISION L,PRECISION cL_m,PRECISION def,PRECISION m1,PRECISION m2);
__device__ PRECISION function_4_cL_m_trscr_1(PRECISION L,PRECISION a,PRECISION b,PRECISION cNI,PRECISION cP,PRECISION cP7,PRECISION cP9,PRECISION cTm,PRECISION def,PRECISION g1,PRECISION g2,PRECISION n0,PRECISION n1,PRECISION q1);
__device__ PRECISION function_4_cL_modif_1(PRECISION c,PRECISION cL,PRECISION def,PRECISION g3,PRECISION p3);
__device__ PRECISION function_4_cL_trsl_1(PRECISION D,PRECISION L,PRECISION cL_m,PRECISION def,PRECISION p1,PRECISION p2);
__device__ PRECISION function_4_cLm_degr_1(PRECISION cLm,PRECISION def,PRECISION m4);
__device__ PRECISION function_4_cNI_degr_1(PRECISION D,PRECISION L,PRECISION cNI,PRECISION def,PRECISION m17,PRECISION m24);
__device__ PRECISION function_4_cNI_m_degr_1(PRECISION cNI_m,PRECISION def,PRECISION m16);
__device__ PRECISION function_4_cNI_m_trscr_1(PRECISION cLm,PRECISION cP7,PRECISION def,PRECISION g12,PRECISION g13,PRECISION l,PRECISION m,PRECISION n10,PRECISION n11);
__device__ PRECISION function_4_cNI_trsl_1(PRECISION cNI_m,PRECISION def,PRECISION p10);
__device__ PRECISION function_4_cP7_degr_1(PRECISION D,PRECISION L,PRECISION cP7,PRECISION def,PRECISION m15,PRECISION m23);
__device__ PRECISION function_4_cP7_m_degr_1(PRECISION cP7_m,PRECISION def,PRECISION m14);
__device__ PRECISION function_4_cP7_m_trscr_1(PRECISION cL,PRECISION cLm,PRECISION cP9,PRECISION def,PRECISION g10,PRECISION g11,PRECISION j,PRECISION k,PRECISION n8,PRECISION n9);
__device__ PRECISION function_4_cP7_trsl_1(PRECISION cP7_m,PRECISION def,PRECISION p9);
__device__ PRECISION function_4_cP9_degr_1(PRECISION D,PRECISION L,PRECISION cP9,PRECISION def,PRECISION m13,PRECISION m22);
__device__ PRECISION function_4_cP9_m_degr_1(PRECISION cP9_m,PRECISION def,PRECISION m12);
__device__ PRECISION function_4_cP9_m_trscr_1(PRECISION L,PRECISION cL,PRECISION cP,PRECISION cT,PRECISION def,PRECISION g8,PRECISION g9,PRECISION h,PRECISION i,PRECISION n4,PRECISION n7,PRECISION q3);
__device__ PRECISION function_4_cP9_trsl_1(PRECISION cP9_m,PRECISION def,PRECISION p8);
__device__ PRECISION function_4_cP_degr_1(PRECISION L,PRECISION cP,PRECISION def,PRECISION m11);
__device__ PRECISION function_4_cP_trsl_1(PRECISION D,PRECISION cP,PRECISION def,PRECISION p7);
__device__ PRECISION function_4_cT_degr_1(PRECISION D,PRECISION L,PRECISION cT,PRECISION cZG,PRECISION cZTL,PRECISION def,PRECISION m6,PRECISION m7,PRECISION m8,PRECISION p5);
__device__ PRECISION function_4_cT_m_degr_1(PRECISION cT_m,PRECISION def,PRECISION m5);
__device__ PRECISION function_4_cT_m_trscr_1(PRECISION cL,PRECISION cY,PRECISION d,PRECISION def,PRECISION e,PRECISION g4,PRECISION g5,PRECISION n2,PRECISION n3);
__device__ PRECISION function_4_cT_modif_1(PRECISION cT,PRECISION def,PRECISION f,PRECISION g6,PRECISION p15);
__device__ PRECISION function_4_cT_trsl_1(PRECISION cT_m,PRECISION def,PRECISION p4);
__device__ PRECISION function_4_cTm_degr_1(PRECISION D,PRECISION L,PRECISION cTm,PRECISION def,PRECISION m25,PRECISION m26);
__device__ PRECISION function_4_cY_degr_1(PRECISION cY,PRECISION def,PRECISION m10);
__device__ PRECISION function_4_cY_m_degr_1(PRECISION cY_m,PRECISION def,PRECISION m9);
__device__ PRECISION function_4_cY_m_trscr_1(PRECISION D,PRECISION L,PRECISION cL,PRECISION cP,PRECISION cT,PRECISION def,PRECISION g,PRECISION g16,PRECISION g7,PRECISION n5,PRECISION n6,PRECISION q2,PRECISION s);
__device__ PRECISION function_4_cY_trsl_1(PRECISION cY_m,PRECISION def,PRECISION p6);
__device__ PRECISION function_4_cZG_degr_1(PRECISION cZG,PRECISION def,PRECISION m21);
__device__ PRECISION function_4_cZTL_degr_1(PRECISION cZTL,PRECISION def,PRECISION m20);

__device__ PRECISION function_4_cG_cZTL_assoc_1(PRECISION D,PRECISION L,PRECISION cG,PRECISION cZG,PRECISION cZTL,PRECISION def,PRECISION p12,PRECISION p13){
    PRECISION y = 0.0;
    y=(((p12 * (L * (cZTL * cG))) - (p13 * (D * cZG))) / def);
    return y;
}
__device__ PRECISION function_4_cG_degr_1(PRECISION cG,PRECISION def,PRECISION m19){
    PRECISION y = 0.0;
    y=(m19 * (cG / def));
    return y;
}
__device__ PRECISION function_4_cG_m_degr_1(PRECISION cG_m,PRECISION def,PRECISION m18){
    PRECISION y = 0.0;
    y=(m18 * (cG_m / def));
    return y;
}
__device__ PRECISION function_4_cG_m_trscr_1(PRECISION L,PRECISION cL,PRECISION cP,PRECISION cT,PRECISION def,PRECISION g14,PRECISION g15,PRECISION n,PRECISION n12,PRECISION o,PRECISION q4){
    PRECISION y = 0.0;
    y=(((L * (q4 * cP)) + (n12 * (L * (pow(g15,o) * (pow(g14,n) / ((pow(cT,n) + pow(g14,n)) * (pow(cL,o) + pow(g15,o)))))))) / def);
    return y;
}
__device__ PRECISION function_4_cG_trsl_1(PRECISION cG_m,PRECISION def,PRECISION p11){
    PRECISION y = 0.0;
    y=(p11 * (cG_m / def));
    return y;
}
__device__ PRECISION function_4_cL_degr_1(PRECISION c,PRECISION cL,PRECISION def,PRECISION g3,PRECISION m3,PRECISION p3){
    PRECISION y = 0.0;
    y=(((m3 * cL) + (p3 * (pow(cL,c) / (pow(cL,c) + pow(g3,c))))) / def);
    return y;
}
__device__ PRECISION function_4_cL_m_degr_1(PRECISION D,PRECISION L,PRECISION cL_m,PRECISION def,PRECISION m1,PRECISION m2){
    PRECISION y = 0.0;
    y=(((m1 * L) + (m2 * D)) * (cL_m / def));
    return y;
}
__device__ PRECISION function_4_cL_m_trscr_1(PRECISION L,PRECISION a,PRECISION b,PRECISION cNI,PRECISION cP,PRECISION cP7,PRECISION cP9,PRECISION cTm,PRECISION def,PRECISION g1,PRECISION g2,PRECISION n0,PRECISION n1,PRECISION q1){
    PRECISION y = 0.0;
    y=(((L * (n0 + (q1 * cP))) + (n1 * (pow(cTm,b) / (pow(cTm,b) + pow(g2,b))))) * (pow(g1,a) / (def * (pow((cP9 + (cP7 + cNI)),a) + pow(g1,a)))));
    return y;
}
__device__ PRECISION function_4_cL_modif_1(PRECISION c,PRECISION cL,PRECISION def,PRECISION g3,PRECISION p3){
    PRECISION y = 0.0;
    y=(p3 * (pow(cL,c) / (def * (pow(cL,c) + pow(g3,c)))));
    return y;
}
__device__ PRECISION function_4_cL_trsl_1(PRECISION D,PRECISION L,PRECISION cL_m,PRECISION def,PRECISION p1,PRECISION p2){
    PRECISION y = 0.0;
    y=(cL_m * (((p1 * L) + (p2 * D)) / def));
    return y;
}
__device__ PRECISION function_4_cLm_degr_1(PRECISION cLm,PRECISION def,PRECISION m4){
    PRECISION y = 0.0;
    y=(m4 * (cLm / def));
    return y;
}
__device__ PRECISION function_4_cNI_degr_1(PRECISION D,PRECISION L,PRECISION cNI,PRECISION def,PRECISION m17,PRECISION m24){
    PRECISION y = 0.0;
    y=(((m17 * L) + (m24 * D)) * (cNI / def));
    return y;
}
__device__ PRECISION function_4_cNI_m_degr_1(PRECISION cNI_m,PRECISION def,PRECISION m16){
    PRECISION y = 0.0;
    y=(m16 * (cNI_m / def));
    return y;
}
__device__ PRECISION function_4_cNI_m_trscr_1(PRECISION cLm,PRECISION cP7,PRECISION def,PRECISION g12,PRECISION g13,PRECISION l,PRECISION m,PRECISION n10,PRECISION n11){
    PRECISION y = 0.0;
    y=(((n10 * (pow(cLm,l) / (pow(cLm,l) + pow(g12,l)))) + (n11 * (pow(cP7,m) / (pow(cP7,m) + pow(g13,m))))) / def);
    return y;
}
__device__ PRECISION function_4_cNI_trsl_1(PRECISION cNI_m,PRECISION def,PRECISION p10){
    PRECISION y = 0.0;
    y=(p10 * (cNI_m / def));
    return y;
}
__device__ PRECISION function_4_cP7_degr_1(PRECISION D,PRECISION L,PRECISION cP7,PRECISION def,PRECISION m15,PRECISION m23){
    PRECISION y = 0.0;
    y=(((m15 * L) + (m23 * D)) * (cP7 / def));
    return y;
}
__device__ PRECISION function_4_cP7_m_degr_1(PRECISION cP7_m,PRECISION def,PRECISION m14){
    PRECISION y = 0.0;
    y=(m14 * (cP7_m / def));
    return y;
}
__device__ PRECISION function_4_cP7_m_trscr_1(PRECISION cL,PRECISION cLm,PRECISION cP9,PRECISION def,PRECISION g10,PRECISION g11,PRECISION j,PRECISION k,PRECISION n8,PRECISION n9){
    PRECISION y = 0.0;
    y=(((n8 * (pow((cLm + cL),j) / (pow((cLm + cL),j) + pow(g10,j)))) + (n9 * (pow(cP9,k) / (pow(cP9,k) + pow(g11,k))))) / def);
    return y;
}
__device__ PRECISION function_4_cP7_trsl_1(PRECISION cP7_m,PRECISION def,PRECISION p9){
    PRECISION y = 0.0;
    y=(p9 * (cP7_m / def));
    return y;
}
__device__ PRECISION function_4_cP9_degr_1(PRECISION D,PRECISION L,PRECISION cP9,PRECISION def,PRECISION m13,PRECISION m22){
    PRECISION y = 0.0;
    y=(((m13 * L) + (m22 * D)) * (cP9 / def));
    return y;
}
__device__ PRECISION function_4_cP9_m_degr_1(PRECISION cP9_m,PRECISION def,PRECISION m12){
    PRECISION y = 0.0;
    y=(m12 * (cP9_m / def));
    return y;
}
__device__ PRECISION function_4_cP9_m_trscr_1(PRECISION L,PRECISION cL,PRECISION cP,PRECISION cT,PRECISION def,PRECISION g8,PRECISION g9,PRECISION h,PRECISION i,PRECISION n4,PRECISION n7,PRECISION q3){
    PRECISION y = 0.0;
    y=(((L * (q3 * cP)) + (((n4 * L) + (n7 * (pow(cL,i) / (pow(cL,i) + pow(g9,i))))) * (pow(g8,h) / (pow(cT,h) + pow(g8,h))))) / def);
    return y;
}
__device__ PRECISION function_4_cP9_trsl_1(PRECISION cP9_m,PRECISION def,PRECISION p8){
    PRECISION y = 0.0;
    y=(p8 * (cP9_m / def));
    return y;
}
__device__ PRECISION function_4_cP_degr_1(PRECISION L,PRECISION cP,PRECISION def,PRECISION m11){
    PRECISION y = 0.0;
    y=(m11 * (cP * (L / def)));
    return y;
}
__device__ PRECISION function_4_cP_trsl_1(PRECISION D,PRECISION cP,PRECISION def,PRECISION p7){
    PRECISION y = 0.0;
    y=(p7 * (D * ((1.0 - cP) / def)));
    return y;
}
__device__ PRECISION function_4_cT_degr_1(PRECISION D,PRECISION L,PRECISION cT,PRECISION cZG,PRECISION cZTL,PRECISION def,PRECISION m6,PRECISION m7,PRECISION m8,PRECISION p5){
    PRECISION y = 0.0;
    y=(cT * (((((m6 * L) + (m7 * D)) * ((p5 * cZTL) + cZG)) + m8) / def));
    return y;
}
__device__ PRECISION function_4_cT_m_degr_1(PRECISION cT_m,PRECISION def,PRECISION m5){
    PRECISION y = 0.0;
    y=(m5 * (cT_m / def));
    return y;
}
__device__ PRECISION function_4_cT_m_trscr_1(PRECISION cL,PRECISION cY,PRECISION d,PRECISION def,PRECISION e,PRECISION g4,PRECISION g5,PRECISION n2,PRECISION n3){
    PRECISION y = 0.0;
    y=(((n2 * (pow(cY,d) / (pow(cY,d) + pow(g4,d)))) + n3) * (pow(g5,e) / (def * (pow(cL,e) + pow(g5,e)))));
    return y;
}
__device__ PRECISION function_4_cT_modif_1(PRECISION cT,PRECISION def,PRECISION f,PRECISION g6,PRECISION p15){
    PRECISION y = 0.0;
    y=(p15 * (pow(cT,f) / (def * (pow(cT,f) + pow(g6,f)))));
    return y;
}
__device__ PRECISION function_4_cT_trsl_1(PRECISION cT_m,PRECISION def,PRECISION p4){
    PRECISION y = 0.0;
    y=(p4 * (cT_m / def));
    return y;
}
__device__ PRECISION function_4_cTm_degr_1(PRECISION D,PRECISION L,PRECISION cTm,PRECISION def,PRECISION m25,PRECISION m26){
    PRECISION y = 0.0;
    y=(((m25 * L) + (m26 * D)) * (cTm / def));
    return y;
}
__device__ PRECISION function_4_cY_degr_1(PRECISION cY,PRECISION def,PRECISION m10){
    PRECISION y = 0.0;
    y=(m10 * (cY / def));
    return y;
}
__device__ PRECISION function_4_cY_m_degr_1(PRECISION cY_m,PRECISION def,PRECISION m9){
    PRECISION y = 0.0;
    y=(m9 * (cY_m / def));
    return y;
}
__device__ PRECISION function_4_cY_m_trscr_1(PRECISION D,PRECISION L,PRECISION cL,PRECISION cP,PRECISION cT,PRECISION def,PRECISION g,PRECISION g16,PRECISION g7,PRECISION n5,PRECISION n6,PRECISION q2,PRECISION s){
    PRECISION y = 0.0;
    y=(((L * (q2 * cP)) + (((n5 * L) + (n6 * D)) * (pow(g7,s) * (pow(g16,g) / ((pow(cL,g) + pow(g16,g)) * (pow(cT,s) + pow(g7,s))))))) / def);
    return y;
}
__device__ PRECISION function_4_cY_trsl_1(PRECISION cY_m,PRECISION def,PRECISION p6){
    PRECISION y = 0.0;
    y=(p6 * (cY_m / def));
    return y;
}
__device__ PRECISION function_4_cZG_degr_1(PRECISION cZG,PRECISION def,PRECISION m21){
    PRECISION y = 0.0;
    y=(m21 * (cZG / def));
    return y;
}
__device__ PRECISION function_4_cZTL_degr_1(PRECISION cZTL,PRECISION def,PRECISION m20){
    PRECISION y = 0.0;
    y=(m20 * (cZTL / def));
    return y;
}

#endif
