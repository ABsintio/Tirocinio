
#ifndef BIOMD500_FUNCTIONS_H
#define BIOMD500_FUNCTIONS_H

#include <iostream>

#define PRECISION double

__device__ PRECISION function_4_DNA1(PRECISION DNA_000,PRECISION DNA_100,PRECISION Koff_NG1,PRECISION Kon_NG1,PRECISION S1,PRECISION nucleus){
    PRECISION y = 0.0;
    y=(((Kon_NG1 * (DNA_000 * S1)) - (Koff_NG1 * DNA_100)) / nucleus);
    return y;
}
__device__ PRECISION function_4_DNA10(PRECISION DNA_110,PRECISION DNA_111,PRECISION Koff_NG1,PRECISION Kon_NG1,PRECISION S1,PRECISION nucleus){
    PRECISION y = 0.0;
    y=(((Kon_NG1 * (DNA_110 * S1)) - (Koff_NG1 * DNA_111)) / nucleus);
    return y;
}
__device__ PRECISION function_4_DNA11(PRECISION DNA_101,PRECISION DNA_111,PRECISION Koff_G1,PRECISION Kon_G1,PRECISION S1,PRECISION nucleus){
    PRECISION y = 0.0;
    y=(((Kon_G1 * (DNA_101 * S1)) - (Koff_G1 * DNA_111)) / nucleus);
    return y;
}
__device__ PRECISION function_4_DNA12(PRECISION DNA_011,PRECISION DNA_111,PRECISION Koff_NG1,PRECISION Kon_NG1,PRECISION S1,PRECISION nucleus){
    PRECISION y = 0.0;
    y=(((Kon_NG1 * (DNA_011 * S1)) - (Koff_NG1 * DNA_111)) / nucleus);
    return y;
}
__device__ PRECISION function_4_DNA2(PRECISION DNA_000,PRECISION DNA_010,PRECISION Koff_G1,PRECISION Kon_G1,PRECISION S1,PRECISION nucleus){
    PRECISION y = 0.0;
    y=(((Kon_G1 * (DNA_000 * S1)) - (Koff_G1 * DNA_010)) / nucleus);
    return y;
}
__device__ PRECISION function_4_DNA3(PRECISION DNA_000,PRECISION DNA_001,PRECISION Koff_NG1,PRECISION Kon_NG1,PRECISION S1,PRECISION nucleus){
    PRECISION y = 0.0;
    y=(((Kon_NG1 * (DNA_000 * S1)) - (Koff_NG1 * DNA_001)) / nucleus);
    return y;
}
__device__ PRECISION function_4_DNA4(PRECISION DNA_100,PRECISION DNA_110,PRECISION Koff_G1,PRECISION Kon_G1,PRECISION S1,PRECISION nucleus){
    PRECISION y = 0.0;
    y=(((Kon_G1 * (DNA_100 * S1)) - (Koff_G1 * DNA_110)) / nucleus);
    return y;
}
__device__ PRECISION function_4_DNA49(PRECISION DNA_110,PRECISION DNA_1B10,PRECISION Koff_P1,PRECISION Kon_P1,PRECISION nucleus){
    PRECISION y = 0.0;
    y=(((Kon_P1 * DNA_110) - (Koff_P1 * DNA_1B10)) / nucleus);
    return y;
}
__device__ PRECISION function_4_DNA5(PRECISION DNA_100,PRECISION DNA_101,PRECISION Koff_NG1,PRECISION Kon_NG1,PRECISION S1,PRECISION nucleus){
    PRECISION y = 0.0;
    y=(((Kon_NG1 * (DNA_100 * S1)) - (Koff_NG1 * DNA_101)) / nucleus);
    return y;
}
__device__ PRECISION function_4_DNA50(PRECISION DNA_011,PRECISION DNA_01B1,PRECISION Koff_P1,PRECISION Kon_P1,PRECISION nucleus){
    PRECISION y = 0.0;
    y=(((Kon_P1 * DNA_011) - (Koff_P1 * DNA_01B1)) / nucleus);
    return y;
}
__device__ PRECISION function_4_DNA51(PRECISION DNA_111,PRECISION DNA_11B1,PRECISION Koff_P1,PRECISION Kon_P1,PRECISION nucleus){
    PRECISION y = 0.0;
    y=(((Kon_P1 * DNA_111) - (Koff_P1 * DNA_11B1)) / nucleus);
    return y;
}
__device__ PRECISION function_4_DNA52(PRECISION DNA_111,PRECISION DNA_1B11,PRECISION Koff_P1,PRECISION Kon_P1,PRECISION nucleus){
    PRECISION y = 0.0;
    y=(((Kon_P1 * DNA_111) - (Koff_P1 * DNA_1B11)) / nucleus);
    return y;
}
__device__ PRECISION function_4_DNA53(PRECISION DNA_11B1,PRECISION DNA_1B1B1,PRECISION Koff_P1,PRECISION Kon_P1,PRECISION nucleus){
    PRECISION y = 0.0;
    y=(((Kon_P1 * DNA_11B1) - (Koff_P1 * DNA_1B1B1)) / nucleus);
    return y;
}
__device__ PRECISION function_4_DNA54(PRECISION DNA_1B11,PRECISION DNA_1B1B1,PRECISION Koff_P1,PRECISION Kon_P1,PRECISION nucleus){
    PRECISION y = 0.0;
    y=(((Kon_P1 * DNA_1B11) - (Koff_P1 * DNA_1B1B1)) / nucleus);
    return y;
}
__device__ PRECISION function_4_DNA6(PRECISION DNA_010,PRECISION DNA_110,PRECISION Koff_NG1,PRECISION Kon_NG1,PRECISION S1,PRECISION nucleus){
    PRECISION y = 0.0;
    y=(((Kon_NG1 * (DNA_010 * S1)) - (Koff_NG1 * DNA_110)) / nucleus);
    return y;
}
__device__ PRECISION function_4_DNA7(PRECISION DNA_010,PRECISION DNA_011,PRECISION Koff_NG1,PRECISION Kon_NG1,PRECISION S1,PRECISION nucleus){
    PRECISION y = 0.0;
    y=(((Kon_NG1 * (DNA_010 * S1)) - (Koff_NG1 * DNA_011)) / nucleus);
    return y;
}
__device__ PRECISION function_4_DNA8(PRECISION DNA_001,PRECISION DNA_101,PRECISION Koff_NG1,PRECISION Kon_NG1,PRECISION S1,PRECISION nucleus){
    PRECISION y = 0.0;
    y=(((Kon_NG1 * (DNA_001 * S1)) - (Koff_NG1 * DNA_101)) / nucleus);
    return y;
}
__device__ PRECISION function_4_DNA9(PRECISION DNA_001,PRECISION DNA_011,PRECISION Koff_G1,PRECISION Kon_G1,PRECISION S1,PRECISION nucleus){
    PRECISION y = 0.0;
    y=(((Kon_G1 * (DNA_001 * S1)) - (Koff_G1 * DNA_011)) / nucleus);
    return y;
}

#endif
