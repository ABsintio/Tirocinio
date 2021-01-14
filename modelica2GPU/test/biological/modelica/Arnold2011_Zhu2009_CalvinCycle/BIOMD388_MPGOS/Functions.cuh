
#ifndef BIOMD388_FUNCTIONS_H
#define BIOMD388_FUNCTIONS_H

#include <iostream>

#define PRECISION double

__device__ PRECISION function_1(PRECISION substrate,PRECISION Km,PRECISION V){
    PRECISION y = 0.0;
    y=(V * (substrate / (Km + substrate)));
    return y;
}
__device__ PRECISION function_2(PRECISION Vm,PRECISION s1,PRECISION s2,PRECISION K1,PRECISION K2){
    PRECISION y = 0.0;
    y=(Vm * (s1 * (s2 / ((s2 + K2) * (s1 + K1)))));
    return y;
}

#endif
