
#ifndef BIOMD530_FUNCTIONS_H
#define BIOMD530_FUNCTIONS_H

#include <iostream>

#define PRECISION double

__device__ PRECISION function_1(PRECISION k_syn_mRNA,PRECISION species_7);
__device__ PRECISION function_2(PRECISION k_syn_miRNA_1,PRECISION species_8);
__device__ PRECISION function_3(PRECISION k_syn_miRNA_2,PRECISION species_9);
__device__ PRECISION function_4(PRECISION k_syn_prot,PRECISION species_1);

__device__ PRECISION function_1(PRECISION k_syn_mRNA,PRECISION species_7){
    PRECISION y = 0.0;
    y=(k_syn_mRNA * species_7);
    return y;
}
__device__ PRECISION function_2(PRECISION k_syn_miRNA_1,PRECISION species_8){
    PRECISION y = 0.0;
    y=(k_syn_miRNA_1 * species_8);
    return y;
}
__device__ PRECISION function_3(PRECISION k_syn_miRNA_2,PRECISION species_9){
    PRECISION y = 0.0;
    y=(k_syn_miRNA_2 * species_9);
    return y;
}
__device__ PRECISION function_4(PRECISION k_syn_prot,PRECISION species_1){
    PRECISION y = 0.0;
    y=(k_syn_prot * species_1);
    return y;
}

#endif
