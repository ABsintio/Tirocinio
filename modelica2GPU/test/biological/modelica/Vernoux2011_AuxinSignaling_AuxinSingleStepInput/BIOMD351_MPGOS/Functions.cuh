
#ifndef BIOMD351_FUNCTIONS_H
#define BIOMD351_FUNCTIONS_H

#include <iostream>

#define PRECISION double

__device__ bool gt(PRECISION x,PRECISION y){
    bool z = 0.0;
    z=x > y;
    return z;
}
__device__ PRECISION piecewise(PRECISION x,bool condition,PRECISION y){
    PRECISION z = 0.0;
    z=(condition ? x : y);
    return z;
}

#endif
