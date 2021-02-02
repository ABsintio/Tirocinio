
#ifndef BIOMD552_FUNCTIONS_H
#define BIOMD552_FUNCTIONS_H

#include <iostream>

#define PRECISION double

__device__ PRECISION Decrease_in_the_extracellular_concentration_of_beta_amyloid_0(PRECISION k4,PRECISION b);
__device__ PRECISION Effect_of_extracellular_ACh_0(PRECISION k3,PRECISION a);
__device__ PRECISION Loss_of_intracellular_choline_0(PRECISION k1,PRECISION a,PRECISION b);

__device__ PRECISION Decrease_in_the_extracellular_concentration_of_beta_amyloid_0(PRECISION k4,PRECISION b){
    PRECISION y = 0.0;
    y=(k4 * b);
    return y;
}
__device__ PRECISION Effect_of_extracellular_ACh_0(PRECISION k3,PRECISION a){
    PRECISION y = 0.0;
    y=(k3 * a);
    return y;
}
__device__ PRECISION Loss_of_intracellular_choline_0(PRECISION k1,PRECISION a,PRECISION b){
    PRECISION y = 0.0;
    y=(k1 * (a * b));
    return y;
}

#endif
