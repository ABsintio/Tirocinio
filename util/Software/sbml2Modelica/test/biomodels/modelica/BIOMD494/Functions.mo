within BIOMD494;
class Functions

    function elmt_function_62
        input Real arg_Ago_d;
        input Real arg_default;
        input Real arg_p274;

        output Real result;
        algorithm
            result := ((arg_p274 * arg_Ago_d * arg_default) / arg_default);
    end elmt_function_62;

    function elmt_function_63
        input Real arg_Ago_d;
        input Real arg_default;
        input Real arg_p273;
        input Real arg_p274;

        output Real result;
        algorithm
            result := (((arg_p274 / arg_p273) * arg_Ago_d * arg_default) / arg_default);
    end elmt_function_63;

    function elmt_function_60
        input Real arg_Ago_R_a;
        input Real arg_default;
        input Real arg_p313;

        output Real result;
        algorithm
            result := ((arg_p313 * arg_Ago_R_a * arg_default) / arg_default);
    end elmt_function_60;

    function elmt_function_61
        input Real arg_Ago_R_i;
        input Real arg_default;
        input Real arg_p315;

        output Real result;
        algorithm
            result := ((arg_p315 * arg_Ago_R_i * arg_default) / arg_default);
    end elmt_function_61;

    function elmt_function_22
        input Real arg_AF2;
        input Real arg_LH_R;
        input Real arg_R_Foll;
        input Real arg_default;
        input Real arg_p46;
        input Real arg_p51;
        input Real arg_p52;

        output Real result;
        algorithm
            result := ((arg_p51 * Functions.pow(((arg_LH_R * arg_default) / arg_p52), arg_p46) * arg_R_Foll * arg_default * arg_AF2 * arg_default) / arg_default);
    end elmt_function_22;

    function elmt_function_66
        input Real arg_Ant_c;
        input Real arg_default;
        input Real arg_p475;

        output Real result;
        algorithm
            result := ((arg_p475 * arg_Ant_c) / arg_default);
    end elmt_function_66;

    function elmt_function_23
        input Real arg_AF3;
        input Real arg_LH_R;
        input Real arg_R_Foll;
        input Real arg_default;
        input Real arg_p32;
        input Real arg_p43;
        input Real arg_p52;

        output Real result;
        algorithm
            result := ((arg_p32 * Functions.pow(((arg_LH_R * arg_default) / arg_p52), arg_p43) * arg_R_Foll * arg_default * arg_AF3 * arg_default) / arg_default);
    end elmt_function_23;

    function elmt_function_67
        input Real arg_Ant_R;
        input Real arg_default;
        input Real arg_p513;

        output Real result;
        algorithm
            result := ((arg_p513 * arg_Ant_R) / arg_default);
    end elmt_function_67;

    function elmt_function_20
        input Real arg_AF1;
        input Real arg_FSH_R;
        input Real arg_default;
        input Real arg_p50;

        output Real result;
        algorithm
            result := ((arg_p50 * arg_FSH_R * arg_default * arg_AF1 * arg_default) / arg_default);
    end elmt_function_20;

    function elmt_function_64
        input Real arg_Ant_d;
        input Real arg_default;
        input Real arg_p474;

        output Real result;
        algorithm
            result := ((arg_p474 * arg_Ant_d) / arg_default);
    end elmt_function_64;

    function elmt_function_21
        input Real arg_FSH_R;
        input Real arg_default;
        input Real arg_p47;
        input Real arg_p48;
        input Real arg_p49;

        output Real result;
        algorithm
            result := (((arg_p49 * Functions.pow(((arg_FSH_R * arg_default) / arg_p48), arg_p47)) / (1.0 + Functions.pow(((arg_FSH_R * arg_default) / arg_p48), arg_p47))) / arg_default);
    end elmt_function_21;

    function elmt_function_65
        input Real arg_Ant_d;
        input Real arg_default;
        input Real arg_p473;
        input Real arg_p474;

        output Real result;
        algorithm
            result := (((arg_p474 / arg_p473) * arg_Ant_d) / arg_default);
    end elmt_function_65;

    function elmt_function_26
        input Real arg_Sc2;
        input Real arg_default;
        input Real arg_p38;

        output Real result;
        algorithm
            result := ((arg_p38 * arg_Sc2 * arg_default) / arg_default);
    end elmt_function_26;

    function elmt_function_27
        input Real arg_Ago_R_a;
        input Real arg_GnRH_R_a;
        input Real arg_Lut1;
        input Real arg_default;
        input Real arg_p39;
        input Real arg_p80;
        input Real arg_p83;
        input Real arg_p84;

        output Real result;
        algorithm
            result := ((arg_p39 * (1.0 + ((arg_p80 * Functions.pow((((arg_GnRH_R_a * arg_default) + (arg_Ago_R_a * arg_default)) / arg_p83), arg_p84)) / (1.0 + Functions.pow((((arg_GnRH_R_a * arg_default) + (arg_Ago_R_a * arg_default)) / arg_p83), arg_p84)))) * arg_Lut1 * arg_default) / arg_default);
    end elmt_function_27;

    function elmt_function_24
        input Real arg_AF4;
        input Real arg_LH_R;
        input Real arg_R_Foll;
        input Real arg_default;
        input Real arg_p34;
        input Real arg_p52;

        output Real result;
        algorithm
            result := ((((arg_p34 * arg_LH_R * arg_default) / arg_p52) * arg_R_Foll * arg_default * arg_AF4 * arg_default) / arg_default);
    end elmt_function_24;

    function elmt_function_68
        input Real arg_Ant_c;
        input Real arg_R_GnRH_a;
        input Real arg_default;
        input Real arg_p512;

        output Real result;
        algorithm
            result := ((arg_p512 * arg_R_GnRH_a * arg_default * arg_Ant_c) / arg_default);
    end elmt_function_68;

    function elmt_function_25
        input Real arg_Sc1;
        input Real arg_default;
        input Real arg_p37;

        output Real result;
        algorithm
            result := ((arg_p37 * arg_Sc1 * arg_default) / arg_default);
    end elmt_function_25;

    function elmt_function_69
        input Real arg_Ant_R;
        input Real arg_default;
        input Real arg_p514;

        output Real result;
        algorithm
            result := ((arg_p514 * arg_Ant_R) / arg_default);
    end elmt_function_69;

    function elmt_function_28
        input Real arg_Ago_R_a;
        input Real arg_GnRH_R_a;
        input Real arg_Lut2;
        input Real arg_default;
        input Real arg_p40;
        input Real arg_p80;
        input Real arg_p83;
        input Real arg_p84;

        output Real result;
        algorithm
            result := ((arg_p40 * (1.0 + ((arg_p80 * Functions.pow((((arg_GnRH_R_a * arg_default) + (arg_Ago_R_a * arg_default)) / arg_p83), arg_p84)) / (1.0 + Functions.pow((((arg_GnRH_R_a * arg_default) + (arg_Ago_R_a * arg_default)) / arg_p83), arg_p84)))) * arg_Lut2 * arg_default) / arg_default);
    end elmt_function_28;

    function elmt_function_29
        input Real arg_Ago_R_a;
        input Real arg_GnRH_R_a;
        input Real arg_Lut3;
        input Real arg_default;
        input Real arg_p41;
        input Real arg_p80;
        input Real arg_p83;
        input Real arg_p84;

        output Real result;
        algorithm
            result := ((arg_p41 * (1.0 + ((arg_p80 * Functions.pow((((arg_GnRH_R_a * arg_default) + (arg_Ago_R_a * arg_default)) / arg_p83), arg_p84)) / (1.0 + Functions.pow((((arg_GnRH_R_a * arg_default) + (arg_Ago_R_a * arg_default)) / arg_p83), arg_p84)))) * arg_Lut3 * arg_default) / arg_default);
    end elmt_function_29;

    function elmt_function_30
        input Real arg_FSH_bld;
        input Real arg_default;
        input Real arg_p90;
        input Real arg_p91;
        input Real arg_p94;

        output Real result;
        algorithm
            result := (((arg_p94 * Functions.pow(((arg_FSH_bld * arg_default) / arg_p90), arg_p91)) / (1.0 + Functions.pow(((arg_FSH_bld * arg_default) / arg_p90), arg_p91))) / arg_default);
    end elmt_function_30;

    function elmt_function_71
        input Real arg_Ant_p;
        input Real arg_default;
        input Real arg_p477;

        output Real result;
        algorithm
            result := ((arg_p477 * arg_Ant_p) / arg_default);
    end elmt_function_71;

    function elmt_function_33
        input Real arg_AF4;
        input Real arg_LH_R;
        input Real arg_default;
        input Real arg_p33;
        input Real arg_p44;
        input Real arg_p52;
        input Real arg_p55;

        output Real result;
        algorithm
            result := ((arg_p33 * Functions.pow(((arg_LH_R * arg_default) / arg_p52), arg_p44) * arg_AF4 * arg_default * (1.0 - ((arg_AF4 * arg_default) / arg_p55))) / arg_default);
    end elmt_function_33;

    function elmt_function_34
        input Real arg_LH_R;
        input Real arg_PrF;
        input Real arg_R_Foll;
        input Real arg_default;
        input Real arg_p35;
        input Real arg_p45;
        input Real arg_p52;

        output Real result;
        algorithm
            result := ((arg_p35 * Functions.pow(((arg_LH_R * arg_default) / arg_p52), arg_p45) * arg_R_Foll * arg_default * arg_PrF * arg_default) / arg_default);
    end elmt_function_34;

    function elmt_function_31
        input Real arg_P4;
        input Real arg_R_Foll;
        input Real arg_default;
        input Real arg_facP4;
        input Real arg_p92;
        input Real arg_p93;
        input Real arg_p95;

        output Real result;
        algorithm
            result := ((((arg_p95 * Functions.pow(((arg_P4 * arg_default) / (arg_p92 * arg_facP4)), arg_p93)) / (1.0 + Functions.pow(((arg_P4 * arg_default) / (arg_p92 * arg_facP4)), arg_p93))) * arg_R_Foll * arg_default) / arg_default);
    end elmt_function_31;

    function elmt_function_32
        input Real arg_AF3;
        input Real arg_FSH_R;
        input Real arg_default;
        input Real arg_p31;
        input Real arg_p55;

        output Real result;
        algorithm
            result := ((arg_p31 * arg_FSH_R * arg_default * arg_AF3 * arg_default * (1.0 - ((arg_AF3 * arg_default) / arg_p55))) / arg_default);
    end elmt_function_32;

    function elmt_function_37
        input Real arg_OvF;
        input Real arg_default;
        input Real arg_p26;
        input Real arg_p56;
        input Real arg_p57;

        output Real result;
        algorithm
            result := (((arg_p26 * Functions.pow(((arg_OvF * arg_default) / arg_p56), arg_p57)) / (1.0 + Functions.pow(((arg_OvF * arg_default) / arg_p56), arg_p57))) / arg_default);
    end elmt_function_37;

    function elmt_function_38
        input Real arg_Ago_R_a;
        input Real arg_GnRH_R_a;
        input Real arg_Lut4;
        input Real arg_default;
        input Real arg_p42;
        input Real arg_p80;
        input Real arg_p83;
        input Real arg_p84;

        output Real result;
        algorithm
            result := ((arg_p42 * (1.0 + ((arg_p80 * Functions.pow((((arg_GnRH_R_a * arg_default) + (arg_Ago_R_a * arg_default)) / arg_p83), arg_p84)) / (1.0 + Functions.pow((((arg_GnRH_R_a * arg_default) + (arg_Ago_R_a * arg_default)) / arg_p83), arg_p84)))) * arg_Lut4 * arg_default) / arg_default);
    end elmt_function_38;

    function elmt_function_35
        input Real arg_LH_R;
        input Real arg_PrF;
        input Real arg_R_Foll;
        input Real arg_default;
        input Real arg_p27;
        input Real arg_p45;
        input Real arg_p52;
        input Real arg_p53;
        input Real arg_p54;

        output Real result;
        algorithm
            result := (((arg_p27 * arg_R_Foll * arg_default * Functions.pow(((arg_LH_R * arg_default) / arg_p52), arg_p45) * Functions.pow(((arg_PrF * arg_default) / arg_p53), arg_p54)) / (1.0 + Functions.pow(((arg_PrF * arg_default) / arg_p53), arg_p54))) / arg_default);
    end elmt_function_35;

    function elmt_function_36
        input Real arg_OvF;
        input Real arg_default;
        input Real arg_p36;

        output Real result;
        algorithm
            result := ((arg_p36 * arg_OvF * arg_default) / arg_default);
    end elmt_function_36;

    function elmt_function_39
        input Real arg_AF2;
        input Real arg_AF3;
        input Real arg_AF4;
        input Real arg_LH_bld;
        input Real arg_Lut1;
        input Real arg_Lut4;
        input Real arg_PrF;
        input Real arg_default;
        input Real arg_facE2;
        input Real arg_p152;
        input Real arg_p158;
        input Real arg_p159;
        input Real arg_p160;
        input Real arg_p161;
        input Real arg_p164;
        input Real arg_p165;

        output Real result;
        algorithm
            result := ((arg_facE2 * (arg_p158 + (arg_p152 * arg_AF2 * arg_default) + (arg_p159 * arg_AF3 * arg_default * arg_LH_bld * arg_default) + (arg_p160 * arg_AF4 * arg_default) + (arg_p161 * arg_PrF * arg_default * arg_LH_bld * arg_default) + (arg_p164 * arg_Lut1 * arg_default) + (arg_p165 * arg_Lut4 * arg_default))) / arg_default);
    end elmt_function_39;

    function elmt_function_70
        input Real arg_Ant_c;
        input Real arg_default;
        input Real arg_p476;

        output Real result;
        algorithm
            result := ((arg_p476 * arg_Ant_c) / arg_default);
    end elmt_function_70;

    function elmt_function_40
        input Real arg_E2;
        input Real arg_default;
        input Real arg_p154;

        output Real result;
        algorithm
            result := ((arg_p154 * arg_E2 * arg_default) / arg_default);
    end elmt_function_40;

    function elmt_function_41
        input Real arg_Lut4;
        input Real arg_default;
        input Real arg_facP4;
        input Real arg_p166;
        input Real arg_p167;

        output Real result;
        algorithm
            result := ((arg_facP4 * (arg_p166 + (arg_p167 * arg_Lut4 * arg_default))) / arg_default);
    end elmt_function_41;

    function elmt_function_44
        input Real arg_AF2;
        input Real arg_Sc2;
        input Real arg_default;
        input Real arg_p173;
        input Real arg_p174;
        input Real arg_p175;

        output Real result;
        algorithm
            result := ((arg_p173 + (arg_p174 * arg_AF2 * arg_default) + (arg_p175 * arg_Sc2 * arg_default)) / arg_default);
    end elmt_function_44;

    function elmt_function_45
        input Real arg_InhB;
        input Real arg_default;
        input Real arg_p157;

        output Real result;
        algorithm
            result := ((arg_p157 * arg_InhB * arg_default) / arg_default);
    end elmt_function_45;

    function elmt_function_42
        input Real arg_Lut1;
        input Real arg_Lut2;
        input Real arg_Lut3;
        input Real arg_Lut4;
        input Real arg_PrF;
        input Real arg_Sc1;
        input Real arg_default;
        input Real arg_p168;
        input Real arg_p169;
        input Real arg_p170;
        input Real arg_p171;
        input Real arg_p172;
        input Real arg_p177;
        input Real arg_p178;

        output Real result;
        algorithm
            result := ((arg_p168 + (arg_p169 * arg_PrF * arg_default) + (arg_p177 * arg_Sc1 * arg_default) + (arg_p178 * arg_Lut1 * arg_default) + (arg_p170 * arg_Lut2 * arg_default) + (arg_p171 * arg_Lut3 * arg_default) + (arg_p172 * arg_Lut4 * arg_default)) / arg_default);
    end elmt_function_42;

    function elmt_function_43
        input Real arg_P4;
        input Real arg_default;
        input Real arg_p155;

        output Real result;
        algorithm
            result := ((arg_p155 * arg_P4 * arg_default) / arg_default);
    end elmt_function_43;

    function elmt_function_48
        input Real arg_GnRH_R_i;
        input Real arg_default;
        input Real arg_p304;

        output Real result;
        algorithm
            result := ((arg_p304 * arg_GnRH_R_i * arg_default) / arg_default);
    end elmt_function_48;

    function elmt_function_49
        input Real arg_default;
        input Real arg_freq;
        input Real arg_mass;

        output Real result;
        algorithm
            result := ((arg_freq * arg_mass) / arg_default);
    end elmt_function_49;

    function elmt_function_46
        input Real arg_InhA_delay;
        input Real arg_default;
        input Real arg_p30;

        output Real result;
        algorithm
            result := ((arg_p30 * arg_InhA_delay * arg_default) / arg_default);
    end elmt_function_46;

    function elmt_function_47
        input Real arg_default;
        input Real arg_p311;

        output Real result;
        algorithm
            result := (arg_p311 / arg_default);
    end elmt_function_47;

    function elmt_function_1
        input Real arg_GnRH_R_a;
        input Real arg_default;
        input Real arg_p309;

        output Real result;
        algorithm
            result := ((arg_p309 * arg_GnRH_R_a * arg_default) / arg_default);
    end elmt_function_1;

    function elmt_function_4
        input Real arg_R_GnRH_a;
        input Real arg_default;
        input Real arg_p306;

        output Real result;
        algorithm
            result := ((arg_p306 * arg_R_GnRH_a * arg_default) / arg_default);
    end elmt_function_4;

    function elmt_function_5
        input Real arg_GnRH_R_i;
        input Real arg_default;
        input Real arg_p305;

        output Real result;
        algorithm
            result := ((arg_p305 * arg_GnRH_R_i * arg_default) / arg_default);
    end elmt_function_5;

    function elmt_function_2
        input Real arg_GnRH_R_i;
        input Real arg_default;
        input Real arg_p310;

        output Real result;
        algorithm
            result := ((arg_p310 * arg_GnRH_R_i * arg_default) / arg_default);
    end elmt_function_2;

    function elmt_function_3
        input Real arg_R_GnRH_i;
        input Real arg_default;
        input Real arg_p307;

        output Real result;
        algorithm
            result := ((arg_p307 * arg_R_GnRH_i * arg_default) / arg_default);
    end elmt_function_3;

    function elmt_function_51
        input Real arg_Ago_R_a;
        input Real arg_GnRH_R_a;
        input Real arg_LH_Pit;
        input Real arg_default;
        input Real arg_facLH;
        input Real arg_p12;
        input Real arg_p16;
        input Real arg_p5;
        input Real arg_p8;
        input Real arg_p9;

        output Real result;
        algorithm
            result := (((arg_facLH / arg_p12) * (arg_p16 + ((arg_p5 * Functions.pow((((arg_GnRH_R_a * arg_default) + (arg_Ago_R_a * arg_default)) / arg_p8), arg_p9)) / (1.0 + Functions.pow((((arg_GnRH_R_a * arg_default) + (arg_Ago_R_a * arg_default)) / arg_p8), arg_p9)))) * arg_LH_Pit * arg_default) / arg_default);
    end elmt_function_51;

    function elmt_function_52
        input Real arg_Ago_R_a;
        input Real arg_FSH_pit;
        input Real arg_GnRH_R_a;
        input Real arg_default;
        input Real arg_facFSH;
        input Real arg_p12;
        input Real arg_p17;
        input Real arg_p18;
        input Real arg_p20;
        input Real arg_p28;

        output Real result;
        algorithm
            result := (((arg_facFSH / arg_p12) * (arg_p17 + ((arg_p28 * Functions.pow((((arg_GnRH_R_a * arg_default) + (arg_Ago_R_a * arg_default)) / arg_p18), arg_p20)) / (1.0 + Functions.pow((((arg_GnRH_R_a * arg_default) + (arg_Ago_R_a * arg_default)) / arg_p18), arg_p20)))) * arg_FSH_pit * arg_default) / arg_default);
    end elmt_function_52;

    function elmt_function_50
        input Real arg_FSH_bld;
        input Real arg_default;
        input Real arg_p241;

        output Real result;
        algorithm
            result := ((arg_p241 * arg_FSH_bld * arg_default) / arg_default);
    end elmt_function_50;

    function elmt_function_11
        input Real arg_InhA_delay;
        input Real arg_InhB;
        input Real arg_default;
        input Real arg_freq;
        input Real arg_p11;
        input Real arg_p13;
        input Real arg_p21;
        input Real arg_p22;
        input Real arg_p23;
        input Real arg_p24;
        input Real arg_p25;

        output Real result;
        algorithm
            result := ((((arg_p21 / (1.0 + Functions.pow(((arg_InhA_delay * arg_default) / arg_p22), arg_p24) + Functions.pow(((arg_InhB * arg_default) / arg_p23), arg_p25))) * 1.0) / (1.0 + Functions.pow((arg_freq / arg_p11), arg_p13))) / arg_default);
    end elmt_function_11;

    function elmt_function_55
        input Real arg_Ago_c;
        input Real arg_default;
        input Real arg_p275;

        output Real result;
        algorithm
            result := ((arg_p275 * arg_Ago_c * arg_default) / arg_default);
    end elmt_function_55;

    function elmt_function_12
        input Real arg_Ago_R_a;
        input Real arg_GnRH_R_a;
        input Real arg_LH_Pit;
        input Real arg_default;
        input Real arg_p16;
        input Real arg_p5;
        input Real arg_p8;
        input Real arg_p9;

        output Real result;
        algorithm
            result := (((arg_p16 + ((arg_p5 * Functions.pow((((arg_GnRH_R_a * arg_default) + (arg_Ago_R_a * arg_default)) / arg_p8), arg_p9)) / (1.0 + Functions.pow((((arg_GnRH_R_a * arg_default) + (arg_Ago_R_a * arg_default)) / arg_p8), arg_p9)))) * arg_LH_Pit * arg_default) / arg_default);
    end elmt_function_12;

    function elmt_function_56
        input Real arg_Ago_R_a;
        input Real arg_default;
        input Real arg_p319;

        output Real result;
        algorithm
            result := ((arg_p319 * arg_Ago_R_a * arg_default) / arg_default);
    end elmt_function_56;

    function elmt_function_53
        input Real arg_FSH_bld;
        input Real arg_R_FSH;
        input Real arg_default;
        input Real arg_facFSH;
        input Real arg_p240;

        output Real result;
        algorithm
            result := (((arg_p240 / arg_facFSH) * arg_FSH_bld * arg_default * arg_R_FSH * arg_default) / arg_default);
    end elmt_function_53;

    function elmt_function_10
        input Real arg_E2;
        input Real arg_P4;
        input Real arg_default;
        input Real arg_facE2;
        input Real arg_facP4;
        input Real arg_p1;
        input Real arg_p2;
        input Real arg_p3;
        input Real arg_p4;
        input Real arg_p6;
        input Real arg_p7;

        output Real result;
        algorithm
            result := (((arg_p1 + ((arg_p2 * Functions.pow(((arg_E2 * arg_default) / (arg_p3 * arg_facE2)), arg_p6)) / (1.0 + Functions.pow(((arg_E2 * arg_default) / (arg_p3 * arg_facE2)), arg_p6)))) / (1.0 + Functions.pow(((arg_P4 * arg_default) / (arg_p4 * arg_facP4)), arg_p7))) / arg_default);
    end elmt_function_10;

    function elmt_function_54
        input Real arg_InhA;
        input Real arg_default;
        input Real arg_p156;

        output Real result;
        algorithm
            result := ((arg_p156 * arg_InhA * arg_default) / arg_default);
    end elmt_function_54;

    function elmt_function_8
        input Real arg_GnRH_R_a;
        input Real arg_default;
        input Real arg_p303;

        output Real result;
        algorithm
            result := ((arg_p303 * arg_GnRH_R_a * arg_default) / arg_default);
    end elmt_function_8;

    function elmt_function_15
        input Real arg_LH_R;
        input Real arg_default;
        input Real arg_p234;

        output Real result;
        algorithm
            result := ((arg_p234 * arg_LH_R * arg_default) / arg_default);
    end elmt_function_15;

    function elmt_function_59
        input Real arg_Ago_c;
        input Real arg_R_GnRH_a;
        input Real arg_default;
        input Real arg_p312;

        output Real result;
        algorithm
            result := ((arg_p312 * arg_R_GnRH_a * arg_default * arg_Ago_c * arg_default) / arg_default);
    end elmt_function_59;

    function elmt_function_9
        input Real arg_GnRH;
        input Real arg_default;
        input Real arg_p300;

        output Real result;
        algorithm
            result := ((arg_p300 * arg_GnRH * arg_default) / arg_default);
    end elmt_function_9;

    function elmt_function_16
        input Real arg_R_LH_des;
        input Real arg_default;
        input Real arg_p232;

        output Real result;
        algorithm
            result := ((arg_p232 * arg_R_LH_des * arg_default) / arg_default);
    end elmt_function_16;

    function elmt_function_6
        input Real arg_GnRH;
        input Real arg_R_GnRH_a;
        input Real arg_default;
        input Real arg_p302;

        output Real result;
        algorithm
            result := ((arg_p302 * arg_GnRH * arg_default * arg_R_GnRH_a * arg_default) / arg_default);
    end elmt_function_6;

    function elmt_function_13
        input Real arg_Ago_R_a;
        input Real arg_FSH_pit;
        input Real arg_GnRH_R_a;
        input Real arg_default;
        input Real arg_p17;
        input Real arg_p18;
        input Real arg_p20;
        input Real arg_p28;

        output Real result;
        algorithm
            result := (((arg_p17 + ((arg_p28 * Functions.pow((((arg_GnRH_R_a * arg_default) + (arg_Ago_R_a * arg_default)) / arg_p18), arg_p20)) / (1.0 + Functions.pow((((arg_GnRH_R_a * arg_default) + (arg_Ago_R_a * arg_default)) / arg_p18), arg_p20)))) * arg_FSH_pit * arg_default) / arg_default);
    end elmt_function_13;

    function elmt_function_57
        input Real arg_Ago_R_i;
        input Real arg_default;
        input Real arg_p320;

        output Real result;
        algorithm
            result := ((arg_p320 * arg_Ago_R_i * arg_default) / arg_default);
    end elmt_function_57;

    function elmt_function_7
        input Real arg_R_GnRH_i;
        input Real arg_default;
        input Real arg_p308;

        output Real result;
        algorithm
            result := ((arg_p308 * arg_R_GnRH_i * arg_default) / arg_default);
    end elmt_function_7;

    function elmt_function_14
        input Real arg_LH_bld;
        input Real arg_R_LH;
        input Real arg_default;
        input Real arg_facLH;
        input Real arg_p230;

        output Real result;
        algorithm
            result := (((arg_p230 / arg_facLH) * arg_LH_bld * arg_default * arg_R_LH * arg_default) / arg_default);
    end elmt_function_14;

    function elmt_function_58
        input Real arg_Ago_R_i;
        input Real arg_default;
        input Real arg_p314;

        output Real result;
        algorithm
            result := ((arg_p314 * arg_Ago_R_i * arg_default) / arg_default);
    end elmt_function_58;

    function elmt_function_19
        input Real arg_R_FSH_des;
        input Real arg_default;
        input Real arg_p242;

        output Real result;
        algorithm
            result := ((arg_p242 * arg_R_FSH_des * arg_default) / arg_default);
    end elmt_function_19;

    function elmt_function_17
        input Real arg_LH_bld;
        input Real arg_default;
        input Real arg_p231;

        output Real result;
        algorithm
            result := ((arg_p231 * arg_LH_bld * arg_default) / arg_default);
    end elmt_function_17;

    function elmt_function_18
        input Real arg_FSH_R;
        input Real arg_default;
        input Real arg_p244;

        output Real result;
        algorithm
            result := ((arg_p244 * arg_FSH_R * arg_default) / arg_default);
    end elmt_function_18;


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
