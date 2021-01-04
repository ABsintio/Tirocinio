
#ifndef BIOMD268_FUNCTIONS_H
#define BIOMD268_FUNCTIONS_H

#include <iostream>

#define PRECISION double

__device__ PRECISION MM(PRECISION Vmax,PRECISION Km,PRECISION S){
    PRECISION y = 0.0;
    y=(Vmax * (S / (Km + S)));
    return y;
}
__device__ PRECISION MM_twosubst(PRECISION Vmax,PRECISION Km1,PRECISION Km2,PRECISION S1,PRECISION S2){
    PRECISION y = 0.0;
    y=(Vmax * (S1 * (S2 / ((Km2 + S2) * (Km1 + S1)))));
    return y;
}
__device__ bool leq(PRECISION x,PRECISION y){
    bool z = 0.0;
    z=x <= y;
    return z;
}
__device__ PRECISION piecewise_3(PRECISION x,bool cond_x,PRECISION y,bool cond_y,PRECISION z,bool cond_z,PRECISION q){
    PRECISION t = 0.0;
    t=(cond_x ? x : (cond_y ? y : (cond_z ? z : q)));
    return t;
}

#endif
