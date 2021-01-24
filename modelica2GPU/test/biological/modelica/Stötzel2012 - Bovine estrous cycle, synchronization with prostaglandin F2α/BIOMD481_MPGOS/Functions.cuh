
#ifndef BIOMD481_FUNCTIONS_H
#define BIOMD481_FUNCTIONS_H

#include <iostream>

#define PRECISION double

__device__ bool gt(PRECISION x,PRECISION y){
    bool z = 0.0;
    z=x > y;
    return z;
}
__device__ PRECISION piecewise(PRECISION x,bool condition,PRECISION y){
    PRECISION z = 0.0;
    z=(condition ? x : y);
    return z;
}

__device__ PRECISION function_1(PRECISION GnRH_Pit,PRECISION LH_Pit,PRECISION default_,PRECISION par35,PRECISION par36,PRECISION par37){
    PRECISION y = 0.0;
    y=((par37 + (par35 * (pow((GnRH_Pit * default_),5.0) / (pow((GnRH_Pit * default_),5.0) + pow(par36,5.0))))) * LH_Pit);
    return y;
}
__device__ PRECISION function_10(PRECISION P4,PRECISION default_,PRECISION par86,PRECISION par87){
    PRECISION y = 0.0;
    y=(par86 * (pow((P4 * default_),5.0) / (default_ * (pow((P4 * default_),5.0) + pow(par87,5.0)))));
    return y;
}
__device__ PRECISION function_11(PRECISION Enz,PRECISION OT,PRECISION default_,PRECISION par56,PRECISION par57,PRECISION par58){
    PRECISION y = 0.0;
    y=(par56 * (pow(Enz,5.0) * (pow((OT * default_),2.0) / ((default_ * (pow(Enz,5.0) + pow(par57,5.0))) * (pow((OT * default_),2.0) + pow(par58,2.0))))));
    return y;
}
__device__ PRECISION function_12(PRECISION GnRH_Pit,PRECISION default_,PRECISION par10){
    PRECISION y = 0.0;
    y=(par10 * GnRH_Pit);
    return y;
}
__device__ PRECISION function_13(PRECISION LH_Bld,PRECISION default_,PRECISION par38){
    PRECISION y = 0.0;
    y=(par38 * LH_Bld);
    return y;
}
__device__ PRECISION function_14(PRECISION FSH_Bld,PRECISION default_,PRECISION par29){
    PRECISION y = 0.0;
    y=(par29 * FSH_Bld);
    return y;
}
__device__ PRECISION function_15(PRECISION P4,PRECISION default_,PRECISION par72){
    PRECISION y = 0.0;
    y=(par72 * P4);
    return y;
}
__device__ PRECISION function_16(PRECISION E2,PRECISION default_,PRECISION par77){
    PRECISION y = 0.0;
    y=(par77 * E2);
    return y;
}
__device__ PRECISION function_17(PRECISION Inh,PRECISION default_,PRECISION par82){
    PRECISION y = 0.0;
    y=(par82 * Inh);
    return y;
}
__device__ PRECISION function_18(PRECISION OT,PRECISION default_,PRECISION par94){
    PRECISION y = 0.0;
    y=(par94 * OT);
    return y;
}
__device__ PRECISION function_19(PRECISION Enz,PRECISION default_,PRECISION par89){
    PRECISION y = 0.0;
    y=(par89 * (Enz / default_));
    return y;
}
__device__ PRECISION function_2(PRECISION E2,PRECISION FSH_Pit,PRECISION GnRH_Pit,PRECISION P4,PRECISION default_,PRECISION par23,PRECISION par24,PRECISION par25,PRECISION par26,PRECISION par27,PRECISION par28,PRECISION par30){
    PRECISION y = 0.0;
    y=((par30 + ((par23 * (pow((P4 * default_),2.0) / (pow((P4 * default_),2.0) + pow(par24,2.0)))) + ((par25 * (pow(par26,2.0) / (pow((E2 * default_),2.0) + pow(par26,2.0)))) + (par27 * (GnRH_Pit * (default_ / (par28 + (GnRH_Pit * default_)))))))) * FSH_Pit);
    return y;
}
__device__ PRECISION function_20(PRECISION PGF,PRECISION default_,PRECISION par59){
    PRECISION y = 0.0;
    y=(par59 * PGF);
    return y;
}
__device__ PRECISION function_21(PRECISION IOF,PRECISION default_,PRECISION par98){
    PRECISION y = 0.0;
    y=(par98 * IOF);
    return y;
}
__device__ PRECISION function_22(PRECISION Foll,PRECISION LH_Bld,PRECISION P4,PRECISION default_,PRECISION par45,PRECISION par46,PRECISION par47,PRECISION par48){
    PRECISION y = 0.0;
    y=(((par45 * (pow((P4 * default_),5.0) / (pow((P4 * default_),5.0) + pow(par46,5.0)))) + (par47 * (pow((LH_Bld * default_),2.0) / (pow((LH_Bld * default_),2.0) + pow(par48,2.0))))) * Foll);
    return y;
}
__device__ PRECISION function_23(PRECISION CL,PRECISION IOF,PRECISION default_,PRECISION par65,PRECISION par66){
    PRECISION y = 0.0;
    y=(par65 * (pow((IOF * default_),5.0) * (CL / (pow((IOF * default_),5.0) + pow(par66,5.0)))));
    return y;
}
__device__ PRECISION function_24(PRECISION E2,PRECISION P4,PRECISION default_,PRECISION par31,PRECISION par32,PRECISION par33,PRECISION par34){
    PRECISION y = 0.0;
    y=(((par31 * (pow((E2 * default_),2.0) / (pow((E2 * default_),2.0) + pow(par32,2.0)))) + (par33 * (pow(par34,2.0) / (pow(par34,2.0) + pow((P4 * default_),2.0))))) / default_);
    return y;
}
__device__ PRECISION function_25(PRECISION Inh,PRECISION default_,PRECISION par21,PRECISION par22){
    PRECISION y = 0.0;
    y=(par21 * (pow(par22,5.0) / (default_ * (pow(par22,5.0) + pow((Inh * default_),5.0)))));
    return y;
}
__device__ PRECISION function_26(PRECISION E2,PRECISION GnRH_Hyp,PRECISION P4,PRECISION default_,PRECISION par3,PRECISION par4,PRECISION par5,PRECISION par6,PRECISION par7,PRECISION par8,PRECISION par9){
    PRECISION y = 0.0;
    y=(par8 * (pow((E2 * default_),5.0) * (((par3 * ((pow(par5,2.0) / (pow(par5,2.0) + pow((P4 * default_),2.0))) + ((pow(par4,2.0) / (pow(par4,2.0) + pow((E2 * default_),2.0))) - (pow((par4 * par5),2.0) / ((pow(par5,2.0) + pow((P4 * default_),2.0)) * (pow(par4,2.0) + pow((E2 * default_),2.0))))))) + (par6 * (pow(par7,2.0) / (pow((P4 * default_),2.0) + pow(par7,2.0))))) * (GnRH_Hyp / (pow((E2 * default_),5.0) + pow(par9,5.0))))));
    return y;
}
__device__ PRECISION function_27(PRECISION FSH_Bld,PRECISION Foll,PRECISION default_,PRECISION par41,PRECISION par42,PRECISION par43){
    PRECISION y = 0.0;
    y=(par41 * (pow((FSH_Bld * default_),2.0) / (default_ * (pow((par42 * (pow(par43,2.0) / (pow(par43,2.0) + pow((Foll * default_),2.0)))),2.0) + pow((FSH_Bld * default_),2.0)))));
    return y;
}
__device__ PRECISION function_28(PRECISION CL,PRECISION PGF,PRECISION default_,PRECISION par95,PRECISION par96,PRECISION par97){
    PRECISION y = 0.0;
    y=(par95 * (pow((PGF * default_),5.0) * (pow((CL * default_),10.0) / ((default_ * (pow((PGF * default_),5.0) + pow(par96,5.0))) * (pow((CL * default_),10.0) + pow(par97,10.0))))));
    return y;
}
__device__ PRECISION function_3(PRECISION E2,PRECISION GnRH_Hyp,PRECISION P4,PRECISION default_,PRECISION par3,PRECISION par4,PRECISION par5,PRECISION par6,PRECISION par7){
    PRECISION y = 0.0;
    y=(((par3 * ((pow(par5,2.0) / (pow(par5,2.0) + pow((P4 * default_),2.0))) + ((pow(par4,2.0) / (pow(par4,2.0) + pow((E2 * default_),2.0))) - (pow((par4 * par5),2.0) / ((pow(par4,2.0) + pow((E2 * default_),2.0)) * (pow(par5,2.0) + pow((P4 * default_),2.0))))))) + (par6 * (pow(par7,2.0) / (pow((P4 * default_),2.0) + pow(par7,2.0))))) * GnRH_Hyp);
    return y;
}
__device__ PRECISION function_4(PRECISION CL,PRECISION Foll,PRECISION LH_Bld,PRECISION default_,PRECISION par47,PRECISION par48,PRECISION par62,PRECISION par63,PRECISION par64){
    PRECISION y = 0.0;
    y=(((par62 * (par47 * (pow((LH_Bld * default_),2.0) * (Foll * (default_ / (pow((LH_Bld * default_),2.0) + pow(par48,2.0))))))) + (par63 * (pow((CL * default_),2.0) / (pow((CL * default_),2.0) + pow(par64,2.0))))) / default_);
    return y;
}
__device__ PRECISION function_5(PRECISION GnRH_Hyp,PRECISION default_,PRECISION par1,PRECISION par2){
    PRECISION y = 0.0;
    y=(par2 * ((1.0 - (GnRH_Hyp * (default_ / par1))) / default_));
    return y;
}
__device__ PRECISION function_6(PRECISION Foll,PRECISION default_,PRECISION par76){
    PRECISION y = 0.0;
    y=(par76 * (pow((Foll * default_),2.0) / default_));
    return y;
}
__device__ PRECISION function_7(PRECISION CL,PRECISION default_,PRECISION par71){
    PRECISION y = 0.0;
    y=(par71 * (pow((CL * default_),2.0) / default_));
    return y;
}
__device__ PRECISION function_8(PRECISION Foll,PRECISION default_,PRECISION par81){
    PRECISION y = 0.0;
    y=(par81 * (pow((Foll * default_),2.0) / default_));
    return y;
}
__device__ PRECISION function_9(PRECISION CL,PRECISION E2,PRECISION default_,PRECISION par91,PRECISION par92){
    PRECISION y = 0.0;
    y=(par91 * (pow((E2 * (pow(default_,2.0) * CL)),2.0) / (default_ * (pow((E2 * default_),2.0) + pow(par92,2.0)))));
    return y;
}

#endif
