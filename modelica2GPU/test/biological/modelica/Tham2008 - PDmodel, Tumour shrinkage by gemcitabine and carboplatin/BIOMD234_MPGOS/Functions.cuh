
#ifndef BIOMD234_FUNCTIONS_H
#define BIOMD234_FUNCTIONS_H

#include <iostream>

#define PRECISION double

__device__ bool lt(PRECISION x,PRECISION y){
    bool z = 0.0;
    z=x < y;
    return z;
}
__device__ PRECISION piecewise_2(PRECISION x,bool cond_x,PRECISION y,bool cond_y,PRECISION q){
    PRECISION t = 0.0;
    t=(cond_x ? x : (cond_y ? y : q));
    return t;
}

#endif
