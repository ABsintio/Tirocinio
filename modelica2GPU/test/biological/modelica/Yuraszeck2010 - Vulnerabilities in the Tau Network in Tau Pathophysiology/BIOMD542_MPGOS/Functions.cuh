
#ifndef BIOMD542_FUNCTIONS_H
#define BIOMD542_FUNCTIONS_H

#include <iostream>

#define PRECISION double

__device__ PRECISION Henri_Michaelis_Menten__irreversible(PRECISION substrate,PRECISION Km,PRECISION V);
__device__ PRECISION Mass_Action(PRECISION k1,PRECISION x1,PRECISION x2);
__device__ PRECISION Mass_Action_(PRECISION K1,PRECISION x1,PRECISION x2,PRECISION x3);
__device__ PRECISION Michaelis_Menten(PRECISION k1,PRECISION x1,PRECISION x2,PRECISION k2);
__device__ PRECISION Nucleation(PRECISION k1,PRECISION x1);

__device__ PRECISION Henri_Michaelis_Menten__irreversible(PRECISION substrate,PRECISION Km,PRECISION V){
    PRECISION y = 0.0;
    y=(V * (substrate / (Km + substrate)));
    return y;
}
__device__ PRECISION Mass_Action(PRECISION k1,PRECISION x1,PRECISION x2){
    PRECISION y = 0.0;
    y=(k1 * (x1 * x2));
    return y;
}
__device__ PRECISION Mass_Action_(PRECISION K1,PRECISION x1,PRECISION x2,PRECISION x3){
    PRECISION y = 0.0;
    y=(K1 * (x1 * (x2 * x3)));
    return y;
}
__device__ PRECISION Michaelis_Menten(PRECISION k1,PRECISION x1,PRECISION x2,PRECISION k2){
    PRECISION y = 0.0;
    y=(k1 * (x1 * (x2 / (k2 + x1))));
    return y;
}
__device__ PRECISION Nucleation(PRECISION k1,PRECISION x1){
    PRECISION y = 0.0;
    y=(k1 * pow(x1,2.0));
    return y;
}

#endif
