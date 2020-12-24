
#ifndef BIOMD262_FUNCTIONS_H
#define BIOMD262_FUNCTIONS_H

#include <iostream>

#define PRECISION double

__device__ PRECISION piecewise(PRECISION x,bool condition,PRECISION y){
    PRECISION z = 0.0;
    z=(condition ? x : y);
    return z;
}

#endif
