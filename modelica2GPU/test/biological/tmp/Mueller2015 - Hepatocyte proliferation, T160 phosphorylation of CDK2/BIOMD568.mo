
model BIOMD568 "Mueller2015 - Hepatocyte proliferation, T160 phosphorylation of CDK2"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;
    
    function piecewise
        input Real x;
        input Boolean condition;
        input Real y;
        output Real z;
        algorithm
            z := if condition then x else y;
    end piecewise;


    function Function_for_reaction_1_0
        	input Real cell;
	input Real ks_c4;
	input Real tf;
        output Real y;
    algorithm
        y :=  ks_c4 * tf / cell;
    end Function_for_reaction_1_0;


    function Function_for_reaction_2_0
        	input Real S14;
	input Real S16;
	input Real cell;
	input Real ks_c2e2f;
	input Real ks_c2myc;
	input Real tf;
        output Real y;
    algorithm
        y :=  (ks_c2myc * tf + ks_c2e2f * (S14 + S16)) / cell;
    end Function_for_reaction_2_0;


    function Function_for_reaction_58_0
        	input Real S22;
	input Real cell;
	input Real k_delay;
        output Real y;
    algorithm
        y :=  k_delay * S22 / cell;
    end Function_for_reaction_58_0;


    function Function_for_reaction_59_0
        	input Real S24;
	input Real cell;
	input Real kdeg_c4;
        output Real y;
    algorithm
        y :=  kdeg_c4 * S24 / cell;
    end Function_for_reaction_59_0;


    function Function_for_reaction_3_0
        	input Real S3;
	input Real cell;
	input Real gsk3b;
	input Real kdeg_c2;
	input Real kdeg_c2gsk3b;
        output Real y;
    algorithm
        y :=  (kdeg_c2 + kdeg_c2gsk3b * gsk3b) * S3 / cell;
    end Function_for_reaction_3_0;


    function Function_for_reaction_4_0
        	input Real S4;
	input Real cell;
	input Real gsk3b;
	input Real kdeg_c2;
	input Real kdeg_c2gsk3b;
        output Real y;
    algorithm
        y :=  (kdeg_c2 + kdeg_c2gsk3b * gsk3b) * S4 / cell;
    end Function_for_reaction_4_0;


    function Function_for_reaction_5_0
        	input Real S14;
	input Real cell;
	input Real ks_p21e2f;
	input Real ks_p21p53;
	input Real tfp21;
        output Real y;
    algorithm
        y :=  (ks_p21p53 + ks_p21e2f * S14) * tfp21 / cell;
    end Function_for_reaction_5_0;


    function Function_for_reaction_6_0
        	input Real S3;
	input Real cell;
	input Real kd_p21c2;
        output Real y;
    algorithm
        y :=  kd_p21c2 * S3 / cell;
    end Function_for_reaction_6_0;


    function Function_for_reaction_7_0
        	input Real S14;
	input Real S18;
	input Real S3;
	input Real cell;
	input Real erk;
	input Real kdeg_p21c2skp2;
	input Real kdeg_p21erkskp2;
	input Real kdeg_p21skp2;
        output Real y;
    algorithm
        y :=  (kdeg_p21erkskp2 * erk + kdeg_p21c2skp2 * S18 + kdeg_p21skp2) * S14 * S3 / cell;
    end Function_for_reaction_7_0;


    function Function_for_reaction_8_0
        	input Real S14;
	input Real cell;
	input Real ks_rb;
	input Real ks_rbe2f;
        output Real y;
    algorithm
        y :=  (ks_rb + ks_rbe2f * S14) / cell;
    end Function_for_reaction_8_0;


    function Function_for_reaction_9_0
        	input Real S1;
	input Real cell;
	input Real kdeg_rbfree;
        output Real y;
    algorithm
        y :=  kdeg_rbfree * S1 / cell;
    end Function_for_reaction_9_0;


    function Function_for_reaction_10_0
        	input Real S2;
	input Real cell;
	input Real kdeg_rbbound;
        output Real y;
    algorithm
        y :=  kdeg_rbbound * S2 / cell;
    end Function_for_reaction_10_0;


    function Function_for_reaction_11_0
        	input Real S1;
	input Real S11;
	input Real cell;
	input Real kdeg_rbp21;
        output Real y;
    algorithm
        y :=  kdeg_rbp21 * S11 * S1 / cell;
    end Function_for_reaction_11_0;


    function Function_for_reaction_12_0
        	input Real S11;
	input Real S2;
	input Real cell;
	input Real kdeg_rbp21;
        output Real y;
    algorithm
        y :=  kdeg_rbp21 * S11 * S2 / cell;
    end Function_for_reaction_12_0;


    function Function_for_reaction_13_0
        	input Real S14;
	input Real cell;
	input Real ks_e2fe2f;
	input Real ks_e2fmyc;
	input Real tf;
        output Real y;
    algorithm
        y :=  (ks_e2fe2f * S14 + ks_e2fmyc) * tf / cell;
    end Function_for_reaction_13_0;


    function Function_for_reaction_14_0
        	input Real S2;
	input Real cell;
	input Real kdeg_e2fbound;
        output Real y;
    algorithm
        y :=  kdeg_e2fbound * S2 / cell;
    end Function_for_reaction_14_0;


    function Function_for_reaction_15_0
        	input Real S2;
	input Real cell;
	input Real kd_rbe2f;
        output Real y;
    algorithm
        y :=  kd_rbe2f * S2 / cell;
    end Function_for_reaction_15_0;


    function Function_for_reaction_16_0
        	input Real Km_prb;
	input Real S1;
	input Real S24;
	input Real cell;
	input Real kcatp_rbc4;
	input Real nrb;
        output Real y;
    algorithm
        y :=  kcatp_rbc4 * S24 * S1^nrb / (Km_prb^nrb + S1^nrb) / cell;
    end Function_for_reaction_16_0;


    function Function_for_reaction_17_0
        	input Real Km_prb;
	input Real S2;
	input Real S24;
	input Real cell;
	input Real kcatp_rbc4;
	input Real nrb;
        output Real y;
    algorithm
        y :=  kcatp_rbc4 * S24 * S2^nrb / (Km_prb^nrb + S2^nrb) / cell;
    end Function_for_reaction_17_0;


    function Function_for_reaction_18_0
        	input Real S14;
	input Real S18;
	input Real S5;
	input Real cell;
	input Real k_dna;
        output Real y;
    algorithm
        y :=  k_dna * S18 * S14 * S5 / cell;
    end Function_for_reaction_18_0;


    function Function_for_reaction_19_0
        	input Real S10;
	input Real cell;
	input Real gsk3b;
	input Real kdeg_c4;
	input Real kdeg_c4gsk3b;
        output Real y;
    algorithm
        y :=  (kdeg_c4 + kdeg_c4gsk3b * gsk3b) * S10 / cell;
    end Function_for_reaction_19_0;


    function Function_for_reaction_20_0
        	input Real S13;
	input Real cell;
	input Real gsk3b;
	input Real kdeg_c2;
	input Real kdeg_c2gsk3b;
        output Real y;
    algorithm
        y :=  (kdeg_c2 + kdeg_c2gsk3b * gsk3b) * S13 / cell;
    end Function_for_reaction_20_0;


    function Function_for_reaction_21_0
        	input Real S13;
	input Real cell;
	input Real kp_c2cak;
        output Real y;
    algorithm
        y :=  kp_c2cak * S13 / cell;
    end Function_for_reaction_21_0;


    function Function_for_reaction_22_0
        	input Real S10;
	input Real S12;
	input Real cell;
	input Real kb_p21c4;
        output Real y;
    algorithm
        y :=  kb_p21c4 * S10 * S12 / cell;
    end Function_for_reaction_22_0;


    function Function_for_reaction_23_0
        	input Real S12;
	input Real S4;
	input Real cell;
	input Real kb_p21c2;
        output Real y;
    algorithm
        y :=  kb_p21c2 * S4 * S12 / cell;
    end Function_for_reaction_23_0;


    function Function_for_reaction_24_0
        	input Real S11;
	input Real S13;
	input Real cell;
	input Real kb_p21c2;
        output Real y;
    algorithm
        y :=  kb_p21c2 * S11 * S13 / cell;
    end Function_for_reaction_24_0;


    function Function_for_reaction_25_0
        	input Real S12;
	input Real Vratio;
	input Real cell;
	input Real kimport;
        output Real y;
    algorithm
        y :=  (kimport / Vratio) * S12 / cell;
    end Function_for_reaction_25_0;


    function Function_for_reaction_26_0
        	input Real S12;
	input Real Vratio;
	input Real cell;
	input Real kimport;
        output Real y;
    algorithm
        y :=  kimport * (1 - 1 / Vratio) * S12 / cell;
    end Function_for_reaction_26_0;


    function Function_for_reaction_27_0
        	input Real S11;
	input Real cell;
	input Real erk;
	input Real gsk3b;
	input Real kdeg_p21erk;
	input Real kdeg_p21gsk3b;
        output Real y;
    algorithm
        y :=  (kdeg_p21gsk3b * gsk3b + kdeg_p21erk * erk) * S11 / cell;
    end Function_for_reaction_27_0;


    function Function_for_reaction_28_0
        	input Real S12;
	input Real cell;
	input Real erk;
	input Real gsk3b;
	input Real kdeg_p21erk;
	input Real kdeg_p21gsk3b;
        output Real y;
    algorithm
        y :=  (kdeg_p21gsk3b * gsk3b + kdeg_p21erk * erk) * S12 / cell;
    end Function_for_reaction_28_0;


    function Function_for_reaction_29_0
        	input Real S15;
	input Real cell;
	input Real kdeg_rbfree;
        output Real y;
    algorithm
        y :=  kdeg_rbfree * S15 / cell;
    end Function_for_reaction_29_0;


    function Function_for_reaction_30_0
        	input Real S16;
	input Real cell;
	input Real kdeg_rbbound;
        output Real y;
    algorithm
        y :=  kdeg_rbbound * S16 / cell;
    end Function_for_reaction_30_0;


    function Function_for_reaction_31_0
        	input Real S11;
	input Real S15;
	input Real cell;
	input Real kdeg_rbp21;
        output Real y;
    algorithm
        y :=  kdeg_rbp21 * S11 * S15 / cell;
    end Function_for_reaction_31_0;


    function Function_for_reaction_32_0
        	input Real S11;
	input Real S16;
	input Real cell;
	input Real kdeg_rbp21;
        output Real y;
    algorithm
        y :=  kdeg_rbp21 * S11 * S16 / cell;
    end Function_for_reaction_32_0;


    function Function_for_reaction_33_0
        	input Real S14;
	input Real cell;
	input Real kdeg_e2ffree;
        output Real y;
    algorithm
        y :=  kdeg_e2ffree * S14 / cell;
    end Function_for_reaction_33_0;


    function Function_for_reaction_34_0
        	input Real S16;
	input Real cell;
	input Real kdeg_e2fbound;
        output Real y;
    algorithm
        y :=  kdeg_e2fbound * S16 / cell;
    end Function_for_reaction_34_0;


    function Function_for_reaction_35_0
        	input Real S1;
	input Real S14;
	input Real cell;
	input Real kb_rbe2f;
        output Real y;
    algorithm
        y :=  kb_rbe2f * S1 * S14 / cell;
    end Function_for_reaction_35_0;


    function Function_for_reaction_36_0
        	input Real S14;
	input Real S15;
	input Real cell;
	input Real kb_rbpe2f;
        output Real y;
    algorithm
        y :=  kb_rbpe2f * S14 * S15 / cell;
    end Function_for_reaction_36_0;


    function Function_for_reaction_37_0
        	input Real S16;
	input Real cell;
	input Real kd_rbpe2f;
        output Real y;
    algorithm
        y :=  kd_rbpe2f * S16 / cell;
    end Function_for_reaction_37_0;


    function Function_for_reaction_38_0
        	input Real Km_prb;
	input Real S15;
	input Real S18;
	input Real cell;
	input Real kcatp_rbc2;
	input Real nrb;
        output Real y;
    algorithm
        y :=  kcatp_rbc2 * S18 * S15^nrb / (Km_prb^nrb + S15^nrb) / cell;
    end Function_for_reaction_38_0;


    function Function_for_reaction_39_0
        	input Real Km_prb;
	input Real S16;
	input Real S18;
	input Real cell;
	input Real kcatp_rbc2;
	input Real nrb;
        output Real y;
    algorithm
        y :=  kcatp_rbc2 * S18 * S16^nrb / (Km_prb^nrb + S16^nrb) / cell;
    end Function_for_reaction_39_0;


    function Function_for_reaction_40_0
        	input Real Km_dprb;
	input Real S15;
	input Real S18;
	input Real cell;
	input Real kcatdp_rbc4;
	input Real kinh_pp1;
	input Real nrb;
        output Real y;
    algorithm
        y :=  (kcatdp_rbc4 * S15^nrb / (Km_dprb^nrb + S15^nrb)) * 1 / (1 + kinh_pp1 * S18) / cell;
    end Function_for_reaction_40_0;


    function Function_for_reaction_41_0
        	input Real Km_dprb;
	input Real S16;
	input Real S18;
	input Real cell;
	input Real kcatdp_rbc4;
	input Real kinh_pp1;
	input Real nrb;
        output Real y;
    algorithm
        y :=  (kcatdp_rbc4 * S16^nrb / (Km_dprb^nrb + S16^nrb)) * 1 / (1 + kinh_pp1 * S18) / cell;
    end Function_for_reaction_41_0;


    function Function_for_reaction_42_0
        	input Real S17;
	input Real cell;
	input Real k_delay;
        output Real y;
    algorithm
        y :=  k_delay * S17 / cell;
    end Function_for_reaction_42_0;


    function Function_for_reaction_43_0
        	input Real S19;
	input Real cell;
	input Real gsk3b;
	input Real kdeg_c4;
	input Real kdeg_c4gsk3b;
        output Real y;
    algorithm
        y :=  (kdeg_c4 + kdeg_c4gsk3b * gsk3b) * S19 / cell;
    end Function_for_reaction_43_0;


    function Function_for_reaction_44_0
        	input Real S18;
	input Real cell;
	input Real gsk3b;
	input Real kdeg_c2;
	input Real kdeg_c2gsk3b;
        output Real y;
    algorithm
        y :=  (kdeg_c2 + kdeg_c2gsk3b * gsk3b) * S18 / cell;
    end Function_for_reaction_44_0;


    function Function_for_reaction_45_0
        	input Real S20;
	input Real cell;
	input Real gsk3b;
	input Real kdeg_c2;
	input Real kdeg_c2gsk3b;
        output Real y;
    algorithm
        y :=  (kdeg_c2 + kdeg_c2gsk3b * gsk3b) * S20 / cell;
    end Function_for_reaction_45_0;


    function Function_for_reaction_46_0
        	input Real S18;
	input Real cell;
	input Real gsk3b;
	input Real kdeg_c2c2gsk3b;
        output Real y;
    algorithm
        y :=  kdeg_c2c2gsk3b * gsk3b * S18 / cell;
    end Function_for_reaction_46_0;


    function Function_for_reaction_47_0
        	input Real S18;
	input Real cell;
	input Real kdp_c2cak;
        output Real y;
    algorithm
        y :=  kdp_c2cak * S18 / cell;
    end Function_for_reaction_47_0;


    function Function_for_reaction_48_0
        	input Real S19;
	input Real cell;
	input Real kd_p21c4;
        output Real y;
    algorithm
        y :=  kd_p21c4 * S19 / cell;
    end Function_for_reaction_48_0;


    function Function_for_reaction_49_0
        	input Real S11;
	input Real S18;
	input Real cell;
	input Real kb_p21c2;
        output Real y;
    algorithm
        y :=  kb_p21c2 * S11 * S18 / cell;
    end Function_for_reaction_49_0;


    function Function_for_reaction_50_0
        	input Real S20;
	input Real cell;
	input Real kd_p21c2;
        output Real y;
    algorithm
        y :=  kd_p21c2 * S20 / cell;
    end Function_for_reaction_50_0;


    function Function_for_reaction_51_0
        	input Real S19;
	input Real Vratio;
	input Real cell;
	input Real kimport;
        output Real y;
    algorithm
        y :=  (kimport / Vratio) * S19 / cell;
    end Function_for_reaction_51_0;


    function Function_for_reaction_52_0
        	input Real S20;
	input Real Vratio;
	input Real cell;
	input Real kimport;
        output Real y;
    algorithm
        y :=  (kimport / Vratio) * S20 / cell;
    end Function_for_reaction_52_0;


    function Function_for_reaction_53_0
        	input Real S19;
	input Real Vratio;
	input Real cell;
	input Real kimport;
        output Real y;
    algorithm
        y :=  kimport * (1 - 1 / Vratio) * S19 / cell;
    end Function_for_reaction_53_0;


    function Function_for_reaction_54_0
        	input Real S20;
	input Real Vratio;
	input Real cell;
	input Real kimport;
        output Real y;
    algorithm
        y :=  kimport * (1 - 1 / Vratio) * S20 / cell;
    end Function_for_reaction_54_0;


    function Function_for_reaction_55_0
        	input Real S21;
	input Real cell;
	input Real kdeg_rbfree;
        output Real y;
    algorithm
        y :=  kdeg_rbfree * S21 / cell;
    end Function_for_reaction_55_0;


    function Function_for_reaction_56_0
        	input Real S11;
	input Real S21;
	input Real cell;
	input Real kdeg_rbp21;
        output Real y;
    algorithm
        y :=  kdeg_rbp21 * S11 * S21 / cell;
    end Function_for_reaction_56_0;


    function Function_for_reaction_57_0
        	input Real Km_dprb;
	input Real S18;
	input Real S21;
	input Real cell;
	input Real kcatdp_rbc2;
	input Real kinh_pp1;
	input Real nrb;
        output Real y;
    algorithm
        y :=  (kcatdp_rbc2 * S21^nrb / (Km_dprb^nrb + S21^nrb)) * 1 / (1 + kinh_pp1 * S18) / cell;
    end Function_for_reaction_57_0;


    function Function_for_reaction_60_0
        	input Real S23;
	input Real cell;
	input Real gsk3b;
	input Real kdeg_c2;
	input Real kdeg_c2gsk3b;
        output Real y;
    algorithm
        y :=  (kdeg_c2 + kdeg_c2gsk3b * gsk3b) * S23 / cell;
    end Function_for_reaction_60_0;


    function Function_for_reaction_61_0
        	input Real S24;
	input Real cell;
	input Real kd_p21c4;
        output Real y;
    algorithm
        y :=  kd_p21c4 * S24 / cell;
    end Function_for_reaction_61_0;


    function Function_for_reaction_62_0
        	input Real S23;
	input Real cell;
	input Real kd_p21c2;
        output Real y;
    algorithm
        y :=  kd_p21c2 * S23 / cell;
    end Function_for_reaction_62_0;


    function Function_for_reaction_63_0
        	input Real S14;
	input Real S18;
	input Real S23;
	input Real cell;
	input Real erk;
	input Real kdeg_p21c2skp2;
	input Real kdeg_p21erkskp2;
	input Real kdeg_p21skp2;
        output Real y;
    algorithm
        y :=  (kdeg_p21erkskp2 * erk + kdeg_p21c2skp2 * S18 + kdeg_p21skp2) * S14 * S23 / cell;
    end Function_for_reaction_63_0;


    function Function_for_reaction_64_0
        	input Real S14;
	input Real S18;
	input Real S24;
	input Real cell;
	input Real erk;
	input Real kdeg_p21c2skp2;
	input Real kdeg_p21erkskp2;
	input Real kdeg_p21skp2;
        output Real y;
    algorithm
        y :=  (kdeg_p21erkskp2 * erk + kdeg_p21c2skp2 * S18 + kdeg_p21skp2) * S14 * S24 / cell;
    end Function_for_reaction_64_0;


    function Function_for_reaction_65_0
        	input Real S25;
	input Real cell;
	input Real k_delay;
        output Real y;
    algorithm
        y :=  k_delay * S25 / cell;
    end Function_for_reaction_65_0;


    function Function_for_reaction_66_0
        	input Real S26;
	input Real cell;
	input Real gsk3b;
	input Real kdeg_c4;
	input Real kdeg_c4gsk3b;
        output Real y;
    algorithm
        y :=  (kdeg_c4 + kdeg_c4gsk3b * gsk3b) * S26 / cell;
    end Function_for_reaction_66_0;


    function Function_for_reaction_67_0
        	input Real S11;
	input Real S26;
	input Real cell;
	input Real kb_p21c4;
        output Real y;
    algorithm
        y :=  kb_p21c4 * S11 * S26 / cell;
    end Function_for_reaction_67_0;


    function Function_for_reaction_68_0
        	input Real S27;
	input Real cell;
	input Real k_delay;
        output Real y;
    algorithm
        y :=  k_delay * S27 / cell;
    end Function_for_reaction_68_0;


    function Function_for_reaction_69_0
        	input Real S28;
	input Real cell;
	input Real k_delay;
        output Real y;
    algorithm
        y :=  k_delay * S28 / cell;
    end Function_for_reaction_69_0;


    parameter Real Vnuc = 0.25;
    parameter Real Vcyto = 12.67;
    parameter Real perk = 0.00857314138104046;
    parameter Real nerk = 1.14663416967514;
    parameter Real pakt = 0.0348;
    parameter Real nakt = 1.0957;
    parameter Real aerk = 0.16;
    parameter Real aakt = 0.53;
    parameter Real atf = 0.601288203846636;
    parameter Real ks_c4 = 14298.6715905912;
    parameter Real kdeg_c4 = 1.01433121526038;
    parameter Real kdeg_c4gsk3b = 0.107637073030656;
    parameter Real ks_c2myc = 0.157511710670132;
    parameter Real ks_c2e2f = 2.19944932286058;
    parameter Real kdeg_c2c2gsk3b = 5.58835572681068;
    parameter Real kdeg_c2gsk3b = 1.55090179808215e-05;
    parameter Real kdeg_c2 = 0.225746618767114;
    parameter Real kdp_c2cak = 101.282119534273;
    parameter Real kc2cak = 0.316993285134466;
    parameter Real ks_p21p53 = 3.84136205729286e-06;
    parameter Real ks_p21e2f = 0.811617200647839;
    parameter Real kdeg_p21erkskp2 = 0.000282976267377082;
    parameter Real kdeg_p21c2skp2 = 0.040108041739907;
    parameter Real kdeg_p21skp2 = 0.750574831653576;
    parameter Real kdeg_p21gsk3b = 0.00464010657330714;
    parameter Real kdeg_p21erk = 0.736488746268804;
    parameter Real Kd_p21c4 = 99.9965429570432;
    parameter Real kb_p21c4 = 14.3083360067931;
    parameter Real Kd_p21c2 = 0.0100024233821379;
    parameter Real kb_p21c2 = 997.938141166465;
    parameter Real ki = 0.0918326575000322;
    parameter Real kinh_p21akt = 0.439662894183616;
    parameter Real ks_e2fe2f = 0.459601740303536;
    parameter Real ks_e2fmyc = 2.49174531457788e-06;
    parameter Real kdege2fplus = 4.18153340918872e-05;
    parameter Real kdeg_e2fbound = 0.0999954023364359;
    parameter Real ks_rb = 72.5245257602228;
    parameter Real ks_rbe2f = 20.0129834334888;
    parameter Real kdeg_rbp21 = 0.863570809432207;
    parameter Real kdeg_rbbound = 0.0889964132806627;
    parameter Real kdegrbplus = 0.257763482477731;
    parameter Real kb_rbe2f = 229.976400323907;
    parameter Real Kd_rb_e2f = 50.002528361226;
    parameter Real kb_rbpe2f = 182.218452288549;
    parameter Real Kd_rbp_e2f = 481.484530572552;
    parameter Real kcatprbc4 = 2797.82326282727;
    parameter Real kcatp_rbc2 = 7142308.07232621;
    parameter Real kcatdp_rbc2 = 0.00313841707547858;
    parameter Real kcatdp_rbc4 = 2892.0219338341;
    parameter Real kinh_pp1 = 16634.9400020267;
    parameter Real Km_dprb = 0.118988383643671;
    parameter Real Km_prb = 2.03458881189349;
    parameter Real nrb = 3.0;
    parameter Real k_dna = 0.00949790539669408;
    parameter Real k_delay = 23.6658781343201;
    parameter Real scale_TotcycDCDK4 = 0.5651;
    parameter Real scale_TotcycECDK2 = 0.1889;
    parameter Real scale_Totp21CDK2 = 0.339790715037712;
    parameter Real scale_TotCDK2T160 = 2.728395741944;
    parameter Real scale_TotRb = 0.2605;
    parameter Real scale_PhosRbS788 = 0.673907327042472;
    parameter Real scale_PhosRbS800 = 0.82377467648995;
    parameter Real scale_Totp21 = 0.1728;
    parameter Real scale_TotE2F = 28.7418;
    parameter Real cell = 1.0;
    parameter Real Nucleus = 1.0;

    Real Vratio(start=0.0197316495659037);
    Real erk(start=0.16);
    Real akt(start=0.53);
    Real gsk3b(start=0.47);
    Real tf(start=0.635098964160441);
    Real tfp21(start=0.635098964160441);
    Real kp_c2cak(start=101.599112819407);
    Real kd_p21c4(start=1430.78413614709);
    Real kd_p21c2(start=9.98179979713068);
    Real kimport(start=0.0744777523096695);
    Real kdeg_e2ffree(start=0.100037217670528);
    Real kdeg_rbfree(start=0.346759895758394);
    Real kd_rbe2f(start=11499.4014796088);
    Real kd_rbpe2f(start=87735.365961809);
    Real kcatp_rbc4(start=2797.82326282727);

    Real S4;
    Real S10;
    Real S12;
    Real S19;
    Real S20;
    Real hgf;
    Real inhp53;
    Real inherk;
    Real inhakt;
    Real inhc4d1;
    Real ObsTotCycECDK2_obs;
    Real ObsTotCDK2T160_obs;
    Real ObsTotCycDCDK4_obs;
    Real ObsTotP21_obs;
    Real ObsCDK2P21_obs;
    Real ObsTotE2F_obs;
    Real ObsTotRb_obs;
    Real ObsPhosRbS788_obs;
    Real ObsPhosRbS800_obs;
    Real ObsDNAContent_obs;
    Real S23;
    Real S18;
    Real S3;
    Real S13;
    Real S24;
    Real S26;
    Real S5;
    Real S17;
    Real S22;
    Real S25;
    Real S27;
    Real S16;
    Real S2;
    Real S14;
    Real S11;
    Real S21;
    Real S15;
    Real S1;
    Real S28;

