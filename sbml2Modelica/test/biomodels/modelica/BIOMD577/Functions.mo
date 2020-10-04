within BIOMD577;
class Functions

    function elmt_function_4_cLUX_m_degr
        input Real arg_cLUX_m;
        input Real arg_def;
        input Real arg_m34;

        output Real result;
        algorithm
            result := ((arg_m34 * arg_cLUX_m) / arg_def);
    end elmt_function_4_cLUX_m_degr;

    function elmt_function_4_cT_m_degr
        input Real arg_cT_m;
        input Real arg_def;
        input Real arg_m5;

        output Real result;
        algorithm
            result := ((arg_m5 * arg_cT_m) / arg_def);
    end elmt_function_4_cT_m_degr;

    function elmt_function_4_cE4_m_trscr_1
        input Real arg_cEC;
        input Real arg_cL;
        input Real arg_cT;
        input Real arg_def;
        input Real arg_e;
        input Real arg_g6;
        input Real arg_parameter_4;
        input Real arg_parameter_5;
        input Real arg_parameter_7;
        input Real arg_parameter_8;

        output Real result;
        algorithm
            result := (((Functions.pow(arg_parameter_5, arg_parameter_7) / (Functions.pow(arg_parameter_5, arg_parameter_7) + Functions.pow(arg_cT, arg_parameter_7))) * ((((arg_parameter_8 * arg_parameter_4) / (arg_cEC + arg_parameter_4)) * Functions.pow(arg_g6, arg_e)) / (Functions.pow(arg_cL, arg_e) + Functions.pow(arg_g6, arg_e)))) / arg_def);
    end elmt_function_4_cE4_m_trscr_1;

    function elmt_function_4_cT_degr
        input Real arg_L;
        input Real arg_cT;
        input Real arg_cZG;
        input Real arg_cZTL;
        input Real arg_m6;
        input Real arg_m7;
        input Real arg_m8;
        input Real arg_p5;

        output Real result;
        algorithm
            result := (((arg_m6 + (arg_m7 * (1.0 - arg_L))) * arg_cT * ((arg_p5 * arg_cZTL) + arg_cZG)) + (arg_m8 * arg_cT));
    end elmt_function_4_cT_degr;

    function elmt_function_4_cP7_m_trscr_1
        input Real arg_cL;
        input Real arg_cLm;
        input Real arg_cP9;
        input Real arg_cT;
        input Real arg_def;
        input Real arg_e;
        input Real arg_f;
        input Real arg_g10;
        input Real arg_g11;
        input Real arg_n8;
        input Real arg_n9;
        input Real arg_parameter_6;
        input Real arg_parameter_7;
        input Real arg_F_PRR7;

        output Real result;
        algorithm
            result := ((((arg_F_PRR7 * Functions.pow(arg_parameter_6, arg_parameter_7)) / (Functions.pow(arg_parameter_6, arg_parameter_7) + Functions.pow(arg_cT, arg_parameter_7))) * (((arg_n8 * Functions.pow((arg_cLm + arg_cL), arg_e)) / (Functions.pow((arg_cLm + arg_cL), arg_e) + Functions.pow(arg_g10, arg_e))) + ((arg_n9 * Functions.pow(arg_cP9, arg_f)) / (Functions.pow(arg_cP9, arg_f) + Functions.pow(arg_g11, arg_f))))) / arg_def);
    end elmt_function_4_cP7_m_trscr_1;

    function elmt_function_4_cZTL_trsl
        input Real arg_def;
        input Real arg_p14;

        output Real result;
        algorithm
            result := (arg_p14 / arg_def);
    end elmt_function_4_cZTL_trsl;

    function elmt_function_4_cG_m_trscr_1
        input Real arg_L;
        input Real arg_cEC;
        input Real arg_cL;
        input Real arg_cP;
        input Real arg_cT;
        input Real arg_e;
        input Real arg_g14;
        input Real arg_g15;
        input Real arg_n12;
        input Real arg_parameter_1;
        input Real arg_parameter_7;
        input Real arg_q2;

        output Real result;
        algorithm
            result := ((Functions.pow(arg_parameter_1, arg_parameter_7) / (Functions.pow(arg_parameter_1, arg_parameter_7) + Functions.pow(arg_cT, arg_parameter_7))) * ((arg_L * arg_q2 * arg_cP) + ((((arg_n12 * arg_g14) / (arg_cEC + arg_g14)) * Functions.pow(arg_g15, arg_e)) / (Functions.pow(arg_cL, arg_e) + Functions.pow(arg_g15, arg_e)))));
    end elmt_function_4_cG_m_trscr_1;

    function elmt_function_4_cLUX_trsl
        input Real arg_cLUX_m;
        input Real arg_def;
        input Real arg_p27;

        output Real result;
        algorithm
            result := ((arg_p27 * arg_cLUX_m) / arg_def);
    end elmt_function_4_cLUX_trsl;

    function elmt_function_4_cE3n_degr
        input Real arg_cCOP1d;
        input Real arg_cCOP1n;
        input Real arg_cE3n;
        input Real arg_cE4;
        input Real arg_cG;
        input Real arg_cLUX;
        input Real arg_def;
        input Real arg_m10;
        input Real arg_m19;
        input Real arg_m9;
        input Real arg_p17;
        input Real arg_p21;
        input Real arg_p25;
        input Real arg_p26;
        input Real arg_p28;
        input Real arg_p29;

        output Real result;
        algorithm
            result := (((((arg_m10 * arg_cE3n * arg_cCOP1n) + (arg_m9 * arg_cE3n * arg_cCOP1d) + (arg_p25 * arg_cE4 * arg_cE3n)) - ((arg_p21 * arg_p25 * arg_cE4 * arg_cE3n) / ((arg_p26 * arg_cLUX) + arg_p21 + (arg_m9 * arg_cCOP1d) + (arg_m10 * arg_cCOP1n)))) + ((arg_p17 * arg_cE3n * arg_p28 * arg_cG) / (arg_p29 + arg_m19 + (arg_p17 * arg_cE3n)))) / arg_def);
    end elmt_function_4_cE3n_degr;

    function elmt_function_4_cNI_degr
        input Real arg_L;
        input Real arg_cNI;
        input Real arg_m17;
        input Real arg_m24;

        output Real result;
        algorithm
            result := ((arg_m17 + (arg_m24 * (1.0 - arg_L))) * arg_cNI);
    end elmt_function_4_cNI_degr;

    function elmt_function_4_cCOP1d_degr
        input Real arg_L;
        input Real arg_cCOP1d;
        input Real arg_m31;
        input Real arg_m33;

        output Real result;
        algorithm
            result := (arg_m31 * (1.0 + (arg_m33 * (1.0 - arg_L))) * arg_cCOP1d);
    end elmt_function_4_cCOP1d_degr;

    function elmt_function_4_cL_m_degr
        input Real arg_L;
        input Real arg_cL_m;
        input Real arg_m1;
        input Real arg_m2;

        output Real result;
        algorithm
            result := ((arg_m2 + ((arg_m1 - arg_m2) * arg_L)) * arg_cL_m);
    end elmt_function_4_cL_m_degr;

    function elmt_function_4_cE4_degr
        input Real arg_cCOP1d;
        input Real arg_cCOP1n;
        input Real arg_cE3n;
        input Real arg_cE4;
        input Real arg_cLUX;
        input Real arg_def;
        input Real arg_m10;
        input Real arg_m35;
        input Real arg_m9;
        input Real arg_p21;
        input Real arg_p25;
        input Real arg_p26;

        output Real result;
        algorithm
            result := ((((arg_m35 * arg_cE4) + (arg_p25 * arg_cE4 * arg_cE3n)) - ((arg_p21 * arg_p25 * arg_cE4 * arg_cE3n) / ((arg_p26 * arg_cLUX) + arg_p21 + (arg_m9 * arg_cCOP1d) + (arg_m10 * arg_cCOP1n)))) / arg_def);
    end elmt_function_4_cE4_degr;

    function elmt_function_4_cNI_trsl
        input Real arg_cNI_m;
        input Real arg_def;
        input Real arg_p10;

        output Real result;
        algorithm
            result := ((arg_p10 * arg_cNI_m) / arg_def);
    end elmt_function_4_cNI_trsl;

    function elmt_function_4_cPP2C_degr_1
        input Real arg_def;
        input Real arg_parameter_20;
        input Real arg_species_2;

        output Real result;
        algorithm
            result := ((arg_parameter_20 * arg_species_2) / arg_def);
    end elmt_function_4_cPP2C_degr_1;

    function elmt_function_4_cP_trsl
        input Real arg_L;
        input Real arg_cP;
        input Real arg_p7;

        output Real result;
        algorithm
            result := (arg_p7 * (1.0 - arg_L) * (1.0 - arg_cP));
    end elmt_function_4_cP_trsl;

    function elmt_function_4_cL_m_trscr
        input Real arg_L;
        input Real arg_a;
        input Real arg_cNI;
        input Real arg_cP;
        input Real arg_cP7;
        input Real arg_cP9;
        input Real arg_cT;
        input Real arg_g1;
        input Real arg_n1;
        input Real arg_q1;
        input Real arg_F_LHY;

        output Real result;
        algorithm
            result := (arg_F_LHY * ((arg_L * arg_q1 * arg_cP) + ((arg_n1 * Functions.pow(arg_g1, arg_a)) / (Functions.pow((arg_cP9 + arg_cP7 + arg_cNI + arg_cT), arg_a) + Functions.pow(arg_g1, arg_a)))));
    end elmt_function_4_cL_m_trscr;

    function elmt_function_4_cCOP1d_activ
        input Real arg_L;
        input Real arg_cCOP1n;
        input Real arg_cP;
        input Real arg_n14;
        input Real arg_n6;

        output Real result;
        algorithm
            result := ((arg_n6 * arg_L * arg_cP * arg_cCOP1n) + (arg_n14 * arg_cCOP1n));
    end elmt_function_4_cCOP1d_activ;

    function elmt_function_4_cT_trsl
        input Real arg_cT_m;
        input Real arg_def;
        input Real arg_p4;

        output Real result;
        algorithm
            result := ((arg_p4 * arg_cT_m) / arg_def);
    end elmt_function_4_cT_trsl;

    function elmt_function_4_cE3_degr
        input Real arg_cCOP1c;
        input Real arg_cE3;
        input Real arg_def;
        input Real arg_m9;

        output Real result;
        algorithm
            result := ((arg_m9 * arg_cE3 * arg_cCOP1c) / arg_def);
    end elmt_function_4_cE3_degr;

    function elmt_function_4_cEC_form
        input Real arg_cCOP1d;
        input Real arg_cCOP1n;
        input Real arg_cE3n;
        input Real arg_cE4;
        input Real arg_cLUX;
        input Real arg_def;
        input Real arg_m10;
        input Real arg_m9;
        input Real arg_p21;
        input Real arg_p25;
        input Real arg_p26;

        output Real result;
        algorithm
            result := (((arg_p26 * arg_cLUX * arg_p25 * arg_cE4 * arg_cE3n) / ((arg_p26 * arg_cLUX) + arg_p21 + (arg_m9 * arg_cCOP1d) + (arg_m10 * arg_cCOP1n))) / arg_def);
    end elmt_function_4_cEC_form;

    function elmt_function_4_cG_m_degr
        input Real arg_cG_m;
        input Real arg_def;
        input Real arg_m18;

        output Real result;
        algorithm
            result := ((arg_m18 * arg_cG_m) / arg_def);
    end elmt_function_4_cG_m_degr;

    function elmt_function_4_cL_modif
        input Real arg_c;
        input Real arg_cL;
        input Real arg_def;
        input Real arg_g3;
        input Real arg_p3;

        output Real result;
        algorithm
            result := (((arg_p3 * Functions.pow(arg_cL, arg_c)) / (Functions.pow(arg_cL, arg_c) + Functions.pow(arg_g3, arg_c))) / arg_def);
    end elmt_function_4_cL_modif;

    function elmt_function_4_cP7_m_degr
        input Real arg_cP7_m;
        input Real arg_def;
        input Real arg_m14;

        output Real result;
        algorithm
            result := ((arg_m14 * arg_cP7_m) / arg_def);
    end elmt_function_4_cP7_m_degr;

    function elmt_function_4_cP9_trsl
        input Real arg_cP9_m;
        input Real arg_def;
        input Real arg_p8;

        output Real result;
        algorithm
            result := ((arg_p8 * arg_cP9_m) / arg_def);
    end elmt_function_4_cP9_trsl;

    function elmt_function_4_cCOP1c_trsl
        input Real arg_def;
        input Real arg_n5;

        output Real result;
        algorithm
            result := (arg_n5 / arg_def);
    end elmt_function_4_cCOP1c_trsl;

    function elmt_function_4_cSnRK2_act_1
        input Real arg_def;
        input Real arg_parameter_27;

        output Real result;
        algorithm
            result := (arg_parameter_27 / arg_def);
    end elmt_function_4_cSnRK2_act_1;

    function elmt_function_4_cABAR_m_trscr_1
        input Real arg_cL;
        input Real arg_cT;
        input Real arg_def;
        input Real arg_e;
        input Real arg_parameter_13;
        input Real arg_parameter_17;
        input Real arg_parameter_24;
        input Real arg_parameter_7;

        output Real result;
        algorithm
            result := ((((Functions.pow(arg_parameter_13, arg_parameter_7) / (Functions.pow(arg_parameter_13, arg_parameter_7) + Functions.pow(arg_cT, arg_parameter_7))) * arg_parameter_24 * Functions.pow(arg_cL, arg_e)) / (Functions.pow(arg_cL, arg_e) + Functions.pow(arg_parameter_17, arg_e))) / arg_def);
    end elmt_function_4_cABAR_m_trscr_1;

    function elmt_function_4_cG_cZTL_assoc
        input Real arg_L;
        input Real arg_cG;
        input Real arg_cZG;
        input Real arg_cZTL;
        input Real arg_p12;
        input Real arg_p13;

        output Real result;
        algorithm
            result := ((arg_p12 * arg_L * arg_cZTL * arg_cG) - (arg_p13 * (1.0 - arg_L) * arg_cZG));
    end elmt_function_4_cG_cZTL_assoc;

    function elmt_function_4_cLUX_degr_1
        input Real arg_cCOP1d;
        input Real arg_cCOP1n;
        input Real arg_cE3n;
        input Real arg_cE4;
        input Real arg_cLUX;
        input Real arg_def;
        input Real arg_m10;
        input Real arg_m36;
        input Real arg_m9;
        input Real arg_p21;
        input Real arg_p25;
        input Real arg_p26;

        output Real result;
        algorithm
            result := (((arg_m36 * arg_cLUX) + ((arg_p26 * arg_cLUX * arg_p25 * arg_cE4 * arg_cE3n) / ((arg_p26 * arg_cLUX) + arg_p21 + (arg_m9 * arg_cCOP1d) + (arg_m10 * arg_cCOP1n)))) / arg_def);
    end elmt_function_4_cLUX_degr_1;

    function elmt_function_4_cG_degr_1
        input Real arg_cE3n;
        input Real arg_cG;
        input Real arg_def;
        input Real arg_m19;
        input Real arg_p17;
        input Real arg_p28;
        input Real arg_p29;

        output Real result;
        algorithm
            result := ((((arg_m19 * arg_cG) + (arg_p28 * arg_cG)) - ((arg_p29 * arg_p28 * arg_cG) / (arg_p29 + arg_m19 + (arg_p17 * arg_cE3n)))) / arg_def);
    end elmt_function_4_cG_degr_1;

    function elmt_function_4_cEG_degr_1
        input Real arg_cCOP1c;
        input Real arg_cCOP1d;
        input Real arg_cCOP1n;
        input Real arg_cE3n;
        input Real arg_cEG;
        input Real arg_cG;
        input Real arg_def;
        input Real arg_m10;
        input Real arg_m19;
        input Real arg_m9;
        input Real arg_p17;
        input Real arg_p18;
        input Real arg_p28;
        input Real arg_p29;
        input Real arg_parameter_26;

        output Real result;
        algorithm
            result := ((((arg_m10 * arg_cEG * arg_cCOP1c) + (arg_p18 * arg_cEG)) - ((arg_parameter_26 * ((arg_p18 * arg_cEG) + ((arg_p17 * arg_cE3n * arg_p28 * arg_cG) / (arg_p29 + arg_m19 + (arg_p17 * arg_cE3n))))) / ((arg_m10 * arg_cCOP1n) + (arg_m9 * arg_cCOP1d) + arg_parameter_26))) / arg_def);
    end elmt_function_4_cEG_degr_1;

    function elmt_function_4_cT_m_trscr
        input Real arg_cEC;
        input Real arg_cL;
        input Real arg_def;
        input Real arg_e;
        input Real arg_g4;
        input Real arg_g5;
        input Real arg_n2;
        input Real arg_parameter_11;
        input Real arg_parameter_14;
        input Real arg_species_3;
        input Real arg_F_TOC1;

        output Real result;
        algorithm
            result := (((((arg_F_TOC1 * arg_n2) / (1.0 + Functions.pow((arg_cL / (arg_g5 * (1.0 + Functions.pow((arg_species_3 / arg_parameter_14), arg_parameter_11)))), arg_e))) * arg_g4) / (arg_cEC + arg_g4)) / arg_def);
    end elmt_function_4_cT_m_trscr;

    function elmt_function_4_cE3_m_degr
        input Real arg_cE3_m;
        input Real arg_def;
        input Real arg_m26;

        output Real result;
        algorithm
            result := ((arg_m26 * arg_cE3_m) / arg_def);
    end elmt_function_4_cE3_m_degr;

    function elmt_function_4_cE4_m_degr
        input Real arg_cE4_m;
        input Real arg_def;
        input Real arg_m34;

        output Real result;
        algorithm
            result := ((arg_m34 * arg_cE4_m) / arg_def);
    end elmt_function_4_cE4_m_degr;

    function elmt_function_4_cG_trsl
        input Real arg_cG_m;
        input Real arg_def;
        input Real arg_p11;

        output Real result;
        algorithm
            result := ((arg_p11 * arg_cG_m) / arg_def);
    end elmt_function_4_cG_trsl;

    function elmt_function_4_cNI_m_degr
        input Real arg_cNI_m;
        input Real arg_def;
        input Real arg_m16;

        output Real result;
        algorithm
            result := ((arg_m16 * arg_cNI_m) / arg_def);
    end elmt_function_4_cNI_m_degr;

    function elmt_function_4_cL_trsl
        input Real arg_L;
        input Real arg_cL_m;
        input Real arg_p1;
        input Real arg_p2;

        output Real result;
        algorithm
            result := (arg_cL_m * ((arg_p1 * arg_L) + arg_p2));
    end elmt_function_4_cL_trsl;

    function elmt_function_4_cEC_degr
        input Real arg_L;
        input Real arg_cCOP1d;
        input Real arg_cCOP1n;
        input Real arg_cE3n;
        input Real arg_cEC;
        input Real arg_cEG;
        input Real arg_cG;
        input Real arg_d;
        input Real arg_g7;
        input Real arg_m10;
        input Real arg_m19;
        input Real arg_m32;
        input Real arg_m9;
        input Real arg_p17;
        input Real arg_p18;
        input Real arg_p24;
        input Real arg_p28;
        input Real arg_p29;
        input Real arg_parameter_26;

        output Real result;
        algorithm
            result := ((arg_m10 * arg_cCOP1n * arg_cEC) + (arg_m9 * arg_cCOP1d * arg_cEC) + (arg_m32 * arg_cEC * (1.0 + ((arg_p24 * arg_L * Functions.pow((((arg_p28 * arg_cG) / (arg_p29 + arg_m19 + (arg_p17 * arg_cE3n))) + (((arg_p18 * arg_cEG) + ((arg_p17 * arg_cE3n * arg_p28 * arg_cG) / (arg_p29 + arg_m19 + (arg_p17 * arg_cE3n)))) / ((arg_m10 * arg_cCOP1n) + (arg_m9 * arg_cCOP1d) + arg_parameter_26))), arg_d)) / (Functions.pow((((arg_p28 * arg_cG) / (arg_p29 + arg_m19 + (arg_p17 * arg_cE3n))) + (((arg_p18 * arg_cEG) + ((arg_p17 * arg_cE3n * arg_p28 * arg_cG) / (arg_p29 + arg_m19 + (arg_p17 * arg_cE3n)))) / ((arg_m10 * arg_cCOP1n) + (arg_m9 * arg_cCOP1d) + arg_parameter_26))), arg_d) + Functions.pow(arg_g7, arg_d))))));
    end elmt_function_4_cEC_degr;

    function elmt_function_4_cE4_trsl
        input Real arg_cE4_m;
        input Real arg_def;
        input Real arg_p23;

        output Real result;
        algorithm
            result := ((arg_p23 * arg_cE4_m) / arg_def);
    end elmt_function_4_cE4_trsl;

    function elmt_function_4_cP_degr
        input Real arg_L;
        input Real arg_cP;
        input Real arg_m11;

        output Real result;
        algorithm
            result := (arg_m11 * arg_cP * arg_L);
    end elmt_function_4_cP_degr;

    function elmt_function_4_cP7_degr
        input Real arg_L;
        input Real arg_cP7;
        input Real arg_m15;
        input Real arg_m23;

        output Real result;
        algorithm
            result := ((arg_m15 + (arg_m23 * (1.0 - arg_L))) * arg_cP7);
    end elmt_function_4_cP7_degr;

    function elmt_function_4_cNI_m_trscr_1
        input Real arg_b;
        input Real arg_cLm;
        input Real arg_cP7;
        input Real arg_cT;
        input Real arg_def;
        input Real arg_e;
        input Real arg_g12;
        input Real arg_g13;
        input Real arg_n10;
        input Real arg_n11;
        input Real arg_parameter_12;
        input Real arg_parameter_7;

        output Real result;
        algorithm
            result := (((Functions.pow(arg_parameter_12, arg_parameter_7) / (Functions.pow(arg_parameter_12, arg_parameter_7) + Functions.pow(arg_cT, arg_parameter_7))) * (((arg_n10 * Functions.pow(arg_cLm, arg_e)) / (Functions.pow(arg_cLm, arg_e) + Functions.pow(arg_g12, arg_e))) + ((arg_n11 * Functions.pow(arg_cP7, arg_b)) / (Functions.pow(arg_cP7, arg_b) + Functions.pow(arg_g13, arg_b))))) / arg_def);
    end elmt_function_4_cNI_m_trscr_1;

    function elmt_function_4_cP9_m_degr
        input Real arg_cP9_m;
        input Real arg_def;
        input Real arg_m12;

        output Real result;
        algorithm
            result := ((arg_m12 * arg_cP9_m) / arg_def);
    end elmt_function_4_cP9_m_degr;

    function elmt_function_4_cLm_degr
        input Real arg_cLm;
        input Real arg_def;
        input Real arg_m4;

        output Real result;
        algorithm
            result := ((arg_m4 * arg_cLm) / arg_def);
    end elmt_function_4_cLm_degr;

    function elmt_function_4_cPP2C_act_1
        input Real arg_def;
        input Real arg_parameter_16;
        input Real arg_parameter_18;
        input Real arg_parameter_28;
        input Real arg_parameter_29;
        input Real arg_parameter_9;
        input Real arg_species_1;

        output Real result;
        algorithm
            result := (((arg_parameter_28 * Functions.pow(arg_parameter_16, arg_parameter_9)) / (Functions.pow((0.5 * ((arg_parameter_29 + arg_species_1 + arg_parameter_18) - Functions.pow((Functions.pow((arg_parameter_29 + arg_species_1 + arg_parameter_18), 2.0) - (4.0 * arg_parameter_29 * arg_species_1)), (1.0 / 2.0)))), arg_parameter_9) + Functions.pow(arg_parameter_16, arg_parameter_9))) / arg_def);
    end elmt_function_4_cPP2C_act_1;

    function elmt_function_4_cL_degr
        input Real arg_c;
        input Real arg_cL;
        input Real arg_def;
        input Real arg_g3;
        input Real arg_m3;
        input Real arg_p3;

        output Real result;
        algorithm
            result := (((arg_m3 * arg_cL) + ((arg_p3 * Functions.pow(arg_cL, arg_c)) / (Functions.pow(arg_cL, arg_c) + Functions.pow(arg_g3, arg_c)))) / arg_def);
    end elmt_function_4_cL_degr;

    function elmt_function_4_cP9_m_trscr_1
        input Real arg_L;
        input Real arg_cEC;
        input Real arg_cL;
        input Real arg_cP;
        input Real arg_cT;
        input Real arg_e;
        input Real arg_g8;
        input Real arg_g9;
        input Real arg_n4;
        input Real arg_n7;
        input Real arg_parameter_2;
        input Real arg_parameter_7;
        input Real arg_q3;

        output Real result;
        algorithm
            result := ((Functions.pow(arg_parameter_2, arg_parameter_7) / (Functions.pow(arg_parameter_2, arg_parameter_7) + Functions.pow(arg_cT, arg_parameter_7))) * ((arg_L * arg_q3 * arg_cP) + (((arg_n4 + ((arg_n7 * Functions.pow(arg_cL, arg_e)) / (Functions.pow(arg_cL, arg_e) + Functions.pow(arg_g9, arg_e)))) * arg_g8) / (arg_cEC + arg_g8))));
    end elmt_function_4_cP9_m_trscr_1;

    function elmt_function_4_cZTL_degr
        input Real arg_cZTL;
        input Real arg_def;
        input Real arg_m20;

        output Real result;
        algorithm
            result := ((arg_m20 * arg_cZTL) / arg_def);
    end elmt_function_4_cZTL_degr;

    function elmt_function_4_cSnRK2_degr
        input Real arg_def;
        input Real arg_m30;
        input Real arg_species_2;
        input Real arg_species_3;

        output Real result;
        algorithm
            result := ((arg_m30 * arg_species_3 * arg_species_2) / arg_def);
    end elmt_function_4_cSnRK2_degr;

    function elmt_function_4_cCOP1n_degr
        input Real arg_L;
        input Real arg_cCOP1n;
        input Real arg_m27;
        input Real arg_p15;

        output Real result;
        algorithm
            result := (arg_m27 * arg_cCOP1n * (1.0 + (arg_p15 * arg_L)));
    end elmt_function_4_cCOP1n_degr;

    function elmt_function_4_cs_act_1
        input Real arg_L;
        input Real arg_def;
        input Real arg_parameter_10;
        input Real arg_parameter_15;
        input Real arg_parameter_21;
        input Real arg_parameter_25;
        input Real arg_species_3;
        input Real arg_species_4;

        output Real result;
        algorithm
            result := ((((arg_parameter_25 + (arg_parameter_21 * arg_L)) * (1.0 - arg_species_4) * Functions.pow(arg_parameter_15, arg_parameter_10)) / (Functions.pow(arg_parameter_15, arg_parameter_10) + Functions.pow(arg_species_3, arg_parameter_10))) / arg_def);
    end elmt_function_4_cs_act_1;

    function elmt_function_4_cLUX_m_trscr
        input Real arg_cEC;
        input Real arg_cL;
        input Real arg_cT;
        input Real arg_def;
        input Real arg_e;
        input Real arg_g2;
        input Real arg_g6;
        input Real arg_n13;
        input Real arg_parameter_3;
        input Real arg_parameter_7;

        output Real result;
        algorithm
            result := (((Functions.pow(arg_parameter_3, arg_parameter_7) / (Functions.pow(arg_parameter_3, arg_parameter_7) + Functions.pow(arg_cT, arg_parameter_7))) * ((((arg_n13 * arg_g2) / (arg_cEC + arg_g2)) * Functions.pow(arg_g6, arg_e)) / (Functions.pow(arg_cL, arg_e) + Functions.pow(arg_g6, arg_e)))) / arg_def);
    end elmt_function_4_cLUX_m_trscr;

    function elmt_function_4_cs_degr_1
        input Real arg_def;
        input Real arg_m29;
        input Real arg_species_4;

        output Real result;
        algorithm
            result := ((arg_m29 * arg_species_4) / arg_def);
    end elmt_function_4_cs_degr_1;

    function elmt_function_4_cE3_m_trscr
        input Real arg_cL;
        input Real arg_def;
        input Real arg_e;
        input Real arg_g16;
        input Real arg_n3;

        output Real result;
        algorithm
            result := (((arg_n3 * Functions.pow(arg_g16, arg_e)) / (Functions.pow(arg_cL, arg_e) + Functions.pow(arg_g16, arg_e))) / arg_def);
    end elmt_function_4_cE3_m_trscr;

    function elmt_function_4_cZG_degr
        input Real arg_cZG;
        input Real arg_def;
        input Real arg_m21;

        output Real result;
        algorithm
            result := ((arg_m21 * arg_cZG) / arg_def);
    end elmt_function_4_cZG_degr;

    function elmt_function_4_cABAR_m_degr
        input Real arg_def;
        input Real arg_m37;
        input Real arg_species_1;

        output Real result;
        algorithm
            result := ((arg_m37 * arg_species_1) / arg_def);
    end elmt_function_4_cABAR_m_degr;

    function elmt_function_4_cE3n_import
        input Real arg_cE3;
        input Real arg_cE3n;
        input Real arg_def;
        input Real arg_p19;
        input Real arg_p20;

        output Real result;
        algorithm
            result := (((arg_p19 * arg_cE3) - (arg_p20 * arg_cE3n)) / arg_def);
    end elmt_function_4_cE3n_import;

    function elmt_function_4_cG_cE3_assoc
        input Real arg_cE3;
        input Real arg_cG;
        input Real arg_def;
        input Real arg_p17;

        output Real result;
        algorithm
            result := ((arg_p17 * arg_cE3 * arg_cG) / arg_def);
    end elmt_function_4_cG_cE3_assoc;

    function elmt_function_4_cP9_degr
        input Real arg_L;
        input Real arg_cP9;
        input Real arg_m13;
        input Real arg_m22;

        output Real result;
        algorithm
            result := ((arg_m13 + (arg_m22 * (1.0 - arg_L))) * arg_cP9);
    end elmt_function_4_cP9_degr;

    function elmt_function_4_cE3_trsl
        input Real arg_cE3_m;
        input Real arg_def;
        input Real arg_p16;

        output Real result;
        algorithm
            result := ((arg_p16 * arg_cE3_m) / arg_def);
    end elmt_function_4_cE3_trsl;

    function elmt_function_4_cP7_trsl
        input Real arg_cP7_m;
        input Real arg_def;
        input Real arg_p9;

        output Real result;
        algorithm
            result := ((arg_p9 * arg_cP7_m) / arg_def);
    end elmt_function_4_cP7_trsl;

    function elmt_function_4_cCOP1c_degr
        input Real arg_L;
        input Real arg_cCOP1c;
        input Real arg_m27;
        input Real arg_p15;

        output Real result;
        algorithm
            result := (arg_m27 * arg_cCOP1c * (1.0 + (arg_p15 * arg_L)));
    end elmt_function_4_cCOP1c_degr;

    function elmt_function_4_cCOP1n_import
        input Real arg_cCOP1c;
        input Real arg_def;
        input Real arg_p6;

        output Real result;
        algorithm
            result := ((arg_p6 * arg_cCOP1c) / arg_def);
    end elmt_function_4_cCOP1n_import;


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
