
#ifndef BIOMD354_FUNCTIONS_H
#define BIOMD354_FUNCTIONS_H

#include <iostream>

#define PRECISION double

__device__ PRECISION pow(PRECISION x,PRECISION power){
    PRECISION y = 0.0;
    y=pow(x,power);
    return y;
}

#endif
