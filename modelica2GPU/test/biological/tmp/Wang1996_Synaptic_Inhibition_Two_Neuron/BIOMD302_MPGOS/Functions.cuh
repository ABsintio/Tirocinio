
#ifndef BIOMD302_FUNCTIONS_H
#define BIOMD302_FUNCTIONS_H

#include <iostream>

#define PRECISION double

__device__ PRECISION piecewise(PRECISION x,bool condition,PRECISION y){
    PRECISION z = 0.0;
    z=(condition ? x : y);
    return z;
}
__device__ PRECISION pow(PRECISION x,PRECISION power){
    PRECISION y = 0.0;
    y=pow(x,power);
    return y;
}

#endif
