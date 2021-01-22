
#ifndef BIOMD440_FUNCTIONS_H
#define BIOMD440_FUNCTIONS_H

#include <iostream>

#define PRECISION double

__device__ PRECISION function_4_10_1(PRECISION K10,PRECISION k10,PRECISION species_10,PRECISION species_6,PRECISION species_7){
    PRECISION y = 0.0;
    y=(k10 * (species_10 * (species_6 / ((1.0 + ((species_7 + species_6) / K10)) * K10))));
    return y;
}
__device__ PRECISION function_4_1_1(PRECISION K1,PRECISION KI,PRECISION V1,PRECISION species_0,PRECISION species_7){
    PRECISION y = 0.0;
    y=(V1 * (species_0 / (((1.0 + (species_7 / KI)) * (1.0 + (species_0 / K1))) * K1)));
    return y;
}
__device__ PRECISION function_4_2_1(PRECISION K2,PRECISION k2,PRECISION species_1,PRECISION species_8){
    PRECISION y = 0.0;
    y=(k2 * (species_8 * (species_1 / ((1.0 + (species_1 / K2)) * K2))));
    return y;
}
__device__ PRECISION function_4_3_1(PRECISION A,PRECISION K3,PRECISION Ka,PRECISION k3,PRECISION species_1,PRECISION species_2,PRECISION species_3,PRECISION species_7){
    PRECISION y = 0.0;
    y=(k3 * (species_1 * (species_2 * ((1.0 + (A * (species_7 / Ka))) / (((1.0 + (species_7 / Ka)) * K3) * (1.0 + ((species_2 + species_3) / K3)))))));
    return y;
}
__device__ PRECISION function_4_4_1(PRECISION A,PRECISION K4,PRECISION Ka,PRECISION k4,PRECISION species_1,PRECISION species_2,PRECISION species_3,PRECISION species_7){
    PRECISION y = 0.0;
    y=(k4 * (species_1 * (species_3 * ((1.0 + (A * (species_7 / Ka))) / (((1.0 + (species_7 / Ka)) * K4) * (1.0 + ((species_3 + species_2) / K4)))))));
    return y;
}
__device__ PRECISION function_4_5_1(PRECISION K5,PRECISION k5,PRECISION species_3,PRECISION species_4,PRECISION species_9){
    PRECISION y = 0.0;
    y=(k5 * (species_9 * (species_4 / ((1.0 + ((species_4 + species_3) / K5)) * K5))));
    return y;
}
__device__ PRECISION function_4_6_1(PRECISION K6,PRECISION k6,PRECISION species_3,PRECISION species_4,PRECISION species_9){
    PRECISION y = 0.0;
    y=(k6 * (species_9 * (species_3 / ((1.0 + ((species_4 + species_3) / K6)) * K6))));
    return y;
}
__device__ PRECISION function_4_7_1(PRECISION K7,PRECISION k7,PRECISION species_4,PRECISION species_5,PRECISION species_6){
    PRECISION y = 0.0;
    y=(k7 * (species_4 * (species_5 / ((1.0 + ((species_5 + species_6) / K7)) * K7))));
    return y;
}
__device__ PRECISION function_4_8_1(PRECISION K8,PRECISION k8,PRECISION species_4,PRECISION species_5,PRECISION species_6){
    PRECISION y = 0.0;
    y=(k8 * (species_4 * (species_6 / ((1.0 + ((species_5 + species_6) / K8)) * K8))));
    return y;
}
__device__ PRECISION function_4_9_1(PRECISION K9,PRECISION k9,PRECISION species_10,PRECISION species_6,PRECISION species_7){
    PRECISION y = 0.0;
    y=(k9 * (species_10 * (species_7 / ((1.0 + ((species_7 + species_6) / K9)) * K9))));
    return y;
}

#endif
