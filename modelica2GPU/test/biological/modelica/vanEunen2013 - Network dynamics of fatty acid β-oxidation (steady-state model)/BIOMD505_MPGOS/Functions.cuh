
#ifndef BIOMD505_FUNCTIONS_H
#define BIOMD505_FUNCTIONS_H

#include <iostream>

#define PRECISION double

__device__ PRECISION CACT(PRECISION Vf,PRECISION Vr,PRECISION Kms1,PRECISION Kms2,PRECISION Kmp1,PRECISION Kmp2,PRECISION Kis1,PRECISION Kip2,PRECISION Keq,PRECISION S1,PRECISION S2,PRECISION P1,PRECISION P2);
__device__ PRECISION CPT1(PRECISION sf,PRECISION V,PRECISION Kms1,PRECISION Kms2,PRECISION Kmp1,PRECISION Kmp2,PRECISION Ki1,PRECISION Keq,PRECISION S1,PRECISION S2,PRECISION P1,PRECISION P2,PRECISION I1,PRECISION n);
__device__ PRECISION CPT2(PRECISION sf,PRECISION V,PRECISION Kms1,PRECISION Kms2,PRECISION Kms3,PRECISION Kms4,PRECISION Kms5,PRECISION Kms6,PRECISION Kms7,PRECISION Kms8,PRECISION Kmp1,PRECISION Kmp2,PRECISION Kmp3,PRECISION Kmp4,PRECISION Kmp5,PRECISION Kmp6,PRECISION Kmp7,PRECISION Kmp8,PRECISION Keq,PRECISION S1,PRECISION S2,PRECISION S3,PRECISION S4,PRECISION S5,PRECISION S6,PRECISION S7,PRECISION S8,PRECISION P1,PRECISION P2,PRECISION P3,PRECISION P4,PRECISION P5,PRECISION P6,PRECISION P7,PRECISION P8);
__device__ PRECISION CROT(PRECISION sf,PRECISION V,PRECISION Kms1,PRECISION Kms2,PRECISION Kms3,PRECISION Kms4,PRECISION Kms5,PRECISION Kms6,PRECISION Kms7,PRECISION Kmp1,PRECISION Kmp2,PRECISION Kmp3,PRECISION Kmp4,PRECISION Kmp5,PRECISION Kmp6,PRECISION Kmp7,PRECISION Ki1,PRECISION Keq,PRECISION S1,PRECISION S2,PRECISION S3,PRECISION S4,PRECISION S5,PRECISION S6,PRECISION S7,PRECISION P1,PRECISION P2,PRECISION P3,PRECISION P4,PRECISION P5,PRECISION P6,PRECISION P7,PRECISION I1);
__device__ PRECISION LCAD(PRECISION sf,PRECISION V,PRECISION Kms1,PRECISION Kms2,PRECISION Kms3,PRECISION Kms4,PRECISION Kms5,PRECISION Kms6,PRECISION Kmp1,PRECISION Kmp2,PRECISION Kmp3,PRECISION Kmp4,PRECISION Kmp5,PRECISION Kmp6,PRECISION Keq,PRECISION S1,PRECISION S2,PRECISION S3,PRECISION S4,PRECISION S5,PRECISION S6,PRECISION P1,PRECISION P2,PRECISION P3,PRECISION P4,PRECISION P5,PRECISION P6);
__device__ PRECISION MCAD(PRECISION sf,PRECISION V,PRECISION Kms1,PRECISION Kms2,PRECISION Kms3,PRECISION Kms4,PRECISION Kms5,PRECISION Kms6,PRECISION Kmp1,PRECISION Kmp2,PRECISION Kmp3,PRECISION Kmp4,PRECISION Kmp5,PRECISION Kmp6,PRECISION Keq,PRECISION S1,PRECISION S2,PRECISION S3,PRECISION S4,PRECISION S5,PRECISION S6,PRECISION P1,PRECISION P2,PRECISION P3,PRECISION P4,PRECISION P5,PRECISION P6);
__device__ PRECISION MCKATA(PRECISION sf,PRECISION V,PRECISION Kms1,PRECISION Kms2,PRECISION Kms3,PRECISION Kms4,PRECISION Kms5,PRECISION Kms6,PRECISION Kms7,PRECISION Kms8,PRECISION Kmp1,PRECISION Kmp2,PRECISION Kmp3,PRECISION Kmp4,PRECISION Kmp5,PRECISION Kmp6,PRECISION Kmp7,PRECISION Kmp8,PRECISION Keq,PRECISION S1,PRECISION S2,PRECISION S3,PRECISION S4,PRECISION S5,PRECISION S6,PRECISION S7,PRECISION S8,PRECISION P1,PRECISION P2,PRECISION P3,PRECISION P4,PRECISION P5,PRECISION P6,PRECISION P7,PRECISION P8);
__device__ PRECISION MCKATB(PRECISION sf,PRECISION V,PRECISION Kms1,PRECISION Kms2,PRECISION Kms3,PRECISION Kms4,PRECISION Kms5,PRECISION Kms6,PRECISION Kms7,PRECISION Kms8,PRECISION Kmp1,PRECISION Kmp2,PRECISION Kmp3,PRECISION Kmp4,PRECISION Kmp5,PRECISION Kmp6,PRECISION Kmp7,PRECISION Kmp8,PRECISION Keq,PRECISION S1,PRECISION S2,PRECISION S3,PRECISION S4,PRECISION S5,PRECISION S6,PRECISION S7,PRECISION S8,PRECISION P1,PRECISION P2,PRECISION P3,PRECISION P4,PRECISION P5,PRECISION P6,PRECISION P7,PRECISION P8);
__device__ PRECISION MSCHAD(PRECISION sf,PRECISION V,PRECISION Kms1,PRECISION Kms2,PRECISION Kms3,PRECISION Kms4,PRECISION Kms5,PRECISION Kms6,PRECISION Kms7,PRECISION Kms8,PRECISION Kmp1,PRECISION Kmp2,PRECISION Kmp3,PRECISION Kmp4,PRECISION Kmp5,PRECISION Kmp6,PRECISION Kmp7,PRECISION Kmp8,PRECISION Keq,PRECISION S1,PRECISION S2,PRECISION S3,PRECISION S4,PRECISION S5,PRECISION S6,PRECISION S7,PRECISION S8,PRECISION P1,PRECISION P2,PRECISION P3,PRECISION P4,PRECISION P5,PRECISION P6,PRECISION P7,PRECISION P8);
__device__ PRECISION MTP(PRECISION sf,PRECISION V,PRECISION Kms1,PRECISION Kms2,PRECISION Kms3,PRECISION Kms4,PRECISION Kms5,PRECISION Kms7,PRECISION Kms8,PRECISION Kmp1,PRECISION Kmp2,PRECISION Kmp3,PRECISION Kmp4,PRECISION Kmp5,PRECISION Kmp6,PRECISION Kmp7,PRECISION Kmp8,PRECISION Ki1,PRECISION Keq,PRECISION S1,PRECISION S2,PRECISION S3,PRECISION S4,PRECISION S5,PRECISION S7,PRECISION S8,PRECISION P1,PRECISION P2,PRECISION P3,PRECISION P4,PRECISION P5,PRECISION P6,PRECISION P7,PRECISION P8,PRECISION I1);
__device__ PRECISION RES(PRECISION Ks,PRECISION S,PRECISION K1);
__device__ PRECISION SCAD(PRECISION sf,PRECISION V,PRECISION Kms1,PRECISION Kms2,PRECISION Kms3,PRECISION Kmp1,PRECISION Kmp2,PRECISION Kmp3,PRECISION Keq,PRECISION S1,PRECISION S2,PRECISION S3,PRECISION P1,PRECISION P2,PRECISION P3);
__device__ PRECISION VLCAD(PRECISION sf,PRECISION V,PRECISION Kms1,PRECISION Kms2,PRECISION Kms3,PRECISION Kms4,PRECISION Kmp1,PRECISION Kmp2,PRECISION Kmp3,PRECISION Kmp4,PRECISION Keq,PRECISION S1,PRECISION S2,PRECISION S3,PRECISION S4,PRECISION P1,PRECISION P2,PRECISION P3,PRECISION P4);

