
#ifndef BIOMD387_FUNCTIONS_H
#define BIOMD387_FUNCTIONS_H

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
__device__ PRECISION carboxylation(PRECISION Vc,PRECISION Vj,PRECISION Vp){
    PRECISION y = 0.0;
    y=((0.25 * (Vc + (Vj - abs((Vc - Vj))))) + (0.5 * (Vp - abs(((0.5 * (Vc + (Vj - abs((Vc - Vj))))) - Vp)))));
    return y;
}
__device__ PRECISION oxygenation(PRECISION phi,PRECISION Vc,PRECISION Vj,PRECISION Vp){
    PRECISION y = 0.0;
    y=(0.5 * (phi * ((0.5 * (Vc + (Vj - abs((Vc - Vj))))) + (Vp - abs(((0.5 * (Vc + (Vj - abs((Vc - Vj))))) - Vp))))));
    return y;
}
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
