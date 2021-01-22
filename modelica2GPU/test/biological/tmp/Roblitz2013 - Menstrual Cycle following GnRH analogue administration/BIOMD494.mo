
model BIOMD494 "Roblitz2013 - Menstrual Cycle following GnRH analogue administration"

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


    function function_1
        	input Real GnRH_R_a;
	input Real default;
	input Real p309;
        output Real y;
    algorithm
        y :=  p309 * GnRH_R_a * default / default;
    end function_1;


    function function_2
        	input Real GnRH_R_i;
	input Real default;
	input Real p310;
        output Real y;
    algorithm
        y :=  p310 * GnRH_R_i * default / default;
    end function_2;


    function function_3
        	input Real R_GnRH_i;
	input Real default;
	input Real p307;
        output Real y;
    algorithm
        y :=  p307 * R_GnRH_i * default / default;
    end function_3;


    function function_4
        	input Real R_GnRH_a;
	input Real default;
	input Real p306;
        output Real y;
    algorithm
        y :=  p306 * R_GnRH_a * default / default;
    end function_4;


    function function_5
        	input Real GnRH_R_i;
	input Real default;
	input Real p305;
        output Real y;
    algorithm
        y :=  p305 * GnRH_R_i * default / default;
    end function_5;


    function function_6
        	input Real GnRH;
	input Real R_GnRH_a;
	input Real default;
	input Real p302;
        output Real y;
    algorithm
        y :=  p302 * GnRH * default * R_GnRH_a * default / default;
    end function_6;


    function function_7
        	input Real R_GnRH_i;
	input Real default;
	input Real p308;
        output Real y;
    algorithm
        y :=  p308 * R_GnRH_i * default / default;
    end function_7;


    function function_8
        	input Real GnRH_R_a;
	input Real default;
	input Real p303;
        output Real y;
    algorithm
        y :=  p303 * GnRH_R_a * default / default;
    end function_8;


    function function_9
        	input Real GnRH;
	input Real default;
	input Real p300;
        output Real y;
    algorithm
        y :=  p300 * GnRH * default / default;
    end function_9;


    function function_10
        	input Real E2;
	input Real P4;
	input Real default;
	input Real facE2;
	input Real facP4;
	input Real p1;
	input Real p2;
	input Real p3;
	input Real p4;
	input Real p6;
	input Real p7;
        output Real y;
    algorithm
        y :=  (p1 + p2 * (E2 * default / (p3 * facE2))^p6 / (1 + (E2 * default / (p3 * facE2))^p6)) / (1 + (P4 * default / (p4 * facP4))^p7) / default;
    end function_10;


    function function_11
        	input Real InhA_delay;
	input Real InhB;
	input Real default;
	input Real freq;
	input Real p11;
	input Real p13;
	input Real p21;
	input Real p22;
	input Real p23;
	input Real p24;
	input Real p25;
        output Real y;
    algorithm
        y :=  (p21 / (1 + (InhA_delay * default / p22)^p24 + (InhB * default / p23)^p25)) * 1 / (1 + (freq / p11)^p13) / default;
    end function_11;


    function function_12
        	input Real Ago_R_a;
	input Real GnRH_R_a;
	input Real LH_Pit;
	input Real default;
	input Real p16;
	input Real p5;
	input Real p8;
	input Real p9;
        output Real y;
    algorithm
        y :=  (p16 + p5 * ((GnRH_R_a * default + Ago_R_a * default) / p8)^p9 / (1 + ((GnRH_R_a * default + Ago_R_a * default) / p8)^p9)) * LH_Pit * default / default;
    end function_12;


    function function_13
        	input Real Ago_R_a;
	input Real FSH_pit;
	input Real GnRH_R_a;
	input Real default;
	input Real p17;
	input Real p18;
	input Real p20;
	input Real p28;
        output Real y;
    algorithm
        y :=  (p17 + p28 * ((GnRH_R_a * default + Ago_R_a * default) / p18)^p20 / (1 + ((GnRH_R_a * default + Ago_R_a * default) / p18)^p20)) * FSH_pit * default / default;
    end function_13;


    function function_14
        	input Real LH_bld;
	input Real R_LH;
	input Real default;
	input Real facLH;
	input Real p230;
        output Real y;
    algorithm
        y :=  (p230 / facLH) * LH_bld * default * R_LH * default / default;
    end function_14;


    function function_15
        	input Real LH_R;
	input Real default;
	input Real p234;
        output Real y;
    algorithm
        y :=  p234 * LH_R * default / default;
    end function_15;


    function function_16
        	input Real R_LH_des;
	input Real default;
	input Real p232;
        output Real y;
    algorithm
        y :=  p232 * R_LH_des * default / default;
    end function_16;


    function function_17
        	input Real LH_bld;
	input Real default;
	input Real p231;
        output Real y;
    algorithm
        y :=  p231 * LH_bld * default / default;
    end function_17;


    function function_18
        	input Real FSH_R;
	input Real default;
	input Real p244;
        output Real y;
    algorithm
        y :=  p244 * FSH_R * default / default;
    end function_18;


    function function_19
        	input Real R_FSH_des;
	input Real default;
	input Real p242;
        output Real y;
    algorithm
        y :=  p242 * R_FSH_des * default / default;
    end function_19;


    function function_20
        	input Real AF1;
	input Real FSH_R;
	input Real default;
	input Real p50;
        output Real y;
    algorithm
        y :=  p50 * FSH_R * default * AF1 * default / default;
    end function_20;


    function function_21
        	input Real FSH_R;
	input Real default;
	input Real p47;
	input Real p48;
	input Real p49;
        output Real y;
    algorithm
        y :=  p49 * (FSH_R * default / p48)^p47 / (1 + (FSH_R * default / p48)^p47) / default;
    end function_21;


    function function_22
        	input Real AF2;
	input Real LH_R;
	input Real R_Foll;
	input Real default;
	input Real p46;
	input Real p51;
	input Real p52;
        output Real y;
    algorithm
        y :=  p51 * (LH_R * default / p52)^p46 * R_Foll * default * AF2 * default / default;
    end function_22;


    function function_23
        	input Real AF3;
	input Real LH_R;
	input Real R_Foll;
	input Real default;
	input Real p32;
	input Real p43;
	input Real p52;
        output Real y;
    algorithm
        y :=  p32 * (LH_R * default / p52)^p43 * R_Foll * default * AF3 * default / default;
    end function_23;


    function function_24
        	input Real AF4;
	input Real LH_R;
	input Real R_Foll;
	input Real default;
	input Real p34;
	input Real p52;
        output Real y;
    algorithm
        y :=  (p34 * LH_R * default / p52) * R_Foll * default * AF4 * default / default;
    end function_24;


    function function_25
        	input Real Sc1;
	input Real default;
	input Real p37;
        output Real y;
    algorithm
        y :=  p37 * Sc1 * default / default;
    end function_25;


    function function_26
        	input Real Sc2;
	input Real default;
	input Real p38;
        output Real y;
    algorithm
        y :=  p38 * Sc2 * default / default;
    end function_26;


    function function_27
        	input Real Ago_R_a;
	input Real GnRH_R_a;
	input Real Lut1;
	input Real default;
	input Real p39;
	input Real p80;
	input Real p83;
	input Real p84;
        output Real y;
    algorithm
        y :=  p39 * (1 + p80 * ((GnRH_R_a * default + Ago_R_a * default) / p83)^p84 / (1 + ((GnRH_R_a * default + Ago_R_a * default) / p83)^p84)) * Lut1 * default / default;
    end function_27;


    function function_28
        	input Real Ago_R_a;
	input Real GnRH_R_a;
	input Real Lut2;
	input Real default;
	input Real p40;
	input Real p80;
	input Real p83;
	input Real p84;
        output Real y;
    algorithm
        y :=  p40 * (1 + p80 * ((GnRH_R_a * default + Ago_R_a * default) / p83)^p84 / (1 + ((GnRH_R_a * default + Ago_R_a * default) / p83)^p84)) * Lut2 * default / default;
    end function_28;


    function function_29
        	input Real Ago_R_a;
	input Real GnRH_R_a;
	input Real Lut3;
	input Real default;
	input Real p41;
	input Real p80;
	input Real p83;
	input Real p84;
        output Real y;
    algorithm
        y :=  p41 * (1 + p80 * ((GnRH_R_a * default + Ago_R_a * default) / p83)^p84 / (1 + ((GnRH_R_a * default + Ago_R_a * default) / p83)^p84)) * Lut3 * default / default;
    end function_29;


    function function_30
        	input Real FSH_bld;
	input Real default;
	input Real p90;
	input Real p91;
	input Real p94;
        output Real y;
    algorithm
        y :=  p94 * (FSH_bld * default / p90)^p91 / (1 + (FSH_bld * default / p90)^p91) / default;
    end function_30;


    function function_31
        	input Real P4;
	input Real R_Foll;
	input Real default;
	input Real facP4;
	input Real p92;
	input Real p93;
	input Real p95;
        output Real y;
    algorithm
        y :=  (p95 * (P4 * default / (p92 * facP4))^p93 / (1 + (P4 * default / (p92 * facP4))^p93)) * R_Foll * default / default;
    end function_31;


    function function_32
        	input Real AF3;
	input Real FSH_R;
	input Real default;
	input Real p31;
	input Real p55;
        output Real y;
    algorithm
        y :=  p31 * FSH_R * default * AF3 * default * (1 - AF3 * default / p55) / default;
    end function_32;


    function function_33
        	input Real AF4;
	input Real LH_R;
	input Real default;
	input Real p33;
	input Real p44;
	input Real p52;
	input Real p55;
        output Real y;
    algorithm
        y :=  p33 * (LH_R * default / p52)^p44 * AF4 * default * (1 - AF4 * default / p55) / default;
    end function_33;


    function function_34
        	input Real LH_R;
	input Real PrF;
	input Real R_Foll;
	input Real default;
	input Real p35;
	input Real p45;
	input Real p52;
        output Real y;
    algorithm
        y :=  p35 * (LH_R * default / p52)^p45 * R_Foll * default * PrF * default / default;
    end function_34;


    function function_35
        	input Real LH_R;
	input Real PrF;
	input Real R_Foll;
	input Real default;
	input Real p27;
	input Real p45;
	input Real p52;
	input Real p53;
	input Real p54;
        output Real y;
    algorithm
        y :=  p27 * R_Foll * default * (LH_R * default / p52)^p45 * (PrF * default / p53)^p54 / (1 + (PrF * default / p53)^p54) / default;
    end function_35;


    function function_36
        	input Real OvF;
	input Real default;
	input Real p36;
        output Real y;
    algorithm
        y :=  p36 * OvF * default / default;
    end function_36;


    function function_37
        	input Real OvF;
	input Real default;
	input Real p26;
	input Real p56;
	input Real p57;
        output Real y;
    algorithm
        y :=  p26 * (OvF * default / p56)^p57 / (1 + (OvF * default / p56)^p57) / default;
    end function_37;


    function function_39
        	input Real AF2;
	input Real AF3;
	input Real AF4;
	input Real LH_bld;
	input Real Lut1;
	input Real Lut4;
	input Real PrF;
	input Real default;
	input Real facE2;
	input Real p152;
	input Real p158;
	input Real p159;
	input Real p160;
	input Real p161;
	input Real p164;
	input Real p165;
        output Real y;
    algorithm
        y :=  facE2 * (p158 + p152 * AF2 * default + p159 * AF3 * default * LH_bld * default + p160 * AF4 * default + p161 * PrF * default * LH_bld * default + p164 * Lut1 * default + p165 * Lut4 * default) / default;
    end function_39;


    function function_38
        	input Real Ago_R_a;
	input Real GnRH_R_a;
	input Real Lut4;
	input Real default;
	input Real p42;
	input Real p80;
	input Real p83;
	input Real p84;
        output Real y;
    algorithm
        y :=  p42 * (1 + p80 * ((GnRH_R_a * default + Ago_R_a * default) / p83)^p84 / (1 + ((GnRH_R_a * default + Ago_R_a * default) / p83)^p84)) * Lut4 * default / default;
    end function_38;


    function function_40
        	input Real E2;
	input Real default;
	input Real p154;
        output Real y;
    algorithm
        y :=  p154 * E2 * default / default;
    end function_40;


    function function_41
        	input Real Lut4;
	input Real default;
	input Real facP4;
	input Real p166;
	input Real p167;
        output Real y;
    algorithm
        y :=  facP4 * (p166 + p167 * Lut4 * default) / default;
    end function_41;


    function function_42
        	input Real Lut1;
	input Real Lut2;
	input Real Lut3;
	input Real Lut4;
	input Real PrF;
	input Real Sc1;
	input Real default;
	input Real p168;
	input Real p169;
	input Real p170;
	input Real p171;
	input Real p172;
	input Real p177;
	input Real p178;
        output Real y;
    algorithm
        y :=  (p168 + p169 * PrF * default + p177 * Sc1 * default + p178 * Lut1 * default + p170 * Lut2 * default + p171 * Lut3 * default + p172 * Lut4 * default) / default;
    end function_42;


    function function_43
        	input Real P4;
	input Real default;
	input Real p155;
        output Real y;
    algorithm
        y :=  p155 * P4 * default / default;
    end function_43;


    function function_44
        	input Real AF2;
	input Real Sc2;
	input Real default;
	input Real p173;
	input Real p174;
	input Real p175;
        output Real y;
    algorithm
        y :=  (p173 + p174 * AF2 * default + p175 * Sc2 * default) / default;
    end function_44;


    function function_45
        	input Real InhB;
	input Real default;
	input Real p157;
        output Real y;
    algorithm
        y :=  p157 * InhB * default / default;
    end function_45;


    function function_46
        	input Real InhA_delay;
	input Real default;
	input Real p30;
        output Real y;
    algorithm
        y :=  p30 * InhA_delay * default / default;
    end function_46;


    function function_47
        	input Real default;
	input Real p311;
        output Real y;
    algorithm
        y :=  p311 / default;
    end function_47;


    function function_48
        	input Real GnRH_R_i;
	input Real default;
	input Real p304;
        output Real y;
    algorithm
        y :=  p304 * GnRH_R_i * default / default;
    end function_48;


    function function_49
        	input Real default;
	input Real freq;
	input Real mass;
        output Real y;
    algorithm
        y :=  freq * mass / default;
    end function_49;


    function function_50
        	input Real FSH_bld;
	input Real default;
	input Real p241;
        output Real y;
    algorithm
        y :=  p241 * FSH_bld * default / default;
    end function_50;


    function function_51
        	input Real Ago_R_a;
	input Real GnRH_R_a;
	input Real LH_Pit;
	input Real default;
	input Real facLH;
	input Real p12;
	input Real p16;
	input Real p5;
	input Real p8;
	input Real p9;
        output Real y;
    algorithm
        y :=  (facLH / p12) * (p16 + p5 * ((GnRH_R_a * default + Ago_R_a * default) / p8)^p9 / (1 + ((GnRH_R_a * default + Ago_R_a * default) / p8)^p9)) * LH_Pit * default / default;
    end function_51;


    function function_52
        	input Real Ago_R_a;
	input Real FSH_pit;
	input Real GnRH_R_a;
	input Real default;
	input Real facFSH;
	input Real p12;
	input Real p17;
	input Real p18;
	input Real p20;
	input Real p28;
        output Real y;
    algorithm
        y :=  (facFSH / p12) * (p17 + p28 * ((GnRH_R_a * default + Ago_R_a * default) / p18)^p20 / (1 + ((GnRH_R_a * default + Ago_R_a * default) / p18)^p20)) * FSH_pit * default / default;
    end function_52;


    function function_53
        	input Real FSH_bld;
	input Real R_FSH;
	input Real default;
	input Real facFSH;
	input Real p240;
        output Real y;
    algorithm
        y :=  (p240 / facFSH) * FSH_bld * default * R_FSH * default / default;
    end function_53;


    function function_54
        	input Real InhA;
	input Real default;
	input Real p156;
        output Real y;
    algorithm
        y :=  p156 * InhA * default / default;
    end function_54;


    function function_55
        	input Real Ago_c;
	input Real default;
	input Real p275;
        output Real y;
    algorithm
        y :=  p275 * Ago_c * default / default;
    end function_55;


    function function_56
        	input Real Ago_R_a;
	input Real default;
	input Real p319;
        output Real y;
    algorithm
        y :=  p319 * Ago_R_a * default / default;
    end function_56;


    function function_57
        	input Real Ago_R_i;
	input Real default;
	input Real p320;
        output Real y;
    algorithm
        y :=  p320 * Ago_R_i * default / default;
    end function_57;


    function function_58
        	input Real Ago_R_i;
	input Real default;
	input Real p314;
        output Real y;
    algorithm
        y :=  p314 * Ago_R_i * default / default;
    end function_58;


    function function_59
        	input Real Ago_c;
	input Real R_GnRH_a;
	input Real default;
	input Real p312;
        output Real y;
    algorithm
        y :=  p312 * R_GnRH_a * default * Ago_c * default / default;
    end function_59;


    function function_60
        	input Real Ago_R_a;
	input Real default;
	input Real p313;
        output Real y;
    algorithm
        y :=  p313 * Ago_R_a * default / default;
    end function_60;


    function function_61
        	input Real Ago_R_i;
	input Real default;
	input Real p315;
        output Real y;
    algorithm
        y :=  p315 * Ago_R_i * default / default;
    end function_61;


    function function_62
        	input Real Ago_d;
	input Real default;
	input Real p274;
        output Real y;
    algorithm
        y :=  p274 * Ago_d * default / default;
    end function_62;


    function function_63
        	input Real Ago_d;
	input Real default;
	input Real p273;
	input Real p274;
        output Real y;
    algorithm
        y :=  (p274 / p273) * Ago_d * default / default;
    end function_63;


    function function_64
        	input Real Ant_d;
	input Real default;
	input Real p474;
        output Real y;
    algorithm
        y :=  p474 * Ant_d / default;
    end function_64;


    function function_65
        	input Real Ant_d;
	input Real default;
	input Real p473;
	input Real p474;
        output Real y;
    algorithm
        y :=  (p474 / p473) * Ant_d / default;
    end function_65;


    function function_66
        	input Real Ant_c;
	input Real default;
	input Real p475;
        output Real y;
    algorithm
        y :=  p475 * Ant_c / default;
    end function_66;


    function function_67
        	input Real Ant_R;
	input Real default;
	input Real p513;
        output Real y;
    algorithm
        y :=  p513 * Ant_R / default;
    end function_67;


    function function_68
        	input Real Ant_c;
	input Real R_GnRH_a;
	input Real default;
	input Real p512;
        output Real y;
    algorithm
        y :=  p512 * R_GnRH_a * default * Ant_c / default;
    end function_68;


    function function_69
        	input Real Ant_R;
	input Real default;
	input Real p514;
        output Real y;
    algorithm
        y :=  p514 * Ant_R / default;
    end function_69;


    function function_70
        	input Real Ant_c;
	input Real default;
	input Real p476;
        output Real y;
    algorithm
        y :=  p476 * Ant_c / default;
    end function_70;


    function function_71
        	input Real Ant_p;
	input Real default;
	input Real p477;
        output Real y;
    algorithm
        y :=  p477 * Ant_p / default;
    end function_71;


    parameter Real p1 = 7309.91587614104;
    parameter Real p2 = 7309.91587614104;
    parameter Real p174 = 447.467334884553;
    parameter Real p173 = 89.4934669769107;
    parameter Real p3 = 192.2041;
    parameter Real p4 = 2.3708;
    parameter Real p6 = 10.0;
    parameter Real p7 = 1.0;
    parameter Real p175 = 134240.200465366;
    parameter Real p152 = 2.09450510112762;
    parameter Real p158 = 51.558081260068;
    parameter Real p159 = 9.28;
    parameter Real p160 = 3480.27;
    parameter Real p161 = 0.972;
    parameter Real p164 = 1713.71039914086;
    parameter Real p165 = 8675.13871487382;
    parameter Real p154 = 5.23500984428137;
    parameter Real p168 = 1.44522999821013;
    parameter Real p169 = 2.28494719885448;
    parameter Real p170 = 28.2110255951316;
    parameter Real p171 = 216.85;
    parameter Real p172 = 114.247359942724;
    parameter Real p177 = 60.0;
    parameter Real p178 = 180.0;
    parameter Real p166 = 0.9426346876678;
    parameter Real p167 = 761.643100053696;
    parameter Real p155 = 5.12958654018257;
    parameter Real p301 = 0.005593;
    parameter Real p203 = 1.2;
    parameter Real p204 = 2.0;
    parameter Real p205 = 220.0;
    parameter Real p206 = 10.0;
    parameter Real p208 = 220.0;
    parameter Real p209 = 2.0;
    parameter Real p210 = 9.6;
    parameter Real p211 = 1.0;
    parameter Real p12 = 5.0;
    parameter Real p300 = 0.447467334884553;
    parameter Real p30 = 0.1989;
    parameter Real p21 = 22129.0495793807;
    parameter Real p22 = 95.81;
    parameter Real p23 = 70.0;
    parameter Real p24 = 5.0;
    parameter Real p25 = 2.0;
    parameter Real p11 = 10.0;
    parameter Real p13 = 3.0;
    parameter Real p8 = 0.0003;
    parameter Real p9 = 5.0;
    parameter Real p16 = 0.00476024700196886;
    parameter Real p5 = 0.190415249686773;
    parameter Real p302 = 322.176481116879;
    parameter Real p307 = 32.2176481116879;
    parameter Real p306 = 3.22176481116878;
    parameter Real p308 = 0.0894934669769107;
    parameter Real p311 = 8.94934669769107e-05;
    parameter Real p303 = 644.352962233757;
    parameter Real p309 = 32.2176481116879;
    parameter Real p310 = 3.222;
    parameter Real p305 = 32.2176481116879;
    parameter Real p231 = 74.8505459101486;
    parameter Real p230 = 2.1430105602291;
    parameter Real p234 = 183.363164488992;
    parameter Real p232 = 68.9493466976911;
    parameter Real p17 = 0.0569894397708967;
    parameter Real p28 = 0.27201539287632;
    parameter Real p18 = 0.0003;
    parameter Real p20 = 2.0;
    parameter Real p240 = 3.52890638983354;
    parameter Real p242 = 61.0291748702345;
    parameter Real p244 = 138.303203866118;
    parameter Real p94 = 0.2186056917845;
    parameter Real p90 = 3.0;
    parameter Real p91 = 5.0;
    parameter Real p95 = 1.34267048505459;
    parameter Real p92 = 1.2348;
    parameter Real p93 = 5.0;
    parameter Real p49 = 3.66180418829425;
    parameter Real p48 = 0.608121;
    parameter Real p47 = 3.0;
    parameter Real p50 = 1.22060139609808;
    parameter Real p51 = 4.88231609092536;
    parameter Real p52 = 2.7262;
    parameter Real p46 = 3.68896;
    parameter Real p32 = 122.060139609808;
    parameter Real p43 = 5.0;
    parameter Real p31 = 0.122060139609808;
    parameter Real p55 = 10.0;
    parameter Real p33 = 12.2060139609808;
    parameter Real p44 = 2.0;
    parameter Real p34 = 332.754608913549;
    parameter Real p35 = 122.060139609808;
    parameter Real p45 = 6.0;
    parameter Real p27 = 7.98433864327904;
    parameter Real p53 = 3.0;
    parameter Real p54 = 10.0;
    parameter Real p36 = 12.2060139609808;
    parameter Real p26 = 1.20834079112225;
    parameter Real p56 = 0.02;
    parameter Real p57 = 10.0;
    parameter Real p37 = 1.22060139609808;
    parameter Real p38 = 0.958117057454806;
    parameter Real p39 = 0.924735994272418;
    parameter Real p83 = 0.0008;
    parameter Real p84 = 5.0;
    parameter Real p40 = 0.756765706103455;
    parameter Real p41 = 0.610291748702345;
    parameter Real p42 = 0.542840522641847;
    parameter Real p156 = 4.28718453552891;
    parameter Real p157 = 172.453910864507;
    parameter Real p304 = 0.00894934669769107;
    parameter Real p241 = 114.247359942724;
    parameter Real p80 = 20.0;
    parameter Real facE2 = 1.0;
    parameter Real facP4 = 1.0;
    parameter Real facLH = 1.0;
    parameter Real facFSH = 1.0;
    parameter Real p202 = 16.0;
    parameter Real p201 = 1.0;
    parameter Real p274 = 54.2;
    parameter Real p275 = 2.65;
    parameter Real p273 = 38.12;
    parameter Real p313 = 644.35;
    parameter Real p312 = 322.18;
    parameter Real p314 = 0.009;
    parameter Real p315 = 32.22;
    parameter Real p319 = 32.22;
    parameter Real p320 = 3.22;
    parameter Real p269 = 91.0;
    parameter Real p272 = 100.0;
    parameter Real p512 = 322.18;
    parameter Real p513 = 644.35;
    parameter Real p514 = 0.009;
    parameter Real p474 = 45.56;
    parameter Real p475 = 5.0;
    parameter Real p473 = 34.9;
    parameter Real p476 = 3.216;
    parameter Real p477 = 4.76;
    parameter Real p469 = 34.0;
    parameter Real p472 = 500.0;
    parameter Real default = 1.0;

    Real freq(start=3.17876449742659);
    Real mass(start=0.00120799195301476);

    Real AF1;
    Real AF2;
    Real E2;
    Real FSH_R;
    Real FSH_bld;
    Real FSH_pit;
    Real GnRH;
    Real GnRH_R_a;
    Real GnRH_R_i;
    Real InhA;
    Real InhA_delay;
    Real InhB;
    Real LH_Pit;
    Real LH_R;
    Real LH_bld;
    Real Lut1;
    Real Lut2;
    Real Lut3;
    Real Lut4;
    Real OvF;
    Real P4;
    Real PrF;
    Real R_FSH;
    Real R_FSH_des;
    Real R_Foll;
    Real R_GnRH_a;
    Real R_GnRH_i;
    Real R_LH;
    Real R_LH_des;
    Real csa1_degraded;
    Real s33;
    Real s38;
    Real s62;
    Real s64;
    Real s66;
    Real s67;
    Real s69;
    Real s71;
    Real s72;
    Real s74;
    Real s76;
    Real s78;
    Real s82;
    Real s85;
    Real s87;
    Real s92;
    Real s93;
    Real s94;
    Real s95;
    Real sa1_degraded;
    Real sa28_degraded;
    Real sa31_degraded;
    Real sa35_degraded;
    Real sa3_degraded;
    Real sa52_degraded;
    Real sa53_degraded;
    Real sa61_degraded;
    Real sa75_degraded;
    Real sa78_degraded;
    Real sa86_degraded;
    Real Sc1;
    Real Sc2;
    Real AF3;
    Real AF4;
    Real Ago_c;
    Real Ago_d;
    Real s102;
    Real s106;
    Real s108;
    Real s107;
    Real Ago_R_i;
    Real Ago_R_a;
    Real Ant_d;
    Real Ant_c;
    Real Ant_p;
    Real Ant_R;
    Real s113;
    Real s114;
    Real s115;
    Real s116;

