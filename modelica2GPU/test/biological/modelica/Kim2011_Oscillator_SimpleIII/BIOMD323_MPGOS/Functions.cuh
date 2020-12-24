
#ifndef BIOMD323_FUNCTIONS_H
#define BIOMD323_FUNCTIONS_H

#include <iostream>

#define PRECISION double

__device__ PRECISION function_1(PRECISION V,PRECISION Shalve,PRECISION h,PRECISION substrate){
    PRECISION y = 0.0;
    y=(V / (pow(Shalve,h) + pow(substrate,h)));
    return y;
}
__device__ PRECISION function_3(PRECISION x,PRECISION beta){
    PRECISION y = 0.0;
    y=(x / ((1.0 + (x / beta)) * beta));
    return y;
}

#endif
