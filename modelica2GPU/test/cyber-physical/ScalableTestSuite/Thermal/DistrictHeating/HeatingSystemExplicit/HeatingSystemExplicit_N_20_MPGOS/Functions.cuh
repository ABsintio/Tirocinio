
#ifndef HeatingSystemExplicit_N_20_FUNCTIONS_H
#define HeatingSystemExplicit_N_20_FUNCTIONS_H

#include <iostream>

#define PRECISION double

__device__ PRECISION hist(PRECISION x,PRECISION p,PRECISION e){
    PRECISION y = 0.0;
    y=(p + (-21.09704641350211 * ((0.5 + x) * ((-0.5 + x) * (x * e)))));
    return y;
}
__device__ PRECISION sat(PRECISION x,PRECISION xmin,PRECISION xmax){
    PRECISION y = 0.0;
    y=(0.5 * ((tanh((-1.0 + (2.0 * ((x - xmin) / (xmax - xmin))))) * (xmax - xmin)) + (xmax + xmin)));
    return y;
}

#endif
