
#ifndef BIOMD569_FUNCTIONS_H
#define BIOMD569_FUNCTIONS_H

#include <iostream>

#define PRECISION double

__device__ PRECISION Ligand_Binding_1(PRECISION k,PRECISION R,PRECISION L);
__device__ PRECISION Ligand_Binding_2(PRECISION k,PRECISION R,PRECISION L);
__device__ PRECISION Ligand_Binding_3(PRECISION k,PRECISION R,PRECISION L);
__device__ PRECISION Ligand_Binding_4(PRECISION k,PRECISION R,PRECISION L);
__device__ PRECISION Ligand_Unbinding_1(PRECISION k,PRECISION R);
__device__ PRECISION Ligand_Unbinding_2(PRECISION k,PRECISION R);
__device__ PRECISION Ligand_Unbinding_3(PRECISION k,PRECISION R);
__device__ PRECISION Ligand_Unbinding_4(PRECISION k,PRECISION R);

__device__ PRECISION Ligand_Binding_1(PRECISION k,PRECISION R,PRECISION L){
    PRECISION y = 0.0;
    y=(4.0 * (k * (R * L)));
    return y;
}
__device__ PRECISION Ligand_Binding_2(PRECISION k,PRECISION R,PRECISION L){
    PRECISION y = 0.0;
    y=(3.0 * (k * (R * L)));
    return y;
}
__device__ PRECISION Ligand_Binding_3(PRECISION k,PRECISION R,PRECISION L){
    PRECISION y = 0.0;
    y=(2.0 * (k * (R * L)));
    return y;
}
__device__ PRECISION Ligand_Binding_4(PRECISION k,PRECISION R,PRECISION L){
    PRECISION y = 0.0;
    y=(k * (R * L));
    return y;
}
__device__ PRECISION Ligand_Unbinding_1(PRECISION k,PRECISION R){
    PRECISION y = 0.0;
    y=(k * R);
    return y;
}
__device__ PRECISION Ligand_Unbinding_2(PRECISION k,PRECISION R){
    PRECISION y = 0.0;
    y=(2.0 * (k * R));
    return y;
}
__device__ PRECISION Ligand_Unbinding_3(PRECISION k,PRECISION R){
    PRECISION y = 0.0;
    y=(3.0 * (k * R));
    return y;
}
__device__ PRECISION Ligand_Unbinding_4(PRECISION k,PRECISION R){
    PRECISION y = 0.0;
    y=(4.0 * (k * R));
    return y;
}

#endif
