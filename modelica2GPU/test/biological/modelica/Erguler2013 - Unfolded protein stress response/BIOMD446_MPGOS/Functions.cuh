
#ifndef BIOMD446_FUNCTIONS_H
#define BIOMD446_FUNCTIONS_H

#include <iostream>

#define PRECISION double

__device__ PRECISION EMM(PRECISION St,PRECISION Et,PRECISION Km,PRECISION kcat){
    PRECISION y = 0.0;
    y=(0.5 * (kcat * (St + (Et + (Km - sqrt((pow((St + (Et + Km)),2.0) + (-4.0 * (St * Et)))))))));
    return y;
}
__device__ PRECISION Gamma(PRECISION v,PRECISION u,PRECISION J,PRECISION K){
    PRECISION y = 0.0;
    y=(v + ((v * J) + ((u * K) - u)));
    return y;
}
__device__ bool eq(PRECISION x,PRECISION y){
    bool z = 0.0;
    z=abs((x - y)) <= 1e-07;
    return z;
}
__device__ PRECISION fGK(PRECISION v,PRECISION u,PRECISION J,PRECISION K){
    PRECISION y = 0.0;
    y=((eq(v,0.0) && eq(u,0.0)) ? 0.0 : (2.0 * (u * (K / (1.414213562373095 + Gamma(v,u,J,K))))));
    return y;
}
__device__ PRECISION piecewise(PRECISION x,bool condition,PRECISION y){
    PRECISION z = 0.0;
    z=(condition ? x : y);
    return z;
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
