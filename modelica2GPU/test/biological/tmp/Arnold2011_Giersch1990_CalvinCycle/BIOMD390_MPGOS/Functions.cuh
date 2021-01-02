
#ifndef BIOMD390_FUNCTIONS_H
#define BIOMD390_FUNCTIONS_H

#include <iostream>

#define PRECISION double

__device__ PRECISION function_10(PRECISION Vm,PRECISION s1,PRECISION s2,PRECISION K1,PRECISION K2){
    PRECISION y = 0.0;
    y=(Vm * (s1 * (s2 / ((s2 + K2) * (s1 + K1)))));
    return y;
}
__device__ PRECISION function_5(PRECISION k,PRECISION E,PRECISION S,PRECISION K){
    PRECISION y = 0.0;
    y=(0.5 * (k * (E + (S + (K - sqrt((pow((E + (S + K)),2.0) + (-4.0 * (E * S)))))))));
    return y;
}
__device__ PRECISION function_6(PRECISION Vm,PRECISION S1,PRECISION S2,PRECISION P1,PRECISION P2,PRECISION P3,PRECISION k,PRECISION K1,PRECISION K2){
    PRECISION y = 0.0;
    y=(Vm * (((S1 * S2) - (P1 * (P2 * (P3 / k)))) / (K1 + ((S1 * (S2 * (K1 / K2))) + (P1 * (P2 * (P3 / k)))))));
    return y;
}
__device__ PRECISION function_7(PRECISION Vm,PRECISION S,PRECISION K){
    PRECISION y = 0.0;
    y=(Vm * (S / (S + K)));
    return y;
}
__device__ PRECISION function_8(PRECISION Vm,PRECISION S1,PRECISION S2,PRECISION K1,PRECISION K2,PRECISION K3,PRECISION R){
    PRECISION y = 0.0;
    y=(Vm * (S1 * (S2 / ((K2 * (K1 + S2)) + ((S1 * S2) + (K3 * R))))));
    return y;
}
__device__ PRECISION function_9(PRECISION S1,PRECISION S2,PRECISION P1,PRECISION P2,PRECISION K2,PRECISION K1,PRECISION Vm){
    PRECISION y = 0.0;
    y=(Vm * (((S1 * S2) - (P1 * P2)) / (((S1 + P1) * K2) + (K1 * (S2 + (P2 + (K2 * (((S1 / K1) + (P2 / K2)) * ((S2 / K2) + (P1 / K1))))))))));
    return y;
}

#endif
