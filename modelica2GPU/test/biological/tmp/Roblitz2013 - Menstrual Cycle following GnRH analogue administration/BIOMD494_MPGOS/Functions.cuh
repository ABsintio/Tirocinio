
#ifndef BIOMD494_FUNCTIONS_H
#define BIOMD494_FUNCTIONS_H

#include <iostream>

#define PRECISION double

__device__ PRECISION function_1(PRECISION GnRH_R_a,PRECISION default_,PRECISION p309){
    PRECISION y = 0.0;
    y=(p309 * GnRH_R_a);
    return y;
}
__device__ PRECISION function_10(PRECISION E2,PRECISION P4,PRECISION default_,PRECISION facE2,PRECISION facP4,PRECISION p1,PRECISION p2,PRECISION p3,PRECISION p4,PRECISION p6,PRECISION p7){
    PRECISION y = 0.0;
    y=((p1 + (p2 * (pow((E2 * (default_ / (facE2 * p3))),p6) / (1.0 + pow((E2 * (default_ / (facE2 * p3))),p6))))) / (default_ * (1.0 + pow((P4 * (default_ / (facP4 * p4))),p7))));
    return y;
}
__device__ PRECISION function_11(PRECISION InhA_delay,PRECISION InhB,PRECISION default_,PRECISION freq,PRECISION p11,PRECISION p13,PRECISION p21,PRECISION p22,PRECISION p23,PRECISION p24,PRECISION p25){
    PRECISION y = 0.0;
    y=(p21 / ((default_ * (1.0 + (pow((InhA_delay * (default_ / p22)),p24) + pow((InhB * (default_ / p23)),p25)))) * (1.0 + pow((freq / p11),p13))));
    return y;
}
__device__ PRECISION function_12(PRECISION Ago_R_a,PRECISION GnRH_R_a,PRECISION LH_Pit,PRECISION default_,PRECISION p16,PRECISION p5,PRECISION p8,PRECISION p9){
    PRECISION y = 0.0;
    y=((p16 + (p5 * (pow((default_ * ((GnRH_R_a + Ago_R_a) / p8)),p9) / (1.0 + pow((default_ * ((GnRH_R_a + Ago_R_a) / p8)),p9))))) * LH_Pit);
    return y;
}
__device__ PRECISION function_13(PRECISION Ago_R_a,PRECISION FSH_pit,PRECISION GnRH_R_a,PRECISION default_,PRECISION p17,PRECISION p18,PRECISION p20,PRECISION p28){
    PRECISION y = 0.0;
    y=((p17 + (p28 * (pow((default_ * ((GnRH_R_a + Ago_R_a) / p18)),p20) / (1.0 + pow((default_ * ((GnRH_R_a + Ago_R_a) / p18)),p20))))) * FSH_pit);
    return y;
}
__device__ PRECISION function_14(PRECISION LH_bld,PRECISION R_LH,PRECISION default_,PRECISION facLH,PRECISION p230){
    PRECISION y = 0.0;
    y=(p230 * (LH_bld * (default_ * (R_LH / facLH))));
    return y;
}
__device__ PRECISION function_15(PRECISION LH_R,PRECISION default_,PRECISION p234){
    PRECISION y = 0.0;
    y=(p234 * LH_R);
    return y;
}
__device__ PRECISION function_16(PRECISION R_LH_des,PRECISION default_,PRECISION p232){
    PRECISION y = 0.0;
    y=(p232 * R_LH_des);
    return y;
}
__device__ PRECISION function_17(PRECISION LH_bld,PRECISION default_,PRECISION p231){
    PRECISION y = 0.0;
    y=(p231 * LH_bld);
    return y;
}
__device__ PRECISION function_18(PRECISION FSH_R,PRECISION default_,PRECISION p244){
    PRECISION y = 0.0;
    y=(p244 * FSH_R);
    return y;
}
__device__ PRECISION function_19(PRECISION R_FSH_des,PRECISION default_,PRECISION p242){
    PRECISION y = 0.0;
    y=(p242 * R_FSH_des);
    return y;
}
__device__ PRECISION function_2(PRECISION GnRH_R_i,PRECISION default_,PRECISION p310){
    PRECISION y = 0.0;
    y=(p310 * GnRH_R_i);
    return y;
}
__device__ PRECISION function_20(PRECISION AF1,PRECISION FSH_R,PRECISION default_,PRECISION p50){
    PRECISION y = 0.0;
    y=(p50 * (FSH_R * (default_ * AF1)));
    return y;
}
__device__ PRECISION function_21(PRECISION FSH_R,PRECISION default_,PRECISION p47,PRECISION p48,PRECISION p49){
    PRECISION y = 0.0;
    y=(p49 * (pow((FSH_R * (default_ / p48)),p47) / (default_ * (1.0 + pow((FSH_R * (default_ / p48)),p47)))));
    return y;
}
__device__ PRECISION function_22(PRECISION AF2,PRECISION LH_R,PRECISION R_Foll,PRECISION default_,PRECISION p46,PRECISION p51,PRECISION p52){
    PRECISION y = 0.0;
    y=(p51 * (pow((LH_R * (default_ / p52)),p46) * (R_Foll * (default_ * AF2))));
    return y;
}
__device__ PRECISION function_23(PRECISION AF3,PRECISION LH_R,PRECISION R_Foll,PRECISION default_,PRECISION p32,PRECISION p43,PRECISION p52){
    PRECISION y = 0.0;
    y=(p32 * (pow((LH_R * (default_ / p52)),p43) * (R_Foll * (default_ * AF3))));
    return y;
}
__device__ PRECISION function_24(PRECISION AF4,PRECISION LH_R,PRECISION R_Foll,PRECISION default_,PRECISION p34,PRECISION p52){
    PRECISION y = 0.0;
    y=(p34 * (LH_R * (pow(default_,2.0) * (R_Foll * (AF4 / p52)))));
    return y;
}
__device__ PRECISION function_25(PRECISION Sc1,PRECISION default_,PRECISION p37){
    PRECISION y = 0.0;
    y=(p37 * Sc1);
    return y;
}
__device__ PRECISION function_26(PRECISION Sc2,PRECISION default_,PRECISION p38){
    PRECISION y = 0.0;
    y=(p38 * Sc2);
    return y;
}
__device__ PRECISION function_27(PRECISION Ago_R_a,PRECISION GnRH_R_a,PRECISION Lut1,PRECISION default_,PRECISION p39,PRECISION p80,PRECISION p83,PRECISION p84){
    PRECISION y = 0.0;
    y=(p39 * ((1.0 + (p80 * (pow((default_ * ((GnRH_R_a + Ago_R_a) / p83)),p84) / (1.0 + pow((default_ * ((GnRH_R_a + Ago_R_a) / p83)),p84))))) * Lut1));
    return y;
}
__device__ PRECISION function_28(PRECISION Ago_R_a,PRECISION GnRH_R_a,PRECISION Lut2,PRECISION default_,PRECISION p40,PRECISION p80,PRECISION p83,PRECISION p84){
    PRECISION y = 0.0;
    y=(p40 * ((1.0 + (p80 * (pow((default_ * ((GnRH_R_a + Ago_R_a) / p83)),p84) / (1.0 + pow((default_ * ((GnRH_R_a + Ago_R_a) / p83)),p84))))) * Lut2));
    return y;
}
__device__ PRECISION function_29(PRECISION Ago_R_a,PRECISION GnRH_R_a,PRECISION Lut3,PRECISION default_,PRECISION p41,PRECISION p80,PRECISION p83,PRECISION p84){
    PRECISION y = 0.0;
    y=(p41 * ((1.0 + (p80 * (pow((default_ * ((GnRH_R_a + Ago_R_a) / p83)),p84) / (1.0 + pow((default_ * ((GnRH_R_a + Ago_R_a) / p83)),p84))))) * Lut3));
    return y;
}
__device__ PRECISION function_3(PRECISION R_GnRH_i,PRECISION default_,PRECISION p307){
    PRECISION y = 0.0;
    y=(p307 * R_GnRH_i);
    return y;
}
__device__ PRECISION function_30(PRECISION FSH_bld,PRECISION default_,PRECISION p90,PRECISION p91,PRECISION p94){
    PRECISION y = 0.0;
    y=(p94 * (pow((FSH_bld * (default_ / p90)),p91) / (default_ * (1.0 + pow((FSH_bld * (default_ / p90)),p91)))));
    return y;
}
__device__ PRECISION function_31(PRECISION P4,PRECISION R_Foll,PRECISION default_,PRECISION facP4,PRECISION p92,PRECISION p93,PRECISION p95){
    PRECISION y = 0.0;
    y=(p95 * (pow((P4 * (default_ / (facP4 * p92))),p93) * (R_Foll / (1.0 + pow((P4 * (default_ / (facP4 * p92))),p93)))));
    return y;
}
__device__ PRECISION function_32(PRECISION AF3,PRECISION FSH_R,PRECISION default_,PRECISION p31,PRECISION p55){
    PRECISION y = 0.0;
    y=(p31 * (FSH_R * (default_ * (AF3 * (1.0 - (AF3 * (default_ / p55)))))));
    return y;
}
__device__ PRECISION function_33(PRECISION AF4,PRECISION LH_R,PRECISION default_,PRECISION p33,PRECISION p44,PRECISION p52,PRECISION p55){
    PRECISION y = 0.0;
    y=(p33 * (pow((LH_R * (default_ / p52)),p44) * (AF4 * (1.0 - (AF4 * (default_ / p55))))));
    return y;
}
__device__ PRECISION function_34(PRECISION LH_R,PRECISION PrF,PRECISION R_Foll,PRECISION default_,PRECISION p35,PRECISION p45,PRECISION p52){
    PRECISION y = 0.0;
    y=(p35 * (pow((LH_R * (default_ / p52)),p45) * (R_Foll * (default_ * PrF))));
    return y;
}
__device__ PRECISION function_35(PRECISION LH_R,PRECISION PrF,PRECISION R_Foll,PRECISION default_,PRECISION p27,PRECISION p45,PRECISION p52,PRECISION p53,PRECISION p54){
    PRECISION y = 0.0;
    y=(p27 * (R_Foll * (pow((LH_R * (default_ / p52)),p45) * (pow((PrF * (default_ / p53)),p54) / (1.0 + pow((PrF * (default_ / p53)),p54))))));
    return y;
}
__device__ PRECISION function_36(PRECISION OvF,PRECISION default_,PRECISION p36){
    PRECISION y = 0.0;
    y=(p36 * OvF);
    return y;
}
__device__ PRECISION function_37(PRECISION OvF,PRECISION default_,PRECISION p26,PRECISION p56,PRECISION p57){
    PRECISION y = 0.0;
    y=(p26 * (pow((OvF * (default_ / p56)),p57) / (default_ * (1.0 + pow((OvF * (default_ / p56)),p57)))));
    return y;
}
__device__ PRECISION function_38(PRECISION Ago_R_a,PRECISION GnRH_R_a,PRECISION Lut4,PRECISION default_,PRECISION p42,PRECISION p80,PRECISION p83,PRECISION p84){
    PRECISION y = 0.0;
    y=(p42 * ((1.0 + (p80 * (pow((default_ * ((GnRH_R_a + Ago_R_a) / p83)),p84) / (1.0 + pow((default_ * ((GnRH_R_a + Ago_R_a) / p83)),p84))))) * Lut4));
    return y;
}
__device__ PRECISION function_39(PRECISION AF2,PRECISION AF3,PRECISION AF4,PRECISION LH_bld,PRECISION Lut1,PRECISION Lut4,PRECISION PrF,PRECISION default_,PRECISION facE2,PRECISION p152,PRECISION p158,PRECISION p159,PRECISION p160,PRECISION p161,PRECISION p164,PRECISION p165){
    PRECISION y = 0.0;
    y=(facE2 * ((p158 + ((p152 * (AF2 * default_)) + ((p159 * (AF3 * (pow(default_,2.0) * LH_bld))) + ((p160 * (AF4 * default_)) + ((p161 * (PrF * (pow(default_,2.0) * LH_bld))) + ((p164 * (Lut1 * default_)) + (p165 * (Lut4 * default_)))))))) / default_));
    return y;
}
__device__ PRECISION function_4(PRECISION R_GnRH_a,PRECISION default_,PRECISION p306){
    PRECISION y = 0.0;
    y=(p306 * R_GnRH_a);
    return y;
}
__device__ PRECISION function_40(PRECISION E2,PRECISION default_,PRECISION p154){
    PRECISION y = 0.0;
    y=(p154 * E2);
    return y;
}
__device__ PRECISION function_41(PRECISION Lut4,PRECISION default_,PRECISION facP4,PRECISION p166,PRECISION p167){
    PRECISION y = 0.0;
    y=(facP4 * ((p166 + (p167 * (Lut4 * default_))) / default_));
    return y;
}
__device__ PRECISION function_42(PRECISION Lut1,PRECISION Lut2,PRECISION Lut3,PRECISION Lut4,PRECISION PrF,PRECISION Sc1,PRECISION default_,PRECISION p168,PRECISION p169,PRECISION p170,PRECISION p171,PRECISION p172,PRECISION p177,PRECISION p178){
    PRECISION y = 0.0;
    y=((p168 + ((p169 * (PrF * default_)) + ((p177 * (Sc1 * default_)) + ((p178 * (Lut1 * default_)) + ((p170 * (Lut2 * default_)) + ((p171 * (Lut3 * default_)) + (p172 * (Lut4 * default_)))))))) / default_);
    return y;
}
__device__ PRECISION function_43(PRECISION P4,PRECISION default_,PRECISION p155){
    PRECISION y = 0.0;
    y=(p155 * P4);
    return y;
}
__device__ PRECISION function_44(PRECISION AF2,PRECISION Sc2,PRECISION default_,PRECISION p173,PRECISION p174,PRECISION p175){
    PRECISION y = 0.0;
    y=((p173 + ((p174 * (AF2 * default_)) + (p175 * (Sc2 * default_)))) / default_);
    return y;
}
__device__ PRECISION function_45(PRECISION InhB,PRECISION default_,PRECISION p157){
    PRECISION y = 0.0;
    y=(p157 * InhB);
    return y;
}
__device__ PRECISION function_46(PRECISION InhA_delay,PRECISION default_,PRECISION p30){
    PRECISION y = 0.0;
    y=(p30 * InhA_delay);
    return y;
}
__device__ PRECISION function_48(PRECISION GnRH_R_i,PRECISION default_,PRECISION p304){
    PRECISION y = 0.0;
    y=(p304 * GnRH_R_i);
    return y;
}
__device__ PRECISION function_49(PRECISION default_,PRECISION freq,PRECISION mass){
    PRECISION y = 0.0;
    y=(freq * (mass / default_));
    return y;
}
__device__ PRECISION function_5(PRECISION GnRH_R_i,PRECISION default_,PRECISION p305){
    PRECISION y = 0.0;
    y=(p305 * GnRH_R_i);
    return y;
}
__device__ PRECISION function_50(PRECISION FSH_bld,PRECISION default_,PRECISION p241){
    PRECISION y = 0.0;
    y=(p241 * FSH_bld);
    return y;
}
__device__ PRECISION function_51(PRECISION Ago_R_a,PRECISION GnRH_R_a,PRECISION LH_Pit,PRECISION default_,PRECISION facLH,PRECISION p12,PRECISION p16,PRECISION p5,PRECISION p8,PRECISION p9){
    PRECISION y = 0.0;
    y=(facLH * ((p16 + (p5 * (pow((default_ * ((GnRH_R_a + Ago_R_a) / p8)),p9) / (1.0 + pow((default_ * ((GnRH_R_a + Ago_R_a) / p8)),p9))))) * (LH_Pit / p12)));
    return y;
}
__device__ PRECISION function_52(PRECISION Ago_R_a,PRECISION FSH_pit,PRECISION GnRH_R_a,PRECISION default_,PRECISION facFSH,PRECISION p12,PRECISION p17,PRECISION p18,PRECISION p20,PRECISION p28){
    PRECISION y = 0.0;
    y=(facFSH * ((p17 + (p28 * (pow((default_ * ((GnRH_R_a + Ago_R_a) / p18)),p20) / (1.0 + pow((default_ * ((GnRH_R_a + Ago_R_a) / p18)),p20))))) * (FSH_pit / p12)));
    return y;
}
__device__ PRECISION function_53(PRECISION FSH_bld,PRECISION R_FSH,PRECISION default_,PRECISION facFSH,PRECISION p240){
    PRECISION y = 0.0;
    y=(p240 * (FSH_bld * (default_ * (R_FSH / facFSH))));
    return y;
}
__device__ PRECISION function_54(PRECISION InhA,PRECISION default_,PRECISION p156){
    PRECISION y = 0.0;
    y=(p156 * InhA);
    return y;
}
__device__ PRECISION function_55(PRECISION Ago_c,PRECISION default_,PRECISION p275){
    PRECISION y = 0.0;
    y=(p275 * Ago_c);
    return y;
}
__device__ PRECISION function_56(PRECISION Ago_R_a,PRECISION default_,PRECISION p319){
    PRECISION y = 0.0;
    y=(p319 * Ago_R_a);
    return y;
}
__device__ PRECISION function_57(PRECISION Ago_R_i,PRECISION default_,PRECISION p320){
    PRECISION y = 0.0;
    y=(p320 * Ago_R_i);
    return y;
}
__device__ PRECISION function_58(PRECISION Ago_R_i,PRECISION default_,PRECISION p314){
    PRECISION y = 0.0;
    y=(p314 * Ago_R_i);
    return y;
}
__device__ PRECISION function_59(PRECISION Ago_c,PRECISION R_GnRH_a,PRECISION default_,PRECISION p312){
    PRECISION y = 0.0;
    y=(p312 * (R_GnRH_a * (default_ * Ago_c)));
    return y;
}
__device__ PRECISION function_6(PRECISION GnRH,PRECISION R_GnRH_a,PRECISION default_,PRECISION p302){
    PRECISION y = 0.0;
    y=(p302 * (GnRH * (default_ * R_GnRH_a)));
    return y;
}
__device__ PRECISION function_60(PRECISION Ago_R_a,PRECISION default_,PRECISION p313){
    PRECISION y = 0.0;
    y=(p313 * Ago_R_a);
    return y;
}
__device__ PRECISION function_61(PRECISION Ago_R_i,PRECISION default_,PRECISION p315){
    PRECISION y = 0.0;
    y=(p315 * Ago_R_i);
    return y;
}
__device__ PRECISION function_62(PRECISION Ago_d,PRECISION default_,PRECISION p274){
    PRECISION y = 0.0;
    y=(p274 * Ago_d);
    return y;
}
__device__ PRECISION function_63(PRECISION Ago_d,PRECISION default_,PRECISION p273,PRECISION p274){
    PRECISION y = 0.0;
    y=(p274 * (Ago_d / p273));
    return y;
}
__device__ PRECISION function_64(PRECISION Ant_d,PRECISION default_,PRECISION p474){
    PRECISION y = 0.0;
    y=(p474 * (Ant_d / default_));
    return y;
}
__device__ PRECISION function_65(PRECISION Ant_d,PRECISION default_,PRECISION p473,PRECISION p474){
    PRECISION y = 0.0;
    y=(p474 * (Ant_d / (default_ * p473)));
    return y;
}
__device__ PRECISION function_66(PRECISION Ant_c,PRECISION default_,PRECISION p475){
    PRECISION y = 0.0;
    y=(p475 * (Ant_c / default_));
    return y;
}
__device__ PRECISION function_67(PRECISION Ant_R,PRECISION default_,PRECISION p513){
    PRECISION y = 0.0;
    y=(p513 * (Ant_R / default_));
    return y;
}
__device__ PRECISION function_68(PRECISION Ant_c,PRECISION R_GnRH_a,PRECISION default_,PRECISION p512){
    PRECISION y = 0.0;
    y=(p512 * (R_GnRH_a * Ant_c));
    return y;
}
__device__ PRECISION function_69(PRECISION Ant_R,PRECISION default_,PRECISION p514){
    PRECISION y = 0.0;
    y=(p514 * (Ant_R / default_));
    return y;
}
__device__ PRECISION function_7(PRECISION R_GnRH_i,PRECISION default_,PRECISION p308){
    PRECISION y = 0.0;
    y=(p308 * R_GnRH_i);
    return y;
}
__device__ PRECISION function_70(PRECISION Ant_c,PRECISION default_,PRECISION p476){
    PRECISION y = 0.0;
    y=(p476 * (Ant_c / default_));
    return y;
}
__device__ PRECISION function_71(PRECISION Ant_p,PRECISION default_,PRECISION p477){
    PRECISION y = 0.0;
    y=(p477 * (Ant_p / default_));
    return y;
}
__device__ PRECISION function_8(PRECISION GnRH_R_a,PRECISION default_,PRECISION p303){
    PRECISION y = 0.0;
    y=(p303 * GnRH_R_a);
    return y;
}
__device__ PRECISION function_9(PRECISION GnRH,PRECISION default_,PRECISION p300){
    PRECISION y = 0.0;
    y=(p300 * GnRH);
    return y;
}
__device__ PRECISION pow(PRECISION x,PRECISION power){
    PRECISION y = 0.0;
    y=pow(x,power);
    return y;
}

#endif
