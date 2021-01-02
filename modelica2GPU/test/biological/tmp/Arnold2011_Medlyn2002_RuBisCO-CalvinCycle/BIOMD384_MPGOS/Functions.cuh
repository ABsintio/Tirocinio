
#ifndef BIOMD384_FUNCTIONS_H
#define BIOMD384_FUNCTIONS_H

#include <iostream>

#define PRECISION double

__device__ PRECISION NADPH_production(PRECISION j,PRECISION S1,PRECISION Nt){
    PRECISION y = 0.0;
    y=(0.5 * (j * (S1 / Nt)));
    return y;
}
__device__ PRECISION PGA_consumption(PRECISION S1,PRECISION Rp,PRECISION R,PRECISION Nt,PRECISION Vc){
    PRECISION y = 0.0;
    y=(S1 * (R * (Vc / (Rp * Nt))));
    return y;
}
__device__ PRECISION carboxylation(PRECISION Vc,PRECISION Vj){
    PRECISION y = 0.0;
    y=(0.5 * (Vc + (Vj - abs((Vc - Vj)))));
    return y;
}
__device__ PRECISION oxygenation(PRECISION phi,PRECISION Vc,PRECISION Vj){
    PRECISION y = 0.0;
    y=(0.5 * (phi * (Vc + (Vj - abs((Vc - Vj))))));
    return y;
}

#endif
