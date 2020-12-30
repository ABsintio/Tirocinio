
#ifndef BIOMD366_FUNCTIONS_H
#define BIOMD366_FUNCTIONS_H

#include <iostream>

#define PRECISION double

__device__ PRECISION HenriMichaelisMenten_irreversible_kcat(PRECISION kcat,PRECISION enzyme,PRECISION substrate,PRECISION Km){
    PRECISION y = 0.0;
    y=(kcat * (enzyme * (substrate / (Km + substrate))));
    return y;
}

#endif