initial equation
    AF1 = 2.26;
    AF2 = 19.92;
    E2 = 45.0;
    FSH_R = 0.662;
    FSH_bld = 4.1;
    FSH_pit = 48627.2;
    GnRH = 0.00326;
    GnRH_R_a = 1.447e-05;
    GnRH_R_i = 1.294e-05;
    InhA = 1.07;
    InhA_delay = 86.84;
    InhB = 52.18;
    LH_Pit = 261119.0;
    LH_R = 0.263;
    LH_bld = 2.667;
    Lut1 = 2.762e-05;
    Lut2 = 0.0003772;
    Lut3 = 0.00334;
    Lut4 = 0.01385;
    OvF = 7.652e-19;
    P4 = 2.41;
    PrF = 0.244;
    R_FSH = 6.341;
    R_FSH_des = 1.497;
    R_Foll = 0.119;
    R_GnRH_a = 0.00928;
    R_GnRH_i = 0.0009409;
    R_LH = 8.41;
    R_LH_des = 0.699;
    csa1_degraded = 1.0;
    s33 = 1.0;
    s38 = 1.0;
    s62 = 1.0;
    s64 = 1.0;
    s66 = 1.0;
    s67 = 1.0;
    s69 = 1.0;
    s71 = 1.0;
    s72 = 1.0;
    s74 = 1.0;
    s76 = 1.0;
    s78 = 1.0;
    s82 = 1.0;
    s85 = 1.0;
    s87 = 1.0;
    s92 = 1.0;
    s93 = 1.0;
    s94 = 1.0;
    s95 = 1.0;
    sa1_degraded = 1.0;
    sa28_degraded = 1.0;
    sa31_degraded = 1.0;
    sa35_degraded = 1.0;
    sa3_degraded = 1.0;
    sa52_degraded = 1.0;
    sa53_degraded = 1.0;
    sa61_degraded = 1.0;
    sa75_degraded = 1.0;
    sa78_degraded = 1.0;
    sa86_degraded = 1.0;
    Sc1 = 1.098e-08;
    Sc2 = 2.171e-06;
    AF3 = 0.504;
    AF4 = 1.604e-05;
    Ago_c = 0.0;
    Ago_d = 0.0;
    s102 = 1.0;
    s106 = 1.0;
    s108 = 1.0;
    s107 = 1.0;
    Ago_R_i = 0.0;
    Ago_R_a = 0.0;
    Ant_d = 0.0;
    Ant_c = 0.0;
    Ant_p = 0.0;
    Ant_R = 0.0;
    s113 = 0.0;
    s114 = 0.0;
    s115 = 0.0;
    s116 = 0.0;

