
#ifndef BIOMD183_FUNCTIONS_H
#define BIOMD183_FUNCTIONS_H

#include <iostream>

#define PRECISION double

__device__ PRECISION function_1(PRECISION parameter_10,PRECISION parameter_11,PRECISION species_18){
    PRECISION y = 0.0;
    y=(species_18 * (parameter_10 / pow(parameter_11,0.5)));
    return y;
}
__device__ PRECISION function_10(PRECISION parameter_13,PRECISION parameter_14,PRECISION parameter_9,PRECISION species_11){
    PRECISION y = 0.0;
    y=(species_11 * (parameter_9 * pow((parameter_13 * parameter_14),0.5)));
    return y;
}
__device__ PRECISION function_11(PRECISION parameter_10,PRECISION parameter_11,PRECISION parameter_12,PRECISION species_22){
    PRECISION y = 0.0;
    y=(species_22 * (parameter_10 / pow((parameter_11 * parameter_12),0.5)));
    return y;
}
__device__ PRECISION function_12(PRECISION parameter_10,PRECISION parameter_11,PRECISION parameter_13,PRECISION species_23){
    PRECISION y = 0.0;
    y=(species_23 * (parameter_10 / pow((parameter_11 * parameter_13),0.5)));
    return y;
}
__device__ PRECISION function_13(PRECISION parameter_10,PRECISION parameter_11,PRECISION parameter_14,PRECISION species_24){
    PRECISION y = 0.0;
    y=(species_24 * (parameter_10 / pow((parameter_11 * parameter_14),0.5)));
    return y;
}
__device__ PRECISION function_14(PRECISION parameter_10,PRECISION parameter_12,PRECISION parameter_13,PRECISION species_25){
    PRECISION y = 0.0;
    y=(species_25 * (parameter_10 / pow((parameter_12 * parameter_13),0.5)));
    return y;
}
__device__ PRECISION function_15(PRECISION parameter_10,PRECISION parameter_12,PRECISION parameter_14,PRECISION species_26){
    PRECISION y = 0.0;
    y=(species_26 * (parameter_10 / pow((parameter_12 * parameter_14),0.5)));
    return y;
}
__device__ PRECISION function_16(PRECISION parameter_10,PRECISION parameter_13,PRECISION parameter_14,PRECISION species_27){
    PRECISION y = 0.0;
    y=(species_27 * (parameter_10 / pow((parameter_13 * parameter_14),0.5)));
    return y;
}
__device__ PRECISION function_17(PRECISION parameter_11,PRECISION parameter_12,PRECISION parameter_13,PRECISION parameter_9,PRECISION species_12){
    PRECISION y = 0.0;
    y=(species_12 * (parameter_9 * pow((parameter_11 * (parameter_12 * parameter_13)),0.5)));
    return y;
}
__device__ PRECISION function_18(PRECISION parameter_11,PRECISION parameter_12,PRECISION parameter_14,PRECISION parameter_9,PRECISION species_13){
    PRECISION y = 0.0;
    y=(species_13 * (parameter_9 * pow((parameter_11 * (parameter_12 * parameter_14)),0.5)));
    return y;
}
__device__ PRECISION function_19(PRECISION parameter_11,PRECISION parameter_13,PRECISION parameter_14,PRECISION parameter_9,PRECISION species_14){
    PRECISION y = 0.0;
    y=(species_14 * (parameter_9 * pow((parameter_11 * (parameter_13 * parameter_14)),0.5)));
    return y;
}
__device__ PRECISION function_2(PRECISION parameter_10,PRECISION parameter_12,PRECISION species_19){
    PRECISION y = 0.0;
    y=(species_19 * (parameter_10 / pow(parameter_12,0.5)));
    return y;
}
__device__ PRECISION function_20(PRECISION parameter_12,PRECISION parameter_13,PRECISION parameter_14,PRECISION parameter_9,PRECISION species_15){
    PRECISION y = 0.0;
    y=(species_15 * (parameter_9 * pow((parameter_12 * (parameter_13 * parameter_14)),0.5)));
    return y;
}
__device__ PRECISION function_21(PRECISION parameter_10,PRECISION parameter_11,PRECISION parameter_12,PRECISION parameter_13,PRECISION species_28){
    PRECISION y = 0.0;
    y=(species_28 * (parameter_10 / pow((parameter_11 * (parameter_12 * parameter_13)),0.5)));
    return y;
}
__device__ PRECISION function_22(PRECISION parameter_10,PRECISION parameter_11,PRECISION parameter_12,PRECISION parameter_14,PRECISION species_29){
    PRECISION y = 0.0;
    y=(species_29 * (parameter_10 / pow((parameter_11 * (parameter_12 * parameter_14)),0.5)));
    return y;
}
__device__ PRECISION function_23(PRECISION parameter_10,PRECISION parameter_11,PRECISION parameter_13,PRECISION parameter_14,PRECISION species_30){
    PRECISION y = 0.0;
    y=(species_30 * (parameter_10 / pow((parameter_11 * (parameter_13 * parameter_14)),0.5)));
    return y;
}
__device__ PRECISION function_24(PRECISION parameter_10,PRECISION parameter_12,PRECISION parameter_13,PRECISION parameter_14,PRECISION species_31){
    PRECISION y = 0.0;
    y=(species_31 * (parameter_10 / pow((parameter_12 * (parameter_13 * parameter_14)),0.5)));
    return y;
}
__device__ PRECISION function_25(PRECISION parameter_11,PRECISION parameter_12,PRECISION parameter_13,PRECISION parameter_14,PRECISION parameter_9,PRECISION species_16){
    PRECISION y = 0.0;
    y=(species_16 * (parameter_9 * pow((parameter_11 * (parameter_12 * (parameter_13 * parameter_14))),0.5)));
    return y;
}
__device__ PRECISION function_26(PRECISION parameter_10,PRECISION parameter_11,PRECISION parameter_12,PRECISION parameter_13,PRECISION parameter_14,PRECISION species_32){
    PRECISION y = 0.0;
    y=(species_32 * (parameter_10 / pow((parameter_11 * (parameter_12 * (parameter_13 * parameter_14))),0.5)));
    return y;
}
__device__ PRECISION function_3(PRECISION parameter_10,PRECISION parameter_13,PRECISION species_20){
    PRECISION y = 0.0;
    y=(species_20 * (parameter_10 / pow(parameter_13,0.5)));
    return y;
}
__device__ PRECISION function_4(PRECISION parameter_10,PRECISION parameter_14,PRECISION species_21){
    PRECISION y = 0.0;
    y=(species_21 * (parameter_10 / pow(parameter_14,0.5)));
    return y;
}
__device__ PRECISION function_5(PRECISION parameter_11,PRECISION parameter_12,PRECISION parameter_9,PRECISION species_6){
    PRECISION y = 0.0;
    y=(species_6 * (parameter_9 * pow((parameter_11 * parameter_12),0.5)));
    return y;
}
__device__ PRECISION function_6(PRECISION parameter_11,PRECISION parameter_13,PRECISION parameter_9,PRECISION species_7){
    PRECISION y = 0.0;
    y=(species_7 * (parameter_9 * pow((parameter_11 * parameter_13),0.5)));
    return y;
}
__device__ PRECISION function_7(PRECISION parameter_11,PRECISION parameter_14,PRECISION parameter_9,PRECISION species_8){
    PRECISION y = 0.0;
    y=(species_8 * (parameter_9 * pow((parameter_11 * parameter_14),0.5)));
    return y;
}
__device__ PRECISION function_8(PRECISION parameter_12,PRECISION parameter_13,PRECISION parameter_9,PRECISION species_9){
    PRECISION y = 0.0;
    y=(species_9 * (parameter_9 * pow((parameter_12 * parameter_13),0.5)));
    return y;
}
__device__ PRECISION function_9(PRECISION parameter_12,PRECISION parameter_14,PRECISION parameter_9,PRECISION species_10){
    PRECISION y = 0.0;
    y=(species_10 * (parameter_9 * pow((parameter_12 * parameter_14),0.5)));
    return y;
}
__device__ PRECISION transition1_R_T(PRECISION ka,PRECISION b,PRECISION species){
    PRECISION y = 0.0;
    y=(species * (ka * pow(b,0.5)));
    return y;
}

#endif
