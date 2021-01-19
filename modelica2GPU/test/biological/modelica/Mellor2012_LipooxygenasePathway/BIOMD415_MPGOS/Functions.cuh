
#ifndef BIOMD415_FUNCTIONS_H
#define BIOMD415_FUNCTIONS_H

#include <iostream>

#define PRECISION double

__device__ PRECISION function_1(PRECISION substrate,PRECISION Km,PRECISION V){
    PRECISION y = 0.0;
    y=(V * (substrate / (Km + substrate)));
    return y;
}

#endif
