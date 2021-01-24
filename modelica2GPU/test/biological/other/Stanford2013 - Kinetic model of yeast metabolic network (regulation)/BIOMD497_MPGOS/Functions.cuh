
#ifndef BIOMD497_FUNCTIONS_H
#define BIOMD497_FUNCTIONS_H

#include <iostream>

#define PRECISION double

__device__ PRECISION piecewise(PRECISION x,bool condition,PRECISION y){
    PRECISION z = 0.0;
    z=(condition ? x : y);
    return z;
}

__device__ PRECISION MAX(PRECISION a,PRECISION b){
    PRECISION y = 0.0;
    y=piecewise(a,a >= b,b);
    return y;
}

__device__ PRECISION ln(PRECISION x){
    PRECISION y = 0.0;
    y=log(x);
    return y;
}

__device__ PRECISION function_1(PRECISION Keq_r_0005,PRECISION Vmax_r_0005,PRECISION intracellular,PRECISION kmp_s_0001r_0005,PRECISION kmp_s_0763_br_0005,PRECISION kmp_s_1411r_0005,PRECISION kms_s_1415r_0005,PRECISION s_0001,PRECISION s_0763_b,PRECISION s_1411,PRECISION s_1415){
    PRECISION y = 0.0;
    y=(Vmax_r_0005 * ((s_1415 - (s_0001 * (s_0763_b * (s_1411 / Keq_r_0005)))) / ((intracellular * ((s_1415 / kms_s_1415r_0005) + ((1.0 + (s_0001 / kmp_s_0001r_0005)) * ((1.0 + (s_0763_b / kmp_s_0763_br_0005)) * (1.0 + (s_1411 / kmp_s_1411r_0005)))))) * kms_s_1415r_0005)));
    return y;
}
__device__ PRECISION function_10(PRECISION Keq_r_0025,PRECISION Vmax_r_0025,PRECISION intracellular,PRECISION kmp_s_0170r_0025,PRECISION kmp_s_1434_br_0025,PRECISION kms_s_0167r_0025,PRECISION s_0167,PRECISION s_0170,PRECISION s_1434_b){
    PRECISION y = 0.0;
    y=(Vmax_r_0025 * ((s_0167 - (s_0170 * (s_1434_b / Keq_r_0025))) / ((intracellular * ((s_0167 / kms_s_0167r_0025) + ((1.0 + (s_0170 / kmp_s_0170r_0025)) * (1.0 + (s_1434_b / kmp_s_1434_br_0025))))) * kms_s_0167r_0025)));
    return y;
}
__device__ PRECISION function_100(PRECISION Keq_r_0386,PRECISION Vmax_r_0386,PRECISION intracellular,PRECISION kmp_s_0400r_0386,PRECISION kmp_s_0735r_0386,PRECISION kmp_s_0763_br_0386,PRECISION kms_s_0446r_0386,PRECISION kms_s_0734r_0386,PRECISION s_0400,PRECISION s_0446,PRECISION s_0734,PRECISION s_0735,PRECISION s_0763_b){
    PRECISION y = 0.0;
    y=(Vmax_r_0386 * (((s_0446 * s_0734) - (s_0400 * (s_0735 * (s_0763_b / Keq_r_0386)))) / (((intracellular * (-1.0 + (((1.0 + (s_0446 / kms_s_0446r_0386)) * (1.0 + (s_0734 / kms_s_0734r_0386))) + ((1.0 + (s_0400 / kmp_s_0400r_0386)) * ((1.0 + (s_0735 / kmp_s_0735r_0386)) * (1.0 + (s_0763_b / kmp_s_0763_br_0386))))))) * kms_s_0734r_0386) * kms_s_0446r_0386)));
    return y;
}
__device__ PRECISION function_101(PRECISION Keq_r_0387,PRECISION Vmax_r_0387,PRECISION intracellular,PRECISION kmp_s_0605r_0387,PRECISION kmp_s_0712r_0387,PRECISION kms_s_0850r_0387,PRECISION kms_s_1257r_0387,PRECISION s_0605,PRECISION s_0712,PRECISION s_0850,PRECISION s_1257){
    PRECISION y = 0.0;
    y=(Vmax_r_0387 * (((s_0850 * s_1257) - (s_0605 * (s_0712 / Keq_r_0387))) / (((intracellular * (-1.0 + (((1.0 + (s_0850 / kms_s_0850r_0387)) * (1.0 + (s_1257 / kms_s_1257r_0387))) + ((1.0 + (s_0605 / kmp_s_0605r_0387)) * (1.0 + (s_0712 / kmp_s_0712r_0387)))))) * kms_s_1257r_0387) * kms_s_0850r_0387)));
    return y;
}
__device__ PRECISION function_102(PRECISION Keq_r_0393,PRECISION Vmax_r_0393,PRECISION intracellular,PRECISION kmp_s_0615r_0393,PRECISION kmp_s_0706r_0393,PRECISION kms_s_0616r_0393,PRECISION kms_s_0710r_0393,PRECISION s_0615,PRECISION s_0616,PRECISION s_0706,PRECISION s_0710){
    PRECISION y = 0.0;
    y=(Vmax_r_0393 * (((s_0616 * s_0710) - (s_0615 * (s_0706 / Keq_r_0393))) / (((intracellular * (-1.0 + (((1.0 + (s_0616 / kms_s_0616r_0393)) * (1.0 + (s_0710 / kms_s_0710r_0393))) + ((1.0 + (s_0615 / kmp_s_0615r_0393)) * (1.0 + (s_0706 / kmp_s_0706r_0393)))))) * kms_s_0710r_0393) * kms_s_0616r_0393)));
    return y;
}
__device__ PRECISION function_103(PRECISION Keq_r_0394,PRECISION Vmax_r_0394,PRECISION intracellular,PRECISION kmp_s_0616r_0394,PRECISION kmp_s_0763_br_0394,PRECISION kmp_s_1011r_0394,PRECISION kms_s_0615r_0394,PRECISION s_0615,PRECISION s_0616,PRECISION s_0763_b,PRECISION s_1011){
    PRECISION y = 0.0;
    y=(Vmax_r_0394 * ((s_0615 - (s_0616 * (s_0763_b * (s_1011 / Keq_r_0394)))) / ((intracellular * ((s_0615 / kms_s_0615r_0394) + ((1.0 + (s_0616 / kmp_s_0616r_0394)) * ((1.0 + (s_0763_b / kmp_s_0763_br_0394)) * (1.0 + (s_1011 / kmp_s_1011r_0394)))))) * kms_s_0615r_0394)));
    return y;
}
__device__ PRECISION function_104(PRECISION Keq_r_0398,PRECISION Vmax_r_0398,PRECISION intracellular,PRECISION kmp_s_1243r_0398,PRECISION kmp_s_1434_br_0398,PRECISION kms_s_0193r_0398,PRECISION s_0193,PRECISION s_1243,PRECISION s_1434_b){
    PRECISION y = 0.0;
    y=(Vmax_r_0398 * ((s_0193 - (s_1243 * (s_1434_b / Keq_r_0398))) / ((intracellular * ((s_0193 / kms_s_0193r_0398) + ((1.0 + (s_1243 / kmp_s_1243r_0398)) * (1.0 + (s_1434_b / kmp_s_1434_br_0398))))) * kms_s_0193r_0398)));
    return y;
}
__device__ PRECISION function_105(PRECISION Keq_r_0417,PRECISION Vmax_r_0417,PRECISION intracellular,PRECISION kmp_s_0470r_0417,PRECISION kmp_s_0514r_0417,PRECISION kmp_s_0574r_0417,PRECISION kmp_s_1091r_0417,PRECISION kmp_s_1434_br_0417,PRECISION kms_s_0763_br_0417,PRECISION kms_s_1005r_0417,PRECISION kms_s_1096r_0417,PRECISION kms_s_1132r_0417,PRECISION s_0470,PRECISION s_0514,PRECISION s_0574,PRECISION s_0763_b,PRECISION s_1005,PRECISION s_1091,PRECISION s_1096,PRECISION s_1132,PRECISION s_1434_b){
    PRECISION y = 0.0;
    y=(Vmax_r_0417 * (pow((1.0 / kms_s_0763_br_0417),3.0) * (pow((1.0 / kms_s_1096r_0417),2.0) * (((pow(s_0763_b,3.0) * (s_1005 * (pow(s_1096,2.0) * s_1132))) - (s_0470 * (s_0514 * (s_0574 * (pow(s_1091,2.0) * (s_1434_b / Keq_r_0417)))))) / (((intracellular * (-1.0 + (((1.0 + (s_0763_b / kms_s_0763_br_0417)) * ((1.0 + (s_1005 / kms_s_1005r_0417)) * ((1.0 + (s_1096 / kms_s_1096r_0417)) * (1.0 + (s_1132 / kms_s_1132r_0417))))) + ((1.0 + (s_0470 / kmp_s_0470r_0417)) * ((1.0 + (s_0514 / kmp_s_0514r_0417)) * ((1.0 + (s_0574 / kmp_s_0574r_0417)) * ((1.0 + (s_1091 / kmp_s_1091r_0417)) * (1.0 + (s_1434_b / kmp_s_1434_br_0417))))))))) * kms_s_1132r_0417) * kms_s_1005r_0417)))));
    return y;
}
__device__ PRECISION function_106(PRECISION Keq_r_0418,PRECISION Vmax_r_0418,PRECISION intracellular,PRECISION kmp_s_0470r_0418,PRECISION kmp_s_0514r_0418,PRECISION kmp_s_0968r_0418,PRECISION kmp_s_1091r_0418,PRECISION kmp_s_1434_br_0418,PRECISION kms_s_0574r_0418,PRECISION kms_s_0763_br_0418,PRECISION kms_s_1005r_0418,PRECISION kms_s_1096r_0418,PRECISION s_0470,PRECISION s_0514,PRECISION s_0574,PRECISION s_0763_b,PRECISION s_0968,PRECISION s_1005,PRECISION s_1091,PRECISION s_1096,PRECISION s_1434_b){
    PRECISION y = 0.0;
    y=(Vmax_r_0418 * (pow((1.0 / kms_s_0763_br_0418),3.0) * (pow((1.0 / kms_s_1096r_0418),2.0) * (((s_0574 * (pow(s_0763_b,3.0) * (s_1005 * pow(s_1096,2.0)))) - (s_0470 * (s_0514 * (s_0968 * (pow(s_1091,2.0) * (s_1434_b / Keq_r_0418)))))) / (((intracellular * (-1.0 + (((1.0 + (s_0574 / kms_s_0574r_0418)) * ((1.0 + (s_0763_b / kms_s_0763_br_0418)) * ((1.0 + (s_1005 / kms_s_1005r_0418)) * (1.0 + (s_1096 / kms_s_1096r_0418))))) + ((1.0 + (s_0470 / kmp_s_0470r_0418)) * ((1.0 + (s_0514 / kmp_s_0514r_0418)) * ((1.0 + (s_0968 / kmp_s_0968r_0418)) * ((1.0 + (s_1091 / kmp_s_1091r_0418)) * (1.0 + (s_1434_b / kmp_s_1434_br_0418))))))))) * kms_s_0574r_0418) * kms_s_1005r_0418)))));
    return y;
}
__device__ PRECISION function_107(PRECISION Keq_r_0419,PRECISION Vmax_r_0419,PRECISION intracellular,PRECISION kmp_s_0470r_0419,PRECISION kmp_s_0514r_0419,PRECISION kmp_s_1028r_0419,PRECISION kmp_s_1091r_0419,PRECISION kmp_s_1434_br_0419,PRECISION kms_s_0763_br_0419,PRECISION kms_s_0968r_0419,PRECISION kms_s_1005r_0419,PRECISION kms_s_1096r_0419,PRECISION s_0470,PRECISION s_0514,PRECISION s_0763_b,PRECISION s_0968,PRECISION s_1005,PRECISION s_1028,PRECISION s_1091,PRECISION s_1096,PRECISION s_1434_b){
    PRECISION y = 0.0;
    y=(Vmax_r_0419 * (pow((1.0 / kms_s_0763_br_0419),3.0) * (pow((1.0 / kms_s_1096r_0419),2.0) * (((pow(s_0763_b,3.0) * (s_0968 * (s_1005 * pow(s_1096,2.0)))) - (s_0470 * (s_0514 * (s_1028 * (pow(s_1091,2.0) * (s_1434_b / Keq_r_0419)))))) / (((intracellular * (-1.0 + (((1.0 + (s_0763_b / kms_s_0763_br_0419)) * ((1.0 + (s_0968 / kms_s_0968r_0419)) * ((1.0 + (s_1005 / kms_s_1005r_0419)) * (1.0 + (s_1096 / kms_s_1096r_0419))))) + ((1.0 + (s_0470 / kmp_s_0470r_0419)) * ((1.0 + (s_0514 / kmp_s_0514r_0419)) * ((1.0 + (s_1028 / kmp_s_1028r_0419)) * ((1.0 + (s_1091 / kmp_s_1091r_0419)) * (1.0 + (s_1434_b / kmp_s_1434_br_0419))))))))) * kms_s_0968r_0419) * kms_s_1005r_0419)))));
    return y;
}
__device__ PRECISION function_108(PRECISION Keq_r_0421,PRECISION Vmax_r_0421,PRECISION intracellular,PRECISION kmp_s_0470r_0421,PRECISION kmp_s_0514r_0421,PRECISION kmp_s_1091r_0421,PRECISION kmp_s_1170r_0421,PRECISION kmp_s_1434_br_0421,PRECISION kms_s_0763_br_0421,PRECISION kms_s_1005r_0421,PRECISION kms_s_1028r_0421,PRECISION kms_s_1096r_0421,PRECISION s_0470,PRECISION s_0514,PRECISION s_0763_b,PRECISION s_1005,PRECISION s_1028,PRECISION s_1091,PRECISION s_1096,PRECISION s_1170,PRECISION s_1434_b){
    PRECISION y = 0.0;
    y=(Vmax_r_0421 * (pow((1.0 / kms_s_0763_br_0421),3.0) * (pow((1.0 / kms_s_1096r_0421),2.0) * (((pow(s_0763_b,3.0) * (s_1005 * (s_1028 * pow(s_1096,2.0)))) - (s_0470 * (s_0514 * (pow(s_1091,2.0) * (s_1170 * (s_1434_b / Keq_r_0421)))))) / (((intracellular * (-1.0 + (((1.0 + (s_0763_b / kms_s_0763_br_0421)) * ((1.0 + (s_1005 / kms_s_1005r_0421)) * ((1.0 + (s_1028 / kms_s_1028r_0421)) * (1.0 + (s_1096 / kms_s_1096r_0421))))) + ((1.0 + (s_0470 / kmp_s_0470r_0421)) * ((1.0 + (s_0514 / kmp_s_0514r_0421)) * ((1.0 + (s_1091 / kmp_s_1091r_0421)) * ((1.0 + (s_1170 / kmp_s_1170r_0421)) * (1.0 + (s_1434_b / kmp_s_1434_br_0421))))))))) * kms_s_1005r_0421) * kms_s_1028r_0421)))));
    return y;
}
__device__ PRECISION function_109(PRECISION Keq_r_0423,PRECISION Vmax_r_0423,PRECISION intracellular,PRECISION kmp_s_0470r_0423,PRECISION kmp_s_0514r_0423,PRECISION kmp_s_1091r_0423,PRECISION kmp_s_1329r_0423,PRECISION kmp_s_1434_br_0423,PRECISION kms_s_0763_br_0423,PRECISION kms_s_1005r_0423,PRECISION kms_s_1096r_0423,PRECISION kms_s_1170r_0423,PRECISION s_0470,PRECISION s_0514,PRECISION s_0763_b,PRECISION s_1005,PRECISION s_1091,PRECISION s_1096,PRECISION s_1170,PRECISION s_1329,PRECISION s_1434_b){
    PRECISION y = 0.0;
    y=(Vmax_r_0423 * (pow((1.0 / kms_s_0763_br_0423),3.0) * (pow((1.0 / kms_s_1096r_0423),2.0) * (((pow(s_0763_b,3.0) * (s_1005 * (pow(s_1096,2.0) * s_1170))) - (s_0470 * (s_0514 * (pow(s_1091,2.0) * (s_1329 * (s_1434_b / Keq_r_0423)))))) / (((intracellular * (-1.0 + (((1.0 + (s_0763_b / kms_s_0763_br_0423)) * ((1.0 + (s_1005 / kms_s_1005r_0423)) * ((1.0 + (s_1096 / kms_s_1096r_0423)) * (1.0 + (s_1170 / kms_s_1170r_0423))))) + ((1.0 + (s_0470 / kmp_s_0470r_0423)) * ((1.0 + (s_0514 / kmp_s_0514r_0423)) * ((1.0 + (s_1091 / kmp_s_1091r_0423)) * ((1.0 + (s_1329 / kmp_s_1329r_0423)) * (1.0 + (s_1434_b / kmp_s_1434_br_0423))))))))) * kms_s_1170r_0423) * kms_s_1005r_0423)))));
    return y;
}
__device__ PRECISION function_11(PRECISION Keq_r_0026,PRECISION Vmax_r_0026,PRECISION intracellular,PRECISION kmp_s_0167r_0026,PRECISION kmp_s_0514r_0026,PRECISION kmp_s_0763_br_0026,PRECISION kms_s_0238r_0026,PRECISION kms_s_0380r_0026,PRECISION kms_s_1434_br_0026,PRECISION s_0167,PRECISION s_0238,PRECISION s_0380,PRECISION s_0514,PRECISION s_0763_b,PRECISION s_1434_b){
    PRECISION y = 0.0;
    y=(Vmax_r_0026 * (((s_0238 * (s_0380 * s_1434_b)) - (s_0167 * (s_0514 * (s_0763_b / Keq_r_0026)))) / ((((intracellular * (-1.0 + (((1.0 + (s_0238 / kms_s_0238r_0026)) * ((1.0 + (s_0380 / kms_s_0380r_0026)) * (1.0 + (s_1434_b / kms_s_1434_br_0026)))) + ((1.0 + (s_0167 / kmp_s_0167r_0026)) * ((1.0 + (s_0514 / kmp_s_0514r_0026)) * (1.0 + (s_0763_b / kmp_s_0763_br_0026))))))) * kms_s_1434_br_0026) * kms_s_0238r_0026) * kms_s_0380r_0026)));
    return y;
}
__device__ PRECISION function_110(PRECISION Keq_r_0425,PRECISION Vmax_r_0425,PRECISION intracellular,PRECISION kmp_s_0470r_0425,PRECISION kmp_s_0514r_0425,PRECISION kmp_s_0987r_0425,PRECISION kmp_s_1091r_0425,PRECISION kmp_s_1434_br_0425,PRECISION kms_s_0763_br_0425,PRECISION kms_s_1005r_0425,PRECISION kms_s_1096r_0425,PRECISION kms_s_1329r_0425,PRECISION s_0470,PRECISION s_0514,PRECISION s_0763_b,PRECISION s_0987,PRECISION s_1005,PRECISION s_1091,PRECISION s_1096,PRECISION s_1329,PRECISION s_1434_b){
    PRECISION y = 0.0;
    y=(Vmax_r_0425 * (pow((1.0 / kms_s_0763_br_0425),9.0) * (pow((1.0 / kms_s_1005r_0425),3.0) * (pow((1.0 / kms_s_1096r_0425),6.0) * (((pow(s_0763_b,9.0) * (pow(s_1005,3.0) * (pow(s_1096,6.0) * s_1329))) - (pow((s_0470 * s_0514),3.0) * (s_0987 * (pow(s_1091,6.0) * (pow(s_1434_b,3.0) / Keq_r_0425))))) / ((intracellular * (-1.0 + (((1.0 + (s_0763_b / kms_s_0763_br_0425)) * ((1.0 + (s_1005 / kms_s_1005r_0425)) * ((1.0 + (s_1096 / kms_s_1096r_0425)) * (1.0 + (s_1329 / kms_s_1329r_0425))))) + ((1.0 + (s_0470 / kmp_s_0470r_0425)) * ((1.0 + (s_0514 / kmp_s_0514r_0425)) * ((1.0 + (s_0987 / kmp_s_0987r_0425)) * ((1.0 + (s_1091 / kmp_s_1091r_0425)) * (1.0 + (s_1434_b / kmp_s_1434_br_0425))))))))) * kms_s_1329r_0425))))));
    return y;
}
__device__ PRECISION function_111(PRECISION Keq_r_0429,PRECISION Vmax_r_0429,PRECISION intracellular,PRECISION kmp_s_0470r_0429,PRECISION kmp_s_0514r_0429,PRECISION kmp_s_0582r_0429,PRECISION kmp_s_1091r_0429,PRECISION kmp_s_1434_br_0429,PRECISION kms_s_0763_br_0429,PRECISION kms_s_1005r_0429,PRECISION kms_s_1096r_0429,PRECISION kms_s_1140r_0429,PRECISION s_0470,PRECISION s_0514,PRECISION s_0582,PRECISION s_0763_b,PRECISION s_1005,PRECISION s_1091,PRECISION s_1096,PRECISION s_1140,PRECISION s_1434_b){
    PRECISION y = 0.0;
    y=(Vmax_r_0429 * (pow((1.0 / kms_s_0763_br_0429),3.0) * (pow((1.0 / kms_s_1096r_0429),2.0) * (((pow(s_0763_b,3.0) * (s_1005 * (pow(s_1096,2.0) * s_1140))) - (s_0470 * (s_0514 * (s_0582 * (pow(s_1091,2.0) * (s_1434_b / Keq_r_0429)))))) / (((intracellular * (-1.0 + (((1.0 + (s_0763_b / kms_s_0763_br_0429)) * ((1.0 + (s_1005 / kms_s_1005r_0429)) * ((1.0 + (s_1096 / kms_s_1096r_0429)) * (1.0 + (s_1140 / kms_s_1140r_0429))))) + ((1.0 + (s_0470 / kmp_s_0470r_0429)) * ((1.0 + (s_0514 / kmp_s_0514r_0429)) * ((1.0 + (s_0582 / kmp_s_0582r_0429)) * ((1.0 + (s_1091 / kmp_s_1091r_0429)) * (1.0 + (s_1434_b / kmp_s_1434_br_0429))))))))) * kms_s_1140r_0429) * kms_s_1005r_0429)))));
    return y;
}
__device__ PRECISION function_112(PRECISION Keq_r_0430,PRECISION Vmax_r_0430,PRECISION intracellular,PRECISION kmp_s_0470r_0430,PRECISION kmp_s_0514r_0430,PRECISION kmp_s_1091r_0430,PRECISION kmp_s_1140r_0430,PRECISION kmp_s_1434_br_0430,PRECISION kms_s_0380r_0430,PRECISION kms_s_0763_br_0430,PRECISION kms_s_1005r_0430,PRECISION kms_s_1096r_0430,PRECISION s_0380,PRECISION s_0470,PRECISION s_0514,PRECISION s_0763_b,PRECISION s_1005,PRECISION s_1091,PRECISION s_1096,PRECISION s_1140,PRECISION s_1434_b){
    PRECISION y = 0.0;
    y=(Vmax_r_0430 * (pow((1.0 / kms_s_0763_br_0430),9.0) * (pow((1.0 / kms_s_1005r_0430),3.0) * (pow((1.0 / kms_s_1096r_0430),6.0) * (((s_0380 * (pow(s_0763_b,9.0) * (pow(s_1005,3.0) * pow(s_1096,6.0)))) - (pow((s_0470 * s_0514),3.0) * (pow(s_1091,6.0) * (s_1140 * (pow(s_1434_b,3.0) / Keq_r_0430))))) / ((intracellular * (-1.0 + (((1.0 + (s_0380 / kms_s_0380r_0430)) * ((1.0 + (s_0763_b / kms_s_0763_br_0430)) * ((1.0 + (s_1005 / kms_s_1005r_0430)) * (1.0 + (s_1096 / kms_s_1096r_0430))))) + ((1.0 + (s_0470 / kmp_s_0470r_0430)) * ((1.0 + (s_0514 / kmp_s_0514r_0430)) * ((1.0 + (s_1091 / kmp_s_1091r_0430)) * ((1.0 + (s_1140 / kmp_s_1140r_0430)) * (1.0 + (s_1434_b / kmp_s_1434_br_0430))))))))) * kms_s_0380r_0430))))));
    return y;
}
__device__ PRECISION function_113(PRECISION Keq_r_0437,PRECISION Vmax_r_0437,PRECISION intracellular,PRECISION kmp_s_0434r_0437,PRECISION kmp_s_0605r_0437,PRECISION kmp_s_1355r_0437,PRECISION kms_s_0446r_0437,PRECISION kms_s_0514r_0437,PRECISION kms_s_0987r_0437,PRECISION s_0434,PRECISION s_0446,PRECISION s_0514,PRECISION s_0605,PRECISION s_0987,PRECISION s_1355){
    PRECISION y = 0.0;
    y=(Vmax_r_0437 * (((s_0446 * (s_0514 * s_0987)) - (s_0434 * (s_0605 * (s_1355 / Keq_r_0437)))) / ((((intracellular * (-1.0 + (((1.0 + (s_0446 / kms_s_0446r_0437)) * ((1.0 + (s_0514 / kms_s_0514r_0437)) * (1.0 + (s_0987 / kms_s_0987r_0437)))) + ((1.0 + (s_0434 / kmp_s_0434r_0437)) * ((1.0 + (s_0605 / kmp_s_0605r_0437)) * (1.0 + (s_1355 / kmp_s_1355r_0437))))))) * kms_s_0987r_0437) * kms_s_0446r_0437) * kms_s_0514r_0437)));
    return y;
}
__device__ PRECISION function_114(PRECISION Keq_r_0439,PRECISION Vmax_r_0439,PRECISION intracellular,PRECISION kmp_s_0446r_0439,PRECISION kmp_s_0514r_0439,PRECISION kmp_s_1329r_0439,PRECISION kms_s_0434r_0439,PRECISION kms_s_0605r_0439,PRECISION kms_s_1334r_0439,PRECISION s_0434,PRECISION s_0446,PRECISION s_0514,PRECISION s_0605,PRECISION s_1329,PRECISION s_1334){
    PRECISION y = 0.0;
    y=(Vmax_r_0439 * (((s_0434 * (s_0605 * s_1334)) - (s_0446 * (s_0514 * (s_1329 / Keq_r_0439)))) / ((((intracellular * (-1.0 + (((1.0 + (s_0434 / kms_s_0434r_0439)) * ((1.0 + (s_0605 / kms_s_0605r_0439)) * (1.0 + (s_1334 / kms_s_1334r_0439)))) + ((1.0 + (s_0446 / kmp_s_0446r_0439)) * ((1.0 + (s_0514 / kmp_s_0514r_0439)) * (1.0 + (s_1329 / kmp_s_1329r_0439))))))) * kms_s_1334r_0439) * kms_s_0434r_0439) * kms_s_0605r_0439)));
    return y;
}
__device__ PRECISION function_115(PRECISION Keq_r_0442,PRECISION Vmax_r_0442,PRECISION intracellular,PRECISION kmp_s_0446r_0442,PRECISION kmp_s_0514r_0442,PRECISION kmp_s_1132r_0442,PRECISION kms_s_0434r_0442,PRECISION kms_s_0605r_0442,PRECISION kms_s_1140r_0442,PRECISION s_0434,PRECISION s_0446,PRECISION s_0514,PRECISION s_0605,PRECISION s_1132,PRECISION s_1140){
    PRECISION y = 0.0;
    y=(Vmax_r_0442 * (((s_0434 * (s_0605 * s_1140)) - (s_0446 * (s_0514 * (s_1132 / Keq_r_0442)))) / ((((intracellular * (-1.0 + (((1.0 + (s_0434 / kms_s_0434r_0442)) * ((1.0 + (s_0605 / kms_s_0605r_0442)) * (1.0 + (s_1140 / kms_s_1140r_0442)))) + ((1.0 + (s_0446 / kmp_s_0446r_0442)) * ((1.0 + (s_0514 / kmp_s_0514r_0442)) * (1.0 + (s_1132 / kmp_s_1132r_0442))))))) * kms_s_1140r_0442) * kms_s_0434r_0442) * kms_s_0605r_0442)));
    return y;
}
__device__ PRECISION function_116(PRECISION Keq_r_0464,PRECISION Vmax_r_0464,PRECISION intracellular,PRECISION kmp_s_0470r_0464,PRECISION kmp_s_0514r_0464,PRECISION kmp_s_0977r_0464,PRECISION kmp_s_1091r_0464,PRECISION kmp_s_1434_br_0464,PRECISION kms_s_0582r_0464,PRECISION kms_s_0763_br_0464,PRECISION kms_s_1005r_0464,PRECISION kms_s_1096r_0464,PRECISION s_0470,PRECISION s_0514,PRECISION s_0582,PRECISION s_0763_b,PRECISION s_0977,PRECISION s_1005,PRECISION s_1091,PRECISION s_1096,PRECISION s_1434_b){
    PRECISION y = 0.0;
    y=(Vmax_r_0464 * (pow((1.0 / kms_s_0763_br_0464),3.0) * (pow((1.0 / kms_s_1096r_0464),2.0) * (((s_0582 * (pow(s_0763_b,3.0) * (s_1005 * pow(s_1096,2.0)))) - (s_0470 * (s_0514 * (s_0977 * (pow(s_1091,2.0) * (s_1434_b / Keq_r_0464)))))) / (((intracellular * (-1.0 + (((1.0 + (s_0582 / kms_s_0582r_0464)) * ((1.0 + (s_0763_b / kms_s_0763_br_0464)) * ((1.0 + (s_1005 / kms_s_1005r_0464)) * (1.0 + (s_1096 / kms_s_1096r_0464))))) + ((1.0 + (s_0470 / kmp_s_0470r_0464)) * ((1.0 + (s_0514 / kmp_s_0514r_0464)) * ((1.0 + (s_0977 / kmp_s_0977r_0464)) * ((1.0 + (s_1091 / kmp_s_1091r_0464)) * (1.0 + (s_1434_b / kmp_s_1434_br_0464))))))))) * kms_s_0582r_0464) * kms_s_1005r_0464)))));
    return y;
}
__device__ PRECISION function_117(PRECISION Keq_r_0465,PRECISION Vmax_r_0465,PRECISION intracellular,PRECISION kmp_s_0470r_0465,PRECISION kmp_s_0514r_0465,PRECISION kmp_s_1044r_0465,PRECISION kmp_s_1091r_0465,PRECISION kmp_s_1434_br_0465,PRECISION kms_s_0763_br_0465,PRECISION kms_s_0977r_0465,PRECISION kms_s_1005r_0465,PRECISION kms_s_1096r_0465,PRECISION s_0470,PRECISION s_0514,PRECISION s_0763_b,PRECISION s_0977,PRECISION s_1005,PRECISION s_1044,PRECISION s_1091,PRECISION s_1096,PRECISION s_1434_b){
    PRECISION y = 0.0;
    y=(Vmax_r_0465 * (pow((1.0 / kms_s_0763_br_0465),3.0) * (pow((1.0 / kms_s_1096r_0465),2.0) * (((pow(s_0763_b,3.0) * (s_0977 * (s_1005 * pow(s_1096,2.0)))) - (s_0470 * (s_0514 * (s_1044 * (pow(s_1091,2.0) * (s_1434_b / Keq_r_0465)))))) / (((intracellular * (-1.0 + (((1.0 + (s_0763_b / kms_s_0763_br_0465)) * ((1.0 + (s_0977 / kms_s_0977r_0465)) * ((1.0 + (s_1005 / kms_s_1005r_0465)) * (1.0 + (s_1096 / kms_s_1096r_0465))))) + ((1.0 + (s_0470 / kmp_s_0470r_0465)) * ((1.0 + (s_0514 / kmp_s_0514r_0465)) * ((1.0 + (s_1044 / kmp_s_1044r_0465)) * ((1.0 + (s_1091 / kmp_s_1091r_0465)) * (1.0 + (s_1434_b / kmp_s_1434_br_0465))))))))) * kms_s_0977r_0465) * kms_s_1005r_0465)))));
    return y;
}
__device__ PRECISION function_118(PRECISION Keq_r_0466,PRECISION Vmax_r_0466,PRECISION intracellular,PRECISION kmp_s_0470r_0466,PRECISION kmp_s_0514r_0466,PRECISION kmp_s_1091r_0466,PRECISION kmp_s_1187r_0466,PRECISION kmp_s_1434_br_0466,PRECISION kms_s_0763_br_0466,PRECISION kms_s_1005r_0466,PRECISION kms_s_1044r_0466,PRECISION kms_s_1096r_0466,PRECISION s_0470,PRECISION s_0514,PRECISION s_0763_b,PRECISION s_1005,PRECISION s_1044,PRECISION s_1091,PRECISION s_1096,PRECISION s_1187,PRECISION s_1434_b){
    PRECISION y = 0.0;
    y=(Vmax_r_0466 * (pow((1.0 / kms_s_0763_br_0466),3.0) * (pow((1.0 / kms_s_1096r_0466),2.0) * (((pow(s_0763_b,3.0) * (s_1005 * (s_1044 * pow(s_1096,2.0)))) - (s_0470 * (s_0514 * (pow(s_1091,2.0) * (s_1187 * (s_1434_b / Keq_r_0466)))))) / (((intracellular * (-1.0 + (((1.0 + (s_0763_b / kms_s_0763_br_0466)) * ((1.0 + (s_1005 / kms_s_1005r_0466)) * ((1.0 + (s_1044 / kms_s_1044r_0466)) * (1.0 + (s_1096 / kms_s_1096r_0466))))) + ((1.0 + (s_0470 / kmp_s_0470r_0466)) * ((1.0 + (s_0514 / kmp_s_0514r_0466)) * ((1.0 + (s_1091 / kmp_s_1091r_0466)) * ((1.0 + (s_1187 / kmp_s_1187r_0466)) * (1.0 + (s_1434_b / kmp_s_1434_br_0466))))))))) * kms_s_1005r_0466) * kms_s_1044r_0466)))));
    return y;
}
__device__ PRECISION function_119(PRECISION Keq_r_0467,PRECISION Vmax_r_0467,PRECISION intracellular,PRECISION kmp_s_0470r_0467,PRECISION kmp_s_0514r_0467,PRECISION kmp_s_1091r_0467,PRECISION kmp_s_1334r_0467,PRECISION kmp_s_1434_br_0467,PRECISION kms_s_0763_br_0467,PRECISION kms_s_1005r_0467,PRECISION kms_s_1096r_0467,PRECISION kms_s_1187r_0467,PRECISION s_0470,PRECISION s_0514,PRECISION s_0763_b,PRECISION s_1005,PRECISION s_1091,PRECISION s_1096,PRECISION s_1187,PRECISION s_1334,PRECISION s_1434_b){
    PRECISION y = 0.0;
    y=(Vmax_r_0467 * (pow((1.0 / kms_s_0763_br_0467),3.0) * (pow((1.0 / kms_s_1096r_0467),2.0) * (((pow(s_0763_b,3.0) * (s_1005 * (pow(s_1096,2.0) * s_1187))) - (s_0470 * (s_0514 * (pow(s_1091,2.0) * (s_1334 * (s_1434_b / Keq_r_0467)))))) / (((intracellular * (-1.0 + (((1.0 + (s_0763_b / kms_s_0763_br_0467)) * ((1.0 + (s_1005 / kms_s_1005r_0467)) * ((1.0 + (s_1096 / kms_s_1096r_0467)) * (1.0 + (s_1187 / kms_s_1187r_0467))))) + ((1.0 + (s_0470 / kmp_s_0470r_0467)) * ((1.0 + (s_0514 / kmp_s_0514r_0467)) * ((1.0 + (s_1091 / kmp_s_1091r_0467)) * ((1.0 + (s_1334 / kmp_s_1334r_0467)) * (1.0 + (s_1434_b / kmp_s_1434_br_0467))))))))) * kms_s_1187r_0467) * kms_s_1005r_0467)))));
    return y;
}
__device__ PRECISION function_12(PRECISION Keq_r_0029,PRECISION Vmax_r_0029,PRECISION intracellular,PRECISION kmp_s_0468r_0029,PRECISION kmp_s_1434_br_0029,PRECISION kms_s_0798r_0029,PRECISION s_0468,PRECISION s_0798,PRECISION s_1434_b){
    PRECISION y = 0.0;
    y=(Vmax_r_0029 * ((s_0798 - (s_0468 * (s_1434_b / Keq_r_0029))) / ((intracellular * ((s_0798 / kms_s_0798r_0029) + ((1.0 + (s_0468 / kmp_s_0468r_0029)) * (1.0 + (s_1434_b / kmp_s_1434_br_0029))))) * kms_s_0798r_0029)));
    return y;
}
__device__ PRECISION function_120(PRECISION Keq_r_0479,PRECISION Vmax_r_0479,PRECISION intracellular,PRECISION kmp_s_0122r_0479,PRECISION kmp_s_0400r_0479,PRECISION kmp_s_1207r_0479,PRECISION kms_s_0309r_0479,PRECISION kms_s_0446r_0479,PRECISION kms_s_0689r_0479,PRECISION s_0122,PRECISION s_0309,PRECISION s_0400,PRECISION s_0446,PRECISION s_0689,PRECISION s_1207){
    PRECISION y = 0.0;
    y=(Vmax_r_0479 * (((s_0309 * (s_0446 * s_0689)) - (s_0122 * (s_0400 * (s_1207 / Keq_r_0479)))) / ((((intracellular * (-1.0 + (((1.0 + (s_0309 / kms_s_0309r_0479)) * ((1.0 + (s_0446 / kms_s_0446r_0479)) * (1.0 + (s_0689 / kms_s_0689r_0479)))) + ((1.0 + (s_0122 / kmp_s_0122r_0479)) * ((1.0 + (s_0400 / kmp_s_0400r_0479)) * (1.0 + (s_1207 / kmp_s_1207r_0479))))))) * kms_s_0689r_0479) * kms_s_0309r_0479) * kms_s_0446r_0479)));
    return y;
}
__device__ PRECISION function_121(PRECISION Keq_r_0484,PRECISION Vmax_r_0484,PRECISION intracellular,PRECISION kmp_s_0731r_0484,PRECISION kmp_s_0735r_0484,PRECISION kms_s_0537r_0484,PRECISION s_0537,PRECISION s_0731,PRECISION s_0735){
    PRECISION y = 0.0;
    y=(Vmax_r_0484 * ((s_0537 - (s_0731 * (s_0735 / Keq_r_0484))) / ((intracellular * ((s_0537 / kms_s_0537r_0484) + ((1.0 + (s_0731 / kmp_s_0731r_0484)) * (1.0 + (s_0735 / kmp_s_0735r_0484))))) * kms_s_0537r_0484)));
    return y;
}
__device__ PRECISION function_122(PRECISION Keq_r_0485,PRECISION Vmax_r_0485,PRECISION intracellular,PRECISION kmp_s_0692r_0485,PRECISION kmp_s_1434_br_0485,PRECISION kms_s_0069r_0485,PRECISION s_0069,PRECISION s_0692,PRECISION s_1434_b){
    PRECISION y = 0.0;
    y=(Vmax_r_0485 * ((s_0069 - (s_0692 * (s_1434_b / Keq_r_0485))) / ((intracellular * ((s_0069 / kms_s_0069r_0485) + ((1.0 + (s_0692 / kmp_s_0692r_0485)) * (1.0 + (s_1434_b / kmp_s_1434_br_0485))))) * kms_s_0069r_0485)));
    return y;
}
__device__ PRECISION function_123(PRECISION Keq_r_0488,PRECISION Vmax_r_0488,PRECISION intracellular,PRECISION kmp_s_0657r_0488,PRECISION kmp_s_1338r_0488,PRECISION kms_s_0659r_0488,PRECISION kms_s_0692r_0488,PRECISION s_0657,PRECISION s_0659,PRECISION s_0692,PRECISION s_1338){
    PRECISION y = 0.0;
    y=(Vmax_r_0488 * (((s_0659 * s_0692) - (s_0657 * (s_1338 / Keq_r_0488))) / (((intracellular * (-1.0 + (((1.0 + (s_0659 / kms_s_0659r_0488)) * (1.0 + (s_0692 / kms_s_0692r_0488))) + ((1.0 + (s_0657 / kmp_s_0657r_0488)) * (1.0 + (s_1338 / kmp_s_1338r_0488)))))) * kms_s_0692r_0488) * kms_s_0659r_0488)));
    return y;
}
__device__ PRECISION function_124(PRECISION Keq_r_0496,PRECISION Vmax_r_0496,PRECISION intracellular,PRECISION kmp_s_0195r_0496,PRECISION kmp_s_0605r_0496,PRECISION kms_s_0712r_0496,PRECISION kms_s_0850r_0496,PRECISION s_0195,PRECISION s_0605,PRECISION s_0712,PRECISION s_0850){
    PRECISION y = 0.0;
    y=(Vmax_r_0496 * (((s_0712 * s_0850) - (s_0195 * (s_0605 / Keq_r_0496))) / (((intracellular * (-1.0 + (((1.0 + (s_0712 / kms_s_0712r_0496)) * (1.0 + (s_0850 / kms_s_0850r_0496))) + ((1.0 + (s_0195 / kmp_s_0195r_0496)) * (1.0 + (s_0605 / kmp_s_0605r_0496)))))) * kms_s_0850r_0496) * kms_s_0712r_0496)));
    return y;
}
__device__ PRECISION function_125(PRECISION Keq_r_0499,PRECISION Vmax_r_0499,PRECISION intracellular,PRECISION kmp_s_0400r_0499,PRECISION kmp_s_0455r_0499,PRECISION kmp_s_0763_br_0499,PRECISION kms_s_0446r_0499,PRECISION kms_s_0545r_0499,PRECISION s_0400,PRECISION s_0446,PRECISION s_0455,PRECISION s_0545,PRECISION s_0763_b){
    PRECISION y = 0.0;
    y=(Vmax_r_0499 * (((s_0446 * s_0545) - (s_0400 * (s_0455 * (s_0763_b / Keq_r_0499)))) / (((intracellular * (-1.0 + (((1.0 + (s_0446 / kms_s_0446r_0499)) * (1.0 + (s_0545 / kms_s_0545r_0499))) + ((1.0 + (s_0400 / kmp_s_0400r_0499)) * ((1.0 + (s_0455 / kmp_s_0455r_0499)) * (1.0 + (s_0763_b / kmp_s_0763_br_0499))))))) * kms_s_0545r_0499) * kms_s_0446r_0499)));
    return y;
}
__device__ PRECISION function_126(PRECISION Vmax_r_0504,PRECISION kms_s_0455r_0504,PRECISION s_0455,PRECISION s_0539,PRECISION Keq_r_0504,PRECISION kmp_s_0539r_0504,PRECISION intracellular,PRECISION s_0455m,PRECISION kmI_s_0455mr_0504,PRECISION s_0glum,PRECISION kmI_s_0glumr_0504){
    PRECISION y = 0.0;
    y=(Vmax_r_0504 * ((s_0455 - (s_0539 / Keq_r_0504)) / ((intracellular * (1.0 + ((s_0455 / kms_s_0455r_0504) + ((s_0539 / kmp_s_0539r_0504) + ((1.0 + (s_0455m / kmI_s_0455mr_0504)) * (1.0 + (s_0glum / kmI_s_0glumr_0504))))))) * kms_s_0455r_0504)));
    return y;
}
__device__ PRECISION function_127(PRECISION Keq_r_0505,PRECISION Vmax_r_0505,PRECISION intracellular,PRECISION kmp_s_0539r_0505,PRECISION kms_s_0410r_0505,PRECISION s_0410,PRECISION s_0539){
    PRECISION y = 0.0;
    y=(Vmax_r_0505 * ((s_0410 - (s_0539 / Keq_r_0505)) / ((intracellular * (1.0 + ((s_0410 / kms_s_0410r_0505) + (s_0539 / kmp_s_0539r_0505)))) * kms_s_0410r_0505)));
    return y;
}
__device__ PRECISION function_128(PRECISION Keq_r_0506,PRECISION Vmax_r_0506,PRECISION intracellular,PRECISION kmp_s_0400r_0506,PRECISION kmp_s_0894r_0506,PRECISION kms_s_0446r_0506,PRECISION kms_s_0899r_0506,PRECISION s_0400,PRECISION s_0446,PRECISION s_0894,PRECISION s_0899){
    PRECISION y = 0.0;
    y=(Vmax_r_0506 * (((s_0446 * s_0899) - (s_0400 * (s_0894 / Keq_r_0506))) / (((intracellular * (-1.0 + (((1.0 + (s_0446 / kms_s_0446r_0506)) * (1.0 + (s_0899 / kms_s_0899r_0506))) + ((1.0 + (s_0400 / kmp_s_0400r_0506)) * (1.0 + (s_0894 / kmp_s_0894r_0506)))))) * kms_s_0899r_0506) * kms_s_0446r_0506)));
    return y;
}
__device__ PRECISION function_129(PRECISION Keq_r_0509,PRECISION Vmax_r_0509,PRECISION intracellular,PRECISION kmp_s_0899r_0509,PRECISION kmp_s_1091r_0509,PRECISION kmp_s_1434_br_0509,PRECISION kms_s_0185r_0509,PRECISION kms_s_0430r_0509,PRECISION kms_s_0763_br_0509,PRECISION kms_s_1096r_0509,PRECISION s_0185,PRECISION s_0430,PRECISION s_0763_b,PRECISION s_0899,PRECISION s_1091,PRECISION s_1096,PRECISION s_1434_b){
    PRECISION y = 0.0;
    y=(Vmax_r_0509 * (((s_0185 * (s_0430 * (s_0763_b * s_1096))) - (s_0899 * (s_1091 * (s_1434_b / Keq_r_0509)))) / (((((intracellular * (-1.0 + (((1.0 + (s_0185 / kms_s_0185r_0509)) * ((1.0 + (s_0430 / kms_s_0430r_0509)) * ((1.0 + (s_0763_b / kms_s_0763_br_0509)) * (1.0 + (s_1096 / kms_s_1096r_0509))))) + ((1.0 + (s_0899 / kmp_s_0899r_0509)) * ((1.0 + (s_1091 / kmp_s_1091r_0509)) * (1.0 + (s_1434_b / kmp_s_1434_br_0509))))))) * kms_s_1096r_0509) * kms_s_0430r_0509) * kms_s_0185r_0509) * kms_s_0763_br_0509)));
    return y;
}
__device__ PRECISION function_13(PRECISION Keq_r_0031,PRECISION Vmax_r_0031,PRECISION intracellular,PRECISION kmp_s_0297r_0031,PRECISION kmp_s_0470r_0031,PRECISION kms_s_0010r_0031,PRECISION kms_s_0763_br_0031,PRECISION s_0010,PRECISION s_0297,PRECISION s_0470,PRECISION s_0763_b){
    PRECISION y = 0.0;
    y=(Vmax_r_0031 * (((s_0010 * s_0763_b) - (s_0297 * (s_0470 / Keq_r_0031))) / (((intracellular * (-1.0 + (((1.0 + (s_0010 / kms_s_0010r_0031)) * (1.0 + (s_0763_b / kms_s_0763_br_0031))) + ((1.0 + (s_0297 / kmp_s_0297r_0031)) * (1.0 + (s_0470 / kmp_s_0470r_0031)))))) * kms_s_0763_br_0031) * kms_s_0010r_0031)));
    return y;
}
__device__ PRECISION function_130(PRECISION Keq_r_0510,PRECISION Vmax_r_0510,PRECISION intracellular,PRECISION kmp_s_0899r_0510,PRECISION kmp_s_1082r_0510,PRECISION kms_s_0185r_0510,PRECISION kms_s_0763_br_0510,PRECISION kms_s_0907r_0510,PRECISION kms_s_1087r_0510,PRECISION s_0185,PRECISION s_0763_b,PRECISION s_0899,PRECISION s_0907,PRECISION s_1082,PRECISION s_1087){
    PRECISION y = 0.0;
    y=(Vmax_r_0510 * (((s_0185 * (s_0763_b * (s_0907 * s_1087))) - (pow(s_0899,2.0) * (s_1082 / Keq_r_0510))) / (((((intracellular * (-1.0 + (((1.0 + (s_0185 / kms_s_0185r_0510)) * ((1.0 + (s_0763_b / kms_s_0763_br_0510)) * ((1.0 + (s_0907 / kms_s_0907r_0510)) * (1.0 + (s_1087 / kms_s_1087r_0510))))) + ((1.0 + (s_0899 / kmp_s_0899r_0510)) * (1.0 + (s_1082 / kmp_s_1082r_0510)))))) * kms_s_1087r_0510) * kms_s_0763_br_0510) * kms_s_0185r_0510) * kms_s_0907r_0510)));
    return y;
}
__device__ PRECISION function_131(PRECISION Keq_r_0512,PRECISION Vmax_r_0512,PRECISION intracellular,PRECISION kmp_s_0905r_0512,PRECISION kmp_s_1082r_0512,PRECISION kmp_s_1207r_0512,PRECISION kms_s_0763_br_0512,PRECISION kms_s_0894r_0512,PRECISION kms_s_1087r_0512,PRECISION s_0763_b,PRECISION s_0894,PRECISION s_0905,PRECISION s_1082,PRECISION s_1087,PRECISION s_1207){
    PRECISION y = 0.0;
    y=(Vmax_r_0512 * (((s_0763_b * (s_0894 * s_1087)) - (s_0905 * (s_1082 * (s_1207 / Keq_r_0512)))) / ((((intracellular * (-1.0 + (((1.0 + (s_0763_b / kms_s_0763_br_0512)) * ((1.0 + (s_0894 / kms_s_0894r_0512)) * (1.0 + (s_1087 / kms_s_1087r_0512)))) + ((1.0 + (s_0905 / kmp_s_0905r_0512)) * ((1.0 + (s_1082 / kmp_s_1082r_0512)) * (1.0 + (s_1207 / kmp_s_1207r_0512))))))) * kms_s_1087r_0512) * kms_s_0763_br_0512) * kms_s_0894r_0512)));
    return y;
}
__device__ PRECISION function_132(PRECISION Keq_r_0514,PRECISION Vmax_r_0514,PRECISION intracellular,PRECISION kmp_s_0333r_0514,PRECISION kmp_s_0605r_0514,PRECISION kmp_s_0899r_0514,PRECISION kms_s_0331r_0514,PRECISION kms_s_0907r_0514,PRECISION kms_s_1434_br_0514,PRECISION s_0331,PRECISION s_0333,PRECISION s_0605,PRECISION s_0899,PRECISION s_0907,PRECISION s_1434_b){
    PRECISION y = 0.0;
    y=(Vmax_r_0514 * (((s_0331 * (s_0907 * s_1434_b)) - (s_0333 * (s_0605 * (s_0899 / Keq_r_0514)))) / ((((intracellular * (-1.0 + (((1.0 + (s_0331 / kms_s_0331r_0514)) * ((1.0 + (s_0907 / kms_s_0907r_0514)) * (1.0 + (s_1434_b / kms_s_1434_br_0514)))) + ((1.0 + (s_0333 / kmp_s_0333r_0514)) * ((1.0 + (s_0605 / kmp_s_0605r_0514)) * (1.0 + (s_0899 / kmp_s_0899r_0514))))))) * kms_s_1434_br_0514) * kms_s_0331r_0514) * kms_s_0907r_0514)));
    return y;
}
__device__ PRECISION function_133(PRECISION Keq_r_0515,PRECISION Vmax_r_0515,PRECISION intracellular,PRECISION kmp_s_0400r_0515,PRECISION kmp_s_0763_br_0515,PRECISION kmp_s_0907r_0515,PRECISION kmp_s_1207r_0515,PRECISION kms_s_0430r_0515,PRECISION kms_s_0446r_0515,PRECISION kms_s_0899r_0515,PRECISION s_0400,PRECISION s_0430,PRECISION s_0446,PRECISION s_0763_b,PRECISION s_0899,PRECISION s_0907,PRECISION s_1207){
    PRECISION y = 0.0;
    y=(Vmax_r_0515 * (((s_0430 * (s_0446 * s_0899)) - (s_0400 * (s_0763_b * (s_0907 * (s_1207 / Keq_r_0515))))) / ((((intracellular * (-1.0 + (((1.0 + (s_0430 / kms_s_0430r_0515)) * ((1.0 + (s_0446 / kms_s_0446r_0515)) * (1.0 + (s_0899 / kms_s_0899r_0515)))) + ((1.0 + (s_0400 / kmp_s_0400r_0515)) * ((1.0 + (s_0763_b / kmp_s_0763_br_0515)) * ((1.0 + (s_0907 / kmp_s_0907r_0515)) * (1.0 + (s_1207 / kmp_s_1207r_0515)))))))) * kms_s_0899r_0515) * kms_s_0430r_0515) * kms_s_0446r_0515)));
    return y;
}
__device__ PRECISION function_134(PRECISION Vmax_r_0525,PRECISION kms_s_0731r_0525,PRECISION kms_s_1082r_0525,PRECISION kms_s_1207r_0525,PRECISION s_0731,PRECISION s_1082,PRECISION s_1207,PRECISION s_0265,PRECISION s_0763_b,PRECISION s_1087,PRECISION Keq_r_0525,PRECISION kmp_s_0265r_0525,PRECISION kmp_s_0763_br_0525,PRECISION kmp_s_1087r_0525,PRECISION s_0731m,PRECISION kmI_s_0731mr_0525,PRECISION intracellular){
    PRECISION y = 0.0;
    y=(Vmax_r_0525 * (((s_0731 * (s_1082 * s_1207)) - (s_0265 * (s_0763_b * (s_1087 / Keq_r_0525)))) / ((((intracellular * (((1.0 + (s_0731 / kms_s_0731r_0525)) * ((1.0 + (s_1082 / kms_s_1082r_0525)) * (1.0 + (s_1207 / kms_s_1207r_0525)))) + (((1.0 + (s_0265 / kmp_s_0265r_0525)) * ((1.0 + (s_0763_b / kmp_s_0763_br_0525)) * (1.0 + (s_1087 / kmp_s_1087r_0525)))) + (s_0731m / kmI_s_0731mr_0525)))) * kms_s_1207r_0525) * kms_s_0731r_0525) * kms_s_1082r_0525)));
    return y;
}
__device__ PRECISION function_135(PRECISION Keq_r_0526,PRECISION Vmax_r_0526,PRECISION intracellular,PRECISION kmp_s_0734r_0526,PRECISION kmp_s_0763_br_0526,PRECISION kmp_s_1096r_0526,PRECISION kms_s_0732r_0526,PRECISION kms_s_1091r_0526,PRECISION s_0732,PRECISION s_0734,PRECISION s_0763_b,PRECISION s_1091,PRECISION s_1096){
    PRECISION y = 0.0;
    y=(Vmax_r_0526 * (((s_0732 * s_1091) - (s_0734 * (s_0763_b * (s_1096 / Keq_r_0526)))) / (((intracellular * (-1.0 + (((1.0 + (s_0732 / kms_s_0732r_0526)) * (1.0 + (s_1091 / kms_s_1091r_0526))) + ((1.0 + (s_0734 / kmp_s_0734r_0526)) * ((1.0 + (s_0763_b / kmp_s_0763_br_0526)) * (1.0 + (s_1096 / kmp_s_1096r_0526))))))) * kms_s_1091r_0526) * kms_s_0732r_0526)));
    return y;
}
__device__ PRECISION function_136(PRECISION Keq_r_0528,PRECISION Vmax_r_0528,PRECISION intracellular,PRECISION kmp_s_0732r_0528,PRECISION kmp_s_1207r_0528,PRECISION kms_s_1315r_0528,PRECISION kms_s_1434_br_0528,PRECISION s_0732,PRECISION s_1207,PRECISION s_1315,PRECISION s_1434_b){
    PRECISION y = 0.0;
    y=(Vmax_r_0528 * (((s_1315 * s_1434_b) - (s_0732 * (s_1207 / Keq_r_0528))) / (((intracellular * (-1.0 + (((1.0 + (s_1315 / kms_s_1315r_0528)) * (1.0 + (s_1434_b / kms_s_1434_br_0528))) + ((1.0 + (s_0732 / kmp_s_0732r_0528)) * (1.0 + (s_1207 / kmp_s_1207r_0528)))))) * kms_s_1434_br_0528) * kms_s_1315r_0528)));
    return y;
}
__device__ PRECISION function_137(PRECISION Keq_r_0529,PRECISION Vmax_r_0529,PRECISION intracellular,PRECISION kmp_s_0659r_0529,PRECISION kmp_s_0735r_0529,PRECISION kms_s_0657r_0529,PRECISION kms_s_1315r_0529,PRECISION s_0657,PRECISION s_0659,PRECISION s_0735,PRECISION s_1315){
    PRECISION y = 0.0;
    y=(Vmax_r_0529 * (((s_0657 * s_1315) - (s_0659 * (s_0735 / Keq_r_0529))) / (((intracellular * (-1.0 + (((1.0 + (s_0657 / kms_s_0657r_0529)) * (1.0 + (s_1315 / kms_s_1315r_0529))) + ((1.0 + (s_0659 / kmp_s_0659r_0529)) * (1.0 + (s_0735 / kmp_s_0735r_0529)))))) * kms_s_1315r_0529) * kms_s_0657r_0529)));
    return y;
}
__device__ PRECISION function_138(PRECISION Keq_r_0530,PRECISION Vmax_r_0530,PRECISION intracellular,PRECISION kmp_s_1082r_0530,PRECISION kmp_s_1315r_0530,PRECISION kms_s_0735r_0530,PRECISION kms_s_0763_br_0530,PRECISION kms_s_1087r_0530,PRECISION s_0735,PRECISION s_0763_b,PRECISION s_1082,PRECISION s_1087,PRECISION s_1315){
    PRECISION y = 0.0;
    y=(Vmax_r_0530 * (((s_0735 * (s_0763_b * s_1087)) - (s_1082 * (s_1315 / Keq_r_0530))) / ((((intracellular * (-1.0 + (((1.0 + (s_0735 / kms_s_0735r_0530)) * ((1.0 + (s_0763_b / kms_s_0763_br_0530)) * (1.0 + (s_1087 / kms_s_1087r_0530)))) + ((1.0 + (s_1082 / kmp_s_1082r_0530)) * (1.0 + (s_1315 / kmp_s_1315r_0530)))))) * kms_s_1087r_0530) * kms_s_0735r_0530) * kms_s_0763_br_0530)));
    return y;
}
__device__ PRECISION function_139(PRECISION Keq_r_0534,PRECISION Vmax_r_0534,PRECISION intracellular,PRECISION kmp_s_0083r_0534,PRECISION kmp_s_0514r_0534,PRECISION kmp_s_0763_br_0534,PRECISION kms_s_0386r_0534,PRECISION kms_s_1315r_0534,PRECISION s_0083,PRECISION s_0386,PRECISION s_0514,PRECISION s_0763_b,PRECISION s_1315){
    PRECISION y = 0.0;
    y=(Vmax_r_0534 * (((s_0386 * s_1315) - (s_0083 * (s_0514 * (pow(s_0763_b,2.0) / Keq_r_0534)))) / (((intracellular * (-1.0 + (((1.0 + (s_0386 / kms_s_0386r_0534)) * (1.0 + (s_1315 / kms_s_1315r_0534))) + ((1.0 + (s_0083 / kmp_s_0083r_0534)) * ((1.0 + (s_0514 / kmp_s_0514r_0534)) * (1.0 + (s_0763_b / kmp_s_0763_br_0534))))))) * kms_s_1315r_0534) * kms_s_0386r_0534)));
    return y;
}
__device__ PRECISION function_14(PRECISION Keq_r_0034,PRECISION Vmax_r_0034,PRECISION intracellular,PRECISION kmp_s_0434r_0034,PRECISION kmp_s_1207r_0034,PRECISION kms_s_0397r_0034,PRECISION kms_s_1434_br_0034,PRECISION s_0397,PRECISION s_0434,PRECISION s_1207,PRECISION s_1434_b){
    PRECISION y = 0.0;
    y=(Vmax_r_0034 * (((s_0397 * s_1434_b) - (s_0434 * (s_1207 / Keq_r_0034))) / (((intracellular * (-1.0 + (((1.0 + (s_0397 / kms_s_0397r_0034)) * (1.0 + (s_1434_b / kms_s_1434_br_0034))) + ((1.0 + (s_0434 / kmp_s_0434r_0034)) * (1.0 + (s_1207 / kmp_s_1207r_0034)))))) * kms_s_1434_br_0034) * kms_s_0397r_0034)));
    return y;
}
__device__ PRECISION function_140(PRECISION Keq_r_0538,PRECISION Vmax_r_0538,PRECISION intracellular,PRECISION kmp_s_0307r_0538,PRECISION kmp_s_0430r_0538,PRECISION kmp_s_0470r_0538,PRECISION kmp_s_1087r_0538,PRECISION kms_s_0309r_0538,PRECISION kms_s_0740r_0538,PRECISION kms_s_1082r_0538,PRECISION s_0307,PRECISION s_0309,PRECISION s_0430,PRECISION s_0470,PRECISION s_0740,PRECISION s_1082,PRECISION s_1087){
    PRECISION y = 0.0;
    y=(Vmax_r_0538 * (((s_0309 * (s_0740 * s_1082)) - (s_0307 * (s_0430 * (s_0470 * (s_1087 / Keq_r_0538))))) / ((((intracellular * (-1.0 + (((1.0 + (s_0309 / kms_s_0309r_0538)) * ((1.0 + (s_0740 / kms_s_0740r_0538)) * (1.0 + (s_1082 / kms_s_1082r_0538)))) + ((1.0 + (s_0307 / kmp_s_0307r_0538)) * ((1.0 + (s_0430 / kmp_s_0430r_0538)) * ((1.0 + (s_0470 / kmp_s_0470r_0538)) * (1.0 + (s_1087 / kmp_s_1087r_0538)))))))) * kms_s_1082r_0538) * kms_s_0309r_0538) * kms_s_0740r_0538)));
    return y;
}
__device__ PRECISION function_141(PRECISION Keq_r_0539,PRECISION Vmax_r_0539,PRECISION intracellular,PRECISION kmp_s_0309r_0539,PRECISION kmp_s_0943r_0539,PRECISION kms_s_0307r_0539,PRECISION kms_s_0740r_0539,PRECISION kms_s_1434_br_0539,PRECISION s_0307,PRECISION s_0309,PRECISION s_0740,PRECISION s_0943,PRECISION s_1434_b){
    PRECISION y = 0.0;
    y=(Vmax_r_0539 * (((s_0307 * (s_0740 * s_1434_b)) - (s_0309 * (s_0943 / Keq_r_0539))) / ((((intracellular * (-1.0 + (((1.0 + (s_0307 / kms_s_0307r_0539)) * ((1.0 + (s_0740 / kms_s_0740r_0539)) * (1.0 + (s_1434_b / kms_s_1434_br_0539)))) + ((1.0 + (s_0309 / kmp_s_0309r_0539)) * (1.0 + (s_0943 / kmp_s_0943r_0539)))))) * kms_s_1434_br_0539) * kms_s_0307r_0539) * kms_s_0740r_0539)));
    return y;
}
__device__ PRECISION function_142(PRECISION Keq_r_0547,PRECISION Vmax_r_0547,PRECISION intracellular,PRECISION kmp_s_0438r_0547,PRECISION kmp_s_0763_br_0547,PRECISION kmp_s_1411r_0547,PRECISION kms_s_1415r_0547,PRECISION kms_s_1434_br_0547,PRECISION s_0438,PRECISION s_0763_b,PRECISION s_1411,PRECISION s_1415,PRECISION s_1434_b){
    PRECISION y = 0.0;
    y=(Vmax_r_0547 * (((s_1415 * s_1434_b) - (s_0438 * (s_0763_b * (s_1411 / Keq_r_0547)))) / (((intracellular * (-1.0 + (((1.0 + (s_1415 / kms_s_1415r_0547)) * (1.0 + (s_1434_b / kms_s_1434_br_0547))) + ((1.0 + (s_0438 / kmp_s_0438r_0547)) * ((1.0 + (s_0763_b / kmp_s_0763_br_0547)) * (1.0 + (s_1411 / kmp_s_1411r_0547))))))) * kms_s_1434_br_0547) * kms_s_1415r_0547)));
    return y;
}
__device__ PRECISION function_143(PRECISION Keq_r_0551,PRECISION Vmax_r_0551,PRECISION intracellular,PRECISION kmp_s_0434r_0551,PRECISION kmp_s_0605r_0551,PRECISION kmp_s_0752r_0551,PRECISION kmp_s_0763_br_0551,PRECISION kmp_s_0899r_0551,PRECISION kms_s_0306r_0551,PRECISION kms_s_0446r_0551,PRECISION kms_s_0907r_0551,PRECISION kms_s_1434_br_0551,PRECISION s_0306,PRECISION s_0434,PRECISION s_0446,PRECISION s_0605,PRECISION s_0752,PRECISION s_0763_b,PRECISION s_0899,PRECISION s_0907,PRECISION s_1434_b){
    PRECISION y = 0.0;
    y=(Vmax_r_0551 * (((s_0306 * (s_0446 * (s_0907 * s_1434_b))) - (s_0434 * (s_0605 * (s_0752 * (pow(s_0763_b,2.0) * (s_0899 / Keq_r_0551)))))) / (((((intracellular * (-1.0 + (((1.0 + (s_0306 / kms_s_0306r_0551)) * ((1.0 + (s_0446 / kms_s_0446r_0551)) * ((1.0 + (s_0907 / kms_s_0907r_0551)) * (1.0 + (s_1434_b / kms_s_1434_br_0551))))) + ((1.0 + (s_0434 / kmp_s_0434r_0551)) * ((1.0 + (s_0605 / kmp_s_0605r_0551)) * ((1.0 + (s_0752 / kmp_s_0752r_0551)) * ((1.0 + (s_0763_b / kmp_s_0763_br_0551)) * (1.0 + (s_0899 / kmp_s_0899r_0551))))))))) * kms_s_1434_br_0551) * kms_s_0446r_0551) * kms_s_0306r_0551) * kms_s_0907r_0551)));
    return y;
}
__device__ PRECISION function_144(PRECISION Keq_r_0562,PRECISION Vmax_r_0562,PRECISION intracellular,PRECISION kmp_s_0145r_0562,PRECISION kmp_s_0605r_0562,PRECISION kmp_s_0689r_0562,PRECISION kmp_s_0763_br_0562,PRECISION kms_s_0755r_0562,PRECISION kms_s_1434_br_0562,PRECISION s_0145,PRECISION s_0605,PRECISION s_0689,PRECISION s_0755,PRECISION s_0763_b,PRECISION s_1434_b){
    PRECISION y = 0.0;
    y=(Vmax_r_0562 * (pow((1.0 / kms_s_1434_br_0562),3.0) * (((s_0755 * pow(s_1434_b,3.0)) - (s_0145 * (s_0605 * (s_0689 * (pow(s_0763_b,2.0) / Keq_r_0562))))) / ((intracellular * (-1.0 + (((1.0 + (s_0755 / kms_s_0755r_0562)) * (1.0 + (s_1434_b / kms_s_1434_br_0562))) + ((1.0 + (s_0145 / kmp_s_0145r_0562)) * ((1.0 + (s_0605 / kmp_s_0605r_0562)) * ((1.0 + (s_0689 / kmp_s_0689r_0562)) * (1.0 + (s_0763_b / kmp_s_0763_br_0562)))))))) * kms_s_0755r_0562))));
    return y;
}
__device__ PRECISION function_145(PRECISION Keq_r_0567,PRECISION Vmax_r_0567,PRECISION intracellular,PRECISION kmp_s_0400r_0567,PRECISION kmp_s_0706r_0567,PRECISION kms_s_0446r_0567,PRECISION kms_s_0752r_0567,PRECISION s_0400,PRECISION s_0446,PRECISION s_0706,PRECISION s_0752){
    PRECISION y = 0.0;
    y=(Vmax_r_0567 * (((s_0446 * s_0752) - (s_0400 * (s_0706 / Keq_r_0567))) / (((intracellular * (-1.0 + (((1.0 + (s_0446 / kms_s_0446r_0567)) * (1.0 + (s_0752 / kms_s_0752r_0567))) + ((1.0 + (s_0400 / kmp_s_0400r_0567)) * (1.0 + (s_0706 / kmp_s_0706r_0567)))))) * kms_s_0752r_0567) * kms_s_0446r_0567)));
    return y;
}
__device__ PRECISION function_146(PRECISION Keq_r_0568,PRECISION Vmax_r_0568,PRECISION intracellular,PRECISION kmp_s_0562r_0568,PRECISION kmp_s_0706r_0568,PRECISION kms_s_0566r_0568,PRECISION kms_s_0752r_0568,PRECISION s_0562,PRECISION s_0566,PRECISION s_0706,PRECISION s_0752){
    PRECISION y = 0.0;
    y=(Vmax_r_0568 * (((s_0566 * s_0752) - (s_0562 * (s_0706 / Keq_r_0568))) / (((intracellular * (-1.0 + (((1.0 + (s_0566 / kms_s_0566r_0568)) * (1.0 + (s_0752 / kms_s_0752r_0568))) + ((1.0 + (s_0562 / kmp_s_0562r_0568)) * (1.0 + (s_0706 / kmp_s_0706r_0568)))))) * kms_s_0752r_0568) * kms_s_0566r_0568)));
    return y;
}
__device__ PRECISION function_147(PRECISION Keq_r_0573,PRECISION Vmax_r_0573,PRECISION intracellular,PRECISION kmp_s_0400r_0573,PRECISION kmp_s_0410r_0573,PRECISION kmp_s_0763_br_0573,PRECISION kms_s_0446r_0573,PRECISION kms_s_0545r_0573,PRECISION s_0400,PRECISION s_0410,PRECISION s_0446,PRECISION s_0545,PRECISION s_0763_b){
    PRECISION y = 0.0;
    y=(Vmax_r_0573 * (((s_0446 * s_0545) - (s_0400 * (s_0410 * (s_0763_b / Keq_r_0573)))) / (((intracellular * (-1.0 + (((1.0 + (s_0446 / kms_s_0446r_0573)) * (1.0 + (s_0545 / kms_s_0545r_0573))) + ((1.0 + (s_0400 / kmp_s_0400r_0573)) * ((1.0 + (s_0410 / kmp_s_0410r_0573)) * (1.0 + (s_0763_b / kmp_s_0763_br_0573))))))) * kms_s_0545r_0573) * kms_s_0446r_0573)));
    return y;
}
__device__ PRECISION function_148(PRECISION Keq_r_0575,PRECISION Vmax_r_0575,PRECISION intracellular,PRECISION kmp_s_0763_br_0575,PRECISION kmp_s_0911r_0575,PRECISION kmp_s_1087r_0575,PRECISION kms_s_0915r_0575,PRECISION kms_s_1082r_0575,PRECISION kms_s_1434_br_0575,PRECISION s_0763_b,PRECISION s_0911,PRECISION s_0915,PRECISION s_1082,PRECISION s_1087,PRECISION s_1434_b){
    PRECISION y = 0.0;
    y=(Vmax_r_0575 * (pow((1.0 / kms_s_1082r_0575),2.0) * (((s_0915 * (pow(s_1082,2.0) * s_1434_b)) - (pow(s_0763_b,3.0) * (s_0911 * (pow(s_1087,2.0) / Keq_r_0575)))) / (((intracellular * (-1.0 + (((1.0 + (s_0915 / kms_s_0915r_0575)) * ((1.0 + (s_1082 / kms_s_1082r_0575)) * (1.0 + (s_1434_b / kms_s_1434_br_0575)))) + ((1.0 + (s_0763_b / kmp_s_0763_br_0575)) * ((1.0 + (s_0911 / kmp_s_0911r_0575)) * (1.0 + (s_1087 / kmp_s_1087r_0575))))))) * kms_s_1434_br_0575) * kms_s_0915r_0575))));
    return y;
}
__device__ PRECISION function_149(PRECISION Keq_r_0576,PRECISION Vmax_r_0576,PRECISION intracellular,PRECISION kmp_s_0915r_0576,PRECISION kmp_s_1207r_0576,PRECISION kms_s_0916r_0576,PRECISION kms_s_1434_br_0576,PRECISION s_0915,PRECISION s_0916,PRECISION s_1207,PRECISION s_1434_b){
    PRECISION y = 0.0;
    y=(Vmax_r_0576 * (((s_0916 * s_1434_b) - (s_0915 * (s_1207 / Keq_r_0576))) / (((intracellular * (-1.0 + (((1.0 + (s_0916 / kms_s_0916r_0576)) * (1.0 + (s_1434_b / kms_s_1434_br_0576))) + ((1.0 + (s_0915 / kmp_s_0915r_0576)) * (1.0 + (s_1207 / kmp_s_1207r_0576)))))) * kms_s_1434_br_0576) * kms_s_0916r_0576)));
    return y;
}
__device__ PRECISION function_15(PRECISION Keq_r_0040,PRECISION Vmax_r_0040,PRECISION intracellular,PRECISION kmp_s_0163r_0040,PRECISION kmp_s_0689r_0040,PRECISION kmp_s_0763_br_0040,PRECISION kms_s_0557r_0040,PRECISION s_0163,PRECISION s_0557,PRECISION s_0689,PRECISION s_0763_b){
    PRECISION y = 0.0;
    y=(Vmax_r_0040 * ((s_0557 - (s_0163 * (s_0689 * (s_0763_b / Keq_r_0040)))) / ((intracellular * ((s_0557 / kms_s_0557r_0040) + ((1.0 + (s_0163 / kmp_s_0163r_0040)) * ((1.0 + (s_0689 / kmp_s_0689r_0040)) * (1.0 + (s_0763_b / kmp_s_0763_br_0040)))))) * kms_s_0557r_0040)));
    return y;
}
__device__ PRECISION function_150(PRECISION Keq_r_0577,PRECISION Vmax_r_0577,PRECISION intracellular,PRECISION kmp_s_0185r_0577,PRECISION kmp_s_0916r_0577,PRECISION kms_s_0212r_0577,PRECISION kms_s_0899r_0577,PRECISION s_0185,PRECISION s_0212,PRECISION s_0899,PRECISION s_0916){
    PRECISION y = 0.0;
    y=(Vmax_r_0577 * (((s_0212 * s_0899) - (s_0185 * (s_0916 / Keq_r_0577))) / (((intracellular * (-1.0 + (((1.0 + (s_0212 / kms_s_0212r_0577)) * (1.0 + (s_0899 / kms_s_0899r_0577))) + ((1.0 + (s_0185 / kmp_s_0185r_0577)) * (1.0 + (s_0916 / kmp_s_0916r_0577)))))) * kms_s_0899r_0577) * kms_s_0212r_0577)));
    return y;
}
__device__ PRECISION function_151(PRECISION Keq_r_0581,PRECISION Vmax_r_0581,PRECISION intracellular,PRECISION kmp_s_0800r_0581,PRECISION kms_s_0468r_0581,PRECISION kms_s_1434_br_0581,PRECISION s_0468,PRECISION s_0800,PRECISION s_1434_b){
    PRECISION y = 0.0;
    y=(Vmax_r_0581 * (((s_0468 * s_1434_b) - (s_0800 / Keq_r_0581)) / (((intracellular * (((1.0 + (s_0468 / kms_s_0468r_0581)) * (1.0 + (s_1434_b / kms_s_1434_br_0581))) + (s_0800 / kmp_s_0800r_0581))) * kms_s_1434_br_0581) * kms_s_0468r_0581)));
    return y;
}
__device__ PRECISION function_152(PRECISION Keq_r_0582,PRECISION Vmax_r_0582,PRECISION intracellular,PRECISION kmp_s_0514r_0582,PRECISION kmp_s_0763_br_0582,PRECISION kmp_s_0798r_0582,PRECISION kms_s_0185r_0582,PRECISION kms_s_0380r_0582,PRECISION kms_s_1434_br_0582,PRECISION s_0185,PRECISION s_0380,PRECISION s_0514,PRECISION s_0763_b,PRECISION s_0798,PRECISION s_1434_b){
    PRECISION y = 0.0;
    y=(Vmax_r_0582 * (((s_0185 * (s_0380 * s_1434_b)) - (s_0514 * (s_0763_b * (s_0798 / Keq_r_0582)))) / ((((intracellular * (-1.0 + (((1.0 + (s_0185 / kms_s_0185r_0582)) * ((1.0 + (s_0380 / kms_s_0380r_0582)) * (1.0 + (s_1434_b / kms_s_1434_br_0582)))) + ((1.0 + (s_0514 / kmp_s_0514r_0582)) * ((1.0 + (s_0763_b / kmp_s_0763_br_0582)) * (1.0 + (s_0798 / kmp_s_0798r_0582))))))) * kms_s_1434_br_0582) * kms_s_0185r_0582) * kms_s_0380r_0582)));
    return y;
}
__device__ PRECISION function_153(PRECISION Keq_r_0585,PRECISION Vmax_r_0585,PRECISION intracellular,PRECISION kmp_s_0180r_0585,PRECISION kmp_s_0763_br_0585,PRECISION kmp_s_1087r_0585,PRECISION kms_s_0800r_0585,PRECISION kms_s_1082r_0585,PRECISION s_0180,PRECISION s_0763_b,PRECISION s_0800,PRECISION s_1082,PRECISION s_1087){
    PRECISION y = 0.0;
    y=(Vmax_r_0585 * (((s_0800 * s_1082) - (s_0180 * (s_0763_b * (s_1087 / Keq_r_0585)))) / (((intracellular * (-1.0 + (((1.0 + (s_0800 / kms_s_0800r_0585)) * (1.0 + (s_1082 / kms_s_1082r_0585))) + ((1.0 + (s_0180 / kmp_s_0180r_0585)) * ((1.0 + (s_0763_b / kmp_s_0763_br_0585)) * (1.0 + (s_1087 / kmp_s_1087r_0585))))))) * kms_s_1082r_0585) * kms_s_0800r_0585)));
    return y;
}
__device__ PRECISION function_154(PRECISION Keq_r_0586,PRECISION Vmax_r_0586,PRECISION intracellular,PRECISION kmp_s_0919r_0586,PRECISION kmp_s_1082r_0586,PRECISION kms_s_0763_br_0586,PRECISION kms_s_0886r_0586,PRECISION kms_s_1087r_0586,PRECISION s_0763_b,PRECISION s_0886,PRECISION s_0919,PRECISION s_1082,PRECISION s_1087){
    PRECISION y = 0.0;
    y=(Vmax_r_0586 * (((s_0763_b * (s_0886 * s_1087)) - (s_0919 * (s_1082 / Keq_r_0586))) / ((((intracellular * (-1.0 + (((1.0 + (s_0763_b / kms_s_0763_br_0586)) * ((1.0 + (s_0886 / kms_s_0886r_0586)) * (1.0 + (s_1087 / kms_s_1087r_0586)))) + ((1.0 + (s_0919 / kmp_s_0919r_0586)) * (1.0 + (s_1082 / kmp_s_1082r_0586)))))) * kms_s_1087r_0586) * kms_s_0763_br_0586) * kms_s_0886r_0586)));
    return y;
}
__device__ PRECISION function_155(PRECISION Keq_r_0588,PRECISION Vmax_r_0588,PRECISION intracellular,PRECISION kmp_s_0400r_0588,PRECISION kmp_s_0763_br_0588,PRECISION kmp_s_1122r_0588,PRECISION kms_s_0446r_0588,PRECISION kms_s_0919r_0588,PRECISION s_0400,PRECISION s_0446,PRECISION s_0763_b,PRECISION s_0919,PRECISION s_1122){
    PRECISION y = 0.0;
    y=(Vmax_r_0588 * (((s_0446 * s_0919) - (s_0400 * (s_0763_b * (s_1122 / Keq_r_0588)))) / (((intracellular * (-1.0 + (((1.0 + (s_0446 / kms_s_0446r_0588)) * (1.0 + (s_0919 / kms_s_0919r_0588))) + ((1.0 + (s_0400 / kmp_s_0400r_0588)) * ((1.0 + (s_0763_b / kmp_s_0763_br_0588)) * (1.0 + (s_1122 / kmp_s_1122r_0588))))))) * kms_s_0919r_0588) * kms_s_0446r_0588)));
    return y;
}
__device__ PRECISION function_156(PRECISION Keq_r_0589,PRECISION Vmax_r_0589,PRECISION intracellular,PRECISION kmp_s_0514r_0589,PRECISION kmp_s_1117r_0589,PRECISION kms_s_0380r_0589,PRECISION kms_s_0919r_0589,PRECISION s_0380,PRECISION s_0514,PRECISION s_0919,PRECISION s_1117){
    PRECISION y = 0.0;
    y=(Vmax_r_0589 * (((s_0380 * s_0919) - (s_0514 * (s_1117 / Keq_r_0589))) / (((intracellular * (-1.0 + (((1.0 + (s_0380 / kms_s_0380r_0589)) * (1.0 + (s_0919 / kms_s_0919r_0589))) + ((1.0 + (s_0514 / kmp_s_0514r_0589)) * (1.0 + (s_1117 / kmp_s_1117r_0589)))))) * kms_s_0919r_0589) * kms_s_0380r_0589)));
    return y;
}
__device__ PRECISION function_157(PRECISION Keq_r_0598,PRECISION Vmax_r_0598,PRECISION intracellular,PRECISION kmp_s_0031r_0598,PRECISION kmp_s_0514r_0598,PRECISION kmp_s_1091r_0598,PRECISION kms_s_0225r_0598,PRECISION kms_s_0763_br_0598,PRECISION kms_s_1096r_0598,PRECISION s_0031,PRECISION s_0225,PRECISION s_0514,PRECISION s_0763_b,PRECISION s_1091,PRECISION s_1096){
    PRECISION y = 0.0;
    y=(Vmax_r_0598 * (pow((1.0 / (kms_s_0763_br_0598 * kms_s_1096r_0598)),2.0) * (((s_0225 * pow((s_0763_b * s_1096),2.0)) - (s_0031 * (s_0514 * (pow(s_1091,2.0) / Keq_r_0598)))) / ((intracellular * (-1.0 + (((1.0 + (s_0225 / kms_s_0225r_0598)) * ((1.0 + (s_0763_b / kms_s_0763_br_0598)) * (1.0 + (s_1096 / kms_s_1096r_0598)))) + ((1.0 + (s_0031 / kmp_s_0031r_0598)) * ((1.0 + (s_0514 / kmp_s_0514r_0598)) * (1.0 + (s_1091 / kmp_s_1091r_0598))))))) * kms_s_0225r_0598))));
    return y;
}
__device__ PRECISION function_158(PRECISION Keq_r_0599,PRECISION Vmax_r_0599,PRECISION intracellular,PRECISION kmp_s_0225r_0599,PRECISION kmp_s_0514r_0599,PRECISION kmp_s_0763_br_0599,PRECISION kms_s_0374r_0599,PRECISION kms_s_0380r_0599,PRECISION kms_s_1434_br_0599,PRECISION s_0225,PRECISION s_0374,PRECISION s_0380,PRECISION s_0514,PRECISION s_0763_b,PRECISION s_1434_b){
    PRECISION y = 0.0;
    y=(Vmax_r_0599 * (((s_0374 * (s_0380 * s_1434_b)) - (s_0225 * (s_0514 * (s_0763_b / Keq_r_0599)))) / ((((intracellular * (-1.0 + (((1.0 + (s_0374 / kms_s_0374r_0599)) * ((1.0 + (s_0380 / kms_s_0380r_0599)) * (1.0 + (s_1434_b / kms_s_1434_br_0599)))) + ((1.0 + (s_0225 / kmp_s_0225r_0599)) * ((1.0 + (s_0514 / kmp_s_0514r_0599)) * (1.0 + (s_0763_b / kmp_s_0763_br_0599))))))) * kms_s_1434_br_0599) * kms_s_0374r_0599) * kms_s_0380r_0599)));
    return y;
}
__device__ PRECISION function_159(PRECISION Keq_r_0604,PRECISION Vmax_r_0604,PRECISION intracellular,PRECISION kmp_s_0317r_0604,PRECISION kmp_s_0532r_0604,PRECISION kmp_s_0763_br_0604,PRECISION kmp_s_0899r_0604,PRECISION kms_s_0315r_0604,PRECISION kms_s_0907r_0604,PRECISION s_0315,PRECISION s_0317,PRECISION s_0532,PRECISION s_0763_b,PRECISION s_0899,PRECISION s_0907){
    PRECISION y = 0.0;
    y=(Vmax_r_0604 * (((s_0315 * s_0907) - (s_0317 * (s_0532 * (s_0763_b * (s_0899 / Keq_r_0604))))) / (((intracellular * (-1.0 + (((1.0 + (s_0315 / kms_s_0315r_0604)) * (1.0 + (s_0907 / kms_s_0907r_0604))) + ((1.0 + (s_0317 / kmp_s_0317r_0604)) * ((1.0 + (s_0532 / kmp_s_0532r_0604)) * ((1.0 + (s_0763_b / kmp_s_0763_br_0604)) * (1.0 + (s_0899 / kmp_s_0899r_0604)))))))) * kms_s_0907r_0604) * kms_s_0315r_0604)));
    return y;
}
__device__ PRECISION function_16(PRECISION Keq_r_0042,PRECISION Vmax_r_0042,PRECISION intracellular,PRECISION kmp_s_0217r_0042,PRECISION kmp_s_1434_br_0042,PRECISION kms_s_0216r_0042,PRECISION s_0216,PRECISION s_0217,PRECISION s_1434_b){
    PRECISION y = 0.0;
    y=(Vmax_r_0042 * ((s_0216 - (s_0217 * (s_1434_b / Keq_r_0042))) / ((intracellular * ((s_0216 / kms_s_0216r_0042) + ((1.0 + (s_0217 / kmp_s_0217r_0042)) * (1.0 + (s_1434_b / kmp_s_1434_br_0042))))) * kms_s_0216r_0042)));
    return y;
}
__device__ PRECISION function_160(PRECISION Keq_r_0605,PRECISION Vmax_r_0605,PRECISION intracellular,PRECISION kmp_s_0212r_0605,PRECISION kmp_s_1434_br_0605,PRECISION kms_s_0532r_0605,PRECISION s_0212,PRECISION s_0532,PRECISION s_1434_b){
    PRECISION y = 0.0;
    y=(Vmax_r_0605 * ((s_0532 - (s_0212 * (s_1434_b / Keq_r_0605))) / ((intracellular * ((s_0532 / kms_s_0532r_0605) + ((1.0 + (s_0212 / kmp_s_0212r_0605)) * (1.0 + (s_1434_b / kmp_s_1434_br_0605))))) * kms_s_0532r_0605)));
    return y;
}
__device__ PRECISION function_161(PRECISION Keq_r_0606,PRECISION Vmax_r_0606,PRECISION intracellular,PRECISION kmp_s_0816r_0606,PRECISION kmp_s_1434_br_0606,PRECISION kms_s_0325r_0606,PRECISION s_0325,PRECISION s_0816,PRECISION s_1434_b){
    PRECISION y = 0.0;
    y=(Vmax_r_0606 * ((s_0325 - (s_0816 * (s_1434_b / Keq_r_0606))) / ((intracellular * ((s_0325 / kms_s_0325r_0606) + ((1.0 + (s_0816 / kmp_s_0816r_0606)) * (1.0 + (s_1434_b / kmp_s_1434_br_0606))))) * kms_s_0325r_0606)));
    return y;
}
__device__ PRECISION function_162(PRECISION Keq_r_0607,PRECISION Vmax_r_0607,PRECISION intracellular,PRECISION kmp_s_0306r_0607,PRECISION kmp_s_0763_br_0607,PRECISION kmp_s_1087r_0607,PRECISION kms_s_0816r_0607,PRECISION kms_s_1082r_0607,PRECISION kms_s_1434_br_0607,PRECISION s_0306,PRECISION s_0763_b,PRECISION s_0816,PRECISION s_1082,PRECISION s_1087,PRECISION s_1434_b){
    PRECISION y = 0.0;
    y=(Vmax_r_0607 * (((s_0816 * (s_1082 * s_1434_b)) - (s_0306 * (s_0763_b * (s_1087 / Keq_r_0607)))) / ((((intracellular * (-1.0 + (((1.0 + (s_0816 / kms_s_0816r_0607)) * ((1.0 + (s_1082 / kms_s_1082r_0607)) * (1.0 + (s_1434_b / kms_s_1434_br_0607)))) + ((1.0 + (s_0306 / kmp_s_0306r_0607)) * ((1.0 + (s_0763_b / kmp_s_0763_br_0607)) * (1.0 + (s_1087 / kmp_s_1087r_0607))))))) * kms_s_1434_br_0607) * kms_s_0816r_0607) * kms_s_1082r_0607)));
    return y;
}
__device__ PRECISION function_163(PRECISION Keq_r_0608,PRECISION Vmax_r_0608,PRECISION intracellular,PRECISION kmp_s_0088r_0608,PRECISION kmp_s_0470r_0608,PRECISION kmp_s_1434_br_0608,PRECISION kms_s_0078r_0608,PRECISION kms_s_0763_br_0608,PRECISION s_0078,PRECISION s_0088,PRECISION s_0470,PRECISION s_0763_b,PRECISION s_1434_b){
    PRECISION y = 0.0;
    y=(Vmax_r_0608 * (((s_0078 * s_0763_b) - (s_0088 * (s_0470 * (s_1434_b / Keq_r_0608)))) / (((intracellular * (-1.0 + (((1.0 + (s_0078 / kms_s_0078r_0608)) * (1.0 + (s_0763_b / kms_s_0763_br_0608))) + ((1.0 + (s_0088 / kmp_s_0088r_0608)) * ((1.0 + (s_0470 / kmp_s_0470r_0608)) * (1.0 + (s_1434_b / kmp_s_1434_br_0608))))))) * kms_s_0763_br_0608) * kms_s_0078r_0608)));
    return y;
}
__device__ PRECISION function_164(PRECISION Keq_r_0610,PRECISION Vmax_r_0610,PRECISION intracellular,PRECISION kmp_s_0763_br_0610,PRECISION kmp_s_1207r_0610,PRECISION kms_s_0605r_0610,PRECISION kms_s_1434_br_0610,PRECISION s_0605,PRECISION s_0763_b,PRECISION s_1207,PRECISION s_1434_b){
    PRECISION y = 0.0;
    y=(Vmax_r_0610 * (((s_0605 * s_1434_b) - (s_0763_b * (pow(s_1207,2.0) / Keq_r_0610))) / (((intracellular * (-1.0 + (((1.0 + (s_0605 / kms_s_0605r_0610)) * (1.0 + (s_1434_b / kms_s_1434_br_0610))) + ((1.0 + (s_0763_b / kmp_s_0763_br_0610)) * (1.0 + (s_1207 / kmp_s_1207r_0610)))))) * kms_s_1434_br_0610) * kms_s_0605r_0610)));
    return y;
}
__device__ PRECISION function_165(PRECISION Keq_r_0618,PRECISION Vmax_r_0618,PRECISION intracellular,PRECISION kmp_s_0824r_0618,PRECISION kms_s_0128r_0618,PRECISION kms_s_1013r_0618,PRECISION s_0128,PRECISION s_0824,PRECISION s_1013){
    PRECISION y = 0.0;
    y=(Vmax_r_0618 * (((s_0128 * s_1013) - (s_0824 / Keq_r_0618)) / (((intracellular * (((1.0 + (s_0128 / kms_s_0128r_0618)) * (1.0 + (s_1013 / kms_s_1013r_0618))) + (s_0824 / kmp_s_0824r_0618))) * kms_s_1013r_0618) * kms_s_0128r_0618)));
    return y;
}
__device__ PRECISION function_166(PRECISION Keq_r_0621,PRECISION Vmax_r_0621,PRECISION intracellular,PRECISION kmp_s_0828r_0621,PRECISION kms_s_0128r_0621,PRECISION kms_s_1060r_0621,PRECISION s_0128,PRECISION s_0828,PRECISION s_1060){
    PRECISION y = 0.0;
    y=(Vmax_r_0621 * (((s_0128 * s_1060) - (s_0828 / Keq_r_0621)) / (((intracellular * (((1.0 + (s_0128 / kms_s_0128r_0621)) * (1.0 + (s_1060 / kms_s_1060r_0621))) + (s_0828 / kmp_s_0828r_0621))) * kms_s_1060r_0621) * kms_s_0128r_0621)));
    return y;
}
__device__ PRECISION function_167(PRECISION Keq_r_0630,PRECISION Vmax_r_0630,PRECISION intracellular,PRECISION kmp_s_0185r_0630,PRECISION kmp_s_0470r_0630,PRECISION kmp_s_1096r_0630,PRECISION kms_s_0847r_0630,PRECISION kms_s_1091r_0630,PRECISION s_0185,PRECISION s_0470,PRECISION s_0847,PRECISION s_1091,PRECISION s_1096){
    PRECISION y = 0.0;
    y=(Vmax_r_0630 * (((s_0847 * s_1091) - (s_0185 * (s_0470 * (s_1096 / Keq_r_0630)))) / (((intracellular * (-1.0 + (((1.0 + (s_0847 / kms_s_0847r_0630)) * (1.0 + (s_1091 / kms_s_1091r_0630))) + ((1.0 + (s_0185 / kmp_s_0185r_0630)) * ((1.0 + (s_0470 / kmp_s_0470r_0630)) * (1.0 + (s_1096 / kmp_s_1096r_0630))))))) * kms_s_1091r_0630) * kms_s_0847r_0630)));
    return y;
}
__device__ PRECISION function_168(PRECISION Keq_r_0633,PRECISION Vmax_r_0633,PRECISION intracellular,PRECISION kmp_s_0749r_0633,PRECISION kmp_s_1338r_0633,PRECISION kms_s_0847r_0633,PRECISION s_0749,PRECISION s_0847,PRECISION s_1338){
    PRECISION y = 0.0;
    y=(Vmax_r_0633 * ((s_0847 - (s_0749 * (s_1338 / Keq_r_0633))) / ((intracellular * ((s_0847 / kms_s_0847r_0633) + ((1.0 + (s_0749 / kmp_s_0749r_0633)) * (1.0 + (s_1338 / kmp_s_1338r_0633))))) * kms_s_0847r_0633)));
    return y;
}
__device__ PRECISION function_169(PRECISION Keq_r_0634,PRECISION Vmax_r_0634,PRECISION intracellular,PRECISION kmp_s_0185r_0634,PRECISION kmp_s_0920r_0634,PRECISION kms_s_0058r_0634,PRECISION kms_s_0899r_0634,PRECISION s_0058,PRECISION s_0185,PRECISION s_0899,PRECISION s_0920){
    PRECISION y = 0.0;
    y=(Vmax_r_0634 * (((s_0058 * s_0899) - (s_0185 * (s_0920 / Keq_r_0634))) / (((intracellular * (-1.0 + (((1.0 + (s_0058 / kms_s_0058r_0634)) * (1.0 + (s_0899 / kms_s_0899r_0634))) + ((1.0 + (s_0185 / kmp_s_0185r_0634)) * (1.0 + (s_0920 / kmp_s_0920r_0634)))))) * kms_s_0899r_0634) * kms_s_0058r_0634)));
    return y;
}
__device__ PRECISION function_17(PRECISION Keq_r_0043,PRECISION Vmax_r_0043,PRECISION intracellular,PRECISION kmp_s_0216r_0043,PRECISION kmp_s_1207r_0043,PRECISION kms_s_0356r_0043,PRECISION s_0216,PRECISION s_0356,PRECISION s_1207){
    PRECISION y = 0.0;
    y=(Vmax_r_0043 * ((s_0356 - (s_0216 * (s_1207 / Keq_r_0043))) / ((intracellular * ((s_0356 / kms_s_0356r_0043) + ((1.0 + (s_0216 / kmp_s_0216r_0043)) * (1.0 + (s_1207 / kmp_s_1207r_0043))))) * kms_s_0356r_0043)));
    return y;
}
__device__ PRECISION function_170(PRECISION Keq_r_0638,PRECISION Vmax_r_0638,PRECISION intracellular,PRECISION kmp_s_1257r_0638,PRECISION kms_s_0850r_0638,PRECISION s_0850,PRECISION s_1257){
    PRECISION y = 0.0;
    y=(Vmax_r_0638 * ((s_0850 - (s_1257 / Keq_r_0638)) / ((intracellular * (1.0 + ((s_0850 / kms_s_0850r_0638) + (s_1257 / kmp_s_1257r_0638)))) * kms_s_0850r_0638)));
    return y;
}
__device__ PRECISION function_171(PRECISION Keq_r_0640,PRECISION Vmax_r_0640,PRECISION intracellular,PRECISION kmp_s_0007r_0640,PRECISION kmp_s_1091r_0640,PRECISION kms_s_0042r_0640,PRECISION kms_s_0763_br_0640,PRECISION kms_s_1096r_0640,PRECISION s_0007,PRECISION s_0042,PRECISION s_0763_b,PRECISION s_1091,PRECISION s_1096){
    PRECISION y = 0.0;
    y=(Vmax_r_0640 * (((s_0042 * (s_0763_b * s_1096)) - (s_0007 * (s_1091 / Keq_r_0640))) / ((((intracellular * (-1.0 + (((1.0 + (s_0042 / kms_s_0042r_0640)) * ((1.0 + (s_0763_b / kms_s_0763_br_0640)) * (1.0 + (s_1096 / kms_s_1096r_0640)))) + ((1.0 + (s_0007 / kmp_s_0007r_0640)) * (1.0 + (s_1091 / kmp_s_1091r_0640)))))) * kms_s_1096r_0640) * kms_s_0042r_0640) * kms_s_0763_br_0640)));
    return y;
}
__device__ PRECISION function_172(PRECISION Keq_r_0647,PRECISION Vmax_r_0647,PRECISION intracellular,PRECISION kmp_s_0185r_0647,PRECISION kmp_s_0863r_0647,PRECISION kms_s_0899r_0647,PRECISION kms_s_1277r_0647,PRECISION s_0185,PRECISION s_0863,PRECISION s_0899,PRECISION s_1277){
    PRECISION y = 0.0;
    y=(Vmax_r_0647 * (((s_0899 * s_1277) - (s_0185 * (s_0863 / Keq_r_0647))) / (((intracellular * (-1.0 + (((1.0 + (s_0899 / kms_s_0899r_0647)) * (1.0 + (s_1277 / kms_s_1277r_0647))) + ((1.0 + (s_0185 / kmp_s_0185r_0647)) * (1.0 + (s_0863 / kmp_s_0863r_0647)))))) * kms_s_1277r_0647) * kms_s_0899r_0647)));
    return y;
}
__device__ PRECISION function_173(PRECISION Keq_r_0650,PRECISION Vmax_r_0650,PRECISION intracellular,PRECISION kmp_s_0434r_0650,PRECISION kmp_s_0605r_0650,PRECISION kmp_s_0867r_0650,PRECISION kmp_s_1082r_0650,PRECISION kms_s_0446r_0650,PRECISION kms_s_0763_br_0650,PRECISION kms_s_0861r_0650,PRECISION kms_s_1087r_0650,PRECISION s_0434,PRECISION s_0446,PRECISION s_0605,PRECISION s_0763_b,PRECISION s_0861,PRECISION s_0867,PRECISION s_1082,PRECISION s_1087){
    PRECISION y = 0.0;
    y=(Vmax_r_0650 * (((s_0446 * (s_0763_b * (s_0861 * s_1087))) - (s_0434 * (s_0605 * (s_0867 * (s_1082 / Keq_r_0650))))) / (((((intracellular * (-1.0 + (((1.0 + (s_0446 / kms_s_0446r_0650)) * ((1.0 + (s_0763_b / kms_s_0763_br_0650)) * ((1.0 + (s_0861 / kms_s_0861r_0650)) * (1.0 + (s_1087 / kms_s_1087r_0650))))) + ((1.0 + (s_0434 / kmp_s_0434r_0650)) * ((1.0 + (s_0605 / kmp_s_0605r_0650)) * ((1.0 + (s_0867 / kmp_s_0867r_0650)) * (1.0 + (s_1082 / kmp_s_1082r_0650)))))))) * kms_s_1087r_0650) * kms_s_0763_br_0650) * kms_s_0446r_0650) * kms_s_0861r_0650)));
    return y;
}
__device__ PRECISION function_174(PRECISION Keq_r_0657,PRECISION Vmax_r_0657,PRECISION intracellular,PRECISION kmp_s_0120r_0657,PRECISION kmp_s_0763_br_0657,PRECISION kmp_s_1434_br_0657,PRECISION kms_s_0905r_0657,PRECISION s_0120,PRECISION s_0763_b,PRECISION s_0905,PRECISION s_1434_b){
    PRECISION y = 0.0;
    y=(Vmax_r_0657 * ((s_0905 - (s_0120 * (s_0763_b * (s_1434_b / Keq_r_0657)))) / ((intracellular * ((s_0905 / kms_s_0905r_0657) + ((1.0 + (s_0120 / kmp_s_0120r_0657)) * ((1.0 + (s_0763_b / kmp_s_0763_br_0657)) * (1.0 + (s_1434_b / kmp_s_1434_br_0657)))))) * kms_s_0905r_0657)));
    return y;
}
__device__ PRECISION function_175(PRECISION Keq_r_0660,PRECISION Vmax_r_0660,PRECISION intracellular,PRECISION kmp_s_0118r_0660,PRECISION kmp_s_0763_br_0660,PRECISION kmp_s_1096r_0660,PRECISION kms_s_1091r_0660,PRECISION kms_s_1379r_0660,PRECISION s_0118,PRECISION s_0763_b,PRECISION s_1091,PRECISION s_1096,PRECISION s_1379){
    PRECISION y = 0.0;
    y=(Vmax_r_0660 * (((s_1091 * s_1379) - (s_0118 * (pow(s_0763_b,2.0) * (s_1096 / Keq_r_0660)))) / (((intracellular * (-1.0 + (((1.0 + (s_1091 / kms_s_1091r_0660)) * (1.0 + (s_1379 / kms_s_1379r_0660))) + ((1.0 + (s_0118 / kmp_s_0118r_0660)) * ((1.0 + (s_0763_b / kmp_s_0763_br_0660)) * (1.0 + (s_1096 / kmp_s_1096r_0660))))))) * kms_s_1379r_0660) * kms_s_1091r_0660)));
    return y;
}
__device__ PRECISION function_176(PRECISION Keq_r_0661,PRECISION Vmax_r_0661,PRECISION intracellular,PRECISION kmp_s_1082r_0661,PRECISION kmp_s_1379r_0661,PRECISION kms_s_0118r_0661,PRECISION kms_s_0763_br_0661,PRECISION kms_s_1087r_0661,PRECISION s_0118,PRECISION s_0763_b,PRECISION s_1082,PRECISION s_1087,PRECISION s_1379){
    PRECISION y = 0.0;
    y=(Vmax_r_0661 * (pow((1.0 / kms_s_0763_br_0661),2.0) * (((s_0118 * (pow(s_0763_b,2.0) * s_1087)) - (s_1082 * (s_1379 / Keq_r_0661))) / (((intracellular * (-1.0 + (((1.0 + (s_0118 / kms_s_0118r_0661)) * ((1.0 + (s_0763_b / kms_s_0763_br_0661)) * (1.0 + (s_1087 / kms_s_1087r_0661)))) + ((1.0 + (s_1082 / kmp_s_1082r_0661)) * (1.0 + (s_1379 / kmp_s_1379r_0661)))))) * kms_s_1087r_0661) * kms_s_0118r_0661))));
    return y;
}
__device__ PRECISION function_177(PRECISION Keq_r_0667,PRECISION Vmax_r_0667,PRECISION intracellular,PRECISION kmp_s_0183r_0667,PRECISION kmp_s_0430r_0667,PRECISION kms_s_0949r_0667,PRECISION s_0183,PRECISION s_0430,PRECISION s_0949){
    PRECISION y = 0.0;
    y=(Vmax_r_0667 * ((s_0949 - (s_0183 * (s_0430 / Keq_r_0667))) / ((intracellular * ((s_0949 / kms_s_0949r_0667) + ((1.0 + (s_0183 / kmp_s_0183r_0667)) * (1.0 + (s_0430 / kmp_s_0430r_0667))))) * kms_s_0949r_0667)));
    return y;
}
__device__ PRECISION function_178(PRECISION Keq_r_0673,PRECISION Vmax_r_0673,PRECISION intracellular,PRECISION kmp_s_0963r_0673,PRECISION kms_s_0040r_0673,PRECISION s_0040,PRECISION s_0963){
    PRECISION y = 0.0;
    y=(Vmax_r_0673 * ((s_0040 - (s_0963 / Keq_r_0673)) / ((intracellular * (1.0 + ((s_0040 / kms_s_0040r_0673) + (s_0963 / kmp_s_0963r_0673)))) * kms_s_0040r_0673)));
    return y;
}
__device__ PRECISION function_179(PRECISION Keq_r_0674,PRECISION Vmax_r_0674,PRECISION intracellular,PRECISION kmp_s_0185r_0674,PRECISION kmp_s_0925r_0674,PRECISION kms_s_0297r_0674,PRECISION kms_s_0899r_0674,PRECISION s_0185,PRECISION s_0297,PRECISION s_0899,PRECISION s_0925){
    PRECISION y = 0.0;
    y=(Vmax_r_0674 * (((s_0297 * s_0899) - (s_0185 * (s_0925 / Keq_r_0674))) / (((intracellular * (-1.0 + (((1.0 + (s_0297 / kms_s_0297r_0674)) * (1.0 + (s_0899 / kms_s_0899r_0674))) + ((1.0 + (s_0185 / kmp_s_0185r_0674)) * (1.0 + (s_0925 / kmp_s_0925r_0674)))))) * kms_s_0899r_0674) * kms_s_0297r_0674)));
    return y;
}
__device__ PRECISION function_18(PRECISION Keq_r_0044,PRECISION Vmax_r_0044,PRECISION intracellular,PRECISION kmp_s_1091r_0044,PRECISION kmp_s_1325r_0044,PRECISION kms_s_0218r_0044,PRECISION kms_s_0763_br_0044,PRECISION kms_s_1096r_0044,PRECISION s_0218,PRECISION s_0763_b,PRECISION s_1091,PRECISION s_1096,PRECISION s_1325){
    PRECISION y = 0.0;
    y=(Vmax_r_0044 * (pow((1.0 / kms_s_0763_br_0044),2.0) * (((s_0218 * (pow(s_0763_b,2.0) * s_1096)) - (s_1091 * (s_1325 / Keq_r_0044))) / (((intracellular * (-1.0 + (((1.0 + (s_0218 / kms_s_0218r_0044)) * ((1.0 + (s_0763_b / kms_s_0763_br_0044)) * (1.0 + (s_1096 / kms_s_1096r_0044)))) + ((1.0 + (s_1091 / kmp_s_1091r_0044)) * (1.0 + (s_1325 / kmp_s_1325r_0044)))))) * kms_s_1096r_0044) * kms_s_0218r_0044))));
    return y;
}
__device__ PRECISION function_180(PRECISION Keq_r_0688,PRECISION Vmax_r_0688,PRECISION intracellular,PRECISION kmp_s_0069r_0688,PRECISION kmp_s_1082r_0688,PRECISION kms_s_0763_br_0688,PRECISION kms_s_1087r_0688,PRECISION kms_s_1156r_0688,PRECISION s_0069,PRECISION s_0763_b,PRECISION s_1082,PRECISION s_1087,PRECISION s_1156){
    PRECISION y = 0.0;
    y=(Vmax_r_0688 * (((s_0763_b * (s_1087 * s_1156)) - (s_0069 * (s_1082 / Keq_r_0688))) / ((((intracellular * (-1.0 + (((1.0 + (s_0763_b / kms_s_0763_br_0688)) * ((1.0 + (s_1087 / kms_s_1087r_0688)) * (1.0 + (s_1156 / kms_s_1156r_0688)))) + ((1.0 + (s_0069 / kmp_s_0069r_0688)) * (1.0 + (s_1082 / kmp_s_1082r_0688)))))) * kms_s_1156r_0688) * kms_s_0763_br_0688) * kms_s_1087r_0688)));
    return y;
}
__device__ PRECISION function_181(PRECISION Keq_r_0697,PRECISION Vmax_r_0697,PRECISION intracellular,PRECISION kmp_s_0605r_0697,PRECISION kmp_s_0710r_0697,PRECISION kms_s_0553r_0697,PRECISION kms_s_0755r_0697,PRECISION kms_s_0763_br_0697,PRECISION s_0553,PRECISION s_0605,PRECISION s_0710,PRECISION s_0755,PRECISION s_0763_b){
    PRECISION y = 0.0;
    y=(Vmax_r_0697 * (((s_0553 * (s_0755 * s_0763_b)) - (s_0605 * (s_0710 / Keq_r_0697))) / ((((intracellular * (-1.0 + (((1.0 + (s_0553 / kms_s_0553r_0697)) * ((1.0 + (s_0755 / kms_s_0755r_0697)) * (1.0 + (s_0763_b / kms_s_0763_br_0697)))) + ((1.0 + (s_0605 / kmp_s_0605r_0697)) * (1.0 + (s_0710 / kmp_s_0710r_0697)))))) * kms_s_0763_br_0697) * kms_s_0553r_0697) * kms_s_0755r_0697)));
    return y;
}
__device__ PRECISION function_182(PRECISION Keq_r_0698,PRECISION Vmax_r_0698,PRECISION intracellular,PRECISION kmp_s_0554r_0698,PRECISION kms_s_0539r_0698,PRECISION s_0539,PRECISION s_0554){
    PRECISION y = 0.0;
    y=(Vmax_r_0698 * ((s_0539 - (s_0554 / Keq_r_0698)) / ((intracellular * (1.0 + ((s_0539 / kms_s_0539r_0698) + (s_0554 / kmp_s_0554r_0698)))) * kms_s_0539r_0698)));
    return y;
}
__device__ PRECISION function_183(PRECISION Keq_r_0699,PRECISION Vmax_r_0699,PRECISION intracellular,PRECISION kmp_s_0122r_0699,PRECISION kmp_s_0763_br_0699,PRECISION kms_s_0015r_0699,PRECISION kms_s_1434_br_0699,PRECISION s_0015,PRECISION s_0122,PRECISION s_0763_b,PRECISION s_1434_b){
    PRECISION y = 0.0;
    y=(Vmax_r_0699 * (((s_0015 * s_1434_b) - (s_0122 * (s_0763_b / Keq_r_0699))) / (((intracellular * (-1.0 + (((1.0 + (s_0015 / kms_s_0015r_0699)) * (1.0 + (s_1434_b / kms_s_1434_br_0699))) + ((1.0 + (s_0122 / kmp_s_0122r_0699)) * (1.0 + (s_0763_b / kmp_s_0763_br_0699)))))) * kms_s_1434_br_0699) * kms_s_0015r_0699)));
    return y;
}
__device__ PRECISION function_184(PRECISION Keq_r_0701,PRECISION Vmax_r_0701,PRECISION intracellular,PRECISION kmp_s_0605r_0701,PRECISION kmp_s_1207r_0701,PRECISION kmp_s_1293r_0701,PRECISION kms_s_0446r_0701,PRECISION kms_s_0933r_0701,PRECISION kms_s_1434_br_0701,PRECISION s_0446,PRECISION s_0605,PRECISION s_0933,PRECISION s_1207,PRECISION s_1293,PRECISION s_1434_b){
    PRECISION y = 0.0;
    y=(Vmax_r_0701 * (((s_0446 * (s_0933 * s_1434_b)) - (s_0605 * (s_1207 * (s_1293 / Keq_r_0701)))) / ((((intracellular * (-1.0 + (((1.0 + (s_0446 / kms_s_0446r_0701)) * ((1.0 + (s_0933 / kms_s_0933r_0701)) * (1.0 + (s_1434_b / kms_s_1434_br_0701)))) + ((1.0 + (s_0605 / kmp_s_0605r_0701)) * ((1.0 + (s_1207 / kmp_s_1207r_0701)) * (1.0 + (s_1293 / kmp_s_1293r_0701))))))) * kms_s_1434_br_0701) * kms_s_0446r_0701) * kms_s_0933r_0701)));
    return y;
}
__device__ PRECISION function_185(PRECISION Keq_r_0702,PRECISION Vmax_r_0702,PRECISION intracellular,PRECISION kmp_s_0309r_0702,PRECISION kmp_s_0763_br_0702,PRECISION kmp_s_0933r_0702,PRECISION kms_s_0328r_0702,PRECISION kms_s_0917r_0702,PRECISION s_0309,PRECISION s_0328,PRECISION s_0763_b,PRECISION s_0917,PRECISION s_0933){
    PRECISION y = 0.0;
    y=(Vmax_r_0702 * (((s_0328 * s_0917) - (s_0309 * (s_0763_b * (s_0933 / Keq_r_0702)))) / (((intracellular * (-1.0 + (((1.0 + (s_0328 / kms_s_0328r_0702)) * (1.0 + (s_0917 / kms_s_0917r_0702))) + ((1.0 + (s_0309 / kmp_s_0309r_0702)) * ((1.0 + (s_0763_b / kmp_s_0763_br_0702)) * (1.0 + (s_0933 / kmp_s_0933r_0702))))))) * kms_s_0917r_0702) * kms_s_0328r_0702)));
    return y;
}
__device__ PRECISION function_186(PRECISION Keq_r_0707,PRECISION Vmax_r_0707,PRECISION intracellular,PRECISION kmp_s_0015r_0707,PRECISION kmp_s_1096r_0707,PRECISION kms_s_0307r_0707,PRECISION kms_s_1091r_0707,PRECISION s_0015,PRECISION s_0307,PRECISION s_1091,PRECISION s_1096){
    PRECISION y = 0.0;
    y=(Vmax_r_0707 * (((s_0307 * s_1091) - (s_0015 * (s_1096 / Keq_r_0707))) / (((intracellular * (-1.0 + (((1.0 + (s_0307 / kms_s_0307r_0707)) * (1.0 + (s_1091 / kms_s_1091r_0707))) + ((1.0 + (s_0015 / kmp_s_0015r_0707)) * (1.0 + (s_1096 / kmp_s_1096r_0707)))))) * kms_s_1091r_0707) * kms_s_0307r_0707)));
    return y;
}
__device__ PRECISION function_187(PRECISION Keq_r_0712,PRECISION Vmax_r_0712,PRECISION intracellular,PRECISION kmp_s_0022r_0712,PRECISION kmp_s_0481r_0712,PRECISION kmp_s_0763_br_0712,PRECISION kms_s_0031r_0712,PRECISION kms_s_0521r_0712,PRECISION s_0022,PRECISION s_0031,PRECISION s_0481,PRECISION s_0521,PRECISION s_0763_b){
    PRECISION y = 0.0;
    y=(Vmax_r_0712 * (((s_0031 * s_0521) - (s_0022 * (s_0481 * (s_0763_b / Keq_r_0712)))) / (((intracellular * (-1.0 + (((1.0 + (s_0031 / kms_s_0031r_0712)) * (1.0 + (s_0521 / kms_s_0521r_0712))) + ((1.0 + (s_0022 / kmp_s_0022r_0712)) * ((1.0 + (s_0481 / kmp_s_0481r_0712)) * (1.0 + (s_0763_b / kmp_s_0763_br_0712))))))) * kms_s_0521r_0712) * kms_s_0031r_0712)));
    return y;
}
__device__ PRECISION function_188(PRECISION Keq_r_0715,PRECISION Vmax_r_0715,PRECISION intracellular,PRECISION kmp_s_0400r_0715,PRECISION kmp_s_0470r_0715,PRECISION kmp_s_0850r_0715,PRECISION kmp_s_1207r_0715,PRECISION kms_s_0021r_0715,PRECISION kms_s_0446r_0715,PRECISION s_0021,PRECISION s_0400,PRECISION s_0446,PRECISION s_0470,PRECISION s_0850,PRECISION s_1207){
    PRECISION y = 0.0;
    y=(Vmax_r_0715 * (((s_0021 * s_0446) - (s_0400 * (s_0470 * (s_0850 * (s_1207 / Keq_r_0715))))) / (((intracellular * (-1.0 + (((1.0 + (s_0021 / kms_s_0021r_0715)) * (1.0 + (s_0446 / kms_s_0446r_0715))) + ((1.0 + (s_0400 / kmp_s_0400r_0715)) * ((1.0 + (s_0470 / kmp_s_0470r_0715)) * ((1.0 + (s_0850 / kmp_s_0850r_0715)) * (1.0 + (s_1207 / kmp_s_1207r_0715)))))))) * kms_s_0446r_0715) * kms_s_0021r_0715)));
    return y;
}
__device__ PRECISION function_189(PRECISION Keq_r_0719,PRECISION Vmax_r_0719,PRECISION intracellular,PRECISION kmp_s_0247r_0719,PRECISION kmp_s_0763_br_0719,PRECISION kmp_s_1096r_0719,PRECISION kms_s_0046r_0719,PRECISION kms_s_1091r_0719,PRECISION s_0046,PRECISION s_0247,PRECISION s_0763_b,PRECISION s_1091,PRECISION s_1096){
    PRECISION y = 0.0;
    y=(Vmax_r_0719 * (((s_0046 * s_1091) - (s_0247 * (s_0763_b * (s_1096 / Keq_r_0719)))) / (((intracellular * (-1.0 + (((1.0 + (s_0046 / kms_s_0046r_0719)) * (1.0 + (s_1091 / kms_s_1091r_0719))) + ((1.0 + (s_0247 / kmp_s_0247r_0719)) * ((1.0 + (s_0763_b / kmp_s_0763_br_0719)) * (1.0 + (s_1096 / kmp_s_1096r_0719))))))) * kms_s_1091r_0719) * kms_s_0046r_0719)));
    return y;
}
__device__ PRECISION function_19(PRECISION Keq_r_0057,PRECISION Vmax_r_0057,PRECISION intracellular,PRECISION kmp_s_0046r_0057,PRECISION kmp_s_1082r_0057,PRECISION kms_s_0247r_0057,PRECISION kms_s_0763_br_0057,PRECISION kms_s_1087r_0057,PRECISION s_0046,PRECISION s_0247,PRECISION s_0763_b,PRECISION s_1082,PRECISION s_1087){
    PRECISION y = 0.0;
    y=(Vmax_r_0057 * (((s_0247 * (s_0763_b * s_1087)) - (s_0046 * (s_1082 / Keq_r_0057))) / ((((intracellular * (-1.0 + (((1.0 + (s_0247 / kms_s_0247r_0057)) * ((1.0 + (s_0763_b / kms_s_0763_br_0057)) * (1.0 + (s_1087 / kms_s_1087r_0057)))) + ((1.0 + (s_0046 / kmp_s_0046r_0057)) * (1.0 + (s_1082 / kmp_s_1082r_0057)))))) * kms_s_1087r_0057) * kms_s_0247r_0057) * kms_s_0763_br_0057)));
    return y;
}
__device__ PRECISION function_190(PRECISION Keq_r_0720,PRECISION Vmax_r_0720,PRECISION intracellular,PRECISION kmp_s_0257r_0720,PRECISION kmp_s_0763_br_0720,PRECISION kmp_s_1096r_0720,PRECISION kms_s_0052r_0720,PRECISION kms_s_1091r_0720,PRECISION s_0052,PRECISION s_0257,PRECISION s_0763_b,PRECISION s_1091,PRECISION s_1096){
    PRECISION y = 0.0;
    y=(Vmax_r_0720 * (((s_0052 * s_1091) - (s_0257 * (s_0763_b * (s_1096 / Keq_r_0720)))) / (((intracellular * (-1.0 + (((1.0 + (s_0052 / kms_s_0052r_0720)) * (1.0 + (s_1091 / kms_s_1091r_0720))) + ((1.0 + (s_0257 / kmp_s_0257r_0720)) * ((1.0 + (s_0763_b / kmp_s_0763_br_0720)) * (1.0 + (s_1096 / kmp_s_1096r_0720))))))) * kms_s_1091r_0720) * kms_s_0052r_0720)));
    return y;
}
__device__ PRECISION function_191(PRECISION Keq_r_0721,PRECISION Vmax_r_0721,PRECISION intracellular,PRECISION kmp_s_0254r_0721,PRECISION kmp_s_0763_br_0721,PRECISION kmp_s_1096r_0721,PRECISION kms_s_0234r_0721,PRECISION kms_s_1091r_0721,PRECISION s_0234,PRECISION s_0254,PRECISION s_0763_b,PRECISION s_1091,PRECISION s_1096){
    PRECISION y = 0.0;
    y=(Vmax_r_0721 * (((s_0234 * s_1091) - (s_0254 * (s_0763_b * (s_1096 / Keq_r_0721)))) / (((intracellular * (-1.0 + (((1.0 + (s_0234 / kms_s_0234r_0721)) * (1.0 + (s_1091 / kms_s_1091r_0721))) + ((1.0 + (s_0254 / kmp_s_0254r_0721)) * ((1.0 + (s_0763_b / kmp_s_0763_br_0721)) * (1.0 + (s_1096 / kmp_s_1096r_0721))))))) * kms_s_1091r_0721) * kms_s_0234r_0721)));
    return y;
}
__device__ PRECISION function_192(PRECISION Keq_r_0722,PRECISION Vmax_r_0722,PRECISION intracellular,PRECISION kmp_s_0261r_0722,PRECISION kmp_s_0763_br_0722,PRECISION kmp_s_1096r_0722,PRECISION kms_s_0055r_0722,PRECISION kms_s_1091r_0722,PRECISION s_0055,PRECISION s_0261,PRECISION s_0763_b,PRECISION s_1091,PRECISION s_1096){
    PRECISION y = 0.0;
    y=(Vmax_r_0722 * (((s_0055 * s_1091) - (s_0261 * (s_0763_b * (s_1096 / Keq_r_0722)))) / (((intracellular * (-1.0 + (((1.0 + (s_0055 / kms_s_0055r_0722)) * (1.0 + (s_1091 / kms_s_1091r_0722))) + ((1.0 + (s_0261 / kmp_s_0261r_0722)) * ((1.0 + (s_0763_b / kmp_s_0763_br_0722)) * (1.0 + (s_1096 / kmp_s_1096r_0722))))))) * kms_s_1091r_0722) * kms_s_0055r_0722)));
    return y;
}
__device__ PRECISION function_193(PRECISION Keq_r_0723,PRECISION Vmax_r_0723,PRECISION intracellular,PRECISION kmp_s_1013r_0723,PRECISION kms_s_0710r_0723,PRECISION kms_s_0828r_0723,PRECISION s_0710,PRECISION s_0828,PRECISION s_1013){
    PRECISION y = 0.0;
    y=(Vmax_r_0723 * (((s_0710 * s_0828) - (s_1013 / Keq_r_0723)) / (((intracellular * (((1.0 + (s_0710 / kms_s_0710r_0723)) * (1.0 + (s_0828 / kms_s_0828r_0723))) + (s_1013 / kmp_s_1013r_0723))) * kms_s_0828r_0723) * kms_s_0710r_0723)));
    return y;
}
__device__ PRECISION function_194(PRECISION Keq_r_0725,PRECISION Vmax_r_0725,PRECISION intracellular,PRECISION kmp_s_1020r_0725,PRECISION kmp_s_1207r_0725,PRECISION kms_s_0128r_0725,PRECISION kms_s_1434_br_0725,PRECISION s_0128,PRECISION s_1020,PRECISION s_1207,PRECISION s_1434_b){
    PRECISION y = 0.0;
    y=(Vmax_r_0725 * (((s_0128 * s_1434_b) - (s_1020 * (s_1207 / Keq_r_0725))) / (((intracellular * (-1.0 + (((1.0 + (s_0128 / kms_s_0128r_0725)) * (1.0 + (s_1434_b / kms_s_1434_br_0725))) + ((1.0 + (s_1020 / kmp_s_1020r_0725)) * (1.0 + (s_1207 / kmp_s_1207r_0725)))))) * kms_s_1434_br_0725) * kms_s_0128r_0725)));
    return y;
}
__device__ PRECISION function_195(PRECISION Keq_r_0726,PRECISION Vmax_r_0726,PRECISION intracellular,PRECISION kmp_s_0128r_0726,PRECISION kms_s_0410r_0726,PRECISION s_0128,PRECISION s_0410){
    PRECISION y = 0.0;
    y=(Vmax_r_0726 * ((s_0410 - (s_0128 / Keq_r_0726)) / ((intracellular * (1.0 + ((s_0410 / kms_s_0410r_0726) + (s_0128 / kmp_s_0128r_0726)))) * kms_s_0410r_0726)));
    return y;
}
__device__ PRECISION function_196(PRECISION Keq_r_0728,PRECISION Vmax_r_0728,PRECISION intracellular,PRECISION kmp_s_0149r_0728,PRECISION kmp_s_1091r_0728,PRECISION kmp_s_1207r_0728,PRECISION kms_s_0763_br_0728,PRECISION kms_s_1070r_0728,PRECISION kms_s_1096r_0728,PRECISION s_0149,PRECISION s_0763_b,PRECISION s_1070,PRECISION s_1091,PRECISION s_1096,PRECISION s_1207){
    PRECISION y = 0.0;
    y=(Vmax_r_0728 * (((s_0763_b * (s_1070 * s_1096)) - (s_0149 * (s_1091 * (s_1207 / Keq_r_0728)))) / ((((intracellular * (-1.0 + (((1.0 + (s_0763_b / kms_s_0763_br_0728)) * ((1.0 + (s_1070 / kms_s_1070r_0728)) * (1.0 + (s_1096 / kms_s_1096r_0728)))) + ((1.0 + (s_0149 / kmp_s_0149r_0728)) * ((1.0 + (s_1091 / kmp_s_1091r_0728)) * (1.0 + (s_1207 / kmp_s_1207r_0728))))))) * kms_s_1096r_0728) * kms_s_0763_br_0728) * kms_s_1070r_0728)));
    return y;
}
__device__ PRECISION function_197(PRECISION Keq_r_0765,PRECISION Vmax_r_0765,PRECISION intracellular,PRECISION kmp_s_0181r_0765,PRECISION kmp_s_0470r_0765,PRECISION kms_s_0180r_0765,PRECISION kms_s_0763_br_0765,PRECISION s_0180,PRECISION s_0181,PRECISION s_0470,PRECISION s_0763_b){
    PRECISION y = 0.0;
    y=(Vmax_r_0765 * (((s_0180 * s_0763_b) - (s_0181 * (s_0470 / Keq_r_0765))) / (((intracellular * (-1.0 + (((1.0 + (s_0180 / kms_s_0180r_0765)) * (1.0 + (s_0763_b / kms_s_0763_br_0765))) + ((1.0 + (s_0181 / kmp_s_0181r_0765)) * (1.0 + (s_0470 / kmp_s_0470r_0765)))))) * kms_s_0763_br_0765) * kms_s_0180r_0765)));
    return y;
}
__device__ PRECISION function_198(PRECISION Keq_r_0771,PRECISION Vmax_r_0771,PRECISION intracellular,PRECISION kmp_s_0446r_0771,PRECISION kmp_s_0481r_0771,PRECISION kms_s_0400r_0771,PRECISION kms_s_0521r_0771,PRECISION s_0400,PRECISION s_0446,PRECISION s_0481,PRECISION s_0521){
    PRECISION y = 0.0;
    y=(Vmax_r_0771 * (((s_0400 * s_0521) - (s_0446 * (s_0481 / Keq_r_0771))) / (((intracellular * (-1.0 + (((1.0 + (s_0400 / kms_s_0400r_0771)) * (1.0 + (s_0521 / kms_s_0521r_0771))) + ((1.0 + (s_0446 / kmp_s_0446r_0771)) * (1.0 + (s_0481 / kmp_s_0481r_0771)))))) * kms_s_0521r_0771) * kms_s_0400r_0771)));
    return y;
}
__device__ PRECISION function_199(PRECISION Keq_r_0779,PRECISION Vmax_r_0779,PRECISION intracellular,PRECISION kmp_s_0400r_0779,PRECISION kmp_s_1430r_0779,PRECISION kms_s_0446r_0779,PRECISION kms_s_1411r_0779,PRECISION s_0400,PRECISION s_0446,PRECISION s_1411,PRECISION s_1430){
    PRECISION y = 0.0;
    y=(Vmax_r_0779 * (((s_0446 * s_1411) - (s_0400 * (s_1430 / Keq_r_0779))) / (((intracellular * (-1.0 + (((1.0 + (s_0446 / kms_s_0446r_0779)) * (1.0 + (s_1411 / kms_s_1411r_0779))) + ((1.0 + (s_0400 / kmp_s_0400r_0779)) * (1.0 + (s_1430 / kmp_s_1430r_0779)))))) * kms_s_1411r_0779) * kms_s_0446r_0779)));
    return y;
}
__device__ PRECISION function_2(PRECISION Keq_r_0006,PRECISION Vmax_r_0006,PRECISION intracellular,PRECISION kmp_s_0743r_0006,PRECISION kmp_s_1434_br_0006,PRECISION kms_s_0438r_0006,PRECISION s_0438,PRECISION s_0743,PRECISION s_1434_b){
    PRECISION y = 0.0;
    y=(Vmax_r_0006 * ((s_0438 - (s_0743 * (s_1434_b / Keq_r_0006))) / ((intracellular * ((s_0438 / kms_s_0438r_0006) + ((1.0 + (s_0743 / kmp_s_0743r_0006)) * (1.0 + (s_1434_b / kmp_s_1434_br_0006))))) * kms_s_0438r_0006)));
    return y;
}
__device__ PRECISION function_20(PRECISION Keq_r_0058,PRECISION Vmax_r_0058,PRECISION intracellular,PRECISION kmp_s_0052r_0058,PRECISION kmp_s_1082r_0058,PRECISION kms_s_0257r_0058,PRECISION kms_s_0763_br_0058,PRECISION kms_s_1087r_0058,PRECISION s_0052,PRECISION s_0257,PRECISION s_0763_b,PRECISION s_1082,PRECISION s_1087){
    PRECISION y = 0.0;
    y=(Vmax_r_0058 * (((s_0257 * (s_0763_b * s_1087)) - (s_0052 * (s_1082 / Keq_r_0058))) / ((((intracellular * (-1.0 + (((1.0 + (s_0257 / kms_s_0257r_0058)) * ((1.0 + (s_0763_b / kms_s_0763_br_0058)) * (1.0 + (s_1087 / kms_s_1087r_0058)))) + ((1.0 + (s_0052 / kmp_s_0052r_0058)) * (1.0 + (s_1082 / kmp_s_1082r_0058)))))) * kms_s_1087r_0058) * kms_s_0257r_0058) * kms_s_0763_br_0058)));
    return y;
}
__device__ PRECISION function_200(PRECISION Keq_r_0783,PRECISION Vmax_r_0783,PRECISION intracellular,PRECISION kmp_s_0369r_0783,PRECISION kmp_s_0763_br_0783,PRECISION kmp_s_0917r_0783,PRECISION kms_s_0805r_0783,PRECISION kms_s_1117r_0783,PRECISION s_0369,PRECISION s_0763_b,PRECISION s_0805,PRECISION s_0917,PRECISION s_1117){
    PRECISION y = 0.0;
    y=(Vmax_r_0783 * (((s_0805 * s_1117) - (s_0369 * (s_0763_b * (s_0917 / Keq_r_0783)))) / (((intracellular * (-1.0 + (((1.0 + (s_0805 / kms_s_0805r_0783)) * (1.0 + (s_1117 / kms_s_1117r_0783))) + ((1.0 + (s_0369 / kmp_s_0369r_0783)) * ((1.0 + (s_0763_b / kmp_s_0763_br_0783)) * (1.0 + (s_0917 / kmp_s_0917r_0783))))))) * kms_s_1117r_0783) * kms_s_0805r_0783)));
    return y;
}
__device__ PRECISION function_201(PRECISION Keq_r_0789,PRECISION Vmax_r_0789,PRECISION intracellular,PRECISION kmp_s_0763_br_0789,PRECISION kmp_s_0887r_0789,PRECISION kmp_s_1207r_0789,PRECISION kms_s_0469r_0789,PRECISION kms_s_1151r_0789,PRECISION s_0469,PRECISION s_0763_b,PRECISION s_0887,PRECISION s_1151,PRECISION s_1207){
    PRECISION y = 0.0;
    y=(Vmax_r_0789 * (((s_0469 * s_1151) - (s_0763_b * (s_0887 * (s_1207 / Keq_r_0789)))) / (((intracellular * (-1.0 + (((1.0 + (s_0469 / kms_s_0469r_0789)) * (1.0 + (s_1151 / kms_s_1151r_0789))) + ((1.0 + (s_0763_b / kmp_s_0763_br_0789)) * ((1.0 + (s_0887 / kmp_s_0887r_0789)) * (1.0 + (s_1207 / kmp_s_1207r_0789))))))) * kms_s_1151r_0789) * kms_s_0469r_0789)));
    return y;
}
__device__ PRECISION function_202(PRECISION Keq_r_0791,PRECISION Vmax_r_0791,PRECISION intracellular,PRECISION kmp_s_1071r_0791,PRECISION kmp_s_1151r_0791,PRECISION kms_s_0899r_0791,PRECISION kms_s_1051r_0791,PRECISION s_0899,PRECISION s_1051,PRECISION s_1071,PRECISION s_1151){
    PRECISION y = 0.0;
    y=(Vmax_r_0791 * (((s_0899 * s_1051) - (s_1071 * (s_1151 / Keq_r_0791))) / (((intracellular * (-1.0 + (((1.0 + (s_0899 / kms_s_0899r_0791)) * (1.0 + (s_1051 / kms_s_1051r_0791))) + ((1.0 + (s_1071 / kmp_s_1071r_0791)) * (1.0 + (s_1151 / kmp_s_1151r_0791)))))) * kms_s_1051r_0791) * kms_s_0899r_0791)));
    return y;
}
__device__ PRECISION function_203(PRECISION Keq_r_0793,PRECISION Vmax_r_0793,PRECISION intracellular,PRECISION kmp_s_0605r_0793,PRECISION kmp_s_1155r_0793,PRECISION kms_s_0331r_0793,PRECISION kms_s_1154r_0793,PRECISION s_0331,PRECISION s_0605,PRECISION s_1154,PRECISION s_1155){
    PRECISION y = 0.0;
    y=(Vmax_r_0793 * (((s_0331 * s_1154) - (s_0605 * (s_1155 / Keq_r_0793))) / (((intracellular * (-1.0 + (((1.0 + (s_0331 / kms_s_0331r_0793)) * (1.0 + (s_1154 / kms_s_1154r_0793))) + ((1.0 + (s_0605 / kmp_s_0605r_0793)) * (1.0 + (s_1155 / kmp_s_1155r_0793)))))) * kms_s_1154r_0793) * kms_s_0331r_0793)));
    return y;
}
__device__ PRECISION function_204(PRECISION Keq_r_0794,PRECISION Vmax_r_0794,PRECISION intracellular,PRECISION kmp_s_0470r_0794,PRECISION kmp_s_1417r_0794,PRECISION kms_s_0763_br_0794,PRECISION kms_s_1155r_0794,PRECISION s_0470,PRECISION s_0763_b,PRECISION s_1155,PRECISION s_1417){
    PRECISION y = 0.0;
    y=(Vmax_r_0794 * (((s_0763_b * s_1155) - (s_0470 * (s_1417 / Keq_r_0794))) / (((intracellular * (-1.0 + (((1.0 + (s_0763_b / kms_s_0763_br_0794)) * (1.0 + (s_1155 / kms_s_1155r_0794))) + ((1.0 + (s_0470 / kmp_s_0470r_0794)) * (1.0 + (s_1417 / kmp_s_1417r_0794)))))) * kms_s_1155r_0794) * kms_s_0763_br_0794)));
    return y;
}
__device__ PRECISION function_205(PRECISION Keq_r_0825,PRECISION Vmax_r_0825,PRECISION intracellular,PRECISION kmp_s_0185r_0825,PRECISION kmp_s_0936r_0825,PRECISION kms_s_0859r_0825,PRECISION kms_s_0899r_0825,PRECISION s_0185,PRECISION s_0859,PRECISION s_0899,PRECISION s_0936){
    PRECISION y = 0.0;
    y=(Vmax_r_0825 * (((s_0859 * s_0899) - (s_0185 * (s_0936 / Keq_r_0825))) / (((intracellular * (-1.0 + (((1.0 + (s_0859 / kms_s_0859r_0825)) * (1.0 + (s_0899 / kms_s_0899r_0825))) + ((1.0 + (s_0185 / kmp_s_0185r_0825)) * (1.0 + (s_0936 / kmp_s_0936r_0825)))))) * kms_s_0899r_0825) * kms_s_0859r_0825)));
    return y;
}
__device__ PRECISION function_206(PRECISION Keq_r_0831,PRECISION Vmax_r_0831,PRECISION intracellular,PRECISION kmp_s_0763_br_0831,PRECISION kmp_s_1226r_0831,PRECISION kmp_s_1290r_0831,PRECISION kms_s_1233r_0831,PRECISION kms_s_1293r_0831,PRECISION s_0763_b,PRECISION s_1226,PRECISION s_1233,PRECISION s_1290,PRECISION s_1293){
    PRECISION y = 0.0;
    y=(Vmax_r_0831 * (((s_1233 * s_1293) - (s_0763_b * (s_1226 * (s_1290 / Keq_r_0831)))) / (((intracellular * (-1.0 + (((1.0 + (s_1233 / kms_s_1233r_0831)) * (1.0 + (s_1293 / kms_s_1293r_0831))) + ((1.0 + (s_0763_b / kmp_s_0763_br_0831)) * ((1.0 + (s_1226 / kmp_s_1226r_0831)) * (1.0 + (s_1290 / kmp_s_1290r_0831))))))) * kms_s_1293r_0831) * kms_s_1233r_0831)));
    return y;
}
__device__ PRECISION function_207(PRECISION Keq_r_0847,PRECISION Vmax_r_0847,PRECISION intracellular,PRECISION kmp_s_0090r_0847,PRECISION kmp_s_0511r_0847,PRECISION kmp_s_0763_br_0847,PRECISION kms_s_0485r_0847,PRECISION kms_s_1020r_0847,PRECISION s_0090,PRECISION s_0485,PRECISION s_0511,PRECISION s_0763_b,PRECISION s_1020){
    PRECISION y = 0.0;
    y=(Vmax_r_0847 * (((s_0485 * s_1020) - (s_0090 * (s_0511 * (pow(s_0763_b,2.0) / Keq_r_0847)))) / (((intracellular * (-1.0 + (((1.0 + (s_0485 / kms_s_0485r_0847)) * (1.0 + (s_1020 / kms_s_1020r_0847))) + ((1.0 + (s_0090 / kmp_s_0090r_0847)) * ((1.0 + (s_0511 / kmp_s_0511r_0847)) * (1.0 + (s_0763_b / kmp_s_0763_br_0847))))))) * kms_s_1020r_0847) * kms_s_0485r_0847)));
    return y;
}
__device__ PRECISION function_208(PRECISION Keq_r_0850,PRECISION Vmax_r_0850,PRECISION intracellular,PRECISION kmp_s_0470r_0850,PRECISION kmp_s_1233r_0850,PRECISION kms_s_1219r_0850,PRECISION s_0470,PRECISION s_1219,PRECISION s_1233){
    PRECISION y = 0.0;
    y=(Vmax_r_0850 * ((s_1219 - (s_0470 * (s_1233 / Keq_r_0850))) / ((intracellular * ((s_1219 / kms_s_1219r_0850) + ((1.0 + (s_0470 / kmp_s_0470r_0850)) * (1.0 + (s_1233 / kmp_s_1233r_0850))))) * kms_s_1219r_0850)));
    return y;
}
__device__ PRECISION function_209(PRECISION Keq_r_0853,PRECISION Vmax_r_0853,PRECISION intracellular,PRECISION kmp_s_0511r_0853,PRECISION kmp_s_0763_br_0853,PRECISION kmp_s_1219r_0853,PRECISION kms_s_0485r_0853,PRECISION kms_s_0943r_0853,PRECISION s_0485,PRECISION s_0511,PRECISION s_0763_b,PRECISION s_0943,PRECISION s_1219){
    PRECISION y = 0.0;
    y=(Vmax_r_0853 * (((s_0485 * s_0943) - (s_0511 * (pow(s_0763_b,2.0) * (s_1219 / Keq_r_0853)))) / (((intracellular * (-1.0 + (((1.0 + (s_0485 / kms_s_0485r_0853)) * (1.0 + (s_0943 / kms_s_0943r_0853))) + ((1.0 + (s_0511 / kmp_s_0511r_0853)) * ((1.0 + (s_0763_b / kmp_s_0763_br_0853)) * (1.0 + (s_1219 / kmp_s_1219r_0853))))))) * kms_s_0943r_0853) * kms_s_0485r_0853)));
    return y;
}
__device__ PRECISION function_21(PRECISION Keq_r_0059,PRECISION Vmax_r_0059,PRECISION intracellular,PRECISION kmp_s_0234r_0059,PRECISION kmp_s_1082r_0059,PRECISION kms_s_0254r_0059,PRECISION kms_s_0763_br_0059,PRECISION kms_s_1087r_0059,PRECISION s_0234,PRECISION s_0254,PRECISION s_0763_b,PRECISION s_1082,PRECISION s_1087){
    PRECISION y = 0.0;
    y=(Vmax_r_0059 * (((s_0254 * (s_0763_b * s_1087)) - (s_0234 * (s_1082 / Keq_r_0059))) / ((((intracellular * (-1.0 + (((1.0 + (s_0254 / kms_s_0254r_0059)) * ((1.0 + (s_0763_b / kms_s_0763_br_0059)) * (1.0 + (s_1087 / kms_s_1087r_0059)))) + ((1.0 + (s_0234 / kmp_s_0234r_0059)) * (1.0 + (s_1082 / kmp_s_1082r_0059)))))) * kms_s_1087r_0059) * kms_s_0254r_0059) * kms_s_0763_br_0059)));
    return y;
}
__device__ PRECISION function_210(PRECISION Keq_r_0856,PRECISION Vmax_r_0856,PRECISION intracellular,PRECISION kmp_s_0397r_0856,PRECISION kmp_s_0763_br_0856,PRECISION kmp_s_1349r_0856,PRECISION kmp_s_1517r_0856,PRECISION kms_s_0206r_0856,PRECISION kms_s_1521r_0856,PRECISION s_0206,PRECISION s_0397,PRECISION s_0763_b,PRECISION s_1349,PRECISION s_1517,PRECISION s_1521){
    PRECISION y = 0.0;
    y=(Vmax_r_0856 * (((s_0206 * s_1521) - (s_0397 * (pow(s_0763_b,2.0) * (s_1349 * (s_1517 / Keq_r_0856))))) / (((intracellular * (-1.0 + (((1.0 + (s_0206 / kms_s_0206r_0856)) * (1.0 + (s_1521 / kms_s_1521r_0856))) + ((1.0 + (s_0397 / kmp_s_0397r_0856)) * ((1.0 + (s_0763_b / kmp_s_0763_br_0856)) * ((1.0 + (s_1349 / kmp_s_1349r_0856)) * (1.0 + (s_1517 / kmp_s_1517r_0856)))))))) * kms_s_1521r_0856) * kms_s_0206r_0856)));
    return y;
}
__device__ PRECISION function_211(PRECISION Vmax_r_0859,PRECISION kms_s_0446r_0859,PRECISION kms_s_0539r_0859,PRECISION s_0446,PRECISION s_0539,PRECISION s_0400,PRECISION s_0537,PRECISION s_0763_b,PRECISION Keq_r_0859,PRECISION kmp_s_0400r_0859,PRECISION kmp_s_0537r_0859,PRECISION kmp_s_0763_br_0859,PRECISION s_0446m,PRECISION kmI_s_0446mr_0859,PRECISION intracellular){
    PRECISION y = 0.0;
    y=(Vmax_r_0859 * (((s_0446 * s_0539) - (s_0400 * (s_0537 * (s_0763_b / Keq_r_0859)))) / (((intracellular * (((1.0 + (s_0446 / kms_s_0446r_0859)) * (1.0 + (s_0539 / kms_s_0539r_0859))) + (((1.0 + (s_0400 / kmp_s_0400r_0859)) * ((1.0 + (s_0537 / kmp_s_0537r_0859)) * (1.0 + (s_0763_b / kmp_s_0763_br_0859)))) + (s_0446m / kmI_s_0446mr_0859)))) * kms_s_0539r_0859) * kms_s_0446r_0859)));
    return y;
}
__device__ PRECISION function_212(PRECISION Keq_r_0861,PRECISION Vmax_r_0861,PRECISION intracellular,PRECISION kmp_s_0549r_0861,PRECISION kms_s_0410r_0861,PRECISION s_0410,PRECISION s_0549){
    PRECISION y = 0.0;
    y=(Vmax_r_0861 * ((s_0410 - (s_0549 / Keq_r_0861)) / ((intracellular * (1.0 + ((s_0410 / kms_s_0410r_0861) + (s_0549 / kmp_s_0549r_0861)))) * kms_s_0410r_0861)));
    return y;
}
__device__ PRECISION function_213(PRECISION Vmax_r_0865,PRECISION kms_s_0265r_0865,PRECISION kms_s_0400r_0865,PRECISION s_0265,PRECISION s_0400,PRECISION s_0264,PRECISION s_0446,PRECISION Keq_r_0865,PRECISION kmp_s_0264r_0865,PRECISION kmp_s_0446r_0865,PRECISION s_0446m,PRECISION kmI_s_0446mr_0865,PRECISION intracellular){
    PRECISION y = 0.0;
    y=(Vmax_r_0865 * (((s_0265 * s_0400) - (s_0264 * (s_0446 / Keq_r_0865))) / (((intracellular * (((1.0 + (s_0265 / kms_s_0265r_0865)) * (1.0 + (s_0400 / kms_s_0400r_0865))) + (((1.0 + (s_0264 / kmp_s_0264r_0865)) * (1.0 + (s_0446 / kmp_s_0446r_0865))) + (s_0446m / kmI_s_0446mr_0865)))) * kms_s_0400r_0865) * kms_s_0265r_0865)));
    return y;
}
__device__ PRECISION function_214(PRECISION Vmax_r_0866,PRECISION kms_s_0264r_0866,PRECISION s_0264,PRECISION s_0193,PRECISION Keq_r_0866,PRECISION kmp_s_0193r_0866,PRECISION s_0193m,PRECISION kmI_s_0193mr_0866,PRECISION intracellular){
    PRECISION y = 0.0;
    y=(Vmax_r_0866 * ((s_0264 - (s_0193 / Keq_r_0866)) / ((intracellular * (2.0 + ((s_0264 / kms_s_0264r_0866) + ((s_0193 / kmp_s_0193r_0866) + (s_0193m / kmI_s_0193mr_0866))))) * kms_s_0264r_0866)));
    return y;
}
__device__ PRECISION function_215(PRECISION Keq_r_0873,PRECISION Vmax_r_0873,PRECISION intracellular,PRECISION kmp_s_1228r_0873,PRECISION kmp_s_1290r_0873,PRECISION kms_s_1225r_0873,PRECISION kms_s_1293r_0873,PRECISION s_1225,PRECISION s_1228,PRECISION s_1290,PRECISION s_1293){
    PRECISION y = 0.0;
    y=(Vmax_r_0873 * (((s_1225 * s_1293) - (s_1228 * (s_1290 / Keq_r_0873))) / (((intracellular * (-1.0 + (((1.0 + (s_1225 / kms_s_1225r_0873)) * (1.0 + (s_1293 / kms_s_1293r_0873))) + ((1.0 + (s_1228 / kmp_s_1228r_0873)) * (1.0 + (s_1290 / kmp_s_1290r_0873)))))) * kms_s_1293r_0873) * kms_s_1225r_0873)));
    return y;
}
__device__ PRECISION function_216(PRECISION Keq_r_0874,PRECISION Vmax_r_0874,PRECISION intracellular,PRECISION kmp_s_0763_br_0874,PRECISION kmp_s_1225r_0874,PRECISION kmp_s_1290r_0874,PRECISION kms_s_1226r_0874,PRECISION kms_s_1293r_0874,PRECISION s_0763_b,PRECISION s_1225,PRECISION s_1226,PRECISION s_1290,PRECISION s_1293){
    PRECISION y = 0.0;
    y=(Vmax_r_0874 * (((s_1226 * s_1293) - (s_0763_b * (s_1225 * (s_1290 / Keq_r_0874)))) / (((intracellular * (-1.0 + (((1.0 + (s_1226 / kms_s_1226r_0874)) * (1.0 + (s_1293 / kms_s_1293r_0874))) + ((1.0 + (s_0763_b / kmp_s_0763_br_0874)) * ((1.0 + (s_1225 / kmp_s_1225r_0874)) * (1.0 + (s_1290 / kmp_s_1290r_0874))))))) * kms_s_1293r_0874) * kms_s_1226r_0874)));
    return y;
}
__device__ PRECISION function_217(PRECISION Keq_r_0875,PRECISION Vmax_r_0875,PRECISION intracellular,PRECISION kmp_s_0553r_0875,PRECISION kms_s_0554r_0875,PRECISION s_0553,PRECISION s_0554){
    PRECISION y = 0.0;
    y=(Vmax_r_0875 * ((s_0554 - (s_0553 / Keq_r_0875)) / ((intracellular * (1.0 + ((s_0554 / kms_s_0554r_0875) + (s_0553 / kmp_s_0553r_0875)))) * kms_s_0554r_0875)));
    return y;
}
__device__ PRECISION function_218(PRECISION Keq_r_0877,PRECISION Vmax_r_0877,PRECISION intracellular,PRECISION kmp_s_0021r_0877,PRECISION kmp_s_0400r_0877,PRECISION kms_s_0022r_0877,PRECISION kms_s_0446r_0877,PRECISION s_0021,PRECISION s_0022,PRECISION s_0400,PRECISION s_0446){
    PRECISION y = 0.0;
    y=(Vmax_r_0877 * (((s_0022 * s_0446) - (s_0021 * (s_0400 / Keq_r_0877))) / (((intracellular * (-1.0 + (((1.0 + (s_0022 / kms_s_0022r_0877)) * (1.0 + (s_0446 / kms_s_0446r_0877))) + ((1.0 + (s_0021 / kmp_s_0021r_0877)) * (1.0 + (s_0400 / kmp_s_0400r_0877)))))) * kms_s_0446r_0877) * kms_s_0022r_0877)));
    return y;
}
__device__ PRECISION function_219(PRECISION Keq_r_0881,PRECISION Vmax_r_0881,PRECISION intracellular,PRECISION kmp_s_0079r_0881,PRECISION kms_s_0080r_0881,PRECISION kms_s_1434_br_0881,PRECISION s_0079,PRECISION s_0080,PRECISION s_1434_b){
    PRECISION y = 0.0;
    y=(Vmax_r_0881 * (((s_0080 * s_1434_b) - (s_0079 / Keq_r_0881)) / (((intracellular * (((1.0 + (s_0080 / kms_s_0080r_0881)) * (1.0 + (s_1434_b / kms_s_1434_br_0881))) + (s_0079 / kmp_s_0079r_0881))) * kms_s_1434_br_0881) * kms_s_0080r_0881)));
    return y;
}
__device__ PRECISION function_22(PRECISION Keq_r_0060,PRECISION Vmax_r_0060,PRECISION intracellular,PRECISION kmp_s_0055r_0060,PRECISION kmp_s_1082r_0060,PRECISION kms_s_0261r_0060,PRECISION kms_s_0763_br_0060,PRECISION kms_s_1087r_0060,PRECISION s_0055,PRECISION s_0261,PRECISION s_0763_b,PRECISION s_1082,PRECISION s_1087){
    PRECISION y = 0.0;
    y=(Vmax_r_0060 * (((s_0261 * (s_0763_b * s_1087)) - (s_0055 * (s_1082 / Keq_r_0060))) / ((((intracellular * (-1.0 + (((1.0 + (s_0261 / kms_s_0261r_0060)) * ((1.0 + (s_0763_b / kms_s_0763_br_0060)) * (1.0 + (s_1087 / kms_s_1087r_0060)))) + ((1.0 + (s_0055 / kmp_s_0055r_0060)) * (1.0 + (s_1082 / kmp_s_1082r_0060)))))) * kms_s_1087r_0060) * kms_s_0261r_0060) * kms_s_0763_br_0060)));
    return y;
}
__device__ PRECISION function_220(PRECISION Keq_r_0882,PRECISION Vmax_r_0882,PRECISION intracellular,PRECISION kmp_s_0080r_0882,PRECISION kmp_s_0605r_0882,PRECISION kmp_s_0763_br_0882,PRECISION kms_s_0334r_0882,PRECISION kms_s_1434_br_0882,PRECISION s_0080,PRECISION s_0334,PRECISION s_0605,PRECISION s_0763_b,PRECISION s_1434_b){
    PRECISION y = 0.0;
    y=(Vmax_r_0882 * (((s_0334 * s_1434_b) - (s_0080 * (s_0605 * (s_0763_b / Keq_r_0882)))) / (((intracellular * (-1.0 + (((1.0 + (s_0334 / kms_s_0334r_0882)) * (1.0 + (s_1434_b / kms_s_1434_br_0882))) + ((1.0 + (s_0080 / kmp_s_0080r_0882)) * ((1.0 + (s_0605 / kmp_s_0605r_0882)) * (1.0 + (s_0763_b / kmp_s_0763_br_0882))))))) * kms_s_1434_br_0882) * kms_s_0334r_0882)));
    return y;
}
__device__ PRECISION function_221(PRECISION Keq_r_0883,PRECISION Vmax_r_0883,PRECISION intracellular,PRECISION kmp_s_0318r_0883,PRECISION kmp_s_0763_br_0883,PRECISION kms_s_0316r_0883,PRECISION kms_s_0470r_0883,PRECISION s_0316,PRECISION s_0318,PRECISION s_0470,PRECISION s_0763_b){
    PRECISION y = 0.0;
    y=(Vmax_r_0883 * (((s_0316 * s_0470) - (s_0318 * (s_0763_b / Keq_r_0883))) / (((intracellular * (-1.0 + (((1.0 + (s_0316 / kms_s_0316r_0883)) * (1.0 + (s_0470 / kms_s_0470r_0883))) + ((1.0 + (s_0318 / kmp_s_0318r_0883)) * (1.0 + (s_0763_b / kmp_s_0763_br_0883)))))) * kms_s_0470r_0883) * kms_s_0316r_0883)));
    return y;
}
__device__ PRECISION function_222(PRECISION Keq_r_0884,PRECISION Vmax_r_0884,PRECISION intracellular,PRECISION kmp_s_0316r_0884,PRECISION kmp_s_0400r_0884,PRECISION kmp_s_0763_br_0884,PRECISION kmp_s_1207r_0884,PRECISION kms_s_0158r_0884,PRECISION kms_s_0446r_0884,PRECISION s_0158,PRECISION s_0316,PRECISION s_0400,PRECISION s_0446,PRECISION s_0763_b,PRECISION s_1207){
    PRECISION y = 0.0;
    y=(Vmax_r_0884 * (((s_0158 * s_0446) - (s_0316 * (s_0400 * (pow(s_0763_b,2.0) * (s_1207 / Keq_r_0884))))) / (((intracellular * (-1.0 + (((1.0 + (s_0158 / kms_s_0158r_0884)) * (1.0 + (s_0446 / kms_s_0446r_0884))) + ((1.0 + (s_0316 / kmp_s_0316r_0884)) * ((1.0 + (s_0400 / kmp_s_0400r_0884)) * ((1.0 + (s_0763_b / kmp_s_0763_br_0884)) * (1.0 + (s_1207 / kmp_s_1207r_0884)))))))) * kms_s_0446r_0884) * kms_s_0158r_0884)));
    return y;
}
__device__ PRECISION function_223(PRECISION Keq_r_0885,PRECISION Vmax_r_0885,PRECISION intracellular,PRECISION kmp_s_0309r_0885,PRECISION kmp_s_0325r_0885,PRECISION kms_s_0122r_0885,PRECISION kms_s_0317r_0885,PRECISION s_0122,PRECISION s_0309,PRECISION s_0317,PRECISION s_0325){
    PRECISION y = 0.0;
    y=(Vmax_r_0885 * (((s_0122 * s_0317) - (s_0309 * (s_0325 / Keq_r_0885))) / (((intracellular * (-1.0 + (((1.0 + (s_0122 / kms_s_0122r_0885)) * (1.0 + (s_0317 / kms_s_0317r_0885))) + ((1.0 + (s_0309 / kmp_s_0309r_0885)) * (1.0 + (s_0325 / kmp_s_0325r_0885)))))) * kms_s_0317r_0885) * kms_s_0122r_0885)));
    return y;
}
__device__ PRECISION function_224(PRECISION Keq_r_0886,PRECISION Vmax_r_0886,PRECISION intracellular,PRECISION kmp_s_0009r_0886,PRECISION kmp_s_0400r_0886,PRECISION kmp_s_0763_br_0886,PRECISION kmp_s_1207r_0886,PRECISION kms_s_0318r_0886,PRECISION kms_s_0446r_0886,PRECISION kms_s_0881r_0886,PRECISION s_0009,PRECISION s_0318,PRECISION s_0400,PRECISION s_0446,PRECISION s_0763_b,PRECISION s_0881,PRECISION s_1207){
    PRECISION y = 0.0;
    y=(Vmax_r_0886 * (((s_0318 * (s_0446 * s_0881)) - (s_0009 * (s_0400 * (s_0763_b * (s_1207 / Keq_r_0886))))) / ((((intracellular * (-1.0 + (((1.0 + (s_0318 / kms_s_0318r_0886)) * ((1.0 + (s_0446 / kms_s_0446r_0886)) * (1.0 + (s_0881 / kms_s_0881r_0886)))) + ((1.0 + (s_0009 / kmp_s_0009r_0886)) * ((1.0 + (s_0400 / kmp_s_0400r_0886)) * ((1.0 + (s_0763_b / kmp_s_0763_br_0886)) * (1.0 + (s_1207 / kmp_s_1207r_0886)))))))) * kms_s_0881r_0886) * kms_s_0318r_0886) * kms_s_0446r_0886)));
    return y;
}
__device__ PRECISION function_225(PRECISION Keq_r_0887,PRECISION Vmax_r_0887,PRECISION intracellular,PRECISION kmp_s_0078r_0887,PRECISION kms_s_1066r_0887,PRECISION s_0078,PRECISION s_1066){
    PRECISION y = 0.0;
    y=(Vmax_r_0887 * ((s_1066 - (s_0078 / Keq_r_0887)) / ((intracellular * (1.0 + ((s_1066 / kms_s_1066r_0887) + (s_0078 / kmp_s_0078r_0887)))) * kms_s_1066r_0887)));
    return y;
}
__device__ PRECISION function_226(PRECISION Keq_r_0888,PRECISION Vmax_r_0888,PRECISION intracellular,PRECISION kmp_s_0158r_0888,PRECISION kmp_s_0400r_0888,PRECISION kmp_s_0763_br_0888,PRECISION kmp_s_0899r_0888,PRECISION kmp_s_1207r_0888,PRECISION kms_s_0446r_0888,PRECISION kms_s_0907r_0888,PRECISION kms_s_1052r_0888,PRECISION kms_s_1434_br_0888,PRECISION s_0158,PRECISION s_0400,PRECISION s_0446,PRECISION s_0763_b,PRECISION s_0899,PRECISION s_0907,PRECISION s_1052,PRECISION s_1207,PRECISION s_1434_b){
    PRECISION y = 0.0;
    y=(Vmax_r_0888 * (((s_0446 * (s_0907 * (s_1052 * s_1434_b))) - (s_0158 * (s_0400 * (s_0763_b * (s_0899 * (s_1207 / Keq_r_0888)))))) / (((((intracellular * (-1.0 + (((1.0 + (s_0446 / kms_s_0446r_0888)) * ((1.0 + (s_0907 / kms_s_0907r_0888)) * ((1.0 + (s_1052 / kms_s_1052r_0888)) * (1.0 + (s_1434_b / kms_s_1434_br_0888))))) + ((1.0 + (s_0158 / kmp_s_0158r_0888)) * ((1.0 + (s_0400 / kmp_s_0400r_0888)) * ((1.0 + (s_0763_b / kmp_s_0763_br_0888)) * ((1.0 + (s_0899 / kmp_s_0899r_0888)) * (1.0 + (s_1207 / kmp_s_1207r_0888))))))))) * kms_s_1434_br_0888) * kms_s_0907r_0888) * kms_s_0446r_0888) * kms_s_1052r_0888)));
    return y;
}
__device__ PRECISION function_227(PRECISION Keq_r_0889,PRECISION Vmax_r_0889,PRECISION intracellular,PRECISION kmp_s_0309r_0889,PRECISION kmp_s_0763_br_0889,PRECISION kmp_s_1052r_0889,PRECISION kms_s_0122r_0889,PRECISION kms_s_1048r_0889,PRECISION s_0122,PRECISION s_0309,PRECISION s_0763_b,PRECISION s_1048,PRECISION s_1052){
    PRECISION y = 0.0;
    y=(Vmax_r_0889 * (((s_0122 * s_1048) - (s_0309 * (s_0763_b * (s_1052 / Keq_r_0889)))) / (((intracellular * (-1.0 + (((1.0 + (s_0122 / kms_s_0122r_0889)) * (1.0 + (s_1048 / kms_s_1048r_0889))) + ((1.0 + (s_0309 / kmp_s_0309r_0889)) * ((1.0 + (s_0763_b / kmp_s_0763_br_0889)) * (1.0 + (s_1052 / kmp_s_1052r_0889))))))) * kms_s_1048r_0889) * kms_s_0122r_0889)));
    return y;
}
__device__ PRECISION function_228(PRECISION Keq_r_0890,PRECISION Vmax_r_0890,PRECISION intracellular,PRECISION kmp_s_0400r_0890,PRECISION kmp_s_0763_br_0890,PRECISION kmp_s_1048r_0890,PRECISION kmp_s_1207r_0890,PRECISION kms_s_0333r_0890,PRECISION kms_s_0446r_0890,PRECISION kms_s_0740r_0890,PRECISION s_0333,PRECISION s_0400,PRECISION s_0446,PRECISION s_0740,PRECISION s_0763_b,PRECISION s_1048,PRECISION s_1207){
    PRECISION y = 0.0;
    y=(Vmax_r_0890 * (((s_0333 * (s_0446 * s_0740)) - (s_0400 * (s_0763_b * (s_1048 * (s_1207 / Keq_r_0890))))) / ((((intracellular * (-1.0 + (((1.0 + (s_0333 / kms_s_0333r_0890)) * ((1.0 + (s_0446 / kms_s_0446r_0890)) * (1.0 + (s_0740 / kms_s_0740r_0890)))) + ((1.0 + (s_0400 / kmp_s_0400r_0890)) * ((1.0 + (s_0763_b / kmp_s_0763_br_0890)) * ((1.0 + (s_1048 / kmp_s_1048r_0890)) * (1.0 + (s_1207 / kmp_s_1207r_0890)))))))) * kms_s_0740r_0890) * kms_s_0333r_0890) * kms_s_0446r_0890)));
    return y;
}
__device__ PRECISION function_229(PRECISION Keq_r_0891,PRECISION Vmax_r_0891,PRECISION intracellular,PRECISION kmp_s_0331r_0891,PRECISION kmp_s_0434r_0891,PRECISION kmp_s_0763_br_0891,PRECISION kms_s_0427r_0891,PRECISION kms_s_0446r_0891,PRECISION s_0331,PRECISION s_0427,PRECISION s_0434,PRECISION s_0446,PRECISION s_0763_b){
    PRECISION y = 0.0;
    y=(Vmax_r_0891 * (((s_0427 * s_0446) - (s_0331 * (s_0434 * (s_0763_b / Keq_r_0891)))) / (((intracellular * (-1.0 + (((1.0 + (s_0427 / kms_s_0427r_0891)) * (1.0 + (s_0446 / kms_s_0446r_0891))) + ((1.0 + (s_0331 / kmp_s_0331r_0891)) * ((1.0 + (s_0434 / kmp_s_0434r_0891)) * (1.0 + (s_0763_b / kmp_s_0763_br_0891))))))) * kms_s_0446r_0891) * kms_s_0427r_0891)));
    return y;
}
__device__ PRECISION function_23(PRECISION Keq_r_0063,PRECISION Vmax_r_0063,PRECISION intracellular,PRECISION kmp_s_0008r_0063,PRECISION kms_s_0170r_0063,PRECISION kms_s_1434_br_0063,PRECISION s_0008,PRECISION s_0170,PRECISION s_1434_b){
    PRECISION y = 0.0;
    y=(Vmax_r_0063 * (((s_0170 * s_1434_b) - (s_0008 / Keq_r_0063)) / (((intracellular * (((1.0 + (s_0170 / kms_s_0170r_0063)) * (1.0 + (s_1434_b / kms_s_1434_br_0063))) + (s_0008 / kmp_s_0008r_0063))) * kms_s_1434_br_0063) * kms_s_0170r_0063)));
    return y;
}
__device__ PRECISION function_230(PRECISION Keq_r_0911,PRECISION Vmax_r_0911,PRECISION intracellular,PRECISION kmp_s_0470r_0911,PRECISION kmp_s_0859r_0911,PRECISION kmp_s_1434_br_0911,PRECISION kms_s_0763_br_0911,PRECISION kms_s_1258r_0911,PRECISION s_0470,PRECISION s_0763_b,PRECISION s_0859,PRECISION s_1258,PRECISION s_1434_b){
    PRECISION y = 0.0;
    y=(Vmax_r_0911 * (((s_0763_b * s_1258) - (s_0470 * (s_0859 * (s_1434_b / Keq_r_0911)))) / (((intracellular * (-1.0 + (((1.0 + (s_0763_b / kms_s_0763_br_0911)) * (1.0 + (s_1258 / kms_s_1258r_0911))) + ((1.0 + (s_0470 / kmp_s_0470r_0911)) * ((1.0 + (s_0859 / kmp_s_0859r_0911)) * (1.0 + (s_1434_b / kmp_s_1434_br_0911))))))) * kms_s_1258r_0911) * kms_s_0763_br_0911)));
    return y;
}
__device__ PRECISION function_231(PRECISION Keq_r_0913,PRECISION Vmax_r_0913,PRECISION intracellular,PRECISION kmp_s_0209r_0913,PRECISION kmp_s_0470r_0913,PRECISION kmp_s_1096r_0913,PRECISION kms_s_1091r_0913,PRECISION kms_s_1258r_0913,PRECISION s_0209,PRECISION s_0470,PRECISION s_1091,PRECISION s_1096,PRECISION s_1258){
    PRECISION y = 0.0;
    y=(Vmax_r_0913 * (((s_1091 * s_1258) - (s_0209 * (s_0470 * (s_1096 / Keq_r_0913)))) / (((intracellular * (-1.0 + (((1.0 + (s_1091 / kms_s_1091r_0913)) * (1.0 + (s_1258 / kms_s_1258r_0913))) + ((1.0 + (s_0209 / kmp_s_0209r_0913)) * ((1.0 + (s_0470 / kmp_s_0470r_0913)) * (1.0 + (s_1096 / kmp_s_1096r_0913))))))) * kms_s_1258r_0913) * kms_s_1091r_0913)));
    return y;
}
__device__ PRECISION function_232(PRECISION Keq_r_0934,PRECISION Vmax_r_0934,PRECISION intracellular,PRECISION kmp_s_0320r_0934,PRECISION kmp_s_1207r_0934,PRECISION kms_s_0319r_0934,PRECISION kms_s_1434_br_0934,PRECISION s_0319,PRECISION s_0320,PRECISION s_1207,PRECISION s_1434_b){
    PRECISION y = 0.0;
    y=(Vmax_r_0934 * (((s_0319 * s_1434_b) - (s_0320 * (s_1207 / Keq_r_0934))) / (((intracellular * (-1.0 + (((1.0 + (s_0319 / kms_s_0319r_0934)) * (1.0 + (s_1434_b / kms_s_1434_br_0934))) + ((1.0 + (s_0320 / kmp_s_0320r_0934)) * (1.0 + (s_1207 / kmp_s_1207r_0934)))))) * kms_s_1434_br_0934) * kms_s_0319r_0934)));
    return y;
}
__device__ PRECISION function_233(PRECISION Keq_r_0936,PRECISION Vmax_r_0936,PRECISION intracellular,PRECISION kmp_s_0939r_0936,PRECISION kmp_s_1091r_0936,PRECISION kms_s_0120r_0936,PRECISION kms_s_0763_br_0936,PRECISION kms_s_1096r_0936,PRECISION s_0120,PRECISION s_0763_b,PRECISION s_0939,PRECISION s_1091,PRECISION s_1096){
    PRECISION y = 0.0;
    y=(Vmax_r_0936 * (pow((1.0 / kms_s_0763_br_0936),2.0) * (((s_0120 * (pow(s_0763_b,2.0) * s_1096)) - (s_0939 * (s_1091 / Keq_r_0936))) / (((intracellular * (-1.0 + (((1.0 + (s_0120 / kms_s_0120r_0936)) * ((1.0 + (s_0763_b / kms_s_0763_br_0936)) * (1.0 + (s_1096 / kms_s_1096r_0936)))) + ((1.0 + (s_0939 / kmp_s_0939r_0936)) * (1.0 + (s_1091 / kmp_s_1091r_0936)))))) * kms_s_1096r_0936) * kms_s_0120r_0936))));
    return y;
}
__device__ PRECISION function_234(PRECISION Keq_r_0937,PRECISION Vmax_r_0937,PRECISION intracellular,PRECISION kmp_s_0400r_0937,PRECISION kmp_s_0763_br_0937,PRECISION kmp_s_1156r_0937,PRECISION kmp_s_1207r_0937,PRECISION kms_s_0446r_0937,PRECISION kms_s_0458r_0937,PRECISION kms_s_1277r_0937,PRECISION s_0400,PRECISION s_0446,PRECISION s_0458,PRECISION s_0763_b,PRECISION s_1156,PRECISION s_1207,PRECISION s_1277){
    PRECISION y = 0.0;
    y=(Vmax_r_0937 * (((s_0446 * (s_0458 * s_1277)) - (s_0400 * (s_0763_b * (s_1156 * (s_1207 / Keq_r_0937))))) / ((((intracellular * (-1.0 + (((1.0 + (s_0446 / kms_s_0446r_0937)) * ((1.0 + (s_0458 / kms_s_0458r_0937)) * (1.0 + (s_1277 / kms_s_1277r_0937)))) + ((1.0 + (s_0400 / kmp_s_0400r_0937)) * ((1.0 + (s_0763_b / kmp_s_0763_br_0937)) * ((1.0 + (s_1156 / kmp_s_1156r_0937)) * (1.0 + (s_1207 / kmp_s_1207r_0937)))))))) * kms_s_1277r_0937) * kms_s_0446r_0937) * kms_s_0458r_0937)));
    return y;
}
__device__ PRECISION function_235(PRECISION Vmax_r_0938,PRECISION kms_s_0763_br_0938,PRECISION kms_s_1277r_0938,PRECISION s_0763_b,PRECISION s_1277,PRECISION s_0366,PRECISION s_0470,PRECISION Keq_r_0938,PRECISION kmp_s_0366r_0938,PRECISION kmp_s_0470r_0938,PRECISION s_1277m,PRECISION kmI_s_1277mr_0938,PRECISION intracellular){
    PRECISION y = 0.0;
    y=(Vmax_r_0938 * (((s_0763_b * s_1277) - (s_0366 * (s_0470 / Keq_r_0938))) / (((intracellular * (((1.0 + (s_0763_b / kms_s_0763_br_0938)) * (1.0 + (s_1277 / kms_s_1277r_0938))) + (((1.0 + (s_0366 / kmp_s_0366r_0938)) * (1.0 + (s_0470 / kmp_s_0470r_0938))) + (s_1277m / kmI_s_1277mr_0938)))) * kms_s_1277r_0938) * kms_s_0763_br_0938)));
    return y;
}
__device__ PRECISION function_236(PRECISION Keq_r_0940,PRECISION Vmax_r_0940,PRECISION intracellular,PRECISION kmp_s_0380r_0940,PRECISION kmp_s_0470r_0940,PRECISION kmp_s_1087r_0940,PRECISION kms_s_0514r_0940,PRECISION kms_s_1082r_0940,PRECISION kms_s_1277r_0940,PRECISION s_0380,PRECISION s_0470,PRECISION s_0514,PRECISION s_1082,PRECISION s_1087,PRECISION s_1277){
    PRECISION y = 0.0;
    y=(Vmax_r_0940 * (((s_0514 * (s_1082 * s_1277)) - (s_0380 * (s_0470 * (s_1087 / Keq_r_0940)))) / ((((intracellular * (-1.0 + (((1.0 + (s_0514 / kms_s_0514r_0940)) * ((1.0 + (s_1082 / kms_s_1082r_0940)) * (1.0 + (s_1277 / kms_s_1277r_0940)))) + ((1.0 + (s_0380 / kmp_s_0380r_0940)) * ((1.0 + (s_0470 / kmp_s_0470r_0940)) * (1.0 + (s_1087 / kmp_s_1087r_0940))))))) * kms_s_1277r_0940) * kms_s_0514r_0940) * kms_s_1082r_0940)));
    return y;
}
__device__ PRECISION function_237(PRECISION Keq_r_0941,PRECISION Vmax_r_0941,PRECISION intracellular,PRECISION kmp_s_0446r_0941,PRECISION kmp_s_1277r_0941,PRECISION kms_s_0400r_0941,PRECISION kms_s_0763_br_0941,PRECISION kms_s_1243r_0941,PRECISION s_0400,PRECISION s_0446,PRECISION s_0763_b,PRECISION s_1243,PRECISION s_1277){
    PRECISION y = 0.0;
    y=(Vmax_r_0941 * (((s_0400 * (s_0763_b * s_1243)) - (s_0446 * (s_1277 / Keq_r_0941))) / ((((intracellular * (-1.0 + (((1.0 + (s_0400 / kms_s_0400r_0941)) * ((1.0 + (s_0763_b / kms_s_0763_br_0941)) * (1.0 + (s_1243 / kms_s_1243r_0941)))) + ((1.0 + (s_0446 / kmp_s_0446r_0941)) * (1.0 + (s_1277 / kmp_s_1277r_0941)))))) * kms_s_1243r_0941) * kms_s_0400r_0941) * kms_s_0763_br_0941)));
    return y;
}
__device__ PRECISION function_238(PRECISION Keq_r_0948,PRECISION Vmax_r_0948,PRECISION intracellular,PRECISION kmp_s_0335r_0948,PRECISION kmp_s_1207r_0948,PRECISION kmp_s_1434_br_0948,PRECISION kms_s_0163r_0948,PRECISION kms_s_0320r_0948,PRECISION s_0163,PRECISION s_0320,PRECISION s_0335,PRECISION s_1207,PRECISION s_1434_b){
    PRECISION y = 0.0;
    y=(Vmax_r_0948 * (((s_0163 * s_0320) - (s_0335 * (s_1207 * (pow(s_1434_b,2.0) / Keq_r_0948)))) / (((intracellular * (-1.0 + (((1.0 + (s_0163 / kms_s_0163r_0948)) * (1.0 + (s_0320 / kms_s_0320r_0948))) + ((1.0 + (s_0335 / kmp_s_0335r_0948)) * ((1.0 + (s_1207 / kmp_s_1207r_0948)) * (1.0 + (s_1434_b / kmp_s_1434_br_0948))))))) * kms_s_0320r_0948) * kms_s_0163r_0948)));
    return y;
}
__device__ PRECISION function_239(PRECISION Keq_r_0949,PRECISION Vmax_r_0949,PRECISION intracellular,PRECISION kmp_s_0320r_0949,PRECISION kmp_s_1283r_0949,PRECISION kms_s_0335r_0949,PRECISION s_0320,PRECISION s_0335,PRECISION s_1283){
    PRECISION y = 0.0;
    y=(Vmax_r_0949 * (pow((1.0 / kms_s_0335r_0949),2.0) * ((pow(s_0335,2.0) - (s_0320 * (s_1283 / Keq_r_0949))) / (intracellular * ((s_0335 / kms_s_0335r_0949) + ((1.0 + (s_0320 / kmp_s_0320r_0949)) * (1.0 + (s_1283 / kmp_s_1283r_0949))))))));
    return y;
}
__device__ PRECISION function_24(PRECISION Keq_r_0064,PRECISION Vmax_r_0064,PRECISION intracellular,PRECISION kmp_s_0010r_0064,PRECISION kmp_s_0763_br_0064,PRECISION kmp_s_1087r_0064,PRECISION kms_s_0008r_0064,PRECISION kms_s_1082r_0064,PRECISION s_0008,PRECISION s_0010,PRECISION s_0763_b,PRECISION s_1082,PRECISION s_1087){
    PRECISION y = 0.0;
    y=(Vmax_r_0064 * (((s_0008 * s_1082) - (s_0010 * (s_0763_b * (s_1087 / Keq_r_0064)))) / (((intracellular * (-1.0 + (((1.0 + (s_0008 / kms_s_0008r_0064)) * (1.0 + (s_1082 / kms_s_1082r_0064))) + ((1.0 + (s_0010 / kmp_s_0010r_0064)) * ((1.0 + (s_0763_b / kmp_s_0763_br_0064)) * (1.0 + (s_1087 / kmp_s_1087r_0064))))))) * kms_s_1082r_0064) * kms_s_0008r_0064)));
    return y;
}
__device__ PRECISION function_240(PRECISION Keq_r_0951,PRECISION Vmax_r_0951,PRECISION intracellular,PRECISION kmp_s_0562r_0951,PRECISION kmp_s_1434_br_0951,PRECISION kmp_s_1517r_0951,PRECISION kms_s_0400r_0951,PRECISION kms_s_1521r_0951,PRECISION s_0400,PRECISION s_0562,PRECISION s_1434_b,PRECISION s_1517,PRECISION s_1521){
    PRECISION y = 0.0;
    y=(Vmax_r_0951 * (((s_0400 * s_1521) - (s_0562 * (s_1434_b * (s_1517 / Keq_r_0951)))) / (((intracellular * (-1.0 + (((1.0 + (s_0400 / kms_s_0400r_0951)) * (1.0 + (s_1521 / kms_s_1521r_0951))) + ((1.0 + (s_0562 / kmp_s_0562r_0951)) * ((1.0 + (s_1434_b / kmp_s_1434_br_0951)) * (1.0 + (s_1517 / kmp_s_1517r_0951))))))) * kms_s_1521r_0951) * kms_s_0400r_0951)));
    return y;
}
__device__ PRECISION function_241(PRECISION Keq_r_0955,PRECISION Vmax_r_0955,PRECISION intracellular,PRECISION kmp_s_0591r_0955,PRECISION kmp_s_1434_br_0955,PRECISION kmp_s_1517r_0955,PRECISION kms_s_0706r_0955,PRECISION kms_s_1521r_0955,PRECISION s_0591,PRECISION s_0706,PRECISION s_1434_b,PRECISION s_1517,PRECISION s_1521){
    PRECISION y = 0.0;
    y=(Vmax_r_0955 * (((s_0706 * s_1521) - (s_0591 * (s_1434_b * (s_1517 / Keq_r_0955)))) / (((intracellular * (-1.0 + (((1.0 + (s_0706 / kms_s_0706r_0955)) * (1.0 + (s_1521 / kms_s_1521r_0955))) + ((1.0 + (s_0591 / kmp_s_0591r_0955)) * ((1.0 + (s_1434_b / kmp_s_1434_br_0955)) * (1.0 + (s_1517 / kmp_s_1517r_0955))))))) * kms_s_1521r_0955) * kms_s_0706r_0955)));
    return y;
}
__device__ PRECISION function_242(PRECISION Keq_r_0957,PRECISION Vmax_r_0957,PRECISION intracellular,PRECISION kmp_s_0622r_0957,PRECISION kmp_s_1434_br_0957,PRECISION kmp_s_1517r_0957,PRECISION kms_s_1411r_0957,PRECISION kms_s_1521r_0957,PRECISION s_0622,PRECISION s_1411,PRECISION s_1434_b,PRECISION s_1517,PRECISION s_1521){
    PRECISION y = 0.0;
    y=(Vmax_r_0957 * (((s_1411 * s_1521) - (s_0622 * (s_1434_b * (s_1517 / Keq_r_0957)))) / (((intracellular * (-1.0 + (((1.0 + (s_1411 / kms_s_1411r_0957)) * (1.0 + (s_1521 / kms_s_1521r_0957))) + ((1.0 + (s_0622 / kmp_s_0622r_0957)) * ((1.0 + (s_1434_b / kmp_s_1434_br_0957)) * (1.0 + (s_1517 / kmp_s_1517r_0957))))))) * kms_s_1521r_0957) * kms_s_1411r_0957)));
    return y;
}
__device__ PRECISION function_243(PRECISION Keq_r_0959,PRECISION Vmax_r_0959,PRECISION intracellular,PRECISION kmp_s_0566r_0959,PRECISION kmp_s_1434_br_0959,PRECISION kmp_s_1517r_0959,PRECISION kms_s_0446r_0959,PRECISION kms_s_1521r_0959,PRECISION s_0446,PRECISION s_0566,PRECISION s_1434_b,PRECISION s_1517,PRECISION s_1521){
    PRECISION y = 0.0;
    y=(Vmax_r_0959 * (((s_0446 * s_1521) - (s_0566 * (s_1434_b * (s_1517 / Keq_r_0959)))) / (((intracellular * (-1.0 + (((1.0 + (s_0446 / kms_s_0446r_0959)) * (1.0 + (s_1521 / kms_s_1521r_0959))) + ((1.0 + (s_0566 / kmp_s_0566r_0959)) * ((1.0 + (s_1434_b / kmp_s_1434_br_0959)) * (1.0 + (s_1517 / kmp_s_1517r_0959))))))) * kms_s_1521r_0959) * kms_s_0446r_0959)));
    return y;
}
__device__ PRECISION function_244(PRECISION Keq_r_0963,PRECISION Vmax_r_0963,PRECISION intracellular,PRECISION kmp_s_0427r_0963,PRECISION kms_s_0557r_0963,PRECISION s_0427,PRECISION s_0557){
    PRECISION y = 0.0;
    y=(Vmax_r_0963 * ((s_0557 - (s_0427 / Keq_r_0963)) / ((intracellular * (1.0 + ((s_0557 / kms_s_0557r_0963) + (s_0427 / kmp_s_0427r_0963)))) * kms_s_0557r_0963)));
    return y;
}
__device__ PRECISION function_245(PRECISION Keq_r_0965,PRECISION Vmax_r_0965,PRECISION intracellular,PRECISION kmp_s_0557r_0965,PRECISION kms_s_0561r_0965,PRECISION s_0557,PRECISION s_0561){
    PRECISION y = 0.0;
    y=(Vmax_r_0965 * ((s_0561 - (s_0557 / Keq_r_0965)) / ((intracellular * (1.0 + ((s_0561 / kms_s_0561r_0965) + (s_0557 / kmp_s_0557r_0965)))) * kms_s_0561r_0965)));
    return y;
}
__device__ PRECISION function_246(PRECISION Keq_r_0967,PRECISION Vmax_r_0967,PRECISION intracellular,PRECISION kmp_s_0669r_0967,PRECISION kmp_s_0763_br_0967,PRECISION kmp_s_1290r_0967,PRECISION kms_s_1293r_0967,PRECISION kms_s_1447r_0967,PRECISION s_0669,PRECISION s_0763_b,PRECISION s_1290,PRECISION s_1293,PRECISION s_1447){
    PRECISION y = 0.0;
    y=(Vmax_r_0967 * (((s_1293 * s_1447) - (s_0669 * (s_0763_b * (s_1290 / Keq_r_0967)))) / (((intracellular * (-1.0 + (((1.0 + (s_1293 / kms_s_1293r_0967)) * (1.0 + (s_1447 / kms_s_1447r_0967))) + ((1.0 + (s_0669 / kmp_s_0669r_0967)) * ((1.0 + (s_0763_b / kmp_s_0763_br_0967)) * (1.0 + (s_1290 / kmp_s_1290r_0967))))))) * kms_s_1447r_0967) * kms_s_1293r_0967)));
    return y;
}
__device__ PRECISION function_247(PRECISION Keq_r_0969,PRECISION Vmax_r_0969,PRECISION intracellular,PRECISION kmp_s_0185r_0969,PRECISION kmp_s_0763_br_0969,PRECISION kmp_s_0929r_0969,PRECISION kmp_s_1087r_0969,PRECISION kms_s_0942r_0969,PRECISION kms_s_1082r_0969,PRECISION kms_s_1434_br_0969,PRECISION s_0185,PRECISION s_0763_b,PRECISION s_0929,PRECISION s_0942,PRECISION s_1082,PRECISION s_1087,PRECISION s_1434_b){
    PRECISION y = 0.0;
    y=(Vmax_r_0969 * (((s_0942 * (s_1082 * s_1434_b)) - (s_0185 * (s_0763_b * (s_0929 * (s_1087 / Keq_r_0969))))) / ((((intracellular * (-1.0 + (((1.0 + (s_0942 / kms_s_0942r_0969)) * ((1.0 + (s_1082 / kms_s_1082r_0969)) * (1.0 + (s_1434_b / kms_s_1434_br_0969)))) + ((1.0 + (s_0185 / kmp_s_0185r_0969)) * ((1.0 + (s_0763_b / kmp_s_0763_br_0969)) * ((1.0 + (s_0929 / kmp_s_0929r_0969)) * (1.0 + (s_1087 / kmp_s_1087r_0969)))))))) * kms_s_1434_br_0969) * kms_s_0942r_0969) * kms_s_1082r_0969)));
    return y;
}
__device__ PRECISION function_248(PRECISION Keq_r_0970,PRECISION Vmax_r_0970,PRECISION intracellular,PRECISION kmp_s_0942r_0970,PRECISION kmp_s_1091r_0970,PRECISION kmp_s_1434_br_0970,PRECISION kms_s_0763_br_0970,PRECISION kms_s_0867r_0970,PRECISION kms_s_0899r_0970,PRECISION kms_s_1096r_0970,PRECISION s_0763_b,PRECISION s_0867,PRECISION s_0899,PRECISION s_0942,PRECISION s_1091,PRECISION s_1096,PRECISION s_1434_b){
    PRECISION y = 0.0;
    y=(Vmax_r_0970 * (((s_0763_b * (s_0867 * (s_0899 * s_1096))) - (s_0942 * (s_1091 * (s_1434_b / Keq_r_0970)))) / (((((intracellular * (-1.0 + (((1.0 + (s_0763_b / kms_s_0763_br_0970)) * ((1.0 + (s_0867 / kms_s_0867r_0970)) * ((1.0 + (s_0899 / kms_s_0899r_0970)) * (1.0 + (s_1096 / kms_s_1096r_0970))))) + ((1.0 + (s_0942 / kmp_s_0942r_0970)) * ((1.0 + (s_1091 / kmp_s_1091r_0970)) * (1.0 + (s_1434_b / kmp_s_1434_br_0970))))))) * kms_s_1096r_0970) * kms_s_0867r_0970) * kms_s_0763_br_0970) * kms_s_0899r_0970)));
    return y;
}
__device__ PRECISION function_249(PRECISION Keq_r_0972,PRECISION Vmax_r_0972,PRECISION intracellular,PRECISION kmp_s_0218r_0972,PRECISION kmp_s_0470r_0972,PRECISION kmp_s_0514r_0972,PRECISION kms_s_0943r_0972,PRECISION kms_s_1187r_0972,PRECISION s_0218,PRECISION s_0470,PRECISION s_0514,PRECISION s_0943,PRECISION s_1187){
    PRECISION y = 0.0;
    y=(Vmax_r_0972 * (((s_0943 * s_1187) - (s_0218 * (s_0470 * (s_0514 / Keq_r_0972)))) / (((intracellular * (-1.0 + (((1.0 + (s_0943 / kms_s_0943r_0972)) * (1.0 + (s_1187 / kms_s_1187r_0972))) + ((1.0 + (s_0218 / kmp_s_0218r_0972)) * ((1.0 + (s_0470 / kmp_s_0470r_0972)) * (1.0 + (s_0514 / kmp_s_0514r_0972))))))) * kms_s_1187r_0972) * kms_s_0943r_0972)));
    return y;
}
__device__ PRECISION function_25(PRECISION Keq_r_0068,PRECISION Vmax_r_0068,PRECISION intracellular,PRECISION kmp_s_0330r_0068,PRECISION kmp_s_1207r_0068,PRECISION kms_s_0267r_0068,PRECISION kms_s_1243r_0068,PRECISION s_0267,PRECISION s_0330,PRECISION s_1207,PRECISION s_1243){
    PRECISION y = 0.0;
    y=(Vmax_r_0068 * (((s_0267 * s_1243) - (s_0330 * (s_1207 / Keq_r_0068))) / (((intracellular * (-1.0 + (((1.0 + (s_0267 / kms_s_0267r_0068)) * (1.0 + (s_1243 / kms_s_1243r_0068))) + ((1.0 + (s_0330 / kmp_s_0330r_0068)) * (1.0 + (s_1207 / kmp_s_1207r_0068)))))) * kms_s_1243r_0068) * kms_s_0267r_0068)));
    return y;
}
__device__ PRECISION function_250(PRECISION Keq_r_0976,PRECISION Vmax_r_0976,PRECISION intracellular,PRECISION kmp_s_1091r_0976,PRECISION kmp_s_1306r_0976,PRECISION kms_s_0217r_0976,PRECISION kms_s_0763_br_0976,PRECISION kms_s_1096r_0976,PRECISION s_0217,PRECISION s_0763_b,PRECISION s_1091,PRECISION s_1096,PRECISION s_1306){
    PRECISION y = 0.0;
    y=(Vmax_r_0976 * (((s_0217 * (s_0763_b * s_1096)) - (s_1091 * (s_1306 / Keq_r_0976))) / ((((intracellular * (-1.0 + (((1.0 + (s_0217 / kms_s_0217r_0976)) * ((1.0 + (s_0763_b / kms_s_0763_br_0976)) * (1.0 + (s_1096 / kms_s_1096r_0976)))) + ((1.0 + (s_1091 / kmp_s_1091r_0976)) * (1.0 + (s_1306 / kmp_s_1306r_0976)))))) * kms_s_1096r_0976) * kms_s_0217r_0976) * kms_s_0763_br_0976)));
    return y;
}
__device__ PRECISION function_251(PRECISION Keq_r_0977,PRECISION Vmax_r_0977,PRECISION intracellular,PRECISION kmp_s_0267r_0977,PRECISION kmp_s_0400r_0977,PRECISION kmp_s_0763_br_0977,PRECISION kms_s_0446r_0977,PRECISION kms_s_1306r_0977,PRECISION s_0267,PRECISION s_0400,PRECISION s_0446,PRECISION s_0763_b,PRECISION s_1306){
    PRECISION y = 0.0;
    y=(Vmax_r_0977 * (((s_0446 * s_1306) - (s_0267 * (s_0400 * (s_0763_b / Keq_r_0977)))) / (((intracellular * (-1.0 + (((1.0 + (s_0446 / kms_s_0446r_0977)) * (1.0 + (s_1306 / kms_s_1306r_0977))) + ((1.0 + (s_0267 / kmp_s_0267r_0977)) * ((1.0 + (s_0400 / kmp_s_0400r_0977)) * (1.0 + (s_0763_b / kmp_s_0763_br_0977))))))) * kms_s_1306r_0977) * kms_s_0446r_0977)));
    return y;
}
__device__ PRECISION function_252(PRECISION Keq_r_0991,PRECISION Vmax_r_0991,PRECISION intracellular,PRECISION kmp_s_0040r_0991,PRECISION kmp_s_1082r_0991,PRECISION kmp_s_1434_br_0991,PRECISION kms_s_0763_br_0991,PRECISION kms_s_1087r_0991,PRECISION kms_s_1160r_0991,PRECISION kms_s_1327r_0991,PRECISION s_0040,PRECISION s_0763_b,PRECISION s_1082,PRECISION s_1087,PRECISION s_1160,PRECISION s_1327,PRECISION s_1434_b){
    PRECISION y = 0.0;
    y=(Vmax_r_0991 * (((s_0763_b * (s_1087 * (s_1160 * s_1327))) - (s_0040 * (s_1082 * (s_1434_b / Keq_r_0991)))) / (((((intracellular * (-1.0 + (((1.0 + (s_0763_b / kms_s_0763_br_0991)) * ((1.0 + (s_1087 / kms_s_1087r_0991)) * ((1.0 + (s_1160 / kms_s_1160r_0991)) * (1.0 + (s_1327 / kms_s_1327r_0991))))) + ((1.0 + (s_0040 / kmp_s_0040r_0991)) * ((1.0 + (s_1082 / kmp_s_1082r_0991)) * (1.0 + (s_1434_b / kmp_s_1434_br_0991))))))) * kms_s_1327r_0991) * kms_s_1087r_0991) * kms_s_0763_br_0991) * kms_s_1160r_0991)));
    return y;
}
__device__ PRECISION function_253(PRECISION Keq_r_0993,PRECISION Vmax_r_0993,PRECISION intracellular,PRECISION kmp_s_0605r_0993,PRECISION kmp_s_1091r_0993,PRECISION kmp_s_1327r_0993,PRECISION kms_s_0195r_0993,PRECISION kms_s_0763_br_0993,PRECISION kms_s_1096r_0993,PRECISION s_0195,PRECISION s_0605,PRECISION s_0763_b,PRECISION s_1091,PRECISION s_1096,PRECISION s_1327){
    PRECISION y = 0.0;
    y=(Vmax_r_0993 * (pow((1.0 / kms_s_0195r_0993),2.0) * (((pow(s_0195,2.0) * (s_0763_b * s_1096)) - (pow(s_0605,2.0) * (s_1091 * (s_1327 / Keq_r_0993)))) / (((intracellular * (-1.0 + (((1.0 + (s_0195 / kms_s_0195r_0993)) * ((1.0 + (s_0763_b / kms_s_0763_br_0993)) * (1.0 + (s_1096 / kms_s_1096r_0993)))) + ((1.0 + (s_0605 / kmp_s_0605r_0993)) * ((1.0 + (s_1091 / kmp_s_1091r_0993)) * (1.0 + (s_1327 / kmp_s_1327r_0993))))))) * kms_s_1096r_0993) * kms_s_0763_br_0993))));
    return y;
}
__device__ PRECISION function_254(PRECISION Keq_r_0995,PRECISION Vmax_r_0995,PRECISION intracellular,PRECISION kmp_s_0641r_0995,PRECISION kmp_s_1434_br_0995,PRECISION kms_s_0635r_0995,PRECISION kms_s_0663r_0995,PRECISION s_0635,PRECISION s_0641,PRECISION s_0663,PRECISION s_1434_b){
    PRECISION y = 0.0;
    y=(Vmax_r_0995 * (((s_0635 * s_0663) - (s_0641 * (s_1434_b / Keq_r_0995))) / (((intracellular * (-1.0 + (((1.0 + (s_0635 / kms_s_0635r_0995)) * (1.0 + (s_0663 / kms_s_0663r_0995))) + ((1.0 + (s_0641 / kmp_s_0641r_0995)) * (1.0 + (s_1434_b / kmp_s_1434_br_0995)))))) * kms_s_0663r_0995) * kms_s_0635r_0995)));
    return y;
}
__device__ PRECISION function_255(PRECISION Keq_r_1003,PRECISION Vmax_r_1003,PRECISION intracellular,PRECISION kmp_s_0400r_1003,PRECISION kmp_s_1207r_1003,PRECISION kmp_s_1342r_1003,PRECISION kms_s_0446r_1003,PRECISION kms_s_0514r_1003,PRECISION kms_s_1338r_1003,PRECISION s_0400,PRECISION s_0446,PRECISION s_0514,PRECISION s_1207,PRECISION s_1338,PRECISION s_1342){
    PRECISION y = 0.0;
    y=(Vmax_r_1003 * (((s_0446 * (s_0514 * s_1338)) - (s_0400 * (s_1207 * (s_1342 / Keq_r_1003)))) / ((((intracellular * (-1.0 + (((1.0 + (s_0446 / kms_s_0446r_1003)) * ((1.0 + (s_0514 / kms_s_0514r_1003)) * (1.0 + (s_1338 / kms_s_1338r_1003)))) + ((1.0 + (s_0400 / kmp_s_0400r_1003)) * ((1.0 + (s_1207 / kmp_s_1207r_1003)) * (1.0 + (s_1342 / kmp_s_1342r_1003))))))) * kms_s_1338r_1003) * kms_s_0446r_1003) * kms_s_0514r_1003)));
    return y;
}
__device__ PRECISION function_256(PRECISION Keq_r_1007,PRECISION Vmax_r_1007,PRECISION intracellular,PRECISION kmp_s_0304r_1007,PRECISION kmp_s_1207r_1007,PRECISION kms_s_0400r_1007,PRECISION kms_s_0763_br_1007,PRECISION kms_s_1347r_1007,PRECISION s_0304,PRECISION s_0400,PRECISION s_0763_b,PRECISION s_1207,PRECISION s_1347){
    PRECISION y = 0.0;
    y=(Vmax_r_1007 * (((s_0400 * (s_0763_b * s_1347)) - (s_0304 * (s_1207 / Keq_r_1007))) / ((((intracellular * (-1.0 + (((1.0 + (s_0400 / kms_s_0400r_1007)) * ((1.0 + (s_0763_b / kms_s_0763_br_1007)) * (1.0 + (s_1347 / kms_s_1347r_1007)))) + ((1.0 + (s_0304 / kmp_s_0304r_1007)) * (1.0 + (s_1207 / kmp_s_1207r_1007)))))) * kms_s_1347r_1007) * kms_s_0400r_1007) * kms_s_0763_br_1007)));
    return y;
}
__device__ PRECISION function_257(PRECISION Keq_r_1008,PRECISION Vmax_r_1008,PRECISION intracellular,PRECISION kmp_s_0805r_1008,PRECISION kmp_s_1091r_1008,PRECISION kmp_s_1434_br_1008,PRECISION kms_s_0763_br_1008,PRECISION kms_s_1096r_1008,PRECISION kms_s_1349r_1008,PRECISION s_0763_b,PRECISION s_0805,PRECISION s_1091,PRECISION s_1096,PRECISION s_1349,PRECISION s_1434_b){
    PRECISION y = 0.0;
    y=(Vmax_r_1008 * (pow((1.0 / kms_s_0763_br_1008),5.0) * (pow((1.0 / kms_s_1096r_1008),3.0) * (((pow(s_0763_b,5.0) * (pow(s_1096,3.0) * s_1349)) - (s_0805 * (pow((s_1091 * s_1434_b),3.0) / Keq_r_1008))) / ((intracellular * (-1.0 + (((1.0 + (s_0763_b / kms_s_0763_br_1008)) * ((1.0 + (s_1096 / kms_s_1096r_1008)) * (1.0 + (s_1349 / kms_s_1349r_1008)))) + ((1.0 + (s_0805 / kmp_s_0805r_1008)) * ((1.0 + (s_1091 / kmp_s_1091r_1008)) * (1.0 + (s_1434_b / kmp_s_1434_br_1008))))))) * kms_s_1349r_1008)))));
    return y;
}
__device__ PRECISION function_258(PRECISION Keq_r_1024,PRECISION Vmax_r_1024,PRECISION intracellular,PRECISION kmp_s_1091r_1024,PRECISION kmp_s_1521r_1024,PRECISION kms_s_0763_br_1024,PRECISION kms_s_1096r_1024,PRECISION kms_s_1517r_1024,PRECISION s_0763_b,PRECISION s_1091,PRECISION s_1096,PRECISION s_1517,PRECISION s_1521){
    PRECISION y = 0.0;
    y=(Vmax_r_1024 * (((s_0763_b * (s_1096 * s_1517)) - (s_1091 * (s_1521 / Keq_r_1024))) / ((((intracellular * (-1.0 + (((1.0 + (s_0763_b / kms_s_0763_br_1024)) * ((1.0 + (s_1096 / kms_s_1096r_1024)) * (1.0 + (s_1517 / kms_s_1517r_1024)))) + ((1.0 + (s_1091 / kmp_s_1091r_1024)) * (1.0 + (s_1521 / kmp_s_1521r_1024)))))) * kms_s_1517r_1024) * kms_s_0763_br_1024) * kms_s_1096r_1024)));
    return y;
}
__device__ PRECISION function_259(PRECISION Keq_r_1026,PRECISION Vmax_r_1026,PRECISION intracellular,PRECISION kmp_s_0366r_1026,PRECISION kmp_s_0740r_1026,PRECISION kms_s_0949r_1026,PRECISION s_0366,PRECISION s_0740,PRECISION s_0949){
    PRECISION y = 0.0;
    y=(Vmax_r_1026 * ((s_0949 - (s_0366 * (s_0740 / Keq_r_1026))) / ((intracellular * ((s_0949 / kms_s_0949r_1026) + ((1.0 + (s_0366 / kmp_s_0366r_1026)) * (1.0 + (s_0740 / kmp_s_0740r_1026))))) * kms_s_0949r_1026)));
    return y;
}
__device__ PRECISION function_26(PRECISION Keq_r_0093,PRECISION Vmax_r_0093,PRECISION intracellular,PRECISION kmp_s_0328r_0093,PRECISION kmp_s_1091r_0093,PRECISION kms_s_0307r_0093,PRECISION kms_s_0763_br_0093,PRECISION kms_s_1096r_0093,PRECISION s_0307,PRECISION s_0328,PRECISION s_0763_b,PRECISION s_1091,PRECISION s_1096){
    PRECISION y = 0.0;
    y=(Vmax_r_0093 * (pow((1.0 / kms_s_0763_br_0093),2.0) * (((s_0307 * (pow(s_0763_b,2.0) * s_1096)) - (s_0328 * (s_1091 / Keq_r_0093))) / (((intracellular * (-1.0 + (((1.0 + (s_0307 / kms_s_0307r_0093)) * ((1.0 + (s_0763_b / kms_s_0763_br_0093)) * (1.0 + (s_1096 / kms_s_1096r_0093)))) + ((1.0 + (s_0328 / kmp_s_0328r_0093)) * (1.0 + (s_1091 / kmp_s_1091r_0093)))))) * kms_s_1096r_0093) * kms_s_0307r_0093))));
    return y;
}
__device__ PRECISION function_260(PRECISION Keq_r_1027,PRECISION Vmax_r_1027,PRECISION intracellular,PRECISION kmp_s_0949r_1027,PRECISION kmp_s_1207r_1027,PRECISION kms_s_1122r_1027,PRECISION kms_s_1434_br_1027,PRECISION s_0949,PRECISION s_1122,PRECISION s_1207,PRECISION s_1434_b){
    PRECISION y = 0.0;
    y=(Vmax_r_1027 * (((s_1122 * s_1434_b) - (s_0949 * (s_1207 / Keq_r_1027))) / (((intracellular * (-1.0 + (((1.0 + (s_1122 / kms_s_1122r_1027)) * (1.0 + (s_1434_b / kms_s_1434_br_1027))) + ((1.0 + (s_0949 / kmp_s_0949r_1027)) * (1.0 + (s_1207 / kmp_s_1207r_1027)))))) * kms_s_1434_br_1027) * kms_s_1122r_1027)));
    return y;
}
__device__ PRECISION function_261(PRECISION Keq_r_1032,PRECISION Vmax_r_1032,PRECISION intracellular,PRECISION kmp_s_0601r_1032,PRECISION kmp_s_0619r_1032,PRECISION kms_s_0307r_1032,PRECISION kms_s_0624r_1032,PRECISION s_0307,PRECISION s_0601,PRECISION s_0619,PRECISION s_0624){
    PRECISION y = 0.0;
    y=(Vmax_r_1032 * (((s_0307 * s_0624) - (s_0601 * (s_0619 / Keq_r_1032))) / (((intracellular * (-1.0 + (((1.0 + (s_0307 / kms_s_0307r_1032)) * (1.0 + (s_0624 / kms_s_0624r_1032))) + ((1.0 + (s_0601 / kmp_s_0601r_1032)) * (1.0 + (s_0619 / kmp_s_0619r_1032)))))) * kms_s_0624r_1032) * kms_s_0307r_1032)));
    return y;
}
__device__ PRECISION function_262(PRECISION Keq_r_1035,PRECISION Vmax_r_1035,PRECISION intracellular,PRECISION kmp_s_0731r_1035,PRECISION kmp_s_1304r_1035,PRECISION kms_s_0533r_1035,PRECISION kms_s_0539r_1035,PRECISION s_0533,PRECISION s_0539,PRECISION s_0731,PRECISION s_1304){
    PRECISION y = 0.0;
    y=(Vmax_r_1035 * (((s_0533 * s_0539) - (s_0731 * (s_1304 / Keq_r_1035))) / (((intracellular * (-1.0 + (((1.0 + (s_0533 / kms_s_0533r_1035)) * (1.0 + (s_0539 / kms_s_0539r_1035))) + ((1.0 + (s_0731 / kmp_s_0731r_1035)) * (1.0 + (s_1304 / kmp_s_1304r_1035)))))) * kms_s_0539r_1035) * kms_s_0533r_1035)));
    return y;
}
__device__ PRECISION function_263(PRECISION Keq_r_1036,PRECISION Vmax_r_1036,PRECISION intracellular,PRECISION kmp_s_0427r_1036,PRECISION kmp_s_0561r_1036,PRECISION kms_s_0731r_1036,PRECISION kms_s_1304r_1036,PRECISION s_0427,PRECISION s_0561,PRECISION s_0731,PRECISION s_1304){
    PRECISION y = 0.0;
    y=(Vmax_r_1036 * (((s_0731 * s_1304) - (s_0427 * (s_0561 / Keq_r_1036))) / (((intracellular * (-1.0 + (((1.0 + (s_0731 / kms_s_0731r_1036)) * (1.0 + (s_1304 / kms_s_1304r_1036))) + ((1.0 + (s_0427 / kmp_s_0427r_1036)) * (1.0 + (s_0561 / kmp_s_0561r_1036)))))) * kms_s_1304r_1036) * kms_s_0731r_1036)));
    return y;
}
__device__ PRECISION function_264(PRECISION Keq_r_1037,PRECISION Vmax_r_1037,PRECISION intracellular,PRECISION kmp_s_0533r_1037,PRECISION kmp_s_0561r_1037,PRECISION kms_s_0539r_1037,PRECISION kms_s_0731r_1037,PRECISION s_0533,PRECISION s_0539,PRECISION s_0561,PRECISION s_0731){
    PRECISION y = 0.0;
    y=(Vmax_r_1037 * (((s_0539 * s_0731) - (s_0533 * (s_0561 / Keq_r_1037))) / (((intracellular * (-1.0 + (((1.0 + (s_0539 / kms_s_0539r_1037)) * (1.0 + (s_0731 / kms_s_0731r_1037))) + ((1.0 + (s_0533 / kmp_s_0533r_1037)) * (1.0 + (s_0561 / kmp_s_0561r_1037)))))) * kms_s_0731r_1037) * kms_s_0539r_1037)));
    return y;
}
__device__ PRECISION function_265(PRECISION Keq_r_1038,PRECISION Vmax_r_1038,PRECISION intracellular,PRECISION kmp_s_0416r_1038,PRECISION kmp_s_1207r_1038,PRECISION kms_s_0419r_1038,PRECISION kms_s_1434_br_1038,PRECISION s_0416,PRECISION s_0419,PRECISION s_1207,PRECISION s_1434_b){
    PRECISION y = 0.0;
    y=(Vmax_r_1038 * (((s_0419 * s_1434_b) - (s_0416 * (s_1207 / Keq_r_1038))) / (((intracellular * (-1.0 + (((1.0 + (s_0419 / kms_s_0419r_1038)) * (1.0 + (s_1434_b / kms_s_1434_br_1038))) + ((1.0 + (s_0416 / kmp_s_0416r_1038)) * (1.0 + (s_1207 / kmp_s_1207r_1038)))))) * kms_s_1434_br_1038) * kms_s_0419r_1038)));
    return y;
}
__device__ PRECISION function_266(PRECISION Keq_r_1040,PRECISION Vmax_r_1040,PRECISION intracellular,PRECISION kmp_s_0596r_1040,PRECISION kmp_s_0663r_1040,PRECISION kms_s_1399r_1040,PRECISION kms_s_1434_br_1040,PRECISION s_0596,PRECISION s_0663,PRECISION s_1399,PRECISION s_1434_b){
    PRECISION y = 0.0;
    y=(Vmax_r_1040 * (((s_1399 * s_1434_b) - (s_0596 * (s_0663 / Keq_r_1040))) / (((intracellular * (-1.0 + (((1.0 + (s_1399 / kms_s_1399r_1040)) * (1.0 + (s_1434_b / kms_s_1434_br_1040))) + ((1.0 + (s_0596 / kmp_s_0596r_1040)) * (1.0 + (s_0663 / kmp_s_0663r_1040)))))) * kms_s_1434_br_1040) * kms_s_1399r_1040)));
    return y;
}
__device__ PRECISION function_267(PRECISION Keq_r_1041,PRECISION Vmax_r_1041,PRECISION intracellular,PRECISION kmp_s_0731r_1041,PRECISION kms_s_0735r_1041,PRECISION s_0731,PRECISION s_0735){
    PRECISION y = 0.0;
    y=(Vmax_r_1041 * ((s_0735 - (s_0731 / Keq_r_1041)) / ((intracellular * (1.0 + ((s_0735 / kms_s_0735r_1041) + (s_0731 / kmp_s_0731r_1041)))) * kms_s_0735r_1041)));
    return y;
}
__device__ PRECISION function_268(PRECISION Keq_r_1042,PRECISION Vmax_r_1042,PRECISION intracellular,PRECISION kmp_s_0731r_1042,PRECISION kmp_s_0952r_1042,PRECISION kmp_s_1434_br_1042,PRECISION kms_s_0088r_1042,PRECISION kms_s_0943r_1042,PRECISION s_0088,PRECISION s_0731,PRECISION s_0943,PRECISION s_0952,PRECISION s_1434_b){
    PRECISION y = 0.0;
    y=(Vmax_r_1042 * (((s_0088 * s_0943) - (s_0731 * (s_0952 * (s_1434_b / Keq_r_1042)))) / (((intracellular * (-1.0 + (((1.0 + (s_0088 / kms_s_0088r_1042)) * (1.0 + (s_0943 / kms_s_0943r_1042))) + ((1.0 + (s_0731 / kmp_s_0731r_1042)) * ((1.0 + (s_0952 / kmp_s_0952r_1042)) * (1.0 + (s_1434_b / kmp_s_1434_br_1042))))))) * kms_s_0943r_1042) * kms_s_0088r_1042)));
    return y;
}
__device__ PRECISION function_269(PRECISION Keq_r_1050,PRECISION Vmax_r_1050,PRECISION intracellular,PRECISION kmp_s_0185r_1050,PRECISION kmp_s_0955r_1050,PRECISION kms_s_0209r_1050,PRECISION kms_s_0899r_1050,PRECISION s_0185,PRECISION s_0209,PRECISION s_0899,PRECISION s_0955){
    PRECISION y = 0.0;
    y=(Vmax_r_1050 * (((s_0209 * s_0899) - (s_0185 * (s_0955 / Keq_r_1050))) / (((intracellular * (-1.0 + (((1.0 + (s_0209 / kms_s_0209r_1050)) * (1.0 + (s_0899 / kms_s_0899r_1050))) + ((1.0 + (s_0185 / kmp_s_0185r_1050)) * (1.0 + (s_0955 / kmp_s_0955r_1050)))))) * kms_s_0899r_1050) * kms_s_0209r_1050)));
    return y;
}
__device__ PRECISION function_27(PRECISION Keq_r_0111,PRECISION Vmax_r_0111,PRECISION intracellular,PRECISION kmp_s_0018r_0111,PRECISION kmp_s_1091r_0111,PRECISION kms_s_0150r_0111,PRECISION kms_s_0763_br_0111,PRECISION kms_s_1096r_0111,PRECISION s_0018,PRECISION s_0150,PRECISION s_0763_b,PRECISION s_1091,PRECISION s_1096){
    PRECISION y = 0.0;
    y=(Vmax_r_0111 * (((s_0150 * (s_0763_b * s_1096)) - (s_0018 * (s_1091 / Keq_r_0111))) / ((((intracellular * (-1.0 + (((1.0 + (s_0150 / kms_s_0150r_0111)) * ((1.0 + (s_0763_b / kms_s_0763_br_0111)) * (1.0 + (s_1096 / kms_s_1096r_0111)))) + ((1.0 + (s_0018 / kmp_s_0018r_0111)) * (1.0 + (s_1091 / kmp_s_1091r_0111)))))) * kms_s_1096r_0111) * kms_s_0150r_0111) * kms_s_0763_br_0111)));
    return y;
}
__device__ PRECISION function_270(PRECISION Keq_r_1059,PRECISION Vmax_r_1059,PRECISION intracellular,PRECISION kmp_s_0400r_1059,PRECISION kmp_s_1411r_1059,PRECISION kms_s_0446r_1059,PRECISION kms_s_1417r_1059,PRECISION s_0400,PRECISION s_0446,PRECISION s_1411,PRECISION s_1417){
    PRECISION y = 0.0;
    y=(Vmax_r_1059 * (((s_0446 * s_1417) - (s_0400 * (s_1411 / Keq_r_1059))) / (((intracellular * (-1.0 + (((1.0 + (s_0446 / kms_s_0446r_1059)) * (1.0 + (s_1417 / kms_s_1417r_1059))) + ((1.0 + (s_0400 / kmp_s_0400r_1059)) * (1.0 + (s_1411 / kmp_s_1411r_1059)))))) * kms_s_1417r_1059) * kms_s_0446r_1059)));
    return y;
}
__device__ PRECISION function_271(PRECISION Keq_r_1066,PRECISION Vmax_r_1066,PRECISION intracellular,PRECISION kmp_s_0446r_1066,PRECISION kmp_s_0624r_1066,PRECISION kms_s_0400r_1066,PRECISION kms_s_0622r_1066,PRECISION s_0400,PRECISION s_0446,PRECISION s_0622,PRECISION s_0624){
    PRECISION y = 0.0;
    y=(Vmax_r_1066 * (((s_0400 * s_0622) - (s_0446 * (s_0624 / Keq_r_1066))) / (((intracellular * (-1.0 + (((1.0 + (s_0400 / kms_s_0400r_1066)) * (1.0 + (s_0622 / kms_s_0622r_1066))) + ((1.0 + (s_0446 / kmp_s_0446r_1066)) * (1.0 + (s_0624 / kmp_s_0624r_1066)))))) * kms_s_0622r_1066) * kms_s_0400r_1066)));
    return y;
}
__device__ PRECISION function_272(PRECISION Keq_r_1072,PRECISION Vmax_r_1072,PRECISION intracellular,PRECISION kmp_s_0605r_1072,PRECISION kmp_s_1415r_1072,PRECISION kms_s_0549r_1072,PRECISION kms_s_0763_br_1072,PRECISION kms_s_1430r_1072,PRECISION s_0549,PRECISION s_0605,PRECISION s_0763_b,PRECISION s_1415,PRECISION s_1430){
    PRECISION y = 0.0;
    y=(Vmax_r_1072 * (((s_0549 * (s_0763_b * s_1430)) - (s_0605 * (s_1415 / Keq_r_1072))) / ((((intracellular * (-1.0 + (((1.0 + (s_0549 / kms_s_0549r_1072)) * ((1.0 + (s_0763_b / kms_s_0763_br_1072)) * (1.0 + (s_1430 / kms_s_1430r_1072)))) + ((1.0 + (s_0605 / kmp_s_0605r_1072)) * (1.0 + (s_1415 / kmp_s_1415r_1072)))))) * kms_s_1430r_1072) * kms_s_0549r_1072) * kms_s_0763_br_1072)));
    return y;
}
__device__ PRECISION function_273(PRECISION Keq_r_1073,PRECISION Vmax_r_1073,PRECISION intracellular,PRECISION kmp_s_0185r_1073,PRECISION kmp_s_0960r_1073,PRECISION kms_s_0238r_1073,PRECISION kms_s_0899r_1073,PRECISION s_0185,PRECISION s_0238,PRECISION s_0899,PRECISION s_0960){
    PRECISION y = 0.0;
    y=(Vmax_r_1073 * (((s_0238 * s_0899) - (s_0185 * (s_0960 / Keq_r_1073))) / (((intracellular * (-1.0 + (((1.0 + (s_0238 / kms_s_0238r_1073)) * (1.0 + (s_0899 / kms_s_0899r_1073))) + ((1.0 + (s_0185 / kmp_s_0185r_1073)) * (1.0 + (s_0960 / kmp_s_0960r_1073)))))) * kms_s_0899r_1073) * kms_s_0238r_1073)));
    return y;
}
__device__ PRECISION function_274(PRECISION Keq_r_1157,PRECISION Vmax_r_1157,PRECISION kmp_s_0430r_1157,PRECISION kms_s_0431_br_1157,PRECISION s_0430,PRECISION s_0431_b){
    PRECISION y = 0.0;
    y=(Vmax_r_1157 * ((s_0431_b - (s_0430 / Keq_r_1157)) / (kms_s_0431_br_1157 * (1.0 + ((s_0431_b / kms_s_0431_br_1157) + (s_0430 / kmp_s_0430r_1157))))));
    return y;
}
__device__ PRECISION function_275(PRECISION Keq_r_1194,PRECISION Vmax_r_1194,PRECISION kmp_s_0472_br_1194,PRECISION kms_s_0470r_1194,PRECISION s_0470,PRECISION s_0472_b){
    PRECISION y = 0.0;
    y=(Vmax_r_1194 * ((s_0470 - (s_0472_b / Keq_r_1194)) / (kms_s_0470r_1194 * (1.0 + ((s_0470 / kms_s_0470r_1194) + (s_0472_b / kmp_s_0472_br_1194))))));
    return y;
}
__device__ PRECISION function_276(PRECISION Keq_r_1247,PRECISION Vmax_r_1247,PRECISION kmp_s_0651_br_1247,PRECISION kms_s_0650r_1247,PRECISION s_0650,PRECISION s_0651_b){
    PRECISION y = 0.0;
    y=(Vmax_r_1247 * ((s_0650 - (s_0651_b / Keq_r_1247)) / (kms_s_0650r_1247 * (1.0 + ((s_0650 / kms_s_0650r_1247) + (s_0651_b / kmp_s_0651_br_1247))))));
    return y;
}
__device__ PRECISION function_277(PRECISION Keq_r_1293,PRECISION Vmax_r_1293,PRECISION kmp_s_0545r_1293,PRECISION kms_s_0547_br_1293,PRECISION s_0545,PRECISION s_0547_b){
    PRECISION y = 0.0;
    y=(Vmax_r_1293 * ((s_0547_b - (s_0545 / Keq_r_1293)) / (kms_s_0547_br_1293 * (1.0 + ((s_0547_b / kms_s_0547_br_1293) + (s_0545 / kmp_s_0545r_1293))))));
    return y;
}
__device__ PRECISION function_278(PRECISION Keq_r_1435,PRECISION Vmax_r_1435,PRECISION kmp_s_1160r_1435,PRECISION kms_s_1162_br_1435,PRECISION s_1160,PRECISION s_1162_b){
    PRECISION y = 0.0;
    y=(Vmax_r_1435 * ((s_1162_b - (s_1160 / Keq_r_1435)) / (kms_s_1162_br_1435 * (1.0 + ((s_1162_b / kms_s_1162_br_1435) + (s_1160 / kmp_s_1160r_1435))))));
    return y;
}
__device__ PRECISION function_28(PRECISION Keq_r_0112,PRECISION Vmax_r_0112,PRECISION intracellular,PRECISION kmp_s_0150r_0112,PRECISION kmp_s_0470r_0112,PRECISION kms_s_0763_br_0112,PRECISION kms_s_1277r_0112,PRECISION s_0150,PRECISION s_0470,PRECISION s_0763_b,PRECISION s_1277){
    PRECISION y = 0.0;
    y=(Vmax_r_0112 * (pow((1.0 / kms_s_1277r_0112),2.0) * (((s_0763_b * pow(s_1277,2.0)) - (s_0150 * (s_0470 / Keq_r_0112))) / ((intracellular * (-1.0 + (((1.0 + (s_0763_b / kms_s_0763_br_0112)) * (1.0 + (s_1277 / kms_s_1277r_0112))) + ((1.0 + (s_0150 / kmp_s_0150r_0112)) * (1.0 + (s_0470 / kmp_s_0470r_0112)))))) * kms_s_0763_br_0112))));
    return y;
}
__device__ PRECISION function_280(PRECISION Keq_r_1503,PRECISION Vmax_r_1503,PRECISION kmp_s_0766_br_1503,PRECISION kmp_s_1339_br_1503,PRECISION kms_s_0763_br_1503,PRECISION kms_s_1338r_1503,PRECISION s_0763_b,PRECISION s_0766_b,PRECISION s_1338,PRECISION s_1339_b){
    PRECISION y = 0.0;
    y=(Vmax_r_1503 * (((s_0763_b * s_1338) - (s_0766_b * (s_1339_b / Keq_r_1503))) / ((kms_s_0763_br_1503 * kms_s_1338r_1503) * (-1.0 + (((1.0 + (s_0763_b / kms_s_0763_br_1503)) * (1.0 + (s_1338 / kms_s_1338r_1503))) + ((1.0 + (s_0766_b / kmp_s_0766_br_1503)) * (1.0 + (s_1339_b / kmp_s_1339_br_1503))))))));
    return y;
}
__device__ PRECISION function_281(PRECISION Keq_r_1507,PRECISION Vmax_r_1507,PRECISION kmp_s_1347r_1507,PRECISION kms_s_1348_br_1507,PRECISION s_1347,PRECISION s_1348_b){
    PRECISION y = 0.0;
    y=(Vmax_r_1507 * ((s_1348_b - (s_1347 / Keq_r_1507)) / (kms_s_1348_br_1507 * (1.0 + ((s_1348_b / kms_s_1348_br_1507) + (s_1347 / kmp_s_1347r_1507))))));
    return y;
}
__device__ PRECISION function_282(PRECISION Keq_r_1672,PRECISION Vmax_r_1672,PRECISION intracellular,PRECISION kmp_s_0386r_1672,PRECISION kms_s_1342r_1672,PRECISION s_0386,PRECISION s_1342){
    PRECISION y = 0.0;
    y=(Vmax_r_1672 * ((s_1342 - (s_0386 / Keq_r_1672)) / ((intracellular * (1.0 + ((s_1342 / kms_s_1342r_1672) + (s_0386 / kmp_s_0386r_1672)))) * kms_s_1342r_1672)));
    return y;
}
__device__ PRECISION function_283(PRECISION V_o,PRECISION a_s_0001r_1812,PRECISION a_s_0416r_1812,PRECISION a_s_0434r_1812,PRECISION a_s_0446r_1812,PRECISION a_s_0511r_1812,PRECISION a_s_0564r_1812,PRECISION a_s_0569r_1812,PRECISION a_s_0593r_1812,PRECISION a_s_0619r_1812,PRECISION a_s_0740r_1812,PRECISION a_s_0743r_1812,PRECISION a_s_0752r_1812,PRECISION a_s_0863r_1812,PRECISION a_s_0873r_1812,PRECISION a_s_0877r_1812,PRECISION a_s_0881r_1812,PRECISION a_s_0889r_1812,PRECISION a_s_0899r_1812,PRECISION a_s_0907r_1812,PRECISION a_s_0911r_1812,PRECISION a_s_0920r_1812,PRECISION a_s_0925r_1812,PRECISION a_s_0929r_1812,PRECISION a_s_0933r_1812,PRECISION a_s_0936r_1812,PRECISION a_s_0939r_1812,PRECISION a_s_0943r_1812,PRECISION a_s_0949r_1812,PRECISION a_s_0952r_1812,PRECISION a_s_0955r_1812,PRECISION a_s_0960r_1812,PRECISION a_s_1000r_1812,PRECISION a_s_1011r_1812,PRECISION a_s_1283r_1812,PRECISION a_s_1347r_1812,PRECISION a_s_1417r_1812,PRECISION intracellular,PRECISION s_0001,PRECISION s_0001_or_1812,PRECISION s_0416,PRECISION s_0416_or_1812,PRECISION s_0434,PRECISION s_0434_or_1812,PRECISION s_0446,PRECISION s_0446_or_1812,PRECISION s_0511,PRECISION s_0511_or_1812,PRECISION s_0564,PRECISION s_0564_or_1812,PRECISION s_0569,PRECISION s_0569_or_1812,PRECISION s_0593,PRECISION s_0593_or_1812,PRECISION s_0619,PRECISION s_0619_or_1812,PRECISION s_0740,PRECISION s_0740_or_1812,PRECISION s_0743,PRECISION s_0743_or_1812,PRECISION s_0752,PRECISION s_0752_or_1812,PRECISION s_0863,PRECISION s_0863_or_1812,PRECISION s_0873,PRECISION s_0873_or_1812,PRECISION s_0877,PRECISION s_0877_or_1812,PRECISION s_0881,PRECISION s_0881_or_1812,PRECISION s_0889,PRECISION s_0889_or_1812,PRECISION s_0899,PRECISION s_0899_or_1812,PRECISION s_0907,PRECISION s_0907_or_1812,PRECISION s_0911,PRECISION s_0911_or_1812,PRECISION s_0920,PRECISION s_0920_or_1812,PRECISION s_0925,PRECISION s_0925_or_1812,PRECISION s_0929,PRECISION s_0929_or_1812,PRECISION s_0933,PRECISION s_0933_or_1812,PRECISION s_0936,PRECISION s_0936_or_1812,PRECISION s_0939,PRECISION s_0939_or_1812,PRECISION s_0943,PRECISION s_0943_or_1812,PRECISION s_0949,PRECISION s_0949_or_1812,PRECISION s_0952,PRECISION s_0952_or_1812,PRECISION s_0955,PRECISION s_0955_or_1812,PRECISION s_0960,PRECISION s_0960_or_1812,PRECISION s_1000,PRECISION s_1000_or_1812,PRECISION s_1011,PRECISION s_1011_or_1812,PRECISION s_1283,PRECISION s_1283_or_1812,PRECISION s_1347,PRECISION s_1347_or_1812,PRECISION s_1417,PRECISION s_1417_or_1812,PRECISION zero_flux){
    PRECISION y = 0.0;
    y=(MAX((V_o * (1.0 + ((a_s_0001r_1812 * ln((s_0001 / s_0001_or_1812))) + ((a_s_0416r_1812 * ln((s_0416 / s_0416_or_1812))) + ((a_s_0434r_1812 * ln((s_0434 / s_0434_or_1812))) + ((a_s_0446r_1812 * ln((s_0446 / s_0446_or_1812))) + ((a_s_0511r_1812 * ln((s_0511 / s_0511_or_1812))) + ((a_s_0564r_1812 * ln((s_0564 / s_0564_or_1812))) + ((a_s_0569r_1812 * ln((s_0569 / s_0569_or_1812))) + ((a_s_0593r_1812 * ln((s_0593 / s_0593_or_1812))) + ((a_s_0619r_1812 * ln((s_0619 / s_0619_or_1812))) + ((a_s_0740r_1812 * ln((s_0740 / s_0740_or_1812))) + ((a_s_0743r_1812 * ln((s_0743 / s_0743_or_1812))) + ((a_s_0752r_1812 * ln((s_0752 / s_0752_or_1812))) + ((a_s_0863r_1812 * ln((s_0863 / s_0863_or_1812))) + ((a_s_0873r_1812 * ln((s_0873 / s_0873_or_1812))) + ((a_s_0877r_1812 * ln((s_0877 / s_0877_or_1812))) + ((a_s_0881r_1812 * ln((s_0881 / s_0881_or_1812))) + ((a_s_0889r_1812 * ln((s_0889 / s_0889_or_1812))) + ((a_s_0899r_1812 * ln((s_0899 / s_0899_or_1812))) + ((a_s_0907r_1812 * ln((s_0907 / s_0907_or_1812))) + ((a_s_0911r_1812 * ln((s_0911 / s_0911_or_1812))) + ((a_s_0920r_1812 * ln((s_0920 / s_0920_or_1812))) + ((a_s_0925r_1812 * ln((s_0925 / s_0925_or_1812))) + ((a_s_0929r_1812 * ln((s_0929 / s_0929_or_1812))) + ((a_s_0933r_1812 * ln((s_0933 / s_0933_or_1812))) + ((a_s_0936r_1812 * ln((s_0936 / s_0936_or_1812))) + ((a_s_0939r_1812 * ln((s_0939 / s_0939_or_1812))) + ((a_s_0943r_1812 * ln((s_0943 / s_0943_or_1812))) + ((a_s_0949r_1812 * ln((s_0949 / s_0949_or_1812))) + ((a_s_0952r_1812 * ln((s_0952 / s_0952_or_1812))) + ((a_s_0955r_1812 * ln((s_0955 / s_0955_or_1812))) + ((a_s_0960r_1812 * ln((s_0960 / s_0960_or_1812))) + ((a_s_1000r_1812 * ln((s_1000 / s_1000_or_1812))) + ((a_s_1011r_1812 * ln((s_1011 / s_1011_or_1812))) + ((a_s_1347r_1812 * ln((s_1347 / s_1347_or_1812))) + ((a_s_1417r_1812 * ln((s_1417 / s_1417_or_1812))) + (a_s_1283r_1812 * ln((s_1283 / s_1283_or_1812)))))))))))))))))))))))))))))))))))))))),zero_flux) / intracellular);
    return y;
}
__device__ PRECISION function_284(PRECISION V_o,PRECISION a_s_0463r_1814,PRECISION s_0463,PRECISION s_0463_or_1814,PRECISION zero_flux){
    PRECISION y = 0.0;
    y=MAX((V_o * (1.0 + (a_s_0463r_1814 * ln((s_0463 / s_0463_or_1814))))),zero_flux);
    return y;
}
__device__ PRECISION function_285(PRECISION V_o,PRECISION a_s_0090r_1816,PRECISION a_s_0124r_1816,PRECISION a_s_0627r_1816,PRECISION a_s_0632r_1816,PRECISION a_s_0635r_1816,PRECISION a_s_0641r_1816,PRECISION a_s_0663r_1816,PRECISION a_s_0669r_1816,PRECISION a_s_0824r_1816,PRECISION a_s_0963r_1816,PRECISION a_s_1219r_1816,PRECISION a_s_1228r_1816,PRECISION a_s_1233r_1816,PRECISION a_s_1399r_1816,PRECISION a_s_1447r_1816,PRECISION intracellular,PRECISION s_0090,PRECISION s_0090_or_1816,PRECISION s_0124,PRECISION s_0124_or_1816,PRECISION s_0627,PRECISION s_0627_or_1816,PRECISION s_0632,PRECISION s_0632_or_1816,PRECISION s_0635,PRECISION s_0635_or_1816,PRECISION s_0641,PRECISION s_0641_or_1816,PRECISION s_0663,PRECISION s_0663_or_1816,PRECISION s_0669,PRECISION s_0669_or_1816,PRECISION s_0824,PRECISION s_0824_or_1816,PRECISION s_0963,PRECISION s_0963_or_1816,PRECISION s_1219,PRECISION s_1219_or_1816,PRECISION s_1228,PRECISION s_1228_or_1816,PRECISION s_1233,PRECISION s_1233_or_1816,PRECISION s_1399,PRECISION s_1399_or_1816,PRECISION s_1447,PRECISION s_1447_or_1816,PRECISION zero_flux){
    PRECISION y = 0.0;
    y=(MAX((V_o * (1.0 + ((a_s_0090r_1816 * ln((s_0090 / s_0090_or_1816))) + ((a_s_0124r_1816 * ln((s_0124 / s_0124_or_1816))) + ((a_s_0627r_1816 * ln((s_0627 / s_0627_or_1816))) + ((a_s_0632r_1816 * ln((s_0632 / s_0632_or_1816))) + ((a_s_0635r_1816 * ln((s_0635 / s_0635_or_1816))) + ((a_s_0641r_1816 * ln((s_0641 / s_0641_or_1816))) + ((a_s_0663r_1816 * ln((s_0663 / s_0663_or_1816))) + ((a_s_0669r_1816 * ln((s_0669 / s_0669_or_1816))) + ((a_s_0824r_1816 * ln((s_0824 / s_0824_or_1816))) + ((a_s_0963r_1816 * ln((s_0963 / s_0963_or_1816))) + ((a_s_1219r_1816 * ln((s_1219 / s_1219_or_1816))) + ((a_s_1228r_1816 * ln((s_1228 / s_1228_or_1816))) + ((a_s_1233r_1816 * ln((s_1233 / s_1233_or_1816))) + ((a_s_1399r_1816 * ln((s_1399 / s_1399_or_1816))) + (a_s_1447r_1816 * ln((s_1447 / s_1447_or_1816))))))))))))))))))),zero_flux) / intracellular);
    return y;
}
__device__ PRECISION function_29(PRECISION Keq_r_0118,PRECISION Vmax_r_0118,PRECISION intracellular,PRECISION kmp_s_0374r_0118,PRECISION kmp_s_0514r_0118,PRECISION kms_s_0380r_0118,PRECISION s_0374,PRECISION s_0380,PRECISION s_0514){
    PRECISION y = 0.0;
    y=(Vmax_r_0118 * (pow((1.0 / kms_s_0380r_0118),2.0) * ((pow(s_0380,2.0) - (s_0374 * (s_0514 / Keq_r_0118))) / (intracellular * ((s_0380 / kms_s_0380r_0118) + ((1.0 + (s_0374 / kmp_s_0374r_0118)) * (1.0 + (s_0514 / kmp_s_0514r_0118))))))));
    return y;
}
__device__ PRECISION function_3(PRECISION Keq_r_0008,PRECISION Vmax_r_0008,PRECISION intracellular,PRECISION kmp_s_0315r_0008,PRECISION kms_s_0079r_0008,PRECISION s_0079,PRECISION s_0315){
    PRECISION y = 0.0;
    y=(Vmax_r_0008 * ((s_0079 - (s_0315 / Keq_r_0008)) / ((intracellular * (1.0 + ((s_0079 / kms_s_0079r_0008) + (s_0315 / kmp_s_0315r_0008)))) * kms_s_0079r_0008)));
    return y;
}
__device__ PRECISION function_30(PRECISION Keq_r_0123,PRECISION Vmax_r_0123,PRECISION intracellular,PRECISION kmp_s_0400r_0123,PRECISION kmp_s_0763_br_0123,PRECISION kmp_s_1005r_0123,PRECISION kmp_s_1207r_0123,PRECISION kms_s_0380r_0123,PRECISION kms_s_0446r_0123,PRECISION kms_s_0458r_0123,PRECISION s_0380,PRECISION s_0400,PRECISION s_0446,PRECISION s_0458,PRECISION s_0763_b,PRECISION s_1005,PRECISION s_1207){
    PRECISION y = 0.0;
    y=(Vmax_r_0123 * (((s_0380 * (s_0446 * s_0458)) - (s_0400 * (s_0763_b * (s_1005 * (s_1207 / Keq_r_0123))))) / ((((intracellular * (-1.0 + (((1.0 + (s_0380 / kms_s_0380r_0123)) * ((1.0 + (s_0446 / kms_s_0446r_0123)) * (1.0 + (s_0458 / kms_s_0458r_0123)))) + ((1.0 + (s_0400 / kmp_s_0400r_0123)) * ((1.0 + (s_0763_b / kmp_s_0763_br_0123)) * ((1.0 + (s_1005 / kmp_s_1005r_0123)) * (1.0 + (s_1207 / kmp_s_1207r_0123)))))))) * kms_s_0458r_0123) * kms_s_0380r_0123) * kms_s_0446r_0123)));
    return y;
}
__device__ PRECISION function_31(PRECISION Keq_r_0125,PRECISION Vmax_r_0125,PRECISION intracellular,PRECISION kmp_s_0380r_0125,PRECISION kmp_s_1434_br_0125,PRECISION kms_s_0369r_0125,PRECISION kms_s_0514r_0125,PRECISION kms_s_0763_br_0125,PRECISION s_0369,PRECISION s_0380,PRECISION s_0514,PRECISION s_0763_b,PRECISION s_1434_b){
    PRECISION y = 0.0;
    y=(Vmax_r_0125 * (((s_0369 * (s_0514 * s_0763_b)) - (s_0380 * (s_1434_b / Keq_r_0125))) / ((((intracellular * (-1.0 + (((1.0 + (s_0369 / kms_s_0369r_0125)) * ((1.0 + (s_0514 / kms_s_0514r_0125)) * (1.0 + (s_0763_b / kms_s_0763_br_0125)))) + ((1.0 + (s_0380 / kmp_s_0380r_0125)) * (1.0 + (s_1434_b / kmp_s_1434_br_0125)))))) * kms_s_0763_br_0125) * kms_s_0369r_0125) * kms_s_0514r_0125)));
    return y;
}
__device__ PRECISION function_32(PRECISION Keq_r_0127,PRECISION Vmax_r_0127,PRECISION intracellular,PRECISION kmp_s_0369r_0127,PRECISION kmp_s_0446r_0127,PRECISION kmp_s_0514r_0127,PRECISION kms_s_0380r_0127,PRECISION kms_s_0434r_0127,PRECISION kms_s_0605r_0127,PRECISION s_0369,PRECISION s_0380,PRECISION s_0434,PRECISION s_0446,PRECISION s_0514,PRECISION s_0605){
    PRECISION y = 0.0;
    y=(Vmax_r_0127 * (((s_0380 * (s_0434 * s_0605)) - (s_0369 * (s_0446 * (s_0514 / Keq_r_0127)))) / ((((intracellular * (-1.0 + (((1.0 + (s_0380 / kms_s_0380r_0127)) * ((1.0 + (s_0434 / kms_s_0434r_0127)) * (1.0 + (s_0605 / kms_s_0605r_0127)))) + ((1.0 + (s_0369 / kmp_s_0369r_0127)) * ((1.0 + (s_0446 / kmp_s_0446r_0127)) * (1.0 + (s_0514 / kmp_s_0514r_0127))))))) * kms_s_0605r_0127) * kms_s_0380r_0127) * kms_s_0434r_0127)));
    return y;
}
__device__ PRECISION function_33(PRECISION Keq_r_0130,PRECISION Vmax_r_0130,PRECISION intracellular,PRECISION kmp_s_0400r_0130,PRECISION kmp_s_1070r_0130,PRECISION kms_s_0446r_0130,PRECISION kms_s_1071r_0130,PRECISION s_0400,PRECISION s_0446,PRECISION s_1070,PRECISION s_1071){
    PRECISION y = 0.0;
    y=(Vmax_r_0130 * (((s_0446 * s_1071) - (s_0400 * (s_1070 / Keq_r_0130))) / (((intracellular * (-1.0 + (((1.0 + (s_0446 / kms_s_0446r_0130)) * (1.0 + (s_1071 / kms_s_1071r_0130))) + ((1.0 + (s_0400 / kmp_s_0400r_0130)) * (1.0 + (s_1070 / kmp_s_1070r_0130)))))) * kms_s_1071r_0130) * kms_s_0446r_0130)));
    return y;
}
__device__ PRECISION function_34(PRECISION Keq_r_0133,PRECISION Vmax_r_0133,PRECISION intracellular,PRECISION kmp_s_0185r_0133,PRECISION kmp_s_1051r_0133,PRECISION kms_s_0149r_0133,PRECISION kms_s_0899r_0133,PRECISION s_0149,PRECISION s_0185,PRECISION s_0899,PRECISION s_1051){
    PRECISION y = 0.0;
    y=(Vmax_r_0133 * (((s_0149 * s_0899) - (s_0185 * (s_1051 / Keq_r_0133))) / (((intracellular * (-1.0 + (((1.0 + (s_0149 / kms_s_0149r_0133)) * (1.0 + (s_0899 / kms_s_0899r_0133))) + ((1.0 + (s_0185 / kmp_s_0185r_0133)) * (1.0 + (s_1051 / kmp_s_1051r_0133)))))) * kms_s_0899r_0133) * kms_s_0149r_0133)));
    return y;
}
__device__ PRECISION function_35(PRECISION Keq_r_0157,PRECISION Vmax_r_0157,PRECISION intracellular,PRECISION kmp_s_0400r_0157,PRECISION kmp_s_0434r_0157,PRECISION kmp_s_0763_br_0157,PRECISION kms_s_0393r_0157,PRECISION kms_s_0446r_0157,PRECISION s_0393,PRECISION s_0400,PRECISION s_0434,PRECISION s_0446,PRECISION s_0763_b){
    PRECISION y = 0.0;
    y=(Vmax_r_0157 * (((s_0393 * s_0446) - (s_0400 * (s_0434 * (s_0763_b / Keq_r_0157)))) / (((intracellular * (-1.0 + (((1.0 + (s_0393 / kms_s_0393r_0157)) * (1.0 + (s_0446 / kms_s_0446r_0157))) + ((1.0 + (s_0400 / kmp_s_0400r_0157)) * ((1.0 + (s_0434 / kmp_s_0434r_0157)) * (1.0 + (s_0763_b / kmp_s_0763_br_0157))))))) * kms_s_0446r_0157) * kms_s_0393r_0157)));
    return y;
}
__device__ PRECISION function_36(PRECISION Keq_r_0159,PRECISION Vmax_r_0159,PRECISION intracellular,PRECISION kmp_s_0393r_0159,PRECISION kmp_s_0917r_0159,PRECISION kms_s_1290r_0159,PRECISION kms_s_1434_br_0159,PRECISION s_0393,PRECISION s_0917,PRECISION s_1290,PRECISION s_1434_b){
    PRECISION y = 0.0;
    y=(Vmax_r_0159 * (((s_1290 * s_1434_b) - (s_0393 * (s_0917 / Keq_r_0159))) / (((intracellular * (-1.0 + (((1.0 + (s_1290 / kms_s_1290r_0159)) * (1.0 + (s_1434_b / kms_s_1434_br_0159))) + ((1.0 + (s_0393 / kmp_s_0393r_0159)) * (1.0 + (s_0917 / kmp_s_0917r_0159)))))) * kms_s_1434_br_0159) * kms_s_1290r_0159)));
    return y;
}
__device__ PRECISION function_37(PRECISION Keq_r_0163,PRECISION Vmax_r_0163,PRECISION intracellular,PRECISION kmp_s_0434r_0163,PRECISION kmp_s_0446r_0163,PRECISION kms_s_0400r_0163,PRECISION s_0400,PRECISION s_0434,PRECISION s_0446){
    PRECISION y = 0.0;
    y=(Vmax_r_0163 * (pow((1.0 / kms_s_0400r_0163),2.0) * ((pow(s_0400,2.0) - (s_0434 * (s_0446 / Keq_r_0163))) / (intracellular * ((s_0400 / kms_s_0400r_0163) + ((1.0 + (s_0434 / kmp_s_0434r_0163)) * (1.0 + (s_0446 / kmp_s_0446r_0163))))))));
    return y;
}
__device__ PRECISION function_38(PRECISION Keq_r_0165,PRECISION Vmax_r_0165,PRECISION intracellular,PRECISION kmp_s_0434r_0165,PRECISION kmp_s_0755r_0165,PRECISION kms_s_0400r_0165,PRECISION kms_s_0706r_0165,PRECISION s_0400,PRECISION s_0434,PRECISION s_0706,PRECISION s_0755){
    PRECISION y = 0.0;
    y=(Vmax_r_0165 * (((s_0400 * s_0706) - (s_0434 * (s_0755 / Keq_r_0165))) / (((intracellular * (-1.0 + (((1.0 + (s_0400 / kms_s_0400r_0165)) * (1.0 + (s_0706 / kms_s_0706r_0165))) + ((1.0 + (s_0434 / kmp_s_0434r_0165)) * (1.0 + (s_0755 / kmp_s_0755r_0165)))))) * kms_s_0706r_0165) * kms_s_0400r_0165)));
    return y;
}
__device__ PRECISION function_39(PRECISION Keq_r_0169,PRECISION Vmax_r_0169,PRECISION intracellular,PRECISION kmp_s_0317r_0169,PRECISION kmp_s_0692r_0169,PRECISION kms_s_0009r_0169,PRECISION s_0009,PRECISION s_0317,PRECISION s_0692){
    PRECISION y = 0.0;
    y=(Vmax_r_0169 * ((s_0009 - (s_0317 * (s_0692 / Keq_r_0169))) / ((intracellular * ((s_0009 / kms_s_0009r_0169) + ((1.0 + (s_0317 / kmp_s_0317r_0169)) * (1.0 + (s_0692 / kmp_s_0692r_0169))))) * kms_s_0009r_0169)));
    return y;
}
__device__ PRECISION function_4(PRECISION Keq_r_0009,PRECISION Vmax_r_0009,PRECISION intracellular,PRECISION kmp_s_0514r_0009,PRECISION kmp_s_0763_br_0009,PRECISION kmp_s_1215r_0009,PRECISION kms_s_0083r_0009,PRECISION kms_s_0386r_0009,PRECISION s_0083,PRECISION s_0386,PRECISION s_0514,PRECISION s_0763_b,PRECISION s_1215){
    PRECISION y = 0.0;
    y=(Vmax_r_0009 * (((s_0083 * s_0386) - (s_0514 * (pow(s_0763_b,4.0) * (s_1215 / Keq_r_0009)))) / (((intracellular * (-1.0 + (((1.0 + (s_0083 / kms_s_0083r_0009)) * (1.0 + (s_0386 / kms_s_0386r_0009))) + ((1.0 + (s_0514 / kmp_s_0514r_0009)) * ((1.0 + (s_0763_b / kmp_s_0763_br_0009)) * (1.0 + (s_1215 / kmp_s_1215r_0009))))))) * kms_s_0386r_0009) * kms_s_0083r_0009)));
    return y;
}
__device__ PRECISION function_40(PRECISION Keq_r_0170,PRECISION Vmax_r_0170,PRECISION intracellular,PRECISION kmp_s_0706r_0170,PRECISION kmp_s_0763_br_0170,PRECISION kmp_s_1053r_0170,PRECISION kmp_s_1207r_0170,PRECISION kms_s_0755r_0170,PRECISION kms_s_0816r_0170,PRECISION kms_s_0881r_0170,PRECISION s_0706,PRECISION s_0755,PRECISION s_0763_b,PRECISION s_0816,PRECISION s_0881,PRECISION s_1053,PRECISION s_1207){
    PRECISION y = 0.0;
    y=(Vmax_r_0170 * (((s_0755 * (s_0816 * s_0881)) - (s_0706 * (pow(s_0763_b,2.0) * (s_1053 * (s_1207 / Keq_r_0170))))) / ((((intracellular * (-1.0 + (((1.0 + (s_0755 / kms_s_0755r_0170)) * ((1.0 + (s_0816 / kms_s_0816r_0170)) * (1.0 + (s_0881 / kms_s_0881r_0170)))) + ((1.0 + (s_0706 / kmp_s_0706r_0170)) * ((1.0 + (s_0763_b / kmp_s_0763_br_0170)) * ((1.0 + (s_1053 / kmp_s_1053r_0170)) * (1.0 + (s_1207 / kmp_s_1207r_0170)))))))) * kms_s_0881r_0170) * kms_s_0755r_0170) * kms_s_0816r_0170)));
    return y;
}
__device__ PRECISION function_41(PRECISION Keq_r_0171,PRECISION Vmax_r_0171,PRECISION intracellular,PRECISION kmp_s_0434r_0171,PRECISION kmp_s_0692r_0171,PRECISION kms_s_1053r_0171,PRECISION s_0434,PRECISION s_0692,PRECISION s_1053){
    PRECISION y = 0.0;
    y=(Vmax_r_0171 * ((s_1053 - (s_0434 * (s_0692 / Keq_r_0171))) / ((intracellular * ((s_1053 / kms_s_1053r_0171) + ((1.0 + (s_0434 / kmp_s_0434r_0171)) * (1.0 + (s_0692 / kmp_s_0692r_0171))))) * kms_s_1053r_0171)));
    return y;
}
__device__ PRECISION function_42(PRECISION Keq_r_0172,PRECISION Vmax_r_0172,PRECISION intracellular,PRECISION kmp_s_0206r_0172,PRECISION kmp_s_0400r_0172,PRECISION kmp_s_0763_br_0172,PRECISION kms_s_0304r_0172,PRECISION kms_s_0446r_0172,PRECISION s_0206,PRECISION s_0304,PRECISION s_0400,PRECISION s_0446,PRECISION s_0763_b){
    PRECISION y = 0.0;
    y=(Vmax_r_0172 * (((s_0304 * s_0446) - (s_0206 * (s_0400 * (s_0763_b / Keq_r_0172)))) / (((intracellular * (-1.0 + (((1.0 + (s_0304 / kms_s_0304r_0172)) * (1.0 + (s_0446 / kms_s_0446r_0172))) + ((1.0 + (s_0206 / kmp_s_0206r_0172)) * ((1.0 + (s_0400 / kmp_s_0400r_0172)) * (1.0 + (s_0763_b / kmp_s_0763_br_0172))))))) * kms_s_0446r_0172) * kms_s_0304r_0172)));
    return y;
}
__device__ PRECISION function_43(PRECISION Keq_r_0174,PRECISION Vmax_r_0174,PRECISION intracellular,PRECISION kmp_s_0740r_0174,PRECISION kmp_s_1277r_0174,PRECISION kms_s_0749r_0174,PRECISION kms_s_0863r_0174,PRECISION s_0740,PRECISION s_0749,PRECISION s_0863,PRECISION s_1277){
    PRECISION y = 0.0;
    y=(Vmax_r_0174 * (((s_0749 * s_0863) - (s_0740 * (s_1277 / Keq_r_0174))) / (((intracellular * (-1.0 + (((1.0 + (s_0749 / kms_s_0749r_0174)) * (1.0 + (s_0863 / kms_s_0863r_0174))) + ((1.0 + (s_0740 / kmp_s_0740r_0174)) * (1.0 + (s_1277 / kmp_s_1277r_0174)))))) * kms_s_0863r_0174) * kms_s_0749r_0174)));
    return y;
}
__device__ PRECISION function_44(PRECISION Keq_r_0183,PRECISION Vmax_r_0183,PRECISION intracellular,PRECISION kmp_s_0650r_0183,PRECISION kmp_s_1082r_0183,PRECISION kms_s_0366r_0183,PRECISION kms_s_0763_br_0183,PRECISION kms_s_1087r_0183,PRECISION s_0366,PRECISION s_0650,PRECISION s_0763_b,PRECISION s_1082,PRECISION s_1087){
    PRECISION y = 0.0;
    y=(Vmax_r_0183 * (((s_0366 * (s_0763_b * s_1087)) - (s_0650 * (s_1082 / Keq_r_0183))) / ((((intracellular * (-1.0 + (((1.0 + (s_0366 / kms_s_0366r_0183)) * ((1.0 + (s_0763_b / kms_s_0763_br_0183)) * (1.0 + (s_1087 / kms_s_1087r_0183)))) + ((1.0 + (s_0650 / kmp_s_0650r_0183)) * (1.0 + (s_1082 / kmp_s_1082r_0183)))))) * kms_s_1087r_0183) * kms_s_0366r_0183) * kms_s_0763_br_0183)));
    return y;
}
__device__ PRECISION function_45(PRECISION Keq_r_0191,PRECISION Vmax_r_0191,PRECISION intracellular,PRECISION kmp_s_0369r_0191,PRECISION kmp_s_0763_br_0191,PRECISION kmp_s_1096r_0191,PRECISION kms_s_0366r_0191,PRECISION kms_s_1091r_0191,PRECISION kms_s_1434_br_0191,PRECISION s_0366,PRECISION s_0369,PRECISION s_0763_b,PRECISION s_1091,PRECISION s_1096,PRECISION s_1434_b){
    PRECISION y = 0.0;
    y=(Vmax_r_0191 * (((s_0366 * (s_1091 * s_1434_b)) - (s_0369 * (pow(s_0763_b,2.0) * (s_1096 / Keq_r_0191)))) / ((((intracellular * (-1.0 + (((1.0 + (s_0366 / kms_s_0366r_0191)) * ((1.0 + (s_1091 / kms_s_1091r_0191)) * (1.0 + (s_1434_b / kms_s_1434_br_0191)))) + ((1.0 + (s_0369 / kmp_s_0369r_0191)) * ((1.0 + (s_0763_b / kmp_s_0763_br_0191)) * (1.0 + (s_1096 / kmp_s_1096r_0191))))))) * kms_s_1434_br_0191) * kms_s_0366r_0191) * kms_s_1091r_0191)));
    return y;
}
__device__ PRECISION function_46(PRECISION Vmax_r_0213,PRECISION kms_s_0410r_0213,PRECISION kms_s_1415r_0213,PRECISION s_0410,PRECISION s_1415,PRECISION s_0419,PRECISION s_0763_b,PRECISION s_1411,PRECISION Keq_r_0213,PRECISION kmp_s_0419r_0213,PRECISION kmp_s_0763_br_0213,PRECISION kmp_s_1411r_0213,PRECISION s_1415m,PRECISION kmI_s_1415rm_0213,PRECISION intracellular){
    PRECISION y = 0.0;
    y=(Vmax_r_0213 * (((s_0410 * s_1415) - (s_0419 * (s_0763_b * (s_1411 / Keq_r_0213)))) / (((intracellular * (((1.0 + (s_0410 / kms_s_0410r_0213)) * (1.0 + (s_1415 / kms_s_1415r_0213))) + (((1.0 + (s_0419 / kmp_s_0419r_0213)) * ((1.0 + (s_0763_b / kmp_s_0763_br_0213)) * (1.0 + (s_1411 / kmp_s_1411r_0213)))) + (s_1415m / kmI_s_1415rm_0213)))) * kms_s_1415r_0213) * kms_s_0410r_0213)));
    return y;
}
__device__ PRECISION function_47(PRECISION Keq_r_0220,PRECISION Vmax_r_0220,PRECISION intracellular,PRECISION kmp_s_0605r_0220,PRECISION kmp_s_1066r_0220,PRECISION kms_s_0331r_0220,PRECISION kms_s_0439r_0220,PRECISION s_0331,PRECISION s_0439,PRECISION s_0605,PRECISION s_1066){
    PRECISION y = 0.0;
    y=(Vmax_r_0220 * (((s_0331 * s_0439) - (s_0605 * (s_1066 / Keq_r_0220))) / (((intracellular * (-1.0 + (((1.0 + (s_0331 / kms_s_0331r_0220)) * (1.0 + (s_0439 / kms_s_0439r_0220))) + ((1.0 + (s_0605 / kmp_s_0605r_0220)) * (1.0 + (s_1066 / kmp_s_1066r_0220)))))) * kms_s_0439r_0220) * kms_s_0331r_0220)));
    return y;
}
__device__ PRECISION function_48(PRECISION Keq_r_0221,PRECISION Vmax_r_0221,PRECISION intracellular,PRECISION kmp_s_0439r_0221,PRECISION kmp_s_0763_br_0221,PRECISION kmp_s_0899r_0221,PRECISION kmp_s_1277r_0221,PRECISION kms_s_0500r_0221,PRECISION kms_s_0907r_0221,PRECISION s_0439,PRECISION s_0500,PRECISION s_0763_b,PRECISION s_0899,PRECISION s_0907,PRECISION s_1277){
    PRECISION y = 0.0;
    y=(Vmax_r_0221 * (((s_0500 * s_0907) - (s_0439 * (s_0763_b * (s_0899 * (s_1277 / Keq_r_0221))))) / (((intracellular * (-1.0 + (((1.0 + (s_0500 / kms_s_0500r_0221)) * (1.0 + (s_0907 / kms_s_0907r_0221))) + ((1.0 + (s_0439 / kmp_s_0439r_0221)) * ((1.0 + (s_0763_b / kmp_s_0763_br_0221)) * ((1.0 + (s_0899 / kmp_s_0899r_0221)) * (1.0 + (s_1277 / kmp_s_1277r_0221)))))))) * kms_s_0907r_0221) * kms_s_0500r_0221)));
    return y;
}
__device__ PRECISION function_49(PRECISION Keq_r_0225,PRECISION Vmax_r_0225,PRECISION intracellular,PRECISION kmp_s_0692r_0225,PRECISION kmp_s_0873r_0225,PRECISION kms_s_0017r_0225,PRECISION s_0017,PRECISION s_0692,PRECISION s_0873){
    PRECISION y = 0.0;
    y=(Vmax_r_0225 * ((s_0017 - (s_0692 * (s_0873 / Keq_r_0225))) / ((intracellular * ((s_0017 / kms_s_0017r_0225) + ((1.0 + (s_0692 / kmp_s_0692r_0225)) * (1.0 + (s_0873 / kmp_s_0873r_0225))))) * kms_s_0017r_0225)));
    return y;
}
__device__ PRECISION function_5(PRECISION Keq_r_0014,PRECISION Vmax_r_0014,PRECISION intracellular,PRECISION kmp_s_0319r_0014,PRECISION kmp_s_0430r_0014,PRECISION kms_s_0146r_0014,PRECISION kms_s_0763_br_0014,PRECISION kms_s_1434_br_0014,PRECISION s_0146,PRECISION s_0319,PRECISION s_0430,PRECISION s_0763_b,PRECISION s_1434_b){
    PRECISION y = 0.0;
    y=(Vmax_r_0014 * (((s_0146 * (s_0763_b * s_1434_b)) - (s_0319 * (s_0430 / Keq_r_0014))) / ((((intracellular * (-1.0 + (((1.0 + (s_0146 / kms_s_0146r_0014)) * ((1.0 + (s_0763_b / kms_s_0763_br_0014)) * (1.0 + (s_1434_b / kms_s_1434_br_0014)))) + ((1.0 + (s_0319 / kmp_s_0319r_0014)) * (1.0 + (s_0430 / kmp_s_0430r_0014)))))) * kms_s_1434_br_0014) * kms_s_0146r_0014) * kms_s_0763_br_0014)));
    return y;
}
__device__ PRECISION function_50(PRECISION Keq_r_0226,PRECISION Vmax_r_0226,PRECISION intracellular,PRECISION kmp_s_0017r_0226,PRECISION kmp_s_0434r_0226,PRECISION kmp_s_0605r_0226,PRECISION kmp_s_0763_br_0226,PRECISION kms_s_0446r_0226,PRECISION kms_s_0881r_0226,PRECISION kms_s_0887r_0226,PRECISION s_0017,PRECISION s_0434,PRECISION s_0446,PRECISION s_0605,PRECISION s_0763_b,PRECISION s_0881,PRECISION s_0887){
    PRECISION y = 0.0;
    y=(Vmax_r_0226 * (((s_0446 * (s_0881 * s_0887)) - (s_0017 * (s_0434 * (s_0605 * (s_0763_b / Keq_r_0226))))) / ((((intracellular * (-1.0 + (((1.0 + (s_0446 / kms_s_0446r_0226)) * ((1.0 + (s_0881 / kms_s_0881r_0226)) * (1.0 + (s_0887 / kms_s_0887r_0226)))) + ((1.0 + (s_0017 / kmp_s_0017r_0226)) * ((1.0 + (s_0434 / kmp_s_0434r_0226)) * ((1.0 + (s_0605 / kmp_s_0605r_0226)) * (1.0 + (s_0763_b / kmp_s_0763_br_0226)))))))) * kms_s_0887r_0226) * kms_s_0446r_0226) * kms_s_0881r_0226)));
    return y;
}
__device__ PRECISION function_51(PRECISION Keq_r_0229,PRECISION Vmax_r_0229,PRECISION intracellular,PRECISION kmp_s_0434r_0229,PRECISION kmp_s_0605r_0229,PRECISION kmp_s_0763_br_0229,PRECISION kmp_s_0877r_0229,PRECISION kmp_s_0899r_0229,PRECISION kms_s_0446r_0229,PRECISION kms_s_0881r_0229,PRECISION kms_s_0907r_0229,PRECISION kms_s_1434_br_0229,PRECISION s_0434,PRECISION s_0446,PRECISION s_0605,PRECISION s_0763_b,PRECISION s_0877,PRECISION s_0881,PRECISION s_0899,PRECISION s_0907,PRECISION s_1434_b){
    PRECISION y = 0.0;
    y=(Vmax_r_0229 * (((s_0446 * (s_0881 * (s_0907 * s_1434_b))) - (s_0434 * (s_0605 * (s_0763_b * (s_0877 * (s_0899 / Keq_r_0229)))))) / (((((intracellular * (-1.0 + (((1.0 + (s_0446 / kms_s_0446r_0229)) * ((1.0 + (s_0881 / kms_s_0881r_0229)) * ((1.0 + (s_0907 / kms_s_0907r_0229)) * (1.0 + (s_1434_b / kms_s_1434_br_0229))))) + ((1.0 + (s_0434 / kmp_s_0434r_0229)) * ((1.0 + (s_0605 / kmp_s_0605r_0229)) * ((1.0 + (s_0763_b / kmp_s_0763_br_0229)) * ((1.0 + (s_0877 / kmp_s_0877r_0229)) * (1.0 + (s_0899 / kmp_s_0899r_0229))))))))) * kms_s_1434_br_0229) * kms_s_0881r_0229) * kms_s_0446r_0229) * kms_s_0907r_0229)));
    return y;
}
__device__ PRECISION function_52(PRECISION Keq_r_0232,PRECISION Vmax_r_0232,PRECISION intracellular,PRECISION kmp_s_0763_br_0232,PRECISION kmp_s_1073r_0232,PRECISION kmp_s_1207r_0232,PRECISION kms_s_0469r_0232,PRECISION kms_s_0881r_0232,PRECISION s_0469,PRECISION s_0763_b,PRECISION s_0881,PRECISION s_1073,PRECISION s_1207){
    PRECISION y = 0.0;
    y=(Vmax_r_0232 * (((s_0469 * s_0881) - (s_0763_b * (s_1073 * (s_1207 / Keq_r_0232)))) / (((intracellular * (-1.0 + (((1.0 + (s_0469 / kms_s_0469r_0232)) * (1.0 + (s_0881 / kms_s_0881r_0232))) + ((1.0 + (s_0763_b / kmp_s_0763_br_0232)) * ((1.0 + (s_1073 / kmp_s_1073r_0232)) * (1.0 + (s_1207 / kmp_s_1207r_0232))))))) * kms_s_0881r_0232) * kms_s_0469r_0232)));
    return y;
}
__device__ PRECISION function_53(PRECISION Keq_r_0233,PRECISION Vmax_r_0233,PRECISION intracellular,PRECISION kmp_s_0301r_0233,PRECISION kmp_s_0400r_0233,PRECISION kms_s_0446r_0233,PRECISION kms_s_0881r_0233,PRECISION s_0301,PRECISION s_0400,PRECISION s_0446,PRECISION s_0881){
    PRECISION y = 0.0;
    y=(Vmax_r_0233 * (((s_0446 * s_0881) - (s_0301 * (s_0400 / Keq_r_0233))) / (((intracellular * (-1.0 + (((1.0 + (s_0446 / kms_s_0446r_0233)) * (1.0 + (s_0881 / kms_s_0881r_0233))) + ((1.0 + (s_0301 / kmp_s_0301r_0233)) * (1.0 + (s_0400 / kmp_s_0400r_0233)))))) * kms_s_0881r_0233) * kms_s_0446r_0233)));
    return y;
}
__device__ PRECISION function_54(PRECISION Keq_r_0235,PRECISION Vmax_r_0235,PRECISION intracellular,PRECISION kmp_s_0185r_0235,PRECISION kmp_s_0881r_0235,PRECISION kms_s_0899r_0235,PRECISION kms_s_1156r_0235,PRECISION s_0185,PRECISION s_0881,PRECISION s_0899,PRECISION s_1156){
    PRECISION y = 0.0;
    y=(Vmax_r_0235 * (((s_0899 * s_1156) - (s_0185 * (s_0881 / Keq_r_0235))) / (((intracellular * (-1.0 + (((1.0 + (s_0899 / kms_s_0899r_0235)) * (1.0 + (s_1156 / kms_s_1156r_0235))) + ((1.0 + (s_0185 / kmp_s_0185r_0235)) * (1.0 + (s_0881 / kmp_s_0881r_0235)))))) * kms_s_1156r_0235) * kms_s_0899r_0235)));
    return y;
}
__device__ PRECISION function_55(PRECISION Keq_r_0238,PRECISION Vmax_r_0238,PRECISION intracellular,PRECISION kmp_s_0886r_0238,PRECISION kmp_s_1091r_0238,PRECISION kmp_s_1207r_0238,PRECISION kms_s_0301r_0238,PRECISION kms_s_0763_br_0238,PRECISION kms_s_1096r_0238,PRECISION s_0301,PRECISION s_0763_b,PRECISION s_0886,PRECISION s_1091,PRECISION s_1096,PRECISION s_1207){
    PRECISION y = 0.0;
    y=(Vmax_r_0238 * (((s_0301 * (s_0763_b * s_1096)) - (s_0886 * (s_1091 * (s_1207 / Keq_r_0238)))) / ((((intracellular * (-1.0 + (((1.0 + (s_0301 / kms_s_0301r_0238)) * ((1.0 + (s_0763_b / kms_s_0763_br_0238)) * (1.0 + (s_1096 / kms_s_1096r_0238)))) + ((1.0 + (s_0886 / kmp_s_0886r_0238)) * ((1.0 + (s_1091 / kmp_s_1091r_0238)) * (1.0 + (s_1207 / kmp_s_1207r_0238))))))) * kms_s_1096r_0238) * kms_s_0301r_0238) * kms_s_0763_br_0238)));
    return y;
}
__device__ PRECISION function_56(PRECISION Keq_r_0245,PRECISION Vmax_r_0245,PRECISION intracellular,PRECISION kmp_s_0334r_0245,PRECISION kmp_s_0605r_0245,PRECISION kms_s_0331r_0245,PRECISION kms_s_0446r_0245,PRECISION s_0331,PRECISION s_0334,PRECISION s_0446,PRECISION s_0605){
    PRECISION y = 0.0;
    y=(Vmax_r_0245 * (((s_0331 * s_0446) - (s_0334 * (s_0605 / Keq_r_0245))) / (((intracellular * (-1.0 + (((1.0 + (s_0331 / kms_s_0331r_0245)) * (1.0 + (s_0446 / kms_s_0446r_0245))) + ((1.0 + (s_0334 / kmp_s_0334r_0245)) * (1.0 + (s_0605 / kmp_s_0605r_0245)))))) * kms_s_0446r_0245) * kms_s_0331r_0245)));
    return y;
}
__device__ PRECISION function_57(PRECISION Keq_r_0246,PRECISION Vmax_r_0246,PRECISION intracellular,PRECISION kmp_s_0446r_0246,PRECISION kmp_s_0763_br_0246,PRECISION kmp_s_1434_br_0246,PRECISION kms_s_0400r_0246,PRECISION kms_s_0763_br_0246,PRECISION kms_s_1207r_0246,PRECISION s_0400,PRECISION s_0446,PRECISION s_0763_b,PRECISION s_1207,PRECISION s_1434_b){
    PRECISION y = 0.0;
    y=(Vmax_r_0246 * (pow((1.0 / kms_s_0763_br_0246),3.0) * (((s_0400 * (pow(s_0763_b,3.0) * s_1207)) - (s_0446 * (pow(s_0763_b,2.0) * (s_1434_b / Keq_r_0246)))) / (((intracellular * (-1.0 + (((1.0 + (s_0400 / kms_s_0400r_0246)) * ((1.0 + (s_0763_b / kms_s_0763_br_0246)) * (1.0 + (s_1207 / kms_s_1207r_0246)))) + ((1.0 + (s_0446 / kmp_s_0446r_0246)) * ((1.0 + (s_0763_b / kmp_s_0763_br_0246)) * (1.0 + (s_1434_b / kmp_s_1434_br_0246))))))) * kms_s_1207r_0246) * kms_s_0400r_0246))));
    return y;
}
__device__ PRECISION function_58(PRECISION Keq_r_0249,PRECISION Vmax_r_0249,PRECISION kmp_s_0400r_0249,PRECISION kmp_s_0766_br_0249,PRECISION kmp_s_1207r_0249,PRECISION kms_s_0446r_0249,PRECISION kms_s_1434_br_0249,PRECISION s_0400,PRECISION s_0446,PRECISION s_0766_b,PRECISION s_1207,PRECISION s_1434_b){
    PRECISION y = 0.0;
    y=(Vmax_r_0249 * (((s_0446 * s_1434_b) - (s_0400 * (s_0766_b * (s_1207 / Keq_r_0249)))) / ((kms_s_0446r_0249 * kms_s_1434_br_0249) * (-1.0 + (((1.0 + (s_0446 / kms_s_0446r_0249)) * (1.0 + (s_1434_b / kms_s_1434_br_0249))) + ((1.0 + (s_0400 / kmp_s_0400r_0249)) * ((1.0 + (s_0766_b / kmp_s_0766_br_0249)) * (1.0 + (s_1207 / kmp_s_1207r_0249)))))))));
    return y;
}
__device__ PRECISION function_59(PRECISION Keq_r_0251,PRECISION Vmax_r_0251,PRECISION intracellular,PRECISION kmp_s_0458r_0251,PRECISION kmp_s_0763_br_0251,PRECISION kms_s_0470r_0251,PRECISION kms_s_1434_br_0251,PRECISION s_0458,PRECISION s_0470,PRECISION s_0763_b,PRECISION s_1434_b){
    PRECISION y = 0.0;
    y=(Vmax_r_0251 * (((s_0470 * s_1434_b) - (s_0458 * (s_0763_b / Keq_r_0251))) / (((intracellular * (-1.0 + (((1.0 + (s_0470 / kms_s_0470r_0251)) * (1.0 + (s_1434_b / kms_s_1434_br_0251))) + ((1.0 + (s_0458 / kmp_s_0458r_0251)) * (1.0 + (s_0763_b / kmp_s_0763_br_0251)))))) * kms_s_1434_br_0251) * kms_s_0470r_0251)));
    return y;
}
__device__ PRECISION function_6(PRECISION Keq_r_0015,PRECISION Vmax_r_0015,PRECISION intracellular,PRECISION kmp_s_0146r_0015,PRECISION kmp_s_1091r_0015,PRECISION kms_s_0145r_0015,PRECISION kms_s_0763_br_0015,PRECISION kms_s_1096r_0015,PRECISION s_0145,PRECISION s_0146,PRECISION s_0763_b,PRECISION s_1091,PRECISION s_1096){
    PRECISION y = 0.0;
    y=(Vmax_r_0015 * (((s_0145 * (s_0763_b * s_1096)) - (s_0146 * (s_1091 / Keq_r_0015))) / ((((intracellular * (-1.0 + (((1.0 + (s_0145 / kms_s_0145r_0015)) * ((1.0 + (s_0763_b / kms_s_0763_br_0015)) * (1.0 + (s_1096 / kms_s_1096r_0015)))) + ((1.0 + (s_0146 / kmp_s_0146r_0015)) * (1.0 + (s_1091 / kmp_s_1091r_0015)))))) * kms_s_1096r_0015) * kms_s_0145r_0015) * kms_s_0763_br_0015)));
    return y;
}
__device__ PRECISION function_60(PRECISION Keq_r_0258,PRECISION Vmax_r_0258,PRECISION intracellular,PRECISION kmp_s_0124r_0258,PRECISION kmp_s_1091r_0258,PRECISION kms_s_0268r_0258,PRECISION kms_s_0763_br_0258,PRECISION kms_s_1096r_0258,PRECISION s_0124,PRECISION s_0268,PRECISION s_0763_b,PRECISION s_1091,PRECISION s_1096){
    PRECISION y = 0.0;
    y=(Vmax_r_0258 * (((s_0268 * (s_0763_b * s_1096)) - (s_0124 * (s_1091 / Keq_r_0258))) / ((((intracellular * (-1.0 + (((1.0 + (s_0268 / kms_s_0268r_0258)) * ((1.0 + (s_0763_b / kms_s_0763_br_0258)) * (1.0 + (s_1096 / kms_s_1096r_0258)))) + ((1.0 + (s_0124 / kmp_s_0124r_0258)) * (1.0 + (s_1091 / kmp_s_1091r_0258)))))) * kms_s_1096r_0258) * kms_s_0268r_0258) * kms_s_0763_br_0258)));
    return y;
}
__device__ PRECISION function_61(PRECISION Keq_r_0261,PRECISION Vmax_r_0261,PRECISION intracellular,PRECISION kmp_s_0470r_0261,PRECISION kmp_s_0763_br_0261,PRECISION kmp_s_1096r_0261,PRECISION kmp_s_1458r_0261,PRECISION kms_s_1091r_0261,PRECISION kms_s_1457r_0261,PRECISION s_0470,PRECISION s_0763_b,PRECISION s_1091,PRECISION s_1096,PRECISION s_1457,PRECISION s_1458){
    PRECISION y = 0.0;
    y=(Vmax_r_0261 * (((s_1091 * s_1457) - (s_0470 * (s_0763_b * (s_1096 * (s_1458 / Keq_r_0261))))) / (((intracellular * (-1.0 + (((1.0 + (s_1091 / kms_s_1091r_0261)) * (1.0 + (s_1457 / kms_s_1457r_0261))) + ((1.0 + (s_0470 / kmp_s_0470r_0261)) * ((1.0 + (s_0763_b / kmp_s_0763_br_0261)) * ((1.0 + (s_1096 / kmp_s_1096r_0261)) * (1.0 + (s_1458 / kmp_s_1458r_0261)))))))) * kms_s_1457r_0261) * kms_s_1091r_0261)));
    return y;
}
__device__ PRECISION function_62(PRECISION Keq_r_0262,PRECISION Vmax_r_0262,PRECISION intracellular,PRECISION kmp_s_0215r_0262,PRECISION kmp_s_0470r_0262,PRECISION kmp_s_0763_br_0262,PRECISION kmp_s_1087r_0262,PRECISION kms_s_0303r_0262,PRECISION kms_s_1082r_0262,PRECISION s_0215,PRECISION s_0303,PRECISION s_0470,PRECISION s_0763_b,PRECISION s_1082,PRECISION s_1087){
    PRECISION y = 0.0;
    y=(Vmax_r_0262 * (((s_0303 * s_1082) - (s_0215 * (s_0470 * (s_0763_b * (s_1087 / Keq_r_0262))))) / (((intracellular * (-1.0 + (((1.0 + (s_0303 / kms_s_0303r_0262)) * (1.0 + (s_1082 / kms_s_1082r_0262))) + ((1.0 + (s_0215 / kmp_s_0215r_0262)) * ((1.0 + (s_0470 / kmp_s_0470r_0262)) * ((1.0 + (s_0763_b / kmp_s_0763_br_0262)) * (1.0 + (s_1087 / kmp_s_1087r_0262)))))))) * kms_s_1082r_0262) * kms_s_0303r_0262)));
    return y;
}
__device__ PRECISION function_63(PRECISION Keq_r_0263,PRECISION Vmax_r_0263,PRECISION intracellular,PRECISION kmp_s_0302r_0263,PRECISION kmp_s_1091r_0263,PRECISION kms_s_0215r_0263,PRECISION kms_s_0763_br_0263,PRECISION kms_s_1096r_0263,PRECISION s_0215,PRECISION s_0302,PRECISION s_0763_b,PRECISION s_1091,PRECISION s_1096){
    PRECISION y = 0.0;
    y=(Vmax_r_0263 * (((s_0215 * (s_0763_b * s_1096)) - (s_0302 * (s_1091 / Keq_r_0263))) / ((((intracellular * (-1.0 + (((1.0 + (s_0215 / kms_s_0215r_0263)) * ((1.0 + (s_0763_b / kms_s_0763_br_0263)) * (1.0 + (s_1096 / kms_s_1096r_0263)))) + ((1.0 + (s_0302 / kmp_s_0302r_0263)) * (1.0 + (s_1091 / kmp_s_1091r_0263)))))) * kms_s_1096r_0263) * kms_s_0215r_0263) * kms_s_0763_br_0263)));
    return y;
}
__device__ PRECISION function_64(PRECISION Keq_r_0264,PRECISION Vmax_r_0264,PRECISION intracellular,PRECISION kmp_s_1091r_0264,PRECISION kmp_s_1447r_0264,PRECISION kms_s_0763_br_0264,PRECISION kms_s_1096r_0264,PRECISION kms_s_1458r_0264,PRECISION s_0763_b,PRECISION s_1091,PRECISION s_1096,PRECISION s_1447,PRECISION s_1458){
    PRECISION y = 0.0;
    y=(Vmax_r_0264 * (((s_0763_b * (s_1096 * s_1458)) - (s_1091 * (s_1447 / Keq_r_0264))) / ((((intracellular * (-1.0 + (((1.0 + (s_0763_b / kms_s_0763_br_0264)) * ((1.0 + (s_1096 / kms_s_1096r_0264)) * (1.0 + (s_1458 / kms_s_1458r_0264)))) + ((1.0 + (s_1091 / kmp_s_1091r_0264)) * (1.0 + (s_1447 / kmp_s_1447r_0264)))))) * kms_s_1458r_0264) * kms_s_0763_br_0264) * kms_s_1096r_0264)));
    return y;
}
__device__ PRECISION function_65(PRECISION Keq_r_0265,PRECISION Vmax_r_0265,PRECISION intracellular,PRECISION kmp_s_1091r_0265,PRECISION kmp_s_1434_br_0265,PRECISION kmp_s_1455r_0265,PRECISION kms_s_0302r_0265,PRECISION kms_s_0763_br_0265,PRECISION kms_s_1096r_0265,PRECISION kms_s_1160r_0265,PRECISION s_0302,PRECISION s_0763_b,PRECISION s_1091,PRECISION s_1096,PRECISION s_1160,PRECISION s_1434_b,PRECISION s_1455){
    PRECISION y = 0.0;
    y=(Vmax_r_0265 * (((s_0302 * (s_0763_b * (s_1096 * s_1160))) - (s_1091 * (s_1434_b * (s_1455 / Keq_r_0265)))) / (((((intracellular * (-1.0 + (((1.0 + (s_0302 / kms_s_0302r_0265)) * ((1.0 + (s_0763_b / kms_s_0763_br_0265)) * ((1.0 + (s_1096 / kms_s_1096r_0265)) * (1.0 + (s_1160 / kms_s_1160r_0265))))) + ((1.0 + (s_1091 / kmp_s_1091r_0265)) * ((1.0 + (s_1434_b / kmp_s_1434_br_0265)) * (1.0 + (s_1455 / kmp_s_1455r_0265))))))) * kms_s_1160r_0265) * kms_s_0763_br_0265) * kms_s_0302r_0265) * kms_s_1096r_0265)));
    return y;
}
__device__ PRECISION function_66(PRECISION Keq_r_0266,PRECISION Vmax_r_0266,PRECISION intracellular,PRECISION kmp_s_1091r_0266,PRECISION kmp_s_1434_br_0266,PRECISION kmp_s_1456r_0266,PRECISION kms_s_0763_br_0266,PRECISION kms_s_1096r_0266,PRECISION kms_s_1160r_0266,PRECISION kms_s_1455r_0266,PRECISION s_0763_b,PRECISION s_1091,PRECISION s_1096,PRECISION s_1160,PRECISION s_1434_b,PRECISION s_1455,PRECISION s_1456){
    PRECISION y = 0.0;
    y=(Vmax_r_0266 * (((s_0763_b * (s_1096 * (s_1160 * s_1455))) - (s_1091 * (pow(s_1434_b,2.0) * (s_1456 / Keq_r_0266)))) / (((((intracellular * (-1.0 + (((1.0 + (s_0763_b / kms_s_0763_br_0266)) * ((1.0 + (s_1096 / kms_s_1096r_0266)) * ((1.0 + (s_1160 / kms_s_1160r_0266)) * (1.0 + (s_1455 / kms_s_1455r_0266))))) + ((1.0 + (s_1091 / kmp_s_1091r_0266)) * ((1.0 + (s_1434_b / kmp_s_1434_br_0266)) * (1.0 + (s_1456 / kmp_s_1456r_0266))))))) * kms_s_1455r_0266) * kms_s_1096r_0266) * kms_s_0763_br_0266) * kms_s_1160r_0266)));
    return y;
}
__device__ PRECISION function_67(PRECISION Keq_r_0267,PRECISION Vmax_r_0267,PRECISION intracellular,PRECISION kmp_s_1091r_0267,PRECISION kmp_s_1434_br_0267,PRECISION kmp_s_1457r_0267,PRECISION kms_s_0763_br_0267,PRECISION kms_s_1096r_0267,PRECISION kms_s_1160r_0267,PRECISION kms_s_1456r_0267,PRECISION s_0763_b,PRECISION s_1091,PRECISION s_1096,PRECISION s_1160,PRECISION s_1434_b,PRECISION s_1456,PRECISION s_1457){
    PRECISION y = 0.0;
    y=(Vmax_r_0267 * (((s_0763_b * (s_1096 * (s_1160 * s_1456))) - (s_1091 * (s_1434_b * (s_1457 / Keq_r_0267)))) / (((((intracellular * (-1.0 + (((1.0 + (s_0763_b / kms_s_0763_br_0267)) * ((1.0 + (s_1096 / kms_s_1096r_0267)) * ((1.0 + (s_1160 / kms_s_1160r_0267)) * (1.0 + (s_1456 / kms_s_1456r_0267))))) + ((1.0 + (s_1091 / kmp_s_1091r_0267)) * ((1.0 + (s_1434_b / kmp_s_1434_br_0267)) * (1.0 + (s_1457 / kmp_s_1457r_0267))))))) * kms_s_1456r_0267) * kms_s_1096r_0267) * kms_s_0763_br_0267) * kms_s_1160r_0267)));
    return y;
}
__device__ PRECISION function_68(PRECISION Keq_r_0268,PRECISION Vmax_r_0268,PRECISION intracellular,PRECISION kmp_s_0303r_0268,PRECISION kmp_s_1091r_0268,PRECISION kmp_s_1434_br_0268,PRECISION kms_s_0124r_0268,PRECISION kms_s_0763_br_0268,PRECISION kms_s_1096r_0268,PRECISION kms_s_1160r_0268,PRECISION s_0124,PRECISION s_0303,PRECISION s_0763_b,PRECISION s_1091,PRECISION s_1096,PRECISION s_1160,PRECISION s_1434_b){
    PRECISION y = 0.0;
    y=(Vmax_r_0268 * (pow((1.0 / ((kms_s_1096r_0268 * kms_s_0763_br_0268) * kms_s_1160r_0268)),3.0) * (((s_0124 * pow((s_0763_b * (s_1096 * s_1160)),3.0)) - (s_0303 * (pow(s_1091,3.0) * (pow(s_1434_b,4.0) / Keq_r_0268)))) / ((intracellular * (-1.0 + (((1.0 + (s_0124 / kms_s_0124r_0268)) * ((1.0 + (s_0763_b / kms_s_0763_br_0268)) * ((1.0 + (s_1096 / kms_s_1096r_0268)) * (1.0 + (s_1160 / kms_s_1160r_0268))))) + ((1.0 + (s_0303 / kmp_s_0303r_0268)) * ((1.0 + (s_1091 / kmp_s_1091r_0268)) * (1.0 + (s_1434_b / kmp_s_1434_br_0268))))))) * kms_s_0124r_0268))));
    return y;
}
__device__ PRECISION function_69(PRECISION Keq_r_0270,PRECISION Vmax_r_0270,PRECISION intracellular,PRECISION kmp_s_0627r_0270,PRECISION kms_s_0669r_0270,PRECISION s_0627,PRECISION s_0669){
    PRECISION y = 0.0;
    y=(Vmax_r_0270 * ((s_0669 - (s_0627 / Keq_r_0270)) / ((intracellular * (1.0 + ((s_0669 / kms_s_0669r_0270) + (s_0627 / kmp_s_0627r_0270)))) * kms_s_0669r_0270)));
    return y;
}
__device__ PRECISION function_7(PRECISION Keq_r_0016,PRECISION Vmax_r_0016,PRECISION intracellular,PRECISION kmp_s_0042r_0016,PRECISION kmp_s_0470r_0016,PRECISION kms_s_0183r_0016,PRECISION kms_s_0763_br_0016,PRECISION kms_s_1277r_0016,PRECISION s_0042,PRECISION s_0183,PRECISION s_0470,PRECISION s_0763_b,PRECISION s_1277){
    PRECISION y = 0.0;
    y=(Vmax_r_0016 * (((s_0183 * (s_0763_b * s_1277)) - (s_0042 * (s_0470 / Keq_r_0016))) / ((((intracellular * (-1.0 + (((1.0 + (s_0183 / kms_s_0183r_0016)) * ((1.0 + (s_0763_b / kms_s_0763_br_0016)) * (1.0 + (s_1277 / kms_s_1277r_0016)))) + ((1.0 + (s_0042 / kmp_s_0042r_0016)) * (1.0 + (s_0470 / kmp_s_0470r_0016)))))) * kms_s_1277r_0016) * kms_s_0183r_0016) * kms_s_0763_br_0016)));
    return y;
}
__device__ PRECISION function_70(PRECISION Keq_r_0271,PRECISION Vmax_r_0271,PRECISION intracellular,PRECISION kmp_s_0635r_0271,PRECISION kmp_s_1091r_0271,PRECISION kms_s_0632r_0271,PRECISION kms_s_0763_br_0271,PRECISION kms_s_1096r_0271,PRECISION s_0632,PRECISION s_0635,PRECISION s_0763_b,PRECISION s_1091,PRECISION s_1096){
    PRECISION y = 0.0;
    y=(Vmax_r_0271 * (((s_0632 * (s_0763_b * s_1096)) - (s_0635 * (s_1091 / Keq_r_0271))) / ((((intracellular * (-1.0 + (((1.0 + (s_0632 / kms_s_0632r_0271)) * ((1.0 + (s_0763_b / kms_s_0763_br_0271)) * (1.0 + (s_1096 / kms_s_1096r_0271)))) + ((1.0 + (s_0635 / kmp_s_0635r_0271)) * (1.0 + (s_1091 / kmp_s_1091r_0271)))))) * kms_s_1096r_0271) * kms_s_0632r_0271) * kms_s_0763_br_0271)));
    return y;
}
__device__ PRECISION function_71(PRECISION Keq_r_0277,PRECISION Vmax_r_0277,PRECISION intracellular,PRECISION kmp_s_0400r_0277,PRECISION kmp_s_0469r_0277,PRECISION kmp_s_0763_br_0277,PRECISION kmp_s_0899r_0277,PRECISION kmp_s_1207r_0277,PRECISION kms_s_0446r_0277,PRECISION kms_s_0458r_0277,PRECISION kms_s_0907r_0277,PRECISION kms_s_1434_br_0277,PRECISION s_0400,PRECISION s_0446,PRECISION s_0458,PRECISION s_0469,PRECISION s_0763_b,PRECISION s_0899,PRECISION s_0907,PRECISION s_1207,PRECISION s_1434_b){
    PRECISION y = 0.0;
    y=(Vmax_r_0277 * (pow((1.0 / kms_s_0446r_0277),2.0) * (((pow(s_0446,2.0) * (s_0458 * (s_0907 * s_1434_b))) - (pow(s_0400,2.0) * (s_0469 * (pow(s_0763_b,2.0) * (s_0899 * (s_1207 / Keq_r_0277)))))) / ((((intracellular * (-1.0 + (((1.0 + (s_0446 / kms_s_0446r_0277)) * ((1.0 + (s_0458 / kms_s_0458r_0277)) * ((1.0 + (s_0907 / kms_s_0907r_0277)) * (1.0 + (s_1434_b / kms_s_1434_br_0277))))) + ((1.0 + (s_0400 / kmp_s_0400r_0277)) * ((1.0 + (s_0469 / kmp_s_0469r_0277)) * ((1.0 + (s_0763_b / kmp_s_0763_br_0277)) * ((1.0 + (s_0899 / kmp_s_0899r_0277)) * (1.0 + (s_1207 / kmp_s_1207r_0277))))))))) * kms_s_1434_br_0277) * kms_s_0458r_0277) * kms_s_0907r_0277))));
    return y;
}
__device__ PRECISION function_72(PRECISION Keq_r_0282,PRECISION Vmax_r_0282,PRECISION intracellular,PRECISION kmp_s_1160r_0282,PRECISION kmp_s_1434_br_0282,PRECISION kms_s_0801r_0282,PRECISION s_0801,PRECISION s_1160,PRECISION s_1434_b){
    PRECISION y = 0.0;
    y=(Vmax_r_0282 * (pow((1.0 / kms_s_0801r_0282),2.0) * ((pow(s_0801,2.0) - (s_1160 * (pow(s_1434_b,2.0) / Keq_r_0282))) / (intracellular * ((s_0801 / kms_s_0801r_0282) + ((1.0 + (s_1160 / kmp_s_1160r_0282)) * (1.0 + (s_1434_b / kmp_s_1434_br_0282))))))));
    return y;
}
__device__ PRECISION function_73(PRECISION Keq_r_0284,PRECISION Vmax_r_0284,PRECISION intracellular,PRECISION kmp_s_0485r_0284,PRECISION kmp_s_0605r_0284,PRECISION kms_s_0521r_0284,PRECISION kms_s_0763_br_0284,PRECISION kms_s_1215r_0284,PRECISION s_0485,PRECISION s_0521,PRECISION s_0605,PRECISION s_0763_b,PRECISION s_1215){
    PRECISION y = 0.0;
    y=(Vmax_r_0284 * (((s_0521 * (s_0763_b * s_1215)) - (s_0485 * (s_0605 / Keq_r_0284))) / ((((intracellular * (-1.0 + (((1.0 + (s_0521 / kms_s_0521r_0284)) * ((1.0 + (s_0763_b / kms_s_0763_br_0284)) * (1.0 + (s_1215 / kms_s_1215r_0284)))) + ((1.0 + (s_0485 / kmp_s_0485r_0284)) * (1.0 + (s_0605 / kmp_s_0605r_0284)))))) * kms_s_1215r_0284) * kms_s_0521r_0284) * kms_s_0763_br_0284)));
    return y;
}
__device__ PRECISION function_74(PRECISION Keq_r_0287,PRECISION Vmax_r_0287,PRECISION intracellular,PRECISION kmp_s_1060r_0287,PRECISION kmp_s_1091r_0287,PRECISION kmp_s_1434_br_0287,PRECISION kms_s_0763_br_0287,PRECISION kms_s_1080r_0287,PRECISION kms_s_1096r_0287,PRECISION kms_s_1160r_0287,PRECISION s_0763_b,PRECISION s_1060,PRECISION s_1080,PRECISION s_1091,PRECISION s_1096,PRECISION s_1160,PRECISION s_1434_b){
    PRECISION y = 0.0;
    y=(Vmax_r_0287 * (((s_0763_b * (s_1080 * (s_1096 * s_1160))) - (s_1060 * (s_1091 * (s_1434_b / Keq_r_0287)))) / (((((intracellular * (-1.0 + (((1.0 + (s_0763_b / kms_s_0763_br_0287)) * ((1.0 + (s_1080 / kms_s_1080r_0287)) * ((1.0 + (s_1096 / kms_s_1096r_0287)) * (1.0 + (s_1160 / kms_s_1160r_0287))))) + ((1.0 + (s_1060 / kmp_s_1060r_0287)) * ((1.0 + (s_1091 / kmp_s_1091r_0287)) * (1.0 + (s_1434_b / kmp_s_1434_br_0287))))))) * kms_s_1160r_0287) * kms_s_1080r_0287) * kms_s_0763_br_0287) * kms_s_1096r_0287)));
    return y;
}
__device__ PRECISION function_75(PRECISION Keq_r_0290,PRECISION Vmax_r_0290,PRECISION intracellular,PRECISION kmp_s_0514r_0290,PRECISION kmp_s_0763_br_0290,PRECISION kmp_s_1080r_0290,PRECISION kms_s_1325r_0290,PRECISION kms_s_1355r_0290,PRECISION s_0514,PRECISION s_0763_b,PRECISION s_1080,PRECISION s_1325,PRECISION s_1355){
    PRECISION y = 0.0;
    y=(Vmax_r_0290 * (((s_1325 * s_1355) - (s_0514 * (s_0763_b * (s_1080 / Keq_r_0290)))) / (((intracellular * (-1.0 + (((1.0 + (s_1325 / kms_s_1325r_0290)) * (1.0 + (s_1355 / kms_s_1355r_0290))) + ((1.0 + (s_0514 / kmp_s_0514r_0290)) * ((1.0 + (s_0763_b / kmp_s_0763_br_0290)) * (1.0 + (s_1080 / kmp_s_1080r_0290))))))) * kms_s_1355r_0290) * kms_s_1325r_0290)));
    return y;
}
__device__ PRECISION function_76(PRECISION Keq_r_0298,PRECISION Vmax_r_0298,PRECISION intracellular,PRECISION kmp_s_0632r_0298,PRECISION kmp_s_0763_br_0298,PRECISION kmp_s_1290r_0298,PRECISION kmp_s_1434_br_0298,PRECISION kms_s_1160r_0298,PRECISION kms_s_1293r_0298,PRECISION kms_s_1447r_0298,PRECISION s_0632,PRECISION s_0763_b,PRECISION s_1160,PRECISION s_1290,PRECISION s_1293,PRECISION s_1434_b,PRECISION s_1447){
    PRECISION y = 0.0;
    y=(Vmax_r_0298 * (((s_1160 * (s_1293 * s_1447)) - (s_0632 * (s_0763_b * (s_1290 * (pow(s_1434_b,2.0) / Keq_r_0298))))) / ((((intracellular * (-1.0 + (((1.0 + (s_1160 / kms_s_1160r_0298)) * ((1.0 + (s_1293 / kms_s_1293r_0298)) * (1.0 + (s_1447 / kms_s_1447r_0298)))) + ((1.0 + (s_0632 / kmp_s_0632r_0298)) * ((1.0 + (s_0763_b / kmp_s_0763_br_0298)) * ((1.0 + (s_1290 / kmp_s_1290r_0298)) * (1.0 + (s_1434_b / kmp_s_1434_br_0298)))))))) * kms_s_1447r_0298) * kms_s_1160r_0298) * kms_s_1293r_0298)));
    return y;
}
__device__ PRECISION function_77(PRECISION Keq_r_0304,PRECISION Vmax_r_0304,PRECISION intracellular,PRECISION kmp_s_1258r_0304,PRECISION kms_s_0500r_0304,PRECISION s_0500,PRECISION s_1258){
    PRECISION y = 0.0;
    y=(Vmax_r_0304 * ((s_0500 - (s_1258 / Keq_r_0304)) / ((intracellular * (1.0 + ((s_0500 / kms_s_0500r_0304) + (s_1258 / kmp_s_1258r_0304)))) * kms_s_0500r_0304)));
    return y;
}
__device__ PRECISION function_78(PRECISION Keq_r_0306,PRECISION Vmax_r_0306,PRECISION intracellular,PRECISION kmp_s_0500r_0306,PRECISION kmp_s_1207r_0306,PRECISION kms_s_0330r_0306,PRECISION s_0330,PRECISION s_0500,PRECISION s_1207){
    PRECISION y = 0.0;
    y=(Vmax_r_0306 * ((s_0330 - (s_0500 * (s_1207 / Keq_r_0306))) / ((intracellular * ((s_0330 / kms_s_0330r_0306) + ((1.0 + (s_0500 / kmp_s_0500r_0306)) * (1.0 + (s_1207 / kmp_s_1207r_0306))))) * kms_s_0330r_0306)));
    return y;
}
__device__ PRECISION function_79(PRECISION Keq_r_0307,PRECISION Vmax_r_0307,PRECISION intracellular,PRECISION kmp_s_0847r_0307,PRECISION kms_s_0501r_0307,PRECISION kms_s_1434_br_0307,PRECISION s_0501,PRECISION s_0847,PRECISION s_1434_b){
    PRECISION y = 0.0;
    y=(Vmax_r_0307 * (((s_0501 * s_1434_b) - (s_0847 / Keq_r_0307)) / (((intracellular * (((1.0 + (s_0501 / kms_s_0501r_0307)) * (1.0 + (s_1434_b / kms_s_1434_br_0307))) + (s_0847 / kmp_s_0847r_0307))) * kms_s_1434_br_0307) * kms_s_0501r_0307)));
    return y;
}
__device__ PRECISION function_8(PRECISION Keq_r_0018,PRECISION Vmax_r_0018,PRECISION intracellular,PRECISION kmp_s_0185r_0018,PRECISION kmp_s_0861r_0018,PRECISION kms_s_0181r_0018,PRECISION kms_s_0899r_0018,PRECISION s_0181,PRECISION s_0185,PRECISION s_0861,PRECISION s_0899){
    PRECISION y = 0.0;
    y=(Vmax_r_0018 * (((s_0181 * s_0899) - (s_0185 * (s_0861 / Keq_r_0018))) / (((intracellular * (-1.0 + (((1.0 + (s_0181 / kms_s_0181r_0018)) * (1.0 + (s_0899 / kms_s_0899r_0018))) + ((1.0 + (s_0185 / kmp_s_0185r_0018)) * (1.0 + (s_0861 / kmp_s_0861r_0018)))))) * kms_s_0899r_0018) * kms_s_0181r_0018)));
    return y;
}
__device__ PRECISION function_80(PRECISION Keq_r_0328,PRECISION Vmax_r_0328,PRECISION intracellular,PRECISION kmp_s_0507r_0328,PRECISION kmp_s_0514r_0328,PRECISION kmp_s_0763_br_0328,PRECISION kms_s_0380r_0328,PRECISION kms_s_1156r_0328,PRECISION kms_s_1434_br_0328,PRECISION s_0380,PRECISION s_0507,PRECISION s_0514,PRECISION s_0763_b,PRECISION s_1156,PRECISION s_1434_b){
    PRECISION y = 0.0;
    y=(Vmax_r_0328 * (((s_0380 * (s_1156 * s_1434_b)) - (s_0507 * (s_0514 * (s_0763_b / Keq_r_0328)))) / ((((intracellular * (-1.0 + (((1.0 + (s_0380 / kms_s_0380r_0328)) * ((1.0 + (s_1156 / kms_s_1156r_0328)) * (1.0 + (s_1434_b / kms_s_1434_br_0328)))) + ((1.0 + (s_0507 / kmp_s_0507r_0328)) * ((1.0 + (s_0514 / kmp_s_0514r_0328)) * (1.0 + (s_0763_b / kmp_s_0763_br_0328))))))) * kms_s_1434_br_0328) * kms_s_0380r_0328) * kms_s_1156r_0328)));
    return y;
}
__device__ PRECISION function_81(PRECISION Keq_r_0330,PRECISION Vmax_r_0330,PRECISION intracellular,PRECISION kmp_s_0501r_0330,PRECISION kmp_s_1434_br_0330,PRECISION kms_s_0507r_0330,PRECISION s_0501,PRECISION s_0507,PRECISION s_1434_b){
    PRECISION y = 0.0;
    y=(Vmax_r_0330 * ((s_0507 - (s_0501 * (s_1434_b / Keq_r_0330))) / ((intracellular * ((s_0507 / kms_s_0507r_0330) + ((1.0 + (s_0501 / kmp_s_0501r_0330)) * (1.0 + (s_1434_b / kmp_s_1434_br_0330))))) * kms_s_0507r_0330)));
    return y;
}
__device__ PRECISION function_82(PRECISION Keq_r_0336,PRECISION Vmax_r_0336,PRECISION intracellular,PRECISION kmp_s_0400r_0336,PRECISION kmp_s_0521r_0336,PRECISION kmp_s_0763_br_0336,PRECISION kmp_s_1207r_0336,PRECISION kms_s_0430r_0336,PRECISION kms_s_0446r_0336,PRECISION kms_s_1430r_0336,PRECISION s_0400,PRECISION s_0430,PRECISION s_0446,PRECISION s_0521,PRECISION s_0763_b,PRECISION s_1207,PRECISION s_1430){
    PRECISION y = 0.0;
    y=(Vmax_r_0336 * (((s_0430 * (s_0446 * s_1430)) - (s_0400 * (s_0521 * (pow(s_0763_b,2.0) * (s_1207 / Keq_r_0336))))) / ((((intracellular * (-1.0 + (((1.0 + (s_0430 / kms_s_0430r_0336)) * ((1.0 + (s_0446 / kms_s_0446r_0336)) * (1.0 + (s_1430 / kms_s_1430r_0336)))) + ((1.0 + (s_0400 / kmp_s_0400r_0336)) * ((1.0 + (s_0521 / kmp_s_0521r_0336)) * ((1.0 + (s_0763_b / kmp_s_0763_br_0336)) * (1.0 + (s_1207 / kmp_s_1207r_0336)))))))) * kms_s_1430r_0336) * kms_s_0430r_0336) * kms_s_0446r_0336)));
    return y;
}
__device__ PRECISION function_83(PRECISION Keq_r_0338,PRECISION Vmax_r_0338,PRECISION intracellular,PRECISION kmp_s_0888r_0338,PRECISION kmp_s_1434_br_0338,PRECISION kms_s_0917r_0338,PRECISION kms_s_0943r_0338,PRECISION s_0888,PRECISION s_0917,PRECISION s_0943,PRECISION s_1434_b){
    PRECISION y = 0.0;
    y=(Vmax_r_0338 * (((s_0917 * s_0943) - (s_0888 * (s_1434_b / Keq_r_0338))) / (((intracellular * (-1.0 + (((1.0 + (s_0917 / kms_s_0917r_0338)) * (1.0 + (s_0943 / kms_s_0943r_0338))) + ((1.0 + (s_0888 / kmp_s_0888r_0338)) * (1.0 + (s_1434_b / kmp_s_1434_br_0338)))))) * kms_s_0943r_0338) * kms_s_0917r_0338)));
    return y;
}
__device__ PRECISION function_84(PRECISION Keq_r_0339,PRECISION Vmax_r_0339,PRECISION intracellular,PRECISION kmp_s_0183r_0339,PRECISION kmp_s_0430r_0339,PRECISION kmp_s_0889r_0339,PRECISION kms_s_0888r_0339,PRECISION kms_s_1434_br_0339,PRECISION s_0183,PRECISION s_0430,PRECISION s_0888,PRECISION s_0889,PRECISION s_1434_b){
    PRECISION y = 0.0;
    y=(Vmax_r_0339 * (((s_0888 * s_1434_b) - (s_0183 * (s_0430 * (s_0889 / Keq_r_0339)))) / (((intracellular * (-1.0 + (((1.0 + (s_0888 / kms_s_0888r_0339)) * (1.0 + (s_1434_b / kms_s_1434_br_0339))) + ((1.0 + (s_0183 / kmp_s_0183r_0339)) * ((1.0 + (s_0430 / kmp_s_0430r_0339)) * (1.0 + (s_0889 / kmp_s_0889r_0339))))))) * kms_s_1434_br_0339) * kms_s_0888r_0339)));
    return y;
}
__device__ PRECISION function_85(PRECISION Keq_r_0340,PRECISION Vmax_r_0340,PRECISION intracellular,PRECISION kmp_s_0369r_0340,PRECISION kmp_s_0763_br_0340,PRECISION kmp_s_0888r_0340,PRECISION kms_s_0889r_0340,PRECISION kms_s_1117r_0340,PRECISION s_0369,PRECISION s_0763_b,PRECISION s_0888,PRECISION s_0889,PRECISION s_1117){
    PRECISION y = 0.0;
    y=(Vmax_r_0340 * (((s_0889 * s_1117) - (s_0369 * (s_0763_b * (s_0888 / Keq_r_0340)))) / (((intracellular * (-1.0 + (((1.0 + (s_0889 / kms_s_0889r_0340)) * (1.0 + (s_1117 / kms_s_1117r_0340))) + ((1.0 + (s_0369 / kmp_s_0369r_0340)) * ((1.0 + (s_0763_b / kmp_s_0763_br_0340)) * (1.0 + (s_0888 / kmp_s_0888r_0340))))))) * kms_s_1117r_0340) * kms_s_0889r_0340)));
    return y;
}
__device__ PRECISION function_86(PRECISION Keq_r_0345,PRECISION Vmax_r_0345,PRECISION intracellular,PRECISION kmp_s_0446r_0345,PRECISION kmp_s_0511r_0345,PRECISION kms_s_0400r_0345,PRECISION kms_s_0481r_0345,PRECISION s_0400,PRECISION s_0446,PRECISION s_0481,PRECISION s_0511){
    PRECISION y = 0.0;
    y=(Vmax_r_0345 * (((s_0400 * s_0481) - (s_0446 * (s_0511 / Keq_r_0345))) / (((intracellular * (-1.0 + (((1.0 + (s_0400 / kms_s_0400r_0345)) * (1.0 + (s_0481 / kms_s_0481r_0345))) + ((1.0 + (s_0446 / kmp_s_0446r_0345)) * (1.0 + (s_0511 / kmp_s_0511r_0345)))))) * kms_s_0481r_0345) * kms_s_0400r_0345)));
    return y;
}
__device__ PRECISION function_87(PRECISION Keq_r_0347,PRECISION Vmax_r_0347,PRECISION intracellular,PRECISION kmp_s_0268r_0347,PRECISION kmp_s_0689r_0347,PRECISION kmp_s_1082r_0347,PRECISION kmp_s_1434_br_0347,PRECISION kms_s_0763_br_0347,PRECISION kms_s_0963r_0347,PRECISION kms_s_1087r_0347,PRECISION kms_s_1160r_0347,PRECISION s_0268,PRECISION s_0689,PRECISION s_0763_b,PRECISION s_0963,PRECISION s_1082,PRECISION s_1087,PRECISION s_1160,PRECISION s_1434_b){
    PRECISION y = 0.0;
    y=(Vmax_r_0347 * (pow((1.0 / kms_s_0763_br_0347),2.0) * (pow((1.0 / (kms_s_1087r_0347 * kms_s_1160r_0347)),3.0) * (((pow(s_0763_b,2.0) * (s_0963 * pow((s_1087 * s_1160),3.0))) - (s_0268 * (s_0689 * (pow(s_1082,3.0) * (pow(s_1434_b,4.0) / Keq_r_0347))))) / ((intracellular * (-1.0 + (((1.0 + (s_0763_b / kms_s_0763_br_0347)) * ((1.0 + (s_0963 / kms_s_0963r_0347)) * ((1.0 + (s_1087 / kms_s_1087r_0347)) * (1.0 + (s_1160 / kms_s_1160r_0347))))) + ((1.0 + (s_0268 / kmp_s_0268r_0347)) * ((1.0 + (s_0689 / kmp_s_0689r_0347)) * ((1.0 + (s_1082 / kmp_s_1082r_0347)) * (1.0 + (s_1434_b / kmp_s_1434_br_0347)))))))) * kms_s_0963r_0347)))));
    return y;
}
__device__ PRECISION function_88(PRECISION Keq_r_0351,PRECISION Vmax_r_0351,PRECISION intracellular,PRECISION kmp_s_0530r_0351,PRECISION kmp_s_1082r_0351,PRECISION kms_s_0529r_0351,PRECISION kms_s_0763_br_0351,PRECISION kms_s_1087r_0351,PRECISION s_0529,PRECISION s_0530,PRECISION s_0763_b,PRECISION s_1082,PRECISION s_1087){
    PRECISION y = 0.0;
    y=(Vmax_r_0351 * (((s_0529 * (s_0763_b * s_1087)) - (s_0530 * (s_1082 / Keq_r_0351))) / ((((intracellular * (-1.0 + (((1.0 + (s_0529 / kms_s_0529r_0351)) * ((1.0 + (s_0763_b / kms_s_0763_br_0351)) * (1.0 + (s_1087 / kms_s_1087r_0351)))) + ((1.0 + (s_0530 / kmp_s_0530r_0351)) * (1.0 + (s_1082 / kmp_s_1082r_0351)))))) * kms_s_1087r_0351) * kms_s_0529r_0351) * kms_s_0763_br_0351)));
    return y;
}
__device__ PRECISION function_89(PRECISION Keq_r_0352,PRECISION Vmax_r_0352,PRECISION intracellular,PRECISION kmp_s_0529r_0352,PRECISION kmp_s_0763_br_0352,PRECISION kmp_s_1096r_0352,PRECISION kms_s_0530r_0352,PRECISION kms_s_1091r_0352,PRECISION s_0529,PRECISION s_0530,PRECISION s_0763_b,PRECISION s_1091,PRECISION s_1096){
    PRECISION y = 0.0;
    y=(Vmax_r_0352 * (((s_0530 * s_1091) - (s_0529 * (s_0763_b * (s_1096 / Keq_r_0352)))) / (((intracellular * (-1.0 + (((1.0 + (s_0530 / kms_s_0530r_0352)) * (1.0 + (s_1091 / kms_s_1091r_0352))) + ((1.0 + (s_0529 / kmp_s_0529r_0352)) * ((1.0 + (s_0763_b / kmp_s_0763_br_0352)) * (1.0 + (s_1096 / kmp_s_1096r_0352))))))) * kms_s_1091r_0352) * kms_s_0530r_0352)));
    return y;
}
__device__ PRECISION function_9(PRECISION Keq_r_0021,PRECISION Vmax_r_0021,PRECISION intracellular,PRECISION kmp_s_0356r_0021,PRECISION kmp_s_1207r_0021,PRECISION kms_s_0533r_0021,PRECISION kms_s_1243r_0021,PRECISION kms_s_1434_br_0021,PRECISION s_0356,PRECISION s_0533,PRECISION s_1207,PRECISION s_1243,PRECISION s_1434_b){
    PRECISION y = 0.0;
    y=(Vmax_r_0021 * (((s_0533 * (s_1243 * s_1434_b)) - (s_0356 * (s_1207 / Keq_r_0021))) / ((((intracellular * (-1.0 + (((1.0 + (s_0533 / kms_s_0533r_0021)) * ((1.0 + (s_1243 / kms_s_1243r_0021)) * (1.0 + (s_1434_b / kms_s_1434_br_0021)))) + ((1.0 + (s_0356 / kmp_s_0356r_0021)) * (1.0 + (s_1207 / kmp_s_1207r_0021)))))) * kms_s_1434_br_0021) * kms_s_0533r_0021) * kms_s_1243r_0021)));
    return y;
}
__device__ PRECISION function_90(PRECISION Keq_r_0357,PRECISION Vmax_r_0357,PRECISION intracellular,PRECISION kmp_s_0569r_0357,PRECISION kmp_s_0763_br_0357,PRECISION kmp_s_1434_br_0357,PRECISION kms_s_0430r_0357,PRECISION kms_s_0624r_0357,PRECISION s_0430,PRECISION s_0569,PRECISION s_0624,PRECISION s_0763_b,PRECISION s_1434_b){
    PRECISION y = 0.0;
    y=(Vmax_r_0357 * (((s_0430 * s_0624) - (s_0569 * (s_0763_b * (s_1434_b / Keq_r_0357)))) / (((intracellular * (-1.0 + (((1.0 + (s_0430 / kms_s_0430r_0357)) * (1.0 + (s_0624 / kms_s_0624r_0357))) + ((1.0 + (s_0569 / kmp_s_0569r_0357)) * ((1.0 + (s_0763_b / kmp_s_0763_br_0357)) * (1.0 + (s_1434_b / kmp_s_1434_br_0357))))))) * kms_s_0624r_0357) * kms_s_0430r_0357)));
    return y;
}
__device__ PRECISION function_91(PRECISION Keq_r_0360,PRECISION Vmax_r_0360,PRECISION intracellular,PRECISION kmp_s_0446r_0360,PRECISION kmp_s_0564r_0360,PRECISION kms_s_0400r_0360,PRECISION kms_s_0562r_0360,PRECISION s_0400,PRECISION s_0446,PRECISION s_0562,PRECISION s_0564){
    PRECISION y = 0.0;
    y=(Vmax_r_0360 * (((s_0400 * s_0562) - (s_0446 * (s_0564 / Keq_r_0360))) / (((intracellular * (-1.0 + (((1.0 + (s_0400 / kms_s_0400r_0360)) * (1.0 + (s_0562 / kms_s_0562r_0360))) + ((1.0 + (s_0446 / kmp_s_0446r_0360)) * (1.0 + (s_0564 / kmp_s_0564r_0360)))))) * kms_s_0562r_0360) * kms_s_0400r_0360)));
    return y;
}
__device__ PRECISION function_92(PRECISION Keq_r_0362,PRECISION Vmax_r_0362,PRECISION intracellular,PRECISION kmp_s_0446r_0362,PRECISION kmp_s_0593r_0362,PRECISION kms_s_0400r_0362,PRECISION kms_s_0591r_0362,PRECISION s_0400,PRECISION s_0446,PRECISION s_0591,PRECISION s_0593){
    PRECISION y = 0.0;
    y=(Vmax_r_0362 * (((s_0400 * s_0591) - (s_0446 * (s_0593 / Keq_r_0362))) / (((intracellular * (-1.0 + (((1.0 + (s_0400 / kms_s_0400r_0362)) * (1.0 + (s_0591 / kms_s_0591r_0362))) + ((1.0 + (s_0446 / kmp_s_0446r_0362)) * (1.0 + (s_0593 / kmp_s_0593r_0362)))))) * kms_s_0591r_0362) * kms_s_0400r_0362)));
    return y;
}
__device__ PRECISION function_93(PRECISION Keq_r_0370,PRECISION Vmax_r_0370,PRECISION intracellular,PRECISION kmp_s_0514r_0370,PRECISION kmp_s_0763_br_0370,PRECISION kmp_s_1399r_0370,PRECISION kms_s_0386r_0370,PRECISION kms_s_0596r_0370,PRECISION s_0386,PRECISION s_0514,PRECISION s_0596,PRECISION s_0763_b,PRECISION s_1399){
    PRECISION y = 0.0;
    y=(Vmax_r_0370 * (((s_0386 * s_0596) - (s_0514 * (pow(s_0763_b,4.0) * (s_1399 / Keq_r_0370)))) / (((intracellular * (-1.0 + (((1.0 + (s_0386 / kms_s_0386r_0370)) * (1.0 + (s_0596 / kms_s_0596r_0370))) + ((1.0 + (s_0514 / kmp_s_0514r_0370)) * ((1.0 + (s_0763_b / kmp_s_0763_br_0370)) * (1.0 + (s_1399 / kmp_s_1399r_0370))))))) * kms_s_0596r_0370) * kms_s_0386r_0370)));
    return y;
}
__device__ PRECISION function_94(PRECISION Keq_r_0371,PRECISION Vmax_r_0371,PRECISION intracellular,PRECISION kmp_s_0596r_0371,PRECISION kmp_s_0763_br_0371,PRECISION kmp_s_1207r_0371,PRECISION kms_s_1215r_0371,PRECISION kms_s_1434_br_0371,PRECISION s_0596,PRECISION s_0763_b,PRECISION s_1207,PRECISION s_1215,PRECISION s_1434_b){
    PRECISION y = 0.0;
    y=(Vmax_r_0371 * (((s_1215 * s_1434_b) - (s_0596 * (pow(s_0763_b,2.0) * (s_1207 / Keq_r_0371)))) / (((intracellular * (-1.0 + (((1.0 + (s_1215 / kms_s_1215r_0371)) * (1.0 + (s_1434_b / kms_s_1434_br_0371))) + ((1.0 + (s_0596 / kmp_s_0596r_0371)) * ((1.0 + (s_0763_b / kmp_s_0763_br_0371)) * (1.0 + (s_1207 / kmp_s_1207r_0371))))))) * kms_s_1434_br_0371) * kms_s_1215r_0371)));
    return y;
}
__device__ PRECISION function_95(PRECISION Keq_r_0374,PRECISION Vmax_r_0374,PRECISION intracellular,PRECISION kmp_s_0801r_0374,PRECISION kmp_s_1154r_0374,PRECISION kms_s_0064r_0374,PRECISION kms_s_1160r_0374,PRECISION s_0064,PRECISION s_0801,PRECISION s_1154,PRECISION s_1160){
    PRECISION y = 0.0;
    y=(Vmax_r_0374 * (((s_0064 * s_1160) - (s_0801 * (s_1154 / Keq_r_0374))) / (((intracellular * (-1.0 + (((1.0 + (s_0064 / kms_s_0064r_0374)) * (1.0 + (s_1160 / kms_s_1160r_0374))) + ((1.0 + (s_0801 / kmp_s_0801r_0374)) * (1.0 + (s_1154 / kmp_s_1154r_0374)))))) * kms_s_1160r_0374) * kms_s_0064r_0374)));
    return y;
}
__device__ PRECISION function_96(PRECISION Keq_r_0375,PRECISION Vmax_r_0375,PRECISION intracellular,PRECISION kmp_s_0309r_0375,PRECISION kmp_s_1091r_0375,PRECISION kms_s_0601r_0375,PRECISION kms_s_0763_br_0375,PRECISION kms_s_1096r_0375,PRECISION s_0309,PRECISION s_0601,PRECISION s_0763_b,PRECISION s_1091,PRECISION s_1096){
    PRECISION y = 0.0;
    y=(Vmax_r_0375 * (((s_0601 * (s_0763_b * s_1096)) - (s_0309 * (s_1091 / Keq_r_0375))) / ((((intracellular * (-1.0 + (((1.0 + (s_0601 / kms_s_0601r_0375)) * ((1.0 + (s_0763_b / kms_s_0763_br_0375)) * (1.0 + (s_1096 / kms_s_1096r_0375)))) + ((1.0 + (s_0309 / kmp_s_0309r_0375)) * (1.0 + (s_1091 / kmp_s_1091r_0375)))))) * kms_s_1096r_0375) * kms_s_0601r_0375) * kms_s_0763_br_0375)));
    return y;
}
__device__ PRECISION function_97(PRECISION Keq_r_0381,PRECISION Vmax_r_0381,PRECISION intracellular,PRECISION kmp_s_0064r_0381,PRECISION kmp_s_1434_br_0381,PRECISION kms_s_0763_br_0381,PRECISION kms_s_1073r_0381,PRECISION s_0064,PRECISION s_0763_b,PRECISION s_1073,PRECISION s_1434_b){
    PRECISION y = 0.0;
    y=(Vmax_r_0381 * (((s_0763_b * s_1073) - (s_0064 * (s_1434_b / Keq_r_0381))) / (((intracellular * (-1.0 + (((1.0 + (s_0763_b / kms_s_0763_br_0381)) * (1.0 + (s_1073 / kms_s_1073r_0381))) + ((1.0 + (s_0064 / kmp_s_0064r_0381)) * (1.0 + (s_1434_b / kmp_s_1434_br_0381)))))) * kms_s_1073r_0381) * kms_s_0763_br_0381)));
    return y;
}
__device__ PRECISION function_98(PRECISION Keq_r_0384,PRECISION Vmax_r_0384,PRECISION intracellular,PRECISION kmp_s_0238r_0384,PRECISION kmp_s_1434_br_0384,PRECISION kms_s_0018r_0384,PRECISION s_0018,PRECISION s_0238,PRECISION s_1434_b){
    PRECISION y = 0.0;
    y=(Vmax_r_0384 * ((s_0018 - (s_0238 * (s_1434_b / Keq_r_0384))) / ((intracellular * ((s_0018 / kms_s_0018r_0384) + ((1.0 + (s_0238 / kmp_s_0238r_0384)) * (1.0 + (s_1434_b / kmp_s_1434_br_0384))))) * kms_s_0018r_0384)));
    return y;
}
__device__ PRECISION function_99(PRECISION Keq_r_0385,PRECISION Vmax_r_0385,PRECISION intracellular,PRECISION kmp_s_0058r_0385,PRECISION kmp_s_1434_br_0385,PRECISION kms_s_0007r_0385,PRECISION s_0007,PRECISION s_0058,PRECISION s_1434_b){
    PRECISION y = 0.0;
    y=(Vmax_r_0385 * ((s_0007 - (s_0058 * (s_1434_b / Keq_r_0385))) / ((intracellular * ((s_0007 / kms_s_0007r_0385) + ((1.0 + (s_0058 / kmp_s_0058r_0385)) * (1.0 + (s_1434_b / kmp_s_1434_br_0385))))) * kms_s_0007r_0385)));
    return y;
}

#endif
