
#ifndef BIOMD322_FUNCTIONS_H
#define BIOMD322_FUNCTIONS_H

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

__device__ PRECISION function_1(PRECISION V,PRECISION Shalve,PRECISION h,PRECISION substrate){
    PRECISION y = 0.0;
    y=(V / (pow(Shalve,h) + pow(substrate,h)));
    return y;
}
__device__ PRECISION function_2(PRECISION substrate,PRECISION Shalve,PRECISION V,PRECISION h){
    PRECISION y = 0.0;
    y=(V * (pow(substrate,h) / (pow(Shalve,h) + pow(substrate,h))));
    return y;
}

#endif
