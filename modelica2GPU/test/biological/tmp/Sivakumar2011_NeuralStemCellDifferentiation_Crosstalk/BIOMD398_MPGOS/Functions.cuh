
#ifndef BIOMD398_FUNCTIONS_H
#define BIOMD398_FUNCTIONS_H

#include <iostream>

#define PRECISION double

__device__ PRECISION sqrt(PRECISION x){
    PRECISION y = 0.0;
    y=pow(x,0.5);
    return y;
}

#endif
