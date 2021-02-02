
#ifndef BIOMD568_FUNCTIONS_H
#define BIOMD568_FUNCTIONS_H

#include <iostream>

#define PRECISION double

__device__ PRECISION Function_for_reaction_10_0(PRECISION S2,PRECISION cell,PRECISION kdeg_rbbound);
__device__ PRECISION Function_for_reaction_11_0(PRECISION S1,PRECISION S11,PRECISION cell,PRECISION kdeg_rbp21);
__device__ PRECISION Function_for_reaction_12_0(PRECISION S11,PRECISION S2,PRECISION cell,PRECISION kdeg_rbp21);
__device__ PRECISION Function_for_reaction_13_0(PRECISION S14,PRECISION cell,PRECISION ks_e2fe2f,PRECISION ks_e2fmyc,PRECISION tf);
__device__ PRECISION Function_for_reaction_14_0(PRECISION S2,PRECISION cell,PRECISION kdeg_e2fbound);
__device__ PRECISION Function_for_reaction_15_0(PRECISION S2,PRECISION cell,PRECISION kd_rbe2f);
__device__ PRECISION Function_for_reaction_16_0(PRECISION Km_prb,PRECISION S1,PRECISION S24,PRECISION cell,PRECISION kcatp_rbc4,PRECISION nrb);
__device__ PRECISION Function_for_reaction_17_0(PRECISION Km_prb,PRECISION S2,PRECISION S24,PRECISION cell,PRECISION kcatp_rbc4,PRECISION nrb);
__device__ PRECISION Function_for_reaction_18_0(PRECISION S14,PRECISION S18,PRECISION S5,PRECISION cell,PRECISION k_dna);
__device__ PRECISION Function_for_reaction_19_0(PRECISION S10,PRECISION cell,PRECISION gsk3b,PRECISION kdeg_c4,PRECISION kdeg_c4gsk3b);
__device__ PRECISION Function_for_reaction_1_0(PRECISION cell,PRECISION ks_c4,PRECISION tf);
__device__ PRECISION Function_for_reaction_20_0(PRECISION S13,PRECISION cell,PRECISION gsk3b,PRECISION kdeg_c2,PRECISION kdeg_c2gsk3b);
__device__ PRECISION Function_for_reaction_21_0(PRECISION S13,PRECISION cell,PRECISION kp_c2cak);
__device__ PRECISION Function_for_reaction_22_0(PRECISION S10,PRECISION S12,PRECISION cell,PRECISION kb_p21c4);
__device__ PRECISION Function_for_reaction_23_0(PRECISION S12,PRECISION S4,PRECISION cell,PRECISION kb_p21c2);
__device__ PRECISION Function_for_reaction_24_0(PRECISION S11,PRECISION S13,PRECISION cell,PRECISION kb_p21c2);
__device__ PRECISION Function_for_reaction_25_0(PRECISION S12,PRECISION Vratio,PRECISION cell,PRECISION kimport);
__device__ PRECISION Function_for_reaction_26_0(PRECISION S12,PRECISION Vratio,PRECISION cell,PRECISION kimport);
__device__ PRECISION Function_for_reaction_27_0(PRECISION S11,PRECISION cell,PRECISION erk,PRECISION gsk3b,PRECISION kdeg_p21erk,PRECISION kdeg_p21gsk3b);
__device__ PRECISION Function_for_reaction_28_0(PRECISION S12,PRECISION cell,PRECISION erk,PRECISION gsk3b,PRECISION kdeg_p21erk,PRECISION kdeg_p21gsk3b);
__device__ PRECISION Function_for_reaction_29_0(PRECISION S15,PRECISION cell,PRECISION kdeg_rbfree);
__device__ PRECISION Function_for_reaction_2_0(PRECISION S14,PRECISION S16,PRECISION cell,PRECISION ks_c2e2f,PRECISION ks_c2myc,PRECISION tf);
__device__ PRECISION Function_for_reaction_30_0(PRECISION S16,PRECISION cell,PRECISION kdeg_rbbound);
__device__ PRECISION Function_for_reaction_31_0(PRECISION S11,PRECISION S15,PRECISION cell,PRECISION kdeg_rbp21);
__device__ PRECISION Function_for_reaction_32_0(PRECISION S11,PRECISION S16,PRECISION cell,PRECISION kdeg_rbp21);
__device__ PRECISION Function_for_reaction_33_0(PRECISION S14,PRECISION cell,PRECISION kdeg_e2ffree);
__device__ PRECISION Function_for_reaction_34_0(PRECISION S16,PRECISION cell,PRECISION kdeg_e2fbound);
__device__ PRECISION Function_for_reaction_35_0(PRECISION S1,PRECISION S14,PRECISION cell,PRECISION kb_rbe2f);
__device__ PRECISION Function_for_reaction_36_0(PRECISION S14,PRECISION S15,PRECISION cell,PRECISION kb_rbpe2f);
__device__ PRECISION Function_for_reaction_37_0(PRECISION S16,PRECISION cell,PRECISION kd_rbpe2f);
__device__ PRECISION Function_for_reaction_38_0(PRECISION Km_prb,PRECISION S15,PRECISION S18,PRECISION cell,PRECISION kcatp_rbc2,PRECISION nrb);
__device__ PRECISION Function_for_reaction_39_0(PRECISION Km_prb,PRECISION S16,PRECISION S18,PRECISION cell,PRECISION kcatp_rbc2,PRECISION nrb);
__device__ PRECISION Function_for_reaction_3_0(PRECISION S3,PRECISION cell,PRECISION gsk3b,PRECISION kdeg_c2,PRECISION kdeg_c2gsk3b);
__device__ PRECISION Function_for_reaction_40_0(PRECISION Km_dprb,PRECISION S15,PRECISION S18,PRECISION cell,PRECISION kcatdp_rbc4,PRECISION kinh_pp1,PRECISION nrb);
__device__ PRECISION Function_for_reaction_41_0(PRECISION Km_dprb,PRECISION S16,PRECISION S18,PRECISION cell,PRECISION kcatdp_rbc4,PRECISION kinh_pp1,PRECISION nrb);
__device__ PRECISION Function_for_reaction_42_0(PRECISION S17,PRECISION cell,PRECISION k_delay);
__device__ PRECISION Function_for_reaction_43_0(PRECISION S19,PRECISION cell,PRECISION gsk3b,PRECISION kdeg_c4,PRECISION kdeg_c4gsk3b);
__device__ PRECISION Function_for_reaction_44_0(PRECISION S18,PRECISION cell,PRECISION gsk3b,PRECISION kdeg_c2,PRECISION kdeg_c2gsk3b);
__device__ PRECISION Function_for_reaction_45_0(PRECISION S20,PRECISION cell,PRECISION gsk3b,PRECISION kdeg_c2,PRECISION kdeg_c2gsk3b);
__device__ PRECISION Function_for_reaction_46_0(PRECISION S18,PRECISION cell,PRECISION gsk3b,PRECISION kdeg_c2c2gsk3b);
__device__ PRECISION Function_for_reaction_47_0(PRECISION S18,PRECISION cell,PRECISION kdp_c2cak);
__device__ PRECISION Function_for_reaction_48_0(PRECISION S19,PRECISION cell,PRECISION kd_p21c4);
__device__ PRECISION Function_for_reaction_49_0(PRECISION S11,PRECISION S18,PRECISION cell,PRECISION kb_p21c2);
__device__ PRECISION Function_for_reaction_4_0(PRECISION S4,PRECISION cell,PRECISION gsk3b,PRECISION kdeg_c2,PRECISION kdeg_c2gsk3b);
__device__ PRECISION Function_for_reaction_50_0(PRECISION S20,PRECISION cell,PRECISION kd_p21c2);
__device__ PRECISION Function_for_reaction_51_0(PRECISION S19,PRECISION Vratio,PRECISION cell,PRECISION kimport);
__device__ PRECISION Function_for_reaction_52_0(PRECISION S20,PRECISION Vratio,PRECISION cell,PRECISION kimport);
__device__ PRECISION Function_for_reaction_53_0(PRECISION S19,PRECISION Vratio,PRECISION cell,PRECISION kimport);
__device__ PRECISION Function_for_reaction_54_0(PRECISION S20,PRECISION Vratio,PRECISION cell,PRECISION kimport);
__device__ PRECISION Function_for_reaction_55_0(PRECISION S21,PRECISION cell,PRECISION kdeg_rbfree);
__device__ PRECISION Function_for_reaction_56_0(PRECISION S11,PRECISION S21,PRECISION cell,PRECISION kdeg_rbp21);
__device__ PRECISION Function_for_reaction_57_0(PRECISION Km_dprb,PRECISION S18,PRECISION S21,PRECISION cell,PRECISION kcatdp_rbc2,PRECISION kinh_pp1,PRECISION nrb);
__device__ PRECISION Function_for_reaction_58_0(PRECISION S22,PRECISION cell,PRECISION k_delay);
__device__ PRECISION Function_for_reaction_59_0(PRECISION S24,PRECISION cell,PRECISION kdeg_c4);
__device__ PRECISION Function_for_reaction_5_0(PRECISION S14,PRECISION cell,PRECISION ks_p21e2f,PRECISION ks_p21p53,PRECISION tfp21);
__device__ PRECISION Function_for_reaction_60_0(PRECISION S23,PRECISION cell,PRECISION gsk3b,PRECISION kdeg_c2,PRECISION kdeg_c2gsk3b);
__device__ PRECISION Function_for_reaction_61_0(PRECISION S24,PRECISION cell,PRECISION kd_p21c4);
__device__ PRECISION Function_for_reaction_62_0(PRECISION S23,PRECISION cell,PRECISION kd_p21c2);
__device__ PRECISION Function_for_reaction_63_0(PRECISION S14,PRECISION S18,PRECISION S23,PRECISION cell,PRECISION erk,PRECISION kdeg_p21c2skp2,PRECISION kdeg_p21erkskp2,PRECISION kdeg_p21skp2);
__device__ PRECISION Function_for_reaction_64_0(PRECISION S14,PRECISION S18,PRECISION S24,PRECISION cell,PRECISION erk,PRECISION kdeg_p21c2skp2,PRECISION kdeg_p21erkskp2,PRECISION kdeg_p21skp2);
__device__ PRECISION Function_for_reaction_65_0(PRECISION S25,PRECISION cell,PRECISION k_delay);
__device__ PRECISION Function_for_reaction_66_0(PRECISION S26,PRECISION cell,PRECISION gsk3b,PRECISION kdeg_c4,PRECISION kdeg_c4gsk3b);
__device__ PRECISION Function_for_reaction_67_0(PRECISION S11,PRECISION S26,PRECISION cell,PRECISION kb_p21c4);
__device__ PRECISION Function_for_reaction_68_0(PRECISION S27,PRECISION cell,PRECISION k_delay);
__device__ PRECISION Function_for_reaction_69_0(PRECISION S28,PRECISION cell,PRECISION k_delay);
__device__ PRECISION Function_for_reaction_6_0(PRECISION S3,PRECISION cell,PRECISION kd_p21c2);
__device__ PRECISION Function_for_reaction_7_0(PRECISION S14,PRECISION S18,PRECISION S3,PRECISION cell,PRECISION erk,PRECISION kdeg_p21c2skp2,PRECISION kdeg_p21erkskp2,PRECISION kdeg_p21skp2);
__device__ PRECISION Function_for_reaction_8_0(PRECISION S14,PRECISION cell,PRECISION ks_rb,PRECISION ks_rbe2f);
__device__ PRECISION Function_for_reaction_9_0(PRECISION S1,PRECISION cell,PRECISION kdeg_rbfree);
__device__ bool lt(PRECISION x,PRECISION y);
__device__ PRECISION piecewise(PRECISION x,bool condition,PRECISION y);
__device__ PRECISION pow(PRECISION x,PRECISION power);

