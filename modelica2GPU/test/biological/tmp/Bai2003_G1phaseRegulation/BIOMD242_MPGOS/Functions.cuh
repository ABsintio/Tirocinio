
#ifndef BIOMD242_FUNCTIONS_H
#define BIOMD242_FUNCTIONS_H

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

__device__ PRECISION Mass_Action_2_1(PRECISION k1,PRECISION S1,PRECISION S2){
    PRECISION y = 0.0;
    y=(k1 * (S1 * S2));
    return y;
}

#endif
