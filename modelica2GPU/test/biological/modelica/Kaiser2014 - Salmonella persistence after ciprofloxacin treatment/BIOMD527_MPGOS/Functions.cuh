
#ifndef BIOMD527_FUNCTIONS_H
#define BIOMD527_FUNCTIONS_H

#include <iostream>

#define PRECISION double

__device__ bool geq(PRECISION x,PRECISION y);
__device__ bool gt(PRECISION x,PRECISION y);
__device__ bool leq(PRECISION x,PRECISION y);
__device__ PRECISION piecewise(PRECISION x_1,bool condition_1,PRECISION x_2,bool condition_2,PRECISION x_3,bool condition_3,PRECISION x_4,bool condition_4);

__device__ bool geq(PRECISION x,PRECISION y){
    bool z = 0.0;
    z=x >= y;
    return z;
}
__device__ bool gt(PRECISION x,PRECISION y){
    bool z = 0.0;
    z=x > y;
    return z;
}
__device__ bool leq(PRECISION x,PRECISION y){
    bool z = 0.0;
    z=x <= y;
    return z;
}
__device__ PRECISION piecewise(PRECISION x_1,bool condition_1,PRECISION x_2,bool condition_2,PRECISION x_3,bool condition_3,PRECISION x_4,bool condition_4){
    PRECISION z = 0.0;
    if (condition_1){
        z=x_1;
    } else if (condition_2) {
        z=x_2;
    } else if (condition_3) {
        z=x_3;
    } else if (condition_4) {
        z=x_4;
    } 

    return z;
}

#endif
