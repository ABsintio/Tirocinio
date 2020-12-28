
#ifndef BIOMD342_FUNCTIONS_H
#define BIOMD342_FUNCTIONS_H

#include <iostream>

#define PRECISION double

__device__ bool compareReal(PRECISION a,PRECISION b,PRECISION absTol,PRECISION relTol){
    bool equal = 0.0;
    PRECISION diff=abs((a - b));
    equal=(diff < absTol || diff <= (max(abs(b),abs(a)) * relTol));
    return equal;
}

#endif
