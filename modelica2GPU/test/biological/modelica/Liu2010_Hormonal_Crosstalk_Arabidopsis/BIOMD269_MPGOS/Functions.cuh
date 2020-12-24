
#ifndef BIOMD269_FUNCTIONS_H
#define BIOMD269_FUNCTIONS_H

#include <iostream>

#define PRECISION double

__device__ PRECISION function_1(PRECISION k3,PRECISION k3a,PRECISION X,PRECISION Auxin){
    PRECISION y = 0.0;
    y=((k3 + (k3a * X)) * Auxin);
    return y;
}
__device__ PRECISION function_10(PRECISION k10,PRECISION PLSp,PRECISION k10a,PRECISION Re){
    PRECISION y = 0.0;
    y=((k10 + (k10a * PLSp)) * Re);
    return y;
}
__device__ PRECISION function_12(PRECISION Re_star,PRECISION ET,PRECISION k11){
    PRECISION y = 0.0;
    y=(k11 * (Re_star * ET));
    return y;
}
__device__ PRECISION function_13(PRECISION Auxin,PRECISION CK,PRECISION k12,PRECISION k12a){
    PRECISION y = 0.0;
    y=(k12 + (k12a * (Auxin * CK)));
    return y;
}
__device__ PRECISION function_15(PRECISION ET,PRECISION k13){
    PRECISION y = 0.0;
    y=(k13 * ET);
    return y;
}
__device__ PRECISION function_16(PRECISION Re_star,PRECISION k14,PRECISION CTR1){
    PRECISION y = 0.0;
    y=(k14 * (Re_star * CTR1));
    return y;
}
__device__ PRECISION function_17(PRECISION CTR1_star,PRECISION k15){
    PRECISION y = 0.0;
    y=(k15 * CTR1_star);
    return y;
}
__device__ PRECISION function_18(PRECISION CTR1_star,PRECISION k16,PRECISION k16a){
    PRECISION y = 0.0;
    y=(k16 - (k16a * CTR1_star));
    return y;
}
__device__ PRECISION function_19(PRECISION X,PRECISION k17){
    PRECISION y = 0.0;
    y=(k17 * X);
    return y;
}
__device__ PRECISION function_2(PRECISION k1a,PRECISION X,PRECISION k1){
    PRECISION y = 0.0;
    y=(k1a / (1.0 + (X / k1)));
    return y;
}
__device__ PRECISION function_20(PRECISION Auxin,PRECISION k18a,PRECISION k18){
    PRECISION y = 0.0;
    y=(k18a / (1.0 + (Auxin / k18)));
    return y;
}
__device__ PRECISION function_21(PRECISION CK,PRECISION k19){
    PRECISION y = 0.0;
    y=(k19 * CK);
    return y;
}
__device__ PRECISION function_3(PRECISION k2,PRECISION k2a,PRECISION ET,PRECISION CK,PRECISION k2b,PRECISION PLSp,PRECISION k2c){
    PRECISION y = 0.0;
    y=(k2 + (k2a * (ET * (PLSp / ((1.0 + (CK / k2b)) * (k2c + PLSp))))));
    return y;
}
__device__ PRECISION function_4(PRECISION k4,PRECISION Auxin,PRECISION Ra){
    PRECISION y = 0.0;
    y=(k4 * (Auxin * Ra));
    return y;
}
__device__ PRECISION function_6(PRECISION k6,PRECISION Ra_star,PRECISION ET,PRECISION k6a){
    PRECISION y = 0.0;
    y=(k6 * (Ra_star / (1.0 + (ET / k6a))));
    return y;
}
__device__ PRECISION function_7(PRECISION k7,PRECISION PLSm){
    PRECISION y = 0.0;
    y=(k7 * PLSm);
    return y;
}
__device__ PRECISION function_8(PRECISION k8,PRECISION PLSm){
    PRECISION y = 0.0;
    y=(k8 * PLSm);
    return y;
}
__device__ PRECISION function_9(PRECISION k9,PRECISION PLSp){
    PRECISION y = 0.0;
    y=(k9 * PLSp);
    return y;
}

#endif
