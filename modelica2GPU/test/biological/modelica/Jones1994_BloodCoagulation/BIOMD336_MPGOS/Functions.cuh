
#ifndef BIOMD336_FUNCTIONS_H
#define BIOMD336_FUNCTIONS_H

#include <iostream>

#define PRECISION double

__device__ PRECISION function_4_VIIIa_IXa_degradation_2(PRECISION I,PRECISION VIIIa_IXa,PRECISION compartment_1){
    PRECISION y = 0.0;
    y=(((compartment_1 * abs((I - VIIIa_IXa))) + (I - VIIIa_IXa)) / compartment_1);
    return y;
}

#endif
