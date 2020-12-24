
#ifndef BIOMD303_FUNCTIONS_H
#define BIOMD303_FUNCTIONS_H

#include <iostream>

#define PRECISION double

__device__ PRECISION function_1(PRECISION k,PRECISION E,PRECISION S,PRECISION Km){
    PRECISION y = 0.0;
    y=(k * (E * (S / (Km + S))));
    return y;
}

#endif
