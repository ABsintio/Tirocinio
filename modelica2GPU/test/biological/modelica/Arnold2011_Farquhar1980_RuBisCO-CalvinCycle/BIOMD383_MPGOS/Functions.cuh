
#ifndef BIOMD383_FUNCTIONS_H
#define BIOMD383_FUNCTIONS_H

#include <iostream>

#define PRECISION double

__device__ PRECISION NADPH_production(PRECISION j,PRECISION S1,PRECISION Nt){
    PRECISION y = 0.0;
    y=(0.5 * (j * (S1 / Nt)));
    return y;
}
__device__ PRECISION PGA_consumption(PRECISION S1,PRECISION Rp,PRECISION Nt,PRECISION kc,PRECISION E,PRECISION R){
    PRECISION y = 0.0;
    y=(S1 * (R * (kc * (E / (Nt * Rp)))));
    return y;
}
__device__ PRECISION carboxylation(PRECISION kc,PRECISION S2,PRECISION K,PRECISION R,PRECISION KI,PRECISION E,PRECISION S1){
    PRECISION y = 0.0;
    y=(0.5 * ((kc * (S2 * ((E + S1) / (S2 + (K * (1.0 + (R / KI))))))) - abs((kc * (S2 * ((E - S1) / (S2 + (K * (1.0 + (R / KI))))))))));
    return y;
}
__device__ PRECISION oxygenation(PRECISION phi,PRECISION kc,PRECISION S2,PRECISION K,PRECISION R,PRECISION KI,PRECISION E,PRECISION S1){
    PRECISION y = 0.0;
    y=(0.5 * (phi * ((kc * (S2 * ((E + S1) / (S2 + (K * (1.0 + (R / KI))))))) - abs((kc * (S2 * ((E - S1) / (S2 + (K * (1.0 + (R / KI)))))))))));
    return y;
}

#endif
