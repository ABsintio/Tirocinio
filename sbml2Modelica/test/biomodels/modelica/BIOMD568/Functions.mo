within BIOMD568;
class Functions

    function elmt_Function_for_reaction_67_0
        input Real arg_S11;
        input Real arg_S26;
        input Real arg_cell;
        input Real arg_kb_p21c4;

        output Real result;
        algorithm
            result := ((arg_kb_p21c4 * arg_S11 * arg_S26) / arg_cell);
    end elmt_Function_for_reaction_67_0;

    function elmt_Function_for_reaction_21_0
        input Real arg_S13;
        input Real arg_cell;
        input Real arg_kp_c2cak;

        output Real result;
        algorithm
            result := ((arg_kp_c2cak * arg_S13) / arg_cell);
    end elmt_Function_for_reaction_21_0;

    function elmt_Function_for_reaction_46_0
        input Real arg_S18;
        input Real arg_cell;
        input Real arg_gsk3b;
        input Real arg_kdeg_c2c2gsk3b;

        output Real result;
        algorithm
            result := ((arg_kdeg_c2c2gsk3b * arg_gsk3b * arg_S18) / arg_cell);
    end elmt_Function_for_reaction_46_0;

    function elmt_Function_for_reaction_42_0
        input Real arg_S17;
        input Real arg_cell;
        input Real arg_k_delay;

        output Real result;
        algorithm
            result := ((arg_k_delay * arg_S17) / arg_cell);
    end elmt_Function_for_reaction_42_0;

    function elmt_Function_for_reaction_69_0
        input Real arg_S28;
        input Real arg_cell;
        input Real arg_k_delay;

        output Real result;
        algorithm
            result := ((arg_k_delay * arg_S28) / arg_cell);
    end elmt_Function_for_reaction_69_0;

    function elmt_Function_for_reaction_48_0
        input Real arg_S19;
        input Real arg_cell;
        input Real arg_kd_p21c4;

        output Real result;
        algorithm
            result := ((arg_kd_p21c4 * arg_S19) / arg_cell);
    end elmt_Function_for_reaction_48_0;

    function elmt_Function_for_reaction_63_0
        input Real arg_S14;
        input Real arg_S18;
        input Real arg_S23;
        input Real arg_cell;
        input Real arg_erk;
        input Real arg_kdeg_p21c2skp2;
        input Real arg_kdeg_p21erkskp2;
        input Real arg_kdeg_p21skp2;

        output Real result;
        algorithm
            result := ((((arg_kdeg_p21erkskp2 * arg_erk) + (arg_kdeg_p21c2skp2 * arg_S18) + arg_kdeg_p21skp2) * arg_S14 * arg_S23) / arg_cell);
    end elmt_Function_for_reaction_63_0;

    function elmt_Function_for_reaction_25_0
        input Real arg_S12;
        input Real arg_Vratio;
        input Real arg_cell;
        input Real arg_kimport;

        output Real result;
        algorithm
            result := (((arg_kimport / arg_Vratio) * arg_S12) / arg_cell);
    end elmt_Function_for_reaction_25_0;

    function elmt_Function_for_reaction_65_0
        input Real arg_S25;
        input Real arg_cell;
        input Real arg_k_delay;

        output Real result;
        algorithm
            result := ((arg_k_delay * arg_S25) / arg_cell);
    end elmt_Function_for_reaction_65_0;

    function elmt_Function_for_reaction_23_0
        input Real arg_S12;
        input Real arg_S4;
        input Real arg_cell;
        input Real arg_kb_p21c2;

        output Real result;
        algorithm
            result := ((arg_kb_p21c2 * arg_S4 * arg_S12) / arg_cell);
    end elmt_Function_for_reaction_23_0;

    function elmt_Function_for_reaction_44_0
        input Real arg_S18;
        input Real arg_cell;
        input Real arg_gsk3b;
        input Real arg_kdeg_c2;
        input Real arg_kdeg_c2gsk3b;

        output Real result;
        algorithm
            result := (((arg_kdeg_c2 + (arg_kdeg_c2gsk3b * arg_gsk3b)) * arg_S18) / arg_cell);
    end elmt_Function_for_reaction_44_0;

    function elmt_Function_for_reaction_61_0
        input Real arg_S24;
        input Real arg_cell;
        input Real arg_kd_p21c4;

        output Real result;
        algorithm
            result := ((arg_kd_p21c4 * arg_S24) / arg_cell);
    end elmt_Function_for_reaction_61_0;

    function elmt_Function_for_reaction_40_0
        input Real arg_Km_dprb;
        input Real arg_S15;
        input Real arg_S18;
        input Real arg_cell;
        input Real arg_kcatdp_rbc4;
        input Real arg_kinh_pp1;
        input Real arg_nrb;

        output Real result;
        algorithm
            result := (((((arg_kcatdp_rbc4 * Functions.pow(arg_S15, arg_nrb)) / (Functions.pow(arg_Km_dprb, arg_nrb) + Functions.pow(arg_S15, arg_nrb))) * 1.0) / (1.0 + (arg_kinh_pp1 * arg_S18))) / arg_cell);
    end elmt_Function_for_reaction_40_0;

    function elmt_Function_for_reaction_9_0
        input Real arg_S1;
        input Real arg_cell;
        input Real arg_kdeg_rbfree;

        output Real result;
        algorithm
            result := ((arg_kdeg_rbfree * arg_S1) / arg_cell);
    end elmt_Function_for_reaction_9_0;

    function elmt_Function_for_reaction_18_0
        input Real arg_S14;
        input Real arg_S18;
        input Real arg_S5;
        input Real arg_cell;
        input Real arg_k_dna;

        output Real result;
        algorithm
            result := ((arg_k_dna * arg_S18 * arg_S14 * arg_S5) / arg_cell);
    end elmt_Function_for_reaction_18_0;

    function elmt_Function_for_reaction_16_0
        input Real arg_Km_prb;
        input Real arg_S1;
        input Real arg_S24;
        input Real arg_cell;
        input Real arg_kcatp_rbc4;
        input Real arg_nrb;

        output Real result;
        algorithm
            result := (((arg_kcatp_rbc4 * arg_S24 * Functions.pow(arg_S1, arg_nrb)) / (Functions.pow(arg_Km_prb, arg_nrb) + Functions.pow(arg_S1, arg_nrb))) / arg_cell);
    end elmt_Function_for_reaction_16_0;

    function elmt_Function_for_reaction_39_0
        input Real arg_Km_prb;
        input Real arg_S16;
        input Real arg_S18;
        input Real arg_cell;
        input Real arg_kcatp_rbc2;
        input Real arg_nrb;

        output Real result;
        algorithm
            result := (((arg_kcatp_rbc2 * arg_S18 * Functions.pow(arg_S16, arg_nrb)) / (Functions.pow(arg_Km_prb, arg_nrb) + Functions.pow(arg_S16, arg_nrb))) / arg_cell);
    end elmt_Function_for_reaction_39_0;

    function elmt_Function_for_reaction_11_0
        input Real arg_S1;
        input Real arg_S11;
        input Real arg_cell;
        input Real arg_kdeg_rbp21;

        output Real result;
        algorithm
            result := ((arg_kdeg_rbp21 * arg_S11 * arg_S1) / arg_cell);
    end elmt_Function_for_reaction_11_0;

    function elmt_Function_for_reaction_32_0
        input Real arg_S11;
        input Real arg_S16;
        input Real arg_cell;
        input Real arg_kdeg_rbp21;

        output Real result;
        algorithm
            result := ((arg_kdeg_rbp21 * arg_S11 * arg_S16) / arg_cell);
    end elmt_Function_for_reaction_32_0;

    function elmt_Function_for_reaction_57_0
        input Real arg_Km_dprb;
        input Real arg_S18;
        input Real arg_S21;
        input Real arg_cell;
        input Real arg_kcatdp_rbc2;
        input Real arg_kinh_pp1;
        input Real arg_nrb;

        output Real result;
        algorithm
            result := (((((arg_kcatdp_rbc2 * Functions.pow(arg_S21, arg_nrb)) / (Functions.pow(arg_Km_dprb, arg_nrb) + Functions.pow(arg_S21, arg_nrb))) * 1.0) / (1.0 + (arg_kinh_pp1 * arg_S18))) / arg_cell);
    end elmt_Function_for_reaction_57_0;

    function elmt_Function_for_reaction_59_0
        input Real arg_S24;
        input Real arg_cell;
        input Real arg_kdeg_c4;

        output Real result;
        algorithm
            result := ((arg_kdeg_c4 * arg_S24) / arg_cell);
    end elmt_Function_for_reaction_59_0;

    function elmt_Function_for_reaction_30_0
        input Real arg_S16;
        input Real arg_cell;
        input Real arg_kdeg_rbbound;

        output Real result;
        algorithm
            result := ((arg_kdeg_rbbound * arg_S16) / arg_cell);
    end elmt_Function_for_reaction_30_0;

    function elmt_Function_for_reaction_15_0
        input Real arg_S2;
        input Real arg_cell;
        input Real arg_kd_rbe2f;

        output Real result;
        algorithm
            result := ((arg_kd_rbe2f * arg_S2) / arg_cell);
    end elmt_Function_for_reaction_15_0;

    function elmt_Function_for_reaction_36_0
        input Real arg_S14;
        input Real arg_S15;
        input Real arg_cell;
        input Real arg_kb_rbpe2f;

        output Real result;
        algorithm
            result := ((arg_kb_rbpe2f * arg_S14 * arg_S15) / arg_cell);
    end elmt_Function_for_reaction_36_0;

    function elmt_Function_for_reaction_53_0
        input Real arg_S19;
        input Real arg_Vratio;
        input Real arg_cell;
        input Real arg_kimport;

        output Real result;
        algorithm
            result := ((arg_kimport * (1.0 - (1.0 / arg_Vratio)) * arg_S19) / arg_cell);
    end elmt_Function_for_reaction_53_0;

    function elmt_Function_for_reaction_13_0
        input Real arg_S14;
        input Real arg_cell;
        input Real arg_ks_e2fe2f;
        input Real arg_ks_e2fmyc;
        input Real arg_tf;

        output Real result;
        algorithm
            result := ((((arg_ks_e2fe2f * arg_S14) + arg_ks_e2fmyc) * arg_tf) / arg_cell);
    end elmt_Function_for_reaction_13_0;

    function elmt_Function_for_reaction_34_0
        input Real arg_S16;
        input Real arg_cell;
        input Real arg_kdeg_e2fbound;

        output Real result;
        algorithm
            result := ((arg_kdeg_e2fbound * arg_S16) / arg_cell);
    end elmt_Function_for_reaction_34_0;

    function elmt_Function_for_reaction_55_0
        input Real arg_S21;
        input Real arg_cell;
        input Real arg_kdeg_rbfree;

        output Real result;
        algorithm
            result := ((arg_kdeg_rbfree * arg_S21) / arg_cell);
    end elmt_Function_for_reaction_55_0;

    function elmt_Function_for_reaction_2_0
        input Real arg_S14;
        input Real arg_S16;
        input Real arg_cell;
        input Real arg_ks_c2e2f;
        input Real arg_ks_c2myc;
        input Real arg_tf;

        output Real result;
        algorithm
            result := (((arg_ks_c2myc * arg_tf) + (arg_ks_c2e2f * (arg_S14 + arg_S16))) / arg_cell);
    end elmt_Function_for_reaction_2_0;

    function elmt_Function_for_reaction_4_0
        input Real arg_S4;
        input Real arg_cell;
        input Real arg_gsk3b;
        input Real arg_kdeg_c2;
        input Real arg_kdeg_c2gsk3b;

        output Real result;
        algorithm
            result := (((arg_kdeg_c2 + (arg_kdeg_c2gsk3b * arg_gsk3b)) * arg_S4) / arg_cell);
    end elmt_Function_for_reaction_4_0;

    function elmt_Function_for_reaction_51_0
        input Real arg_S19;
        input Real arg_Vratio;
        input Real arg_cell;
        input Real arg_kimport;

        output Real result;
        algorithm
            result := (((arg_kimport / arg_Vratio) * arg_S19) / arg_cell);
    end elmt_Function_for_reaction_51_0;

    function elmt_Function_for_reaction_6_0
        input Real arg_S3;
        input Real arg_cell;
        input Real arg_kd_p21c2;

        output Real result;
        algorithm
            result := ((arg_kd_p21c2 * arg_S3) / arg_cell);
    end elmt_Function_for_reaction_6_0;

    function elmt_Function_for_reaction_8_0
        input Real arg_S14;
        input Real arg_cell;
        input Real arg_ks_rb;
        input Real arg_ks_rbe2f;

        output Real result;
        algorithm
            result := ((arg_ks_rb + (arg_ks_rbe2f * arg_S14)) / arg_cell);
    end elmt_Function_for_reaction_8_0;

    function elmt_Function_for_reaction_29_0
        input Real arg_S15;
        input Real arg_cell;
        input Real arg_kdeg_rbfree;

        output Real result;
        algorithm
            result := ((arg_kdeg_rbfree * arg_S15) / arg_cell);
    end elmt_Function_for_reaction_29_0;

    function elmt_Function_for_reaction_27_0
        input Real arg_S11;
        input Real arg_cell;
        input Real arg_erk;
        input Real arg_gsk3b;
        input Real arg_kdeg_p21erk;
        input Real arg_kdeg_p21gsk3b;

        output Real result;
        algorithm
            result := ((((arg_kdeg_p21gsk3b * arg_gsk3b) + (arg_kdeg_p21erk * arg_erk)) * arg_S11) / arg_cell);
    end elmt_Function_for_reaction_27_0;

    function elmt_Function_for_reaction_22_0
        input Real arg_S10;
        input Real arg_S12;
        input Real arg_cell;
        input Real arg_kb_p21c4;

        output Real result;
        algorithm
            result := ((arg_kb_p21c4 * arg_S10 * arg_S12) / arg_cell);
    end elmt_Function_for_reaction_22_0;

    function elmt_Function_for_reaction_45_0
        input Real arg_S20;
        input Real arg_cell;
        input Real arg_gsk3b;
        input Real arg_kdeg_c2;
        input Real arg_kdeg_c2gsk3b;

        output Real result;
        algorithm
            result := (((arg_kdeg_c2 + (arg_kdeg_c2gsk3b * arg_gsk3b)) * arg_S20) / arg_cell);
    end elmt_Function_for_reaction_45_0;

    function elmt_Function_for_reaction_43_0
        input Real arg_S19;
        input Real arg_cell;
        input Real arg_gsk3b;
        input Real arg_kdeg_c4;
        input Real arg_kdeg_c4gsk3b;

        output Real result;
        algorithm
            result := (((arg_kdeg_c4 + (arg_kdeg_c4gsk3b * arg_gsk3b)) * arg_S19) / arg_cell);
    end elmt_Function_for_reaction_43_0;

    function elmt_Function_for_reaction_68_0
        input Real arg_S27;
        input Real arg_cell;
        input Real arg_k_delay;

        output Real result;
        algorithm
            result := ((arg_k_delay * arg_S27) / arg_cell);
    end elmt_Function_for_reaction_68_0;

    function elmt_Function_for_reaction_20_0
        input Real arg_S13;
        input Real arg_cell;
        input Real arg_gsk3b;
        input Real arg_kdeg_c2;
        input Real arg_kdeg_c2gsk3b;

        output Real result;
        algorithm
            result := (((arg_kdeg_c2 + (arg_kdeg_c2gsk3b * arg_gsk3b)) * arg_S13) / arg_cell);
    end elmt_Function_for_reaction_20_0;

    function elmt_Function_for_reaction_47_0
        input Real arg_S18;
        input Real arg_cell;
        input Real arg_kdp_c2cak;

        output Real result;
        algorithm
            result := ((arg_kdp_c2cak * arg_S18) / arg_cell);
    end elmt_Function_for_reaction_47_0;

    function elmt_Function_for_reaction_41_0
        input Real arg_Km_dprb;
        input Real arg_S16;
        input Real arg_S18;
        input Real arg_cell;
        input Real arg_kcatdp_rbc4;
        input Real arg_kinh_pp1;
        input Real arg_nrb;

        output Real result;
        algorithm
            result := (((((arg_kcatdp_rbc4 * Functions.pow(arg_S16, arg_nrb)) / (Functions.pow(arg_Km_dprb, arg_nrb) + Functions.pow(arg_S16, arg_nrb))) * 1.0) / (1.0 + (arg_kinh_pp1 * arg_S18))) / arg_cell);
    end elmt_Function_for_reaction_41_0;

    function elmt_Function_for_reaction_26_0
        input Real arg_S12;
        input Real arg_Vratio;
        input Real arg_cell;
        input Real arg_kimport;

        output Real result;
        algorithm
            result := ((arg_kimport * (1.0 - (1.0 / arg_Vratio)) * arg_S12) / arg_cell);
    end elmt_Function_for_reaction_26_0;

    function elmt_Function_for_reaction_64_0
        input Real arg_S14;
        input Real arg_S18;
        input Real arg_S24;
        input Real arg_cell;
        input Real arg_erk;
        input Real arg_kdeg_p21c2skp2;
        input Real arg_kdeg_p21erkskp2;
        input Real arg_kdeg_p21skp2;

        output Real result;
        algorithm
            result := ((((arg_kdeg_p21erkskp2 * arg_erk) + (arg_kdeg_p21c2skp2 * arg_S18) + arg_kdeg_p21skp2) * arg_S14 * arg_S24) / arg_cell);
    end elmt_Function_for_reaction_64_0;

    function elmt_Function_for_reaction_24_0
        input Real arg_S11;
        input Real arg_S13;
        input Real arg_cell;
        input Real arg_kb_p21c2;

        output Real result;
        algorithm
            result := ((arg_kb_p21c2 * arg_S11 * arg_S13) / arg_cell);
    end elmt_Function_for_reaction_24_0;

    function elmt_Function_for_reaction_66_0
        input Real arg_S26;
        input Real arg_cell;
        input Real arg_gsk3b;
        input Real arg_kdeg_c4;
        input Real arg_kdeg_c4gsk3b;

        output Real result;
        algorithm
            result := (((arg_kdeg_c4 + (arg_kdeg_c4gsk3b * arg_gsk3b)) * arg_S26) / arg_cell);
    end elmt_Function_for_reaction_66_0;

    function elmt_Function_for_reaction_60_0
        input Real arg_S23;
        input Real arg_cell;
        input Real arg_gsk3b;
        input Real arg_kdeg_c2;
        input Real arg_kdeg_c2gsk3b;

        output Real result;
        algorithm
            result := (((arg_kdeg_c2 + (arg_kdeg_c2gsk3b * arg_gsk3b)) * arg_S23) / arg_cell);
    end elmt_Function_for_reaction_60_0;

    function elmt_Function_for_reaction_62_0
        input Real arg_S23;
        input Real arg_cell;
        input Real arg_kd_p21c2;

        output Real result;
        algorithm
            result := ((arg_kd_p21c2 * arg_S23) / arg_cell);
    end elmt_Function_for_reaction_62_0;

    function elmt_Function_for_reaction_19_0
        input Real arg_S10;
        input Real arg_cell;
        input Real arg_gsk3b;
        input Real arg_kdeg_c4;
        input Real arg_kdeg_c4gsk3b;

        output Real result;
        algorithm
            result := (((arg_kdeg_c4 + (arg_kdeg_c4gsk3b * arg_gsk3b)) * arg_S10) / arg_cell);
    end elmt_Function_for_reaction_19_0;

    function elmt_Function_for_reaction_17_0
        input Real arg_Km_prb;
        input Real arg_S2;
        input Real arg_S24;
        input Real arg_cell;
        input Real arg_kcatp_rbc4;
        input Real arg_nrb;

        output Real result;
        algorithm
            result := (((arg_kcatp_rbc4 * arg_S24 * Functions.pow(arg_S2, arg_nrb)) / (Functions.pow(arg_Km_prb, arg_nrb) + Functions.pow(arg_S2, arg_nrb))) / arg_cell);
    end elmt_Function_for_reaction_17_0;

    function elmt_Function_for_reaction_38_0
        input Real arg_Km_prb;
        input Real arg_S15;
        input Real arg_S18;
        input Real arg_cell;
        input Real arg_kcatp_rbc2;
        input Real arg_nrb;

        output Real result;
        algorithm
            result := (((arg_kcatp_rbc2 * arg_S18 * Functions.pow(arg_S15, arg_nrb)) / (Functions.pow(arg_Km_prb, arg_nrb) + Functions.pow(arg_S15, arg_nrb))) / arg_cell);
    end elmt_Function_for_reaction_38_0;

    function elmt_Function_for_reaction_10_0
        input Real arg_S2;
        input Real arg_cell;
        input Real arg_kdeg_rbbound;

        output Real result;
        algorithm
            result := ((arg_kdeg_rbbound * arg_S2) / arg_cell);
    end elmt_Function_for_reaction_10_0;

    function elmt_Function_for_reaction_33_0
        input Real arg_S14;
        input Real arg_cell;
        input Real arg_kdeg_e2ffree;

        output Real result;
        algorithm
            result := ((arg_kdeg_e2ffree * arg_S14) / arg_cell);
    end elmt_Function_for_reaction_33_0;

    function elmt_Function_for_reaction_56_0
        input Real arg_S11;
        input Real arg_S21;
        input Real arg_cell;
        input Real arg_kdeg_rbp21;

        output Real result;
        algorithm
            result := ((arg_kdeg_rbp21 * arg_S11 * arg_S21) / arg_cell);
    end elmt_Function_for_reaction_56_0;

    function elmt_Function_for_reaction_58_0
        input Real arg_S22;
        input Real arg_cell;
        input Real arg_k_delay;

        output Real result;
        algorithm
            result := ((arg_k_delay * arg_S22) / arg_cell);
    end elmt_Function_for_reaction_58_0;

    function elmt_Function_for_reaction_31_0
        input Real arg_S11;
        input Real arg_S15;
        input Real arg_cell;
        input Real arg_kdeg_rbp21;

        output Real result;
        algorithm
            result := ((arg_kdeg_rbp21 * arg_S11 * arg_S15) / arg_cell);
    end elmt_Function_for_reaction_31_0;

    function elmt_Function_for_reaction_14_0
        input Real arg_S2;
        input Real arg_cell;
        input Real arg_kdeg_e2fbound;

        output Real result;
        algorithm
            result := ((arg_kdeg_e2fbound * arg_S2) / arg_cell);
    end elmt_Function_for_reaction_14_0;

    function elmt_Function_for_reaction_37_0
        input Real arg_S16;
        input Real arg_cell;
        input Real arg_kd_rbpe2f;

        output Real result;
        algorithm
            result := ((arg_kd_rbpe2f * arg_S16) / arg_cell);
    end elmt_Function_for_reaction_37_0;

    function elmt_Function_for_reaction_52_0
        input Real arg_S20;
        input Real arg_Vratio;
        input Real arg_cell;
        input Real arg_kimport;

        output Real result;
        algorithm
            result := (((arg_kimport / arg_Vratio) * arg_S20) / arg_cell);
    end elmt_Function_for_reaction_52_0;

    function elmt_Function_for_reaction_12_0
        input Real arg_S11;
        input Real arg_S2;
        input Real arg_cell;
        input Real arg_kdeg_rbp21;

        output Real result;
        algorithm
            result := ((arg_kdeg_rbp21 * arg_S11 * arg_S2) / arg_cell);
    end elmt_Function_for_reaction_12_0;

    function elmt_Function_for_reaction_35_0
        input Real arg_S1;
        input Real arg_S14;
        input Real arg_cell;
        input Real arg_kb_rbe2f;

        output Real result;
        algorithm
            result := ((arg_kb_rbe2f * arg_S1 * arg_S14) / arg_cell);
    end elmt_Function_for_reaction_35_0;

    function elmt_Function_for_reaction_54_0
        input Real arg_S20;
        input Real arg_Vratio;
        input Real arg_cell;
        input Real arg_kimport;

        output Real result;
        algorithm
            result := ((arg_kimport * (1.0 - (1.0 / arg_Vratio)) * arg_S20) / arg_cell);
    end elmt_Function_for_reaction_54_0;

    function elmt_Function_for_reaction_1_0
        input Real arg_cell;
        input Real arg_ks_c4;
        input Real arg_tf;

        output Real result;
        algorithm
            result := ((arg_ks_c4 * arg_tf) / arg_cell);
    end elmt_Function_for_reaction_1_0;

    function elmt_Function_for_reaction_50_0
        input Real arg_S20;
        input Real arg_cell;
        input Real arg_kd_p21c2;

        output Real result;
        algorithm
            result := ((arg_kd_p21c2 * arg_S20) / arg_cell);
    end elmt_Function_for_reaction_50_0;

    function elmt_Function_for_reaction_3_0
        input Real arg_S3;
        input Real arg_cell;
        input Real arg_gsk3b;
        input Real arg_kdeg_c2;
        input Real arg_kdeg_c2gsk3b;

        output Real result;
        algorithm
            result := (((arg_kdeg_c2 + (arg_kdeg_c2gsk3b * arg_gsk3b)) * arg_S3) / arg_cell);
    end elmt_Function_for_reaction_3_0;

    function elmt_Function_for_reaction_5_0
        input Real arg_S14;
        input Real arg_cell;
        input Real arg_ks_p21e2f;
        input Real arg_ks_p21p53;
        input Real arg_tfp21;

        output Real result;
        algorithm
            result := (((arg_ks_p21p53 + (arg_ks_p21e2f * arg_S14)) * arg_tfp21) / arg_cell);
    end elmt_Function_for_reaction_5_0;

    function elmt_Function_for_reaction_7_0
        input Real arg_S14;
        input Real arg_S18;
        input Real arg_S3;
        input Real arg_cell;
        input Real arg_erk;
        input Real arg_kdeg_p21c2skp2;
        input Real arg_kdeg_p21erkskp2;
        input Real arg_kdeg_p21skp2;

        output Real result;
        algorithm
            result := ((((arg_kdeg_p21erkskp2 * arg_erk) + (arg_kdeg_p21c2skp2 * arg_S18) + arg_kdeg_p21skp2) * arg_S14 * arg_S3) / arg_cell);
    end elmt_Function_for_reaction_7_0;

    function elmt_Function_for_reaction_28_0
        input Real arg_S12;
        input Real arg_cell;
        input Real arg_erk;
        input Real arg_gsk3b;
        input Real arg_kdeg_p21erk;
        input Real arg_kdeg_p21gsk3b;

        output Real result;
        algorithm
            result := ((((arg_kdeg_p21gsk3b * arg_gsk3b) + (arg_kdeg_p21erk * arg_erk)) * arg_S12) / arg_cell);
    end elmt_Function_for_reaction_28_0;

    function elmt_Function_for_reaction_49_0
        input Real arg_S11;
        input Real arg_S18;
        input Real arg_cell;
        input Real arg_kb_p21c2;

        output Real result;
        algorithm
            result := ((arg_kb_p21c2 * arg_S11 * arg_S18) / arg_cell);
    end elmt_Function_for_reaction_49_0;


    function acosh
        input  Real x;
        output Real y;
        algorithm
            y := log(x + sqrt(x^2 - 1));
    end acosh;

    function acot
        input  Real x;
        output Real y;
        algorithm
            if abs(x) < Constants.EPSILON then
                y := atan(sign(x) * Constants.INFINITY);
            else
                y := atan(1 / x);
            end if;
    end acot;

    function acoth
        input  Real x;
        output Real y;
        algorithm
            y := (1 / 2) * log((x + 1) / (x - 1));
    end acoth;

    function acsc
        input  Real x;
        output Real y;
        algorithm
            y := asin(1 / x);
    end acsc;

    function acsch
        input  Real x;
        output Real y;
        algorithm
            y := sign(x) * log((1 + sqrt(1 + x^2)) / abs(x));
    end acsch;

    function asec
        input  Real x;
        output Real y;
        algorithm
            y := acos(1 / x);
    end asec;

    function asech
        input  Real x;
        output Real y;
        algorithm
            y := log((1 + sqrt(1 - x^2)) / x);
    end asech;

    function asinh
        input  Real x;
        output Real y;
        algorithm
            y := log(x + sqrt(x^2 + 1));
    end asinh;

    function atanh
        input  Real x;
        output Real y;
        algorithm
            y := (1 / 2) * log((1 + x) / (1 - x));
    end atanh;

    function cot
        input  Real x;
        output Real y;
        algorithm
            y := 1 / tan(x);
    end cot;

    function coth
        input  Real x;
        output Real y;
        algorithm
            y := 1 / tanh(x);
    end coth;

    function csc
        input  Real x;
        output Real y;
        algorithm
            y := 1 / sin(x);
    end csc;

    function csch
        input  Real x;
        output Real y;
        algorithm
            y := 1 / sinh(x);
    end csch;

    function factorial
        input  Real n;
        output Real y;
        algorithm
            if eq(n, 0) then
                y := 1;
            else
                y := n * factorial(n - 1);
            end if;
    end factorial;

    function logarithm
        input  Real base;
        input  Real arg;
        output Real y;
        algorithm
            y := log(arg) / log(base);
    end logarithm;

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    function root
        input  Real degree;
        input  Real x;
        output Real y;
        algorithm
            y := x^(1 / degree);
    end root;

    function sec
        input  Real x;
        output Real y;
        algorithm
            y := 1 / cos(x);
    end sec;

    function sech
        input  Real x;
        output Real y;
        algorithm
            y := 1 / cosh(x);
    end sech;

    function implies
        input  Boolean x1;
        input  Boolean x2;
        output Boolean y;
        algorithm
            y := not x1 or x2;
    end implies;

    function xor
        input  Boolean x1;
        input  Boolean x2;
        output Boolean y;
        algorithm
            y := (x1 and not x2) or (not x1 and x2);
    end xor;

    function eq
        input  Real x1;
        input  Real x2;
        output Boolean y;
        algorithm
            y := abs(x1 - x2) / max(abs(x1), Constants.ETA) < Constants.EPSILON;
    end eq;

    function real2bool
        input  Real    x;
        output Boolean y;
        algorithm
            y := (not eq(x, 0));
    end real2bool;

    function bool2real
        input  Boolean x;
        output Real    y;
        algorithm
            if x then
                y := 1.0;
            else
                y := 0.0;
            end if;
    end bool2real;
end Functions;
