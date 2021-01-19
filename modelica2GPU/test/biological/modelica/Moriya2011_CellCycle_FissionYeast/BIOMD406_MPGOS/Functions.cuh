
#ifndef BIOMD406_FUNCTIONS_H
#define BIOMD406_FUNCTIONS_H

#include <iostream>

#define PRECISION double

__device__ PRECISION pow(PRECISION x,PRECISION power){
    PRECISION y = 0.0;
    y=pow(x,power);
    return y;
}
__device__ PRECISION sqrt(PRECISION x){
    PRECISION y = 0.0;
    y=pow(x,0.5);
    return y;
}

#endif
