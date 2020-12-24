
#ifndef BIOMD329_FUNCTIONS_H
#define BIOMD329_FUNCTIONS_H

#include <iostream>

#define PRECISION double

__device__ PRECISION Constant_flux__irreversible(PRECISION v){
    PRECISION y = 0.0;
    y=v;
    return y;
}
__device__ PRECISION Henri_Michaelis_Menten__irreversible(PRECISION substrate,PRECISION Km,PRECISION V){
    PRECISION y = 0.0;
    y=(V * (substrate / (Km + substrate)));
    return y;
}
__device__ PRECISION Irr_Michaelis_Menten__enzyme__userdefined(PRECISION V,PRECISION E,PRECISION S,PRECISION Km){
    PRECISION y = 0.0;
    y=(V * (E * (S / (Km + S))));
    return y;
}
__device__ PRECISION linear_activation(PRECISION constante,PRECISION Activator){
    PRECISION y = 0.0;
    y=(constante * Activator);
    return y;
}

#endif