__device__ PRECISION Function_for_reaction_10_0(PRECISION S2,PRECISION cell,PRECISION kdeg_rbbound){
    PRECISION y = 0.0;
    y=(kdeg_rbbound * (S2 / cell));
    return y;
}
__device__ PRECISION Function_for_reaction_11_0(PRECISION S1,PRECISION S11,PRECISION cell,PRECISION kdeg_rbp21){
    PRECISION y = 0.0;
    y=(kdeg_rbp21 * (S11 * (S1 / cell)));
    return y;
}
__device__ PRECISION Function_for_reaction_12_0(PRECISION S11,PRECISION S2,PRECISION cell,PRECISION kdeg_rbp21){
    PRECISION y = 0.0;
    y=(kdeg_rbp21 * (S11 * (S2 / cell)));
    return y;
}
__device__ PRECISION Function_for_reaction_13_0(PRECISION S14,PRECISION cell,PRECISION ks_e2fe2f,PRECISION ks_e2fmyc,PRECISION tf){
    PRECISION y = 0.0;
    y=(((ks_e2fe2f * S14) + ks_e2fmyc) * (tf / cell));
    return y;
}
__device__ PRECISION Function_for_reaction_14_0(PRECISION S2,PRECISION cell,PRECISION kdeg_e2fbound){
    PRECISION y = 0.0;
    y=(kdeg_e2fbound * (S2 / cell));
    return y;
}
__device__ PRECISION Function_for_reaction_15_0(PRECISION S2,PRECISION cell,PRECISION kd_rbe2f){
    PRECISION y = 0.0;
    y=(kd_rbe2f * (S2 / cell));
    return y;
}
__device__ PRECISION Function_for_reaction_16_0(PRECISION Km_prb,PRECISION S1,PRECISION S24,PRECISION cell,PRECISION kcatp_rbc4,PRECISION nrb){
    PRECISION y = 0.0;
    y=(kcatp_rbc4 * (S24 * (pow(S1,nrb) / (cell * (pow(Km_prb,nrb) + pow(S1,nrb))))));
    return y;
}
__device__ PRECISION Function_for_reaction_17_0(PRECISION Km_prb,PRECISION S2,PRECISION S24,PRECISION cell,PRECISION kcatp_rbc4,PRECISION nrb){
    PRECISION y = 0.0;
    y=(kcatp_rbc4 * (S24 * (pow(S2,nrb) / (cell * (pow(Km_prb,nrb) + pow(S2,nrb))))));
    return y;
}
__device__ PRECISION Function_for_reaction_18_0(PRECISION S14,PRECISION S18,PRECISION S5,PRECISION cell,PRECISION k_dna){
    PRECISION y = 0.0;
    y=(k_dna * (S18 * (S14 * (S5 / cell))));
    return y;
}
__device__ PRECISION Function_for_reaction_19_0(PRECISION S10,PRECISION cell,PRECISION gsk3b,PRECISION kdeg_c4,PRECISION kdeg_c4gsk3b){
    PRECISION y = 0.0;
    y=((kdeg_c4 + (kdeg_c4gsk3b * gsk3b)) * (S10 / cell));
    return y;
}
__device__ PRECISION Function_for_reaction_1_0(PRECISION cell,PRECISION ks_c4,PRECISION tf){
    PRECISION y = 0.0;
    y=(ks_c4 * (tf / cell));
    return y;
}
__device__ PRECISION Function_for_reaction_20_0(PRECISION S13,PRECISION cell,PRECISION gsk3b,PRECISION kdeg_c2,PRECISION kdeg_c2gsk3b){
    PRECISION y = 0.0;
    y=((kdeg_c2 + (kdeg_c2gsk3b * gsk3b)) * (S13 / cell));
    return y;
}
__device__ PRECISION Function_for_reaction_21_0(PRECISION S13,PRECISION cell,PRECISION kp_c2cak){
    PRECISION y = 0.0;
    y=(kp_c2cak * (S13 / cell));
    return y;
}
__device__ PRECISION Function_for_reaction_22_0(PRECISION S10,PRECISION S12,PRECISION cell,PRECISION kb_p21c4){
    PRECISION y = 0.0;
    y=(kb_p21c4 * (S10 * (S12 / cell)));
    return y;
}
__device__ PRECISION Function_for_reaction_23_0(PRECISION S12,PRECISION S4,PRECISION cell,PRECISION kb_p21c2){
    PRECISION y = 0.0;
    y=(kb_p21c2 * (S4 * (S12 / cell)));
    return y;
}
__device__ PRECISION Function_for_reaction_24_0(PRECISION S11,PRECISION S13,PRECISION cell,PRECISION kb_p21c2){
    PRECISION y = 0.0;
    y=(kb_p21c2 * (S11 * (S13 / cell)));
    return y;
}
__device__ PRECISION Function_for_reaction_25_0(PRECISION S12,PRECISION Vratio,PRECISION cell,PRECISION kimport){
    PRECISION y = 0.0;
    y=(kimport * (S12 / (cell * Vratio)));
    return y;
}
__device__ PRECISION Function_for_reaction_26_0(PRECISION S12,PRECISION Vratio,PRECISION cell,PRECISION kimport){
    PRECISION y = 0.0;
    y=(kimport * ((1.0 + (-1.0 / Vratio)) * (S12 / cell)));
    return y;
}
__device__ PRECISION Function_for_reaction_27_0(PRECISION S11,PRECISION cell,PRECISION erk,PRECISION gsk3b,PRECISION kdeg_p21erk,PRECISION kdeg_p21gsk3b){
    PRECISION y = 0.0;
    y=(((kdeg_p21gsk3b * gsk3b) + (kdeg_p21erk * erk)) * (S11 / cell));
    return y;
}
__device__ PRECISION Function_for_reaction_28_0(PRECISION S12,PRECISION cell,PRECISION erk,PRECISION gsk3b,PRECISION kdeg_p21erk,PRECISION kdeg_p21gsk3b){
    PRECISION y = 0.0;
    y=(((kdeg_p21gsk3b * gsk3b) + (kdeg_p21erk * erk)) * (S12 / cell));
    return y;
}
__device__ PRECISION Function_for_reaction_29_0(PRECISION S15,PRECISION cell,PRECISION kdeg_rbfree){
    PRECISION y = 0.0;
    y=(kdeg_rbfree * (S15 / cell));
    return y;
}
__device__ PRECISION Function_for_reaction_2_0(PRECISION S14,PRECISION S16,PRECISION cell,PRECISION ks_c2e2f,PRECISION ks_c2myc,PRECISION tf){
    PRECISION y = 0.0;
    y=(((ks_c2myc * tf) + (ks_c2e2f * (S14 + S16))) / cell);
    return y;
}
__device__ PRECISION Function_for_reaction_30_0(PRECISION S16,PRECISION cell,PRECISION kdeg_rbbound){
    PRECISION y = 0.0;
    y=(kdeg_rbbound * (S16 / cell));
    return y;
}
__device__ PRECISION Function_for_reaction_31_0(PRECISION S11,PRECISION S15,PRECISION cell,PRECISION kdeg_rbp21){
    PRECISION y = 0.0;
    y=(kdeg_rbp21 * (S11 * (S15 / cell)));
    return y;
}
__device__ PRECISION Function_for_reaction_32_0(PRECISION S11,PRECISION S16,PRECISION cell,PRECISION kdeg_rbp21){
    PRECISION y = 0.0;
    y=(kdeg_rbp21 * (S11 * (S16 / cell)));
    return y;
}
__device__ PRECISION Function_for_reaction_33_0(PRECISION S14,PRECISION cell,PRECISION kdeg_e2ffree){
    PRECISION y = 0.0;
    y=(kdeg_e2ffree * (S14 / cell));
    return y;
}
__device__ PRECISION Function_for_reaction_34_0(PRECISION S16,PRECISION cell,PRECISION kdeg_e2fbound){
    PRECISION y = 0.0;
    y=(kdeg_e2fbound * (S16 / cell));
    return y;
}
__device__ PRECISION Function_for_reaction_35_0(PRECISION S1,PRECISION S14,PRECISION cell,PRECISION kb_rbe2f){
    PRECISION y = 0.0;
    y=(kb_rbe2f * (S1 * (S14 / cell)));
    return y;
}
__device__ PRECISION Function_for_reaction_36_0(PRECISION S14,PRECISION S15,PRECISION cell,PRECISION kb_rbpe2f){
    PRECISION y = 0.0;
    y=(kb_rbpe2f * (S14 * (S15 / cell)));
    return y;
}
__device__ PRECISION Function_for_reaction_37_0(PRECISION S16,PRECISION cell,PRECISION kd_rbpe2f){
    PRECISION y = 0.0;
    y=(kd_rbpe2f * (S16 / cell));
    return y;
}
__device__ PRECISION Function_for_reaction_38_0(PRECISION Km_prb,PRECISION S15,PRECISION S18,PRECISION cell,PRECISION kcatp_rbc2,PRECISION nrb){
    PRECISION y = 0.0;
    y=(kcatp_rbc2 * (S18 * (pow(S15,nrb) / (cell * (pow(Km_prb,nrb) + pow(S15,nrb))))));
    return y;
}
__device__ PRECISION Function_for_reaction_39_0(PRECISION Km_prb,PRECISION S16,PRECISION S18,PRECISION cell,PRECISION kcatp_rbc2,PRECISION nrb){
    PRECISION y = 0.0;
    y=(kcatp_rbc2 * (S18 * (pow(S16,nrb) / (cell * (pow(Km_prb,nrb) + pow(S16,nrb))))));
    return y;
}
__device__ PRECISION Function_for_reaction_3_0(PRECISION S3,PRECISION cell,PRECISION gsk3b,PRECISION kdeg_c2,PRECISION kdeg_c2gsk3b){
    PRECISION y = 0.0;
    y=((kdeg_c2 + (kdeg_c2gsk3b * gsk3b)) * (S3 / cell));
    return y;
}
__device__ PRECISION Function_for_reaction_40_0(PRECISION Km_dprb,PRECISION S15,PRECISION S18,PRECISION cell,PRECISION kcatdp_rbc4,PRECISION kinh_pp1,PRECISION nrb){
    PRECISION y = 0.0;
    y=(kcatdp_rbc4 * (pow(S15,nrb) / ((cell * (pow(Km_dprb,nrb) + pow(S15,nrb))) * (1.0 + (kinh_pp1 * S18)))));
    return y;
}
__device__ PRECISION Function_for_reaction_41_0(PRECISION Km_dprb,PRECISION S16,PRECISION S18,PRECISION cell,PRECISION kcatdp_rbc4,PRECISION kinh_pp1,PRECISION nrb){
    PRECISION y = 0.0;
    y=(kcatdp_rbc4 * (pow(S16,nrb) / ((cell * (pow(Km_dprb,nrb) + pow(S16,nrb))) * (1.0 + (kinh_pp1 * S18)))));
    return y;
}
__device__ PRECISION Function_for_reaction_42_0(PRECISION S17,PRECISION cell,PRECISION k_delay){
    PRECISION y = 0.0;
    y=(k_delay * (S17 / cell));
    return y;
}
__device__ PRECISION Function_for_reaction_43_0(PRECISION S19,PRECISION cell,PRECISION gsk3b,PRECISION kdeg_c4,PRECISION kdeg_c4gsk3b){
    PRECISION y = 0.0;
    y=((kdeg_c4 + (kdeg_c4gsk3b * gsk3b)) * (S19 / cell));
    return y;
}
__device__ PRECISION Function_for_reaction_44_0(PRECISION S18,PRECISION cell,PRECISION gsk3b,PRECISION kdeg_c2,PRECISION kdeg_c2gsk3b){
    PRECISION y = 0.0;
    y=((kdeg_c2 + (kdeg_c2gsk3b * gsk3b)) * (S18 / cell));
    return y;
}
__device__ PRECISION Function_for_reaction_45_0(PRECISION S20,PRECISION cell,PRECISION gsk3b,PRECISION kdeg_c2,PRECISION kdeg_c2gsk3b){
    PRECISION y = 0.0;
    y=((kdeg_c2 + (kdeg_c2gsk3b * gsk3b)) * (S20 / cell));
    return y;
}
__device__ PRECISION Function_for_reaction_46_0(PRECISION S18,PRECISION cell,PRECISION gsk3b,PRECISION kdeg_c2c2gsk3b){
    PRECISION y = 0.0;
    y=(kdeg_c2c2gsk3b * (gsk3b * (S18 / cell)));
    return y;
}
__device__ PRECISION Function_for_reaction_47_0(PRECISION S18,PRECISION cell,PRECISION kdp_c2cak){
    PRECISION y = 0.0;
    y=(kdp_c2cak * (S18 / cell));
    return y;
}
__device__ PRECISION Function_for_reaction_48_0(PRECISION S19,PRECISION cell,PRECISION kd_p21c4){
    PRECISION y = 0.0;
    y=(kd_p21c4 * (S19 / cell));
    return y;
}
__device__ PRECISION Function_for_reaction_49_0(PRECISION S11,PRECISION S18,PRECISION cell,PRECISION kb_p21c2){
    PRECISION y = 0.0;
    y=(kb_p21c2 * (S11 * (S18 / cell)));
    return y;
}
__device__ PRECISION Function_for_reaction_4_0(PRECISION S4,PRECISION cell,PRECISION gsk3b,PRECISION kdeg_c2,PRECISION kdeg_c2gsk3b){
    PRECISION y = 0.0;
    y=((kdeg_c2 + (kdeg_c2gsk3b * gsk3b)) * (S4 / cell));
    return y;
}
__device__ PRECISION Function_for_reaction_50_0(PRECISION S20,PRECISION cell,PRECISION kd_p21c2){
    PRECISION y = 0.0;
    y=(kd_p21c2 * (S20 / cell));
    return y;
}
__device__ PRECISION Function_for_reaction_51_0(PRECISION S19,PRECISION Vratio,PRECISION cell,PRECISION kimport){
    PRECISION y = 0.0;
    y=(kimport * (S19 / (cell * Vratio)));
    return y;
}
__device__ PRECISION Function_for_reaction_52_0(PRECISION S20,PRECISION Vratio,PRECISION cell,PRECISION kimport){
    PRECISION y = 0.0;
    y=(kimport * (S20 / (cell * Vratio)));
    return y;
}
__device__ PRECISION Function_for_reaction_53_0(PRECISION S19,PRECISION Vratio,PRECISION cell,PRECISION kimport){
    PRECISION y = 0.0;
    y=(kimport * ((1.0 + (-1.0 / Vratio)) * (S19 / cell)));
    return y;
}
__device__ PRECISION Function_for_reaction_54_0(PRECISION S20,PRECISION Vratio,PRECISION cell,PRECISION kimport){
    PRECISION y = 0.0;
    y=(kimport * ((1.0 + (-1.0 / Vratio)) * (S20 / cell)));
    return y;
}
__device__ PRECISION Function_for_reaction_55_0(PRECISION S21,PRECISION cell,PRECISION kdeg_rbfree){
    PRECISION y = 0.0;
    y=(kdeg_rbfree * (S21 / cell));
    return y;
}
__device__ PRECISION Function_for_reaction_56_0(PRECISION S11,PRECISION S21,PRECISION cell,PRECISION kdeg_rbp21){
    PRECISION y = 0.0;
    y=(kdeg_rbp21 * (S11 * (S21 / cell)));
    return y;
}
__device__ PRECISION Function_for_reaction_57_0(PRECISION Km_dprb,PRECISION S18,PRECISION S21,PRECISION cell,PRECISION kcatdp_rbc2,PRECISION kinh_pp1,PRECISION nrb){
    PRECISION y = 0.0;
    y=(kcatdp_rbc2 * (pow(S21,nrb) / ((cell * (pow(Km_dprb,nrb) + pow(S21,nrb))) * (1.0 + (kinh_pp1 * S18)))));
    return y;
}
__device__ PRECISION Function_for_reaction_58_0(PRECISION S22,PRECISION cell,PRECISION k_delay){
    PRECISION y = 0.0;
    y=(k_delay * (S22 / cell));
    return y;
}
__device__ PRECISION Function_for_reaction_59_0(PRECISION S24,PRECISION cell,PRECISION kdeg_c4){
    PRECISION y = 0.0;
    y=(kdeg_c4 * (S24 / cell));
    return y;
}
__device__ PRECISION Function_for_reaction_5_0(PRECISION S14,PRECISION cell,PRECISION ks_p21e2f,PRECISION ks_p21p53,PRECISION tfp21){
    PRECISION y = 0.0;
    y=((ks_p21p53 + (ks_p21e2f * S14)) * (tfp21 / cell));
    return y;
}
__device__ PRECISION Function_for_reaction_60_0(PRECISION S23,PRECISION cell,PRECISION gsk3b,PRECISION kdeg_c2,PRECISION kdeg_c2gsk3b){
    PRECISION y = 0.0;
    y=((kdeg_c2 + (kdeg_c2gsk3b * gsk3b)) * (S23 / cell));
    return y;
}
__device__ PRECISION Function_for_reaction_61_0(PRECISION S24,PRECISION cell,PRECISION kd_p21c4){
    PRECISION y = 0.0;
    y=(kd_p21c4 * (S24 / cell));
    return y;
}
__device__ PRECISION Function_for_reaction_62_0(PRECISION S23,PRECISION cell,PRECISION kd_p21c2){
    PRECISION y = 0.0;
    y=(kd_p21c2 * (S23 / cell));
    return y;
}
__device__ PRECISION Function_for_reaction_63_0(PRECISION S14,PRECISION S18,PRECISION S23,PRECISION cell,PRECISION erk,PRECISION kdeg_p21c2skp2,PRECISION kdeg_p21erkskp2,PRECISION kdeg_p21skp2){
    PRECISION y = 0.0;
    y=(((kdeg_p21erkskp2 * erk) + ((kdeg_p21c2skp2 * S18) + kdeg_p21skp2)) * (S14 * (S23 / cell)));
    return y;
}
__device__ PRECISION Function_for_reaction_64_0(PRECISION S14,PRECISION S18,PRECISION S24,PRECISION cell,PRECISION erk,PRECISION kdeg_p21c2skp2,PRECISION kdeg_p21erkskp2,PRECISION kdeg_p21skp2){
    PRECISION y = 0.0;
    y=(((kdeg_p21erkskp2 * erk) + ((kdeg_p21c2skp2 * S18) + kdeg_p21skp2)) * (S14 * (S24 / cell)));
    return y;
}
__device__ PRECISION Function_for_reaction_65_0(PRECISION S25,PRECISION cell,PRECISION k_delay){
    PRECISION y = 0.0;
    y=(k_delay * (S25 / cell));
    return y;
}
__device__ PRECISION Function_for_reaction_66_0(PRECISION S26,PRECISION cell,PRECISION gsk3b,PRECISION kdeg_c4,PRECISION kdeg_c4gsk3b){
    PRECISION y = 0.0;
    y=((kdeg_c4 + (kdeg_c4gsk3b * gsk3b)) * (S26 / cell));
    return y;
}
__device__ PRECISION Function_for_reaction_67_0(PRECISION S11,PRECISION S26,PRECISION cell,PRECISION kb_p21c4){
    PRECISION y = 0.0;
    y=(kb_p21c4 * (S11 * (S26 / cell)));
    return y;
}
__device__ PRECISION Function_for_reaction_68_0(PRECISION S27,PRECISION cell,PRECISION k_delay){
    PRECISION y = 0.0;
    y=(k_delay * (S27 / cell));
    return y;
}
__device__ PRECISION Function_for_reaction_69_0(PRECISION S28,PRECISION cell,PRECISION k_delay){
    PRECISION y = 0.0;
    y=(k_delay * (S28 / cell));
    return y;
}
__device__ PRECISION Function_for_reaction_6_0(PRECISION S3,PRECISION cell,PRECISION kd_p21c2){
    PRECISION y = 0.0;
    y=(kd_p21c2 * (S3 / cell));
    return y;
}
__device__ PRECISION Function_for_reaction_7_0(PRECISION S14,PRECISION S18,PRECISION S3,PRECISION cell,PRECISION erk,PRECISION kdeg_p21c2skp2,PRECISION kdeg_p21erkskp2,PRECISION kdeg_p21skp2){
    PRECISION y = 0.0;
    y=(((kdeg_p21erkskp2 * erk) + ((kdeg_p21c2skp2 * S18) + kdeg_p21skp2)) * (S14 * (S3 / cell)));
    return y;
}
__device__ PRECISION Function_for_reaction_8_0(PRECISION S14,PRECISION cell,PRECISION ks_rb,PRECISION ks_rbe2f){
    PRECISION y = 0.0;
    y=((ks_rb + (ks_rbe2f * S14)) / cell);
    return y;
}
__device__ PRECISION Function_for_reaction_9_0(PRECISION S1,PRECISION cell,PRECISION kdeg_rbfree){
    PRECISION y = 0.0;
    y=(kdeg_rbfree * (S1 / cell));
    return y;
}
__device__ bool lt(PRECISION x,PRECISION y){
    bool z = 0.0;
    z=x < y;
    return z;
}
__device__ PRECISION piecewise(PRECISION x,bool condition,PRECISION y){
    PRECISION z = 0.0;
    z=(condition ? x : y);
    return z;
}
__device__ PRECISION pow(PRECISION x,PRECISION power){
    PRECISION y = 0.0;
    y=pow(x,power);
    return y;
}

#endif