equation
    freq = p202 / (1 + pow(P4 * p201 * default / p7 / (p203 * facP4), p204)) * (1 + p201 * pow(E2 * p201 * default / p7 / (p205 * facE2), p206) / (1 + pow(E2 * p201 * default / p7 / (p205 * facE2), p206)));
    mass = p301 * (pow(E2 * p201 * default / p7 / (p208 * facE2), p209) / (1 + pow(E2 * p201 * default / p7 / (p208 * facE2), p209)) + 1 / (1 + pow(E2 * p201 * default / p7 / (p210 * facE2), p211)));
    der(AF1) = (default * function_21(FSH_R, default, p47, p48, p49)) - (default * function_20(AF1, FSH_R, default, p50));
    der(AF2) = (default * function_20(AF1, FSH_R, default, p50)) - (default * function_22(AF2, LH_R, R_Foll, default, p46, p51, p52));
    der(E2) = (default * function_39(AF2, AF3, AF4, LH_bld, Lut1, Lut4, PrF, default, facE2, p152, p158, p159, p160, p161, p164, p165)) - (default * function_40(E2, default, p154));
    der(FSH_R) = (default * function_53(FSH_bld, R_FSH, default, facFSH, p240)) - (default * function_18(FSH_R, default, p244));
    der(FSH_bld) = (default * function_52(Ago_R_a, FSH_pit, GnRH_R_a, default, facFSH, p12, p17, p18, p20, p28)) - (default * function_50(FSH_bld, default, p241)) - (default * function_53(FSH_bld, R_FSH, default, facFSH, p240));
    der(FSH_pit) = (default * function_11(InhA_delay, InhB, default, freq, p11, p13, p21, p22, p23, p24, p25)) - (default * function_13(Ago_R_a, FSH_pit, GnRH_R_a, default, p17, p18, p20, p28));
    der(GnRH) = (default * function_8(GnRH_R_a, default, p303)) + (default * function_49(default, freq, mass)) - (default * function_6(GnRH, R_GnRH_a, default, p302)) - (default * function_9(GnRH, default, p300));
    der(GnRH_R_a) = (default * function_2(GnRH_R_i, default, p310)) + (default * function_6(GnRH, R_GnRH_a, default, p302)) - (default * function_1(GnRH_R_a, default, p309)) - (default * function_8(GnRH_R_a, default, p303));
    der(GnRH_R_i) = (default * function_1(GnRH_R_a, default, p309)) - (default * function_2(GnRH_R_i, default, p310)) - (default * function_5(GnRH_R_i, default, p305)) - (default * function_48(GnRH_R_i, default, p304));
    der(InhA) = (default * function_42(Lut1, Lut2, Lut3, Lut4, PrF, Sc1, default, p168, p169, p170, p171, p172, p177, p178)) - (default * function_54(InhA, default, p156));
    der(InhA_delay) = (default * function_54(InhA, default, p156)) - (default * function_46(InhA_delay, default, p30));
    der(InhB) = (default * function_44(AF2, Sc2, default, p173, p174, p175)) - (default * function_45(InhB, default, p157));
    der(LH_Pit) = (default * function_10(E2, P4, default, facE2, facP4, p1, p2, p3, p4, p6, p7)) - (default * function_12(Ago_R_a, GnRH_R_a, LH_Pit, default, p16, p5, p8, p9));
    der(LH_R) = (default * function_14(LH_bld, R_LH, default, facLH, p230)) - (default * function_15(LH_R, default, p234));
    der(LH_bld) = (default * function_51(Ago_R_a, GnRH_R_a, LH_Pit, default, facLH, p12, p16, p5, p8, p9)) - (default * function_14(LH_bld, R_LH, default, facLH, p230)) - (default * function_17(LH_bld, default, p231));
    der(Lut1) = (default * function_26(Sc2, default, p38)) - (default * function_27(Ago_R_a, GnRH_R_a, Lut1, default, p39, p80, p83, p84));
    der(Lut2) = (default * function_27(Ago_R_a, GnRH_R_a, Lut1, default, p39, p80, p83, p84)) - (default * function_28(Ago_R_a, GnRH_R_a, Lut2, default, p40, p80, p83, p84));
    der(Lut3) = (default * function_28(Ago_R_a, GnRH_R_a, Lut2, default, p40, p80, p83, p84)) - (default * function_29(Ago_R_a, GnRH_R_a, Lut3, default, p41, p80, p83, p84));
    der(Lut4) = (default * function_29(Ago_R_a, GnRH_R_a, Lut3, default, p41, p80, p83, p84)) - (default * function_38(Ago_R_a, GnRH_R_a, Lut4, default, p42, p80, p83, p84));
    der(OvF) = (default * function_35(LH_R, PrF, R_Foll, default, p27, p45, p52, p53, p54)) - (default * function_36(OvF, default, p36));
    der(P4) = (default * function_41(Lut4, default, facP4, p166, p167)) - (default * function_43(P4, default, p155));
    der(PrF) = (default * function_24(AF4, LH_R, R_Foll, default, p34, p52)) - (default * function_34(LH_R, PrF, R_Foll, default, p35, p45, p52));
    der(R_FSH) = (default * function_19(R_FSH_des, default, p242)) - (default * function_53(FSH_bld, R_FSH, default, facFSH, p240));
    der(R_FSH_des) = (default * function_18(FSH_R, default, p244)) - (default * function_19(R_FSH_des, default, p242));
    der(R_Foll) = (default * function_30(FSH_bld, default, p90, p91, p94)) - (default * function_31(P4, R_Foll, default, facP4, p92, p93, p95));
    der(R_GnRH_a) = (default * function_3(R_GnRH_i, default, p307)) + (default * function_8(GnRH_R_a, default, p303)) + (default * function_60(Ago_R_a, default, p313)) + (default * function_67(Ant_R, default, p513)) - (default * function_4(R_GnRH_a, default, p306)) - (default * function_6(GnRH, R_GnRH_a, default, p302)) - (default * function_59(Ago_c, R_GnRH_a, default, p312)) - (default * function_68(Ant_c, R_GnRH_a, default, p512));
    der(R_GnRH_i) = (default * function_4(R_GnRH_a, default, p306)) + (default * function_5(GnRH_R_i, default, p305)) + (default * function_47(default, p311)) + (default * function_61(Ago_R_i, default, p315)) - (default * function_3(R_GnRH_i, default, p307)) - (default * function_7(R_GnRH_i, default, p308));
    der(R_LH) = (default * function_16(R_LH_des, default, p232)) - (default * function_14(LH_bld, R_LH, default, facLH, p230));
    der(R_LH_des) = (default * function_15(LH_R, default, p234)) - (default * function_16(R_LH_des, default, p232));
    der(csa1_degraded) = 0.0;
    der(s33) = 0.0;
    der(s38) = 0.0;
    der(s62) = 0.0;
    der(s64) = 0.0;
    der(s66) = 0.0;
    der(s67) = 0.0;
    der(s69) = 0.0;
    der(s71) = 0.0;
    der(s72) = 0.0;
    der(s74) = 0.0;
    der(s76) = 0.0;
    der(s78) = 0.0;
    der(s82) = 0.0;
    der(s85) = 0.0;
    der(s87) = 0.0;
    der(s92) = 0.0;
    der(s93) = 0.0;
    der(s94) = 0.0;
    der(s95) = 0.0;
    der(sa1_degraded) = 0.0;
    der(sa28_degraded) = 0.0;
    der(sa31_degraded) = 0.0;
    der(sa35_degraded) = 0.0;
    der(sa3_degraded) = 0.0;
    der(sa52_degraded) = 0.0;
    der(sa53_degraded) = 0.0;
    der(sa61_degraded) = 0.0;
    der(sa75_degraded) = 0.0;
    der(sa78_degraded) = 0.0;
    der(sa86_degraded) = 0.0;
    der(Sc1) = (default * function_37(OvF, default, p26, p56, p57)) - (default * function_25(Sc1, default, p37));
    der(Sc2) = (default * function_25(Sc1, default, p37)) - (default * function_26(Sc2, default, p38));
    der(AF3) = (default * function_22(AF2, LH_R, R_Foll, default, p46, p51, p52)) + (default * function_32(AF3, FSH_R, default, p31, p55)) - (default * function_23(AF3, LH_R, R_Foll, default, p32, p43, p52));
    der(AF4) = (default * function_23(AF3, LH_R, R_Foll, default, p32, p43, p52)) + (default * function_33(AF4, LH_R, default, p33, p44, p52, p55)) - (default * function_24(AF4, LH_R, R_Foll, default, p34, p52));
    der(Ago_c) = (default * function_60(Ago_R_a, default, p313)) + (default * function_63(Ago_d, default, p273, p274)) - (default * function_55(Ago_c, default, p275)) - (default * function_59(Ago_c, R_GnRH_a, default, p312));
    der(Ago_d) =  - (default * function_62(Ago_d, default, p274));
    der(s102) = 0.0;
    der(s106) = 0.0;
    der(s108) = 0.0;
    der(s107) = 0.0;
    der(Ago_R_i) = (default * function_56(Ago_R_a, default, p319)) - (default * function_57(Ago_R_i, default, p320)) - (default * function_58(Ago_R_i, default, p314)) - (default * function_61(Ago_R_i, default, p315));
    der(Ago_R_a) = (default * function_57(Ago_R_i, default, p320)) + (default * function_59(Ago_c, R_GnRH_a, default, p312)) - (default * function_56(Ago_R_a, default, p319)) - (default * function_60(Ago_R_a, default, p313));
    der(Ant_d) =  - (default * function_64(Ant_d, default, p474));
    der(Ant_c) = (default * function_65(Ant_d, default, p473, p474)) + (default * function_67(Ant_R, default, p513)) + (default * function_71(Ant_p, default, p477)) - (default * function_66(Ant_c, default, p475)) - (default * function_68(Ant_c, R_GnRH_a, default, p512)) - (default * function_70(Ant_c, default, p476));
    der(Ant_p) = (default * function_70(Ant_c, default, p476)) - (default * function_71(Ant_p, default, p477));
    der(Ant_R) = (default * function_68(Ant_c, R_GnRH_a, default, p512)) - (default * function_67(Ant_R, default, p513)) - (default * function_69(Ant_R, default, p514));
    der(s113) = (default * function_64(Ant_d, default, p474)) ;
    der(s114) =  - (default * function_65(Ant_d, default, p473, p474));
    der(s115) = (default * function_66(Ant_c, default, p475)) ;
    der(s116) = (default * function_69(Ant_R, default, p514)) ;


    when time >= p269 then
        reinit(Ago_d,p272 / default);
    end when;
    when time >= p469 then
        reinit(Ant_d,Ant_d + p472);
    end when;

end BIOMD494;
