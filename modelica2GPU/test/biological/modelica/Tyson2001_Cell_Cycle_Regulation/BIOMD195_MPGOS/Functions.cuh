
#ifndef BIOMD195_FUNCTIONS_H
#define BIOMD195_FUNCTIONS_H

#include <iostream>

#define PRECISION double


__device__ PRECISION pow(PRECISION x,PRECISION power){
    PRECISION y = 0.0;
    y=pow(x,power);
    return y;
}
__device__ PRECISION root(PRECISION degree,PRECISION x){
    PRECISION y = 0.0;
    y=pow(y,(1.0 / degree));
    return y;
}
__device__ PRECISION GK(PRECISION A1,PRECISION A2,PRECISION A3,PRECISION A4){
    PRECISION y = 0.0;
    y=(2.0 * (A4 * (A1 / (A2 + ((A3 * A2) + ((A4 * A1) + (root(2.0,(pow((A2 + ((A3 * A2) + ((A4 * A1) - A1))),2.0) + (-4.0 * ((A2 - A1) * (A4 * A1))))) - A1)))))));
    return y;
}

#endif
