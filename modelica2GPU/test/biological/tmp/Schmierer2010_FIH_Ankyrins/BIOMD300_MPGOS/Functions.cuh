
#ifndef BIOMD300_FUNCTIONS_H
#define BIOMD300_FUNCTIONS_H

#include <iostream>

#define PRECISION double

__device__ PRECISION function_1(PRECISION v){
    PRECISION y = 0.0;
    y=v;
    return y;
}
__device__ PRECISION function_2(PRECISION kcatPH,PRECISION Ptot,PRECISION O2,PRECISION KdPH,PRECISION Htot,PRECISION HP){
    PRECISION y = 0.0;
    y=(Htot * (kcatPH * (Ptot * (O2 / ((KdPH + (Ptot + HP)) * (1.0 + O2))))));
    return y;
}
__device__ PRECISION function_3(PRECISION H,PRECISION kcatPH,PRECISION Ptot,PRECISION O2,PRECISION KdPH,PRECISION HP){
    PRECISION y = 0.0;
    y=(H * (kcatPH * (Ptot * (O2 / ((KdPH + (Ptot + HP)) * (1.0 + O2))))));
    return y;
}
__device__ PRECISION pow(PRECISION x,PRECISION power){
    PRECISION y = 0.0;
    y=pow(x,power);
    return y;
}
__device__ PRECISION vFA(PRECISION Ftot,PRECISION O2,PRECISION alpha,PRECISION A,PRECISION gamma,PRECISION Atot,PRECISION KiFA,PRECISION KcatFH){
    PRECISION y = 0.0;
    y=(A * (KcatFH * (Ftot * (O2 / ((KiFA + (A + (gamma * (Atot - A)))) * (alpha + O2))))));
    return y;
}
__device__ PRECISION vFH(PRECISION Ftot,PRECISION O2,PRECISION alpha,PRECISION H,PRECISION KiFH,PRECISION HF,PRECISION KcatFH){
    PRECISION y = 0.0;
    y=(H * (KcatFH * (Ftot * (O2 / ((KiFH + (Ftot + HF)) * (alpha + O2))))));
    return y;
}

#endif
