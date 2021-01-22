
#ifndef BIOMD476_FUNCTIONS_H
#define BIOMD476_FUNCTIONS_H

#include <iostream>

#define PRECISION double

__device__ PRECISION LightFunction(PRECISION t,PRECISION lightOffset,PRECISION lightAmplitude,PRECISION phase,PRECISION photoPeriod,PRECISION cyclePeriod,PRECISION twilightPeriod){
    PRECISION y = 0.0;
    y=(lightOffset + ((lightAmplitude * ((0.5 * (1.0 + tanh((cyclePeriod * ((((t + phase) / cyclePeriod) - floor((floor((t + phase)) / cyclePeriod))) / twilightPeriod))))) + (-0.5 * (1.0 + tanh((((cyclePeriod * (((t + phase) / cyclePeriod) - floor((floor((t + phase)) / cyclePeriod)))) - photoPeriod) / twilightPeriod)))))) + (0.5 * (lightAmplitude * (1.0 + tanh((((cyclePeriod * (((t + phase) / cyclePeriod) - floor((floor((t + phase)) / cyclePeriod)))) - cyclePeriod) / twilightPeriod)))))));
    return y;
}
__device__ PRECISION function_1(PRECISION V,PRECISION substrate,PRECISION Km){
    PRECISION y = 0.0;
    y=(V * (substrate / (Km + substrate)));
    return y;
}
__device__ PRECISION pow(PRECISION x,PRECISION power){
    PRECISION y = 0.0;
    y=pow(x,power);
    return y;
}

#endif