initial equation
    S4 = 0.415;
    S10 = 0.0;
    S12 = 0.0;
    S19 = 0.0;
    S20 = 0.0;
    S23 = 0.0;
    S18 = 0.0;
    S3 = 6.2223;
    S13 = 0.0;
    S24 = 0.0;
    S26 = 0.0;
    S5 = 1.0;
    S17 = 0.0;
    S22 = 0.0;
    S25 = 0.0;
    S27 = 0.0;
    S16 = 0.0;
    S2 = 0.0601;
    S14 = 0.0;
    S11 = 0.0;
    S21 = 0.0;
    S15 = 0.0;
    S1 = 25.5914;
    S28 = 0.0;

equation
    ObsCDK2P21_obs = scale_Totp21CDK2 * (Vnuc * (S3 + S23) + Vcyto * S20) / (Vnuc + Vcyto);
    ObsTotE2F_obs = (scale_TotE2F + scale_TotRb) * Vnuc * (S2 + S14 + S16) / (Vnuc + Vcyto);
    hgf = piecewise(0, lt(time, -1), piecewise(0, lt(time, 24), 1));
    inhp53 = piecewise(0, lt(time, -1), piecewise(0, lt(time, 0), 0));
    inherk = piecewise(0, lt(time, -1), piecewise(0, lt(time, 0), 0));
    inhakt = piecewise(0, lt(time, -1), piecewise(0, lt(time, 0), 0));
    inhc4d1 = piecewise(0, lt(time, -1), piecewise(0, lt(time, 0), 0));
    ObsTotCycECDK2_obs = scale_TotcycECDK2 * (Vnuc * (S3 + S13 + S18 + S23) + Vcyto * (S4 + S20)) / (Vnuc + Vcyto);
    ObsTotCDK2T160_obs = scale_TotCDK2T160 * Vnuc * (S18 + S23) / (Vnuc + Vcyto);
    ObsTotCycDCDK4_obs = scale_TotcycDCDK4 * (Vnuc * S24 + Vcyto * S19) / (Vnuc + Vcyto);
    ObsTotP21_obs = scale_Totp21 * (Vnuc * (S3 + S11 + S23 + S24) + Vcyto * (S12 + S19 + S20)) / (Vnuc + Vcyto);
    ObsTotRb_obs = scale_TotRb * Vnuc * (S1 + S2 + S15 + S16 + S21) / (Vnuc + Vcyto);
    ObsPhosRbS788_obs = scale_PhosRbS788 * Vnuc * (S15 + S16 + S21) / (Vnuc + Vcyto);
    ObsPhosRbS800_obs = scale_PhosRbS800 * Vnuc * S21 / (Vnuc + Vcyto);
    ObsDNAContent_obs = 2 - (S5 + S17 + S22 + S25 + S27 + S28);
    Vratio = Vnuc / Vcyto;
    erk = (1 - inherk) * ((1 - aerk) * (pow(perk, nerk) + 1) * pow(hgf, nerk) / (pow(hgf, nerk) + pow(perk, nerk)) + aerk);
    akt = (1 - inhakt) * ((1 - aakt) * (pow(pakt, nakt) + 1) * pow(hgf, nakt) / (pow(hgf, nakt) + pow(pakt, nakt)) + aakt);
    gsk3b = 1 - akt;
    tf = (1 - atf) * erk * (1 - gsk3b) + atf;
    tfp21 = (1 - inhp53) * tf;
    kp_c2cak = kdp_c2cak + kc2cak;
    kd_p21c4 = Kd_p21c4 * kb_p21c4;
    kd_p21c2 = Kd_p21c2 * kb_p21c2;
    kimport = ki / (1 + kinh_p21akt * akt);
    kdeg_e2ffree = kdeg_e2fbound + kdege2fplus;
    kdeg_rbfree = kdeg_rbbound + kdegrbplus;
    kd_rbe2f = kb_rbe2f * Kd_rb_e2f;
    kd_rbpe2f = kb_rbpe2f * Kd_rbp_e2f;
    kcatp_rbc4 = kcatprbc4 * (1 - inhc4d1);
    der(S4) = (cell * Function_for_reaction_2_0(S14, S16, cell, ks_c2e2f, ks_c2myc, tf)) + (cell * Function_for_reaction_50_0(S20, cell, kd_p21c2)) - (cell * Function_for_reaction_4_0(S4, cell, gsk3b, kdeg_c2, kdeg_c2gsk3b)) - (cell * Function_for_reaction_23_0(S12, S4, cell, kb_p21c2));
    der(S10) = (cell * Function_for_reaction_1_0(cell, ks_c4, tf)) + (cell * Function_for_reaction_48_0(S19, cell, kd_p21c4)) - (cell * Function_for_reaction_19_0(S10, cell, gsk3b, kdeg_c4, kdeg_c4gsk3b)) - (cell * Function_for_reaction_22_0(S10, S12, cell, kb_p21c4));
    der(S12) = (cell * Function_for_reaction_5_0(S14, cell, ks_p21e2f, ks_p21p53, tfp21)) + (cell * Function_for_reaction_43_0(S19, cell, gsk3b, kdeg_c4, kdeg_c4gsk3b)) + (cell * Function_for_reaction_45_0(S20, cell, gsk3b, kdeg_c2, kdeg_c2gsk3b)) + (cell * Function_for_reaction_48_0(S19, cell, kd_p21c4)) + (cell * Function_for_reaction_50_0(S20, cell, kd_p21c2)) - (cell * Function_for_reaction_22_0(S10, S12, cell, kb_p21c4)) - (cell * Function_for_reaction_23_0(S12, S4, cell, kb_p21c2)) - (Function_for_reaction_25_0(S12, Vratio, cell, kimport)) - (cell * Function_for_reaction_26_0(S12, Vratio, cell, kimport)) - (cell * Function_for_reaction_28_0(S12, cell, erk, gsk3b, kdeg_p21erk, kdeg_p21gsk3b));
    der(S19) = (cell * Function_for_reaction_22_0(S10, S12, cell, kb_p21c4)) - (cell * Function_for_reaction_43_0(S19, cell, gsk3b, kdeg_c4, kdeg_c4gsk3b)) - (cell * Function_for_reaction_48_0(S19, cell, kd_p21c4)) - (Function_for_reaction_51_0(S19, Vratio, cell, kimport)) - (cell * Function_for_reaction_53_0(S19, Vratio, cell, kimport));
    der(S20) = (cell * Function_for_reaction_23_0(S12, S4, cell, kb_p21c2)) - (cell * Function_for_reaction_45_0(S20, cell, gsk3b, kdeg_c2, kdeg_c2gsk3b)) - (cell * Function_for_reaction_50_0(S20, cell, kd_p21c2)) - (Function_for_reaction_52_0(S20, Vratio, cell, kimport)) - (cell * Function_for_reaction_54_0(S20, Vratio, cell, kimport));
    der(S23) = (Nucleus * Function_for_reaction_49_0(S11, S18, cell, kb_p21c2)) - (Nucleus * Function_for_reaction_60_0(S23, cell, gsk3b, kdeg_c2, kdeg_c2gsk3b)) - (Nucleus * Function_for_reaction_62_0(S23, cell, kd_p21c2)) - (Nucleus * Function_for_reaction_63_0(S14, S18, S23, cell, erk, kdeg_p21c2skp2, kdeg_p21erkskp2, kdeg_p21skp2));
    der(S18) = (Nucleus * Function_for_reaction_21_0(S13, cell, kp_c2cak)) + (Nucleus * Function_for_reaction_62_0(S23, cell, kd_p21c2)) + (Nucleus * Function_for_reaction_63_0(S14, S18, S23, cell, erk, kdeg_p21c2skp2, kdeg_p21erkskp2, kdeg_p21skp2)) - (Nucleus * Function_for_reaction_44_0(S18, cell, gsk3b, kdeg_c2, kdeg_c2gsk3b)) - (Nucleus * Function_for_reaction_46_0(S18, cell, gsk3b, kdeg_c2c2gsk3b)) - (Nucleus * Function_for_reaction_47_0(S18, cell, kdp_c2cak)) - (Nucleus * Function_for_reaction_49_0(S11, S18, cell, kb_p21c2));
    der(S3) = (Nucleus * Function_for_reaction_24_0(S11, S13, cell, kb_p21c2)) + (Function_for_reaction_52_0(S20, Vratio, cell, kimport)) - (Nucleus * Function_for_reaction_3_0(S3, cell, gsk3b, kdeg_c2, kdeg_c2gsk3b)) - (Nucleus * Function_for_reaction_6_0(S3, cell, kd_p21c2)) - (Nucleus * Function_for_reaction_7_0(S14, S18, S3, cell, erk, kdeg_p21c2skp2, kdeg_p21erkskp2, kdeg_p21skp2));
    der(S13) = (Nucleus * Function_for_reaction_6_0(S3, cell, kd_p21c2)) + (Nucleus * Function_for_reaction_7_0(S14, S18, S3, cell, erk, kdeg_p21c2skp2, kdeg_p21erkskp2, kdeg_p21skp2)) + (Nucleus * Function_for_reaction_47_0(S18, cell, kdp_c2cak)) - (Nucleus * Function_for_reaction_20_0(S13, cell, gsk3b, kdeg_c2, kdeg_c2gsk3b)) - (Nucleus * Function_for_reaction_21_0(S13, cell, kp_c2cak)) - (Nucleus * Function_for_reaction_24_0(S11, S13, cell, kb_p21c2));
    der(S24) = (Function_for_reaction_51_0(S19, Vratio, cell, kimport)) + (Nucleus * Function_for_reaction_67_0(S11, S26, cell, kb_p21c4)) - (Nucleus * Function_for_reaction_59_0(S24, cell, kdeg_c4)) - (Nucleus * Function_for_reaction_61_0(S24, cell, kd_p21c4)) - (Nucleus * Function_for_reaction_64_0(S14, S18, S24, cell, erk, kdeg_p21c2skp2, kdeg_p21erkskp2, kdeg_p21skp2));
    der(S26) = (Nucleus * Function_for_reaction_61_0(S24, cell, kd_p21c4)) + (Nucleus * Function_for_reaction_64_0(S14, S18, S24, cell, erk, kdeg_p21c2skp2, kdeg_p21erkskp2, kdeg_p21skp2)) - (Nucleus * Function_for_reaction_66_0(S26, cell, gsk3b, kdeg_c4, kdeg_c4gsk3b)) - (Nucleus * Function_for_reaction_67_0(S11, S26, cell, kb_p21c4));
    der(S5) =  - (Nucleus * Function_for_reaction_18_0(S14, S18, S5, cell, k_dna));
    der(S17) = (Nucleus * Function_for_reaction_18_0(S14, S18, S5, cell, k_dna)) - (Nucleus * Function_for_reaction_42_0(S17, cell, k_delay));
    der(S22) = (Nucleus * Function_for_reaction_42_0(S17, cell, k_delay)) - (Nucleus * Function_for_reaction_58_0(S22, cell, k_delay));
    der(S25) = (Nucleus * Function_for_reaction_58_0(S22, cell, k_delay)) - (Nucleus * Function_for_reaction_65_0(S25, cell, k_delay));
    der(S27) = (Nucleus * Function_for_reaction_65_0(S25, cell, k_delay)) - (Nucleus * Function_for_reaction_68_0(S27, cell, k_delay));
    der(S16) = (Nucleus * Function_for_reaction_17_0(Km_prb, S2, S24, cell, kcatp_rbc4, nrb)) + (Nucleus * Function_for_reaction_36_0(S14, S15, cell, kb_rbpe2f)) - (Nucleus * Function_for_reaction_30_0(S16, cell, kdeg_rbbound)) - (Nucleus * Function_for_reaction_32_0(S11, S16, cell, kdeg_rbp21)) - (Nucleus * Function_for_reaction_34_0(S16, cell, kdeg_e2fbound)) - (Nucleus * Function_for_reaction_37_0(S16, cell, kd_rbpe2f)) - (Nucleus * Function_for_reaction_39_0(Km_prb, S16, S18, cell, kcatp_rbc2, nrb)) - (Nucleus * Function_for_reaction_41_0(Km_dprb, S16, S18, cell, kcatdp_rbc4, kinh_pp1, nrb));
    der(S2) = (Nucleus * Function_for_reaction_35_0(S1, S14, cell, kb_rbe2f)) + (Nucleus * Function_for_reaction_41_0(Km_dprb, S16, S18, cell, kcatdp_rbc4, kinh_pp1, nrb)) - (Nucleus * Function_for_reaction_10_0(S2, cell, kdeg_rbbound)) - (Nucleus * Function_for_reaction_12_0(S11, S2, cell, kdeg_rbp21)) - (Nucleus * Function_for_reaction_14_0(S2, cell, kdeg_e2fbound)) - (Nucleus * Function_for_reaction_15_0(S2, cell, kd_rbe2f)) - (Nucleus * Function_for_reaction_17_0(Km_prb, S2, S24, cell, kcatp_rbc4, nrb));
    der(S14) = (Nucleus * Function_for_reaction_10_0(S2, cell, kdeg_rbbound)) + (Nucleus * Function_for_reaction_12_0(S11, S2, cell, kdeg_rbp21)) + (Nucleus * Function_for_reaction_13_0(S14, cell, ks_e2fe2f, ks_e2fmyc, tf)) + (Nucleus * Function_for_reaction_15_0(S2, cell, kd_rbe2f)) + (Nucleus * Function_for_reaction_30_0(S16, cell, kdeg_rbbound)) + (Nucleus * Function_for_reaction_32_0(S11, S16, cell, kdeg_rbp21)) + (Nucleus * Function_for_reaction_37_0(S16, cell, kd_rbpe2f)) + (Nucleus * Function_for_reaction_39_0(Km_prb, S16, S18, cell, kcatp_rbc2, nrb)) - (Nucleus * Function_for_reaction_33_0(S14, cell, kdeg_e2ffree)) - (Nucleus * Function_for_reaction_35_0(S1, S14, cell, kb_rbe2f)) - (Nucleus * Function_for_reaction_36_0(S14, S15, cell, kb_rbpe2f));
    der(S11) = (Nucleus * Function_for_reaction_3_0(S3, cell, gsk3b, kdeg_c2, kdeg_c2gsk3b)) + (Nucleus * Function_for_reaction_6_0(S3, cell, kd_p21c2)) + (Function_for_reaction_25_0(S12, Vratio, cell, kimport)) + (Nucleus * Function_for_reaction_60_0(S23, cell, gsk3b, kdeg_c2, kdeg_c2gsk3b)) + (Nucleus * Function_for_reaction_61_0(S24, cell, kd_p21c4)) + (Nucleus * Function_for_reaction_62_0(S23, cell, kd_p21c2)) - (Nucleus * Function_for_reaction_24_0(S11, S13, cell, kb_p21c2)) - (Nucleus * Function_for_reaction_27_0(S11, cell, erk, gsk3b, kdeg_p21erk, kdeg_p21gsk3b)) - (Nucleus * Function_for_reaction_49_0(S11, S18, cell, kb_p21c2)) - (Nucleus * Function_for_reaction_67_0(S11, S26, cell, kb_p21c4));
    der(S21) = (Nucleus * Function_for_reaction_38_0(Km_prb, S15, S18, cell, kcatp_rbc2, nrb)) + (Nucleus * Function_for_reaction_39_0(Km_prb, S16, S18, cell, kcatp_rbc2, nrb)) - (Nucleus * Function_for_reaction_55_0(S21, cell, kdeg_rbfree)) - (Nucleus * Function_for_reaction_56_0(S11, S21, cell, kdeg_rbp21)) - (Nucleus * Function_for_reaction_57_0(Km_dprb, S18, S21, cell, kcatdp_rbc2, kinh_pp1, nrb));
    der(S15) = (Nucleus * Function_for_reaction_16_0(Km_prb, S1, S24, cell, kcatp_rbc4, nrb)) + (Nucleus * Function_for_reaction_34_0(S16, cell, kdeg_e2fbound)) + (Nucleus * Function_for_reaction_37_0(S16, cell, kd_rbpe2f)) + (Nucleus * Function_for_reaction_57_0(Km_dprb, S18, S21, cell, kcatdp_rbc2, kinh_pp1, nrb)) - (Nucleus * Function_for_reaction_29_0(S15, cell, kdeg_rbfree)) - (Nucleus * Function_for_reaction_31_0(S11, S15, cell, kdeg_rbp21)) - (Nucleus * Function_for_reaction_36_0(S14, S15, cell, kb_rbpe2f)) - (Nucleus * Function_for_reaction_38_0(Km_prb, S15, S18, cell, kcatp_rbc2, nrb)) - (Nucleus * Function_for_reaction_40_0(Km_dprb, S15, S18, cell, kcatdp_rbc4, kinh_pp1, nrb));
    der(S1) = (Nucleus * Function_for_reaction_8_0(S14, cell, ks_rb, ks_rbe2f)) + (Nucleus * Function_for_reaction_14_0(S2, cell, kdeg_e2fbound)) + (Nucleus * Function_for_reaction_15_0(S2, cell, kd_rbe2f)) + (Nucleus * Function_for_reaction_40_0(Km_dprb, S15, S18, cell, kcatdp_rbc4, kinh_pp1, nrb)) - (Nucleus * Function_for_reaction_9_0(S1, cell, kdeg_rbfree)) - (Nucleus * Function_for_reaction_11_0(S1, S11, cell, kdeg_rbp21)) - (Nucleus * Function_for_reaction_16_0(Km_prb, S1, S24, cell, kcatp_rbc4, nrb)) - (Nucleus * Function_for_reaction_35_0(S1, S14, cell, kb_rbe2f));
    der(S28) = (Nucleus * Function_for_reaction_68_0(S27, cell, k_delay)) - (Nucleus * Function_for_reaction_69_0(S28, cell, k_delay));




end BIOMD568;
