
#ifndef BIOMD489_FUNCTIONS_H
#define BIOMD489_FUNCTIONS_H

#include <iostream>

#define PRECISION double

__device__ PRECISION function_1(PRECISION k1,PRECISION Enzyme,PRECISION Substrate1,PRECISION Substrate2,PRECISION k2,PRECISION Product){
    PRECISION y = 0.0;
    y=((k1 * (Enzyme * (Substrate1 * Substrate2))) - (k2 * Product));
    return y;
}
__device__ PRECISION function_2(PRECISION k,PRECISION Enzyme,PRECISION Substrate,PRECISION Km){
    PRECISION y = 0.0;
    y=(k * (Enzyme * (Substrate / (Km + Substrate))));
    return y;
}
__device__ PRECISION pow(PRECISION x,PRECISION power){
    PRECISION y = 0.0;
    y=pow(x,power);
    return y;
}

#endif
