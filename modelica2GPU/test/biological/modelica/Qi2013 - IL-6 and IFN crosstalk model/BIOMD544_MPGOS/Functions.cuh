
#ifndef BIOMD544_FUNCTIONS_H
#define BIOMD544_FUNCTIONS_H

#include <iostream>

#define PRECISION double

__device__ PRECISION function_1(PRECISION parameter_52,PRECISION parameter_53,PRECISION species_23);
__device__ PRECISION function_2(PRECISION parameter_55,PRECISION species_31);
__device__ PRECISION function_3(PRECISION substrate,PRECISION Km,PRECISION V);
__device__ PRECISION function_4(PRECISION c2,PRECISION parameter_152,PRECISION parameter_153,PRECISION species_24,PRECISION species_94,PRECISION species_95);
__device__ PRECISION function_4_reaction_n7_1(PRECISION parameter_231,PRECISION parameter_232,PRECISION species_92);
__device__ PRECISION function_5(PRECISION c2,PRECISION parameter_155,PRECISION species_94);
__device__ PRECISION function_6(PRECISION parameter_156,PRECISION parameter_157,PRECISION species_92);
__device__ PRECISION function_7(PRECISION parameter_159,PRECISION species_98);
__device__ PRECISION function_8(PRECISION c2,PRECISION parameter_169,PRECISION parameter_170,PRECISION species_102,PRECISION species_24,PRECISION species_92);
__device__ PRECISION function_9(PRECISION c2,PRECISION parameter_171,PRECISION species_102);
__device__ PRECISION function_activation(PRECISION v,PRECISION a,PRECISION b,PRECISION k);
__device__ PRECISION pow(PRECISION x,PRECISION power);

__device__ PRECISION function_1(PRECISION parameter_52,PRECISION parameter_53,PRECISION species_23){
    PRECISION y = 0.0;
    y=(parameter_52 * (species_23 / (parameter_53 + species_23)));
    return y;
}
__device__ PRECISION function_2(PRECISION parameter_55,PRECISION species_31){
    PRECISION y = 0.0;
    y=(parameter_55 * species_31);
    return y;
}
__device__ PRECISION function_3(PRECISION substrate,PRECISION Km,PRECISION V){
    PRECISION y = 0.0;
    y=(V * (substrate / (Km + substrate)));
    return y;
}
__device__ PRECISION function_4(PRECISION c2,PRECISION parameter_152,PRECISION parameter_153,PRECISION species_24,PRECISION species_94,PRECISION species_95){
    PRECISION y = 0.0;
    y=(c2 * ((parameter_152 * (species_24 * species_95)) - (parameter_153 * species_94)));
    return y;
}
__device__ PRECISION function_4_reaction_n7_1(PRECISION parameter_231,PRECISION parameter_232,PRECISION species_92){
    PRECISION y = 0.0;
    y=(parameter_231 * (species_92 / (parameter_232 + species_92)));
    return y;
}
__device__ PRECISION function_5(PRECISION c2,PRECISION parameter_155,PRECISION species_94){
    PRECISION y = 0.0;
    y=(c2 * (parameter_155 * species_94));
    return y;
}
__device__ PRECISION function_6(PRECISION parameter_156,PRECISION parameter_157,PRECISION species_92){
    PRECISION y = 0.0;
    y=(parameter_156 * (species_92 / (parameter_157 + species_92)));
    return y;
}
__device__ PRECISION function_7(PRECISION parameter_159,PRECISION species_98){
    PRECISION y = 0.0;
    y=(parameter_159 * species_98);
    return y;
}
__device__ PRECISION function_8(PRECISION c2,PRECISION parameter_169,PRECISION parameter_170,PRECISION species_102,PRECISION species_24,PRECISION species_92){
    PRECISION y = 0.0;
    y=(c2 * ((parameter_169 * (species_24 * species_92)) - (parameter_170 * species_102)));
    return y;
}
__device__ PRECISION function_9(PRECISION c2,PRECISION parameter_171,PRECISION species_102){
    PRECISION y = 0.0;
    y=(c2 * (parameter_171 * species_102));
    return y;
}
__device__ PRECISION function_activation(PRECISION v,PRECISION a,PRECISION b,PRECISION k){
    PRECISION y = 0.0;
    y=(v * (a * (b / (b + k))));
    return y;
}
__device__ PRECISION pow(PRECISION x,PRECISION power){
    PRECISION y = 0.0;
    y=pow(x,power);
    return y;
}

#endif
