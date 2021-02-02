
#ifndef BIOMD576_FUNCTIONS_H
#define BIOMD576_FUNCTIONS_H

#include <iostream>

#define PRECISION double

__device__ PRECISION LigandDegrOld(PRECISION Act,PRECISION Vm,PRECISION S1,PRECISION Kms1,PRECISION S2,PRECISION Kms2,PRECISION S3,PRECISION Kms3);
__device__ PRECISION mRNA(PRECISION S_RNA,PRECISION Activator,PRECISION Ka);
__device__ PRECISION ptotein(PRECISION Ka,PRECISION S_PROT,PRECISION Activator);

__device__ PRECISION LigandDegrOld(PRECISION Act,PRECISION Vm,PRECISION S1,PRECISION Kms1,PRECISION S2,PRECISION Kms2,PRECISION S3,PRECISION Kms3){
    PRECISION y = 0.0;
    y=(Act * (Vm * (S1 / (Kms1 * (1.0 + ((S1 / Kms1) + ((S2 / Kms2) + (S3 / Kms3))))))));
    return y;
}
__device__ PRECISION mRNA(PRECISION S_RNA,PRECISION Activator,PRECISION Ka){
    PRECISION y = 0.0;
    y=(Ka * (S_RNA * Activator));
    return y;
}
__device__ PRECISION ptotein(PRECISION Ka,PRECISION S_PROT,PRECISION Activator){
    PRECISION y = 0.0;
    y=(Ka * (S_PROT * Activator));
    return y;
}

#endif
