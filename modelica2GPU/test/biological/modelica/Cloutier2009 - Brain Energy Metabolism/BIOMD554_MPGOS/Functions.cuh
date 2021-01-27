
#ifndef BIOMD554_FUNCTIONS_H
#define BIOMD554_FUNCTIONS_H

#include <iostream>

#define PRECISION double

__device__ bool geq(PRECISION x,PRECISION y);
__device__ bool leq(PRECISION x,PRECISION y);
__device__ PRECISION piecewise(PRECISION x,bool condition,PRECISION y);
__device__ PRECISION pow(PRECISION x,PRECISION power);

__device__ bool geq(PRECISION x,PRECISION y){
    bool z = 0.0;
    z=x >= y;
    return z;
}
__device__ bool leq(PRECISION x,PRECISION y){
    bool z = 0.0;
    z=x <= y;
    return z;
}
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
