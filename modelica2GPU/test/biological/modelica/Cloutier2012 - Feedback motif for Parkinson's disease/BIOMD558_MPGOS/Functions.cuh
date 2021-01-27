
#ifndef BIOMD558_FUNCTIONS_H
#define BIOMD558_FUNCTIONS_H

#include <iostream>

#define PRECISION double

__device__ PRECISION V1(PRECISION k1,PRECISION Sx,PRECISION d,PRECISION S,PRECISION k2);
__device__ PRECISION V2_4(PRECISION k,PRECISION S,PRECISION Sx);
__device__ PRECISION V3(PRECISION k,PRECISION S,PRECISION Sx);
__device__ bool gt(PRECISION x,PRECISION y);
__device__ bool lt(PRECISION x,PRECISION y);
__device__ PRECISION piecewise(PRECISION x,bool condition,PRECISION y);

__device__ PRECISION V1(PRECISION k1,PRECISION Sx,PRECISION d,PRECISION S,PRECISION k2){
    PRECISION y = 0.0;
    y=(k1 * (1.0 + (Sx + (d * (pow((S / k2),4.0) / (1.0 + pow((S / k2),4.0)))))));
    return y;
}
__device__ PRECISION V2_4(PRECISION k,PRECISION S,PRECISION Sx){
    PRECISION y = 0.0;
    y=(k * (S * Sx));
    return y;
}
__device__ PRECISION V3(PRECISION k,PRECISION S,PRECISION Sx){
    PRECISION y = 0.0;
    y=(k * (S * Sx));
    return y;
}
__device__ bool gt(PRECISION x,PRECISION y){
    bool z = 0.0;
    z=x > y;
    return z;
}
__device__ bool lt(PRECISION x,PRECISION y){
    bool z = 0.0;
    z=x < y;
    return z;
}
__device__ PRECISION piecewise(PRECISION x,bool condition,PRECISION y){
    PRECISION z = 0.0;
    z=(condition ? x : y);
    return z;
}

#endif
