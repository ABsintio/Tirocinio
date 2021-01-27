
#ifndef BIOMD573_FUNCTIONS_H
#define BIOMD573_FUNCTIONS_H

#include <iostream>

#define PRECISION double

__device__ PRECISION Michaellis_Menten(PRECISION substrate,PRECISION Km,PRECISION Vmax);

__device__ PRECISION Michaellis_Menten(PRECISION substrate,PRECISION Km,PRECISION Vmax){
    PRECISION y = 0.0;
    y=(Vmax * (substrate / (Km + substrate)));
    return y;
}

#endif