__device__ PRECISION CACT(PRECISION Vf,PRECISION Vr,PRECISION Kms1,PRECISION Kms2,PRECISION Kmp1,PRECISION Kmp2,PRECISION Kis1,PRECISION Kip2,PRECISION Keq,PRECISION S1,PRECISION S2,PRECISION P1,PRECISION P2){
    PRECISION y = 0.0;
    y=((Vf * ((S1 * S2) - ((P1 * P2) / Keq))) / ((((S1 * S2) + (Kms2 * S1)) + ((Kms1 * S2) * (1.0 + (P2 / Kip2)))) + ((Vf / (Vr * Keq)) * (((Kmp2 * P1) * (1.0 + (S1 / Kis1))) + (P2 * (Kmp1 + P1))))));
    return y;
}
__device__ PRECISION CPT1(PRECISION sf,PRECISION V,PRECISION Kms1,PRECISION Kms2,PRECISION Kmp1,PRECISION Kmp2,PRECISION Ki1,PRECISION Keq,PRECISION S1,PRECISION S2,PRECISION P1,PRECISION P2,PRECISION I1,PRECISION n){
    PRECISION y = 0.0;
    y=(((sf * V) * (((S1 * S2) / (Kms1 * Kms2)) - ((P1 * P2) / ((Kms1 * Kms2) * Keq)))) / ((((1.0 + (S1 / Kms1)) + (P1 / Kmp1)) + pow((I1 / Ki1),n)) * ((1.0 + (S2 / Kms2)) + (P2 / Kmp2))));
    return y;
}
__device__ PRECISION CPT2(PRECISION sf,PRECISION V,PRECISION Kms1,PRECISION Kms2,PRECISION Kms3,PRECISION Kms4,PRECISION Kms5,PRECISION Kms6,PRECISION Kms7,PRECISION Kms8,PRECISION Kmp1,PRECISION Kmp2,PRECISION Kmp3,PRECISION Kmp4,PRECISION Kmp5,PRECISION Kmp6,PRECISION Kmp7,PRECISION Kmp8,PRECISION Keq,PRECISION S1,PRECISION S2,PRECISION S3,PRECISION S4,PRECISION S5,PRECISION S6,PRECISION S7,PRECISION S8,PRECISION P1,PRECISION P2,PRECISION P3,PRECISION P4,PRECISION P5,PRECISION P6,PRECISION P7,PRECISION P8){
    PRECISION y = 0.0;
    y=(((sf * V) * (((S1 * S8) / (Kms1 * Kms8)) - ((P1 * P8) / ((Kms1 * Kms8) * Keq)))) / (((((((((((((((1.0 + (S1 / Kms1)) + (P1 / Kmp1)) + (S2 / Kms2)) + (P2 / Kmp2)) + (S3 / Kms3)) + (P3 / Kmp3)) + (S4 / Kms4)) + (P4 / Kmp4)) + (S5 / Kms5)) + (P5 / Kmp5)) + (S6 / Kms6)) + (P6 / Kmp6)) + (S7 / Kms7)) + (P7 / Kmp7)) * ((1.0 + (S8 / Kms8)) + (P8 / Kmp8))));
    return y;
}
__device__ PRECISION CROT(PRECISION sf,PRECISION V,PRECISION Kms1,PRECISION Kms2,PRECISION Kms3,PRECISION Kms4,PRECISION Kms5,PRECISION Kms6,PRECISION Kms7,PRECISION Kmp1,PRECISION Kmp2,PRECISION Kmp3,PRECISION Kmp4,PRECISION Kmp5,PRECISION Kmp6,PRECISION Kmp7,PRECISION Ki1,PRECISION Keq,PRECISION S1,PRECISION S2,PRECISION S3,PRECISION S4,PRECISION S5,PRECISION S6,PRECISION S7,PRECISION P1,PRECISION P2,PRECISION P3,PRECISION P4,PRECISION P5,PRECISION P6,PRECISION P7,PRECISION I1){
    PRECISION y = 0.0;
    y=(((sf * V) * ((S1 / Kms1) - (P1 / (Kms1 * Keq)))) / (((((((((((((((1.0 + (S1 / Kms1)) + (P1 / Kmp1)) + (S2 / Kms2)) + (P2 / Kmp2)) + (S3 / Kms3)) + (P3 / Kmp3)) + (S4 / Kms4)) + (P4 / Kmp4)) + (S5 / Kms5)) + (P5 / Kmp5)) + (S6 / Kms6)) + (P6 / Kmp6)) + (S7 / Kms7)) + (P7 / Kmp7)) + (I1 / Ki1)));
    return y;
}
__device__ PRECISION LCAD(PRECISION sf,PRECISION V,PRECISION Kms1,PRECISION Kms2,PRECISION Kms3,PRECISION Kms4,PRECISION Kms5,PRECISION Kms6,PRECISION Kmp1,PRECISION Kmp2,PRECISION Kmp3,PRECISION Kmp4,PRECISION Kmp5,PRECISION Kmp6,PRECISION Keq,PRECISION S1,PRECISION S2,PRECISION S3,PRECISION S4,PRECISION S5,PRECISION S6,PRECISION P1,PRECISION P2,PRECISION P3,PRECISION P4,PRECISION P5,PRECISION P6){
    PRECISION y = 0.0;
    y=(((sf * V) * (((S1 * (S6 - P6)) / (Kms1 * Kms6)) - ((P1 * P6) / ((Kms1 * Kms6) * Keq)))) / (((((((((((1.0 + (S1 / Kms1)) + (P1 / Kmp1)) + (S2 / Kms2)) + (P2 / Kmp2)) + (S3 / Kms3)) + (P3 / Kmp3)) + (S4 / Kms4)) + (P4 / Kmp4)) + (S5 / Kms5)) + (P5 / Kmp5)) * ((1.0 + ((S6 - P6) / Kms6)) + (P6 / Kmp6))));
    return y;
}
__device__ PRECISION MCAD(PRECISION sf,PRECISION V,PRECISION Kms1,PRECISION Kms2,PRECISION Kms3,PRECISION Kms4,PRECISION Kms5,PRECISION Kms6,PRECISION Kmp1,PRECISION Kmp2,PRECISION Kmp3,PRECISION Kmp4,PRECISION Kmp5,PRECISION Kmp6,PRECISION Keq,PRECISION S1,PRECISION S2,PRECISION S3,PRECISION S4,PRECISION S5,PRECISION S6,PRECISION P1,PRECISION P2,PRECISION P3,PRECISION P4,PRECISION P5,PRECISION P6){
    PRECISION y = 0.0;
    y=(((sf * V) * (((S1 * (S6 - P6)) / (Kms1 * Kms6)) - ((P1 * P6) / ((Kms1 * Kms6) * Keq)))) / (((((((((((1.0 + (S1 / Kms1)) + (P1 / Kmp1)) + (S2 / Kms2)) + (P2 / Kmp2)) + (S3 / Kms3)) + (P3 / Kmp3)) + (S4 / Kms4)) + (P4 / Kmp4)) + (S5 / Kms5)) + (P5 / Kmp5)) * ((1.0 + ((S6 - P6) / Kms6)) + (P6 / Kmp6))));
    return y;
}
__device__ PRECISION MCKATA(PRECISION sf,PRECISION V,PRECISION Kms1,PRECISION Kms2,PRECISION Kms3,PRECISION Kms4,PRECISION Kms5,PRECISION Kms6,PRECISION Kms7,PRECISION Kms8,PRECISION Kmp1,PRECISION Kmp2,PRECISION Kmp3,PRECISION Kmp4,PRECISION Kmp5,PRECISION Kmp6,PRECISION Kmp7,PRECISION Kmp8,PRECISION Keq,PRECISION S1,PRECISION S2,PRECISION S3,PRECISION S4,PRECISION S5,PRECISION S6,PRECISION S7,PRECISION S8,PRECISION P1,PRECISION P2,PRECISION P3,PRECISION P4,PRECISION P5,PRECISION P6,PRECISION P7,PRECISION P8){
    PRECISION y = 0.0;
    y=(((sf * V) * (((S1 * S8) / (Kms1 * Kms8)) - ((P1 * P8) / ((Kms1 * Kms8) * Keq)))) / ((((((((((((((((1.0 + (S1 / Kms1)) + (P1 / Kmp1)) + (S2 / Kms2)) + (P2 / Kmp2)) + (S3 / Kms3)) + (P3 / Kmp3)) + (S4 / Kms4)) + (P4 / Kmp4)) + (S5 / Kms5)) + (P5 / Kmp5)) + (S6 / Kms6)) + (P6 / Kmp6)) + (S7 / Kms7)) + (P7 / Kmp7)) + (P8 / Kmp8)) * ((1.0 + (S8 / Kms8)) + (P8 / Kmp8))));
    return y;
}
__device__ PRECISION MCKATB(PRECISION sf,PRECISION V,PRECISION Kms1,PRECISION Kms2,PRECISION Kms3,PRECISION Kms4,PRECISION Kms5,PRECISION Kms6,PRECISION Kms7,PRECISION Kms8,PRECISION Kmp1,PRECISION Kmp2,PRECISION Kmp3,PRECISION Kmp4,PRECISION Kmp5,PRECISION Kmp6,PRECISION Kmp7,PRECISION Kmp8,PRECISION Keq,PRECISION S1,PRECISION S2,PRECISION S3,PRECISION S4,PRECISION S5,PRECISION S6,PRECISION S7,PRECISION S8,PRECISION P1,PRECISION P2,PRECISION P3,PRECISION P4,PRECISION P5,PRECISION P6,PRECISION P7,PRECISION P8){
    PRECISION y = 0.0;
    y=(((sf * V) * (((S1 * S8) / (Kms1 * Kms8)) - ((P8 * P8) / ((Kms1 * Kms8) * Keq)))) / ((((((((((((((((1.0 + (S1 / Kms1)) + (P1 / Kmp1)) + (S2 / Kms2)) + (P2 / Kmp2)) + (S3 / Kms3)) + (P3 / Kmp3)) + (S4 / Kms4)) + (P4 / Kmp4)) + (S5 / Kms5)) + (P5 / Kmp5)) + (S6 / Kms6)) + (P6 / Kmp6)) + (S7 / Kms7)) + (P7 / Kmp7)) + (P8 / Kmp8)) * ((1.0 + (S8 / Kms8)) + (P8 / Kmp8))));
    return y;
}
__device__ PRECISION MSCHAD(PRECISION sf,PRECISION V,PRECISION Kms1,PRECISION Kms2,PRECISION Kms3,PRECISION Kms4,PRECISION Kms5,PRECISION Kms6,PRECISION Kms7,PRECISION Kms8,PRECISION Kmp1,PRECISION Kmp2,PRECISION Kmp3,PRECISION Kmp4,PRECISION Kmp5,PRECISION Kmp6,PRECISION Kmp7,PRECISION Kmp8,PRECISION Keq,PRECISION S1,PRECISION S2,PRECISION S3,PRECISION S4,PRECISION S5,PRECISION S6,PRECISION S7,PRECISION S8,PRECISION P1,PRECISION P2,PRECISION P3,PRECISION P4,PRECISION P5,PRECISION P6,PRECISION P7,PRECISION P8){
    PRECISION y = 0.0;
    y=(((sf * V) * (((S1 * (S8 - P8)) / (Kms1 * Kms8)) - ((P1 * P8) / ((Kms1 * Kms8) * Keq)))) / (((((((((((((((1.0 + (S1 / Kms1)) + (P1 / Kmp1)) + (S2 / Kms2)) + (P2 / Kmp2)) + (S3 / Kms3)) + (P3 / Kmp3)) + (S4 / Kms4)) + (P4 / Kmp4)) + (S5 / Kms5)) + (P5 / Kmp5)) + (S6 / Kms6)) + (P6 / Kmp6)) + (S7 / Kms7)) + (P7 / Kmp7)) * ((1.0 + ((S8 - P8) / Kms8)) + (P8 / Kmp8))));
    return y;
}
__device__ PRECISION MTP(PRECISION sf,PRECISION V,PRECISION Kms1,PRECISION Kms2,PRECISION Kms3,PRECISION Kms4,PRECISION Kms5,PRECISION Kms7,PRECISION Kms8,PRECISION Kmp1,PRECISION Kmp2,PRECISION Kmp3,PRECISION Kmp4,PRECISION Kmp5,PRECISION Kmp6,PRECISION Kmp7,PRECISION Kmp8,PRECISION Ki1,PRECISION Keq,PRECISION S1,PRECISION S2,PRECISION S3,PRECISION S4,PRECISION S5,PRECISION S7,PRECISION S8,PRECISION P1,PRECISION P2,PRECISION P3,PRECISION P4,PRECISION P5,PRECISION P6,PRECISION P7,PRECISION P8,PRECISION I1){
    PRECISION y = 0.0;
    y=(((sf * V) * ((((S1 * (S7 - P7)) * S8) / ((Kms1 * Kms7) * Kms8)) - (((P1 * P7) * P8) / (((Kms1 * Kms7) * Kms8) * Keq)))) / ((((((((((((((1.0 + (S1 / Kms1)) + (P1 / Kmp1)) + (S2 / Kms2)) + (P2 / Kmp2)) + (S3 / Kms3)) + (P3 / Kmp3)) + (S4 / Kms4)) + (P4 / Kmp4)) + (S5 / Kms5)) + (P5 / Kmp5)) + (P6 / Kmp6)) + (I1 / Ki1)) * ((1.0 + ((S7 - P7) / Kms7)) + (P7 / Kmp7))) * ((1.0 + (S8 / Kms8)) + (P8 / Kmp8))));
    return y;
}
__device__ PRECISION RES(PRECISION Ks,PRECISION S,PRECISION K1){
    PRECISION y = 0.0;
    y=(Ks * (S - K1));
    return y;
}
__device__ PRECISION SCAD(PRECISION sf,PRECISION V,PRECISION Kms1,PRECISION Kms2,PRECISION Kms3,PRECISION Kmp1,PRECISION Kmp2,PRECISION Kmp3,PRECISION Keq,PRECISION S1,PRECISION S2,PRECISION S3,PRECISION P1,PRECISION P2,PRECISION P3){
    PRECISION y = 0.0;
    y=(((sf * V) * (((S1 * (S3 - P3)) / (Kms1 * Kms3)) - ((P1 * P3) / ((Kms1 * Kms3) * Keq)))) / (((((1.0 + (S1 / Kms1)) + (P1 / Kmp1)) + (S2 / Kms2)) + (P2 / Kmp2)) * ((1.0 + ((S3 - P3) / Kms3)) + (P3 / Kmp3))));
    return y;
}
__device__ PRECISION VLCAD(PRECISION sf,PRECISION V,PRECISION Kms1,PRECISION Kms2,PRECISION Kms3,PRECISION Kms4,PRECISION Kmp1,PRECISION Kmp2,PRECISION Kmp3,PRECISION Kmp4,PRECISION Keq,PRECISION S1,PRECISION S2,PRECISION S3,PRECISION S4,PRECISION P1,PRECISION P2,PRECISION P3,PRECISION P4){
    PRECISION y = 0.0;
    y=(((sf * V) * (((S1 * (S4 - P4)) / (Kms1 * Kms4)) - ((P1 * P4) / ((Kms1 * Kms4) * Keq)))) / (((((((1.0 + (S1 / Kms1)) + (P1 / Kmp1)) + (S2 / Kms2)) + (P2 / Kmp2)) + (S3 / Kms3)) + (P3 / Kmp3)) * ((1.0 + ((S4 - P4) / Kms4)) + (P4 / Kmp4))));
    return y;
}

#endif
