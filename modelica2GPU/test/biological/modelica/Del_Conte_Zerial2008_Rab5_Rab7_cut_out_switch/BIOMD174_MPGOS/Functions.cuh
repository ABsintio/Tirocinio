
#ifndef BIOMD174_FUNCTIONS_H
#define BIOMD174_FUNCTIONS_H

#include <iostream>

#define PRECISION double

__device__ PRECISION picewise(PRECISION *values, bool *conditions, size_t n) {
    int true_index = 0;
    for (;true_index < n; true_index++){
        if (conditions[true_index]) {
            break;
        }
    }
    return values[true_index];
}

__device__ PRECISION extraction(PRECISION kminus1,PRECISION r){
    PRECISION y = 0.0;
    y=(kminus1 * r);
    return y;
}
__device__ PRECISION hill_act(PRECISION r,PRECISION ke,PRECISION R,PRECISION h,PRECISION kg){
    PRECISION y = 0.0;
    y=(r * (ke * (pow(R,h) / (kg + pow(R,h)))));
    return y;
}
__device__ PRECISION hydrolysis(PRECISION kh,PRECISION R){
    PRECISION y = 0.0;
    y=(kh * R);
    return y;
}
__device__ PRECISION sig_act(PRECISION ke,PRECISION r,PRECISION kg,PRECISION R,PRECISION kf){
    PRECISION y = 0.0;
    y=(ke * (r / (1.0 + pow(2.718281828459045,((kg - R) * kf)))));
    return y;
}
__device__ PRECISION sig_act_t(PRECISION r,PRECISION ke,PRECISION t,PRECISION kg,PRECISION R,PRECISION kf){
    PRECISION y = 0.0;
    y=(r * (ke * (t / ((1.0 + pow(2.718281828459045,((kg - R) * kf))) * (100.0 + t)))));
    return y;
}

#endif
