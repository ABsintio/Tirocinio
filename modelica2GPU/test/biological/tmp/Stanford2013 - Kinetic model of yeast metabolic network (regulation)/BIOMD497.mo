
model BIOMD497 "Stanford2013 - Kinetic model of yeast metabolic network (regulation)"

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


    function MAX
        	input Real a;
	input Real b;
	input Real piecewise(a;
	input Real a >= b;
        output Real y;
    algorithm
        y :=  b);
    end MAX;


    function function_36
        	input Real Keq_r_0159;
	input Real Vmax_r_0159;
	input Real intracellular;
	input Real kmp_s_0393r_0159;
	input Real kmp_s_0917r_0159;
	input Real kms_s_1290r_0159;
	input Real kms_s_1434_br_0159;
	input Real s_0393;
	input Real s_0917;
	input Real s_1290;
	input Real s_1434_b;
        output Real y;
    algorithm
        y :=  Vmax_r_0159 * ((1 / kms_s_1290r_0159)^1 * (1 / kms_s_1434_br_0159)^1 * (s_1290^1 * s_1434_b^1 - s_0393^1 * s_0917^1 / Keq_r_0159) / ((1 + s_1290 / kms_s_1290r_0159) * (1 + s_1434_b / kms_s_1434_br_0159) + (1 + s_0393 / kmp_s_0393r_0159) * (1 + s_0917 / kmp_s_0917r_0159) - 1)) / intracellular;
    end function_36;


    function function_37
        	input Real Keq_r_0163;
	input Real Vmax_r_0163;
	input Real intracellular;
	input Real kmp_s_0434r_0163;
	input Real kmp_s_0446r_0163;
	input Real kms_s_0400r_0163;
	input Real s_0400;
	input Real s_0434;
	input Real s_0446;
        output Real y;
    algorithm
        y :=  Vmax_r_0163 * ((1 / kms_s_0400r_0163)^2 * (s_0400^2 - s_0434^1 * s_0446^1 / Keq_r_0163) / (1 + s_0400 / kms_s_0400r_0163 + (1 + s_0434 / kmp_s_0434r_0163) * (1 + s_0446 / kmp_s_0446r_0163) - 1)) / intracellular;
    end function_37;


    function function_38
        	input Real Keq_r_0165;
	input Real Vmax_r_0165;
	input Real intracellular;
	input Real kmp_s_0434r_0165;
	input Real kmp_s_0755r_0165;
	input Real kms_s_0400r_0165;
	input Real kms_s_0706r_0165;
	input Real s_0400;
	input Real s_0434;
	input Real s_0706;
	input Real s_0755;
        output Real y;
    algorithm
        y :=  Vmax_r_0165 * ((1 / kms_s_0400r_0165)^1 * (1 / kms_s_0706r_0165)^1 * (s_0400^1 * s_0706^1 - s_0434^1 * s_0755^1 / Keq_r_0165) / ((1 + s_0400 / kms_s_0400r_0165) * (1 + s_0706 / kms_s_0706r_0165) + (1 + s_0434 / kmp_s_0434r_0165) * (1 + s_0755 / kmp_s_0755r_0165) - 1)) / intracellular;
    end function_38;


    function function_39
        	input Real Keq_r_0169;
	input Real Vmax_r_0169;
	input Real intracellular;
	input Real kmp_s_0317r_0169;
	input Real kmp_s_0692r_0169;
	input Real kms_s_0009r_0169;
	input Real s_0009;
	input Real s_0317;
	input Real s_0692;
        output Real y;
    algorithm
        y :=  Vmax_r_0169 * ((1 / kms_s_0009r_0169)^1 * (s_0009^1 - s_0317^1 * s_0692^1 / Keq_r_0169) / (1 + s_0009 / kms_s_0009r_0169 + (1 + s_0317 / kmp_s_0317r_0169) * (1 + s_0692 / kmp_s_0692r_0169) - 1)) / intracellular;
    end function_39;


    function function_40
        	input Real Keq_r_0170;
	input Real Vmax_r_0170;
	input Real intracellular;
	input Real kmp_s_0706r_0170;
	input Real kmp_s_0763_br_0170;
	input Real kmp_s_1053r_0170;
	input Real kmp_s_1207r_0170;
	input Real kms_s_0755r_0170;
	input Real kms_s_0816r_0170;
	input Real kms_s_0881r_0170;
	input Real s_0706;
	input Real s_0755;
	input Real s_0763_b;
	input Real s_0816;
	input Real s_0881;
	input Real s_1053;
	input Real s_1207;
        output Real y;
    algorithm
        y :=  Vmax_r_0170 * ((1 / kms_s_0755r_0170)^1 * (1 / kms_s_0816r_0170)^1 * (1 / kms_s_0881r_0170)^1 * (s_0755^1 * s_0816^1 * s_0881^1 - s_0706^1 * s_0763_b^2 * s_1053^1 * s_1207^1 / Keq_r_0170) / ((1 + s_0755 / kms_s_0755r_0170) * (1 + s_0816 / kms_s_0816r_0170) * (1 + s_0881 / kms_s_0881r_0170) + (1 + s_0706 / kmp_s_0706r_0170) * (1 + s_0763_b / kmp_s_0763_br_0170) * (1 + s_1053 / kmp_s_1053r_0170) * (1 + s_1207 / kmp_s_1207r_0170) - 1)) / intracellular;
    end function_40;


    function function_41
        	input Real Keq_r_0171;
	input Real Vmax_r_0171;
	input Real intracellular;
	input Real kmp_s_0434r_0171;
	input Real kmp_s_0692r_0171;
	input Real kms_s_1053r_0171;
	input Real s_0434;
	input Real s_0692;
	input Real s_1053;
        output Real y;
    algorithm
        y :=  Vmax_r_0171 * ((1 / kms_s_1053r_0171)^1 * (s_1053^1 - s_0434^1 * s_0692^1 / Keq_r_0171) / (1 + s_1053 / kms_s_1053r_0171 + (1 + s_0434 / kmp_s_0434r_0171) * (1 + s_0692 / kmp_s_0692r_0171) - 1)) / intracellular;
    end function_41;


    function function_42
        	input Real Keq_r_0172;
	input Real Vmax_r_0172;
	input Real intracellular;
	input Real kmp_s_0206r_0172;
	input Real kmp_s_0400r_0172;
	input Real kmp_s_0763_br_0172;
	input Real kms_s_0304r_0172;
	input Real kms_s_0446r_0172;
	input Real s_0206;
	input Real s_0304;
	input Real s_0400;
	input Real s_0446;
	input Real s_0763_b;
        output Real y;
    algorithm
        y :=  Vmax_r_0172 * ((1 / kms_s_0304r_0172)^1 * (1 / kms_s_0446r_0172)^1 * (s_0304^1 * s_0446^1 - s_0206^1 * s_0400^1 * s_0763_b^1 / Keq_r_0172) / ((1 + s_0304 / kms_s_0304r_0172) * (1 + s_0446 / kms_s_0446r_0172) + (1 + s_0206 / kmp_s_0206r_0172) * (1 + s_0400 / kmp_s_0400r_0172) * (1 + s_0763_b / kmp_s_0763_br_0172) - 1)) / intracellular;
    end function_42;


    function function_43
        	input Real Keq_r_0174;
	input Real Vmax_r_0174;
	input Real intracellular;
	input Real kmp_s_0740r_0174;
	input Real kmp_s_1277r_0174;
	input Real kms_s_0749r_0174;
	input Real kms_s_0863r_0174;
	input Real s_0740;
	input Real s_0749;
	input Real s_0863;
	input Real s_1277;
        output Real y;
    algorithm
        y :=  Vmax_r_0174 * ((1 / kms_s_0749r_0174)^1 * (1 / kms_s_0863r_0174)^1 * (s_0749^1 * s_0863^1 - s_0740^1 * s_1277^1 / Keq_r_0174) / ((1 + s_0749 / kms_s_0749r_0174) * (1 + s_0863 / kms_s_0863r_0174) + (1 + s_0740 / kmp_s_0740r_0174) * (1 + s_1277 / kmp_s_1277r_0174) - 1)) / intracellular;
    end function_43;


    function function_44
        	input Real Keq_r_0183;
	input Real Vmax_r_0183;
	input Real intracellular;
	input Real kmp_s_0650r_0183;
	input Real kmp_s_1082r_0183;
	input Real kms_s_0366r_0183;
	input Real kms_s_0763_br_0183;
	input Real kms_s_1087r_0183;
	input Real s_0366;
	input Real s_0650;
	input Real s_0763_b;
	input Real s_1082;
	input Real s_1087;
        output Real y;
    algorithm
        y :=  Vmax_r_0183 * ((1 / kms_s_0366r_0183)^1 * (1 / kms_s_0763_br_0183)^1 * (1 / kms_s_1087r_0183)^1 * (s_0366^1 * s_0763_b^1 * s_1087^1 - s_0650^1 * s_1082^1 / Keq_r_0183) / ((1 + s_0366 / kms_s_0366r_0183) * (1 + s_0763_b / kms_s_0763_br_0183) * (1 + s_1087 / kms_s_1087r_0183) + (1 + s_0650 / kmp_s_0650r_0183) * (1 + s_1082 / kmp_s_1082r_0183) - 1)) / intracellular;
    end function_44;


    function function_45
        	input Real Keq_r_0191;
	input Real Vmax_r_0191;
	input Real intracellular;
	input Real kmp_s_0369r_0191;
	input Real kmp_s_0763_br_0191;
	input Real kmp_s_1096r_0191;
	input Real kms_s_0366r_0191;
	input Real kms_s_1091r_0191;
	input Real kms_s_1434_br_0191;
	input Real s_0366;
	input Real s_0369;
	input Real s_0763_b;
	input Real s_1091;
	input Real s_1096;
	input Real s_1434_b;
        output Real y;
    algorithm
        y :=  Vmax_r_0191 * ((1 / kms_s_0366r_0191)^1 * (1 / kms_s_1091r_0191)^1 * (1 / kms_s_1434_br_0191)^1 * (s_0366^1 * s_1091^1 * s_1434_b^1 - s_0369^1 * s_0763_b^2 * s_1096^1 / Keq_r_0191) / ((1 + s_0366 / kms_s_0366r_0191) * (1 + s_1091 / kms_s_1091r_0191) * (1 + s_1434_b / kms_s_1434_br_0191) + (1 + s_0369 / kmp_s_0369r_0191) * (1 + s_0763_b / kmp_s_0763_br_0191) * (1 + s_1096 / kmp_s_1096r_0191) - 1)) / intracellular;
    end function_45;


    function function_47
        	input Real Keq_r_0220;
	input Real Vmax_r_0220;
	input Real intracellular;
	input Real kmp_s_0605r_0220;
	input Real kmp_s_1066r_0220;
	input Real kms_s_0331r_0220;
	input Real kms_s_0439r_0220;
	input Real s_0331;
	input Real s_0439;
	input Real s_0605;
	input Real s_1066;
        output Real y;
    algorithm
        y :=  Vmax_r_0220 * ((1 / kms_s_0331r_0220)^1 * (1 / kms_s_0439r_0220)^1 * (s_0331^1 * s_0439^1 - s_0605^1 * s_1066^1 / Keq_r_0220) / ((1 + s_0331 / kms_s_0331r_0220) * (1 + s_0439 / kms_s_0439r_0220) + (1 + s_0605 / kmp_s_0605r_0220) * (1 + s_1066 / kmp_s_1066r_0220) - 1)) / intracellular;
    end function_47;


    function function_48
        	input Real Keq_r_0221;
	input Real Vmax_r_0221;
	input Real intracellular;
	input Real kmp_s_0439r_0221;
	input Real kmp_s_0763_br_0221;
	input Real kmp_s_0899r_0221;
	input Real kmp_s_1277r_0221;
	input Real kms_s_0500r_0221;
	input Real kms_s_0907r_0221;
	input Real s_0439;
	input Real s_0500;
	input Real s_0763_b;
	input Real s_0899;
	input Real s_0907;
	input Real s_1277;
        output Real y;
    algorithm
        y :=  Vmax_r_0221 * ((1 / kms_s_0500r_0221)^1 * (1 / kms_s_0907r_0221)^1 * (s_0500^1 * s_0907^1 - s_0439^1 * s_0763_b^1 * s_0899^1 * s_1277^1 / Keq_r_0221) / ((1 + s_0500 / kms_s_0500r_0221) * (1 + s_0907 / kms_s_0907r_0221) + (1 + s_0439 / kmp_s_0439r_0221) * (1 + s_0763_b / kmp_s_0763_br_0221) * (1 + s_0899 / kmp_s_0899r_0221) * (1 + s_1277 / kmp_s_1277r_0221) - 1)) / intracellular;
    end function_48;


    function function_49
        	input Real Keq_r_0225;
	input Real Vmax_r_0225;
	input Real intracellular;
	input Real kmp_s_0692r_0225;
	input Real kmp_s_0873r_0225;
	input Real kms_s_0017r_0225;
	input Real s_0017;
	input Real s_0692;
	input Real s_0873;
        output Real y;
    algorithm
        y :=  Vmax_r_0225 * ((1 / kms_s_0017r_0225)^1 * (s_0017^1 - s_0692^1 * s_0873^1 / Keq_r_0225) / (1 + s_0017 / kms_s_0017r_0225 + (1 + s_0692 / kmp_s_0692r_0225) * (1 + s_0873 / kmp_s_0873r_0225) - 1)) / intracellular;
    end function_49;


    function function_50
        	input Real Keq_r_0226;
	input Real Vmax_r_0226;
	input Real intracellular;
	input Real kmp_s_0017r_0226;
	input Real kmp_s_0434r_0226;
	input Real kmp_s_0605r_0226;
	input Real kmp_s_0763_br_0226;
	input Real kms_s_0446r_0226;
	input Real kms_s_0881r_0226;
	input Real kms_s_0887r_0226;
	input Real s_0017;
	input Real s_0434;
	input Real s_0446;
	input Real s_0605;
	input Real s_0763_b;
	input Real s_0881;
	input Real s_0887;
        output Real y;
    algorithm
        y :=  Vmax_r_0226 * ((1 / kms_s_0446r_0226)^1 * (1 / kms_s_0881r_0226)^1 * (1 / kms_s_0887r_0226)^1 * (s_0446^1 * s_0881^1 * s_0887^1 - s_0017^1 * s_0434^1 * s_0605^1 * s_0763_b^1 / Keq_r_0226) / ((1 + s_0446 / kms_s_0446r_0226) * (1 + s_0881 / kms_s_0881r_0226) * (1 + s_0887 / kms_s_0887r_0226) + (1 + s_0017 / kmp_s_0017r_0226) * (1 + s_0434 / kmp_s_0434r_0226) * (1 + s_0605 / kmp_s_0605r_0226) * (1 + s_0763_b / kmp_s_0763_br_0226) - 1)) / intracellular;
    end function_50;


    function function_51
        	input Real Keq_r_0229;
	input Real Vmax_r_0229;
	input Real intracellular;
	input Real kmp_s_0434r_0229;
	input Real kmp_s_0605r_0229;
	input Real kmp_s_0763_br_0229;
	input Real kmp_s_0877r_0229;
	input Real kmp_s_0899r_0229;
	input Real kms_s_0446r_0229;
	input Real kms_s_0881r_0229;
	input Real kms_s_0907r_0229;
	input Real kms_s_1434_br_0229;
	input Real s_0434;
	input Real s_0446;
	input Real s_0605;
	input Real s_0763_b;
	input Real s_0877;
	input Real s_0881;
	input Real s_0899;
	input Real s_0907;
	input Real s_1434_b;
        output Real y;
    algorithm
        y :=  Vmax_r_0229 * ((1 / kms_s_0446r_0229)^1 * (1 / kms_s_0881r_0229)^1 * (1 / kms_s_0907r_0229)^1 * (1 / kms_s_1434_br_0229)^1 * (s_0446^1 * s_0881^1 * s_0907^1 * s_1434_b^1 - s_0434^1 * s_0605^1 * s_0763_b^1 * s_0877^1 * s_0899^1 / Keq_r_0229) / ((1 + s_0446 / kms_s_0446r_0229) * (1 + s_0881 / kms_s_0881r_0229) * (1 + s_0907 / kms_s_0907r_0229) * (1 + s_1434_b / kms_s_1434_br_0229) + (1 + s_0434 / kmp_s_0434r_0229) * (1 + s_0605 / kmp_s_0605r_0229) * (1 + s_0763_b / kmp_s_0763_br_0229) * (1 + s_0877 / kmp_s_0877r_0229) * (1 + s_0899 / kmp_s_0899r_0229) - 1)) / intracellular;
    end function_51;


    function function_52
        	input Real Keq_r_0232;
	input Real Vmax_r_0232;
	input Real intracellular;
	input Real kmp_s_0763_br_0232;
	input Real kmp_s_1073r_0232;
	input Real kmp_s_1207r_0232;
	input Real kms_s_0469r_0232;
	input Real kms_s_0881r_0232;
	input Real s_0469;
	input Real s_0763_b;
	input Real s_0881;
	input Real s_1073;
	input Real s_1207;
        output Real y;
    algorithm
        y :=  Vmax_r_0232 * ((1 / kms_s_0469r_0232)^1 * (1 / kms_s_0881r_0232)^1 * (s_0469^1 * s_0881^1 - s_0763_b^1 * s_1073^1 * s_1207^1 / Keq_r_0232) / ((1 + s_0469 / kms_s_0469r_0232) * (1 + s_0881 / kms_s_0881r_0232) + (1 + s_0763_b / kmp_s_0763_br_0232) * (1 + s_1073 / kmp_s_1073r_0232) * (1 + s_1207 / kmp_s_1207r_0232) - 1)) / intracellular;
    end function_52;


    function function_53
        	input Real Keq_r_0233;
	input Real Vmax_r_0233;
	input Real intracellular;
	input Real kmp_s_0301r_0233;
	input Real kmp_s_0400r_0233;
	input Real kms_s_0446r_0233;
	input Real kms_s_0881r_0233;
	input Real s_0301;
	input Real s_0400;
	input Real s_0446;
	input Real s_0881;
        output Real y;
    algorithm
        y :=  Vmax_r_0233 * ((1 / kms_s_0446r_0233)^1 * (1 / kms_s_0881r_0233)^1 * (s_0446^1 * s_0881^1 - s_0301^1 * s_0400^1 / Keq_r_0233) / ((1 + s_0446 / kms_s_0446r_0233) * (1 + s_0881 / kms_s_0881r_0233) + (1 + s_0301 / kmp_s_0301r_0233) * (1 + s_0400 / kmp_s_0400r_0233) - 1)) / intracellular;
    end function_53;


    function function_54
        	input Real Keq_r_0235;
	input Real Vmax_r_0235;
	input Real intracellular;
	input Real kmp_s_0185r_0235;
	input Real kmp_s_0881r_0235;
	input Real kms_s_0899r_0235;
	input Real kms_s_1156r_0235;
	input Real s_0185;
	input Real s_0881;
	input Real s_0899;
	input Real s_1156;
        output Real y;
    algorithm
        y :=  Vmax_r_0235 * ((1 / kms_s_0899r_0235)^1 * (1 / kms_s_1156r_0235)^1 * (s_0899^1 * s_1156^1 - s_0185^1 * s_0881^1 / Keq_r_0235) / ((1 + s_0899 / kms_s_0899r_0235) * (1 + s_1156 / kms_s_1156r_0235) + (1 + s_0185 / kmp_s_0185r_0235) * (1 + s_0881 / kmp_s_0881r_0235) - 1)) / intracellular;
    end function_54;


    function function_55
        	input Real Keq_r_0238;
	input Real Vmax_r_0238;
	input Real intracellular;
	input Real kmp_s_0886r_0238;
	input Real kmp_s_1091r_0238;
	input Real kmp_s_1207r_0238;
	input Real kms_s_0301r_0238;
	input Real kms_s_0763_br_0238;
	input Real kms_s_1096r_0238;
	input Real s_0301;
	input Real s_0763_b;
	input Real s_0886;
	input Real s_1091;
	input Real s_1096;
	input Real s_1207;
        output Real y;
    algorithm
        y :=  Vmax_r_0238 * ((1 / kms_s_0301r_0238)^1 * (1 / kms_s_0763_br_0238)^1 * (1 / kms_s_1096r_0238)^1 * (s_0301^1 * s_0763_b^1 * s_1096^1 - s_0886^1 * s_1091^1 * s_1207^1 / Keq_r_0238) / ((1 + s_0301 / kms_s_0301r_0238) * (1 + s_0763_b / kms_s_0763_br_0238) * (1 + s_1096 / kms_s_1096r_0238) + (1 + s_0886 / kmp_s_0886r_0238) * (1 + s_1091 / kmp_s_1091r_0238) * (1 + s_1207 / kmp_s_1207r_0238) - 1)) / intracellular;
    end function_55;


    function function_56
        	input Real Keq_r_0245;
	input Real Vmax_r_0245;
	input Real intracellular;
	input Real kmp_s_0334r_0245;
	input Real kmp_s_0605r_0245;
	input Real kms_s_0331r_0245;
	input Real kms_s_0446r_0245;
	input Real s_0331;
	input Real s_0334;
	input Real s_0446;
	input Real s_0605;
        output Real y;
    algorithm
        y :=  Vmax_r_0245 * ((1 / kms_s_0331r_0245)^1 * (1 / kms_s_0446r_0245)^1 * (s_0331^1 * s_0446^1 - s_0334^1 * s_0605^1 / Keq_r_0245) / ((1 + s_0331 / kms_s_0331r_0245) * (1 + s_0446 / kms_s_0446r_0245) + (1 + s_0334 / kmp_s_0334r_0245) * (1 + s_0605 / kmp_s_0605r_0245) - 1)) / intracellular;
    end function_56;


    function function_57
        	input Real Keq_r_0246;
	input Real Vmax_r_0246;
	input Real intracellular;
	input Real kmp_s_0446r_0246;
	input Real kmp_s_0763_br_0246;
	input Real kmp_s_1434_br_0246;
	input Real kms_s_0400r_0246;
	input Real kms_s_0763_br_0246;
	input Real kms_s_1207r_0246;
	input Real s_0400;
	input Real s_0446;
	input Real s_0763_b;
	input Real s_1207;
	input Real s_1434_b;
        output Real y;
    algorithm
        y :=  Vmax_r_0246 * ((1 / kms_s_0400r_0246)^1 * (1 / kms_s_0763_br_0246)^3 * (1 / kms_s_1207r_0246)^1 * (s_0400^1 * s_0763_b^3 * s_1207^1 - s_0446^1 * s_0763_b^2 * s_1434_b^1 / Keq_r_0246) / ((1 + s_0400 / kms_s_0400r_0246) * (1 + s_0763_b / kms_s_0763_br_0246) * (1 + s_1207 / kms_s_1207r_0246) + (1 + s_0446 / kmp_s_0446r_0246) * (1 + s_0763_b / kmp_s_0763_br_0246) * (1 + s_1434_b / kmp_s_1434_br_0246) - 1)) / intracellular;
    end function_57;


    function function_1
        	input Real Keq_r_0005;
	input Real Vmax_r_0005;
	input Real intracellular;
	input Real kmp_s_0001r_0005;
	input Real kmp_s_0763_br_0005;
	input Real kmp_s_1411r_0005;
	input Real kms_s_1415r_0005;
	input Real s_0001;
	input Real s_0763_b;
	input Real s_1411;
	input Real s_1415;
        output Real y;
    algorithm
        y :=  Vmax_r_0005 * ((1 / kms_s_1415r_0005)^1 * (s_1415^1 - s_0001^1 * s_0763_b^1 * s_1411^1 / Keq_r_0005) / (1 + s_1415 / kms_s_1415r_0005 + (1 + s_0001 / kmp_s_0001r_0005) * (1 + s_0763_b / kmp_s_0763_br_0005) * (1 + s_1411 / kmp_s_1411r_0005) - 1)) / intracellular;
    end function_1;


    function function_2
        	input Real Keq_r_0006;
	input Real Vmax_r_0006;
	input Real intracellular;
	input Real kmp_s_0743r_0006;
	input Real kmp_s_1434_br_0006;
	input Real kms_s_0438r_0006;
	input Real s_0438;
	input Real s_0743;
	input Real s_1434_b;
        output Real y;
    algorithm
        y :=  Vmax_r_0006 * ((1 / kms_s_0438r_0006)^1 * (s_0438^1 - s_0743^1 * s_1434_b^1 / Keq_r_0006) / (1 + s_0438 / kms_s_0438r_0006 + (1 + s_0743 / kmp_s_0743r_0006) * (1 + s_1434_b / kmp_s_1434_br_0006) - 1)) / intracellular;
    end function_2;


    function function_3
        	input Real Keq_r_0008;
	input Real Vmax_r_0008;
	input Real intracellular;
	input Real kmp_s_0315r_0008;
	input Real kms_s_0079r_0008;
	input Real s_0079;
	input Real s_0315;
        output Real y;
    algorithm
        y :=  Vmax_r_0008 * ((1 / kms_s_0079r_0008)^1 * (s_0079^1 - s_0315^1 / Keq_r_0008) / (1 + s_0079 / kms_s_0079r_0008 + 1 + s_0315 / kmp_s_0315r_0008 - 1)) / intracellular;
    end function_3;


    function function_4
        	input Real Keq_r_0009;
	input Real Vmax_r_0009;
	input Real intracellular;
	input Real kmp_s_0514r_0009;
	input Real kmp_s_0763_br_0009;
	input Real kmp_s_1215r_0009;
	input Real kms_s_0083r_0009;
	input Real kms_s_0386r_0009;
	input Real s_0083;
	input Real s_0386;
	input Real s_0514;
	input Real s_0763_b;
	input Real s_1215;
        output Real y;
    algorithm
        y :=  Vmax_r_0009 * ((1 / kms_s_0083r_0009)^1 * (1 / kms_s_0386r_0009)^1 * (s_0083^1 * s_0386^1 - s_0514^1 * s_0763_b^4 * s_1215^1 / Keq_r_0009) / ((1 + s_0083 / kms_s_0083r_0009) * (1 + s_0386 / kms_s_0386r_0009) + (1 + s_0514 / kmp_s_0514r_0009) * (1 + s_0763_b / kmp_s_0763_br_0009) * (1 + s_1215 / kmp_s_1215r_0009) - 1)) / intracellular;
    end function_4;


    function function_5
        	input Real Keq_r_0014;
	input Real Vmax_r_0014;
	input Real intracellular;
	input Real kmp_s_0319r_0014;
	input Real kmp_s_0430r_0014;
	input Real kms_s_0146r_0014;
	input Real kms_s_0763_br_0014;
	input Real kms_s_1434_br_0014;
	input Real s_0146;
	input Real s_0319;
	input Real s_0430;
	input Real s_0763_b;
	input Real s_1434_b;
        output Real y;
    algorithm
        y :=  Vmax_r_0014 * ((1 / kms_s_0146r_0014)^1 * (1 / kms_s_0763_br_0014)^1 * (1 / kms_s_1434_br_0014)^1 * (s_0146^1 * s_0763_b^1 * s_1434_b^1 - s_0319^1 * s_0430^1 / Keq_r_0014) / ((1 + s_0146 / kms_s_0146r_0014) * (1 + s_0763_b / kms_s_0763_br_0014) * (1 + s_1434_b / kms_s_1434_br_0014) + (1 + s_0319 / kmp_s_0319r_0014) * (1 + s_0430 / kmp_s_0430r_0014) - 1)) / intracellular;
    end function_5;


    function function_6
        	input Real Keq_r_0015;
	input Real Vmax_r_0015;
	input Real intracellular;
	input Real kmp_s_0146r_0015;
	input Real kmp_s_1091r_0015;
	input Real kms_s_0145r_0015;
	input Real kms_s_0763_br_0015;
	input Real kms_s_1096r_0015;
	input Real s_0145;
	input Real s_0146;
	input Real s_0763_b;
	input Real s_1091;
	input Real s_1096;
        output Real y;
    algorithm
        y :=  Vmax_r_0015 * ((1 / kms_s_0145r_0015)^1 * (1 / kms_s_0763_br_0015)^1 * (1 / kms_s_1096r_0015)^1 * (s_0145^1 * s_0763_b^1 * s_1096^1 - s_0146^1 * s_1091^1 / Keq_r_0015) / ((1 + s_0145 / kms_s_0145r_0015) * (1 + s_0763_b / kms_s_0763_br_0015) * (1 + s_1096 / kms_s_1096r_0015) + (1 + s_0146 / kmp_s_0146r_0015) * (1 + s_1091 / kmp_s_1091r_0015) - 1)) / intracellular;
    end function_6;


    function function_7
        	input Real Keq_r_0016;
	input Real Vmax_r_0016;
	input Real intracellular;
	input Real kmp_s_0042r_0016;
	input Real kmp_s_0470r_0016;
	input Real kms_s_0183r_0016;
	input Real kms_s_0763_br_0016;
	input Real kms_s_1277r_0016;
	input Real s_0042;
	input Real s_0183;
	input Real s_0470;
	input Real s_0763_b;
	input Real s_1277;
        output Real y;
    algorithm
        y :=  Vmax_r_0016 * ((1 / kms_s_0183r_0016)^1 * (1 / kms_s_0763_br_0016)^1 * (1 / kms_s_1277r_0016)^1 * (s_0183^1 * s_0763_b^1 * s_1277^1 - s_0042^1 * s_0470^1 / Keq_r_0016) / ((1 + s_0183 / kms_s_0183r_0016) * (1 + s_0763_b / kms_s_0763_br_0016) * (1 + s_1277 / kms_s_1277r_0016) + (1 + s_0042 / kmp_s_0042r_0016) * (1 + s_0470 / kmp_s_0470r_0016) - 1)) / intracellular;
    end function_7;


    function function_8
        	input Real Keq_r_0018;
	input Real Vmax_r_0018;
	input Real intracellular;
	input Real kmp_s_0185r_0018;
	input Real kmp_s_0861r_0018;
	input Real kms_s_0181r_0018;
	input Real kms_s_0899r_0018;
	input Real s_0181;
	input Real s_0185;
	input Real s_0861;
	input Real s_0899;
        output Real y;
    algorithm
        y :=  Vmax_r_0018 * ((1 / kms_s_0181r_0018)^1 * (1 / kms_s_0899r_0018)^1 * (s_0181^1 * s_0899^1 - s_0185^1 * s_0861^1 / Keq_r_0018) / ((1 + s_0181 / kms_s_0181r_0018) * (1 + s_0899 / kms_s_0899r_0018) + (1 + s_0185 / kmp_s_0185r_0018) * (1 + s_0861 / kmp_s_0861r_0018) - 1)) / intracellular;
    end function_8;


    function function_9
        	input Real Keq_r_0021;
	input Real Vmax_r_0021;
	input Real intracellular;
	input Real kmp_s_0356r_0021;
	input Real kmp_s_1207r_0021;
	input Real kms_s_0533r_0021;
	input Real kms_s_1243r_0021;
	input Real kms_s_1434_br_0021;
	input Real s_0356;
	input Real s_0533;
	input Real s_1207;
	input Real s_1243;
	input Real s_1434_b;
        output Real y;
    algorithm
        y :=  Vmax_r_0021 * ((1 / kms_s_0533r_0021)^1 * (1 / kms_s_1243r_0021)^1 * (1 / kms_s_1434_br_0021)^1 * (s_0533^1 * s_1243^1 * s_1434_b^1 - s_0356^1 * s_1207^1 / Keq_r_0021) / ((1 + s_0533 / kms_s_0533r_0021) * (1 + s_1243 / kms_s_1243r_0021) * (1 + s_1434_b / kms_s_1434_br_0021) + (1 + s_0356 / kmp_s_0356r_0021) * (1 + s_1207 / kmp_s_1207r_0021) - 1)) / intracellular;
    end function_9;


    function function_10
        	input Real Keq_r_0025;
	input Real Vmax_r_0025;
	input Real intracellular;
	input Real kmp_s_0170r_0025;
	input Real kmp_s_1434_br_0025;
	input Real kms_s_0167r_0025;
	input Real s_0167;
	input Real s_0170;
	input Real s_1434_b;
        output Real y;
    algorithm
        y :=  Vmax_r_0025 * ((1 / kms_s_0167r_0025)^1 * (s_0167^1 - s_0170^1 * s_1434_b^1 / Keq_r_0025) / (1 + s_0167 / kms_s_0167r_0025 + (1 + s_0170 / kmp_s_0170r_0025) * (1 + s_1434_b / kmp_s_1434_br_0025) - 1)) / intracellular;
    end function_10;


    function function_11
        	input Real Keq_r_0026;
	input Real Vmax_r_0026;
	input Real intracellular;
	input Real kmp_s_0167r_0026;
	input Real kmp_s_0514r_0026;
	input Real kmp_s_0763_br_0026;
	input Real kms_s_0238r_0026;
	input Real kms_s_0380r_0026;
	input Real kms_s_1434_br_0026;
	input Real s_0167;
	input Real s_0238;
	input Real s_0380;
	input Real s_0514;
	input Real s_0763_b;
	input Real s_1434_b;
        output Real y;
    algorithm
        y :=  Vmax_r_0026 * ((1 / kms_s_0238r_0026)^1 * (1 / kms_s_0380r_0026)^1 * (1 / kms_s_1434_br_0026)^1 * (s_0238^1 * s_0380^1 * s_1434_b^1 - s_0167^1 * s_0514^1 * s_0763_b^1 / Keq_r_0026) / ((1 + s_0238 / kms_s_0238r_0026) * (1 + s_0380 / kms_s_0380r_0026) * (1 + s_1434_b / kms_s_1434_br_0026) + (1 + s_0167 / kmp_s_0167r_0026) * (1 + s_0514 / kmp_s_0514r_0026) * (1 + s_0763_b / kmp_s_0763_br_0026) - 1)) / intracellular;
    end function_11;


    function function_12
        	input Real Keq_r_0029;
	input Real Vmax_r_0029;
	input Real intracellular;
	input Real kmp_s_0468r_0029;
	input Real kmp_s_1434_br_0029;
	input Real kms_s_0798r_0029;
	input Real s_0468;
	input Real s_0798;
	input Real s_1434_b;
        output Real y;
    algorithm
        y :=  Vmax_r_0029 * ((1 / kms_s_0798r_0029)^1 * (s_0798^1 - s_0468^1 * s_1434_b^1 / Keq_r_0029) / (1 + s_0798 / kms_s_0798r_0029 + (1 + s_0468 / kmp_s_0468r_0029) * (1 + s_1434_b / kmp_s_1434_br_0029) - 1)) / intracellular;
    end function_12;


    function function_13
        	input Real Keq_r_0031;
	input Real Vmax_r_0031;
	input Real intracellular;
	input Real kmp_s_0297r_0031;
	input Real kmp_s_0470r_0031;
	input Real kms_s_0010r_0031;
	input Real kms_s_0763_br_0031;
	input Real s_0010;
	input Real s_0297;
	input Real s_0470;
	input Real s_0763_b;
        output Real y;
    algorithm
        y :=  Vmax_r_0031 * ((1 / kms_s_0010r_0031)^1 * (1 / kms_s_0763_br_0031)^1 * (s_0010^1 * s_0763_b^1 - s_0297^1 * s_0470^1 / Keq_r_0031) / ((1 + s_0010 / kms_s_0010r_0031) * (1 + s_0763_b / kms_s_0763_br_0031) + (1 + s_0297 / kmp_s_0297r_0031) * (1 + s_0470 / kmp_s_0470r_0031) - 1)) / intracellular;
    end function_13;


    function function_14
        	input Real Keq_r_0034;
	input Real Vmax_r_0034;
	input Real intracellular;
	input Real kmp_s_0434r_0034;
	input Real kmp_s_1207r_0034;
	input Real kms_s_0397r_0034;
	input Real kms_s_1434_br_0034;
	input Real s_0397;
	input Real s_0434;
	input Real s_1207;
	input Real s_1434_b;
        output Real y;
    algorithm
        y :=  Vmax_r_0034 * ((1 / kms_s_0397r_0034)^1 * (1 / kms_s_1434_br_0034)^1 * (s_0397^1 * s_1434_b^1 - s_0434^1 * s_1207^1 / Keq_r_0034) / ((1 + s_0397 / kms_s_0397r_0034) * (1 + s_1434_b / kms_s_1434_br_0034) + (1 + s_0434 / kmp_s_0434r_0034) * (1 + s_1207 / kmp_s_1207r_0034) - 1)) / intracellular;
    end function_14;


    function function_15
        	input Real Keq_r_0040;
	input Real Vmax_r_0040;
	input Real intracellular;
	input Real kmp_s_0163r_0040;
	input Real kmp_s_0689r_0040;
	input Real kmp_s_0763_br_0040;
	input Real kms_s_0557r_0040;
	input Real s_0163;
	input Real s_0557;
	input Real s_0689;
	input Real s_0763_b;
        output Real y;
    algorithm
        y :=  Vmax_r_0040 * ((1 / kms_s_0557r_0040)^1 * (s_0557^1 - s_0163^1 * s_0689^1 * s_0763_b^1 / Keq_r_0040) / (1 + s_0557 / kms_s_0557r_0040 + (1 + s_0163 / kmp_s_0163r_0040) * (1 + s_0689 / kmp_s_0689r_0040) * (1 + s_0763_b / kmp_s_0763_br_0040) - 1)) / intracellular;
    end function_15;


    function function_16
        	input Real Keq_r_0042;
	input Real Vmax_r_0042;
	input Real intracellular;
	input Real kmp_s_0217r_0042;
	input Real kmp_s_1434_br_0042;
	input Real kms_s_0216r_0042;
	input Real s_0216;
	input Real s_0217;
	input Real s_1434_b;
        output Real y;
    algorithm
        y :=  Vmax_r_0042 * ((1 / kms_s_0216r_0042)^1 * (s_0216^1 - s_0217^1 * s_1434_b^1 / Keq_r_0042) / (1 + s_0216 / kms_s_0216r_0042 + (1 + s_0217 / kmp_s_0217r_0042) * (1 + s_1434_b / kmp_s_1434_br_0042) - 1)) / intracellular;
    end function_16;


    function function_17
        	input Real Keq_r_0043;
	input Real Vmax_r_0043;
	input Real intracellular;
	input Real kmp_s_0216r_0043;
	input Real kmp_s_1207r_0043;
	input Real kms_s_0356r_0043;
	input Real s_0216;
	input Real s_0356;
	input Real s_1207;
        output Real y;
    algorithm
        y :=  Vmax_r_0043 * ((1 / kms_s_0356r_0043)^1 * (s_0356^1 - s_0216^1 * s_1207^1 / Keq_r_0043) / (1 + s_0356 / kms_s_0356r_0043 + (1 + s_0216 / kmp_s_0216r_0043) * (1 + s_1207 / kmp_s_1207r_0043) - 1)) / intracellular;
    end function_17;


    function function_18
        	input Real Keq_r_0044;
	input Real Vmax_r_0044;
	input Real intracellular;
	input Real kmp_s_1091r_0044;
	input Real kmp_s_1325r_0044;
	input Real kms_s_0218r_0044;
	input Real kms_s_0763_br_0044;
	input Real kms_s_1096r_0044;
	input Real s_0218;
	input Real s_0763_b;
	input Real s_1091;
	input Real s_1096;
	input Real s_1325;
        output Real y;
    algorithm
        y :=  Vmax_r_0044 * ((1 / kms_s_0218r_0044)^1 * (1 / kms_s_0763_br_0044)^2 * (1 / kms_s_1096r_0044)^1 * (s_0218^1 * s_0763_b^2 * s_1096^1 - s_1091^1 * s_1325^1 / Keq_r_0044) / ((1 + s_0218 / kms_s_0218r_0044) * (1 + s_0763_b / kms_s_0763_br_0044) * (1 + s_1096 / kms_s_1096r_0044) + (1 + s_1091 / kmp_s_1091r_0044) * (1 + s_1325 / kmp_s_1325r_0044) - 1)) / intracellular;
    end function_18;


    function function_19
        	input Real Keq_r_0057;
	input Real Vmax_r_0057;
	input Real intracellular;
	input Real kmp_s_0046r_0057;
	input Real kmp_s_1082r_0057;
	input Real kms_s_0247r_0057;
	input Real kms_s_0763_br_0057;
	input Real kms_s_1087r_0057;
	input Real s_0046;
	input Real s_0247;
	input Real s_0763_b;
	input Real s_1082;
	input Real s_1087;
        output Real y;
    algorithm
        y :=  Vmax_r_0057 * ((1 / kms_s_0247r_0057)^1 * (1 / kms_s_0763_br_0057)^1 * (1 / kms_s_1087r_0057)^1 * (s_0247^1 * s_0763_b^1 * s_1087^1 - s_0046^1 * s_1082^1 / Keq_r_0057) / ((1 + s_0247 / kms_s_0247r_0057) * (1 + s_0763_b / kms_s_0763_br_0057) * (1 + s_1087 / kms_s_1087r_0057) + (1 + s_0046 / kmp_s_0046r_0057) * (1 + s_1082 / kmp_s_1082r_0057) - 1)) / intracellular;
    end function_19;


    function function_20
        	input Real Keq_r_0058;
	input Real Vmax_r_0058;
	input Real intracellular;
	input Real kmp_s_0052r_0058;
	input Real kmp_s_1082r_0058;
	input Real kms_s_0257r_0058;
	input Real kms_s_0763_br_0058;
	input Real kms_s_1087r_0058;
	input Real s_0052;
	input Real s_0257;
	input Real s_0763_b;
	input Real s_1082;
	input Real s_1087;
        output Real y;
    algorithm
        y :=  Vmax_r_0058 * ((1 / kms_s_0257r_0058)^1 * (1 / kms_s_0763_br_0058)^1 * (1 / kms_s_1087r_0058)^1 * (s_0257^1 * s_0763_b^1 * s_1087^1 - s_0052^1 * s_1082^1 / Keq_r_0058) / ((1 + s_0257 / kms_s_0257r_0058) * (1 + s_0763_b / kms_s_0763_br_0058) * (1 + s_1087 / kms_s_1087r_0058) + (1 + s_0052 / kmp_s_0052r_0058) * (1 + s_1082 / kmp_s_1082r_0058) - 1)) / intracellular;
    end function_20;


    function function_21
        	input Real Keq_r_0059;
	input Real Vmax_r_0059;
	input Real intracellular;
	input Real kmp_s_0234r_0059;
	input Real kmp_s_1082r_0059;
	input Real kms_s_0254r_0059;
	input Real kms_s_0763_br_0059;
	input Real kms_s_1087r_0059;
	input Real s_0234;
	input Real s_0254;
	input Real s_0763_b;
	input Real s_1082;
	input Real s_1087;
        output Real y;
    algorithm
        y :=  Vmax_r_0059 * ((1 / kms_s_0254r_0059)^1 * (1 / kms_s_0763_br_0059)^1 * (1 / kms_s_1087r_0059)^1 * (s_0254^1 * s_0763_b^1 * s_1087^1 - s_0234^1 * s_1082^1 / Keq_r_0059) / ((1 + s_0254 / kms_s_0254r_0059) * (1 + s_0763_b / kms_s_0763_br_0059) * (1 + s_1087 / kms_s_1087r_0059) + (1 + s_0234 / kmp_s_0234r_0059) * (1 + s_1082 / kmp_s_1082r_0059) - 1)) / intracellular;
    end function_21;


    function function_22
        	input Real Keq_r_0060;
	input Real Vmax_r_0060;
	input Real intracellular;
	input Real kmp_s_0055r_0060;
	input Real kmp_s_1082r_0060;
	input Real kms_s_0261r_0060;
	input Real kms_s_0763_br_0060;
	input Real kms_s_1087r_0060;
	input Real s_0055;
	input Real s_0261;
	input Real s_0763_b;
	input Real s_1082;
	input Real s_1087;
        output Real y;
    algorithm
        y :=  Vmax_r_0060 * ((1 / kms_s_0261r_0060)^1 * (1 / kms_s_0763_br_0060)^1 * (1 / kms_s_1087r_0060)^1 * (s_0261^1 * s_0763_b^1 * s_1087^1 - s_0055^1 * s_1082^1 / Keq_r_0060) / ((1 + s_0261 / kms_s_0261r_0060) * (1 + s_0763_b / kms_s_0763_br_0060) * (1 + s_1087 / kms_s_1087r_0060) + (1 + s_0055 / kmp_s_0055r_0060) * (1 + s_1082 / kmp_s_1082r_0060) - 1)) / intracellular;
    end function_22;


    function function_23
        	input Real Keq_r_0063;
	input Real Vmax_r_0063;
	input Real intracellular;
	input Real kmp_s_0008r_0063;
	input Real kms_s_0170r_0063;
	input Real kms_s_1434_br_0063;
	input Real s_0008;
	input Real s_0170;
	input Real s_1434_b;
        output Real y;
    algorithm
        y :=  Vmax_r_0063 * ((1 / kms_s_0170r_0063)^1 * (1 / kms_s_1434_br_0063)^1 * (s_0170^1 * s_1434_b^1 - s_0008^1 / Keq_r_0063) / ((1 + s_0170 / kms_s_0170r_0063) * (1 + s_1434_b / kms_s_1434_br_0063) + 1 + s_0008 / kmp_s_0008r_0063 - 1)) / intracellular;
    end function_23;


    function function_24
        	input Real Keq_r_0064;
	input Real Vmax_r_0064;
	input Real intracellular;
	input Real kmp_s_0010r_0064;
	input Real kmp_s_0763_br_0064;
	input Real kmp_s_1087r_0064;
	input Real kms_s_0008r_0064;
	input Real kms_s_1082r_0064;
	input Real s_0008;
	input Real s_0010;
	input Real s_0763_b;
	input Real s_1082;
	input Real s_1087;
        output Real y;
    algorithm
        y :=  Vmax_r_0064 * ((1 / kms_s_0008r_0064)^1 * (1 / kms_s_1082r_0064)^1 * (s_0008^1 * s_1082^1 - s_0010^1 * s_0763_b^1 * s_1087^1 / Keq_r_0064) / ((1 + s_0008 / kms_s_0008r_0064) * (1 + s_1082 / kms_s_1082r_0064) + (1 + s_0010 / kmp_s_0010r_0064) * (1 + s_0763_b / kmp_s_0763_br_0064) * (1 + s_1087 / kmp_s_1087r_0064) - 1)) / intracellular;
    end function_24;


    function function_25
        	input Real Keq_r_0068;
	input Real Vmax_r_0068;
	input Real intracellular;
	input Real kmp_s_0330r_0068;
	input Real kmp_s_1207r_0068;
	input Real kms_s_0267r_0068;
	input Real kms_s_1243r_0068;
	input Real s_0267;
	input Real s_0330;
	input Real s_1207;
	input Real s_1243;
        output Real y;
    algorithm
        y :=  Vmax_r_0068 * ((1 / kms_s_0267r_0068)^1 * (1 / kms_s_1243r_0068)^1 * (s_0267^1 * s_1243^1 - s_0330^1 * s_1207^1 / Keq_r_0068) / ((1 + s_0267 / kms_s_0267r_0068) * (1 + s_1243 / kms_s_1243r_0068) + (1 + s_0330 / kmp_s_0330r_0068) * (1 + s_1207 / kmp_s_1207r_0068) - 1)) / intracellular;
    end function_25;


    function function_26
        	input Real Keq_r_0093;
	input Real Vmax_r_0093;
	input Real intracellular;
	input Real kmp_s_0328r_0093;
	input Real kmp_s_1091r_0093;
	input Real kms_s_0307r_0093;
	input Real kms_s_0763_br_0093;
	input Real kms_s_1096r_0093;
	input Real s_0307;
	input Real s_0328;
	input Real s_0763_b;
	input Real s_1091;
	input Real s_1096;
        output Real y;
    algorithm
        y :=  Vmax_r_0093 * ((1 / kms_s_0307r_0093)^1 * (1 / kms_s_0763_br_0093)^2 * (1 / kms_s_1096r_0093)^1 * (s_0307^1 * s_0763_b^2 * s_1096^1 - s_0328^1 * s_1091^1 / Keq_r_0093) / ((1 + s_0307 / kms_s_0307r_0093) * (1 + s_0763_b / kms_s_0763_br_0093) * (1 + s_1096 / kms_s_1096r_0093) + (1 + s_0328 / kmp_s_0328r_0093) * (1 + s_1091 / kmp_s_1091r_0093) - 1)) / intracellular;
    end function_26;


    function function_27
        	input Real Keq_r_0111;
	input Real Vmax_r_0111;
	input Real intracellular;
	input Real kmp_s_0018r_0111;
	input Real kmp_s_1091r_0111;
	input Real kms_s_0150r_0111;
	input Real kms_s_0763_br_0111;
	input Real kms_s_1096r_0111;
	input Real s_0018;
	input Real s_0150;
	input Real s_0763_b;
	input Real s_1091;
	input Real s_1096;
        output Real y;
    algorithm
        y :=  Vmax_r_0111 * ((1 / kms_s_0150r_0111)^1 * (1 / kms_s_0763_br_0111)^1 * (1 / kms_s_1096r_0111)^1 * (s_0150^1 * s_0763_b^1 * s_1096^1 - s_0018^1 * s_1091^1 / Keq_r_0111) / ((1 + s_0150 / kms_s_0150r_0111) * (1 + s_0763_b / kms_s_0763_br_0111) * (1 + s_1096 / kms_s_1096r_0111) + (1 + s_0018 / kmp_s_0018r_0111) * (1 + s_1091 / kmp_s_1091r_0111) - 1)) / intracellular;
    end function_27;


    function function_28
        	input Real Keq_r_0112;
	input Real Vmax_r_0112;
	input Real intracellular;
	input Real kmp_s_0150r_0112;
	input Real kmp_s_0470r_0112;
	input Real kms_s_0763_br_0112;
	input Real kms_s_1277r_0112;
	input Real s_0150;
	input Real s_0470;
	input Real s_0763_b;
	input Real s_1277;
        output Real y;
    algorithm
        y :=  Vmax_r_0112 * ((1 / kms_s_0763_br_0112)^1 * (1 / kms_s_1277r_0112)^2 * (s_0763_b^1 * s_1277^2 - s_0150^1 * s_0470^1 / Keq_r_0112) / ((1 + s_0763_b / kms_s_0763_br_0112) * (1 + s_1277 / kms_s_1277r_0112) + (1 + s_0150 / kmp_s_0150r_0112) * (1 + s_0470 / kmp_s_0470r_0112) - 1)) / intracellular;
    end function_28;


    function function_29
        	input Real Keq_r_0118;
	input Real Vmax_r_0118;
	input Real intracellular;
	input Real kmp_s_0374r_0118;
	input Real kmp_s_0514r_0118;
	input Real kms_s_0380r_0118;
	input Real s_0374;
	input Real s_0380;
	input Real s_0514;
        output Real y;
    algorithm
        y :=  Vmax_r_0118 * ((1 / kms_s_0380r_0118)^2 * (s_0380^2 - s_0374^1 * s_0514^1 / Keq_r_0118) / (1 + s_0380 / kms_s_0380r_0118 + (1 + s_0374 / kmp_s_0374r_0118) * (1 + s_0514 / kmp_s_0514r_0118) - 1)) / intracellular;
    end function_29;


    function function_30
        	input Real Keq_r_0123;
	input Real Vmax_r_0123;
	input Real intracellular;
	input Real kmp_s_0400r_0123;
	input Real kmp_s_0763_br_0123;
	input Real kmp_s_1005r_0123;
	input Real kmp_s_1207r_0123;
	input Real kms_s_0380r_0123;
	input Real kms_s_0446r_0123;
	input Real kms_s_0458r_0123;
	input Real s_0380;
	input Real s_0400;
	input Real s_0446;
	input Real s_0458;
	input Real s_0763_b;
	input Real s_1005;
	input Real s_1207;
        output Real y;
    algorithm
        y :=  Vmax_r_0123 * ((1 / kms_s_0380r_0123)^1 * (1 / kms_s_0446r_0123)^1 * (1 / kms_s_0458r_0123)^1 * (s_0380^1 * s_0446^1 * s_0458^1 - s_0400^1 * s_0763_b^1 * s_1005^1 * s_1207^1 / Keq_r_0123) / ((1 + s_0380 / kms_s_0380r_0123) * (1 + s_0446 / kms_s_0446r_0123) * (1 + s_0458 / kms_s_0458r_0123) + (1 + s_0400 / kmp_s_0400r_0123) * (1 + s_0763_b / kmp_s_0763_br_0123) * (1 + s_1005 / kmp_s_1005r_0123) * (1 + s_1207 / kmp_s_1207r_0123) - 1)) / intracellular;
    end function_30;


    function function_31
        	input Real Keq_r_0125;
	input Real Vmax_r_0125;
	input Real intracellular;
	input Real kmp_s_0380r_0125;
	input Real kmp_s_1434_br_0125;
	input Real kms_s_0369r_0125;
	input Real kms_s_0514r_0125;
	input Real kms_s_0763_br_0125;
	input Real s_0369;
	input Real s_0380;
	input Real s_0514;
	input Real s_0763_b;
	input Real s_1434_b;
        output Real y;
    algorithm
        y :=  Vmax_r_0125 * ((1 / kms_s_0369r_0125)^1 * (1 / kms_s_0514r_0125)^1 * (1 / kms_s_0763_br_0125)^1 * (s_0369^1 * s_0514^1 * s_0763_b^1 - s_0380^1 * s_1434_b^1 / Keq_r_0125) / ((1 + s_0369 / kms_s_0369r_0125) * (1 + s_0514 / kms_s_0514r_0125) * (1 + s_0763_b / kms_s_0763_br_0125) + (1 + s_0380 / kmp_s_0380r_0125) * (1 + s_1434_b / kmp_s_1434_br_0125) - 1)) / intracellular;
    end function_31;


    function function_32
        	input Real Keq_r_0127;
	input Real Vmax_r_0127;
	input Real intracellular;
	input Real kmp_s_0369r_0127;
	input Real kmp_s_0446r_0127;
	input Real kmp_s_0514r_0127;
	input Real kms_s_0380r_0127;
	input Real kms_s_0434r_0127;
	input Real kms_s_0605r_0127;
	input Real s_0369;
	input Real s_0380;
	input Real s_0434;
	input Real s_0446;
	input Real s_0514;
	input Real s_0605;
        output Real y;
    algorithm
        y :=  Vmax_r_0127 * ((1 / kms_s_0380r_0127)^1 * (1 / kms_s_0434r_0127)^1 * (1 / kms_s_0605r_0127)^1 * (s_0380^1 * s_0434^1 * s_0605^1 - s_0369^1 * s_0446^1 * s_0514^1 / Keq_r_0127) / ((1 + s_0380 / kms_s_0380r_0127) * (1 + s_0434 / kms_s_0434r_0127) * (1 + s_0605 / kms_s_0605r_0127) + (1 + s_0369 / kmp_s_0369r_0127) * (1 + s_0446 / kmp_s_0446r_0127) * (1 + s_0514 / kmp_s_0514r_0127) - 1)) / intracellular;
    end function_32;


    function function_33
        	input Real Keq_r_0130;
	input Real Vmax_r_0130;
	input Real intracellular;
	input Real kmp_s_0400r_0130;
	input Real kmp_s_1070r_0130;
	input Real kms_s_0446r_0130;
	input Real kms_s_1071r_0130;
	input Real s_0400;
	input Real s_0446;
	input Real s_1070;
	input Real s_1071;
        output Real y;
    algorithm
        y :=  Vmax_r_0130 * ((1 / kms_s_0446r_0130)^1 * (1 / kms_s_1071r_0130)^1 * (s_0446^1 * s_1071^1 - s_0400^1 * s_1070^1 / Keq_r_0130) / ((1 + s_0446 / kms_s_0446r_0130) * (1 + s_1071 / kms_s_1071r_0130) + (1 + s_0400 / kmp_s_0400r_0130) * (1 + s_1070 / kmp_s_1070r_0130) - 1)) / intracellular;
    end function_33;


    function function_34
        	input Real Keq_r_0133;
	input Real Vmax_r_0133;
	input Real intracellular;
	input Real kmp_s_0185r_0133;
	input Real kmp_s_1051r_0133;
	input Real kms_s_0149r_0133;
	input Real kms_s_0899r_0133;
	input Real s_0149;
	input Real s_0185;
	input Real s_0899;
	input Real s_1051;
        output Real y;
    algorithm
        y :=  Vmax_r_0133 * ((1 / kms_s_0149r_0133)^1 * (1 / kms_s_0899r_0133)^1 * (s_0149^1 * s_0899^1 - s_0185^1 * s_1051^1 / Keq_r_0133) / ((1 + s_0149 / kms_s_0149r_0133) * (1 + s_0899 / kms_s_0899r_0133) + (1 + s_0185 / kmp_s_0185r_0133) * (1 + s_1051 / kmp_s_1051r_0133) - 1)) / intracellular;
    end function_34;


    function function_35
        	input Real Keq_r_0157;
	input Real Vmax_r_0157;
	input Real intracellular;
	input Real kmp_s_0400r_0157;
	input Real kmp_s_0434r_0157;
	input Real kmp_s_0763_br_0157;
	input Real kms_s_0393r_0157;
	input Real kms_s_0446r_0157;
	input Real s_0393;
	input Real s_0400;
	input Real s_0434;
	input Real s_0446;
	input Real s_0763_b;
        output Real y;
    algorithm
        y :=  Vmax_r_0157 * ((1 / kms_s_0393r_0157)^1 * (1 / kms_s_0446r_0157)^1 * (s_0393^1 * s_0446^1 - s_0400^1 * s_0434^1 * s_0763_b^1 / Keq_r_0157) / ((1 + s_0393 / kms_s_0393r_0157) * (1 + s_0446 / kms_s_0446r_0157) + (1 + s_0400 / kmp_s_0400r_0157) * (1 + s_0434 / kmp_s_0434r_0157) * (1 + s_0763_b / kmp_s_0763_br_0157) - 1)) / intracellular;
    end function_35;


    function function_58
        	input Real Keq_r_0249;
	input Real Vmax_r_0249;
	input Real kmp_s_0400r_0249;
	input Real kmp_s_0766_br_0249;
	input Real kmp_s_1207r_0249;
	input Real kms_s_0446r_0249;
	input Real kms_s_1434_br_0249;
	input Real s_0400;
	input Real s_0446;
	input Real s_0766_b;
	input Real s_1207;
	input Real s_1434_b;
        output Real y;
    algorithm
        y :=  Vmax_r_0249 * ((1 / kms_s_0446r_0249)^1 * (1 / kms_s_1434_br_0249)^1 * (s_0446^1 * s_1434_b^1 - s_0400^1 * s_0766_b^1 * s_1207^1 / Keq_r_0249) / ((1 + s_0446 / kms_s_0446r_0249) * (1 + s_1434_b / kms_s_1434_br_0249) + (1 + s_0400 / kmp_s_0400r_0249) * (1 + s_0766_b / kmp_s_0766_br_0249) * (1 + s_1207 / kmp_s_1207r_0249) - 1));
    end function_58;


    function function_59
        	input Real Keq_r_0251;
	input Real Vmax_r_0251;
	input Real intracellular;
	input Real kmp_s_0458r_0251;
	input Real kmp_s_0763_br_0251;
	input Real kms_s_0470r_0251;
	input Real kms_s_1434_br_0251;
	input Real s_0458;
	input Real s_0470;
	input Real s_0763_b;
	input Real s_1434_b;
        output Real y;
    algorithm
        y :=  Vmax_r_0251 * ((1 / kms_s_0470r_0251)^1 * (1 / kms_s_1434_br_0251)^1 * (s_0470^1 * s_1434_b^1 - s_0458^1 * s_0763_b^1 / Keq_r_0251) / ((1 + s_0470 / kms_s_0470r_0251) * (1 + s_1434_b / kms_s_1434_br_0251) + (1 + s_0458 / kmp_s_0458r_0251) * (1 + s_0763_b / kmp_s_0763_br_0251) - 1)) / intracellular;
    end function_59;


    function function_60
        	input Real Keq_r_0258;
	input Real Vmax_r_0258;
	input Real intracellular;
	input Real kmp_s_0124r_0258;
	input Real kmp_s_1091r_0258;
	input Real kms_s_0268r_0258;
	input Real kms_s_0763_br_0258;
	input Real kms_s_1096r_0258;
	input Real s_0124;
	input Real s_0268;
	input Real s_0763_b;
	input Real s_1091;
	input Real s_1096;
        output Real y;
    algorithm
        y :=  Vmax_r_0258 * ((1 / kms_s_0268r_0258)^1 * (1 / kms_s_0763_br_0258)^1 * (1 / kms_s_1096r_0258)^1 * (s_0268^1 * s_0763_b^1 * s_1096^1 - s_0124^1 * s_1091^1 / Keq_r_0258) / ((1 + s_0268 / kms_s_0268r_0258) * (1 + s_0763_b / kms_s_0763_br_0258) * (1 + s_1096 / kms_s_1096r_0258) + (1 + s_0124 / kmp_s_0124r_0258) * (1 + s_1091 / kmp_s_1091r_0258) - 1)) / intracellular;
    end function_60;


    function function_61
        	input Real Keq_r_0261;
	input Real Vmax_r_0261;
	input Real intracellular;
	input Real kmp_s_0470r_0261;
	input Real kmp_s_0763_br_0261;
	input Real kmp_s_1096r_0261;
	input Real kmp_s_1458r_0261;
	input Real kms_s_1091r_0261;
	input Real kms_s_1457r_0261;
	input Real s_0470;
	input Real s_0763_b;
	input Real s_1091;
	input Real s_1096;
	input Real s_1457;
	input Real s_1458;
        output Real y;
    algorithm
        y :=  Vmax_r_0261 * ((1 / kms_s_1091r_0261)^1 * (1 / kms_s_1457r_0261)^1 * (s_1091^1 * s_1457^1 - s_0470^1 * s_0763_b^1 * s_1096^1 * s_1458^1 / Keq_r_0261) / ((1 + s_1091 / kms_s_1091r_0261) * (1 + s_1457 / kms_s_1457r_0261) + (1 + s_0470 / kmp_s_0470r_0261) * (1 + s_0763_b / kmp_s_0763_br_0261) * (1 + s_1096 / kmp_s_1096r_0261) * (1 + s_1458 / kmp_s_1458r_0261) - 1)) / intracellular;
    end function_61;


    function function_62
        	input Real Keq_r_0262;
	input Real Vmax_r_0262;
	input Real intracellular;
	input Real kmp_s_0215r_0262;
	input Real kmp_s_0470r_0262;
	input Real kmp_s_0763_br_0262;
	input Real kmp_s_1087r_0262;
	input Real kms_s_0303r_0262;
	input Real kms_s_1082r_0262;
	input Real s_0215;
	input Real s_0303;
	input Real s_0470;
	input Real s_0763_b;
	input Real s_1082;
	input Real s_1087;
        output Real y;
    algorithm
        y :=  Vmax_r_0262 * ((1 / kms_s_0303r_0262)^1 * (1 / kms_s_1082r_0262)^1 * (s_0303^1 * s_1082^1 - s_0215^1 * s_0470^1 * s_0763_b^1 * s_1087^1 / Keq_r_0262) / ((1 + s_0303 / kms_s_0303r_0262) * (1 + s_1082 / kms_s_1082r_0262) + (1 + s_0215 / kmp_s_0215r_0262) * (1 + s_0470 / kmp_s_0470r_0262) * (1 + s_0763_b / kmp_s_0763_br_0262) * (1 + s_1087 / kmp_s_1087r_0262) - 1)) / intracellular;
    end function_62;


    function function_63
        	input Real Keq_r_0263;
	input Real Vmax_r_0263;
	input Real intracellular;
	input Real kmp_s_0302r_0263;
	input Real kmp_s_1091r_0263;
	input Real kms_s_0215r_0263;
	input Real kms_s_0763_br_0263;
	input Real kms_s_1096r_0263;
	input Real s_0215;
	input Real s_0302;
	input Real s_0763_b;
	input Real s_1091;
	input Real s_1096;
        output Real y;
    algorithm
        y :=  Vmax_r_0263 * ((1 / kms_s_0215r_0263)^1 * (1 / kms_s_0763_br_0263)^1 * (1 / kms_s_1096r_0263)^1 * (s_0215^1 * s_0763_b^1 * s_1096^1 - s_0302^1 * s_1091^1 / Keq_r_0263) / ((1 + s_0215 / kms_s_0215r_0263) * (1 + s_0763_b / kms_s_0763_br_0263) * (1 + s_1096 / kms_s_1096r_0263) + (1 + s_0302 / kmp_s_0302r_0263) * (1 + s_1091 / kmp_s_1091r_0263) - 1)) / intracellular;
    end function_63;


    function function_64
        	input Real Keq_r_0264;
	input Real Vmax_r_0264;
	input Real intracellular;
	input Real kmp_s_1091r_0264;
	input Real kmp_s_1447r_0264;
	input Real kms_s_0763_br_0264;
	input Real kms_s_1096r_0264;
	input Real kms_s_1458r_0264;
	input Real s_0763_b;
	input Real s_1091;
	input Real s_1096;
	input Real s_1447;
	input Real s_1458;
        output Real y;
    algorithm
        y :=  Vmax_r_0264 * ((1 / kms_s_0763_br_0264)^1 * (1 / kms_s_1096r_0264)^1 * (1 / kms_s_1458r_0264)^1 * (s_0763_b^1 * s_1096^1 * s_1458^1 - s_1091^1 * s_1447^1 / Keq_r_0264) / ((1 + s_0763_b / kms_s_0763_br_0264) * (1 + s_1096 / kms_s_1096r_0264) * (1 + s_1458 / kms_s_1458r_0264) + (1 + s_1091 / kmp_s_1091r_0264) * (1 + s_1447 / kmp_s_1447r_0264) - 1)) / intracellular;
    end function_64;


    function function_65
        	input Real Keq_r_0265;
	input Real Vmax_r_0265;
	input Real intracellular;
	input Real kmp_s_1091r_0265;
	input Real kmp_s_1434_br_0265;
	input Real kmp_s_1455r_0265;
	input Real kms_s_0302r_0265;
	input Real kms_s_0763_br_0265;
	input Real kms_s_1096r_0265;
	input Real kms_s_1160r_0265;
	input Real s_0302;
	input Real s_0763_b;
	input Real s_1091;
	input Real s_1096;
	input Real s_1160;
	input Real s_1434_b;
	input Real s_1455;
        output Real y;
    algorithm
        y :=  Vmax_r_0265 * ((1 / kms_s_0302r_0265)^1 * (1 / kms_s_0763_br_0265)^1 * (1 / kms_s_1096r_0265)^1 * (1 / kms_s_1160r_0265)^1 * (s_0302^1 * s_0763_b^1 * s_1096^1 * s_1160^1 - s_1091^1 * s_1434_b^1 * s_1455^1 / Keq_r_0265) / ((1 + s_0302 / kms_s_0302r_0265) * (1 + s_0763_b / kms_s_0763_br_0265) * (1 + s_1096 / kms_s_1096r_0265) * (1 + s_1160 / kms_s_1160r_0265) + (1 + s_1091 / kmp_s_1091r_0265) * (1 + s_1434_b / kmp_s_1434_br_0265) * (1 + s_1455 / kmp_s_1455r_0265) - 1)) / intracellular;
    end function_65;


    function function_66
        	input Real Keq_r_0266;
	input Real Vmax_r_0266;
	input Real intracellular;
	input Real kmp_s_1091r_0266;
	input Real kmp_s_1434_br_0266;
	input Real kmp_s_1456r_0266;
	input Real kms_s_0763_br_0266;
	input Real kms_s_1096r_0266;
	input Real kms_s_1160r_0266;
	input Real kms_s_1455r_0266;
	input Real s_0763_b;
	input Real s_1091;
	input Real s_1096;
	input Real s_1160;
	input Real s_1434_b;
	input Real s_1455;
	input Real s_1456;
        output Real y;
    algorithm
        y :=  Vmax_r_0266 * ((1 / kms_s_0763_br_0266)^1 * (1 / kms_s_1096r_0266)^1 * (1 / kms_s_1160r_0266)^1 * (1 / kms_s_1455r_0266)^1 * (s_0763_b^1 * s_1096^1 * s_1160^1 * s_1455^1 - s_1091^1 * s_1434_b^2 * s_1456^1 / Keq_r_0266) / ((1 + s_0763_b / kms_s_0763_br_0266) * (1 + s_1096 / kms_s_1096r_0266) * (1 + s_1160 / kms_s_1160r_0266) * (1 + s_1455 / kms_s_1455r_0266) + (1 + s_1091 / kmp_s_1091r_0266) * (1 + s_1434_b / kmp_s_1434_br_0266) * (1 + s_1456 / kmp_s_1456r_0266) - 1)) / intracellular;
    end function_66;


    function function_67
        	input Real Keq_r_0267;
	input Real Vmax_r_0267;
	input Real intracellular;
	input Real kmp_s_1091r_0267;
	input Real kmp_s_1434_br_0267;
	input Real kmp_s_1457r_0267;
	input Real kms_s_0763_br_0267;
	input Real kms_s_1096r_0267;
	input Real kms_s_1160r_0267;
	input Real kms_s_1456r_0267;
	input Real s_0763_b;
	input Real s_1091;
	input Real s_1096;
	input Real s_1160;
	input Real s_1434_b;
	input Real s_1456;
	input Real s_1457;
        output Real y;
    algorithm
        y :=  Vmax_r_0267 * ((1 / kms_s_0763_br_0267)^1 * (1 / kms_s_1096r_0267)^1 * (1 / kms_s_1160r_0267)^1 * (1 / kms_s_1456r_0267)^1 * (s_0763_b^1 * s_1096^1 * s_1160^1 * s_1456^1 - s_1091^1 * s_1434_b^1 * s_1457^1 / Keq_r_0267) / ((1 + s_0763_b / kms_s_0763_br_0267) * (1 + s_1096 / kms_s_1096r_0267) * (1 + s_1160 / kms_s_1160r_0267) * (1 + s_1456 / kms_s_1456r_0267) + (1 + s_1091 / kmp_s_1091r_0267) * (1 + s_1434_b / kmp_s_1434_br_0267) * (1 + s_1457 / kmp_s_1457r_0267) - 1)) / intracellular;
    end function_67;


    function function_68
        	input Real Keq_r_0268;
	input Real Vmax_r_0268;
	input Real intracellular;
	input Real kmp_s_0303r_0268;
	input Real kmp_s_1091r_0268;
	input Real kmp_s_1434_br_0268;
	input Real kms_s_0124r_0268;
	input Real kms_s_0763_br_0268;
	input Real kms_s_1096r_0268;
	input Real kms_s_1160r_0268;
	input Real s_0124;
	input Real s_0303;
	input Real s_0763_b;
	input Real s_1091;
	input Real s_1096;
	input Real s_1160;
	input Real s_1434_b;
        output Real y;
    algorithm
        y :=  Vmax_r_0268 * ((1 / kms_s_0124r_0268)^1 * (1 / kms_s_0763_br_0268)^3 * (1 / kms_s_1096r_0268)^3 * (1 / kms_s_1160r_0268)^3 * (s_0124^1 * s_0763_b^3 * s_1096^3 * s_1160^3 - s_0303^1 * s_1091^3 * s_1434_b^4 / Keq_r_0268) / ((1 + s_0124 / kms_s_0124r_0268) * (1 + s_0763_b / kms_s_0763_br_0268) * (1 + s_1096 / kms_s_1096r_0268) * (1 + s_1160 / kms_s_1160r_0268) + (1 + s_0303 / kmp_s_0303r_0268) * (1 + s_1091 / kmp_s_1091r_0268) * (1 + s_1434_b / kmp_s_1434_br_0268) - 1)) / intracellular;
    end function_68;


    function function_69
        	input Real Keq_r_0270;
	input Real Vmax_r_0270;
	input Real intracellular;
	input Real kmp_s_0627r_0270;
	input Real kms_s_0669r_0270;
	input Real s_0627;
	input Real s_0669;
        output Real y;
    algorithm
        y :=  Vmax_r_0270 * ((1 / kms_s_0669r_0270)^1 * (s_0669^1 - s_0627^1 / Keq_r_0270) / (1 + s_0669 / kms_s_0669r_0270 + 1 + s_0627 / kmp_s_0627r_0270 - 1)) / intracellular;
    end function_69;


    function function_70
        	input Real Keq_r_0271;
	input Real Vmax_r_0271;
	input Real intracellular;
	input Real kmp_s_0635r_0271;
	input Real kmp_s_1091r_0271;
	input Real kms_s_0632r_0271;
	input Real kms_s_0763_br_0271;
	input Real kms_s_1096r_0271;
	input Real s_0632;
	input Real s_0635;
	input Real s_0763_b;
	input Real s_1091;
	input Real s_1096;
        output Real y;
    algorithm
        y :=  Vmax_r_0271 * ((1 / kms_s_0632r_0271)^1 * (1 / kms_s_0763_br_0271)^1 * (1 / kms_s_1096r_0271)^1 * (s_0632^1 * s_0763_b^1 * s_1096^1 - s_0635^1 * s_1091^1 / Keq_r_0271) / ((1 + s_0632 / kms_s_0632r_0271) * (1 + s_0763_b / kms_s_0763_br_0271) * (1 + s_1096 / kms_s_1096r_0271) + (1 + s_0635 / kmp_s_0635r_0271) * (1 + s_1091 / kmp_s_1091r_0271) - 1)) / intracellular;
    end function_70;


    function function_71
        	input Real Keq_r_0277;
	input Real Vmax_r_0277;
	input Real intracellular;
	input Real kmp_s_0400r_0277;
	input Real kmp_s_0469r_0277;
	input Real kmp_s_0763_br_0277;
	input Real kmp_s_0899r_0277;
	input Real kmp_s_1207r_0277;
	input Real kms_s_0446r_0277;
	input Real kms_s_0458r_0277;
	input Real kms_s_0907r_0277;
	input Real kms_s_1434_br_0277;
	input Real s_0400;
	input Real s_0446;
	input Real s_0458;
	input Real s_0469;
	input Real s_0763_b;
	input Real s_0899;
	input Real s_0907;
	input Real s_1207;
	input Real s_1434_b;
        output Real y;
    algorithm
        y :=  Vmax_r_0277 * ((1 / kms_s_0446r_0277)^2 * (1 / kms_s_0458r_0277)^1 * (1 / kms_s_0907r_0277)^1 * (1 / kms_s_1434_br_0277)^1 * (s_0446^2 * s_0458^1 * s_0907^1 * s_1434_b^1 - s_0400^2 * s_0469^1 * s_0763_b^2 * s_0899^1 * s_1207^1 / Keq_r_0277) / ((1 + s_0446 / kms_s_0446r_0277) * (1 + s_0458 / kms_s_0458r_0277) * (1 + s_0907 / kms_s_0907r_0277) * (1 + s_1434_b / kms_s_1434_br_0277) + (1 + s_0400 / kmp_s_0400r_0277) * (1 + s_0469 / kmp_s_0469r_0277) * (1 + s_0763_b / kmp_s_0763_br_0277) * (1 + s_0899 / kmp_s_0899r_0277) * (1 + s_1207 / kmp_s_1207r_0277) - 1)) / intracellular;
    end function_71;


    function function_72
        	input Real Keq_r_0282;
	input Real Vmax_r_0282;
	input Real intracellular;
	input Real kmp_s_1160r_0282;
	input Real kmp_s_1434_br_0282;
	input Real kms_s_0801r_0282;
	input Real s_0801;
	input Real s_1160;
	input Real s_1434_b;
        output Real y;
    algorithm
        y :=  Vmax_r_0282 * ((1 / kms_s_0801r_0282)^2 * (s_0801^2 - s_1160^1 * s_1434_b^2 / Keq_r_0282) / (1 + s_0801 / kms_s_0801r_0282 + (1 + s_1160 / kmp_s_1160r_0282) * (1 + s_1434_b / kmp_s_1434_br_0282) - 1)) / intracellular;
    end function_72;


    function function_73
        	input Real Keq_r_0284;
	input Real Vmax_r_0284;
	input Real intracellular;
	input Real kmp_s_0485r_0284;
	input Real kmp_s_0605r_0284;
	input Real kms_s_0521r_0284;
	input Real kms_s_0763_br_0284;
	input Real kms_s_1215r_0284;
	input Real s_0485;
	input Real s_0521;
	input Real s_0605;
	input Real s_0763_b;
	input Real s_1215;
        output Real y;
    algorithm
        y :=  Vmax_r_0284 * ((1 / kms_s_0521r_0284)^1 * (1 / kms_s_0763_br_0284)^1 * (1 / kms_s_1215r_0284)^1 * (s_0521^1 * s_0763_b^1 * s_1215^1 - s_0485^1 * s_0605^1 / Keq_r_0284) / ((1 + s_0521 / kms_s_0521r_0284) * (1 + s_0763_b / kms_s_0763_br_0284) * (1 + s_1215 / kms_s_1215r_0284) + (1 + s_0485 / kmp_s_0485r_0284) * (1 + s_0605 / kmp_s_0605r_0284) - 1)) / intracellular;
    end function_73;


    function function_74
        	input Real Keq_r_0287;
	input Real Vmax_r_0287;
	input Real intracellular;
	input Real kmp_s_1060r_0287;
	input Real kmp_s_1091r_0287;
	input Real kmp_s_1434_br_0287;
	input Real kms_s_0763_br_0287;
	input Real kms_s_1080r_0287;
	input Real kms_s_1096r_0287;
	input Real kms_s_1160r_0287;
	input Real s_0763_b;
	input Real s_1060;
	input Real s_1080;
	input Real s_1091;
	input Real s_1096;
	input Real s_1160;
	input Real s_1434_b;
        output Real y;
    algorithm
        y :=  Vmax_r_0287 * ((1 / kms_s_0763_br_0287)^1 * (1 / kms_s_1080r_0287)^1 * (1 / kms_s_1096r_0287)^1 * (1 / kms_s_1160r_0287)^1 * (s_0763_b^1 * s_1080^1 * s_1096^1 * s_1160^1 - s_1060^1 * s_1091^1 * s_1434_b^1 / Keq_r_0287) / ((1 + s_0763_b / kms_s_0763_br_0287) * (1 + s_1080 / kms_s_1080r_0287) * (1 + s_1096 / kms_s_1096r_0287) * (1 + s_1160 / kms_s_1160r_0287) + (1 + s_1060 / kmp_s_1060r_0287) * (1 + s_1091 / kmp_s_1091r_0287) * (1 + s_1434_b / kmp_s_1434_br_0287) - 1)) / intracellular;
    end function_74;


    function function_75
        	input Real Keq_r_0290;
	input Real Vmax_r_0290;
	input Real intracellular;
	input Real kmp_s_0514r_0290;
	input Real kmp_s_0763_br_0290;
	input Real kmp_s_1080r_0290;
	input Real kms_s_1325r_0290;
	input Real kms_s_1355r_0290;
	input Real s_0514;
	input Real s_0763_b;
	input Real s_1080;
	input Real s_1325;
	input Real s_1355;
        output Real y;
    algorithm
        y :=  Vmax_r_0290 * ((1 / kms_s_1325r_0290)^1 * (1 / kms_s_1355r_0290)^1 * (s_1325^1 * s_1355^1 - s_0514^1 * s_0763_b^1 * s_1080^1 / Keq_r_0290) / ((1 + s_1325 / kms_s_1325r_0290) * (1 + s_1355 / kms_s_1355r_0290) + (1 + s_0514 / kmp_s_0514r_0290) * (1 + s_0763_b / kmp_s_0763_br_0290) * (1 + s_1080 / kmp_s_1080r_0290) - 1)) / intracellular;
    end function_75;


    function function_76
        	input Real Keq_r_0298;
	input Real Vmax_r_0298;
	input Real intracellular;
	input Real kmp_s_0632r_0298;
	input Real kmp_s_0763_br_0298;
	input Real kmp_s_1290r_0298;
	input Real kmp_s_1434_br_0298;
	input Real kms_s_1160r_0298;
	input Real kms_s_1293r_0298;
	input Real kms_s_1447r_0298;
	input Real s_0632;
	input Real s_0763_b;
	input Real s_1160;
	input Real s_1290;
	input Real s_1293;
	input Real s_1434_b;
	input Real s_1447;
        output Real y;
    algorithm
        y :=  Vmax_r_0298 * ((1 / kms_s_1160r_0298)^1 * (1 / kms_s_1293r_0298)^1 * (1 / kms_s_1447r_0298)^1 * (s_1160^1 * s_1293^1 * s_1447^1 - s_0632^1 * s_0763_b^1 * s_1290^1 * s_1434_b^2 / Keq_r_0298) / ((1 + s_1160 / kms_s_1160r_0298) * (1 + s_1293 / kms_s_1293r_0298) * (1 + s_1447 / kms_s_1447r_0298) + (1 + s_0632 / kmp_s_0632r_0298) * (1 + s_0763_b / kmp_s_0763_br_0298) * (1 + s_1290 / kmp_s_1290r_0298) * (1 + s_1434_b / kmp_s_1434_br_0298) - 1)) / intracellular;
    end function_76;


    function function_77
        	input Real Keq_r_0304;
	input Real Vmax_r_0304;
	input Real intracellular;
	input Real kmp_s_1258r_0304;
	input Real kms_s_0500r_0304;
	input Real s_0500;
	input Real s_1258;
        output Real y;
    algorithm
        y :=  Vmax_r_0304 * ((1 / kms_s_0500r_0304)^1 * (s_0500^1 - s_1258^1 / Keq_r_0304) / (1 + s_0500 / kms_s_0500r_0304 + 1 + s_1258 / kmp_s_1258r_0304 - 1)) / intracellular;
    end function_77;


    function function_78
        	input Real Keq_r_0306;
	input Real Vmax_r_0306;
	input Real intracellular;
	input Real kmp_s_0500r_0306;
	input Real kmp_s_1207r_0306;
	input Real kms_s_0330r_0306;
	input Real s_0330;
	input Real s_0500;
	input Real s_1207;
        output Real y;
    algorithm
        y :=  Vmax_r_0306 * ((1 / kms_s_0330r_0306)^1 * (s_0330^1 - s_0500^1 * s_1207^1 / Keq_r_0306) / (1 + s_0330 / kms_s_0330r_0306 + (1 + s_0500 / kmp_s_0500r_0306) * (1 + s_1207 / kmp_s_1207r_0306) - 1)) / intracellular;
    end function_78;


    function function_79
        	input Real Keq_r_0307;
	input Real Vmax_r_0307;
	input Real intracellular;
	input Real kmp_s_0847r_0307;
	input Real kms_s_0501r_0307;
	input Real kms_s_1434_br_0307;
	input Real s_0501;
	input Real s_0847;
	input Real s_1434_b;
        output Real y;
    algorithm
        y :=  Vmax_r_0307 * ((1 / kms_s_0501r_0307)^1 * (1 / kms_s_1434_br_0307)^1 * (s_0501^1 * s_1434_b^1 - s_0847^1 / Keq_r_0307) / ((1 + s_0501 / kms_s_0501r_0307) * (1 + s_1434_b / kms_s_1434_br_0307) + 1 + s_0847 / kmp_s_0847r_0307 - 1)) / intracellular;
    end function_79;


    function function_80
        	input Real Keq_r_0328;
	input Real Vmax_r_0328;
	input Real intracellular;
	input Real kmp_s_0507r_0328;
	input Real kmp_s_0514r_0328;
	input Real kmp_s_0763_br_0328;
	input Real kms_s_0380r_0328;
	input Real kms_s_1156r_0328;
	input Real kms_s_1434_br_0328;
	input Real s_0380;
	input Real s_0507;
	input Real s_0514;
	input Real s_0763_b;
	input Real s_1156;
	input Real s_1434_b;
        output Real y;
    algorithm
        y :=  Vmax_r_0328 * ((1 / kms_s_0380r_0328)^1 * (1 / kms_s_1156r_0328)^1 * (1 / kms_s_1434_br_0328)^1 * (s_0380^1 * s_1156^1 * s_1434_b^1 - s_0507^1 * s_0514^1 * s_0763_b^1 / Keq_r_0328) / ((1 + s_0380 / kms_s_0380r_0328) * (1 + s_1156 / kms_s_1156r_0328) * (1 + s_1434_b / kms_s_1434_br_0328) + (1 + s_0507 / kmp_s_0507r_0328) * (1 + s_0514 / kmp_s_0514r_0328) * (1 + s_0763_b / kmp_s_0763_br_0328) - 1)) / intracellular;
    end function_80;


    function function_81
        	input Real Keq_r_0330;
	input Real Vmax_r_0330;
	input Real intracellular;
	input Real kmp_s_0501r_0330;
	input Real kmp_s_1434_br_0330;
	input Real kms_s_0507r_0330;
	input Real s_0501;
	input Real s_0507;
	input Real s_1434_b;
        output Real y;
    algorithm
        y :=  Vmax_r_0330 * ((1 / kms_s_0507r_0330)^1 * (s_0507^1 - s_0501^1 * s_1434_b^1 / Keq_r_0330) / (1 + s_0507 / kms_s_0507r_0330 + (1 + s_0501 / kmp_s_0501r_0330) * (1 + s_1434_b / kmp_s_1434_br_0330) - 1)) / intracellular;
    end function_81;


    function function_82
        	input Real Keq_r_0336;
	input Real Vmax_r_0336;
	input Real intracellular;
	input Real kmp_s_0400r_0336;
	input Real kmp_s_0521r_0336;
	input Real kmp_s_0763_br_0336;
	input Real kmp_s_1207r_0336;
	input Real kms_s_0430r_0336;
	input Real kms_s_0446r_0336;
	input Real kms_s_1430r_0336;
	input Real s_0400;
	input Real s_0430;
	input Real s_0446;
	input Real s_0521;
	input Real s_0763_b;
	input Real s_1207;
	input Real s_1430;
        output Real y;
    algorithm
        y :=  Vmax_r_0336 * ((1 / kms_s_0430r_0336)^1 * (1 / kms_s_0446r_0336)^1 * (1 / kms_s_1430r_0336)^1 * (s_0430^1 * s_0446^1 * s_1430^1 - s_0400^1 * s_0521^1 * s_0763_b^2 * s_1207^1 / Keq_r_0336) / ((1 + s_0430 / kms_s_0430r_0336) * (1 + s_0446 / kms_s_0446r_0336) * (1 + s_1430 / kms_s_1430r_0336) + (1 + s_0400 / kmp_s_0400r_0336) * (1 + s_0521 / kmp_s_0521r_0336) * (1 + s_0763_b / kmp_s_0763_br_0336) * (1 + s_1207 / kmp_s_1207r_0336) - 1)) / intracellular;
    end function_82;


    function function_83
        	input Real Keq_r_0338;
	input Real Vmax_r_0338;
	input Real intracellular;
	input Real kmp_s_0888r_0338;
	input Real kmp_s_1434_br_0338;
	input Real kms_s_0917r_0338;
	input Real kms_s_0943r_0338;
	input Real s_0888;
	input Real s_0917;
	input Real s_0943;
	input Real s_1434_b;
        output Real y;
    algorithm
        y :=  Vmax_r_0338 * ((1 / kms_s_0917r_0338)^1 * (1 / kms_s_0943r_0338)^1 * (s_0917^1 * s_0943^1 - s_0888^1 * s_1434_b^1 / Keq_r_0338) / ((1 + s_0917 / kms_s_0917r_0338) * (1 + s_0943 / kms_s_0943r_0338) + (1 + s_0888 / kmp_s_0888r_0338) * (1 + s_1434_b / kmp_s_1434_br_0338) - 1)) / intracellular;
    end function_83;


    function function_84
        	input Real Keq_r_0339;
	input Real Vmax_r_0339;
	input Real intracellular;
	input Real kmp_s_0183r_0339;
	input Real kmp_s_0430r_0339;
	input Real kmp_s_0889r_0339;
	input Real kms_s_0888r_0339;
	input Real kms_s_1434_br_0339;
	input Real s_0183;
	input Real s_0430;
	input Real s_0888;
	input Real s_0889;
	input Real s_1434_b;
        output Real y;
    algorithm
        y :=  Vmax_r_0339 * ((1 / kms_s_0888r_0339)^1 * (1 / kms_s_1434_br_0339)^1 * (s_0888^1 * s_1434_b^1 - s_0183^1 * s_0430^1 * s_0889^1 / Keq_r_0339) / ((1 + s_0888 / kms_s_0888r_0339) * (1 + s_1434_b / kms_s_1434_br_0339) + (1 + s_0183 / kmp_s_0183r_0339) * (1 + s_0430 / kmp_s_0430r_0339) * (1 + s_0889 / kmp_s_0889r_0339) - 1)) / intracellular;
    end function_84;


    function function_85
        	input Real Keq_r_0340;
	input Real Vmax_r_0340;
	input Real intracellular;
	input Real kmp_s_0369r_0340;
	input Real kmp_s_0763_br_0340;
	input Real kmp_s_0888r_0340;
	input Real kms_s_0889r_0340;
	input Real kms_s_1117r_0340;
	input Real s_0369;
	input Real s_0763_b;
	input Real s_0888;
	input Real s_0889;
	input Real s_1117;
        output Real y;
    algorithm
        y :=  Vmax_r_0340 * ((1 / kms_s_0889r_0340)^1 * (1 / kms_s_1117r_0340)^1 * (s_0889^1 * s_1117^1 - s_0369^1 * s_0763_b^1 * s_0888^1 / Keq_r_0340) / ((1 + s_0889 / kms_s_0889r_0340) * (1 + s_1117 / kms_s_1117r_0340) + (1 + s_0369 / kmp_s_0369r_0340) * (1 + s_0763_b / kmp_s_0763_br_0340) * (1 + s_0888 / kmp_s_0888r_0340) - 1)) / intracellular;
    end function_85;


    function function_86
        	input Real Keq_r_0345;
	input Real Vmax_r_0345;
	input Real intracellular;
	input Real kmp_s_0446r_0345;
	input Real kmp_s_0511r_0345;
	input Real kms_s_0400r_0345;
	input Real kms_s_0481r_0345;
	input Real s_0400;
	input Real s_0446;
	input Real s_0481;
	input Real s_0511;
        output Real y;
    algorithm
        y :=  Vmax_r_0345 * ((1 / kms_s_0400r_0345)^1 * (1 / kms_s_0481r_0345)^1 * (s_0400^1 * s_0481^1 - s_0446^1 * s_0511^1 / Keq_r_0345) / ((1 + s_0400 / kms_s_0400r_0345) * (1 + s_0481 / kms_s_0481r_0345) + (1 + s_0446 / kmp_s_0446r_0345) * (1 + s_0511 / kmp_s_0511r_0345) - 1)) / intracellular;
    end function_86;


    function function_87
        	input Real Keq_r_0347;
	input Real Vmax_r_0347;
	input Real intracellular;
	input Real kmp_s_0268r_0347;
	input Real kmp_s_0689r_0347;
	input Real kmp_s_1082r_0347;
	input Real kmp_s_1434_br_0347;
	input Real kms_s_0763_br_0347;
	input Real kms_s_0963r_0347;
	input Real kms_s_1087r_0347;
	input Real kms_s_1160r_0347;
	input Real s_0268;
	input Real s_0689;
	input Real s_0763_b;
	input Real s_0963;
	input Real s_1082;
	input Real s_1087;
	input Real s_1160;
	input Real s_1434_b;
        output Real y;
    algorithm
        y :=  Vmax_r_0347 * ((1 / kms_s_0763_br_0347)^2 * (1 / kms_s_0963r_0347)^1 * (1 / kms_s_1087r_0347)^3 * (1 / kms_s_1160r_0347)^3 * (s_0763_b^2 * s_0963^1 * s_1087^3 * s_1160^3 - s_0268^1 * s_0689^1 * s_1082^3 * s_1434_b^4 / Keq_r_0347) / ((1 + s_0763_b / kms_s_0763_br_0347) * (1 + s_0963 / kms_s_0963r_0347) * (1 + s_1087 / kms_s_1087r_0347) * (1 + s_1160 / kms_s_1160r_0347) + (1 + s_0268 / kmp_s_0268r_0347) * (1 + s_0689 / kmp_s_0689r_0347) * (1 + s_1082 / kmp_s_1082r_0347) * (1 + s_1434_b / kmp_s_1434_br_0347) - 1)) / intracellular;
    end function_87;


    function function_88
        	input Real Keq_r_0351;
	input Real Vmax_r_0351;
	input Real intracellular;
	input Real kmp_s_0530r_0351;
	input Real kmp_s_1082r_0351;
	input Real kms_s_0529r_0351;
	input Real kms_s_0763_br_0351;
	input Real kms_s_1087r_0351;
	input Real s_0529;
	input Real s_0530;
	input Real s_0763_b;
	input Real s_1082;
	input Real s_1087;
        output Real y;
    algorithm
        y :=  Vmax_r_0351 * ((1 / kms_s_0529r_0351)^1 * (1 / kms_s_0763_br_0351)^1 * (1 / kms_s_1087r_0351)^1 * (s_0529^1 * s_0763_b^1 * s_1087^1 - s_0530^1 * s_1082^1 / Keq_r_0351) / ((1 + s_0529 / kms_s_0529r_0351) * (1 + s_0763_b / kms_s_0763_br_0351) * (1 + s_1087 / kms_s_1087r_0351) + (1 + s_0530 / kmp_s_0530r_0351) * (1 + s_1082 / kmp_s_1082r_0351) - 1)) / intracellular;
    end function_88;


    function function_89
        	input Real Keq_r_0352;
	input Real Vmax_r_0352;
	input Real intracellular;
	input Real kmp_s_0529r_0352;
	input Real kmp_s_0763_br_0352;
	input Real kmp_s_1096r_0352;
	input Real kms_s_0530r_0352;
	input Real kms_s_1091r_0352;
	input Real s_0529;
	input Real s_0530;
	input Real s_0763_b;
	input Real s_1091;
	input Real s_1096;
        output Real y;
    algorithm
        y :=  Vmax_r_0352 * ((1 / kms_s_0530r_0352)^1 * (1 / kms_s_1091r_0352)^1 * (s_0530^1 * s_1091^1 - s_0529^1 * s_0763_b^1 * s_1096^1 / Keq_r_0352) / ((1 + s_0530 / kms_s_0530r_0352) * (1 + s_1091 / kms_s_1091r_0352) + (1 + s_0529 / kmp_s_0529r_0352) * (1 + s_0763_b / kmp_s_0763_br_0352) * (1 + s_1096 / kmp_s_1096r_0352) - 1)) / intracellular;
    end function_89;


    function function_90
        	input Real Keq_r_0357;
	input Real Vmax_r_0357;
	input Real intracellular;
	input Real kmp_s_0569r_0357;
	input Real kmp_s_0763_br_0357;
	input Real kmp_s_1434_br_0357;
	input Real kms_s_0430r_0357;
	input Real kms_s_0624r_0357;
	input Real s_0430;
	input Real s_0569;
	input Real s_0624;
	input Real s_0763_b;
	input Real s_1434_b;
        output Real y;
    algorithm
        y :=  Vmax_r_0357 * ((1 / kms_s_0430r_0357)^1 * (1 / kms_s_0624r_0357)^1 * (s_0430^1 * s_0624^1 - s_0569^1 * s_0763_b^1 * s_1434_b^1 / Keq_r_0357) / ((1 + s_0430 / kms_s_0430r_0357) * (1 + s_0624 / kms_s_0624r_0357) + (1 + s_0569 / kmp_s_0569r_0357) * (1 + s_0763_b / kmp_s_0763_br_0357) * (1 + s_1434_b / kmp_s_1434_br_0357) - 1)) / intracellular;
    end function_90;


    function function_91
        	input Real Keq_r_0360;
	input Real Vmax_r_0360;
	input Real intracellular;
	input Real kmp_s_0446r_0360;
	input Real kmp_s_0564r_0360;
	input Real kms_s_0400r_0360;
	input Real kms_s_0562r_0360;
	input Real s_0400;
	input Real s_0446;
	input Real s_0562;
	input Real s_0564;
        output Real y;
    algorithm
        y :=  Vmax_r_0360 * ((1 / kms_s_0400r_0360)^1 * (1 / kms_s_0562r_0360)^1 * (s_0400^1 * s_0562^1 - s_0446^1 * s_0564^1 / Keq_r_0360) / ((1 + s_0400 / kms_s_0400r_0360) * (1 + s_0562 / kms_s_0562r_0360) + (1 + s_0446 / kmp_s_0446r_0360) * (1 + s_0564 / kmp_s_0564r_0360) - 1)) / intracellular;
    end function_91;


    function function_92
        	input Real Keq_r_0362;
	input Real Vmax_r_0362;
	input Real intracellular;
	input Real kmp_s_0446r_0362;
	input Real kmp_s_0593r_0362;
	input Real kms_s_0400r_0362;
	input Real kms_s_0591r_0362;
	input Real s_0400;
	input Real s_0446;
	input Real s_0591;
	input Real s_0593;
        output Real y;
    algorithm
        y :=  Vmax_r_0362 * ((1 / kms_s_0400r_0362)^1 * (1 / kms_s_0591r_0362)^1 * (s_0400^1 * s_0591^1 - s_0446^1 * s_0593^1 / Keq_r_0362) / ((1 + s_0400 / kms_s_0400r_0362) * (1 + s_0591 / kms_s_0591r_0362) + (1 + s_0446 / kmp_s_0446r_0362) * (1 + s_0593 / kmp_s_0593r_0362) - 1)) / intracellular;
    end function_92;


    function function_93
        	input Real Keq_r_0370;
	input Real Vmax_r_0370;
	input Real intracellular;
	input Real kmp_s_0514r_0370;
	input Real kmp_s_0763_br_0370;
	input Real kmp_s_1399r_0370;
	input Real kms_s_0386r_0370;
	input Real kms_s_0596r_0370;
	input Real s_0386;
	input Real s_0514;
	input Real s_0596;
	input Real s_0763_b;
	input Real s_1399;
        output Real y;
    algorithm
        y :=  Vmax_r_0370 * ((1 / kms_s_0386r_0370)^1 * (1 / kms_s_0596r_0370)^1 * (s_0386^1 * s_0596^1 - s_0514^1 * s_0763_b^4 * s_1399^1 / Keq_r_0370) / ((1 + s_0386 / kms_s_0386r_0370) * (1 + s_0596 / kms_s_0596r_0370) + (1 + s_0514 / kmp_s_0514r_0370) * (1 + s_0763_b / kmp_s_0763_br_0370) * (1 + s_1399 / kmp_s_1399r_0370) - 1)) / intracellular;
    end function_93;


    function function_94
        	input Real Keq_r_0371;
	input Real Vmax_r_0371;
	input Real intracellular;
	input Real kmp_s_0596r_0371;
	input Real kmp_s_0763_br_0371;
	input Real kmp_s_1207r_0371;
	input Real kms_s_1215r_0371;
	input Real kms_s_1434_br_0371;
	input Real s_0596;
	input Real s_0763_b;
	input Real s_1207;
	input Real s_1215;
	input Real s_1434_b;
        output Real y;
    algorithm
        y :=  Vmax_r_0371 * ((1 / kms_s_1215r_0371)^1 * (1 / kms_s_1434_br_0371)^1 * (s_1215^1 * s_1434_b^1 - s_0596^1 * s_0763_b^2 * s_1207^1 / Keq_r_0371) / ((1 + s_1215 / kms_s_1215r_0371) * (1 + s_1434_b / kms_s_1434_br_0371) + (1 + s_0596 / kmp_s_0596r_0371) * (1 + s_0763_b / kmp_s_0763_br_0371) * (1 + s_1207 / kmp_s_1207r_0371) - 1)) / intracellular;
    end function_94;


    function function_95
        	input Real Keq_r_0374;
	input Real Vmax_r_0374;
	input Real intracellular;
	input Real kmp_s_0801r_0374;
	input Real kmp_s_1154r_0374;
	input Real kms_s_0064r_0374;
	input Real kms_s_1160r_0374;
	input Real s_0064;
	input Real s_0801;
	input Real s_1154;
	input Real s_1160;
        output Real y;
    algorithm
        y :=  Vmax_r_0374 * ((1 / kms_s_0064r_0374)^1 * (1 / kms_s_1160r_0374)^1 * (s_0064^1 * s_1160^1 - s_0801^1 * s_1154^1 / Keq_r_0374) / ((1 + s_0064 / kms_s_0064r_0374) * (1 + s_1160 / kms_s_1160r_0374) + (1 + s_0801 / kmp_s_0801r_0374) * (1 + s_1154 / kmp_s_1154r_0374) - 1)) / intracellular;
    end function_95;


    function function_96
        	input Real Keq_r_0375;
	input Real Vmax_r_0375;
	input Real intracellular;
	input Real kmp_s_0309r_0375;
	input Real kmp_s_1091r_0375;
	input Real kms_s_0601r_0375;
	input Real kms_s_0763_br_0375;
	input Real kms_s_1096r_0375;
	input Real s_0309;
	input Real s_0601;
	input Real s_0763_b;
	input Real s_1091;
	input Real s_1096;
        output Real y;
    algorithm
        y :=  Vmax_r_0375 * ((1 / kms_s_0601r_0375)^1 * (1 / kms_s_0763_br_0375)^1 * (1 / kms_s_1096r_0375)^1 * (s_0601^1 * s_0763_b^1 * s_1096^1 - s_0309^1 * s_1091^1 / Keq_r_0375) / ((1 + s_0601 / kms_s_0601r_0375) * (1 + s_0763_b / kms_s_0763_br_0375) * (1 + s_1096 / kms_s_1096r_0375) + (1 + s_0309 / kmp_s_0309r_0375) * (1 + s_1091 / kmp_s_1091r_0375) - 1)) / intracellular;
    end function_96;


    function function_97
        	input Real Keq_r_0381;
	input Real Vmax_r_0381;
	input Real intracellular;
	input Real kmp_s_0064r_0381;
	input Real kmp_s_1434_br_0381;
	input Real kms_s_0763_br_0381;
	input Real kms_s_1073r_0381;
	input Real s_0064;
	input Real s_0763_b;
	input Real s_1073;
	input Real s_1434_b;
        output Real y;
    algorithm
        y :=  Vmax_r_0381 * ((1 / kms_s_0763_br_0381)^1 * (1 / kms_s_1073r_0381)^1 * (s_0763_b^1 * s_1073^1 - s_0064^1 * s_1434_b^1 / Keq_r_0381) / ((1 + s_0763_b / kms_s_0763_br_0381) * (1 + s_1073 / kms_s_1073r_0381) + (1 + s_0064 / kmp_s_0064r_0381) * (1 + s_1434_b / kmp_s_1434_br_0381) - 1)) / intracellular;
    end function_97;


    function function_98
        	input Real Keq_r_0384;
	input Real Vmax_r_0384;
	input Real intracellular;
	input Real kmp_s_0238r_0384;
	input Real kmp_s_1434_br_0384;
	input Real kms_s_0018r_0384;
	input Real s_0018;
	input Real s_0238;
	input Real s_1434_b;
        output Real y;
    algorithm
        y :=  Vmax_r_0384 * ((1 / kms_s_0018r_0384)^1 * (s_0018^1 - s_0238^1 * s_1434_b^1 / Keq_r_0384) / (1 + s_0018 / kms_s_0018r_0384 + (1 + s_0238 / kmp_s_0238r_0384) * (1 + s_1434_b / kmp_s_1434_br_0384) - 1)) / intracellular;
    end function_98;


    function function_99
        	input Real Keq_r_0385;
	input Real Vmax_r_0385;
	input Real intracellular;
	input Real kmp_s_0058r_0385;
	input Real kmp_s_1434_br_0385;
	input Real kms_s_0007r_0385;
	input Real s_0007;
	input Real s_0058;
	input Real s_1434_b;
        output Real y;
    algorithm
        y :=  Vmax_r_0385 * ((1 / kms_s_0007r_0385)^1 * (s_0007^1 - s_0058^1 * s_1434_b^1 / Keq_r_0385) / (1 + s_0007 / kms_s_0007r_0385 + (1 + s_0058 / kmp_s_0058r_0385) * (1 + s_1434_b / kmp_s_1434_br_0385) - 1)) / intracellular;
    end function_99;


    function function_100
        	input Real Keq_r_0386;
	input Real Vmax_r_0386;
	input Real intracellular;
	input Real kmp_s_0400r_0386;
	input Real kmp_s_0735r_0386;
	input Real kmp_s_0763_br_0386;
	input Real kms_s_0446r_0386;
	input Real kms_s_0734r_0386;
	input Real s_0400;
	input Real s_0446;
	input Real s_0734;
	input Real s_0735;
	input Real s_0763_b;
        output Real y;
    algorithm
        y :=  Vmax_r_0386 * ((1 / kms_s_0446r_0386)^1 * (1 / kms_s_0734r_0386)^1 * (s_0446^1 * s_0734^1 - s_0400^1 * s_0735^1 * s_0763_b^1 / Keq_r_0386) / ((1 + s_0446 / kms_s_0446r_0386) * (1 + s_0734 / kms_s_0734r_0386) + (1 + s_0400 / kmp_s_0400r_0386) * (1 + s_0735 / kmp_s_0735r_0386) * (1 + s_0763_b / kmp_s_0763_br_0386) - 1)) / intracellular;
    end function_100;


    function function_101
        	input Real Keq_r_0387;
	input Real Vmax_r_0387;
	input Real intracellular;
	input Real kmp_s_0605r_0387;
	input Real kmp_s_0712r_0387;
	input Real kms_s_0850r_0387;
	input Real kms_s_1257r_0387;
	input Real s_0605;
	input Real s_0712;
	input Real s_0850;
	input Real s_1257;
        output Real y;
    algorithm
        y :=  Vmax_r_0387 * ((1 / kms_s_0850r_0387)^1 * (1 / kms_s_1257r_0387)^1 * (s_0850^1 * s_1257^1 - s_0605^1 * s_0712^1 / Keq_r_0387) / ((1 + s_0850 / kms_s_0850r_0387) * (1 + s_1257 / kms_s_1257r_0387) + (1 + s_0605 / kmp_s_0605r_0387) * (1 + s_0712 / kmp_s_0712r_0387) - 1)) / intracellular;
    end function_101;


    function function_102
        	input Real Keq_r_0393;
	input Real Vmax_r_0393;
	input Real intracellular;
	input Real kmp_s_0615r_0393;
	input Real kmp_s_0706r_0393;
	input Real kms_s_0616r_0393;
	input Real kms_s_0710r_0393;
	input Real s_0615;
	input Real s_0616;
	input Real s_0706;
	input Real s_0710;
        output Real y;
    algorithm
        y :=  Vmax_r_0393 * ((1 / kms_s_0616r_0393)^1 * (1 / kms_s_0710r_0393)^1 * (s_0616^1 * s_0710^1 - s_0615^1 * s_0706^1 / Keq_r_0393) / ((1 + s_0616 / kms_s_0616r_0393) * (1 + s_0710 / kms_s_0710r_0393) + (1 + s_0615 / kmp_s_0615r_0393) * (1 + s_0706 / kmp_s_0706r_0393) - 1)) / intracellular;
    end function_102;


    function function_103
        	input Real Keq_r_0394;
	input Real Vmax_r_0394;
	input Real intracellular;
	input Real kmp_s_0616r_0394;
	input Real kmp_s_0763_br_0394;
	input Real kmp_s_1011r_0394;
	input Real kms_s_0615r_0394;
	input Real s_0615;
	input Real s_0616;
	input Real s_0763_b;
	input Real s_1011;
        output Real y;
    algorithm
        y :=  Vmax_r_0394 * ((1 / kms_s_0615r_0394)^1 * (s_0615^1 - s_0616^1 * s_0763_b^1 * s_1011^1 / Keq_r_0394) / (1 + s_0615 / kms_s_0615r_0394 + (1 + s_0616 / kmp_s_0616r_0394) * (1 + s_0763_b / kmp_s_0763_br_0394) * (1 + s_1011 / kmp_s_1011r_0394) - 1)) / intracellular;
    end function_103;


    function function_104
        	input Real Keq_r_0398;
	input Real Vmax_r_0398;
	input Real intracellular;
	input Real kmp_s_1243r_0398;
	input Real kmp_s_1434_br_0398;
	input Real kms_s_0193r_0398;
	input Real s_0193;
	input Real s_1243;
	input Real s_1434_b;
        output Real y;
    algorithm
        y :=  Vmax_r_0398 * ((1 / kms_s_0193r_0398)^1 * (s_0193^1 - s_1243^1 * s_1434_b^1 / Keq_r_0398) / (1 + s_0193 / kms_s_0193r_0398 + (1 + s_1243 / kmp_s_1243r_0398) * (1 + s_1434_b / kmp_s_1434_br_0398) - 1)) / intracellular;
    end function_104;


    function function_105
        	input Real Keq_r_0417;
	input Real Vmax_r_0417;
	input Real intracellular;
	input Real kmp_s_0470r_0417;
	input Real kmp_s_0514r_0417;
	input Real kmp_s_0574r_0417;
	input Real kmp_s_1091r_0417;
	input Real kmp_s_1434_br_0417;
	input Real kms_s_0763_br_0417;
	input Real kms_s_1005r_0417;
	input Real kms_s_1096r_0417;
	input Real kms_s_1132r_0417;
	input Real s_0470;
	input Real s_0514;
	input Real s_0574;
	input Real s_0763_b;
	input Real s_1005;
	input Real s_1091;
	input Real s_1096;
	input Real s_1132;
	input Real s_1434_b;
        output Real y;
    algorithm
        y :=  Vmax_r_0417 * ((1 / kms_s_0763_br_0417)^3 * (1 / kms_s_1005r_0417)^1 * (1 / kms_s_1096r_0417)^2 * (1 / kms_s_1132r_0417)^1 * (s_0763_b^3 * s_1005^1 * s_1096^2 * s_1132^1 - s_0470^1 * s_0514^1 * s_0574^1 * s_1091^2 * s_1434_b^1 / Keq_r_0417) / ((1 + s_0763_b / kms_s_0763_br_0417) * (1 + s_1005 / kms_s_1005r_0417) * (1 + s_1096 / kms_s_1096r_0417) * (1 + s_1132 / kms_s_1132r_0417) + (1 + s_0470 / kmp_s_0470r_0417) * (1 + s_0514 / kmp_s_0514r_0417) * (1 + s_0574 / kmp_s_0574r_0417) * (1 + s_1091 / kmp_s_1091r_0417) * (1 + s_1434_b / kmp_s_1434_br_0417) - 1)) / intracellular;
    end function_105;


    function function_106
        	input Real Keq_r_0418;
	input Real Vmax_r_0418;
	input Real intracellular;
	input Real kmp_s_0470r_0418;
	input Real kmp_s_0514r_0418;
	input Real kmp_s_0968r_0418;
	input Real kmp_s_1091r_0418;
	input Real kmp_s_1434_br_0418;
	input Real kms_s_0574r_0418;
	input Real kms_s_0763_br_0418;
	input Real kms_s_1005r_0418;
	input Real kms_s_1096r_0418;
	input Real s_0470;
	input Real s_0514;
	input Real s_0574;
	input Real s_0763_b;
	input Real s_0968;
	input Real s_1005;
	input Real s_1091;
	input Real s_1096;
	input Real s_1434_b;
        output Real y;
    algorithm
        y :=  Vmax_r_0418 * ((1 / kms_s_0574r_0418)^1 * (1 / kms_s_0763_br_0418)^3 * (1 / kms_s_1005r_0418)^1 * (1 / kms_s_1096r_0418)^2 * (s_0574^1 * s_0763_b^3 * s_1005^1 * s_1096^2 - s_0470^1 * s_0514^1 * s_0968^1 * s_1091^2 * s_1434_b^1 / Keq_r_0418) / ((1 + s_0574 / kms_s_0574r_0418) * (1 + s_0763_b / kms_s_0763_br_0418) * (1 + s_1005 / kms_s_1005r_0418) * (1 + s_1096 / kms_s_1096r_0418) + (1 + s_0470 / kmp_s_0470r_0418) * (1 + s_0514 / kmp_s_0514r_0418) * (1 + s_0968 / kmp_s_0968r_0418) * (1 + s_1091 / kmp_s_1091r_0418) * (1 + s_1434_b / kmp_s_1434_br_0418) - 1)) / intracellular;
    end function_106;


    function function_107
        	input Real Keq_r_0419;
	input Real Vmax_r_0419;
	input Real intracellular;
	input Real kmp_s_0470r_0419;
	input Real kmp_s_0514r_0419;
	input Real kmp_s_1028r_0419;
	input Real kmp_s_1091r_0419;
	input Real kmp_s_1434_br_0419;
	input Real kms_s_0763_br_0419;
	input Real kms_s_0968r_0419;
	input Real kms_s_1005r_0419;
	input Real kms_s_1096r_0419;
	input Real s_0470;
	input Real s_0514;
	input Real s_0763_b;
	input Real s_0968;
	input Real s_1005;
	input Real s_1028;
	input Real s_1091;
	input Real s_1096;
	input Real s_1434_b;
        output Real y;
    algorithm
        y :=  Vmax_r_0419 * ((1 / kms_s_0763_br_0419)^3 * (1 / kms_s_0968r_0419)^1 * (1 / kms_s_1005r_0419)^1 * (1 / kms_s_1096r_0419)^2 * (s_0763_b^3 * s_0968^1 * s_1005^1 * s_1096^2 - s_0470^1 * s_0514^1 * s_1028^1 * s_1091^2 * s_1434_b^1 / Keq_r_0419) / ((1 + s_0763_b / kms_s_0763_br_0419) * (1 + s_0968 / kms_s_0968r_0419) * (1 + s_1005 / kms_s_1005r_0419) * (1 + s_1096 / kms_s_1096r_0419) + (1 + s_0470 / kmp_s_0470r_0419) * (1 + s_0514 / kmp_s_0514r_0419) * (1 + s_1028 / kmp_s_1028r_0419) * (1 + s_1091 / kmp_s_1091r_0419) * (1 + s_1434_b / kmp_s_1434_br_0419) - 1)) / intracellular;
    end function_107;


    function function_108
        	input Real Keq_r_0421;
	input Real Vmax_r_0421;
	input Real intracellular;
	input Real kmp_s_0470r_0421;
	input Real kmp_s_0514r_0421;
	input Real kmp_s_1091r_0421;
	input Real kmp_s_1170r_0421;
	input Real kmp_s_1434_br_0421;
	input Real kms_s_0763_br_0421;
	input Real kms_s_1005r_0421;
	input Real kms_s_1028r_0421;
	input Real kms_s_1096r_0421;
	input Real s_0470;
	input Real s_0514;
	input Real s_0763_b;
	input Real s_1005;
	input Real s_1028;
	input Real s_1091;
	input Real s_1096;
	input Real s_1170;
	input Real s_1434_b;
        output Real y;
    algorithm
        y :=  Vmax_r_0421 * ((1 / kms_s_0763_br_0421)^3 * (1 / kms_s_1005r_0421)^1 * (1 / kms_s_1028r_0421)^1 * (1 / kms_s_1096r_0421)^2 * (s_0763_b^3 * s_1005^1 * s_1028^1 * s_1096^2 - s_0470^1 * s_0514^1 * s_1091^2 * s_1170^1 * s_1434_b^1 / Keq_r_0421) / ((1 + s_0763_b / kms_s_0763_br_0421) * (1 + s_1005 / kms_s_1005r_0421) * (1 + s_1028 / kms_s_1028r_0421) * (1 + s_1096 / kms_s_1096r_0421) + (1 + s_0470 / kmp_s_0470r_0421) * (1 + s_0514 / kmp_s_0514r_0421) * (1 + s_1091 / kmp_s_1091r_0421) * (1 + s_1170 / kmp_s_1170r_0421) * (1 + s_1434_b / kmp_s_1434_br_0421) - 1)) / intracellular;
    end function_108;


    function function_109
        	input Real Keq_r_0423;
	input Real Vmax_r_0423;
	input Real intracellular;
	input Real kmp_s_0470r_0423;
	input Real kmp_s_0514r_0423;
	input Real kmp_s_1091r_0423;
	input Real kmp_s_1329r_0423;
	input Real kmp_s_1434_br_0423;
	input Real kms_s_0763_br_0423;
	input Real kms_s_1005r_0423;
	input Real kms_s_1096r_0423;
	input Real kms_s_1170r_0423;
	input Real s_0470;
	input Real s_0514;
	input Real s_0763_b;
	input Real s_1005;
	input Real s_1091;
	input Real s_1096;
	input Real s_1170;
	input Real s_1329;
	input Real s_1434_b;
        output Real y;
    algorithm
        y :=  Vmax_r_0423 * ((1 / kms_s_0763_br_0423)^3 * (1 / kms_s_1005r_0423)^1 * (1 / kms_s_1096r_0423)^2 * (1 / kms_s_1170r_0423)^1 * (s_0763_b^3 * s_1005^1 * s_1096^2 * s_1170^1 - s_0470^1 * s_0514^1 * s_1091^2 * s_1329^1 * s_1434_b^1 / Keq_r_0423) / ((1 + s_0763_b / kms_s_0763_br_0423) * (1 + s_1005 / kms_s_1005r_0423) * (1 + s_1096 / kms_s_1096r_0423) * (1 + s_1170 / kms_s_1170r_0423) + (1 + s_0470 / kmp_s_0470r_0423) * (1 + s_0514 / kmp_s_0514r_0423) * (1 + s_1091 / kmp_s_1091r_0423) * (1 + s_1329 / kmp_s_1329r_0423) * (1 + s_1434_b / kmp_s_1434_br_0423) - 1)) / intracellular;
    end function_109;


    function function_110
        	input Real Keq_r_0425;
	input Real Vmax_r_0425;
	input Real intracellular;
	input Real kmp_s_0470r_0425;
	input Real kmp_s_0514r_0425;
	input Real kmp_s_0987r_0425;
	input Real kmp_s_1091r_0425;
	input Real kmp_s_1434_br_0425;
	input Real kms_s_0763_br_0425;
	input Real kms_s_1005r_0425;
	input Real kms_s_1096r_0425;
	input Real kms_s_1329r_0425;
	input Real s_0470;
	input Real s_0514;
	input Real s_0763_b;
	input Real s_0987;
	input Real s_1005;
	input Real s_1091;
	input Real s_1096;
	input Real s_1329;
	input Real s_1434_b;
        output Real y;
    algorithm
        y :=  Vmax_r_0425 * ((1 / kms_s_0763_br_0425)^9 * (1 / kms_s_1005r_0425)^3 * (1 / kms_s_1096r_0425)^6 * (1 / kms_s_1329r_0425)^1 * (s_0763_b^9 * s_1005^3 * s_1096^6 * s_1329^1 - s_0470^3 * s_0514^3 * s_0987^1 * s_1091^6 * s_1434_b^3 / Keq_r_0425) / ((1 + s_0763_b / kms_s_0763_br_0425) * (1 + s_1005 / kms_s_1005r_0425) * (1 + s_1096 / kms_s_1096r_0425) * (1 + s_1329 / kms_s_1329r_0425) + (1 + s_0470 / kmp_s_0470r_0425) * (1 + s_0514 / kmp_s_0514r_0425) * (1 + s_0987 / kmp_s_0987r_0425) * (1 + s_1091 / kmp_s_1091r_0425) * (1 + s_1434_b / kmp_s_1434_br_0425) - 1)) / intracellular;
    end function_110;


    function function_111
        	input Real Keq_r_0429;
	input Real Vmax_r_0429;
	input Real intracellular;
	input Real kmp_s_0470r_0429;
	input Real kmp_s_0514r_0429;
	input Real kmp_s_0582r_0429;
	input Real kmp_s_1091r_0429;
	input Real kmp_s_1434_br_0429;
	input Real kms_s_0763_br_0429;
	input Real kms_s_1005r_0429;
	input Real kms_s_1096r_0429;
	input Real kms_s_1140r_0429;
	input Real s_0470;
	input Real s_0514;
	input Real s_0582;
	input Real s_0763_b;
	input Real s_1005;
	input Real s_1091;
	input Real s_1096;
	input Real s_1140;
	input Real s_1434_b;
        output Real y;
    algorithm
        y :=  Vmax_r_0429 * ((1 / kms_s_0763_br_0429)^3 * (1 / kms_s_1005r_0429)^1 * (1 / kms_s_1096r_0429)^2 * (1 / kms_s_1140r_0429)^1 * (s_0763_b^3 * s_1005^1 * s_1096^2 * s_1140^1 - s_0470^1 * s_0514^1 * s_0582^1 * s_1091^2 * s_1434_b^1 / Keq_r_0429) / ((1 + s_0763_b / kms_s_0763_br_0429) * (1 + s_1005 / kms_s_1005r_0429) * (1 + s_1096 / kms_s_1096r_0429) * (1 + s_1140 / kms_s_1140r_0429) + (1 + s_0470 / kmp_s_0470r_0429) * (1 + s_0514 / kmp_s_0514r_0429) * (1 + s_0582 / kmp_s_0582r_0429) * (1 + s_1091 / kmp_s_1091r_0429) * (1 + s_1434_b / kmp_s_1434_br_0429) - 1)) / intracellular;
    end function_111;


    function function_112
        	input Real Keq_r_0430;
	input Real Vmax_r_0430;
	input Real intracellular;
	input Real kmp_s_0470r_0430;
	input Real kmp_s_0514r_0430;
	input Real kmp_s_1091r_0430;
	input Real kmp_s_1140r_0430;
	input Real kmp_s_1434_br_0430;
	input Real kms_s_0380r_0430;
	input Real kms_s_0763_br_0430;
	input Real kms_s_1005r_0430;
	input Real kms_s_1096r_0430;
	input Real s_0380;
	input Real s_0470;
	input Real s_0514;
	input Real s_0763_b;
	input Real s_1005;
	input Real s_1091;
	input Real s_1096;
	input Real s_1140;
	input Real s_1434_b;
        output Real y;
    algorithm
        y :=  Vmax_r_0430 * ((1 / kms_s_0380r_0430)^1 * (1 / kms_s_0763_br_0430)^9 * (1 / kms_s_1005r_0430)^3 * (1 / kms_s_1096r_0430)^6 * (s_0380^1 * s_0763_b^9 * s_1005^3 * s_1096^6 - s_0470^3 * s_0514^3 * s_1091^6 * s_1140^1 * s_1434_b^3 / Keq_r_0430) / ((1 + s_0380 / kms_s_0380r_0430) * (1 + s_0763_b / kms_s_0763_br_0430) * (1 + s_1005 / kms_s_1005r_0430) * (1 + s_1096 / kms_s_1096r_0430) + (1 + s_0470 / kmp_s_0470r_0430) * (1 + s_0514 / kmp_s_0514r_0430) * (1 + s_1091 / kmp_s_1091r_0430) * (1 + s_1140 / kmp_s_1140r_0430) * (1 + s_1434_b / kmp_s_1434_br_0430) - 1)) / intracellular;
    end function_112;


    function function_113
        	input Real Keq_r_0437;
	input Real Vmax_r_0437;
	input Real intracellular;
	input Real kmp_s_0434r_0437;
	input Real kmp_s_0605r_0437;
	input Real kmp_s_1355r_0437;
	input Real kms_s_0446r_0437;
	input Real kms_s_0514r_0437;
	input Real kms_s_0987r_0437;
	input Real s_0434;
	input Real s_0446;
	input Real s_0514;
	input Real s_0605;
	input Real s_0987;
	input Real s_1355;
        output Real y;
    algorithm
        y :=  Vmax_r_0437 * ((1 / kms_s_0446r_0437)^1 * (1 / kms_s_0514r_0437)^1 * (1 / kms_s_0987r_0437)^1 * (s_0446^1 * s_0514^1 * s_0987^1 - s_0434^1 * s_0605^1 * s_1355^1 / Keq_r_0437) / ((1 + s_0446 / kms_s_0446r_0437) * (1 + s_0514 / kms_s_0514r_0437) * (1 + s_0987 / kms_s_0987r_0437) + (1 + s_0434 / kmp_s_0434r_0437) * (1 + s_0605 / kmp_s_0605r_0437) * (1 + s_1355 / kmp_s_1355r_0437) - 1)) / intracellular;
    end function_113;


    function function_114
        	input Real Keq_r_0439;
	input Real Vmax_r_0439;
	input Real intracellular;
	input Real kmp_s_0446r_0439;
	input Real kmp_s_0514r_0439;
	input Real kmp_s_1329r_0439;
	input Real kms_s_0434r_0439;
	input Real kms_s_0605r_0439;
	input Real kms_s_1334r_0439;
	input Real s_0434;
	input Real s_0446;
	input Real s_0514;
	input Real s_0605;
	input Real s_1329;
	input Real s_1334;
        output Real y;
    algorithm
        y :=  Vmax_r_0439 * ((1 / kms_s_0434r_0439)^1 * (1 / kms_s_0605r_0439)^1 * (1 / kms_s_1334r_0439)^1 * (s_0434^1 * s_0605^1 * s_1334^1 - s_0446^1 * s_0514^1 * s_1329^1 / Keq_r_0439) / ((1 + s_0434 / kms_s_0434r_0439) * (1 + s_0605 / kms_s_0605r_0439) * (1 + s_1334 / kms_s_1334r_0439) + (1 + s_0446 / kmp_s_0446r_0439) * (1 + s_0514 / kmp_s_0514r_0439) * (1 + s_1329 / kmp_s_1329r_0439) - 1)) / intracellular;
    end function_114;


    function function_115
        	input Real Keq_r_0442;
	input Real Vmax_r_0442;
	input Real intracellular;
	input Real kmp_s_0446r_0442;
	input Real kmp_s_0514r_0442;
	input Real kmp_s_1132r_0442;
	input Real kms_s_0434r_0442;
	input Real kms_s_0605r_0442;
	input Real kms_s_1140r_0442;
	input Real s_0434;
	input Real s_0446;
	input Real s_0514;
	input Real s_0605;
	input Real s_1132;
	input Real s_1140;
        output Real y;
    algorithm
        y :=  Vmax_r_0442 * ((1 / kms_s_0434r_0442)^1 * (1 / kms_s_0605r_0442)^1 * (1 / kms_s_1140r_0442)^1 * (s_0434^1 * s_0605^1 * s_1140^1 - s_0446^1 * s_0514^1 * s_1132^1 / Keq_r_0442) / ((1 + s_0434 / kms_s_0434r_0442) * (1 + s_0605 / kms_s_0605r_0442) * (1 + s_1140 / kms_s_1140r_0442) + (1 + s_0446 / kmp_s_0446r_0442) * (1 + s_0514 / kmp_s_0514r_0442) * (1 + s_1132 / kmp_s_1132r_0442) - 1)) / intracellular;
    end function_115;


    function function_116
        	input Real Keq_r_0464;
	input Real Vmax_r_0464;
	input Real intracellular;
	input Real kmp_s_0470r_0464;
	input Real kmp_s_0514r_0464;
	input Real kmp_s_0977r_0464;
	input Real kmp_s_1091r_0464;
	input Real kmp_s_1434_br_0464;
	input Real kms_s_0582r_0464;
	input Real kms_s_0763_br_0464;
	input Real kms_s_1005r_0464;
	input Real kms_s_1096r_0464;
	input Real s_0470;
	input Real s_0514;
	input Real s_0582;
	input Real s_0763_b;
	input Real s_0977;
	input Real s_1005;
	input Real s_1091;
	input Real s_1096;
	input Real s_1434_b;
        output Real y;
    algorithm
        y :=  Vmax_r_0464 * ((1 / kms_s_0582r_0464)^1 * (1 / kms_s_0763_br_0464)^3 * (1 / kms_s_1005r_0464)^1 * (1 / kms_s_1096r_0464)^2 * (s_0582^1 * s_0763_b^3 * s_1005^1 * s_1096^2 - s_0470^1 * s_0514^1 * s_0977^1 * s_1091^2 * s_1434_b^1 / Keq_r_0464) / ((1 + s_0582 / kms_s_0582r_0464) * (1 + s_0763_b / kms_s_0763_br_0464) * (1 + s_1005 / kms_s_1005r_0464) * (1 + s_1096 / kms_s_1096r_0464) + (1 + s_0470 / kmp_s_0470r_0464) * (1 + s_0514 / kmp_s_0514r_0464) * (1 + s_0977 / kmp_s_0977r_0464) * (1 + s_1091 / kmp_s_1091r_0464) * (1 + s_1434_b / kmp_s_1434_br_0464) - 1)) / intracellular;
    end function_116;


    function function_117
        	input Real Keq_r_0465;
	input Real Vmax_r_0465;
	input Real intracellular;
	input Real kmp_s_0470r_0465;
	input Real kmp_s_0514r_0465;
	input Real kmp_s_1044r_0465;
	input Real kmp_s_1091r_0465;
	input Real kmp_s_1434_br_0465;
	input Real kms_s_0763_br_0465;
	input Real kms_s_0977r_0465;
	input Real kms_s_1005r_0465;
	input Real kms_s_1096r_0465;
	input Real s_0470;
	input Real s_0514;
	input Real s_0763_b;
	input Real s_0977;
	input Real s_1005;
	input Real s_1044;
	input Real s_1091;
	input Real s_1096;
	input Real s_1434_b;
        output Real y;
    algorithm
        y :=  Vmax_r_0465 * ((1 / kms_s_0763_br_0465)^3 * (1 / kms_s_0977r_0465)^1 * (1 / kms_s_1005r_0465)^1 * (1 / kms_s_1096r_0465)^2 * (s_0763_b^3 * s_0977^1 * s_1005^1 * s_1096^2 - s_0470^1 * s_0514^1 * s_1044^1 * s_1091^2 * s_1434_b^1 / Keq_r_0465) / ((1 + s_0763_b / kms_s_0763_br_0465) * (1 + s_0977 / kms_s_0977r_0465) * (1 + s_1005 / kms_s_1005r_0465) * (1 + s_1096 / kms_s_1096r_0465) + (1 + s_0470 / kmp_s_0470r_0465) * (1 + s_0514 / kmp_s_0514r_0465) * (1 + s_1044 / kmp_s_1044r_0465) * (1 + s_1091 / kmp_s_1091r_0465) * (1 + s_1434_b / kmp_s_1434_br_0465) - 1)) / intracellular;
    end function_117;


    function function_118
        	input Real Keq_r_0466;
	input Real Vmax_r_0466;
	input Real intracellular;
	input Real kmp_s_0470r_0466;
	input Real kmp_s_0514r_0466;
	input Real kmp_s_1091r_0466;
	input Real kmp_s_1187r_0466;
	input Real kmp_s_1434_br_0466;
	input Real kms_s_0763_br_0466;
	input Real kms_s_1005r_0466;
	input Real kms_s_1044r_0466;
	input Real kms_s_1096r_0466;
	input Real s_0470;
	input Real s_0514;
	input Real s_0763_b;
	input Real s_1005;
	input Real s_1044;
	input Real s_1091;
	input Real s_1096;
	input Real s_1187;
	input Real s_1434_b;
        output Real y;
    algorithm
        y :=  Vmax_r_0466 * ((1 / kms_s_0763_br_0466)^3 * (1 / kms_s_1005r_0466)^1 * (1 / kms_s_1044r_0466)^1 * (1 / kms_s_1096r_0466)^2 * (s_0763_b^3 * s_1005^1 * s_1044^1 * s_1096^2 - s_0470^1 * s_0514^1 * s_1091^2 * s_1187^1 * s_1434_b^1 / Keq_r_0466) / ((1 + s_0763_b / kms_s_0763_br_0466) * (1 + s_1005 / kms_s_1005r_0466) * (1 + s_1044 / kms_s_1044r_0466) * (1 + s_1096 / kms_s_1096r_0466) + (1 + s_0470 / kmp_s_0470r_0466) * (1 + s_0514 / kmp_s_0514r_0466) * (1 + s_1091 / kmp_s_1091r_0466) * (1 + s_1187 / kmp_s_1187r_0466) * (1 + s_1434_b / kmp_s_1434_br_0466) - 1)) / intracellular;
    end function_118;


    function function_119
        	input Real Keq_r_0467;
	input Real Vmax_r_0467;
	input Real intracellular;
	input Real kmp_s_0470r_0467;
	input Real kmp_s_0514r_0467;
	input Real kmp_s_1091r_0467;
	input Real kmp_s_1334r_0467;
	input Real kmp_s_1434_br_0467;
	input Real kms_s_0763_br_0467;
	input Real kms_s_1005r_0467;
	input Real kms_s_1096r_0467;
	input Real kms_s_1187r_0467;
	input Real s_0470;
	input Real s_0514;
	input Real s_0763_b;
	input Real s_1005;
	input Real s_1091;
	input Real s_1096;
	input Real s_1187;
	input Real s_1334;
	input Real s_1434_b;
        output Real y;
    algorithm
        y :=  Vmax_r_0467 * ((1 / kms_s_0763_br_0467)^3 * (1 / kms_s_1005r_0467)^1 * (1 / kms_s_1096r_0467)^2 * (1 / kms_s_1187r_0467)^1 * (s_0763_b^3 * s_1005^1 * s_1096^2 * s_1187^1 - s_0470^1 * s_0514^1 * s_1091^2 * s_1334^1 * s_1434_b^1 / Keq_r_0467) / ((1 + s_0763_b / kms_s_0763_br_0467) * (1 + s_1005 / kms_s_1005r_0467) * (1 + s_1096 / kms_s_1096r_0467) * (1 + s_1187 / kms_s_1187r_0467) + (1 + s_0470 / kmp_s_0470r_0467) * (1 + s_0514 / kmp_s_0514r_0467) * (1 + s_1091 / kmp_s_1091r_0467) * (1 + s_1334 / kmp_s_1334r_0467) * (1 + s_1434_b / kmp_s_1434_br_0467) - 1)) / intracellular;
    end function_119;


    function function_120
        	input Real Keq_r_0479;
	input Real Vmax_r_0479;
	input Real intracellular;
	input Real kmp_s_0122r_0479;
	input Real kmp_s_0400r_0479;
	input Real kmp_s_1207r_0479;
	input Real kms_s_0309r_0479;
	input Real kms_s_0446r_0479;
	input Real kms_s_0689r_0479;
	input Real s_0122;
	input Real s_0309;
	input Real s_0400;
	input Real s_0446;
	input Real s_0689;
	input Real s_1207;
        output Real y;
    algorithm
        y :=  Vmax_r_0479 * ((1 / kms_s_0309r_0479)^1 * (1 / kms_s_0446r_0479)^1 * (1 / kms_s_0689r_0479)^1 * (s_0309^1 * s_0446^1 * s_0689^1 - s_0122^1 * s_0400^1 * s_1207^1 / Keq_r_0479) / ((1 + s_0309 / kms_s_0309r_0479) * (1 + s_0446 / kms_s_0446r_0479) * (1 + s_0689 / kms_s_0689r_0479) + (1 + s_0122 / kmp_s_0122r_0479) * (1 + s_0400 / kmp_s_0400r_0479) * (1 + s_1207 / kmp_s_1207r_0479) - 1)) / intracellular;
    end function_120;


    function function_121
        	input Real Keq_r_0484;
	input Real Vmax_r_0484;
	input Real intracellular;
	input Real kmp_s_0731r_0484;
	input Real kmp_s_0735r_0484;
	input Real kms_s_0537r_0484;
	input Real s_0537;
	input Real s_0731;
	input Real s_0735;
        output Real y;
    algorithm
        y :=  Vmax_r_0484 * ((1 / kms_s_0537r_0484)^1 * (s_0537^1 - s_0731^1 * s_0735^1 / Keq_r_0484) / (1 + s_0537 / kms_s_0537r_0484 + (1 + s_0731 / kmp_s_0731r_0484) * (1 + s_0735 / kmp_s_0735r_0484) - 1)) / intracellular;
    end function_121;


    function function_122
        	input Real Keq_r_0485;
	input Real Vmax_r_0485;
	input Real intracellular;
	input Real kmp_s_0692r_0485;
	input Real kmp_s_1434_br_0485;
	input Real kms_s_0069r_0485;
	input Real s_0069;
	input Real s_0692;
	input Real s_1434_b;
        output Real y;
    algorithm
        y :=  Vmax_r_0485 * ((1 / kms_s_0069r_0485)^1 * (s_0069^1 - s_0692^1 * s_1434_b^1 / Keq_r_0485) / (1 + s_0069 / kms_s_0069r_0485 + (1 + s_0692 / kmp_s_0692r_0485) * (1 + s_1434_b / kmp_s_1434_br_0485) - 1)) / intracellular;
    end function_122;


    function function_123
        	input Real Keq_r_0488;
	input Real Vmax_r_0488;
	input Real intracellular;
	input Real kmp_s_0657r_0488;
	input Real kmp_s_1338r_0488;
	input Real kms_s_0659r_0488;
	input Real kms_s_0692r_0488;
	input Real s_0657;
	input Real s_0659;
	input Real s_0692;
	input Real s_1338;
        output Real y;
    algorithm
        y :=  Vmax_r_0488 * ((1 / kms_s_0659r_0488)^1 * (1 / kms_s_0692r_0488)^1 * (s_0659^1 * s_0692^1 - s_0657^1 * s_1338^1 / Keq_r_0488) / ((1 + s_0659 / kms_s_0659r_0488) * (1 + s_0692 / kms_s_0692r_0488) + (1 + s_0657 / kmp_s_0657r_0488) * (1 + s_1338 / kmp_s_1338r_0488) - 1)) / intracellular;
    end function_123;


    function function_124
        	input Real Keq_r_0496;
	input Real Vmax_r_0496;
	input Real intracellular;
	input Real kmp_s_0195r_0496;
	input Real kmp_s_0605r_0496;
	input Real kms_s_0712r_0496;
	input Real kms_s_0850r_0496;
	input Real s_0195;
	input Real s_0605;
	input Real s_0712;
	input Real s_0850;
        output Real y;
    algorithm
        y :=  Vmax_r_0496 * ((1 / kms_s_0712r_0496)^1 * (1 / kms_s_0850r_0496)^1 * (s_0712^1 * s_0850^1 - s_0195^1 * s_0605^1 / Keq_r_0496) / ((1 + s_0712 / kms_s_0712r_0496) * (1 + s_0850 / kms_s_0850r_0496) + (1 + s_0195 / kmp_s_0195r_0496) * (1 + s_0605 / kmp_s_0605r_0496) - 1)) / intracellular;
    end function_124;


    function function_125
        	input Real Keq_r_0499;
	input Real Vmax_r_0499;
	input Real intracellular;
	input Real kmp_s_0400r_0499;
	input Real kmp_s_0455r_0499;
	input Real kmp_s_0763_br_0499;
	input Real kms_s_0446r_0499;
	input Real kms_s_0545r_0499;
	input Real s_0400;
	input Real s_0446;
	input Real s_0455;
	input Real s_0545;
	input Real s_0763_b;
        output Real y;
    algorithm
        y :=  Vmax_r_0499 * ((1 / kms_s_0446r_0499)^1 * (1 / kms_s_0545r_0499)^1 * (s_0446^1 * s_0545^1 - s_0400^1 * s_0455^1 * s_0763_b^1 / Keq_r_0499) / ((1 + s_0446 / kms_s_0446r_0499) * (1 + s_0545 / kms_s_0545r_0499) + (1 + s_0400 / kmp_s_0400r_0499) * (1 + s_0455 / kmp_s_0455r_0499) * (1 + s_0763_b / kmp_s_0763_br_0499) - 1)) / intracellular;
    end function_125;


    function function_127
        	input Real Keq_r_0505;
	input Real Vmax_r_0505;
	input Real intracellular;
	input Real kmp_s_0539r_0505;
	input Real kms_s_0410r_0505;
	input Real s_0410;
	input Real s_0539;
        output Real y;
    algorithm
        y :=  Vmax_r_0505 * ((1 / kms_s_0410r_0505)^1 * (s_0410^1 - s_0539^1 / Keq_r_0505) / (1 + s_0410 / kms_s_0410r_0505 + 1 + s_0539 / kmp_s_0539r_0505 - 1)) / intracellular;
    end function_127;


    function function_128
        	input Real Keq_r_0506;
	input Real Vmax_r_0506;
	input Real intracellular;
	input Real kmp_s_0400r_0506;
	input Real kmp_s_0894r_0506;
	input Real kms_s_0446r_0506;
	input Real kms_s_0899r_0506;
	input Real s_0400;
	input Real s_0446;
	input Real s_0894;
	input Real s_0899;
        output Real y;
    algorithm
        y :=  Vmax_r_0506 * ((1 / kms_s_0446r_0506)^1 * (1 / kms_s_0899r_0506)^1 * (s_0446^1 * s_0899^1 - s_0400^1 * s_0894^1 / Keq_r_0506) / ((1 + s_0446 / kms_s_0446r_0506) * (1 + s_0899 / kms_s_0899r_0506) + (1 + s_0400 / kmp_s_0400r_0506) * (1 + s_0894 / kmp_s_0894r_0506) - 1)) / intracellular;
    end function_128;


    function function_129
        	input Real Keq_r_0509;
	input Real Vmax_r_0509;
	input Real intracellular;
	input Real kmp_s_0899r_0509;
	input Real kmp_s_1091r_0509;
	input Real kmp_s_1434_br_0509;
	input Real kms_s_0185r_0509;
	input Real kms_s_0430r_0509;
	input Real kms_s_0763_br_0509;
	input Real kms_s_1096r_0509;
	input Real s_0185;
	input Real s_0430;
	input Real s_0763_b;
	input Real s_0899;
	input Real s_1091;
	input Real s_1096;
	input Real s_1434_b;
        output Real y;
    algorithm
        y :=  Vmax_r_0509 * ((1 / kms_s_0185r_0509)^1 * (1 / kms_s_0430r_0509)^1 * (1 / kms_s_0763_br_0509)^1 * (1 / kms_s_1096r_0509)^1 * (s_0185^1 * s_0430^1 * s_0763_b^1 * s_1096^1 - s_0899^1 * s_1091^1 * s_1434_b^1 / Keq_r_0509) / ((1 + s_0185 / kms_s_0185r_0509) * (1 + s_0430 / kms_s_0430r_0509) * (1 + s_0763_b / kms_s_0763_br_0509) * (1 + s_1096 / kms_s_1096r_0509) + (1 + s_0899 / kmp_s_0899r_0509) * (1 + s_1091 / kmp_s_1091r_0509) * (1 + s_1434_b / kmp_s_1434_br_0509) - 1)) / intracellular;
    end function_129;


    function function_130
        	input Real Keq_r_0510;
	input Real Vmax_r_0510;
	input Real intracellular;
	input Real kmp_s_0899r_0510;
	input Real kmp_s_1082r_0510;
	input Real kms_s_0185r_0510;
	input Real kms_s_0763_br_0510;
	input Real kms_s_0907r_0510;
	input Real kms_s_1087r_0510;
	input Real s_0185;
	input Real s_0763_b;
	input Real s_0899;
	input Real s_0907;
	input Real s_1082;
	input Real s_1087;
        output Real y;
    algorithm
        y :=  Vmax_r_0510 * ((1 / kms_s_0185r_0510)^1 * (1 / kms_s_0763_br_0510)^1 * (1 / kms_s_0907r_0510)^1 * (1 / kms_s_1087r_0510)^1 * (s_0185^1 * s_0763_b^1 * s_0907^1 * s_1087^1 - s_0899^2 * s_1082^1 / Keq_r_0510) / ((1 + s_0185 / kms_s_0185r_0510) * (1 + s_0763_b / kms_s_0763_br_0510) * (1 + s_0907 / kms_s_0907r_0510) * (1 + s_1087 / kms_s_1087r_0510) + (1 + s_0899 / kmp_s_0899r_0510) * (1 + s_1082 / kmp_s_1082r_0510) - 1)) / intracellular;
    end function_130;


    function function_131
        	input Real Keq_r_0512;
	input Real Vmax_r_0512;
	input Real intracellular;
	input Real kmp_s_0905r_0512;
	input Real kmp_s_1082r_0512;
	input Real kmp_s_1207r_0512;
	input Real kms_s_0763_br_0512;
	input Real kms_s_0894r_0512;
	input Real kms_s_1087r_0512;
	input Real s_0763_b;
	input Real s_0894;
	input Real s_0905;
	input Real s_1082;
	input Real s_1087;
	input Real s_1207;
        output Real y;
    algorithm
        y :=  Vmax_r_0512 * ((1 / kms_s_0763_br_0512)^1 * (1 / kms_s_0894r_0512)^1 * (1 / kms_s_1087r_0512)^1 * (s_0763_b^1 * s_0894^1 * s_1087^1 - s_0905^1 * s_1082^1 * s_1207^1 / Keq_r_0512) / ((1 + s_0763_b / kms_s_0763_br_0512) * (1 + s_0894 / kms_s_0894r_0512) * (1 + s_1087 / kms_s_1087r_0512) + (1 + s_0905 / kmp_s_0905r_0512) * (1 + s_1082 / kmp_s_1082r_0512) * (1 + s_1207 / kmp_s_1207r_0512) - 1)) / intracellular;
    end function_131;


    function function_132
        	input Real Keq_r_0514;
	input Real Vmax_r_0514;
	input Real intracellular;
	input Real kmp_s_0333r_0514;
	input Real kmp_s_0605r_0514;
	input Real kmp_s_0899r_0514;
	input Real kms_s_0331r_0514;
	input Real kms_s_0907r_0514;
	input Real kms_s_1434_br_0514;
	input Real s_0331;
	input Real s_0333;
	input Real s_0605;
	input Real s_0899;
	input Real s_0907;
	input Real s_1434_b;
        output Real y;
    algorithm
        y :=  Vmax_r_0514 * ((1 / kms_s_0331r_0514)^1 * (1 / kms_s_0907r_0514)^1 * (1 / kms_s_1434_br_0514)^1 * (s_0331^1 * s_0907^1 * s_1434_b^1 - s_0333^1 * s_0605^1 * s_0899^1 / Keq_r_0514) / ((1 + s_0331 / kms_s_0331r_0514) * (1 + s_0907 / kms_s_0907r_0514) * (1 + s_1434_b / kms_s_1434_br_0514) + (1 + s_0333 / kmp_s_0333r_0514) * (1 + s_0605 / kmp_s_0605r_0514) * (1 + s_0899 / kmp_s_0899r_0514) - 1)) / intracellular;
    end function_132;


    function function_133
        	input Real Keq_r_0515;
	input Real Vmax_r_0515;
	input Real intracellular;
	input Real kmp_s_0400r_0515;
	input Real kmp_s_0763_br_0515;
	input Real kmp_s_0907r_0515;
	input Real kmp_s_1207r_0515;
	input Real kms_s_0430r_0515;
	input Real kms_s_0446r_0515;
	input Real kms_s_0899r_0515;
	input Real s_0400;
	input Real s_0430;
	input Real s_0446;
	input Real s_0763_b;
	input Real s_0899;
	input Real s_0907;
	input Real s_1207;
        output Real y;
    algorithm
        y :=  Vmax_r_0515 * ((1 / kms_s_0430r_0515)^1 * (1 / kms_s_0446r_0515)^1 * (1 / kms_s_0899r_0515)^1 * (s_0430^1 * s_0446^1 * s_0899^1 - s_0400^1 * s_0763_b^1 * s_0907^1 * s_1207^1 / Keq_r_0515) / ((1 + s_0430 / kms_s_0430r_0515) * (1 + s_0446 / kms_s_0446r_0515) * (1 + s_0899 / kms_s_0899r_0515) + (1 + s_0400 / kmp_s_0400r_0515) * (1 + s_0763_b / kmp_s_0763_br_0515) * (1 + s_0907 / kmp_s_0907r_0515) * (1 + s_1207 / kmp_s_1207r_0515) - 1)) / intracellular;
    end function_133;


    function function_135
        	input Real Keq_r_0526;
	input Real Vmax_r_0526;
	input Real intracellular;
	input Real kmp_s_0734r_0526;
	input Real kmp_s_0763_br_0526;
	input Real kmp_s_1096r_0526;
	input Real kms_s_0732r_0526;
	input Real kms_s_1091r_0526;
	input Real s_0732;
	input Real s_0734;
	input Real s_0763_b;
	input Real s_1091;
	input Real s_1096;
        output Real y;
    algorithm
        y :=  Vmax_r_0526 * ((1 / kms_s_0732r_0526)^1 * (1 / kms_s_1091r_0526)^1 * (s_0732^1 * s_1091^1 - s_0734^1 * s_0763_b^1 * s_1096^1 / Keq_r_0526) / ((1 + s_0732 / kms_s_0732r_0526) * (1 + s_1091 / kms_s_1091r_0526) + (1 + s_0734 / kmp_s_0734r_0526) * (1 + s_0763_b / kmp_s_0763_br_0526) * (1 + s_1096 / kmp_s_1096r_0526) - 1)) / intracellular;
    end function_135;


    function function_136
        	input Real Keq_r_0528;
	input Real Vmax_r_0528;
	input Real intracellular;
	input Real kmp_s_0732r_0528;
	input Real kmp_s_1207r_0528;
	input Real kms_s_1315r_0528;
	input Real kms_s_1434_br_0528;
	input Real s_0732;
	input Real s_1207;
	input Real s_1315;
	input Real s_1434_b;
        output Real y;
    algorithm
        y :=  Vmax_r_0528 * ((1 / kms_s_1315r_0528)^1 * (1 / kms_s_1434_br_0528)^1 * (s_1315^1 * s_1434_b^1 - s_0732^1 * s_1207^1 / Keq_r_0528) / ((1 + s_1315 / kms_s_1315r_0528) * (1 + s_1434_b / kms_s_1434_br_0528) + (1 + s_0732 / kmp_s_0732r_0528) * (1 + s_1207 / kmp_s_1207r_0528) - 1)) / intracellular;
    end function_136;


    function function_137
        	input Real Keq_r_0529;
	input Real Vmax_r_0529;
	input Real intracellular;
	input Real kmp_s_0659r_0529;
	input Real kmp_s_0735r_0529;
	input Real kms_s_0657r_0529;
	input Real kms_s_1315r_0529;
	input Real s_0657;
	input Real s_0659;
	input Real s_0735;
	input Real s_1315;
        output Real y;
    algorithm
        y :=  Vmax_r_0529 * ((1 / kms_s_0657r_0529)^1 * (1 / kms_s_1315r_0529)^1 * (s_0657^1 * s_1315^1 - s_0659^1 * s_0735^1 / Keq_r_0529) / ((1 + s_0657 / kms_s_0657r_0529) * (1 + s_1315 / kms_s_1315r_0529) + (1 + s_0659 / kmp_s_0659r_0529) * (1 + s_0735 / kmp_s_0735r_0529) - 1)) / intracellular;
    end function_137;


    function function_138
        	input Real Keq_r_0530;
	input Real Vmax_r_0530;
	input Real intracellular;
	input Real kmp_s_1082r_0530;
	input Real kmp_s_1315r_0530;
	input Real kms_s_0735r_0530;
	input Real kms_s_0763_br_0530;
	input Real kms_s_1087r_0530;
	input Real s_0735;
	input Real s_0763_b;
	input Real s_1082;
	input Real s_1087;
	input Real s_1315;
        output Real y;
    algorithm
        y :=  Vmax_r_0530 * ((1 / kms_s_0735r_0530)^1 * (1 / kms_s_0763_br_0530)^1 * (1 / kms_s_1087r_0530)^1 * (s_0735^1 * s_0763_b^1 * s_1087^1 - s_1082^1 * s_1315^1 / Keq_r_0530) / ((1 + s_0735 / kms_s_0735r_0530) * (1 + s_0763_b / kms_s_0763_br_0530) * (1 + s_1087 / kms_s_1087r_0530) + (1 + s_1082 / kmp_s_1082r_0530) * (1 + s_1315 / kmp_s_1315r_0530) - 1)) / intracellular;
    end function_138;


    function function_139
        	input Real Keq_r_0534;
	input Real Vmax_r_0534;
	input Real intracellular;
	input Real kmp_s_0083r_0534;
	input Real kmp_s_0514r_0534;
	input Real kmp_s_0763_br_0534;
	input Real kms_s_0386r_0534;
	input Real kms_s_1315r_0534;
	input Real s_0083;
	input Real s_0386;
	input Real s_0514;
	input Real s_0763_b;
	input Real s_1315;
        output Real y;
    algorithm
        y :=  Vmax_r_0534 * ((1 / kms_s_0386r_0534)^1 * (1 / kms_s_1315r_0534)^1 * (s_0386^1 * s_1315^1 - s_0083^1 * s_0514^1 * s_0763_b^2 / Keq_r_0534) / ((1 + s_0386 / kms_s_0386r_0534) * (1 + s_1315 / kms_s_1315r_0534) + (1 + s_0083 / kmp_s_0083r_0534) * (1 + s_0514 / kmp_s_0514r_0534) * (1 + s_0763_b / kmp_s_0763_br_0534) - 1)) / intracellular;
    end function_139;


    function function_140
        	input Real Keq_r_0538;
	input Real Vmax_r_0538;
	input Real intracellular;
	input Real kmp_s_0307r_0538;
	input Real kmp_s_0430r_0538;
	input Real kmp_s_0470r_0538;
	input Real kmp_s_1087r_0538;
	input Real kms_s_0309r_0538;
	input Real kms_s_0740r_0538;
	input Real kms_s_1082r_0538;
	input Real s_0307;
	input Real s_0309;
	input Real s_0430;
	input Real s_0470;
	input Real s_0740;
	input Real s_1082;
	input Real s_1087;
        output Real y;
    algorithm
        y :=  Vmax_r_0538 * ((1 / kms_s_0309r_0538)^1 * (1 / kms_s_0740r_0538)^1 * (1 / kms_s_1082r_0538)^1 * (s_0309^1 * s_0740^1 * s_1082^1 - s_0307^1 * s_0430^1 * s_0470^1 * s_1087^1 / Keq_r_0538) / ((1 + s_0309 / kms_s_0309r_0538) * (1 + s_0740 / kms_s_0740r_0538) * (1 + s_1082 / kms_s_1082r_0538) + (1 + s_0307 / kmp_s_0307r_0538) * (1 + s_0430 / kmp_s_0430r_0538) * (1 + s_0470 / kmp_s_0470r_0538) * (1 + s_1087 / kmp_s_1087r_0538) - 1)) / intracellular;
    end function_140;


    function function_141
        	input Real Keq_r_0539;
	input Real Vmax_r_0539;
	input Real intracellular;
	input Real kmp_s_0309r_0539;
	input Real kmp_s_0943r_0539;
	input Real kms_s_0307r_0539;
	input Real kms_s_0740r_0539;
	input Real kms_s_1434_br_0539;
	input Real s_0307;
	input Real s_0309;
	input Real s_0740;
	input Real s_0943;
	input Real s_1434_b;
        output Real y;
    algorithm
        y :=  Vmax_r_0539 * ((1 / kms_s_0307r_0539)^1 * (1 / kms_s_0740r_0539)^1 * (1 / kms_s_1434_br_0539)^1 * (s_0307^1 * s_0740^1 * s_1434_b^1 - s_0309^1 * s_0943^1 / Keq_r_0539) / ((1 + s_0307 / kms_s_0307r_0539) * (1 + s_0740 / kms_s_0740r_0539) * (1 + s_1434_b / kms_s_1434_br_0539) + (1 + s_0309 / kmp_s_0309r_0539) * (1 + s_0943 / kmp_s_0943r_0539) - 1)) / intracellular;
    end function_141;


    function function_142
        	input Real Keq_r_0547;
	input Real Vmax_r_0547;
	input Real intracellular;
	input Real kmp_s_0438r_0547;
	input Real kmp_s_0763_br_0547;
	input Real kmp_s_1411r_0547;
	input Real kms_s_1415r_0547;
	input Real kms_s_1434_br_0547;
	input Real s_0438;
	input Real s_0763_b;
	input Real s_1411;
	input Real s_1415;
	input Real s_1434_b;
        output Real y;
    algorithm
        y :=  Vmax_r_0547 * ((1 / kms_s_1415r_0547)^1 * (1 / kms_s_1434_br_0547)^1 * (s_1415^1 * s_1434_b^1 - s_0438^1 * s_0763_b^1 * s_1411^1 / Keq_r_0547) / ((1 + s_1415 / kms_s_1415r_0547) * (1 + s_1434_b / kms_s_1434_br_0547) + (1 + s_0438 / kmp_s_0438r_0547) * (1 + s_0763_b / kmp_s_0763_br_0547) * (1 + s_1411 / kmp_s_1411r_0547) - 1)) / intracellular;
    end function_142;


    function function_143
        	input Real Keq_r_0551;
	input Real Vmax_r_0551;
	input Real intracellular;
	input Real kmp_s_0434r_0551;
	input Real kmp_s_0605r_0551;
	input Real kmp_s_0752r_0551;
	input Real kmp_s_0763_br_0551;
	input Real kmp_s_0899r_0551;
	input Real kms_s_0306r_0551;
	input Real kms_s_0446r_0551;
	input Real kms_s_0907r_0551;
	input Real kms_s_1434_br_0551;
	input Real s_0306;
	input Real s_0434;
	input Real s_0446;
	input Real s_0605;
	input Real s_0752;
	input Real s_0763_b;
	input Real s_0899;
	input Real s_0907;
	input Real s_1434_b;
        output Real y;
    algorithm
        y :=  Vmax_r_0551 * ((1 / kms_s_0306r_0551)^1 * (1 / kms_s_0446r_0551)^1 * (1 / kms_s_0907r_0551)^1 * (1 / kms_s_1434_br_0551)^1 * (s_0306^1 * s_0446^1 * s_0907^1 * s_1434_b^1 - s_0434^1 * s_0605^1 * s_0752^1 * s_0763_b^2 * s_0899^1 / Keq_r_0551) / ((1 + s_0306 / kms_s_0306r_0551) * (1 + s_0446 / kms_s_0446r_0551) * (1 + s_0907 / kms_s_0907r_0551) * (1 + s_1434_b / kms_s_1434_br_0551) + (1 + s_0434 / kmp_s_0434r_0551) * (1 + s_0605 / kmp_s_0605r_0551) * (1 + s_0752 / kmp_s_0752r_0551) * (1 + s_0763_b / kmp_s_0763_br_0551) * (1 + s_0899 / kmp_s_0899r_0551) - 1)) / intracellular;
    end function_143;


    function function_144
        	input Real Keq_r_0562;
	input Real Vmax_r_0562;
	input Real intracellular;
	input Real kmp_s_0145r_0562;
	input Real kmp_s_0605r_0562;
	input Real kmp_s_0689r_0562;
	input Real kmp_s_0763_br_0562;
	input Real kms_s_0755r_0562;
	input Real kms_s_1434_br_0562;
	input Real s_0145;
	input Real s_0605;
	input Real s_0689;
	input Real s_0755;
	input Real s_0763_b;
	input Real s_1434_b;
        output Real y;
    algorithm
        y :=  Vmax_r_0562 * ((1 / kms_s_0755r_0562)^1 * (1 / kms_s_1434_br_0562)^3 * (s_0755^1 * s_1434_b^3 - s_0145^1 * s_0605^1 * s_0689^1 * s_0763_b^2 / Keq_r_0562) / ((1 + s_0755 / kms_s_0755r_0562) * (1 + s_1434_b / kms_s_1434_br_0562) + (1 + s_0145 / kmp_s_0145r_0562) * (1 + s_0605 / kmp_s_0605r_0562) * (1 + s_0689 / kmp_s_0689r_0562) * (1 + s_0763_b / kmp_s_0763_br_0562) - 1)) / intracellular;
    end function_144;


    function function_145
        	input Real Keq_r_0567;
	input Real Vmax_r_0567;
	input Real intracellular;
	input Real kmp_s_0400r_0567;
	input Real kmp_s_0706r_0567;
	input Real kms_s_0446r_0567;
	input Real kms_s_0752r_0567;
	input Real s_0400;
	input Real s_0446;
	input Real s_0706;
	input Real s_0752;
        output Real y;
    algorithm
        y :=  Vmax_r_0567 * ((1 / kms_s_0446r_0567)^1 * (1 / kms_s_0752r_0567)^1 * (s_0446^1 * s_0752^1 - s_0400^1 * s_0706^1 / Keq_r_0567) / ((1 + s_0446 / kms_s_0446r_0567) * (1 + s_0752 / kms_s_0752r_0567) + (1 + s_0400 / kmp_s_0400r_0567) * (1 + s_0706 / kmp_s_0706r_0567) - 1)) / intracellular;
    end function_145;


    function function_146
        	input Real Keq_r_0568;
	input Real Vmax_r_0568;
	input Real intracellular;
	input Real kmp_s_0562r_0568;
	input Real kmp_s_0706r_0568;
	input Real kms_s_0566r_0568;
	input Real kms_s_0752r_0568;
	input Real s_0562;
	input Real s_0566;
	input Real s_0706;
	input Real s_0752;
        output Real y;
    algorithm
        y :=  Vmax_r_0568 * ((1 / kms_s_0566r_0568)^1 * (1 / kms_s_0752r_0568)^1 * (s_0566^1 * s_0752^1 - s_0562^1 * s_0706^1 / Keq_r_0568) / ((1 + s_0566 / kms_s_0566r_0568) * (1 + s_0752 / kms_s_0752r_0568) + (1 + s_0562 / kmp_s_0562r_0568) * (1 + s_0706 / kmp_s_0706r_0568) - 1)) / intracellular;
    end function_146;


    function function_147
        	input Real Keq_r_0573;
	input Real Vmax_r_0573;
	input Real intracellular;
	input Real kmp_s_0400r_0573;
	input Real kmp_s_0410r_0573;
	input Real kmp_s_0763_br_0573;
	input Real kms_s_0446r_0573;
	input Real kms_s_0545r_0573;
	input Real s_0400;
	input Real s_0410;
	input Real s_0446;
	input Real s_0545;
	input Real s_0763_b;
        output Real y;
    algorithm
        y :=  Vmax_r_0573 * ((1 / kms_s_0446r_0573)^1 * (1 / kms_s_0545r_0573)^1 * (s_0446^1 * s_0545^1 - s_0400^1 * s_0410^1 * s_0763_b^1 / Keq_r_0573) / ((1 + s_0446 / kms_s_0446r_0573) * (1 + s_0545 / kms_s_0545r_0573) + (1 + s_0400 / kmp_s_0400r_0573) * (1 + s_0410 / kmp_s_0410r_0573) * (1 + s_0763_b / kmp_s_0763_br_0573) - 1)) / intracellular;
    end function_147;


    function function_148
        	input Real Keq_r_0575;
	input Real Vmax_r_0575;
	input Real intracellular;
	input Real kmp_s_0763_br_0575;
	input Real kmp_s_0911r_0575;
	input Real kmp_s_1087r_0575;
	input Real kms_s_0915r_0575;
	input Real kms_s_1082r_0575;
	input Real kms_s_1434_br_0575;
	input Real s_0763_b;
	input Real s_0911;
	input Real s_0915;
	input Real s_1082;
	input Real s_1087;
	input Real s_1434_b;
        output Real y;
    algorithm
        y :=  Vmax_r_0575 * ((1 / kms_s_0915r_0575)^1 * (1 / kms_s_1082r_0575)^2 * (1 / kms_s_1434_br_0575)^1 * (s_0915^1 * s_1082^2 * s_1434_b^1 - s_0763_b^3 * s_0911^1 * s_1087^2 / Keq_r_0575) / ((1 + s_0915 / kms_s_0915r_0575) * (1 + s_1082 / kms_s_1082r_0575) * (1 + s_1434_b / kms_s_1434_br_0575) + (1 + s_0763_b / kmp_s_0763_br_0575) * (1 + s_0911 / kmp_s_0911r_0575) * (1 + s_1087 / kmp_s_1087r_0575) - 1)) / intracellular;
    end function_148;


    function function_149
        	input Real Keq_r_0576;
	input Real Vmax_r_0576;
	input Real intracellular;
	input Real kmp_s_0915r_0576;
	input Real kmp_s_1207r_0576;
	input Real kms_s_0916r_0576;
	input Real kms_s_1434_br_0576;
	input Real s_0915;
	input Real s_0916;
	input Real s_1207;
	input Real s_1434_b;
        output Real y;
    algorithm
        y :=  Vmax_r_0576 * ((1 / kms_s_0916r_0576)^1 * (1 / kms_s_1434_br_0576)^1 * (s_0916^1 * s_1434_b^1 - s_0915^1 * s_1207^1 / Keq_r_0576) / ((1 + s_0916 / kms_s_0916r_0576) * (1 + s_1434_b / kms_s_1434_br_0576) + (1 + s_0915 / kmp_s_0915r_0576) * (1 + s_1207 / kmp_s_1207r_0576) - 1)) / intracellular;
    end function_149;


    function function_150
        	input Real Keq_r_0577;
	input Real Vmax_r_0577;
	input Real intracellular;
	input Real kmp_s_0185r_0577;
	input Real kmp_s_0916r_0577;
	input Real kms_s_0212r_0577;
	input Real kms_s_0899r_0577;
	input Real s_0185;
	input Real s_0212;
	input Real s_0899;
	input Real s_0916;
        output Real y;
    algorithm
        y :=  Vmax_r_0577 * ((1 / kms_s_0212r_0577)^1 * (1 / kms_s_0899r_0577)^1 * (s_0212^1 * s_0899^1 - s_0185^1 * s_0916^1 / Keq_r_0577) / ((1 + s_0212 / kms_s_0212r_0577) * (1 + s_0899 / kms_s_0899r_0577) + (1 + s_0185 / kmp_s_0185r_0577) * (1 + s_0916 / kmp_s_0916r_0577) - 1)) / intracellular;
    end function_150;


    function function_151
        	input Real Keq_r_0581;
	input Real Vmax_r_0581;
	input Real intracellular;
	input Real kmp_s_0800r_0581;
	input Real kms_s_0468r_0581;
	input Real kms_s_1434_br_0581;
	input Real s_0468;
	input Real s_0800;
	input Real s_1434_b;
        output Real y;
    algorithm
        y :=  Vmax_r_0581 * ((1 / kms_s_0468r_0581)^1 * (1 / kms_s_1434_br_0581)^1 * (s_0468^1 * s_1434_b^1 - s_0800^1 / Keq_r_0581) / ((1 + s_0468 / kms_s_0468r_0581) * (1 + s_1434_b / kms_s_1434_br_0581) + 1 + s_0800 / kmp_s_0800r_0581 - 1)) / intracellular;
    end function_151;


    function function_152
        	input Real Keq_r_0582;
	input Real Vmax_r_0582;
	input Real intracellular;
	input Real kmp_s_0514r_0582;
	input Real kmp_s_0763_br_0582;
	input Real kmp_s_0798r_0582;
	input Real kms_s_0185r_0582;
	input Real kms_s_0380r_0582;
	input Real kms_s_1434_br_0582;
	input Real s_0185;
	input Real s_0380;
	input Real s_0514;
	input Real s_0763_b;
	input Real s_0798;
	input Real s_1434_b;
        output Real y;
    algorithm
        y :=  Vmax_r_0582 * ((1 / kms_s_0185r_0582)^1 * (1 / kms_s_0380r_0582)^1 * (1 / kms_s_1434_br_0582)^1 * (s_0185^1 * s_0380^1 * s_1434_b^1 - s_0514^1 * s_0763_b^1 * s_0798^1 / Keq_r_0582) / ((1 + s_0185 / kms_s_0185r_0582) * (1 + s_0380 / kms_s_0380r_0582) * (1 + s_1434_b / kms_s_1434_br_0582) + (1 + s_0514 / kmp_s_0514r_0582) * (1 + s_0763_b / kmp_s_0763_br_0582) * (1 + s_0798 / kmp_s_0798r_0582) - 1)) / intracellular;
    end function_152;


    function function_153
        	input Real Keq_r_0585;
	input Real Vmax_r_0585;
	input Real intracellular;
	input Real kmp_s_0180r_0585;
	input Real kmp_s_0763_br_0585;
	input Real kmp_s_1087r_0585;
	input Real kms_s_0800r_0585;
	input Real kms_s_1082r_0585;
	input Real s_0180;
	input Real s_0763_b;
	input Real s_0800;
	input Real s_1082;
	input Real s_1087;
        output Real y;
    algorithm
        y :=  Vmax_r_0585 * ((1 / kms_s_0800r_0585)^1 * (1 / kms_s_1082r_0585)^1 * (s_0800^1 * s_1082^1 - s_0180^1 * s_0763_b^1 * s_1087^1 / Keq_r_0585) / ((1 + s_0800 / kms_s_0800r_0585) * (1 + s_1082 / kms_s_1082r_0585) + (1 + s_0180 / kmp_s_0180r_0585) * (1 + s_0763_b / kmp_s_0763_br_0585) * (1 + s_1087 / kmp_s_1087r_0585) - 1)) / intracellular;
    end function_153;


    function function_154
        	input Real Keq_r_0586;
	input Real Vmax_r_0586;
	input Real intracellular;
	input Real kmp_s_0919r_0586;
	input Real kmp_s_1082r_0586;
	input Real kms_s_0763_br_0586;
	input Real kms_s_0886r_0586;
	input Real kms_s_1087r_0586;
	input Real s_0763_b;
	input Real s_0886;
	input Real s_0919;
	input Real s_1082;
	input Real s_1087;
        output Real y;
    algorithm
        y :=  Vmax_r_0586 * ((1 / kms_s_0763_br_0586)^1 * (1 / kms_s_0886r_0586)^1 * (1 / kms_s_1087r_0586)^1 * (s_0763_b^1 * s_0886^1 * s_1087^1 - s_0919^1 * s_1082^1 / Keq_r_0586) / ((1 + s_0763_b / kms_s_0763_br_0586) * (1 + s_0886 / kms_s_0886r_0586) * (1 + s_1087 / kms_s_1087r_0586) + (1 + s_0919 / kmp_s_0919r_0586) * (1 + s_1082 / kmp_s_1082r_0586) - 1)) / intracellular;
    end function_154;


    function function_155
        	input Real Keq_r_0588;
	input Real Vmax_r_0588;
	input Real intracellular;
	input Real kmp_s_0400r_0588;
	input Real kmp_s_0763_br_0588;
	input Real kmp_s_1122r_0588;
	input Real kms_s_0446r_0588;
	input Real kms_s_0919r_0588;
	input Real s_0400;
	input Real s_0446;
	input Real s_0763_b;
	input Real s_0919;
	input Real s_1122;
        output Real y;
    algorithm
        y :=  Vmax_r_0588 * ((1 / kms_s_0446r_0588)^1 * (1 / kms_s_0919r_0588)^1 * (s_0446^1 * s_0919^1 - s_0400^1 * s_0763_b^1 * s_1122^1 / Keq_r_0588) / ((1 + s_0446 / kms_s_0446r_0588) * (1 + s_0919 / kms_s_0919r_0588) + (1 + s_0400 / kmp_s_0400r_0588) * (1 + s_0763_b / kmp_s_0763_br_0588) * (1 + s_1122 / kmp_s_1122r_0588) - 1)) / intracellular;
    end function_155;


    function function_156
        	input Real Keq_r_0589;
	input Real Vmax_r_0589;
	input Real intracellular;
	input Real kmp_s_0514r_0589;
	input Real kmp_s_1117r_0589;
	input Real kms_s_0380r_0589;
	input Real kms_s_0919r_0589;
	input Real s_0380;
	input Real s_0514;
	input Real s_0919;
	input Real s_1117;
        output Real y;
    algorithm
        y :=  Vmax_r_0589 * ((1 / kms_s_0380r_0589)^1 * (1 / kms_s_0919r_0589)^1 * (s_0380^1 * s_0919^1 - s_0514^1 * s_1117^1 / Keq_r_0589) / ((1 + s_0380 / kms_s_0380r_0589) * (1 + s_0919 / kms_s_0919r_0589) + (1 + s_0514 / kmp_s_0514r_0589) * (1 + s_1117 / kmp_s_1117r_0589) - 1)) / intracellular;
    end function_156;


    function function_157
        	input Real Keq_r_0598;
	input Real Vmax_r_0598;
	input Real intracellular;
	input Real kmp_s_0031r_0598;
	input Real kmp_s_0514r_0598;
	input Real kmp_s_1091r_0598;
	input Real kms_s_0225r_0598;
	input Real kms_s_0763_br_0598;
	input Real kms_s_1096r_0598;
	input Real s_0031;
	input Real s_0225;
	input Real s_0514;
	input Real s_0763_b;
	input Real s_1091;
	input Real s_1096;
        output Real y;
    algorithm
        y :=  Vmax_r_0598 * ((1 / kms_s_0225r_0598)^1 * (1 / kms_s_0763_br_0598)^2 * (1 / kms_s_1096r_0598)^2 * (s_0225^1 * s_0763_b^2 * s_1096^2 - s_0031^1 * s_0514^1 * s_1091^2 / Keq_r_0598) / ((1 + s_0225 / kms_s_0225r_0598) * (1 + s_0763_b / kms_s_0763_br_0598) * (1 + s_1096 / kms_s_1096r_0598) + (1 + s_0031 / kmp_s_0031r_0598) * (1 + s_0514 / kmp_s_0514r_0598) * (1 + s_1091 / kmp_s_1091r_0598) - 1)) / intracellular;
    end function_157;


    function function_158
        	input Real Keq_r_0599;
	input Real Vmax_r_0599;
	input Real intracellular;
	input Real kmp_s_0225r_0599;
	input Real kmp_s_0514r_0599;
	input Real kmp_s_0763_br_0599;
	input Real kms_s_0374r_0599;
	input Real kms_s_0380r_0599;
	input Real kms_s_1434_br_0599;
	input Real s_0225;
	input Real s_0374;
	input Real s_0380;
	input Real s_0514;
	input Real s_0763_b;
	input Real s_1434_b;
        output Real y;
    algorithm
        y :=  Vmax_r_0599 * ((1 / kms_s_0374r_0599)^1 * (1 / kms_s_0380r_0599)^1 * (1 / kms_s_1434_br_0599)^1 * (s_0374^1 * s_0380^1 * s_1434_b^1 - s_0225^1 * s_0514^1 * s_0763_b^1 / Keq_r_0599) / ((1 + s_0374 / kms_s_0374r_0599) * (1 + s_0380 / kms_s_0380r_0599) * (1 + s_1434_b / kms_s_1434_br_0599) + (1 + s_0225 / kmp_s_0225r_0599) * (1 + s_0514 / kmp_s_0514r_0599) * (1 + s_0763_b / kmp_s_0763_br_0599) - 1)) / intracellular;
    end function_158;


    function function_159
        	input Real Keq_r_0604;
	input Real Vmax_r_0604;
	input Real intracellular;
	input Real kmp_s_0317r_0604;
	input Real kmp_s_0532r_0604;
	input Real kmp_s_0763_br_0604;
	input Real kmp_s_0899r_0604;
	input Real kms_s_0315r_0604;
	input Real kms_s_0907r_0604;
	input Real s_0315;
	input Real s_0317;
	input Real s_0532;
	input Real s_0763_b;
	input Real s_0899;
	input Real s_0907;
        output Real y;
    algorithm
        y :=  Vmax_r_0604 * ((1 / kms_s_0315r_0604)^1 * (1 / kms_s_0907r_0604)^1 * (s_0315^1 * s_0907^1 - s_0317^1 * s_0532^1 * s_0763_b^1 * s_0899^1 / Keq_r_0604) / ((1 + s_0315 / kms_s_0315r_0604) * (1 + s_0907 / kms_s_0907r_0604) + (1 + s_0317 / kmp_s_0317r_0604) * (1 + s_0532 / kmp_s_0532r_0604) * (1 + s_0763_b / kmp_s_0763_br_0604) * (1 + s_0899 / kmp_s_0899r_0604) - 1)) / intracellular;
    end function_159;


    function function_160
        	input Real Keq_r_0605;
	input Real Vmax_r_0605;
	input Real intracellular;
	input Real kmp_s_0212r_0605;
	input Real kmp_s_1434_br_0605;
	input Real kms_s_0532r_0605;
	input Real s_0212;
	input Real s_0532;
	input Real s_1434_b;
        output Real y;
    algorithm
        y :=  Vmax_r_0605 * ((1 / kms_s_0532r_0605)^1 * (s_0532^1 - s_0212^1 * s_1434_b^1 / Keq_r_0605) / (1 + s_0532 / kms_s_0532r_0605 + (1 + s_0212 / kmp_s_0212r_0605) * (1 + s_1434_b / kmp_s_1434_br_0605) - 1)) / intracellular;
    end function_160;


    function function_161
        	input Real Keq_r_0606;
	input Real Vmax_r_0606;
	input Real intracellular;
	input Real kmp_s_0816r_0606;
	input Real kmp_s_1434_br_0606;
	input Real kms_s_0325r_0606;
	input Real s_0325;
	input Real s_0816;
	input Real s_1434_b;
        output Real y;
    algorithm
        y :=  Vmax_r_0606 * ((1 / kms_s_0325r_0606)^1 * (s_0325^1 - s_0816^1 * s_1434_b^1 / Keq_r_0606) / (1 + s_0325 / kms_s_0325r_0606 + (1 + s_0816 / kmp_s_0816r_0606) * (1 + s_1434_b / kmp_s_1434_br_0606) - 1)) / intracellular;
    end function_161;


    function function_162
        	input Real Keq_r_0607;
	input Real Vmax_r_0607;
	input Real intracellular;
	input Real kmp_s_0306r_0607;
	input Real kmp_s_0763_br_0607;
	input Real kmp_s_1087r_0607;
	input Real kms_s_0816r_0607;
	input Real kms_s_1082r_0607;
	input Real kms_s_1434_br_0607;
	input Real s_0306;
	input Real s_0763_b;
	input Real s_0816;
	input Real s_1082;
	input Real s_1087;
	input Real s_1434_b;
        output Real y;
    algorithm
        y :=  Vmax_r_0607 * ((1 / kms_s_0816r_0607)^1 * (1 / kms_s_1082r_0607)^1 * (1 / kms_s_1434_br_0607)^1 * (s_0816^1 * s_1082^1 * s_1434_b^1 - s_0306^1 * s_0763_b^1 * s_1087^1 / Keq_r_0607) / ((1 + s_0816 / kms_s_0816r_0607) * (1 + s_1082 / kms_s_1082r_0607) * (1 + s_1434_b / kms_s_1434_br_0607) + (1 + s_0306 / kmp_s_0306r_0607) * (1 + s_0763_b / kmp_s_0763_br_0607) * (1 + s_1087 / kmp_s_1087r_0607) - 1)) / intracellular;
    end function_162;


    function function_163
        	input Real Keq_r_0608;
	input Real Vmax_r_0608;
	input Real intracellular;
	input Real kmp_s_0088r_0608;
	input Real kmp_s_0470r_0608;
	input Real kmp_s_1434_br_0608;
	input Real kms_s_0078r_0608;
	input Real kms_s_0763_br_0608;
	input Real s_0078;
	input Real s_0088;
	input Real s_0470;
	input Real s_0763_b;
	input Real s_1434_b;
        output Real y;
    algorithm
        y :=  Vmax_r_0608 * ((1 / kms_s_0078r_0608)^1 * (1 / kms_s_0763_br_0608)^1 * (s_0078^1 * s_0763_b^1 - s_0088^1 * s_0470^1 * s_1434_b^1 / Keq_r_0608) / ((1 + s_0078 / kms_s_0078r_0608) * (1 + s_0763_b / kms_s_0763_br_0608) + (1 + s_0088 / kmp_s_0088r_0608) * (1 + s_0470 / kmp_s_0470r_0608) * (1 + s_1434_b / kmp_s_1434_br_0608) - 1)) / intracellular;
    end function_163;


    function function_164
        	input Real Keq_r_0610;
	input Real Vmax_r_0610;
	input Real intracellular;
	input Real kmp_s_0763_br_0610;
	input Real kmp_s_1207r_0610;
	input Real kms_s_0605r_0610;
	input Real kms_s_1434_br_0610;
	input Real s_0605;
	input Real s_0763_b;
	input Real s_1207;
	input Real s_1434_b;
        output Real y;
    algorithm
        y :=  Vmax_r_0610 * ((1 / kms_s_0605r_0610)^1 * (1 / kms_s_1434_br_0610)^1 * (s_0605^1 * s_1434_b^1 - s_0763_b^1 * s_1207^2 / Keq_r_0610) / ((1 + s_0605 / kms_s_0605r_0610) * (1 + s_1434_b / kms_s_1434_br_0610) + (1 + s_0763_b / kmp_s_0763_br_0610) * (1 + s_1207 / kmp_s_1207r_0610) - 1)) / intracellular;
    end function_164;


    function function_165
        	input Real Keq_r_0618;
	input Real Vmax_r_0618;
	input Real intracellular;
	input Real kmp_s_0824r_0618;
	input Real kms_s_0128r_0618;
	input Real kms_s_1013r_0618;
	input Real s_0128;
	input Real s_0824;
	input Real s_1013;
        output Real y;
    algorithm
        y :=  Vmax_r_0618 * ((1 / kms_s_0128r_0618)^1 * (1 / kms_s_1013r_0618)^1 * (s_0128^1 * s_1013^1 - s_0824^1 / Keq_r_0618) / ((1 + s_0128 / kms_s_0128r_0618) * (1 + s_1013 / kms_s_1013r_0618) + 1 + s_0824 / kmp_s_0824r_0618 - 1)) / intracellular;
    end function_165;


    function function_166
        	input Real Keq_r_0621;
	input Real Vmax_r_0621;
	input Real intracellular;
	input Real kmp_s_0828r_0621;
	input Real kms_s_0128r_0621;
	input Real kms_s_1060r_0621;
	input Real s_0128;
	input Real s_0828;
	input Real s_1060;
        output Real y;
    algorithm
        y :=  Vmax_r_0621 * ((1 / kms_s_0128r_0621)^1 * (1 / kms_s_1060r_0621)^1 * (s_0128^1 * s_1060^1 - s_0828^1 / Keq_r_0621) / ((1 + s_0128 / kms_s_0128r_0621) * (1 + s_1060 / kms_s_1060r_0621) + 1 + s_0828 / kmp_s_0828r_0621 - 1)) / intracellular;
    end function_166;


    function function_167
        	input Real Keq_r_0630;
	input Real Vmax_r_0630;
	input Real intracellular;
	input Real kmp_s_0185r_0630;
	input Real kmp_s_0470r_0630;
	input Real kmp_s_1096r_0630;
	input Real kms_s_0847r_0630;
	input Real kms_s_1091r_0630;
	input Real s_0185;
	input Real s_0470;
	input Real s_0847;
	input Real s_1091;
	input Real s_1096;
        output Real y;
    algorithm
        y :=  Vmax_r_0630 * ((1 / kms_s_0847r_0630)^1 * (1 / kms_s_1091r_0630)^1 * (s_0847^1 * s_1091^1 - s_0185^1 * s_0470^1 * s_1096^1 / Keq_r_0630) / ((1 + s_0847 / kms_s_0847r_0630) * (1 + s_1091 / kms_s_1091r_0630) + (1 + s_0185 / kmp_s_0185r_0630) * (1 + s_0470 / kmp_s_0470r_0630) * (1 + s_1096 / kmp_s_1096r_0630) - 1)) / intracellular;
    end function_167;


    function function_168
        	input Real Keq_r_0633;
	input Real Vmax_r_0633;
	input Real intracellular;
	input Real kmp_s_0749r_0633;
	input Real kmp_s_1338r_0633;
	input Real kms_s_0847r_0633;
	input Real s_0749;
	input Real s_0847;
	input Real s_1338;
        output Real y;
    algorithm
        y :=  Vmax_r_0633 * ((1 / kms_s_0847r_0633)^1 * (s_0847^1 - s_0749^1 * s_1338^1 / Keq_r_0633) / (1 + s_0847 / kms_s_0847r_0633 + (1 + s_0749 / kmp_s_0749r_0633) * (1 + s_1338 / kmp_s_1338r_0633) - 1)) / intracellular;
    end function_168;


    function function_169
        	input Real Keq_r_0634;
	input Real Vmax_r_0634;
	input Real intracellular;
	input Real kmp_s_0185r_0634;
	input Real kmp_s_0920r_0634;
	input Real kms_s_0058r_0634;
	input Real kms_s_0899r_0634;
	input Real s_0058;
	input Real s_0185;
	input Real s_0899;
	input Real s_0920;
        output Real y;
    algorithm
        y :=  Vmax_r_0634 * ((1 / kms_s_0058r_0634)^1 * (1 / kms_s_0899r_0634)^1 * (s_0058^1 * s_0899^1 - s_0185^1 * s_0920^1 / Keq_r_0634) / ((1 + s_0058 / kms_s_0058r_0634) * (1 + s_0899 / kms_s_0899r_0634) + (1 + s_0185 / kmp_s_0185r_0634) * (1 + s_0920 / kmp_s_0920r_0634) - 1)) / intracellular;
    end function_169;


    function function_170
        	input Real Keq_r_0638;
	input Real Vmax_r_0638;
	input Real intracellular;
	input Real kmp_s_1257r_0638;
	input Real kms_s_0850r_0638;
	input Real s_0850;
	input Real s_1257;
        output Real y;
    algorithm
        y :=  Vmax_r_0638 * ((1 / kms_s_0850r_0638)^1 * (s_0850^1 - s_1257^1 / Keq_r_0638) / (1 + s_0850 / kms_s_0850r_0638 + 1 + s_1257 / kmp_s_1257r_0638 - 1)) / intracellular;
    end function_170;


    function function_171
        	input Real Keq_r_0640;
	input Real Vmax_r_0640;
	input Real intracellular;
	input Real kmp_s_0007r_0640;
	input Real kmp_s_1091r_0640;
	input Real kms_s_0042r_0640;
	input Real kms_s_0763_br_0640;
	input Real kms_s_1096r_0640;
	input Real s_0007;
	input Real s_0042;
	input Real s_0763_b;
	input Real s_1091;
	input Real s_1096;
        output Real y;
    algorithm
        y :=  Vmax_r_0640 * ((1 / kms_s_0042r_0640)^1 * (1 / kms_s_0763_br_0640)^1 * (1 / kms_s_1096r_0640)^1 * (s_0042^1 * s_0763_b^1 * s_1096^1 - s_0007^1 * s_1091^1 / Keq_r_0640) / ((1 + s_0042 / kms_s_0042r_0640) * (1 + s_0763_b / kms_s_0763_br_0640) * (1 + s_1096 / kms_s_1096r_0640) + (1 + s_0007 / kmp_s_0007r_0640) * (1 + s_1091 / kmp_s_1091r_0640) - 1)) / intracellular;
    end function_171;


    function function_172
        	input Real Keq_r_0647;
	input Real Vmax_r_0647;
	input Real intracellular;
	input Real kmp_s_0185r_0647;
	input Real kmp_s_0863r_0647;
	input Real kms_s_0899r_0647;
	input Real kms_s_1277r_0647;
	input Real s_0185;
	input Real s_0863;
	input Real s_0899;
	input Real s_1277;
        output Real y;
    algorithm
        y :=  Vmax_r_0647 * ((1 / kms_s_0899r_0647)^1 * (1 / kms_s_1277r_0647)^1 * (s_0899^1 * s_1277^1 - s_0185^1 * s_0863^1 / Keq_r_0647) / ((1 + s_0899 / kms_s_0899r_0647) * (1 + s_1277 / kms_s_1277r_0647) + (1 + s_0185 / kmp_s_0185r_0647) * (1 + s_0863 / kmp_s_0863r_0647) - 1)) / intracellular;
    end function_172;


    function function_173
        	input Real Keq_r_0650;
	input Real Vmax_r_0650;
	input Real intracellular;
	input Real kmp_s_0434r_0650;
	input Real kmp_s_0605r_0650;
	input Real kmp_s_0867r_0650;
	input Real kmp_s_1082r_0650;
	input Real kms_s_0446r_0650;
	input Real kms_s_0763_br_0650;
	input Real kms_s_0861r_0650;
	input Real kms_s_1087r_0650;
	input Real s_0434;
	input Real s_0446;
	input Real s_0605;
	input Real s_0763_b;
	input Real s_0861;
	input Real s_0867;
	input Real s_1082;
	input Real s_1087;
        output Real y;
    algorithm
        y :=  Vmax_r_0650 * ((1 / kms_s_0446r_0650)^1 * (1 / kms_s_0763_br_0650)^1 * (1 / kms_s_0861r_0650)^1 * (1 / kms_s_1087r_0650)^1 * (s_0446^1 * s_0763_b^1 * s_0861^1 * s_1087^1 - s_0434^1 * s_0605^1 * s_0867^1 * s_1082^1 / Keq_r_0650) / ((1 + s_0446 / kms_s_0446r_0650) * (1 + s_0763_b / kms_s_0763_br_0650) * (1 + s_0861 / kms_s_0861r_0650) * (1 + s_1087 / kms_s_1087r_0650) + (1 + s_0434 / kmp_s_0434r_0650) * (1 + s_0605 / kmp_s_0605r_0650) * (1 + s_0867 / kmp_s_0867r_0650) * (1 + s_1082 / kmp_s_1082r_0650) - 1)) / intracellular;
    end function_173;


    function function_174
        	input Real Keq_r_0657;
	input Real Vmax_r_0657;
	input Real intracellular;
	input Real kmp_s_0120r_0657;
	input Real kmp_s_0763_br_0657;
	input Real kmp_s_1434_br_0657;
	input Real kms_s_0905r_0657;
	input Real s_0120;
	input Real s_0763_b;
	input Real s_0905;
	input Real s_1434_b;
        output Real y;
    algorithm
        y :=  Vmax_r_0657 * ((1 / kms_s_0905r_0657)^1 * (s_0905^1 - s_0120^1 * s_0763_b^1 * s_1434_b^1 / Keq_r_0657) / (1 + s_0905 / kms_s_0905r_0657 + (1 + s_0120 / kmp_s_0120r_0657) * (1 + s_0763_b / kmp_s_0763_br_0657) * (1 + s_1434_b / kmp_s_1434_br_0657) - 1)) / intracellular;
    end function_174;


    function function_175
        	input Real Keq_r_0660;
	input Real Vmax_r_0660;
	input Real intracellular;
	input Real kmp_s_0118r_0660;
	input Real kmp_s_0763_br_0660;
	input Real kmp_s_1096r_0660;
	input Real kms_s_1091r_0660;
	input Real kms_s_1379r_0660;
	input Real s_0118;
	input Real s_0763_b;
	input Real s_1091;
	input Real s_1096;
	input Real s_1379;
        output Real y;
    algorithm
        y :=  Vmax_r_0660 * ((1 / kms_s_1091r_0660)^1 * (1 / kms_s_1379r_0660)^1 * (s_1091^1 * s_1379^1 - s_0118^1 * s_0763_b^2 * s_1096^1 / Keq_r_0660) / ((1 + s_1091 / kms_s_1091r_0660) * (1 + s_1379 / kms_s_1379r_0660) + (1 + s_0118 / kmp_s_0118r_0660) * (1 + s_0763_b / kmp_s_0763_br_0660) * (1 + s_1096 / kmp_s_1096r_0660) - 1)) / intracellular;
    end function_175;


    function function_176
        	input Real Keq_r_0661;
	input Real Vmax_r_0661;
	input Real intracellular;
	input Real kmp_s_1082r_0661;
	input Real kmp_s_1379r_0661;
	input Real kms_s_0118r_0661;
	input Real kms_s_0763_br_0661;
	input Real kms_s_1087r_0661;
	input Real s_0118;
	input Real s_0763_b;
	input Real s_1082;
	input Real s_1087;
	input Real s_1379;
        output Real y;
    algorithm
        y :=  Vmax_r_0661 * ((1 / kms_s_0118r_0661)^1 * (1 / kms_s_0763_br_0661)^2 * (1 / kms_s_1087r_0661)^1 * (s_0118^1 * s_0763_b^2 * s_1087^1 - s_1082^1 * s_1379^1 / Keq_r_0661) / ((1 + s_0118 / kms_s_0118r_0661) * (1 + s_0763_b / kms_s_0763_br_0661) * (1 + s_1087 / kms_s_1087r_0661) + (1 + s_1082 / kmp_s_1082r_0661) * (1 + s_1379 / kmp_s_1379r_0661) - 1)) / intracellular;
    end function_176;


    function function_177
        	input Real Keq_r_0667;
	input Real Vmax_r_0667;
	input Real intracellular;
	input Real kmp_s_0183r_0667;
	input Real kmp_s_0430r_0667;
	input Real kms_s_0949r_0667;
	input Real s_0183;
	input Real s_0430;
	input Real s_0949;
        output Real y;
    algorithm
        y :=  Vmax_r_0667 * ((1 / kms_s_0949r_0667)^1 * (s_0949^1 - s_0183^1 * s_0430^1 / Keq_r_0667) / (1 + s_0949 / kms_s_0949r_0667 + (1 + s_0183 / kmp_s_0183r_0667) * (1 + s_0430 / kmp_s_0430r_0667) - 1)) / intracellular;
    end function_177;


    function function_178
        	input Real Keq_r_0673;
	input Real Vmax_r_0673;
	input Real intracellular;
	input Real kmp_s_0963r_0673;
	input Real kms_s_0040r_0673;
	input Real s_0040;
	input Real s_0963;
        output Real y;
    algorithm
        y :=  Vmax_r_0673 * ((1 / kms_s_0040r_0673)^1 * (s_0040^1 - s_0963^1 / Keq_r_0673) / (1 + s_0040 / kms_s_0040r_0673 + 1 + s_0963 / kmp_s_0963r_0673 - 1)) / intracellular;
    end function_178;


    function function_179
        	input Real Keq_r_0674;
	input Real Vmax_r_0674;
	input Real intracellular;
	input Real kmp_s_0185r_0674;
	input Real kmp_s_0925r_0674;
	input Real kms_s_0297r_0674;
	input Real kms_s_0899r_0674;
	input Real s_0185;
	input Real s_0297;
	input Real s_0899;
	input Real s_0925;
        output Real y;
    algorithm
        y :=  Vmax_r_0674 * ((1 / kms_s_0297r_0674)^1 * (1 / kms_s_0899r_0674)^1 * (s_0297^1 * s_0899^1 - s_0185^1 * s_0925^1 / Keq_r_0674) / ((1 + s_0297 / kms_s_0297r_0674) * (1 + s_0899 / kms_s_0899r_0674) + (1 + s_0185 / kmp_s_0185r_0674) * (1 + s_0925 / kmp_s_0925r_0674) - 1)) / intracellular;
    end function_179;


    function function_180
        	input Real Keq_r_0688;
	input Real Vmax_r_0688;
	input Real intracellular;
	input Real kmp_s_0069r_0688;
	input Real kmp_s_1082r_0688;
	input Real kms_s_0763_br_0688;
	input Real kms_s_1087r_0688;
	input Real kms_s_1156r_0688;
	input Real s_0069;
	input Real s_0763_b;
	input Real s_1082;
	input Real s_1087;
	input Real s_1156;
        output Real y;
    algorithm
        y :=  Vmax_r_0688 * ((1 / kms_s_0763_br_0688)^1 * (1 / kms_s_1087r_0688)^1 * (1 / kms_s_1156r_0688)^1 * (s_0763_b^1 * s_1087^1 * s_1156^1 - s_0069^1 * s_1082^1 / Keq_r_0688) / ((1 + s_0763_b / kms_s_0763_br_0688) * (1 + s_1087 / kms_s_1087r_0688) * (1 + s_1156 / kms_s_1156r_0688) + (1 + s_0069 / kmp_s_0069r_0688) * (1 + s_1082 / kmp_s_1082r_0688) - 1)) / intracellular;
    end function_180;


    function function_181
        	input Real Keq_r_0697;
	input Real Vmax_r_0697;
	input Real intracellular;
	input Real kmp_s_0605r_0697;
	input Real kmp_s_0710r_0697;
	input Real kms_s_0553r_0697;
	input Real kms_s_0755r_0697;
	input Real kms_s_0763_br_0697;
	input Real s_0553;
	input Real s_0605;
	input Real s_0710;
	input Real s_0755;
	input Real s_0763_b;
        output Real y;
    algorithm
        y :=  Vmax_r_0697 * ((1 / kms_s_0553r_0697)^1 * (1 / kms_s_0755r_0697)^1 * (1 / kms_s_0763_br_0697)^1 * (s_0553^1 * s_0755^1 * s_0763_b^1 - s_0605^1 * s_0710^1 / Keq_r_0697) / ((1 + s_0553 / kms_s_0553r_0697) * (1 + s_0755 / kms_s_0755r_0697) * (1 + s_0763_b / kms_s_0763_br_0697) + (1 + s_0605 / kmp_s_0605r_0697) * (1 + s_0710 / kmp_s_0710r_0697) - 1)) / intracellular;
    end function_181;


    function function_182
        	input Real Keq_r_0698;
	input Real Vmax_r_0698;
	input Real intracellular;
	input Real kmp_s_0554r_0698;
	input Real kms_s_0539r_0698;
	input Real s_0539;
	input Real s_0554;
        output Real y;
    algorithm
        y :=  Vmax_r_0698 * ((1 / kms_s_0539r_0698)^1 * (s_0539^1 - s_0554^1 / Keq_r_0698) / (1 + s_0539 / kms_s_0539r_0698 + 1 + s_0554 / kmp_s_0554r_0698 - 1)) / intracellular;
    end function_182;


    function function_183
        	input Real Keq_r_0699;
	input Real Vmax_r_0699;
	input Real intracellular;
	input Real kmp_s_0122r_0699;
	input Real kmp_s_0763_br_0699;
	input Real kms_s_0015r_0699;
	input Real kms_s_1434_br_0699;
	input Real s_0015;
	input Real s_0122;
	input Real s_0763_b;
	input Real s_1434_b;
        output Real y;
    algorithm
        y :=  Vmax_r_0699 * ((1 / kms_s_0015r_0699)^1 * (1 / kms_s_1434_br_0699)^1 * (s_0015^1 * s_1434_b^1 - s_0122^1 * s_0763_b^1 / Keq_r_0699) / ((1 + s_0015 / kms_s_0015r_0699) * (1 + s_1434_b / kms_s_1434_br_0699) + (1 + s_0122 / kmp_s_0122r_0699) * (1 + s_0763_b / kmp_s_0763_br_0699) - 1)) / intracellular;
    end function_183;


    function function_184
        	input Real Keq_r_0701;
	input Real Vmax_r_0701;
	input Real intracellular;
	input Real kmp_s_0605r_0701;
	input Real kmp_s_1207r_0701;
	input Real kmp_s_1293r_0701;
	input Real kms_s_0446r_0701;
	input Real kms_s_0933r_0701;
	input Real kms_s_1434_br_0701;
	input Real s_0446;
	input Real s_0605;
	input Real s_0933;
	input Real s_1207;
	input Real s_1293;
	input Real s_1434_b;
        output Real y;
    algorithm
        y :=  Vmax_r_0701 * ((1 / kms_s_0446r_0701)^1 * (1 / kms_s_0933r_0701)^1 * (1 / kms_s_1434_br_0701)^1 * (s_0446^1 * s_0933^1 * s_1434_b^1 - s_0605^1 * s_1207^1 * s_1293^1 / Keq_r_0701) / ((1 + s_0446 / kms_s_0446r_0701) * (1 + s_0933 / kms_s_0933r_0701) * (1 + s_1434_b / kms_s_1434_br_0701) + (1 + s_0605 / kmp_s_0605r_0701) * (1 + s_1207 / kmp_s_1207r_0701) * (1 + s_1293 / kmp_s_1293r_0701) - 1)) / intracellular;
    end function_184;


    function function_185
        	input Real Keq_r_0702;
	input Real Vmax_r_0702;
	input Real intracellular;
	input Real kmp_s_0309r_0702;
	input Real kmp_s_0763_br_0702;
	input Real kmp_s_0933r_0702;
	input Real kms_s_0328r_0702;
	input Real kms_s_0917r_0702;
	input Real s_0309;
	input Real s_0328;
	input Real s_0763_b;
	input Real s_0917;
	input Real s_0933;
        output Real y;
    algorithm
        y :=  Vmax_r_0702 * ((1 / kms_s_0328r_0702)^1 * (1 / kms_s_0917r_0702)^1 * (s_0328^1 * s_0917^1 - s_0309^1 * s_0763_b^1 * s_0933^1 / Keq_r_0702) / ((1 + s_0328 / kms_s_0328r_0702) * (1 + s_0917 / kms_s_0917r_0702) + (1 + s_0309 / kmp_s_0309r_0702) * (1 + s_0763_b / kmp_s_0763_br_0702) * (1 + s_0933 / kmp_s_0933r_0702) - 1)) / intracellular;
    end function_185;


    function function_186
        	input Real Keq_r_0707;
	input Real Vmax_r_0707;
	input Real intracellular;
	input Real kmp_s_0015r_0707;
	input Real kmp_s_1096r_0707;
	input Real kms_s_0307r_0707;
	input Real kms_s_1091r_0707;
	input Real s_0015;
	input Real s_0307;
	input Real s_1091;
	input Real s_1096;
        output Real y;
    algorithm
        y :=  Vmax_r_0707 * ((1 / kms_s_0307r_0707)^1 * (1 / kms_s_1091r_0707)^1 * (s_0307^1 * s_1091^1 - s_0015^1 * s_1096^1 / Keq_r_0707) / ((1 + s_0307 / kms_s_0307r_0707) * (1 + s_1091 / kms_s_1091r_0707) + (1 + s_0015 / kmp_s_0015r_0707) * (1 + s_1096 / kmp_s_1096r_0707) - 1)) / intracellular;
    end function_186;


    function function_187
        	input Real Keq_r_0712;
	input Real Vmax_r_0712;
	input Real intracellular;
	input Real kmp_s_0022r_0712;
	input Real kmp_s_0481r_0712;
	input Real kmp_s_0763_br_0712;
	input Real kms_s_0031r_0712;
	input Real kms_s_0521r_0712;
	input Real s_0022;
	input Real s_0031;
	input Real s_0481;
	input Real s_0521;
	input Real s_0763_b;
        output Real y;
    algorithm
        y :=  Vmax_r_0712 * ((1 / kms_s_0031r_0712)^1 * (1 / kms_s_0521r_0712)^1 * (s_0031^1 * s_0521^1 - s_0022^1 * s_0481^1 * s_0763_b^1 / Keq_r_0712) / ((1 + s_0031 / kms_s_0031r_0712) * (1 + s_0521 / kms_s_0521r_0712) + (1 + s_0022 / kmp_s_0022r_0712) * (1 + s_0481 / kmp_s_0481r_0712) * (1 + s_0763_b / kmp_s_0763_br_0712) - 1)) / intracellular;
    end function_187;


    function function_188
        	input Real Keq_r_0715;
	input Real Vmax_r_0715;
	input Real intracellular;
	input Real kmp_s_0400r_0715;
	input Real kmp_s_0470r_0715;
	input Real kmp_s_0850r_0715;
	input Real kmp_s_1207r_0715;
	input Real kms_s_0021r_0715;
	input Real kms_s_0446r_0715;
	input Real s_0021;
	input Real s_0400;
	input Real s_0446;
	input Real s_0470;
	input Real s_0850;
	input Real s_1207;
        output Real y;
    algorithm
        y :=  Vmax_r_0715 * ((1 / kms_s_0021r_0715)^1 * (1 / kms_s_0446r_0715)^1 * (s_0021^1 * s_0446^1 - s_0400^1 * s_0470^1 * s_0850^1 * s_1207^1 / Keq_r_0715) / ((1 + s_0021 / kms_s_0021r_0715) * (1 + s_0446 / kms_s_0446r_0715) + (1 + s_0400 / kmp_s_0400r_0715) * (1 + s_0470 / kmp_s_0470r_0715) * (1 + s_0850 / kmp_s_0850r_0715) * (1 + s_1207 / kmp_s_1207r_0715) - 1)) / intracellular;
    end function_188;


    function function_189
        	input Real Keq_r_0719;
	input Real Vmax_r_0719;
	input Real intracellular;
	input Real kmp_s_0247r_0719;
	input Real kmp_s_0763_br_0719;
	input Real kmp_s_1096r_0719;
	input Real kms_s_0046r_0719;
	input Real kms_s_1091r_0719;
	input Real s_0046;
	input Real s_0247;
	input Real s_0763_b;
	input Real s_1091;
	input Real s_1096;
        output Real y;
    algorithm
        y :=  Vmax_r_0719 * ((1 / kms_s_0046r_0719)^1 * (1 / kms_s_1091r_0719)^1 * (s_0046^1 * s_1091^1 - s_0247^1 * s_0763_b^1 * s_1096^1 / Keq_r_0719) / ((1 + s_0046 / kms_s_0046r_0719) * (1 + s_1091 / kms_s_1091r_0719) + (1 + s_0247 / kmp_s_0247r_0719) * (1 + s_0763_b / kmp_s_0763_br_0719) * (1 + s_1096 / kmp_s_1096r_0719) - 1)) / intracellular;
    end function_189;


    function function_190
        	input Real Keq_r_0720;
	input Real Vmax_r_0720;
	input Real intracellular;
	input Real kmp_s_0257r_0720;
	input Real kmp_s_0763_br_0720;
	input Real kmp_s_1096r_0720;
	input Real kms_s_0052r_0720;
	input Real kms_s_1091r_0720;
	input Real s_0052;
	input Real s_0257;
	input Real s_0763_b;
	input Real s_1091;
	input Real s_1096;
        output Real y;
    algorithm
        y :=  Vmax_r_0720 * ((1 / kms_s_0052r_0720)^1 * (1 / kms_s_1091r_0720)^1 * (s_0052^1 * s_1091^1 - s_0257^1 * s_0763_b^1 * s_1096^1 / Keq_r_0720) / ((1 + s_0052 / kms_s_0052r_0720) * (1 + s_1091 / kms_s_1091r_0720) + (1 + s_0257 / kmp_s_0257r_0720) * (1 + s_0763_b / kmp_s_0763_br_0720) * (1 + s_1096 / kmp_s_1096r_0720) - 1)) / intracellular;
    end function_190;


    function function_191
        	input Real Keq_r_0721;
	input Real Vmax_r_0721;
	input Real intracellular;
	input Real kmp_s_0254r_0721;
	input Real kmp_s_0763_br_0721;
	input Real kmp_s_1096r_0721;
	input Real kms_s_0234r_0721;
	input Real kms_s_1091r_0721;
	input Real s_0234;
	input Real s_0254;
	input Real s_0763_b;
	input Real s_1091;
	input Real s_1096;
        output Real y;
    algorithm
        y :=  Vmax_r_0721 * ((1 / kms_s_0234r_0721)^1 * (1 / kms_s_1091r_0721)^1 * (s_0234^1 * s_1091^1 - s_0254^1 * s_0763_b^1 * s_1096^1 / Keq_r_0721) / ((1 + s_0234 / kms_s_0234r_0721) * (1 + s_1091 / kms_s_1091r_0721) + (1 + s_0254 / kmp_s_0254r_0721) * (1 + s_0763_b / kmp_s_0763_br_0721) * (1 + s_1096 / kmp_s_1096r_0721) - 1)) / intracellular;
    end function_191;


    function function_192
        	input Real Keq_r_0722;
	input Real Vmax_r_0722;
	input Real intracellular;
	input Real kmp_s_0261r_0722;
	input Real kmp_s_0763_br_0722;
	input Real kmp_s_1096r_0722;
	input Real kms_s_0055r_0722;
	input Real kms_s_1091r_0722;
	input Real s_0055;
	input Real s_0261;
	input Real s_0763_b;
	input Real s_1091;
	input Real s_1096;
        output Real y;
    algorithm
        y :=  Vmax_r_0722 * ((1 / kms_s_0055r_0722)^1 * (1 / kms_s_1091r_0722)^1 * (s_0055^1 * s_1091^1 - s_0261^1 * s_0763_b^1 * s_1096^1 / Keq_r_0722) / ((1 + s_0055 / kms_s_0055r_0722) * (1 + s_1091 / kms_s_1091r_0722) + (1 + s_0261 / kmp_s_0261r_0722) * (1 + s_0763_b / kmp_s_0763_br_0722) * (1 + s_1096 / kmp_s_1096r_0722) - 1)) / intracellular;
    end function_192;


    function function_193
        	input Real Keq_r_0723;
	input Real Vmax_r_0723;
	input Real intracellular;
	input Real kmp_s_1013r_0723;
	input Real kms_s_0710r_0723;
	input Real kms_s_0828r_0723;
	input Real s_0710;
	input Real s_0828;
	input Real s_1013;
        output Real y;
    algorithm
        y :=  Vmax_r_0723 * ((1 / kms_s_0710r_0723)^1 * (1 / kms_s_0828r_0723)^1 * (s_0710^1 * s_0828^1 - s_1013^1 / Keq_r_0723) / ((1 + s_0710 / kms_s_0710r_0723) * (1 + s_0828 / kms_s_0828r_0723) + 1 + s_1013 / kmp_s_1013r_0723 - 1)) / intracellular;
    end function_193;


    function function_194
        	input Real Keq_r_0725;
	input Real Vmax_r_0725;
	input Real intracellular;
	input Real kmp_s_1020r_0725;
	input Real kmp_s_1207r_0725;
	input Real kms_s_0128r_0725;
	input Real kms_s_1434_br_0725;
	input Real s_0128;
	input Real s_1020;
	input Real s_1207;
	input Real s_1434_b;
        output Real y;
    algorithm
        y :=  Vmax_r_0725 * ((1 / kms_s_0128r_0725)^1 * (1 / kms_s_1434_br_0725)^1 * (s_0128^1 * s_1434_b^1 - s_1020^1 * s_1207^1 / Keq_r_0725) / ((1 + s_0128 / kms_s_0128r_0725) * (1 + s_1434_b / kms_s_1434_br_0725) + (1 + s_1020 / kmp_s_1020r_0725) * (1 + s_1207 / kmp_s_1207r_0725) - 1)) / intracellular;
    end function_194;


    function function_195
        	input Real Keq_r_0726;
	input Real Vmax_r_0726;
	input Real intracellular;
	input Real kmp_s_0128r_0726;
	input Real kms_s_0410r_0726;
	input Real s_0128;
	input Real s_0410;
        output Real y;
    algorithm
        y :=  Vmax_r_0726 * ((1 / kms_s_0410r_0726)^1 * (s_0410^1 - s_0128^1 / Keq_r_0726) / (1 + s_0410 / kms_s_0410r_0726 + 1 + s_0128 / kmp_s_0128r_0726 - 1)) / intracellular;
    end function_195;


    function function_196
        	input Real Keq_r_0728;
	input Real Vmax_r_0728;
	input Real intracellular;
	input Real kmp_s_0149r_0728;
	input Real kmp_s_1091r_0728;
	input Real kmp_s_1207r_0728;
	input Real kms_s_0763_br_0728;
	input Real kms_s_1070r_0728;
	input Real kms_s_1096r_0728;
	input Real s_0149;
	input Real s_0763_b;
	input Real s_1070;
	input Real s_1091;
	input Real s_1096;
	input Real s_1207;
        output Real y;
    algorithm
        y :=  Vmax_r_0728 * ((1 / kms_s_0763_br_0728)^1 * (1 / kms_s_1070r_0728)^1 * (1 / kms_s_1096r_0728)^1 * (s_0763_b^1 * s_1070^1 * s_1096^1 - s_0149^1 * s_1091^1 * s_1207^1 / Keq_r_0728) / ((1 + s_0763_b / kms_s_0763_br_0728) * (1 + s_1070 / kms_s_1070r_0728) * (1 + s_1096 / kms_s_1096r_0728) + (1 + s_0149 / kmp_s_0149r_0728) * (1 + s_1091 / kmp_s_1091r_0728) * (1 + s_1207 / kmp_s_1207r_0728) - 1)) / intracellular;
    end function_196;


    function function_197
        	input Real Keq_r_0765;
	input Real Vmax_r_0765;
	input Real intracellular;
	input Real kmp_s_0181r_0765;
	input Real kmp_s_0470r_0765;
	input Real kms_s_0180r_0765;
	input Real kms_s_0763_br_0765;
	input Real s_0180;
	input Real s_0181;
	input Real s_0470;
	input Real s_0763_b;
        output Real y;
    algorithm
        y :=  Vmax_r_0765 * ((1 / kms_s_0180r_0765)^1 * (1 / kms_s_0763_br_0765)^1 * (s_0180^1 * s_0763_b^1 - s_0181^1 * s_0470^1 / Keq_r_0765) / ((1 + s_0180 / kms_s_0180r_0765) * (1 + s_0763_b / kms_s_0763_br_0765) + (1 + s_0181 / kmp_s_0181r_0765) * (1 + s_0470 / kmp_s_0470r_0765) - 1)) / intracellular;
    end function_197;


    function function_198
        	input Real Keq_r_0771;
	input Real Vmax_r_0771;
	input Real intracellular;
	input Real kmp_s_0446r_0771;
	input Real kmp_s_0481r_0771;
	input Real kms_s_0400r_0771;
	input Real kms_s_0521r_0771;
	input Real s_0400;
	input Real s_0446;
	input Real s_0481;
	input Real s_0521;
        output Real y;
    algorithm
        y :=  Vmax_r_0771 * ((1 / kms_s_0400r_0771)^1 * (1 / kms_s_0521r_0771)^1 * (s_0400^1 * s_0521^1 - s_0446^1 * s_0481^1 / Keq_r_0771) / ((1 + s_0400 / kms_s_0400r_0771) * (1 + s_0521 / kms_s_0521r_0771) + (1 + s_0446 / kmp_s_0446r_0771) * (1 + s_0481 / kmp_s_0481r_0771) - 1)) / intracellular;
    end function_198;


    function function_199
        	input Real Keq_r_0779;
	input Real Vmax_r_0779;
	input Real intracellular;
	input Real kmp_s_0400r_0779;
	input Real kmp_s_1430r_0779;
	input Real kms_s_0446r_0779;
	input Real kms_s_1411r_0779;
	input Real s_0400;
	input Real s_0446;
	input Real s_1411;
	input Real s_1430;
        output Real y;
    algorithm
        y :=  Vmax_r_0779 * ((1 / kms_s_0446r_0779)^1 * (1 / kms_s_1411r_0779)^1 * (s_0446^1 * s_1411^1 - s_0400^1 * s_1430^1 / Keq_r_0779) / ((1 + s_0446 / kms_s_0446r_0779) * (1 + s_1411 / kms_s_1411r_0779) + (1 + s_0400 / kmp_s_0400r_0779) * (1 + s_1430 / kmp_s_1430r_0779) - 1)) / intracellular;
    end function_199;


    function function_200
        	input Real Keq_r_0783;
	input Real Vmax_r_0783;
	input Real intracellular;
	input Real kmp_s_0369r_0783;
	input Real kmp_s_0763_br_0783;
	input Real kmp_s_0917r_0783;
	input Real kms_s_0805r_0783;
	input Real kms_s_1117r_0783;
	input Real s_0369;
	input Real s_0763_b;
	input Real s_0805;
	input Real s_0917;
	input Real s_1117;
        output Real y;
    algorithm
        y :=  Vmax_r_0783 * ((1 / kms_s_0805r_0783)^1 * (1 / kms_s_1117r_0783)^1 * (s_0805^1 * s_1117^1 - s_0369^1 * s_0763_b^1 * s_0917^1 / Keq_r_0783) / ((1 + s_0805 / kms_s_0805r_0783) * (1 + s_1117 / kms_s_1117r_0783) + (1 + s_0369 / kmp_s_0369r_0783) * (1 + s_0763_b / kmp_s_0763_br_0783) * (1 + s_0917 / kmp_s_0917r_0783) - 1)) / intracellular;
    end function_200;


    function function_201
        	input Real Keq_r_0789;
	input Real Vmax_r_0789;
	input Real intracellular;
	input Real kmp_s_0763_br_0789;
	input Real kmp_s_0887r_0789;
	input Real kmp_s_1207r_0789;
	input Real kms_s_0469r_0789;
	input Real kms_s_1151r_0789;
	input Real s_0469;
	input Real s_0763_b;
	input Real s_0887;
	input Real s_1151;
	input Real s_1207;
        output Real y;
    algorithm
        y :=  Vmax_r_0789 * ((1 / kms_s_0469r_0789)^1 * (1 / kms_s_1151r_0789)^1 * (s_0469^1 * s_1151^1 - s_0763_b^1 * s_0887^1 * s_1207^1 / Keq_r_0789) / ((1 + s_0469 / kms_s_0469r_0789) * (1 + s_1151 / kms_s_1151r_0789) + (1 + s_0763_b / kmp_s_0763_br_0789) * (1 + s_0887 / kmp_s_0887r_0789) * (1 + s_1207 / kmp_s_1207r_0789) - 1)) / intracellular;
    end function_201;


    function function_202
        	input Real Keq_r_0791;
	input Real Vmax_r_0791;
	input Real intracellular;
	input Real kmp_s_1071r_0791;
	input Real kmp_s_1151r_0791;
	input Real kms_s_0899r_0791;
	input Real kms_s_1051r_0791;
	input Real s_0899;
	input Real s_1051;
	input Real s_1071;
	input Real s_1151;
        output Real y;
    algorithm
        y :=  Vmax_r_0791 * ((1 / kms_s_0899r_0791)^1 * (1 / kms_s_1051r_0791)^1 * (s_0899^1 * s_1051^1 - s_1071^1 * s_1151^1 / Keq_r_0791) / ((1 + s_0899 / kms_s_0899r_0791) * (1 + s_1051 / kms_s_1051r_0791) + (1 + s_1071 / kmp_s_1071r_0791) * (1 + s_1151 / kmp_s_1151r_0791) - 1)) / intracellular;
    end function_202;


    function function_203
        	input Real Keq_r_0793;
	input Real Vmax_r_0793;
	input Real intracellular;
	input Real kmp_s_0605r_0793;
	input Real kmp_s_1155r_0793;
	input Real kms_s_0331r_0793;
	input Real kms_s_1154r_0793;
	input Real s_0331;
	input Real s_0605;
	input Real s_1154;
	input Real s_1155;
        output Real y;
    algorithm
        y :=  Vmax_r_0793 * ((1 / kms_s_0331r_0793)^1 * (1 / kms_s_1154r_0793)^1 * (s_0331^1 * s_1154^1 - s_0605^1 * s_1155^1 / Keq_r_0793) / ((1 + s_0331 / kms_s_0331r_0793) * (1 + s_1154 / kms_s_1154r_0793) + (1 + s_0605 / kmp_s_0605r_0793) * (1 + s_1155 / kmp_s_1155r_0793) - 1)) / intracellular;
    end function_203;


    function function_204
        	input Real Keq_r_0794;
	input Real Vmax_r_0794;
	input Real intracellular;
	input Real kmp_s_0470r_0794;
	input Real kmp_s_1417r_0794;
	input Real kms_s_0763_br_0794;
	input Real kms_s_1155r_0794;
	input Real s_0470;
	input Real s_0763_b;
	input Real s_1155;
	input Real s_1417;
        output Real y;
    algorithm
        y :=  Vmax_r_0794 * ((1 / kms_s_0763_br_0794)^1 * (1 / kms_s_1155r_0794)^1 * (s_0763_b^1 * s_1155^1 - s_0470^1 * s_1417^1 / Keq_r_0794) / ((1 + s_0763_b / kms_s_0763_br_0794) * (1 + s_1155 / kms_s_1155r_0794) + (1 + s_0470 / kmp_s_0470r_0794) * (1 + s_1417 / kmp_s_1417r_0794) - 1)) / intracellular;
    end function_204;


    function function_205
        	input Real Keq_r_0825;
	input Real Vmax_r_0825;
	input Real intracellular;
	input Real kmp_s_0185r_0825;
	input Real kmp_s_0936r_0825;
	input Real kms_s_0859r_0825;
	input Real kms_s_0899r_0825;
	input Real s_0185;
	input Real s_0859;
	input Real s_0899;
	input Real s_0936;
        output Real y;
    algorithm
        y :=  Vmax_r_0825 * ((1 / kms_s_0859r_0825)^1 * (1 / kms_s_0899r_0825)^1 * (s_0859^1 * s_0899^1 - s_0185^1 * s_0936^1 / Keq_r_0825) / ((1 + s_0859 / kms_s_0859r_0825) * (1 + s_0899 / kms_s_0899r_0825) + (1 + s_0185 / kmp_s_0185r_0825) * (1 + s_0936 / kmp_s_0936r_0825) - 1)) / intracellular;
    end function_205;


    function function_206
        	input Real Keq_r_0831;
	input Real Vmax_r_0831;
	input Real intracellular;
	input Real kmp_s_0763_br_0831;
	input Real kmp_s_1226r_0831;
	input Real kmp_s_1290r_0831;
	input Real kms_s_1233r_0831;
	input Real kms_s_1293r_0831;
	input Real s_0763_b;
	input Real s_1226;
	input Real s_1233;
	input Real s_1290;
	input Real s_1293;
        output Real y;
    algorithm
        y :=  Vmax_r_0831 * ((1 / kms_s_1233r_0831)^1 * (1 / kms_s_1293r_0831)^1 * (s_1233^1 * s_1293^1 - s_0763_b^1 * s_1226^1 * s_1290^1 / Keq_r_0831) / ((1 + s_1233 / kms_s_1233r_0831) * (1 + s_1293 / kms_s_1293r_0831) + (1 + s_0763_b / kmp_s_0763_br_0831) * (1 + s_1226 / kmp_s_1226r_0831) * (1 + s_1290 / kmp_s_1290r_0831) - 1)) / intracellular;
    end function_206;


    function function_207
        	input Real Keq_r_0847;
	input Real Vmax_r_0847;
	input Real intracellular;
	input Real kmp_s_0090r_0847;
	input Real kmp_s_0511r_0847;
	input Real kmp_s_0763_br_0847;
	input Real kms_s_0485r_0847;
	input Real kms_s_1020r_0847;
	input Real s_0090;
	input Real s_0485;
	input Real s_0511;
	input Real s_0763_b;
	input Real s_1020;
        output Real y;
    algorithm
        y :=  Vmax_r_0847 * ((1 / kms_s_0485r_0847)^1 * (1 / kms_s_1020r_0847)^1 * (s_0485^1 * s_1020^1 - s_0090^1 * s_0511^1 * s_0763_b^2 / Keq_r_0847) / ((1 + s_0485 / kms_s_0485r_0847) * (1 + s_1020 / kms_s_1020r_0847) + (1 + s_0090 / kmp_s_0090r_0847) * (1 + s_0511 / kmp_s_0511r_0847) * (1 + s_0763_b / kmp_s_0763_br_0847) - 1)) / intracellular;
    end function_207;


    function function_208
        	input Real Keq_r_0850;
	input Real Vmax_r_0850;
	input Real intracellular;
	input Real kmp_s_0470r_0850;
	input Real kmp_s_1233r_0850;
	input Real kms_s_1219r_0850;
	input Real s_0470;
	input Real s_1219;
	input Real s_1233;
        output Real y;
    algorithm
        y :=  Vmax_r_0850 * ((1 / kms_s_1219r_0850)^1 * (s_1219^1 - s_0470^1 * s_1233^1 / Keq_r_0850) / (1 + s_1219 / kms_s_1219r_0850 + (1 + s_0470 / kmp_s_0470r_0850) * (1 + s_1233 / kmp_s_1233r_0850) - 1)) / intracellular;
    end function_208;


    function function_209
        	input Real Keq_r_0853;
	input Real Vmax_r_0853;
	input Real intracellular;
	input Real kmp_s_0511r_0853;
	input Real kmp_s_0763_br_0853;
	input Real kmp_s_1219r_0853;
	input Real kms_s_0485r_0853;
	input Real kms_s_0943r_0853;
	input Real s_0485;
	input Real s_0511;
	input Real s_0763_b;
	input Real s_0943;
	input Real s_1219;
        output Real y;
    algorithm
        y :=  Vmax_r_0853 * ((1 / kms_s_0485r_0853)^1 * (1 / kms_s_0943r_0853)^1 * (s_0485^1 * s_0943^1 - s_0511^1 * s_0763_b^2 * s_1219^1 / Keq_r_0853) / ((1 + s_0485 / kms_s_0485r_0853) * (1 + s_0943 / kms_s_0943r_0853) + (1 + s_0511 / kmp_s_0511r_0853) * (1 + s_0763_b / kmp_s_0763_br_0853) * (1 + s_1219 / kmp_s_1219r_0853) - 1)) / intracellular;
    end function_209;


    function function_210
        	input Real Keq_r_0856;
	input Real Vmax_r_0856;
	input Real intracellular;
	input Real kmp_s_0397r_0856;
	input Real kmp_s_0763_br_0856;
	input Real kmp_s_1349r_0856;
	input Real kmp_s_1517r_0856;
	input Real kms_s_0206r_0856;
	input Real kms_s_1521r_0856;
	input Real s_0206;
	input Real s_0397;
	input Real s_0763_b;
	input Real s_1349;
	input Real s_1517;
	input Real s_1521;
        output Real y;
    algorithm
        y :=  Vmax_r_0856 * ((1 / kms_s_0206r_0856)^1 * (1 / kms_s_1521r_0856)^1 * (s_0206^1 * s_1521^1 - s_0397^1 * s_0763_b^2 * s_1349^1 * s_1517^1 / Keq_r_0856) / ((1 + s_0206 / kms_s_0206r_0856) * (1 + s_1521 / kms_s_1521r_0856) + (1 + s_0397 / kmp_s_0397r_0856) * (1 + s_0763_b / kmp_s_0763_br_0856) * (1 + s_1349 / kmp_s_1349r_0856) * (1 + s_1517 / kmp_s_1517r_0856) - 1)) / intracellular;
    end function_210;


    function function_212
        	input Real Keq_r_0861;
	input Real Vmax_r_0861;
	input Real intracellular;
	input Real kmp_s_0549r_0861;
	input Real kms_s_0410r_0861;
	input Real s_0410;
	input Real s_0549;
        output Real y;
    algorithm
        y :=  Vmax_r_0861 * ((1 / kms_s_0410r_0861)^1 * (s_0410^1 - s_0549^1 / Keq_r_0861) / (1 + s_0410 / kms_s_0410r_0861 + 1 + s_0549 / kmp_s_0549r_0861 - 1)) / intracellular;
    end function_212;


    function function_215
        	input Real Keq_r_0873;
	input Real Vmax_r_0873;
	input Real intracellular;
	input Real kmp_s_1228r_0873;
	input Real kmp_s_1290r_0873;
	input Real kms_s_1225r_0873;
	input Real kms_s_1293r_0873;
	input Real s_1225;
	input Real s_1228;
	input Real s_1290;
	input Real s_1293;
        output Real y;
    algorithm
        y :=  Vmax_r_0873 * ((1 / kms_s_1225r_0873)^1 * (1 / kms_s_1293r_0873)^1 * (s_1225^1 * s_1293^1 - s_1228^1 * s_1290^1 / Keq_r_0873) / ((1 + s_1225 / kms_s_1225r_0873) * (1 + s_1293 / kms_s_1293r_0873) + (1 + s_1228 / kmp_s_1228r_0873) * (1 + s_1290 / kmp_s_1290r_0873) - 1)) / intracellular;
    end function_215;


    function function_216
        	input Real Keq_r_0874;
	input Real Vmax_r_0874;
	input Real intracellular;
	input Real kmp_s_0763_br_0874;
	input Real kmp_s_1225r_0874;
	input Real kmp_s_1290r_0874;
	input Real kms_s_1226r_0874;
	input Real kms_s_1293r_0874;
	input Real s_0763_b;
	input Real s_1225;
	input Real s_1226;
	input Real s_1290;
	input Real s_1293;
        output Real y;
    algorithm
        y :=  Vmax_r_0874 * ((1 / kms_s_1226r_0874)^1 * (1 / kms_s_1293r_0874)^1 * (s_1226^1 * s_1293^1 - s_0763_b^1 * s_1225^1 * s_1290^1 / Keq_r_0874) / ((1 + s_1226 / kms_s_1226r_0874) * (1 + s_1293 / kms_s_1293r_0874) + (1 + s_0763_b / kmp_s_0763_br_0874) * (1 + s_1225 / kmp_s_1225r_0874) * (1 + s_1290 / kmp_s_1290r_0874) - 1)) / intracellular;
    end function_216;


    function function_217
        	input Real Keq_r_0875;
	input Real Vmax_r_0875;
	input Real intracellular;
	input Real kmp_s_0553r_0875;
	input Real kms_s_0554r_0875;
	input Real s_0553;
	input Real s_0554;
        output Real y;
    algorithm
        y :=  Vmax_r_0875 * ((1 / kms_s_0554r_0875)^1 * (s_0554^1 - s_0553^1 / Keq_r_0875) / (1 + s_0554 / kms_s_0554r_0875 + 1 + s_0553 / kmp_s_0553r_0875 - 1)) / intracellular;
    end function_217;


    function function_218
        	input Real Keq_r_0877;
	input Real Vmax_r_0877;
	input Real intracellular;
	input Real kmp_s_0021r_0877;
	input Real kmp_s_0400r_0877;
	input Real kms_s_0022r_0877;
	input Real kms_s_0446r_0877;
	input Real s_0021;
	input Real s_0022;
	input Real s_0400;
	input Real s_0446;
        output Real y;
    algorithm
        y :=  Vmax_r_0877 * ((1 / kms_s_0022r_0877)^1 * (1 / kms_s_0446r_0877)^1 * (s_0022^1 * s_0446^1 - s_0021^1 * s_0400^1 / Keq_r_0877) / ((1 + s_0022 / kms_s_0022r_0877) * (1 + s_0446 / kms_s_0446r_0877) + (1 + s_0021 / kmp_s_0021r_0877) * (1 + s_0400 / kmp_s_0400r_0877) - 1)) / intracellular;
    end function_218;


    function function_219
        	input Real Keq_r_0881;
	input Real Vmax_r_0881;
	input Real intracellular;
	input Real kmp_s_0079r_0881;
	input Real kms_s_0080r_0881;
	input Real kms_s_1434_br_0881;
	input Real s_0079;
	input Real s_0080;
	input Real s_1434_b;
        output Real y;
    algorithm
        y :=  Vmax_r_0881 * ((1 / kms_s_0080r_0881)^1 * (1 / kms_s_1434_br_0881)^1 * (s_0080^1 * s_1434_b^1 - s_0079^1 / Keq_r_0881) / ((1 + s_0080 / kms_s_0080r_0881) * (1 + s_1434_b / kms_s_1434_br_0881) + 1 + s_0079 / kmp_s_0079r_0881 - 1)) / intracellular;
    end function_219;


    function function_220
        	input Real Keq_r_0882;
	input Real Vmax_r_0882;
	input Real intracellular;
	input Real kmp_s_0080r_0882;
	input Real kmp_s_0605r_0882;
	input Real kmp_s_0763_br_0882;
	input Real kms_s_0334r_0882;
	input Real kms_s_1434_br_0882;
	input Real s_0080;
	input Real s_0334;
	input Real s_0605;
	input Real s_0763_b;
	input Real s_1434_b;
        output Real y;
    algorithm
        y :=  Vmax_r_0882 * ((1 / kms_s_0334r_0882)^1 * (1 / kms_s_1434_br_0882)^1 * (s_0334^1 * s_1434_b^1 - s_0080^1 * s_0605^1 * s_0763_b^1 / Keq_r_0882) / ((1 + s_0334 / kms_s_0334r_0882) * (1 + s_1434_b / kms_s_1434_br_0882) + (1 + s_0080 / kmp_s_0080r_0882) * (1 + s_0605 / kmp_s_0605r_0882) * (1 + s_0763_b / kmp_s_0763_br_0882) - 1)) / intracellular;
    end function_220;


    function function_221
        	input Real Keq_r_0883;
	input Real Vmax_r_0883;
	input Real intracellular;
	input Real kmp_s_0318r_0883;
	input Real kmp_s_0763_br_0883;
	input Real kms_s_0316r_0883;
	input Real kms_s_0470r_0883;
	input Real s_0316;
	input Real s_0318;
	input Real s_0470;
	input Real s_0763_b;
        output Real y;
    algorithm
        y :=  Vmax_r_0883 * ((1 / kms_s_0316r_0883)^1 * (1 / kms_s_0470r_0883)^1 * (s_0316^1 * s_0470^1 - s_0318^1 * s_0763_b^1 / Keq_r_0883) / ((1 + s_0316 / kms_s_0316r_0883) * (1 + s_0470 / kms_s_0470r_0883) + (1 + s_0318 / kmp_s_0318r_0883) * (1 + s_0763_b / kmp_s_0763_br_0883) - 1)) / intracellular;
    end function_221;


    function function_222
        	input Real Keq_r_0884;
	input Real Vmax_r_0884;
	input Real intracellular;
	input Real kmp_s_0316r_0884;
	input Real kmp_s_0400r_0884;
	input Real kmp_s_0763_br_0884;
	input Real kmp_s_1207r_0884;
	input Real kms_s_0158r_0884;
	input Real kms_s_0446r_0884;
	input Real s_0158;
	input Real s_0316;
	input Real s_0400;
	input Real s_0446;
	input Real s_0763_b;
	input Real s_1207;
        output Real y;
    algorithm
        y :=  Vmax_r_0884 * ((1 / kms_s_0158r_0884)^1 * (1 / kms_s_0446r_0884)^1 * (s_0158^1 * s_0446^1 - s_0316^1 * s_0400^1 * s_0763_b^2 * s_1207^1 / Keq_r_0884) / ((1 + s_0158 / kms_s_0158r_0884) * (1 + s_0446 / kms_s_0446r_0884) + (1 + s_0316 / kmp_s_0316r_0884) * (1 + s_0400 / kmp_s_0400r_0884) * (1 + s_0763_b / kmp_s_0763_br_0884) * (1 + s_1207 / kmp_s_1207r_0884) - 1)) / intracellular;
    end function_222;


    function function_223
        	input Real Keq_r_0885;
	input Real Vmax_r_0885;
	input Real intracellular;
	input Real kmp_s_0309r_0885;
	input Real kmp_s_0325r_0885;
	input Real kms_s_0122r_0885;
	input Real kms_s_0317r_0885;
	input Real s_0122;
	input Real s_0309;
	input Real s_0317;
	input Real s_0325;
        output Real y;
    algorithm
        y :=  Vmax_r_0885 * ((1 / kms_s_0122r_0885)^1 * (1 / kms_s_0317r_0885)^1 * (s_0122^1 * s_0317^1 - s_0309^1 * s_0325^1 / Keq_r_0885) / ((1 + s_0122 / kms_s_0122r_0885) * (1 + s_0317 / kms_s_0317r_0885) + (1 + s_0309 / kmp_s_0309r_0885) * (1 + s_0325 / kmp_s_0325r_0885) - 1)) / intracellular;
    end function_223;


    function function_224
        	input Real Keq_r_0886;
	input Real Vmax_r_0886;
	input Real intracellular;
	input Real kmp_s_0009r_0886;
	input Real kmp_s_0400r_0886;
	input Real kmp_s_0763_br_0886;
	input Real kmp_s_1207r_0886;
	input Real kms_s_0318r_0886;
	input Real kms_s_0446r_0886;
	input Real kms_s_0881r_0886;
	input Real s_0009;
	input Real s_0318;
	input Real s_0400;
	input Real s_0446;
	input Real s_0763_b;
	input Real s_0881;
	input Real s_1207;
        output Real y;
    algorithm
        y :=  Vmax_r_0886 * ((1 / kms_s_0318r_0886)^1 * (1 / kms_s_0446r_0886)^1 * (1 / kms_s_0881r_0886)^1 * (s_0318^1 * s_0446^1 * s_0881^1 - s_0009^1 * s_0400^1 * s_0763_b^1 * s_1207^1 / Keq_r_0886) / ((1 + s_0318 / kms_s_0318r_0886) * (1 + s_0446 / kms_s_0446r_0886) * (1 + s_0881 / kms_s_0881r_0886) + (1 + s_0009 / kmp_s_0009r_0886) * (1 + s_0400 / kmp_s_0400r_0886) * (1 + s_0763_b / kmp_s_0763_br_0886) * (1 + s_1207 / kmp_s_1207r_0886) - 1)) / intracellular;
    end function_224;


    function function_225
        	input Real Keq_r_0887;
	input Real Vmax_r_0887;
	input Real intracellular;
	input Real kmp_s_0078r_0887;
	input Real kms_s_1066r_0887;
	input Real s_0078;
	input Real s_1066;
        output Real y;
    algorithm
        y :=  Vmax_r_0887 * ((1 / kms_s_1066r_0887)^1 * (s_1066^1 - s_0078^1 / Keq_r_0887) / (1 + s_1066 / kms_s_1066r_0887 + 1 + s_0078 / kmp_s_0078r_0887 - 1)) / intracellular;
    end function_225;


    function function_226
        	input Real Keq_r_0888;
	input Real Vmax_r_0888;
	input Real intracellular;
	input Real kmp_s_0158r_0888;
	input Real kmp_s_0400r_0888;
	input Real kmp_s_0763_br_0888;
	input Real kmp_s_0899r_0888;
	input Real kmp_s_1207r_0888;
	input Real kms_s_0446r_0888;
	input Real kms_s_0907r_0888;
	input Real kms_s_1052r_0888;
	input Real kms_s_1434_br_0888;
	input Real s_0158;
	input Real s_0400;
	input Real s_0446;
	input Real s_0763_b;
	input Real s_0899;
	input Real s_0907;
	input Real s_1052;
	input Real s_1207;
	input Real s_1434_b;
        output Real y;
    algorithm
        y :=  Vmax_r_0888 * ((1 / kms_s_0446r_0888)^1 * (1 / kms_s_0907r_0888)^1 * (1 / kms_s_1052r_0888)^1 * (1 / kms_s_1434_br_0888)^1 * (s_0446^1 * s_0907^1 * s_1052^1 * s_1434_b^1 - s_0158^1 * s_0400^1 * s_0763_b^1 * s_0899^1 * s_1207^1 / Keq_r_0888) / ((1 + s_0446 / kms_s_0446r_0888) * (1 + s_0907 / kms_s_0907r_0888) * (1 + s_1052 / kms_s_1052r_0888) * (1 + s_1434_b / kms_s_1434_br_0888) + (1 + s_0158 / kmp_s_0158r_0888) * (1 + s_0400 / kmp_s_0400r_0888) * (1 + s_0763_b / kmp_s_0763_br_0888) * (1 + s_0899 / kmp_s_0899r_0888) * (1 + s_1207 / kmp_s_1207r_0888) - 1)) / intracellular;
    end function_226;


    function function_227
        	input Real Keq_r_0889;
	input Real Vmax_r_0889;
	input Real intracellular;
	input Real kmp_s_0309r_0889;
	input Real kmp_s_0763_br_0889;
	input Real kmp_s_1052r_0889;
	input Real kms_s_0122r_0889;
	input Real kms_s_1048r_0889;
	input Real s_0122;
	input Real s_0309;
	input Real s_0763_b;
	input Real s_1048;
	input Real s_1052;
        output Real y;
    algorithm
        y :=  Vmax_r_0889 * ((1 / kms_s_0122r_0889)^1 * (1 / kms_s_1048r_0889)^1 * (s_0122^1 * s_1048^1 - s_0309^1 * s_0763_b^1 * s_1052^1 / Keq_r_0889) / ((1 + s_0122 / kms_s_0122r_0889) * (1 + s_1048 / kms_s_1048r_0889) + (1 + s_0309 / kmp_s_0309r_0889) * (1 + s_0763_b / kmp_s_0763_br_0889) * (1 + s_1052 / kmp_s_1052r_0889) - 1)) / intracellular;
    end function_227;


    function function_228
        	input Real Keq_r_0890;
	input Real Vmax_r_0890;
	input Real intracellular;
	input Real kmp_s_0400r_0890;
	input Real kmp_s_0763_br_0890;
	input Real kmp_s_1048r_0890;
	input Real kmp_s_1207r_0890;
	input Real kms_s_0333r_0890;
	input Real kms_s_0446r_0890;
	input Real kms_s_0740r_0890;
	input Real s_0333;
	input Real s_0400;
	input Real s_0446;
	input Real s_0740;
	input Real s_0763_b;
	input Real s_1048;
	input Real s_1207;
        output Real y;
    algorithm
        y :=  Vmax_r_0890 * ((1 / kms_s_0333r_0890)^1 * (1 / kms_s_0446r_0890)^1 * (1 / kms_s_0740r_0890)^1 * (s_0333^1 * s_0446^1 * s_0740^1 - s_0400^1 * s_0763_b^1 * s_1048^1 * s_1207^1 / Keq_r_0890) / ((1 + s_0333 / kms_s_0333r_0890) * (1 + s_0446 / kms_s_0446r_0890) * (1 + s_0740 / kms_s_0740r_0890) + (1 + s_0400 / kmp_s_0400r_0890) * (1 + s_0763_b / kmp_s_0763_br_0890) * (1 + s_1048 / kmp_s_1048r_0890) * (1 + s_1207 / kmp_s_1207r_0890) - 1)) / intracellular;
    end function_228;


    function function_229
        	input Real Keq_r_0891;
	input Real Vmax_r_0891;
	input Real intracellular;
	input Real kmp_s_0331r_0891;
	input Real kmp_s_0434r_0891;
	input Real kmp_s_0763_br_0891;
	input Real kms_s_0427r_0891;
	input Real kms_s_0446r_0891;
	input Real s_0331;
	input Real s_0427;
	input Real s_0434;
	input Real s_0446;
	input Real s_0763_b;
        output Real y;
    algorithm
        y :=  Vmax_r_0891 * ((1 / kms_s_0427r_0891)^1 * (1 / kms_s_0446r_0891)^1 * (s_0427^1 * s_0446^1 - s_0331^1 * s_0434^1 * s_0763_b^1 / Keq_r_0891) / ((1 + s_0427 / kms_s_0427r_0891) * (1 + s_0446 / kms_s_0446r_0891) + (1 + s_0331 / kmp_s_0331r_0891) * (1 + s_0434 / kmp_s_0434r_0891) * (1 + s_0763_b / kmp_s_0763_br_0891) - 1)) / intracellular;
    end function_229;


    function function_230
        	input Real Keq_r_0911;
	input Real Vmax_r_0911;
	input Real intracellular;
	input Real kmp_s_0470r_0911;
	input Real kmp_s_0859r_0911;
	input Real kmp_s_1434_br_0911;
	input Real kms_s_0763_br_0911;
	input Real kms_s_1258r_0911;
	input Real s_0470;
	input Real s_0763_b;
	input Real s_0859;
	input Real s_1258;
	input Real s_1434_b;
        output Real y;
    algorithm
        y :=  Vmax_r_0911 * ((1 / kms_s_0763_br_0911)^1 * (1 / kms_s_1258r_0911)^1 * (s_0763_b^1 * s_1258^1 - s_0470^1 * s_0859^1 * s_1434_b^1 / Keq_r_0911) / ((1 + s_0763_b / kms_s_0763_br_0911) * (1 + s_1258 / kms_s_1258r_0911) + (1 + s_0470 / kmp_s_0470r_0911) * (1 + s_0859 / kmp_s_0859r_0911) * (1 + s_1434_b / kmp_s_1434_br_0911) - 1)) / intracellular;
    end function_230;


    function function_231
        	input Real Keq_r_0913;
	input Real Vmax_r_0913;
	input Real intracellular;
	input Real kmp_s_0209r_0913;
	input Real kmp_s_0470r_0913;
	input Real kmp_s_1096r_0913;
	input Real kms_s_1091r_0913;
	input Real kms_s_1258r_0913;
	input Real s_0209;
	input Real s_0470;
	input Real s_1091;
	input Real s_1096;
	input Real s_1258;
        output Real y;
    algorithm
        y :=  Vmax_r_0913 * ((1 / kms_s_1091r_0913)^1 * (1 / kms_s_1258r_0913)^1 * (s_1091^1 * s_1258^1 - s_0209^1 * s_0470^1 * s_1096^1 / Keq_r_0913) / ((1 + s_1091 / kms_s_1091r_0913) * (1 + s_1258 / kms_s_1258r_0913) + (1 + s_0209 / kmp_s_0209r_0913) * (1 + s_0470 / kmp_s_0470r_0913) * (1 + s_1096 / kmp_s_1096r_0913) - 1)) / intracellular;
    end function_231;


    function function_232
        	input Real Keq_r_0934;
	input Real Vmax_r_0934;
	input Real intracellular;
	input Real kmp_s_0320r_0934;
	input Real kmp_s_1207r_0934;
	input Real kms_s_0319r_0934;
	input Real kms_s_1434_br_0934;
	input Real s_0319;
	input Real s_0320;
	input Real s_1207;
	input Real s_1434_b;
        output Real y;
    algorithm
        y :=  Vmax_r_0934 * ((1 / kms_s_0319r_0934)^1 * (1 / kms_s_1434_br_0934)^1 * (s_0319^1 * s_1434_b^1 - s_0320^1 * s_1207^1 / Keq_r_0934) / ((1 + s_0319 / kms_s_0319r_0934) * (1 + s_1434_b / kms_s_1434_br_0934) + (1 + s_0320 / kmp_s_0320r_0934) * (1 + s_1207 / kmp_s_1207r_0934) - 1)) / intracellular;
    end function_232;


    function function_233
        	input Real Keq_r_0936;
	input Real Vmax_r_0936;
	input Real intracellular;
	input Real kmp_s_0939r_0936;
	input Real kmp_s_1091r_0936;
	input Real kms_s_0120r_0936;
	input Real kms_s_0763_br_0936;
	input Real kms_s_1096r_0936;
	input Real s_0120;
	input Real s_0763_b;
	input Real s_0939;
	input Real s_1091;
	input Real s_1096;
        output Real y;
    algorithm
        y :=  Vmax_r_0936 * ((1 / kms_s_0120r_0936)^1 * (1 / kms_s_0763_br_0936)^2 * (1 / kms_s_1096r_0936)^1 * (s_0120^1 * s_0763_b^2 * s_1096^1 - s_0939^1 * s_1091^1 / Keq_r_0936) / ((1 + s_0120 / kms_s_0120r_0936) * (1 + s_0763_b / kms_s_0763_br_0936) * (1 + s_1096 / kms_s_1096r_0936) + (1 + s_0939 / kmp_s_0939r_0936) * (1 + s_1091 / kmp_s_1091r_0936) - 1)) / intracellular;
    end function_233;


    function function_234
        	input Real Keq_r_0937;
	input Real Vmax_r_0937;
	input Real intracellular;
	input Real kmp_s_0400r_0937;
	input Real kmp_s_0763_br_0937;
	input Real kmp_s_1156r_0937;
	input Real kmp_s_1207r_0937;
	input Real kms_s_0446r_0937;
	input Real kms_s_0458r_0937;
	input Real kms_s_1277r_0937;
	input Real s_0400;
	input Real s_0446;
	input Real s_0458;
	input Real s_0763_b;
	input Real s_1156;
	input Real s_1207;
	input Real s_1277;
        output Real y;
    algorithm
        y :=  Vmax_r_0937 * ((1 / kms_s_0446r_0937)^1 * (1 / kms_s_0458r_0937)^1 * (1 / kms_s_1277r_0937)^1 * (s_0446^1 * s_0458^1 * s_1277^1 - s_0400^1 * s_0763_b^1 * s_1156^1 * s_1207^1 / Keq_r_0937) / ((1 + s_0446 / kms_s_0446r_0937) * (1 + s_0458 / kms_s_0458r_0937) * (1 + s_1277 / kms_s_1277r_0937) + (1 + s_0400 / kmp_s_0400r_0937) * (1 + s_0763_b / kmp_s_0763_br_0937) * (1 + s_1156 / kmp_s_1156r_0937) * (1 + s_1207 / kmp_s_1207r_0937) - 1)) / intracellular;
    end function_234;


    function function_236
        	input Real Keq_r_0940;
	input Real Vmax_r_0940;
	input Real intracellular;
	input Real kmp_s_0380r_0940;
	input Real kmp_s_0470r_0940;
	input Real kmp_s_1087r_0940;
	input Real kms_s_0514r_0940;
	input Real kms_s_1082r_0940;
	input Real kms_s_1277r_0940;
	input Real s_0380;
	input Real s_0470;
	input Real s_0514;
	input Real s_1082;
	input Real s_1087;
	input Real s_1277;
        output Real y;
    algorithm
        y :=  Vmax_r_0940 * ((1 / kms_s_0514r_0940)^1 * (1 / kms_s_1082r_0940)^1 * (1 / kms_s_1277r_0940)^1 * (s_0514^1 * s_1082^1 * s_1277^1 - s_0380^1 * s_0470^1 * s_1087^1 / Keq_r_0940) / ((1 + s_0514 / kms_s_0514r_0940) * (1 + s_1082 / kms_s_1082r_0940) * (1 + s_1277 / kms_s_1277r_0940) + (1 + s_0380 / kmp_s_0380r_0940) * (1 + s_0470 / kmp_s_0470r_0940) * (1 + s_1087 / kmp_s_1087r_0940) - 1)) / intracellular;
    end function_236;


    function function_237
        	input Real Keq_r_0941;
	input Real Vmax_r_0941;
	input Real intracellular;
	input Real kmp_s_0446r_0941;
	input Real kmp_s_1277r_0941;
	input Real kms_s_0400r_0941;
	input Real kms_s_0763_br_0941;
	input Real kms_s_1243r_0941;
	input Real s_0400;
	input Real s_0446;
	input Real s_0763_b;
	input Real s_1243;
	input Real s_1277;
        output Real y;
    algorithm
        y :=  Vmax_r_0941 * ((1 / kms_s_0400r_0941)^1 * (1 / kms_s_0763_br_0941)^1 * (1 / kms_s_1243r_0941)^1 * (s_0400^1 * s_0763_b^1 * s_1243^1 - s_0446^1 * s_1277^1 / Keq_r_0941) / ((1 + s_0400 / kms_s_0400r_0941) * (1 + s_0763_b / kms_s_0763_br_0941) * (1 + s_1243 / kms_s_1243r_0941) + (1 + s_0446 / kmp_s_0446r_0941) * (1 + s_1277 / kmp_s_1277r_0941) - 1)) / intracellular;
    end function_237;


    function function_238
        	input Real Keq_r_0948;
	input Real Vmax_r_0948;
	input Real intracellular;
	input Real kmp_s_0335r_0948;
	input Real kmp_s_1207r_0948;
	input Real kmp_s_1434_br_0948;
	input Real kms_s_0163r_0948;
	input Real kms_s_0320r_0948;
	input Real s_0163;
	input Real s_0320;
	input Real s_0335;
	input Real s_1207;
	input Real s_1434_b;
        output Real y;
    algorithm
        y :=  Vmax_r_0948 * ((1 / kms_s_0163r_0948)^1 * (1 / kms_s_0320r_0948)^1 * (s_0163^1 * s_0320^1 - s_0335^1 * s_1207^1 * s_1434_b^2 / Keq_r_0948) / ((1 + s_0163 / kms_s_0163r_0948) * (1 + s_0320 / kms_s_0320r_0948) + (1 + s_0335 / kmp_s_0335r_0948) * (1 + s_1207 / kmp_s_1207r_0948) * (1 + s_1434_b / kmp_s_1434_br_0948) - 1)) / intracellular;
    end function_238;


    function function_239
        	input Real Keq_r_0949;
	input Real Vmax_r_0949;
	input Real intracellular;
	input Real kmp_s_0320r_0949;
	input Real kmp_s_1283r_0949;
	input Real kms_s_0335r_0949;
	input Real s_0320;
	input Real s_0335;
	input Real s_1283;
        output Real y;
    algorithm
        y :=  Vmax_r_0949 * ((1 / kms_s_0335r_0949)^2 * (s_0335^2 - s_0320^1 * s_1283^1 / Keq_r_0949) / (1 + s_0335 / kms_s_0335r_0949 + (1 + s_0320 / kmp_s_0320r_0949) * (1 + s_1283 / kmp_s_1283r_0949) - 1)) / intracellular;
    end function_239;


    function function_240
        	input Real Keq_r_0951;
	input Real Vmax_r_0951;
	input Real intracellular;
	input Real kmp_s_0562r_0951;
	input Real kmp_s_1434_br_0951;
	input Real kmp_s_1517r_0951;
	input Real kms_s_0400r_0951;
	input Real kms_s_1521r_0951;
	input Real s_0400;
	input Real s_0562;
	input Real s_1434_b;
	input Real s_1517;
	input Real s_1521;
        output Real y;
    algorithm
        y :=  Vmax_r_0951 * ((1 / kms_s_0400r_0951)^1 * (1 / kms_s_1521r_0951)^1 * (s_0400^1 * s_1521^1 - s_0562^1 * s_1434_b^1 * s_1517^1 / Keq_r_0951) / ((1 + s_0400 / kms_s_0400r_0951) * (1 + s_1521 / kms_s_1521r_0951) + (1 + s_0562 / kmp_s_0562r_0951) * (1 + s_1434_b / kmp_s_1434_br_0951) * (1 + s_1517 / kmp_s_1517r_0951) - 1)) / intracellular;
    end function_240;


    function function_241
        	input Real Keq_r_0955;
	input Real Vmax_r_0955;
	input Real intracellular;
	input Real kmp_s_0591r_0955;
	input Real kmp_s_1434_br_0955;
	input Real kmp_s_1517r_0955;
	input Real kms_s_0706r_0955;
	input Real kms_s_1521r_0955;
	input Real s_0591;
	input Real s_0706;
	input Real s_1434_b;
	input Real s_1517;
	input Real s_1521;
        output Real y;
    algorithm
        y :=  Vmax_r_0955 * ((1 / kms_s_0706r_0955)^1 * (1 / kms_s_1521r_0955)^1 * (s_0706^1 * s_1521^1 - s_0591^1 * s_1434_b^1 * s_1517^1 / Keq_r_0955) / ((1 + s_0706 / kms_s_0706r_0955) * (1 + s_1521 / kms_s_1521r_0955) + (1 + s_0591 / kmp_s_0591r_0955) * (1 + s_1434_b / kmp_s_1434_br_0955) * (1 + s_1517 / kmp_s_1517r_0955) - 1)) / intracellular;
    end function_241;


    function function_242
        	input Real Keq_r_0957;
	input Real Vmax_r_0957;
	input Real intracellular;
	input Real kmp_s_0622r_0957;
	input Real kmp_s_1434_br_0957;
	input Real kmp_s_1517r_0957;
	input Real kms_s_1411r_0957;
	input Real kms_s_1521r_0957;
	input Real s_0622;
	input Real s_1411;
	input Real s_1434_b;
	input Real s_1517;
	input Real s_1521;
        output Real y;
    algorithm
        y :=  Vmax_r_0957 * ((1 / kms_s_1411r_0957)^1 * (1 / kms_s_1521r_0957)^1 * (s_1411^1 * s_1521^1 - s_0622^1 * s_1434_b^1 * s_1517^1 / Keq_r_0957) / ((1 + s_1411 / kms_s_1411r_0957) * (1 + s_1521 / kms_s_1521r_0957) + (1 + s_0622 / kmp_s_0622r_0957) * (1 + s_1434_b / kmp_s_1434_br_0957) * (1 + s_1517 / kmp_s_1517r_0957) - 1)) / intracellular;
    end function_242;


    function function_243
        	input Real Keq_r_0959;
	input Real Vmax_r_0959;
	input Real intracellular;
	input Real kmp_s_0566r_0959;
	input Real kmp_s_1434_br_0959;
	input Real kmp_s_1517r_0959;
	input Real kms_s_0446r_0959;
	input Real kms_s_1521r_0959;
	input Real s_0446;
	input Real s_0566;
	input Real s_1434_b;
	input Real s_1517;
	input Real s_1521;
        output Real y;
    algorithm
        y :=  Vmax_r_0959 * ((1 / kms_s_0446r_0959)^1 * (1 / kms_s_1521r_0959)^1 * (s_0446^1 * s_1521^1 - s_0566^1 * s_1434_b^1 * s_1517^1 / Keq_r_0959) / ((1 + s_0446 / kms_s_0446r_0959) * (1 + s_1521 / kms_s_1521r_0959) + (1 + s_0566 / kmp_s_0566r_0959) * (1 + s_1434_b / kmp_s_1434_br_0959) * (1 + s_1517 / kmp_s_1517r_0959) - 1)) / intracellular;
    end function_243;


    function function_244
        	input Real Keq_r_0963;
	input Real Vmax_r_0963;
	input Real intracellular;
	input Real kmp_s_0427r_0963;
	input Real kms_s_0557r_0963;
	input Real s_0427;
	input Real s_0557;
        output Real y;
    algorithm
        y :=  Vmax_r_0963 * ((1 / kms_s_0557r_0963)^1 * (s_0557^1 - s_0427^1 / Keq_r_0963) / (1 + s_0557 / kms_s_0557r_0963 + 1 + s_0427 / kmp_s_0427r_0963 - 1)) / intracellular;
    end function_244;


    function function_245
        	input Real Keq_r_0965;
	input Real Vmax_r_0965;
	input Real intracellular;
	input Real kmp_s_0557r_0965;
	input Real kms_s_0561r_0965;
	input Real s_0557;
	input Real s_0561;
        output Real y;
    algorithm
        y :=  Vmax_r_0965 * ((1 / kms_s_0561r_0965)^1 * (s_0561^1 - s_0557^1 / Keq_r_0965) / (1 + s_0561 / kms_s_0561r_0965 + 1 + s_0557 / kmp_s_0557r_0965 - 1)) / intracellular;
    end function_245;


    function function_246
        	input Real Keq_r_0967;
	input Real Vmax_r_0967;
	input Real intracellular;
	input Real kmp_s_0669r_0967;
	input Real kmp_s_0763_br_0967;
	input Real kmp_s_1290r_0967;
	input Real kms_s_1293r_0967;
	input Real kms_s_1447r_0967;
	input Real s_0669;
	input Real s_0763_b;
	input Real s_1290;
	input Real s_1293;
	input Real s_1447;
        output Real y;
    algorithm
        y :=  Vmax_r_0967 * ((1 / kms_s_1293r_0967)^1 * (1 / kms_s_1447r_0967)^1 * (s_1293^1 * s_1447^1 - s_0669^1 * s_0763_b^1 * s_1290^1 / Keq_r_0967) / ((1 + s_1293 / kms_s_1293r_0967) * (1 + s_1447 / kms_s_1447r_0967) + (1 + s_0669 / kmp_s_0669r_0967) * (1 + s_0763_b / kmp_s_0763_br_0967) * (1 + s_1290 / kmp_s_1290r_0967) - 1)) / intracellular;
    end function_246;


    function function_247
        	input Real Keq_r_0969;
	input Real Vmax_r_0969;
	input Real intracellular;
	input Real kmp_s_0185r_0969;
	input Real kmp_s_0763_br_0969;
	input Real kmp_s_0929r_0969;
	input Real kmp_s_1087r_0969;
	input Real kms_s_0942r_0969;
	input Real kms_s_1082r_0969;
	input Real kms_s_1434_br_0969;
	input Real s_0185;
	input Real s_0763_b;
	input Real s_0929;
	input Real s_0942;
	input Real s_1082;
	input Real s_1087;
	input Real s_1434_b;
        output Real y;
    algorithm
        y :=  Vmax_r_0969 * ((1 / kms_s_0942r_0969)^1 * (1 / kms_s_1082r_0969)^1 * (1 / kms_s_1434_br_0969)^1 * (s_0942^1 * s_1082^1 * s_1434_b^1 - s_0185^1 * s_0763_b^1 * s_0929^1 * s_1087^1 / Keq_r_0969) / ((1 + s_0942 / kms_s_0942r_0969) * (1 + s_1082 / kms_s_1082r_0969) * (1 + s_1434_b / kms_s_1434_br_0969) + (1 + s_0185 / kmp_s_0185r_0969) * (1 + s_0763_b / kmp_s_0763_br_0969) * (1 + s_0929 / kmp_s_0929r_0969) * (1 + s_1087 / kmp_s_1087r_0969) - 1)) / intracellular;
    end function_247;


    function function_248
        	input Real Keq_r_0970;
	input Real Vmax_r_0970;
	input Real intracellular;
	input Real kmp_s_0942r_0970;
	input Real kmp_s_1091r_0970;
	input Real kmp_s_1434_br_0970;
	input Real kms_s_0763_br_0970;
	input Real kms_s_0867r_0970;
	input Real kms_s_0899r_0970;
	input Real kms_s_1096r_0970;
	input Real s_0763_b;
	input Real s_0867;
	input Real s_0899;
	input Real s_0942;
	input Real s_1091;
	input Real s_1096;
	input Real s_1434_b;
        output Real y;
    algorithm
        y :=  Vmax_r_0970 * ((1 / kms_s_0763_br_0970)^1 * (1 / kms_s_0867r_0970)^1 * (1 / kms_s_0899r_0970)^1 * (1 / kms_s_1096r_0970)^1 * (s_0763_b^1 * s_0867^1 * s_0899^1 * s_1096^1 - s_0942^1 * s_1091^1 * s_1434_b^1 / Keq_r_0970) / ((1 + s_0763_b / kms_s_0763_br_0970) * (1 + s_0867 / kms_s_0867r_0970) * (1 + s_0899 / kms_s_0899r_0970) * (1 + s_1096 / kms_s_1096r_0970) + (1 + s_0942 / kmp_s_0942r_0970) * (1 + s_1091 / kmp_s_1091r_0970) * (1 + s_1434_b / kmp_s_1434_br_0970) - 1)) / intracellular;
    end function_248;


    function function_249
        	input Real Keq_r_0972;
	input Real Vmax_r_0972;
	input Real intracellular;
	input Real kmp_s_0218r_0972;
	input Real kmp_s_0470r_0972;
	input Real kmp_s_0514r_0972;
	input Real kms_s_0943r_0972;
	input Real kms_s_1187r_0972;
	input Real s_0218;
	input Real s_0470;
	input Real s_0514;
	input Real s_0943;
	input Real s_1187;
        output Real y;
    algorithm
        y :=  Vmax_r_0972 * ((1 / kms_s_0943r_0972)^1 * (1 / kms_s_1187r_0972)^1 * (s_0943^1 * s_1187^1 - s_0218^1 * s_0470^1 * s_0514^1 / Keq_r_0972) / ((1 + s_0943 / kms_s_0943r_0972) * (1 + s_1187 / kms_s_1187r_0972) + (1 + s_0218 / kmp_s_0218r_0972) * (1 + s_0470 / kmp_s_0470r_0972) * (1 + s_0514 / kmp_s_0514r_0972) - 1)) / intracellular;
    end function_249;


    function function_250
        	input Real Keq_r_0976;
	input Real Vmax_r_0976;
	input Real intracellular;
	input Real kmp_s_1091r_0976;
	input Real kmp_s_1306r_0976;
	input Real kms_s_0217r_0976;
	input Real kms_s_0763_br_0976;
	input Real kms_s_1096r_0976;
	input Real s_0217;
	input Real s_0763_b;
	input Real s_1091;
	input Real s_1096;
	input Real s_1306;
        output Real y;
    algorithm
        y :=  Vmax_r_0976 * ((1 / kms_s_0217r_0976)^1 * (1 / kms_s_0763_br_0976)^1 * (1 / kms_s_1096r_0976)^1 * (s_0217^1 * s_0763_b^1 * s_1096^1 - s_1091^1 * s_1306^1 / Keq_r_0976) / ((1 + s_0217 / kms_s_0217r_0976) * (1 + s_0763_b / kms_s_0763_br_0976) * (1 + s_1096 / kms_s_1096r_0976) + (1 + s_1091 / kmp_s_1091r_0976) * (1 + s_1306 / kmp_s_1306r_0976) - 1)) / intracellular;
    end function_250;


    function function_251
        	input Real Keq_r_0977;
	input Real Vmax_r_0977;
	input Real intracellular;
	input Real kmp_s_0267r_0977;
	input Real kmp_s_0400r_0977;
	input Real kmp_s_0763_br_0977;
	input Real kms_s_0446r_0977;
	input Real kms_s_1306r_0977;
	input Real s_0267;
	input Real s_0400;
	input Real s_0446;
	input Real s_0763_b;
	input Real s_1306;
        output Real y;
    algorithm
        y :=  Vmax_r_0977 * ((1 / kms_s_0446r_0977)^1 * (1 / kms_s_1306r_0977)^1 * (s_0446^1 * s_1306^1 - s_0267^1 * s_0400^1 * s_0763_b^1 / Keq_r_0977) / ((1 + s_0446 / kms_s_0446r_0977) * (1 + s_1306 / kms_s_1306r_0977) + (1 + s_0267 / kmp_s_0267r_0977) * (1 + s_0400 / kmp_s_0400r_0977) * (1 + s_0763_b / kmp_s_0763_br_0977) - 1)) / intracellular;
    end function_251;


    function function_252
        	input Real Keq_r_0991;
	input Real Vmax_r_0991;
	input Real intracellular;
	input Real kmp_s_0040r_0991;
	input Real kmp_s_1082r_0991;
	input Real kmp_s_1434_br_0991;
	input Real kms_s_0763_br_0991;
	input Real kms_s_1087r_0991;
	input Real kms_s_1160r_0991;
	input Real kms_s_1327r_0991;
	input Real s_0040;
	input Real s_0763_b;
	input Real s_1082;
	input Real s_1087;
	input Real s_1160;
	input Real s_1327;
	input Real s_1434_b;
        output Real y;
    algorithm
        y :=  Vmax_r_0991 * ((1 / kms_s_0763_br_0991)^1 * (1 / kms_s_1087r_0991)^1 * (1 / kms_s_1160r_0991)^1 * (1 / kms_s_1327r_0991)^1 * (s_0763_b^1 * s_1087^1 * s_1160^1 * s_1327^1 - s_0040^1 * s_1082^1 * s_1434_b^1 / Keq_r_0991) / ((1 + s_0763_b / kms_s_0763_br_0991) * (1 + s_1087 / kms_s_1087r_0991) * (1 + s_1160 / kms_s_1160r_0991) * (1 + s_1327 / kms_s_1327r_0991) + (1 + s_0040 / kmp_s_0040r_0991) * (1 + s_1082 / kmp_s_1082r_0991) * (1 + s_1434_b / kmp_s_1434_br_0991) - 1)) / intracellular;
    end function_252;


    function function_253
        	input Real Keq_r_0993;
	input Real Vmax_r_0993;
	input Real intracellular;
	input Real kmp_s_0605r_0993;
	input Real kmp_s_1091r_0993;
	input Real kmp_s_1327r_0993;
	input Real kms_s_0195r_0993;
	input Real kms_s_0763_br_0993;
	input Real kms_s_1096r_0993;
	input Real s_0195;
	input Real s_0605;
	input Real s_0763_b;
	input Real s_1091;
	input Real s_1096;
	input Real s_1327;
        output Real y;
    algorithm
        y :=  Vmax_r_0993 * ((1 / kms_s_0195r_0993)^2 * (1 / kms_s_0763_br_0993)^1 * (1 / kms_s_1096r_0993)^1 * (s_0195^2 * s_0763_b^1 * s_1096^1 - s_0605^2 * s_1091^1 * s_1327^1 / Keq_r_0993) / ((1 + s_0195 / kms_s_0195r_0993) * (1 + s_0763_b / kms_s_0763_br_0993) * (1 + s_1096 / kms_s_1096r_0993) + (1 + s_0605 / kmp_s_0605r_0993) * (1 + s_1091 / kmp_s_1091r_0993) * (1 + s_1327 / kmp_s_1327r_0993) - 1)) / intracellular;
    end function_253;


    function function_254
        	input Real Keq_r_0995;
	input Real Vmax_r_0995;
	input Real intracellular;
	input Real kmp_s_0641r_0995;
	input Real kmp_s_1434_br_0995;
	input Real kms_s_0635r_0995;
	input Real kms_s_0663r_0995;
	input Real s_0635;
	input Real s_0641;
	input Real s_0663;
	input Real s_1434_b;
        output Real y;
    algorithm
        y :=  Vmax_r_0995 * ((1 / kms_s_0635r_0995)^1 * (1 / kms_s_0663r_0995)^1 * (s_0635^1 * s_0663^1 - s_0641^1 * s_1434_b^1 / Keq_r_0995) / ((1 + s_0635 / kms_s_0635r_0995) * (1 + s_0663 / kms_s_0663r_0995) + (1 + s_0641 / kmp_s_0641r_0995) * (1 + s_1434_b / kmp_s_1434_br_0995) - 1)) / intracellular;
    end function_254;


    function function_255
        	input Real Keq_r_1003;
	input Real Vmax_r_1003;
	input Real intracellular;
	input Real kmp_s_0400r_1003;
	input Real kmp_s_1207r_1003;
	input Real kmp_s_1342r_1003;
	input Real kms_s_0446r_1003;
	input Real kms_s_0514r_1003;
	input Real kms_s_1338r_1003;
	input Real s_0400;
	input Real s_0446;
	input Real s_0514;
	input Real s_1207;
	input Real s_1338;
	input Real s_1342;
        output Real y;
    algorithm
        y :=  Vmax_r_1003 * ((1 / kms_s_0446r_1003)^1 * (1 / kms_s_0514r_1003)^1 * (1 / kms_s_1338r_1003)^1 * (s_0446^1 * s_0514^1 * s_1338^1 - s_0400^1 * s_1207^1 * s_1342^1 / Keq_r_1003) / ((1 + s_0446 / kms_s_0446r_1003) * (1 + s_0514 / kms_s_0514r_1003) * (1 + s_1338 / kms_s_1338r_1003) + (1 + s_0400 / kmp_s_0400r_1003) * (1 + s_1207 / kmp_s_1207r_1003) * (1 + s_1342 / kmp_s_1342r_1003) - 1)) / intracellular;
    end function_255;


    function function_256
        	input Real Keq_r_1007;
	input Real Vmax_r_1007;
	input Real intracellular;
	input Real kmp_s_0304r_1007;
	input Real kmp_s_1207r_1007;
	input Real kms_s_0400r_1007;
	input Real kms_s_0763_br_1007;
	input Real kms_s_1347r_1007;
	input Real s_0304;
	input Real s_0400;
	input Real s_0763_b;
	input Real s_1207;
	input Real s_1347;
        output Real y;
    algorithm
        y :=  Vmax_r_1007 * ((1 / kms_s_0400r_1007)^1 * (1 / kms_s_0763_br_1007)^1 * (1 / kms_s_1347r_1007)^1 * (s_0400^1 * s_0763_b^1 * s_1347^1 - s_0304^1 * s_1207^1 / Keq_r_1007) / ((1 + s_0400 / kms_s_0400r_1007) * (1 + s_0763_b / kms_s_0763_br_1007) * (1 + s_1347 / kms_s_1347r_1007) + (1 + s_0304 / kmp_s_0304r_1007) * (1 + s_1207 / kmp_s_1207r_1007) - 1)) / intracellular;
    end function_256;


    function function_257
        	input Real Keq_r_1008;
	input Real Vmax_r_1008;
	input Real intracellular;
	input Real kmp_s_0805r_1008;
	input Real kmp_s_1091r_1008;
	input Real kmp_s_1434_br_1008;
	input Real kms_s_0763_br_1008;
	input Real kms_s_1096r_1008;
	input Real kms_s_1349r_1008;
	input Real s_0763_b;
	input Real s_0805;
	input Real s_1091;
	input Real s_1096;
	input Real s_1349;
	input Real s_1434_b;
        output Real y;
    algorithm
        y :=  Vmax_r_1008 * ((1 / kms_s_0763_br_1008)^5 * (1 / kms_s_1096r_1008)^3 * (1 / kms_s_1349r_1008)^1 * (s_0763_b^5 * s_1096^3 * s_1349^1 - s_0805^1 * s_1091^3 * s_1434_b^3 / Keq_r_1008) / ((1 + s_0763_b / kms_s_0763_br_1008) * (1 + s_1096 / kms_s_1096r_1008) * (1 + s_1349 / kms_s_1349r_1008) + (1 + s_0805 / kmp_s_0805r_1008) * (1 + s_1091 / kmp_s_1091r_1008) * (1 + s_1434_b / kmp_s_1434_br_1008) - 1)) / intracellular;
    end function_257;


    function function_258
        	input Real Keq_r_1024;
	input Real Vmax_r_1024;
	input Real intracellular;
	input Real kmp_s_1091r_1024;
	input Real kmp_s_1521r_1024;
	input Real kms_s_0763_br_1024;
	input Real kms_s_1096r_1024;
	input Real kms_s_1517r_1024;
	input Real s_0763_b;
	input Real s_1091;
	input Real s_1096;
	input Real s_1517;
	input Real s_1521;
        output Real y;
    algorithm
        y :=  Vmax_r_1024 * ((1 / kms_s_0763_br_1024)^1 * (1 / kms_s_1096r_1024)^1 * (1 / kms_s_1517r_1024)^1 * (s_0763_b^1 * s_1096^1 * s_1517^1 - s_1091^1 * s_1521^1 / Keq_r_1024) / ((1 + s_0763_b / kms_s_0763_br_1024) * (1 + s_1096 / kms_s_1096r_1024) * (1 + s_1517 / kms_s_1517r_1024) + (1 + s_1091 / kmp_s_1091r_1024) * (1 + s_1521 / kmp_s_1521r_1024) - 1)) / intracellular;
    end function_258;


    function function_259
        	input Real Keq_r_1026;
	input Real Vmax_r_1026;
	input Real intracellular;
	input Real kmp_s_0366r_1026;
	input Real kmp_s_0740r_1026;
	input Real kms_s_0949r_1026;
	input Real s_0366;
	input Real s_0740;
	input Real s_0949;
        output Real y;
    algorithm
        y :=  Vmax_r_1026 * ((1 / kms_s_0949r_1026)^1 * (s_0949^1 - s_0366^1 * s_0740^1 / Keq_r_1026) / (1 + s_0949 / kms_s_0949r_1026 + (1 + s_0366 / kmp_s_0366r_1026) * (1 + s_0740 / kmp_s_0740r_1026) - 1)) / intracellular;
    end function_259;


    function function_260
        	input Real Keq_r_1027;
	input Real Vmax_r_1027;
	input Real intracellular;
	input Real kmp_s_0949r_1027;
	input Real kmp_s_1207r_1027;
	input Real kms_s_1122r_1027;
	input Real kms_s_1434_br_1027;
	input Real s_0949;
	input Real s_1122;
	input Real s_1207;
	input Real s_1434_b;
        output Real y;
    algorithm
        y :=  Vmax_r_1027 * ((1 / kms_s_1122r_1027)^1 * (1 / kms_s_1434_br_1027)^1 * (s_1122^1 * s_1434_b^1 - s_0949^1 * s_1207^1 / Keq_r_1027) / ((1 + s_1122 / kms_s_1122r_1027) * (1 + s_1434_b / kms_s_1434_br_1027) + (1 + s_0949 / kmp_s_0949r_1027) * (1 + s_1207 / kmp_s_1207r_1027) - 1)) / intracellular;
    end function_260;


    function function_261
        	input Real Keq_r_1032;
	input Real Vmax_r_1032;
	input Real intracellular;
	input Real kmp_s_0601r_1032;
	input Real kmp_s_0619r_1032;
	input Real kms_s_0307r_1032;
	input Real kms_s_0624r_1032;
	input Real s_0307;
	input Real s_0601;
	input Real s_0619;
	input Real s_0624;
        output Real y;
    algorithm
        y :=  Vmax_r_1032 * ((1 / kms_s_0307r_1032)^1 * (1 / kms_s_0624r_1032)^1 * (s_0307^1 * s_0624^1 - s_0601^1 * s_0619^1 / Keq_r_1032) / ((1 + s_0307 / kms_s_0307r_1032) * (1 + s_0624 / kms_s_0624r_1032) + (1 + s_0601 / kmp_s_0601r_1032) * (1 + s_0619 / kmp_s_0619r_1032) - 1)) / intracellular;
    end function_261;


    function function_262
        	input Real Keq_r_1035;
	input Real Vmax_r_1035;
	input Real intracellular;
	input Real kmp_s_0731r_1035;
	input Real kmp_s_1304r_1035;
	input Real kms_s_0533r_1035;
	input Real kms_s_0539r_1035;
	input Real s_0533;
	input Real s_0539;
	input Real s_0731;
	input Real s_1304;
        output Real y;
    algorithm
        y :=  Vmax_r_1035 * ((1 / kms_s_0533r_1035)^1 * (1 / kms_s_0539r_1035)^1 * (s_0533^1 * s_0539^1 - s_0731^1 * s_1304^1 / Keq_r_1035) / ((1 + s_0533 / kms_s_0533r_1035) * (1 + s_0539 / kms_s_0539r_1035) + (1 + s_0731 / kmp_s_0731r_1035) * (1 + s_1304 / kmp_s_1304r_1035) - 1)) / intracellular;
    end function_262;


    function function_263
        	input Real Keq_r_1036;
	input Real Vmax_r_1036;
	input Real intracellular;
	input Real kmp_s_0427r_1036;
	input Real kmp_s_0561r_1036;
	input Real kms_s_0731r_1036;
	input Real kms_s_1304r_1036;
	input Real s_0427;
	input Real s_0561;
	input Real s_0731;
	input Real s_1304;
        output Real y;
    algorithm
        y :=  Vmax_r_1036 * ((1 / kms_s_0731r_1036)^1 * (1 / kms_s_1304r_1036)^1 * (s_0731^1 * s_1304^1 - s_0427^1 * s_0561^1 / Keq_r_1036) / ((1 + s_0731 / kms_s_0731r_1036) * (1 + s_1304 / kms_s_1304r_1036) + (1 + s_0427 / kmp_s_0427r_1036) * (1 + s_0561 / kmp_s_0561r_1036) - 1)) / intracellular;
    end function_263;


    function function_264
        	input Real Keq_r_1037;
	input Real Vmax_r_1037;
	input Real intracellular;
	input Real kmp_s_0533r_1037;
	input Real kmp_s_0561r_1037;
	input Real kms_s_0539r_1037;
	input Real kms_s_0731r_1037;
	input Real s_0533;
	input Real s_0539;
	input Real s_0561;
	input Real s_0731;
        output Real y;
    algorithm
        y :=  Vmax_r_1037 * ((1 / kms_s_0539r_1037)^1 * (1 / kms_s_0731r_1037)^1 * (s_0539^1 * s_0731^1 - s_0533^1 * s_0561^1 / Keq_r_1037) / ((1 + s_0539 / kms_s_0539r_1037) * (1 + s_0731 / kms_s_0731r_1037) + (1 + s_0533 / kmp_s_0533r_1037) * (1 + s_0561 / kmp_s_0561r_1037) - 1)) / intracellular;
    end function_264;


    function function_265
        	input Real Keq_r_1038;
	input Real Vmax_r_1038;
	input Real intracellular;
	input Real kmp_s_0416r_1038;
	input Real kmp_s_1207r_1038;
	input Real kms_s_0419r_1038;
	input Real kms_s_1434_br_1038;
	input Real s_0416;
	input Real s_0419;
	input Real s_1207;
	input Real s_1434_b;
        output Real y;
    algorithm
        y :=  Vmax_r_1038 * ((1 / kms_s_0419r_1038)^1 * (1 / kms_s_1434_br_1038)^1 * (s_0419^1 * s_1434_b^1 - s_0416^1 * s_1207^1 / Keq_r_1038) / ((1 + s_0419 / kms_s_0419r_1038) * (1 + s_1434_b / kms_s_1434_br_1038) + (1 + s_0416 / kmp_s_0416r_1038) * (1 + s_1207 / kmp_s_1207r_1038) - 1)) / intracellular;
    end function_265;


    function function_266
        	input Real Keq_r_1040;
	input Real Vmax_r_1040;
	input Real intracellular;
	input Real kmp_s_0596r_1040;
	input Real kmp_s_0663r_1040;
	input Real kms_s_1399r_1040;
	input Real kms_s_1434_br_1040;
	input Real s_0596;
	input Real s_0663;
	input Real s_1399;
	input Real s_1434_b;
        output Real y;
    algorithm
        y :=  Vmax_r_1040 * ((1 / kms_s_1399r_1040)^1 * (1 / kms_s_1434_br_1040)^1 * (s_1399^1 * s_1434_b^1 - s_0596^1 * s_0663^1 / Keq_r_1040) / ((1 + s_1399 / kms_s_1399r_1040) * (1 + s_1434_b / kms_s_1434_br_1040) + (1 + s_0596 / kmp_s_0596r_1040) * (1 + s_0663 / kmp_s_0663r_1040) - 1)) / intracellular;
    end function_266;


    function function_267
        	input Real Keq_r_1041;
	input Real Vmax_r_1041;
	input Real intracellular;
	input Real kmp_s_0731r_1041;
	input Real kms_s_0735r_1041;
	input Real s_0731;
	input Real s_0735;
        output Real y;
    algorithm
        y :=  Vmax_r_1041 * ((1 / kms_s_0735r_1041)^1 * (s_0735^1 - s_0731^1 / Keq_r_1041) / (1 + s_0735 / kms_s_0735r_1041 + 1 + s_0731 / kmp_s_0731r_1041 - 1)) / intracellular;
    end function_267;


    function function_268
        	input Real Keq_r_1042;
	input Real Vmax_r_1042;
	input Real intracellular;
	input Real kmp_s_0731r_1042;
	input Real kmp_s_0952r_1042;
	input Real kmp_s_1434_br_1042;
	input Real kms_s_0088r_1042;
	input Real kms_s_0943r_1042;
	input Real s_0088;
	input Real s_0731;
	input Real s_0943;
	input Real s_0952;
	input Real s_1434_b;
        output Real y;
    algorithm
        y :=  Vmax_r_1042 * ((1 / kms_s_0088r_1042)^1 * (1 / kms_s_0943r_1042)^1 * (s_0088^1 * s_0943^1 - s_0731^1 * s_0952^1 * s_1434_b^1 / Keq_r_1042) / ((1 + s_0088 / kms_s_0088r_1042) * (1 + s_0943 / kms_s_0943r_1042) + (1 + s_0731 / kmp_s_0731r_1042) * (1 + s_0952 / kmp_s_0952r_1042) * (1 + s_1434_b / kmp_s_1434_br_1042) - 1)) / intracellular;
    end function_268;


    function function_269
        	input Real Keq_r_1050;
	input Real Vmax_r_1050;
	input Real intracellular;
	input Real kmp_s_0185r_1050;
	input Real kmp_s_0955r_1050;
	input Real kms_s_0209r_1050;
	input Real kms_s_0899r_1050;
	input Real s_0185;
	input Real s_0209;
	input Real s_0899;
	input Real s_0955;
        output Real y;
    algorithm
        y :=  Vmax_r_1050 * ((1 / kms_s_0209r_1050)^1 * (1 / kms_s_0899r_1050)^1 * (s_0209^1 * s_0899^1 - s_0185^1 * s_0955^1 / Keq_r_1050) / ((1 + s_0209 / kms_s_0209r_1050) * (1 + s_0899 / kms_s_0899r_1050) + (1 + s_0185 / kmp_s_0185r_1050) * (1 + s_0955 / kmp_s_0955r_1050) - 1)) / intracellular;
    end function_269;


    function function_270
        	input Real Keq_r_1059;
	input Real Vmax_r_1059;
	input Real intracellular;
	input Real kmp_s_0400r_1059;
	input Real kmp_s_1411r_1059;
	input Real kms_s_0446r_1059;
	input Real kms_s_1417r_1059;
	input Real s_0400;
	input Real s_0446;
	input Real s_1411;
	input Real s_1417;
        output Real y;
    algorithm
        y :=  Vmax_r_1059 * ((1 / kms_s_0446r_1059)^1 * (1 / kms_s_1417r_1059)^1 * (s_0446^1 * s_1417^1 - s_0400^1 * s_1411^1 / Keq_r_1059) / ((1 + s_0446 / kms_s_0446r_1059) * (1 + s_1417 / kms_s_1417r_1059) + (1 + s_0400 / kmp_s_0400r_1059) * (1 + s_1411 / kmp_s_1411r_1059) - 1)) / intracellular;
    end function_270;


    function function_271
        	input Real Keq_r_1066;
	input Real Vmax_r_1066;
	input Real intracellular;
	input Real kmp_s_0446r_1066;
	input Real kmp_s_0624r_1066;
	input Real kms_s_0400r_1066;
	input Real kms_s_0622r_1066;
	input Real s_0400;
	input Real s_0446;
	input Real s_0622;
	input Real s_0624;
        output Real y;
    algorithm
        y :=  Vmax_r_1066 * ((1 / kms_s_0400r_1066)^1 * (1 / kms_s_0622r_1066)^1 * (s_0400^1 * s_0622^1 - s_0446^1 * s_0624^1 / Keq_r_1066) / ((1 + s_0400 / kms_s_0400r_1066) * (1 + s_0622 / kms_s_0622r_1066) + (1 + s_0446 / kmp_s_0446r_1066) * (1 + s_0624 / kmp_s_0624r_1066) - 1)) / intracellular;
    end function_271;


    function function_272
        	input Real Keq_r_1072;
	input Real Vmax_r_1072;
	input Real intracellular;
	input Real kmp_s_0605r_1072;
	input Real kmp_s_1415r_1072;
	input Real kms_s_0549r_1072;
	input Real kms_s_0763_br_1072;
	input Real kms_s_1430r_1072;
	input Real s_0549;
	input Real s_0605;
	input Real s_0763_b;
	input Real s_1415;
	input Real s_1430;
        output Real y;
    algorithm
        y :=  Vmax_r_1072 * ((1 / kms_s_0549r_1072)^1 * (1 / kms_s_0763_br_1072)^1 * (1 / kms_s_1430r_1072)^1 * (s_0549^1 * s_0763_b^1 * s_1430^1 - s_0605^1 * s_1415^1 / Keq_r_1072) / ((1 + s_0549 / kms_s_0549r_1072) * (1 + s_0763_b / kms_s_0763_br_1072) * (1 + s_1430 / kms_s_1430r_1072) + (1 + s_0605 / kmp_s_0605r_1072) * (1 + s_1415 / kmp_s_1415r_1072) - 1)) / intracellular;
    end function_272;


    function function_273
        	input Real Keq_r_1073;
	input Real Vmax_r_1073;
	input Real intracellular;
	input Real kmp_s_0185r_1073;
	input Real kmp_s_0960r_1073;
	input Real kms_s_0238r_1073;
	input Real kms_s_0899r_1073;
	input Real s_0185;
	input Real s_0238;
	input Real s_0899;
	input Real s_0960;
        output Real y;
    algorithm
        y :=  Vmax_r_1073 * ((1 / kms_s_0238r_1073)^1 * (1 / kms_s_0899r_1073)^1 * (s_0238^1 * s_0899^1 - s_0185^1 * s_0960^1 / Keq_r_1073) / ((1 + s_0238 / kms_s_0238r_1073) * (1 + s_0899 / kms_s_0899r_1073) + (1 + s_0185 / kmp_s_0185r_1073) * (1 + s_0960 / kmp_s_0960r_1073) - 1)) / intracellular;
    end function_273;


    function function_274
        	input Real Keq_r_1157;
	input Real Vmax_r_1157;
	input Real kmp_s_0430r_1157;
	input Real kms_s_0431_br_1157;
	input Real s_0430;
	input Real s_0431_b;
        output Real y;
    algorithm
        y :=  Vmax_r_1157 * ((1 / kms_s_0431_br_1157)^1 * (s_0431_b^1 - s_0430^1 / Keq_r_1157) / (1 + s_0431_b / kms_s_0431_br_1157 + 1 + s_0430 / kmp_s_0430r_1157 - 1));
    end function_274;


    function function_275
        	input Real Keq_r_1194;
	input Real Vmax_r_1194;
	input Real kmp_s_0472_br_1194;
	input Real kms_s_0470r_1194;
	input Real s_0470;
	input Real s_0472_b;
        output Real y;
    algorithm
        y :=  Vmax_r_1194 * ((1 / kms_s_0470r_1194)^1 * (s_0470^1 - s_0472_b^1 / Keq_r_1194) / (1 + s_0470 / kms_s_0470r_1194 + 1 + s_0472_b / kmp_s_0472_br_1194 - 1));
    end function_275;


    function function_276
        	input Real Keq_r_1247;
	input Real Vmax_r_1247;
	input Real kmp_s_0651_br_1247;
	input Real kms_s_0650r_1247;
	input Real s_0650;
	input Real s_0651_b;
        output Real y;
    algorithm
        y :=  Vmax_r_1247 * ((1 / kms_s_0650r_1247)^1 * (s_0650^1 - s_0651_b^1 / Keq_r_1247) / (1 + s_0650 / kms_s_0650r_1247 + 1 + s_0651_b / kmp_s_0651_br_1247 - 1));
    end function_276;


    function function_277
        	input Real Keq_r_1293;
	input Real Vmax_r_1293;
	input Real kmp_s_0545r_1293;
	input Real kms_s_0547_br_1293;
	input Real s_0545;
	input Real s_0547_b;
        output Real y;
    algorithm
        y :=  Vmax_r_1293 * ((1 / kms_s_0547_br_1293)^1 * (s_0547_b^1 - s_0545^1 / Keq_r_1293) / (1 + s_0547_b / kms_s_0547_br_1293 + 1 + s_0545 / kmp_s_0545r_1293 - 1));
    end function_277;


    function function_278
        	input Real Keq_r_1435;
	input Real Vmax_r_1435;
	input Real kmp_s_1160r_1435;
	input Real kms_s_1162_br_1435;
	input Real s_1160;
	input Real s_1162_b;
        output Real y;
    algorithm
        y :=  Vmax_r_1435 * ((1 / kms_s_1162_br_1435)^1 * (s_1162_b^1 - s_1160^1 / Keq_r_1435) / (1 + s_1162_b / kms_s_1162_br_1435 + 1 + s_1160 / kmp_s_1160r_1435 - 1));
    end function_278;


    function function_279
        	input Real Keq_r_1461;
	input Real Vmax_r_1461;
	input Real kmp_s_0763_br_1461;
	input Real kmp_s_1207r_1461;
	input Real kms_s_0766_br_1461;
	input Real kms_s_1209_br_1461;
	input Real s_0763_b;
	input Real s_0766_b;
	input Real s_1207;
	input Real s_1209_b;
        output Real y;
    algorithm
        y :=  Vmax_r_1461 * ((1 / kms_s_0766_br_1461)^1 * (1 / kms_s_1209_br_1461)^1 * (s_0766_b^1 * s_1209_b^1 - s_0763_b^1 * s_1207^1 / Keq_r_1461) / ((1 + s_0766_b / kms_s_0766_br_1461) * (1 + s_1209_b / kms_s_1209_br_1461) + (1 + s_0763_b / kmp_s_0763_br_1461) * (1 + s_1207 / kmp_s_1207r_1461) - 1));
    end function_279;


    function function_280
        	input Real Keq_r_1503;
	input Real Vmax_r_1503;
	input Real kmp_s_0766_br_1503;
	input Real kmp_s_1339_br_1503;
	input Real kms_s_0763_br_1503;
	input Real kms_s_1338r_1503;
	input Real s_0763_b;
	input Real s_0766_b;
	input Real s_1338;
	input Real s_1339_b;
        output Real y;
    algorithm
        y :=  Vmax_r_1503 * ((1 / kms_s_0763_br_1503)^1 * (1 / kms_s_1338r_1503)^1 * (s_0763_b^1 * s_1338^1 - s_0766_b^1 * s_1339_b^1 / Keq_r_1503) / ((1 + s_0763_b / kms_s_0763_br_1503) * (1 + s_1338 / kms_s_1338r_1503) + (1 + s_0766_b / kmp_s_0766_br_1503) * (1 + s_1339_b / kmp_s_1339_br_1503) - 1));
    end function_280;


    function function_281
        	input Real Keq_r_1507;
	input Real Vmax_r_1507;
	input Real kmp_s_1347r_1507;
	input Real kms_s_1348_br_1507;
	input Real s_1347;
	input Real s_1348_b;
        output Real y;
    algorithm
        y :=  Vmax_r_1507 * ((1 / kms_s_1348_br_1507)^1 * (s_1348_b^1 - s_1347^1 / Keq_r_1507) / (1 + s_1348_b / kms_s_1348_br_1507 + 1 + s_1347 / kmp_s_1347r_1507 - 1));
    end function_281;


    function function_282
        	input Real Keq_r_1672;
	input Real Vmax_r_1672;
	input Real intracellular;
	input Real kmp_s_0386r_1672;
	input Real kms_s_1342r_1672;
	input Real s_0386;
	input Real s_1342;
        output Real y;
    algorithm
        y :=  Vmax_r_1672 * ((1 / kms_s_1342r_1672)^1 * (s_1342^1 - s_0386^1 / Keq_r_1672) / (1 + s_1342 / kms_s_1342r_1672 + 1 + s_0386 / kmp_s_0386r_1672 - 1)) / intracellular;
    end function_282;


    function function_283
        	input Real V_o;
	input Real a_s_0001r_1812;
	input Real a_s_0416r_1812;
	input Real a_s_0434r_1812;
	input Real a_s_0446r_1812;
	input Real a_s_0511r_1812;
	input Real a_s_0564r_1812;
	input Real a_s_0569r_1812;
	input Real a_s_0593r_1812;
	input Real a_s_0619r_1812;
	input Real a_s_0740r_1812;
	input Real a_s_0743r_1812;
	input Real a_s_0752r_1812;
	input Real a_s_0863r_1812;
	input Real a_s_0873r_1812;
	input Real a_s_0877r_1812;
	input Real a_s_0881r_1812;
	input Real a_s_0889r_1812;
	input Real a_s_0899r_1812;
	input Real a_s_0907r_1812;
	input Real a_s_0911r_1812;
	input Real a_s_0920r_1812;
	input Real a_s_0925r_1812;
	input Real a_s_0929r_1812;
	input Real a_s_0933r_1812;
	input Real a_s_0936r_1812;
	input Real a_s_0939r_1812;
	input Real a_s_0943r_1812;
	input Real a_s_0949r_1812;
	input Real a_s_0952r_1812;
	input Real a_s_0955r_1812;
	input Real a_s_0960r_1812;
	input Real a_s_1000r_1812;
	input Real a_s_1011r_1812;
	input Real a_s_1283r_1812;
	input Real a_s_1347r_1812;
	input Real a_s_1417r_1812;
	input Real intracellular;
	input Real s_0001;
	input Real s_0001_or_1812;
	input Real s_0416;
	input Real s_0416_or_1812;
	input Real s_0434;
	input Real s_0434_or_1812;
	input Real s_0446;
	input Real s_0446_or_1812;
	input Real s_0511;
	input Real s_0511_or_1812;
	input Real s_0564;
	input Real s_0564_or_1812;
	input Real s_0569;
	input Real s_0569_or_1812;
	input Real s_0593;
	input Real s_0593_or_1812;
	input Real s_0619;
	input Real s_0619_or_1812;
	input Real s_0740;
	input Real s_0740_or_1812;
	input Real s_0743;
	input Real s_0743_or_1812;
	input Real s_0752;
	input Real s_0752_or_1812;
	input Real s_0863;
	input Real s_0863_or_1812;
	input Real s_0873;
	input Real s_0873_or_1812;
	input Real s_0877;
	input Real s_0877_or_1812;
	input Real s_0881;
	input Real s_0881_or_1812;
	input Real s_0889;
	input Real s_0889_or_1812;
	input Real s_0899;
	input Real s_0899_or_1812;
	input Real s_0907;
	input Real s_0907_or_1812;
	input Real s_0911;
	input Real s_0911_or_1812;
	input Real s_0920;
	input Real s_0920_or_1812;
	input Real s_0925;
	input Real s_0925_or_1812;
	input Real s_0929;
	input Real s_0929_or_1812;
	input Real s_0933;
	input Real s_0933_or_1812;
	input Real s_0936;
	input Real s_0936_or_1812;
	input Real s_0939;
	input Real s_0939_or_1812;
	input Real s_0943;
	input Real s_0943_or_1812;
	input Real s_0949;
	input Real s_0949_or_1812;
	input Real s_0952;
	input Real s_0952_or_1812;
	input Real s_0955;
	input Real s_0955_or_1812;
	input Real s_0960;
	input Real s_0960_or_1812;
	input Real s_1000;
	input Real s_1000_or_1812;
	input Real s_1011;
	input Real s_1011_or_1812;
	input Real s_1283;
	input Real s_1283_or_1812;
	input Real s_1347;
	input Real s_1347_or_1812;
	input Real s_1417;
	input Real s_1417_or_1812;
	input Real zero_flux;
	input Real MAX(V_o * (1 + a_s_0001r_1812 * ln(s_0001 / s_0001_or_1812) + a_s_0416r_1812 * ln(s_0416 / s_0416_or_1812) + a_s_0434r_1812 * ln(s_0434 / s_0434_or_1812) + a_s_0446r_1812 * ln(s_0446 / s_0446_or_1812) + a_s_0511r_1812 * ln(s_0511 / s_0511_or_1812) + a_s_0564r_1812 * ln(s_0564 / s_0564_or_1812) + a_s_0569r_1812 * ln(s_0569 / s_0569_or_1812) + a_s_0593r_1812 * ln(s_0593 / s_0593_or_1812) + a_s_0619r_1812 * ln(s_0619 / s_0619_or_1812) + a_s_0740r_1812 * ln(s_0740 / s_0740_or_1812) + a_s_0743r_1812 * ln(s_0743 / s_0743_or_1812) + a_s_0752r_1812 * ln(s_0752 / s_0752_or_1812) + a_s_0863r_1812 * ln(s_0863 / s_0863_or_1812) + a_s_0873r_1812 * ln(s_0873 / s_0873_or_1812) + a_s_0877r_1812 * ln(s_0877 / s_0877_or_1812) + a_s_0881r_1812 * ln(s_0881 / s_0881_or_1812) + a_s_0889r_1812 * ln(s_0889 / s_0889_or_1812) + a_s_0899r_1812 * ln(s_0899 / s_0899_or_1812) + a_s_0907r_1812 * ln(s_0907 / s_0907_or_1812) + a_s_0911r_1812 * ln(s_0911 / s_0911_or_1812) + a_s_0920r_1812 * ln(s_0920 / s_0920_or_1812) + a_s_0925r_1812 * ln(s_0925 / s_0925_or_1812) + a_s_0929r_1812 * ln(s_0929 / s_0929_or_1812) + a_s_0933r_1812 * ln(s_0933 / s_0933_or_1812) + a_s_0936r_1812 * ln(s_0936 / s_0936_or_1812) + a_s_0939r_1812 * ln(s_0939 / s_0939_or_1812) + a_s_0943r_1812 * ln(s_0943 / s_0943_or_1812) + a_s_0949r_1812 * ln(s_0949 / s_0949_or_1812) + a_s_0952r_1812 * ln(s_0952 / s_0952_or_1812) + a_s_0955r_1812 * ln(s_0955 / s_0955_or_1812) + a_s_0960r_1812 * ln(s_0960 / s_0960_or_1812) + a_s_1000r_1812 * ln(s_1000 / s_1000_or_1812) + a_s_1011r_1812 * ln(s_1011 / s_1011_or_1812) + a_s_1347r_1812 * ln(s_1347 / s_1347_or_1812) + a_s_1417r_1812 * ln(s_1417 / s_1417_or_1812) + a_s_1283r_1812 * ln(s_1283 / s_1283_or_1812));
        output Real y;
    algorithm
        y :=  zero_flux) / intracellular;
    end function_283;


    function function_284
        	input Real V_o;
	input Real a_s_0463r_1814;
	input Real s_0463;
	input Real s_0463_or_1814;
	input Real zero_flux;
	input Real MAX(V_o * (1 + a_s_0463r_1814 * ln(s_0463 / s_0463_or_1814));
        output Real y;
    algorithm
        y :=  zero_flux);
    end function_284;


    function function_285
        	input Real V_o;
	input Real a_s_0090r_1816;
	input Real a_s_0124r_1816;
	input Real a_s_0627r_1816;
	input Real a_s_0632r_1816;
	input Real a_s_0635r_1816;
	input Real a_s_0641r_1816;
	input Real a_s_0663r_1816;
	input Real a_s_0669r_1816;
	input Real a_s_0824r_1816;
	input Real a_s_0963r_1816;
	input Real a_s_1219r_1816;
	input Real a_s_1228r_1816;
	input Real a_s_1233r_1816;
	input Real a_s_1399r_1816;
	input Real a_s_1447r_1816;
	input Real intracellular;
	input Real s_0090;
	input Real s_0090_or_1816;
	input Real s_0124;
	input Real s_0124_or_1816;
	input Real s_0627;
	input Real s_0627_or_1816;
	input Real s_0632;
	input Real s_0632_or_1816;
	input Real s_0635;
	input Real s_0635_or_1816;
	input Real s_0641;
	input Real s_0641_or_1816;
	input Real s_0663;
	input Real s_0663_or_1816;
	input Real s_0669;
	input Real s_0669_or_1816;
	input Real s_0824;
	input Real s_0824_or_1816;
	input Real s_0963;
	input Real s_0963_or_1816;
	input Real s_1219;
	input Real s_1219_or_1816;
	input Real s_1228;
	input Real s_1228_or_1816;
	input Real s_1233;
	input Real s_1233_or_1816;
	input Real s_1399;
	input Real s_1399_or_1816;
	input Real s_1447;
	input Real s_1447_or_1816;
	input Real zero_flux;
	input Real MAX(V_o * (1 + a_s_0090r_1816 * ln(s_0090 / s_0090_or_1816) + a_s_0124r_1816 * ln(s_0124 / s_0124_or_1816) + a_s_0627r_1816 * ln(s_0627 / s_0627_or_1816) + a_s_0632r_1816 * ln(s_0632 / s_0632_or_1816) + a_s_0635r_1816 * ln(s_0635 / s_0635_or_1816) + a_s_0641r_1816 * ln(s_0641 / s_0641_or_1816) + a_s_0663r_1816 * ln(s_0663 / s_0663_or_1816) + a_s_0669r_1816 * ln(s_0669 / s_0669_or_1816) + a_s_0824r_1816 * ln(s_0824 / s_0824_or_1816) + a_s_0963r_1816 * ln(s_0963 / s_0963_or_1816) + a_s_1219r_1816 * ln(s_1219 / s_1219_or_1816) + a_s_1228r_1816 * ln(s_1228 / s_1228_or_1816) + a_s_1233r_1816 * ln(s_1233 / s_1233_or_1816) + a_s_1399r_1816 * ln(s_1399 / s_1399_or_1816) + a_s_1447r_1816 * ln(s_1447 / s_1447_or_1816));
        output Real y;
    algorithm
        y :=  zero_flux) / intracellular;
    end function_285;


    function function_211
        	input Real Vmax_r_0859;
	input Real kms_s_0446r_0859;
	input Real kms_s_0539r_0859;
	input Real s_0446;
	input Real s_0539;
	input Real s_0400;
	input Real s_0537;
	input Real s_0763_b;
	input Real Keq_r_0859;
	input Real kmp_s_0400r_0859;
	input Real kmp_s_0537r_0859;
	input Real kmp_s_0763_br_0859;
	input Real s_0446m;
	input Real kmI_s_0446mr_0859;
	input Real intracellular;
        output Real y;
    algorithm
        y :=  Vmax_r_0859 * ((1 / kms_s_0446r_0859)^1 * (1 / kms_s_0539r_0859)^1 * (s_0446^1 * s_0539^1 - s_0400^1 * s_0537^1 * s_0763_b^1 / Keq_r_0859) / ((1 + s_0446 / kms_s_0446r_0859) * (1 + s_0539 / kms_s_0539r_0859) + (1 + s_0400 / kmp_s_0400r_0859) * (1 + s_0537 / kmp_s_0537r_0859) * (1 + s_0763_b / kmp_s_0763_br_0859) + (1 + s_0446m / kmI_s_0446mr_0859 - 1))) / intracellular;
    end function_211;


    function function_126
        	input Real Vmax_r_0504;
	input Real kms_s_0455r_0504;
	input Real s_0455;
	input Real s_0539;
	input Real Keq_r_0504;
	input Real kmp_s_0539r_0504;
	input Real intracellular;
	input Real s_0455m;
	input Real kmI_s_0455mr_0504;
	input Real s_0glum;
	input Real kmI_s_0glumr_0504;
        output Real y;
    algorithm
        y :=  Vmax_r_0504 * ((1 / kms_s_0455r_0504)^1 * (s_0455^1 - s_0539^1 / Keq_r_0504) / (1 + s_0455 / kms_s_0455r_0504 + 1 + s_0539 / kmp_s_0539r_0504 + (1 + s_0455m / kmI_s_0455mr_0504) * (1 + s_0glum / kmI_s_0glumr_0504) - 1)) / intracellular;
    end function_126;


    function function_213
        	input Real Vmax_r_0865;
	input Real kms_s_0265r_0865;
	input Real kms_s_0400r_0865;
	input Real s_0265;
	input Real s_0400;
	input Real s_0264;
	input Real s_0446;
	input Real Keq_r_0865;
	input Real kmp_s_0264r_0865;
	input Real kmp_s_0446r_0865;
	input Real s_0446m;
	input Real kmI_s_0446mr_0865;
	input Real intracellular;
        output Real y;
    algorithm
        y :=  Vmax_r_0865 * ((1 / kms_s_0265r_0865)^1 * (1 / kms_s_0400r_0865)^1 * (s_0265^1 * s_0400^1 - s_0264^1 * s_0446^1 / Keq_r_0865) / ((1 + s_0265 / kms_s_0265r_0865) * (1 + s_0400 / kms_s_0400r_0865) + (1 + s_0264 / kmp_s_0264r_0865) * (1 + s_0446 / kmp_s_0446r_0865) + 1 + s_0446m / kmI_s_0446mr_0865 - 1)) / intracellular;
    end function_213;


    function function_235
        	input Real Vmax_r_0938;
	input Real kms_s_0763_br_0938;
	input Real kms_s_1277r_0938;
	input Real s_0763_b;
	input Real s_1277;
	input Real s_0366;
	input Real s_0470;
	input Real Keq_r_0938;
	input Real kmp_s_0366r_0938;
	input Real kmp_s_0470r_0938;
	input Real s_1277m;
	input Real kmI_s_1277mr_0938;
	input Real intracellular;
        output Real y;
    algorithm
        y :=  Vmax_r_0938 * ((1 / kms_s_0763_br_0938)^1 * (1 / kms_s_1277r_0938)^1 * (s_0763_b^1 * s_1277^1 - s_0366^1 * s_0470^1 / Keq_r_0938) / ((1 + s_0763_b / kms_s_0763_br_0938) * (1 + s_1277 / kms_s_1277r_0938) + (1 + s_0366 / kmp_s_0366r_0938) * (1 + s_0470 / kmp_s_0470r_0938) + 1 + s_1277m / kmI_s_1277mr_0938 - 1)) / intracellular;
    end function_235;


    function function_214
        	input Real Vmax_r_0866;
	input Real kms_s_0264r_0866;
	input Real s_0264;
	input Real s_0193;
	input Real Keq_r_0866;
	input Real kmp_s_0193r_0866;
	input Real s_0193m;
	input Real kmI_s_0193mr_0866;
	input Real intracellular;
        output Real y;
    algorithm
        y :=  Vmax_r_0866 * ((1 / kms_s_0264r_0866)^1 * (s_0264^1 - s_0193^1 / Keq_r_0866) / (1 + s_0264 / kms_s_0264r_0866 + 1 + s_0193 / kmp_s_0193r_0866 + 1 + s_0193m / kmI_s_0193mr_0866 - 1)) / intracellular;
    end function_214;


    function function_134
        	input Real Vmax_r_0525;
	input Real kms_s_0731r_0525;
	input Real kms_s_1082r_0525;
	input Real kms_s_1207r_0525;
	input Real s_0731;
	input Real s_1082;
	input Real s_1207;
	input Real s_0265;
	input Real s_0763_b;
	input Real s_1087;
	input Real Keq_r_0525;
	input Real kmp_s_0265r_0525;
	input Real kmp_s_0763_br_0525;
	input Real kmp_s_1087r_0525;
	input Real s_0731m;
	input Real kmI_s_0731mr_0525;
	input Real intracellular;
        output Real y;
    algorithm
        y :=  Vmax_r_0525 * ((1 / kms_s_0731r_0525)^1 * (1 / kms_s_1082r_0525)^1 * (1 / kms_s_1207r_0525)^1 * (s_0731^1 * s_1082^1 * s_1207^1 - s_0265^1 * s_0763_b^1 * s_1087^1 / Keq_r_0525) / ((1 + s_0731 / kms_s_0731r_0525) * (1 + s_1082 / kms_s_1082r_0525) * (1 + s_1207 / kms_s_1207r_0525) + (1 + s_0265 / kmp_s_0265r_0525) * (1 + s_0763_b / kmp_s_0763_br_0525) * (1 + s_1087 / kmp_s_1087r_0525) + 1 + s_0731m / kmI_s_0731mr_0525 - 1)) / intracellular;
    end function_134;


    function function_46
        	input Real Vmax_r_0213;
	input Real kms_s_0410r_0213;
	input Real kms_s_1415r_0213;
	input Real s_0410;
	input Real s_1415;
	input Real s_0419;
	input Real s_0763_b;
	input Real s_1411;
	input Real Keq_r_0213;
	input Real kmp_s_0419r_0213;
	input Real kmp_s_0763_br_0213;
	input Real kmp_s_1411r_0213;
	input Real s_1415m;
	input Real kmI_s_1415rm_0213;
	input Real intracellular;
        output Real y;
    algorithm
        y :=  Vmax_r_0213 * ((1 / kms_s_0410r_0213)^1 * (1 / kms_s_1415r_0213)^1 * (s_0410^1 * s_1415^1 - s_0419^1 * s_0763_b^1 * s_1411^1 / Keq_r_0213) / ((1 + s_0410 / kms_s_0410r_0213) * (1 + s_1415 / kms_s_1415r_0213) + (1 + s_0419 / kmp_s_0419r_0213) * (1 + s_0763_b / kmp_s_0763_br_0213) * (1 + s_1411 / kmp_s_1411r_0213) + 1 + s_1415m / kmI_s_1415rm_0213 - 1)) / intracellular;
    end function_46;


    parameter Real Keq_r_0005_0 = 0.331541;
    parameter Real Vmax_r_0005_0 = 6.24684;
    parameter Real kmp_s_0001r_0005_0 = 0.549;
    parameter Real kmp_s_0763_br_0005_0 = 0.549;
    parameter Real kmp_s_1411r_0005_0 = 0.549;
    parameter Real kms_s_1415r_0005_0 = 0.549;
    parameter Real Keq_r_0006_1 = 0.6039;
    parameter Real Vmax_r_0006_1 = 1.58399;
    parameter Real kmp_s_0743r_0006_1 = 0.549;
    parameter Real kmp_s_1434_br_0006_1 = 0.549;
    parameter Real kms_s_0438r_0006_1 = 0.549;
    parameter Real Keq_r_0008_2 = 1.1;
    parameter Real Vmax_r_0008_2 = 0.13761;
    parameter Real kmp_s_0315r_0008_2 = 0.549;
    parameter Real kms_s_0079r_0008_2 = 0.549;
    parameter Real Keq_r_0009_3 = 0.0999269;
    parameter Real Vmax_r_0009_3 = 0.0421078;
    parameter Real kmp_s_0514r_0009_3 = 0.549;
    parameter Real kmp_s_0763_br_0009_3 = 0.549;
    parameter Real kmp_s_1215r_0009_3 = 0.549;
    parameter Real kms_s_0083r_0009_3 = 0.549;
    parameter Real kms_s_0386r_0009_3 = 0.549;
    parameter Real Keq_r_0014_4 = 2.00364;
    parameter Real Vmax_r_0014_4 = 0.00605002;
    parameter Real kmp_s_0319r_0014_4 = 0.549;
    parameter Real kmp_s_0430r_0014_4 = 0.549;
    parameter Real kms_s_0146r_0014_4 = 0.549;
    parameter Real kms_s_0763_br_0014_4 = 0.549;
    parameter Real kms_s_1434_br_0014_4 = 0.549;
    parameter Real Keq_r_0015_5 = 2.00364;
    parameter Real Vmax_r_0015_5 = 0.00605002;
    parameter Real kmp_s_0146r_0015_5 = 0.549;
    parameter Real kmp_s_1091r_0015_5 = 0.549;
    parameter Real kms_s_0145r_0015_5 = 0.549;
    parameter Real kms_s_0763_br_0015_5 = 0.549;
    parameter Real kms_s_1096r_0015_5 = 0.549;
    parameter Real Keq_r_0016_6 = 33.0686;
    parameter Real Vmax_r_0016_6 = 1.15193;
    parameter Real kmp_s_0042r_0016_6 = 0.549;
    parameter Real kmp_s_0470r_0016_6 = 1.0;
    parameter Real kms_s_0183r_0016_6 = 0.549;
    parameter Real kms_s_0763_br_0016_6 = 0.549;
    parameter Real kms_s_1277r_0016_6 = 0.0605905;
    parameter Real Keq_r_0018_7 = 1.1;
    parameter Real Vmax_r_0018_7 = 1.0241;
    parameter Real kmp_s_0185r_0018_7 = 0.549;
    parameter Real kmp_s_0861r_0018_7 = 0.549;
    parameter Real kms_s_0181r_0018_7 = 0.549;
    parameter Real kms_s_0899r_0018_7 = 0.549;
    parameter Real Keq_r_0021_8 = 40.5765;
    parameter Real Vmax_r_0021_8 = 1.60931;
    parameter Real kmp_s_0356r_0021_8 = 0.549;
    parameter Real kmp_s_1207r_0021_8 = 0.549;
    parameter Real kms_s_0533r_0021_8 = 0.549;
    parameter Real kms_s_1243r_0021_8 = 0.0271093;
    parameter Real kms_s_1434_br_0021_8 = 0.549;
    parameter Real Keq_r_0025_9 = 0.6039;
    parameter Real Vmax_r_0025_9 = 0.764496;
    parameter Real kmp_s_0170r_0025_9 = 0.549;
    parameter Real kmp_s_1434_br_0025_9 = 0.549;
    parameter Real kms_s_0167r_0025_9 = 0.549;
    parameter Real Keq_r_0026_10 = 1.1;
    parameter Real Vmax_r_0026_10 = 2.2935;
    parameter Real kmp_s_0167r_0026_10 = 0.549;
    parameter Real kmp_s_0514r_0026_10 = 0.549;
    parameter Real kmp_s_0763_br_0026_10 = 0.549;
    parameter Real kms_s_0238r_0026_10 = 0.549;
    parameter Real kms_s_0380r_0026_10 = 0.549;
    parameter Real kms_s_1434_br_0026_10 = 0.549;
    parameter Real Keq_r_0029_11 = 0.6039;
    parameter Real Vmax_r_0029_11 = 0.731496;
    parameter Real kmp_s_0468r_0029_11 = 0.549;
    parameter Real kmp_s_1434_br_0029_11 = 0.549;
    parameter Real kms_s_0798r_0029_11 = 0.549;
    parameter Real Keq_r_0031_12 = 2.00364;
    parameter Real Vmax_r_0031_12 = 1.0703;
    parameter Real kmp_s_0297r_0031_12 = 0.549;
    parameter Real kmp_s_0470r_0031_12 = 1.0;
    parameter Real kms_s_0010r_0031_12 = 0.549;
    parameter Real kms_s_0763_br_0031_12 = 0.549;
    parameter Real Keq_r_0034_13 = 2.52371;
    parameter Real Vmax_r_0034_13 = 0.39732;
    parameter Real kmp_s_0434r_0034_13 = 1.25956;
    parameter Real kmp_s_1207r_0034_13 = 0.549;
    parameter Real kms_s_0397r_0034_13 = 0.549;
    parameter Real kms_s_1434_br_0034_13 = 0.549;
    parameter Real Keq_r_0040_14 = 0.331541;
    parameter Real Vmax_r_0040_14 = 0.00989001;
    parameter Real kmp_s_0163r_0040_14 = 0.549;
    parameter Real kmp_s_0689r_0040_14 = 0.549;
    parameter Real kmp_s_0763_br_0040_14 = 0.549;
    parameter Real kms_s_0557r_0040_14 = 0.549;
    parameter Real Keq_r_0042_15 = 0.6039;
    parameter Real Vmax_r_0042_15 = 0.731496;
    parameter Real kmp_s_0217r_0042_15 = 0.549;
    parameter Real kmp_s_1434_br_0042_15 = 0.549;
    parameter Real kms_s_0216r_0042_15 = 0.549;
    parameter Real Keq_r_0043_16 = 0.6039;
    parameter Real Vmax_r_0043_16 = 0.731496;
    parameter Real kmp_s_0216r_0043_16 = 0.549;
    parameter Real kmp_s_1207r_0043_16 = 0.549;
    parameter Real kms_s_0356r_0043_16 = 0.549;
    parameter Real Keq_r_0044_17 = 3.64962;
    parameter Real Vmax_r_0044_17 = 0.00279511;
    parameter Real kmp_s_1091r_0044_17 = 0.549;
    parameter Real kmp_s_1325r_0044_17 = 0.549;
    parameter Real kms_s_0218r_0044_17 = 0.549;
    parameter Real kms_s_0763_br_0044_17 = 0.549;
    parameter Real kms_s_1096r_0044_17 = 0.549;
    parameter Real Keq_r_0057_18 = 34.7263;
    parameter Real Vmax_r_0057_18 = 3.30332;
    parameter Real kmp_s_0046r_0057_18 = 0.549;
    parameter Real kmp_s_1082r_0057_18 = 1.50326;
    parameter Real kms_s_0247r_0057_18 = 0.549;
    parameter Real kms_s_0763_br_0057_18 = 0.549;
    parameter Real kms_s_1087r_0057_18 = 0.0867353;
    parameter Real Keq_r_0058_19 = 34.7263;
    parameter Real Vmax_r_0058_19 = 3.30332;
    parameter Real kmp_s_0052r_0058_19 = 0.549;
    parameter Real kmp_s_1082r_0058_19 = 1.50326;
    parameter Real kms_s_0257r_0058_19 = 0.549;
    parameter Real kms_s_0763_br_0058_19 = 0.549;
    parameter Real kms_s_1087r_0058_19 = 0.0867353;
    parameter Real Keq_r_0059_20 = 34.7263;
    parameter Real Vmax_r_0059_20 = 3.30332;
    parameter Real kmp_s_0234r_0059_20 = 0.549;
    parameter Real kmp_s_1082r_0059_20 = 1.50326;
    parameter Real kms_s_0254r_0059_20 = 0.549;
    parameter Real kms_s_0763_br_0059_20 = 0.549;
    parameter Real kms_s_1087r_0059_20 = 0.0867353;
    parameter Real Keq_r_0060_21 = 34.7263;
    parameter Real Vmax_r_0060_21 = 3.30332;
    parameter Real kmp_s_0055r_0060_21 = 0.549;
    parameter Real kmp_s_1082r_0060_21 = 1.50326;
    parameter Real kms_s_0261r_0060_21 = 0.549;
    parameter Real kms_s_0763_br_0060_21 = 0.549;
    parameter Real kms_s_1087r_0060_21 = 0.0867353;
    parameter Real Keq_r_0063_22 = 2.00364;
    parameter Real Vmax_r_0063_22 = 0.764505;
    parameter Real kmp_s_0008r_0063_22 = 0.549;
    parameter Real kms_s_0170r_0063_22 = 0.549;
    parameter Real kms_s_1434_br_0063_22 = 0.549;
    parameter Real Keq_r_0064_23 = 0.0348439;
    parameter Real Vmax_r_0064_23 = 1.68189;
    parameter Real kmp_s_0010r_0064_23 = 0.549;
    parameter Real kmp_s_0763_br_0064_23 = 0.549;
    parameter Real kmp_s_1087r_0064_23 = 0.0867353;
    parameter Real kms_s_0008r_0064_23 = 0.549;
    parameter Real kms_s_1082r_0064_23 = 1.50326;
    parameter Real Keq_r_0068_24 = 22.2765;
    parameter Real Vmax_r_0068_24 = 1.0241;
    parameter Real kmp_s_0330r_0068_24 = 0.549;
    parameter Real kmp_s_1207r_0068_24 = 0.549;
    parameter Real kms_s_0267r_0068_24 = 0.549;
    parameter Real kms_s_1243r_0068_24 = 0.0271093;
    parameter Real Keq_r_0093_25 = 3.64962;
    parameter Real Vmax_r_0093_25 = 0.439232;
    parameter Real kmp_s_0328r_0093_25 = 0.549;
    parameter Real kmp_s_1091r_0093_25 = 0.549;
    parameter Real kms_s_0307r_0093_25 = 0.549;
    parameter Real kms_s_0763_br_0093_25 = 0.549;
    parameter Real kms_s_1096r_0093_25 = 0.549;
    parameter Real Keq_r_0111_26 = 2.00364;
    parameter Real Vmax_r_0111_26 = 3.41221;
    parameter Real kmp_s_0018r_0111_26 = 0.549;
    parameter Real kmp_s_1091r_0111_26 = 0.549;
    parameter Real kms_s_0150r_0111_26 = 0.549;
    parameter Real kms_s_0763_br_0111_26 = 0.549;
    parameter Real kms_s_1096r_0111_26 = 0.549;
    parameter Real Keq_r_0112_27 = 299.629;
    parameter Real Vmax_r_0112_27 = 2.1714;
    parameter Real kmp_s_0150r_0112_27 = 0.549;
    parameter Real kmp_s_0470r_0112_27 = 1.0;
    parameter Real kms_s_0763_br_0112_27 = 0.549;
    parameter Real kms_s_1277r_0112_27 = 0.0605905;
    parameter Real Keq_r_0118_28 = 1.1;
    parameter Real Vmax_r_0118_28 = 0.125399;
    parameter Real kmp_s_0374r_0118_28 = 0.549;
    parameter Real kmp_s_0514r_0118_28 = 0.549;
    parameter Real kms_s_0380r_0118_28 = 0.549;
    parameter Real Keq_r_0123_29 = 0.950614;
    parameter Real Vmax_r_0123_29 = 0.105501;
    parameter Real kmp_s_0400r_0123_29 = 1.71907;
    parameter Real kmp_s_0763_br_0123_29 = 0.549;
    parameter Real kmp_s_1005r_0123_29 = 0.549;
    parameter Real kmp_s_1207r_0123_29 = 0.549;
    parameter Real kms_s_0380r_0123_29 = 0.549;
    parameter Real kms_s_0446r_0123_29 = 1.09208;
    parameter Real kms_s_0458r_0123_29 = 0.549;
    parameter Real Keq_r_0125_30 = 2.00364;
    parameter Real Vmax_r_0125_30 = 26.9831;
    parameter Real kmp_s_0380r_0125_30 = 0.549;
    parameter Real kmp_s_1434_br_0125_30 = 0.549;
    parameter Real kms_s_0369r_0125_30 = 0.549;
    parameter Real kms_s_0514r_0125_30 = 0.549;
    parameter Real kms_s_0763_br_0125_30 = 0.549;
    parameter Real Keq_r_0127_31 = 0.953736;
    parameter Real Vmax_r_0127_31 = 25.905;
    parameter Real kmp_s_0369r_0127_31 = 0.549;
    parameter Real kmp_s_0446r_0127_31 = 1.09208;
    parameter Real kmp_s_0514r_0127_31 = 0.549;
    parameter Real kms_s_0380r_0127_31 = 0.549;
    parameter Real kms_s_0434r_0127_31 = 1.25956;
    parameter Real kms_s_0605r_0127_31 = 0.549;
    parameter Real Keq_r_0130_32 = 1.73154;
    parameter Real Vmax_r_0130_32 = 0.58058;
    parameter Real kmp_s_0400r_0130_32 = 1.71907;
    parameter Real kmp_s_1070r_0130_32 = 0.549;
    parameter Real kms_s_0446r_0130_32 = 1.09208;
    parameter Real kms_s_1071r_0130_32 = 0.549;
    parameter Real Keq_r_0133_33 = 1.1;
    parameter Real Vmax_r_0133_33 = 0.58058;
    parameter Real kmp_s_0185r_0133_33 = 0.549;
    parameter Real kmp_s_1051r_0133_33 = 0.549;
    parameter Real kms_s_0149r_0133_33 = 0.549;
    parameter Real kms_s_0899r_0133_33 = 0.549;
    parameter Real Keq_r_0157_34 = 2.18098;
    parameter Real Vmax_r_0157_34 = 0.103455;
    parameter Real kmp_s_0400r_0157_34 = 1.71907;
    parameter Real kmp_s_0434r_0157_34 = 1.25956;
    parameter Real kmp_s_0763_br_0157_34 = 0.549;
    parameter Real kms_s_0393r_0157_34 = 0.549;
    parameter Real kms_s_0446r_0157_34 = 1.09208;
    parameter Real Keq_r_0159_35 = 1.1;
    parameter Real Vmax_r_0159_35 = 0.065835;
    parameter Real kmp_s_0393r_0159_35 = 0.549;
    parameter Real kmp_s_0917r_0159_35 = 0.549;
    parameter Real kms_s_1290r_0159_35 = 0.549;
    parameter Real kms_s_1434_br_0159_35 = 0.549;
    parameter Real Keq_r_0163_36 = 0.512011;
    parameter Real Vmax_r_0163_36 = 2.28799;
    parameter Real kmp_s_0434r_0163_36 = 1.25956;
    parameter Real kmp_s_0446r_0163_36 = 1.09208;
    parameter Real kms_s_0400r_0163_36 = 1.71907;
    parameter Real Keq_r_0165_37 = 0.805968;
    parameter Real Vmax_r_0165_37 = 4.0656;
    parameter Real kmp_s_0434r_0165_37 = 1.25956;
    parameter Real kmp_s_0755r_0165_37 = 0.549;
    parameter Real kms_s_0400r_0165_37 = 1.71907;
    parameter Real kms_s_0706r_0165_37 = 0.549;
    parameter Real Keq_r_0169_38 = 0.6039;
    parameter Real Vmax_r_0169_38 = 0.333848;
    parameter Real kmp_s_0317r_0169_38 = 0.549;
    parameter Real kmp_s_0692r_0169_38 = 0.549;
    parameter Real kms_s_0009r_0169_38 = 0.549;
    parameter Real Keq_r_0170_39 = 0.331541;
    parameter Real Vmax_r_0170_39 = 1.8216;
    parameter Real kmp_s_0706r_0170_39 = 0.549;
    parameter Real kmp_s_0763_br_0170_39 = 0.549;
    parameter Real kmp_s_1053r_0170_39 = 0.549;
    parameter Real kmp_s_1207r_0170_39 = 0.549;
    parameter Real kms_s_0755r_0170_39 = 0.549;
    parameter Real kms_s_0816r_0170_39 = 0.549;
    parameter Real kms_s_0881r_0170_39 = 0.549;
    parameter Real Keq_r_0171_40 = 1.38552;
    parameter Real Vmax_r_0171_40 = 0.395998;
    parameter Real kmp_s_0434r_0171_40 = 1.25956;
    parameter Real kmp_s_0692r_0171_40 = 0.549;
    parameter Real kms_s_1053r_0171_40 = 0.549;
    parameter Real Keq_r_0172_41 = 0.950614;
    parameter Real Vmax_r_0172_41 = 0.624358;
    parameter Real kmp_s_0206r_0172_41 = 0.549;
    parameter Real kmp_s_0400r_0172_41 = 1.71907;
    parameter Real kmp_s_0763_br_0172_41 = 0.549;
    parameter Real kms_s_0304r_0172_41 = 0.549;
    parameter Real kms_s_0446r_0172_41 = 1.09208;
    parameter Real Keq_r_0174_42 = 0.121402;
    parameter Real Vmax_r_0174_42 = 1.7171;
    parameter Real kmp_s_0740r_0174_42 = 0.549;
    parameter Real kmp_s_1277r_0174_42 = 0.0605905;
    parameter Real kms_s_0749r_0174_42 = 0.549;
    parameter Real kms_s_0863r_0174_42 = 0.549;
    parameter Real Keq_r_0183_43 = 14456.7;
    parameter Real Vmax_r_0183_43 = 99.1;
    parameter Real kmp_s_0650r_0183_43 = 50.0;
    parameter Real kmp_s_1082r_0183_43 = 1.50326;
    parameter Real kms_s_0366r_0183_43 = 0.120104;
    parameter Real kms_s_0763_br_0183_43 = 0.549;
    parameter Real kms_s_1087r_0183_43 = 0.0867353;
    parameter Real Keq_r_0191_44 = 2.76045;
    parameter Real Vmax_r_0191_44 = 9.45451;
    parameter Real kmp_s_0369r_0191_44 = 0.549;
    parameter Real kmp_s_0763_br_0191_44 = 0.549;
    parameter Real kmp_s_1096r_0191_44 = 0.549;
    parameter Real kms_s_0366r_0191_44 = 0.120104;
    parameter Real kms_s_1091r_0191_44 = 0.549;
    parameter Real kms_s_1434_br_0191_44 = 0.549;
    parameter Real Vmax_r_0213_45 = 0.174824;
    parameter Real kms_s_0410r_0213_45 = 0.549;
    parameter Real kms_s_1415r_0213_45 = 0.549;
    parameter Real Keq_r_0213_45 = 0.6039;
    parameter Real kmp_s_0419r_0213_45 = 0.549;
    parameter Real kmp_s_0763_br_0213_45 = 0.549;
    parameter Real kmp_s_1411r_0213_45 = 0.549;
    parameter Real kmI_s_1415rm_0213_45 = 6.0;
    parameter Real Keq_r_0220_46 = 1.1;
    parameter Real Vmax_r_0220_46 = 0.11935;
    parameter Real kmp_s_0605r_0220_46 = 0.549;
    parameter Real kmp_s_1066r_0220_46 = 0.549;
    parameter Real kms_s_0331r_0220_46 = 0.549;
    parameter Real kms_s_0439r_0220_46 = 0.549;
    parameter Real Keq_r_0221_47 = 0.0365906;
    parameter Real Vmax_r_0221_47 = 0.323947;
    parameter Real kmp_s_0439r_0221_47 = 0.549;
    parameter Real kmp_s_0763_br_0221_47 = 0.549;
    parameter Real kmp_s_0899r_0221_47 = 0.549;
    parameter Real kmp_s_1277r_0221_47 = 0.0605905;
    parameter Real kms_s_0500r_0221_47 = 0.549;
    parameter Real kms_s_0907r_0221_47 = 0.549;
    parameter Real Keq_r_0225_48 = 0.6039;
    parameter Real Vmax_r_0225_48 = 0.414697;
    parameter Real kmp_s_0692r_0225_48 = 0.549;
    parameter Real kmp_s_0873r_0225_48 = 0.549;
    parameter Real kms_s_0017r_0225_48 = 0.549;
    parameter Real Keq_r_0226_49 = 0.696513;
    parameter Real Vmax_r_0226_49 = 1.90762;
    parameter Real kmp_s_0017r_0226_49 = 0.549;
    parameter Real kmp_s_0434r_0226_49 = 1.25956;
    parameter Real kmp_s_0605r_0226_49 = 0.549;
    parameter Real kmp_s_0763_br_0226_49 = 0.549;
    parameter Real kms_s_0446r_0226_49 = 1.09208;
    parameter Real kms_s_0881r_0226_49 = 0.549;
    parameter Real kms_s_0887r_0226_49 = 0.549;
    parameter Real Keq_r_0229_50 = 0.696513;
    parameter Real Vmax_r_0229_50 = 4.92183;
    parameter Real kmp_s_0434r_0229_50 = 1.25956;
    parameter Real kmp_s_0605r_0229_50 = 0.549;
    parameter Real kmp_s_0763_br_0229_50 = 0.549;
    parameter Real kmp_s_0877r_0229_50 = 0.549;
    parameter Real kmp_s_0899r_0229_50 = 0.549;
    parameter Real kms_s_0446r_0229_50 = 1.09208;
    parameter Real kms_s_0881r_0229_50 = 0.549;
    parameter Real kms_s_0907r_0229_50 = 0.549;
    parameter Real kms_s_1434_br_0229_50 = 0.549;
    parameter Real Keq_r_0232_51 = 0.6039;
    parameter Real Vmax_r_0232_51 = 0.826427;
    parameter Real kmp_s_0763_br_0232_51 = 0.549;
    parameter Real kmp_s_1073r_0232_51 = 0.549;
    parameter Real kmp_s_1207r_0232_51 = 0.549;
    parameter Real kms_s_0469r_0232_51 = 0.549;
    parameter Real kms_s_0881r_0232_51 = 0.549;
    parameter Real Keq_r_0233_52 = 1.73154;
    parameter Real Vmax_r_0233_52 = 6.2447;
    parameter Real kmp_s_0301r_0233_52 = 0.549;
    parameter Real kmp_s_0400r_0233_52 = 1.71907;
    parameter Real kms_s_0446r_0233_52 = 1.09208;
    parameter Real kms_s_0881r_0233_52 = 0.549;
    parameter Real Keq_r_0235_53 = 1.1;
    parameter Real Vmax_r_0235_53 = 9.856;
    parameter Real kmp_s_0185r_0235_53 = 0.549;
    parameter Real kmp_s_0881r_0235_53 = 0.549;
    parameter Real kms_s_0899r_0235_53 = 0.549;
    parameter Real kms_s_1156r_0235_53 = 0.549;
    parameter Real Keq_r_0238_54 = 1.1;
    parameter Real Vmax_r_0238_54 = 13.3815;
    parameter Real kmp_s_0886r_0238_54 = 0.549;
    parameter Real kmp_s_1091r_0238_54 = 0.549;
    parameter Real kmp_s_1207r_0238_54 = 0.549;
    parameter Real kms_s_0301r_0238_54 = 0.549;
    parameter Real kms_s_0763_br_0238_54 = 0.549;
    parameter Real kms_s_1096r_0238_54 = 0.549;
    parameter Real Keq_r_0245_55 = 0.552981;
    parameter Real Vmax_r_0245_55 = 0.32109;
    parameter Real kmp_s_0334r_0245_55 = 0.549;
    parameter Real kmp_s_0605r_0245_55 = 0.549;
    parameter Real kms_s_0331r_0245_55 = 0.549;
    parameter Real kms_s_0446r_0245_55 = 1.09208;
    parameter Real Keq_r_0246_56 = 3.47564;
    parameter Real Vmax_r_0246_56 = 76.0041;
    parameter Real kmp_s_0446r_0246_56 = 1.09208;
    parameter Real kmp_s_0763_br_0246_56 = 0.549;
    parameter Real kmp_s_1434_br_0246_56 = 0.549;
    parameter Real kms_s_0400r_0246_56 = 1.71907;
    parameter Real kms_s_0763_br_0246_56 = 0.549;
    parameter Real kms_s_1207r_0246_56 = 0.549;
    parameter Real Keq_r_0249_57 = 0.173154;
    parameter Real Vmax_r_0249_57 = 50.4568;
    parameter Real kmp_s_0400r_0249_57 = 1.71907;
    parameter Real kmp_s_0766_br_0249_57 = 0.1;
    parameter Real kmp_s_1207r_0249_57 = 0.549;
    parameter Real kms_s_0446r_0249_57 = 1.09208;
    parameter Real kms_s_1434_br_0249_57 = 0.549;
    parameter Real Keq_r_0251_58 = 0.6039;
    parameter Real Vmax_r_0251_58 = 20.097;
    parameter Real kmp_s_0458r_0251_58 = 0.549;
    parameter Real kmp_s_0763_br_0251_58 = 0.549;
    parameter Real kms_s_0470r_0251_58 = 1.0;
    parameter Real kms_s_1434_br_0251_58 = 0.549;
    parameter Real Keq_r_0258_59 = 2.00364;
    parameter Real Vmax_r_0258_59 = 0.0458592;
    parameter Real kmp_s_0124r_0258_59 = 0.549;
    parameter Real kmp_s_1091r_0258_59 = 0.549;
    parameter Real kms_s_0268r_0258_59 = 0.549;
    parameter Real kms_s_0763_br_0258_59 = 0.549;
    parameter Real kms_s_1096r_0258_59 = 0.549;
    parameter Real Keq_r_0261_60 = 0.6039;
    parameter Real Vmax_r_0261_60 = 0.0785835;
    parameter Real kmp_s_0470r_0261_60 = 1.0;
    parameter Real kmp_s_0763_br_0261_60 = 0.549;
    parameter Real kmp_s_1096r_0261_60 = 0.549;
    parameter Real kmp_s_1458r_0261_60 = 0.549;
    parameter Real kms_s_1091r_0261_60 = 0.549;
    parameter Real kms_s_1457r_0261_60 = 0.549;
    parameter Real Keq_r_0262_61 = 0.0348439;
    parameter Real Vmax_r_0262_61 = 0.0785834;
    parameter Real kmp_s_0215r_0262_61 = 0.549;
    parameter Real kmp_s_0470r_0262_61 = 1.0;
    parameter Real kmp_s_0763_br_0262_61 = 0.549;
    parameter Real kmp_s_1087r_0262_61 = 0.0867353;
    parameter Real kms_s_0303r_0262_61 = 0.549;
    parameter Real kms_s_1082r_0262_61 = 1.50326;
    parameter Real Keq_r_0263_62 = 2.00364;
    parameter Real Vmax_r_0263_62 = 0.0454962;
    parameter Real kmp_s_0302r_0263_62 = 0.549;
    parameter Real kmp_s_1091r_0263_62 = 0.549;
    parameter Real kms_s_0215r_0263_62 = 0.549;
    parameter Real kms_s_0763_br_0263_62 = 0.549;
    parameter Real kms_s_1096r_0263_62 = 0.549;
    parameter Real Keq_r_0264_63 = 2.00364;
    parameter Real Vmax_r_0264_63 = 0.0454962;
    parameter Real kmp_s_1091r_0264_63 = 0.549;
    parameter Real kmp_s_1447r_0264_63 = 0.549;
    parameter Real kms_s_0763_br_0264_63 = 0.549;
    parameter Real kms_s_1096r_0264_63 = 0.549;
    parameter Real kms_s_1458r_0264_63 = 0.549;
    parameter Real Keq_r_0265_64 = 2.00364;
    parameter Real Vmax_r_0265_64 = 0.0951282;
    parameter Real kmp_s_1091r_0265_64 = 0.549;
    parameter Real kmp_s_1434_br_0265_64 = 0.549;
    parameter Real kmp_s_1455r_0265_64 = 0.549;
    parameter Real kms_s_0302r_0265_64 = 0.549;
    parameter Real kms_s_0763_br_0265_64 = 0.549;
    parameter Real kms_s_1096r_0265_64 = 0.549;
    parameter Real kms_s_1160r_0265_64 = 0.549;
    parameter Real Keq_r_0266_65 = 1.1;
    parameter Real Vmax_r_0266_65 = 0.0951282;
    parameter Real kmp_s_1091r_0266_65 = 0.549;
    parameter Real kmp_s_1434_br_0266_65 = 0.549;
    parameter Real kmp_s_1456r_0266_65 = 0.549;
    parameter Real kms_s_0763_br_0266_65 = 0.549;
    parameter Real kms_s_1096r_0266_65 = 0.549;
    parameter Real kms_s_1160r_0266_65 = 0.549;
    parameter Real kms_s_1455r_0266_65 = 0.549;
    parameter Real Keq_r_0267_66 = 2.00364;
    parameter Real Vmax_r_0267_66 = 0.0951282;
    parameter Real kmp_s_1091r_0267_66 = 0.549;
    parameter Real kmp_s_1434_br_0267_66 = 0.549;
    parameter Real kmp_s_1457r_0267_66 = 0.549;
    parameter Real kms_s_0763_br_0267_66 = 0.549;
    parameter Real kms_s_1096r_0267_66 = 0.549;
    parameter Real kms_s_1160r_0267_66 = 0.549;
    parameter Real kms_s_1456r_0267_66 = 0.549;
    parameter Real Keq_r_0268_67 = 3.64962;
    parameter Real Vmax_r_0268_67 = 0.0951282;
    parameter Real kmp_s_0303r_0268_67 = 0.549;
    parameter Real kmp_s_1091r_0268_67 = 0.549;
    parameter Real kmp_s_1434_br_0268_67 = 0.549;
    parameter Real kms_s_0124r_0268_67 = 0.549;
    parameter Real kms_s_0763_br_0268_67 = 0.549;
    parameter Real kms_s_1096r_0268_67 = 0.549;
    parameter Real kms_s_1160r_0268_67 = 0.549;
    parameter Real Keq_r_0270_68 = 1.1;
    parameter Real Vmax_r_0270_68 = 0.00017589;
    parameter Real kmp_s_0627r_0270_68 = 0.549;
    parameter Real kms_s_0669r_0270_68 = 0.549;
    parameter Real Keq_r_0271_69 = 2.00364;
    parameter Real Vmax_r_0271_69 = 0.0430762;
    parameter Real kmp_s_0635r_0271_69 = 0.549;
    parameter Real kmp_s_1091r_0271_69 = 0.549;
    parameter Real kms_s_0632r_0271_69 = 0.549;
    parameter Real kms_s_0763_br_0271_69 = 0.549;
    parameter Real kms_s_1096r_0271_69 = 0.549;
    parameter Real Keq_r_0277_70 = 0.821515;
    parameter Real Vmax_r_0277_70 = 7.44478;
    parameter Real kmp_s_0400r_0277_70 = 1.71907;
    parameter Real kmp_s_0469r_0277_70 = 0.549;
    parameter Real kmp_s_0763_br_0277_70 = 0.549;
    parameter Real kmp_s_0899r_0277_70 = 0.549;
    parameter Real kmp_s_1207r_0277_70 = 0.549;
    parameter Real kms_s_0446r_0277_70 = 1.09208;
    parameter Real kms_s_0458r_0277_70 = 0.549;
    parameter Real kms_s_0907r_0277_70 = 0.549;
    parameter Real kms_s_1434_br_0277_70 = 0.549;
    parameter Real Keq_r_0282_71 = 0.6039;
    parameter Real Vmax_r_0282_71 = 0.187549;
    parameter Real kmp_s_1160r_0282_71 = 0.549;
    parameter Real kmp_s_1434_br_0282_71 = 0.549;
    parameter Real kms_s_0801r_0282_71 = 0.549;
    parameter Real Keq_r_0284_72 = 2.00364;
    parameter Real Vmax_r_0284_72 = 0.0367841;
    parameter Real kmp_s_0485r_0284_72 = 0.549;
    parameter Real kmp_s_0605r_0284_72 = 0.549;
    parameter Real kms_s_0521r_0284_72 = 0.549;
    parameter Real kms_s_0763_br_0284_72 = 0.549;
    parameter Real kms_s_1215r_0284_72 = 0.549;
    parameter Real Keq_r_0287_73 = 2.00364;
    parameter Real Vmax_r_0287_73 = 0.00584431;
    parameter Real kmp_s_1060r_0287_73 = 0.549;
    parameter Real kmp_s_1091r_0287_73 = 0.549;
    parameter Real kmp_s_1434_br_0287_73 = 0.549;
    parameter Real kms_s_0763_br_0287_73 = 0.549;
    parameter Real kms_s_1080r_0287_73 = 0.549;
    parameter Real kms_s_1096r_0287_73 = 0.549;
    parameter Real kms_s_1160r_0287_73 = 0.549;
    parameter Real Keq_r_0290_74 = 0.6039;
    parameter Real Vmax_r_0290_74 = 0.00279509;
    parameter Real kmp_s_0514r_0290_74 = 0.549;
    parameter Real kmp_s_0763_br_0290_74 = 0.549;
    parameter Real kmp_s_1080r_0290_74 = 0.549;
    parameter Real kms_s_1325r_0290_74 = 0.549;
    parameter Real kms_s_1355r_0290_74 = 0.549;
    parameter Real Keq_r_0298_75 = 0.331541;
    parameter Real Vmax_r_0298_75 = 0.0918388;
    parameter Real kmp_s_0632r_0298_75 = 0.549;
    parameter Real kmp_s_0763_br_0298_75 = 0.549;
    parameter Real kmp_s_1290r_0298_75 = 0.549;
    parameter Real kmp_s_1434_br_0298_75 = 0.549;
    parameter Real kms_s_1160r_0298_75 = 0.549;
    parameter Real kms_s_1293r_0298_75 = 0.549;
    parameter Real kms_s_1447r_0298_75 = 0.549;
    parameter Real Keq_r_0304_76 = 1.1;
    parameter Real Vmax_r_0304_76 = 0.3861;
    parameter Real kmp_s_1258r_0304_76 = 0.549;
    parameter Real kms_s_0500r_0304_76 = 0.549;
    parameter Real Keq_r_0306_77 = 0.6039;
    parameter Real Vmax_r_0306_77 = 0.731496;
    parameter Real kmp_s_0500r_0306_77 = 0.549;
    parameter Real kmp_s_1207r_0306_77 = 0.549;
    parameter Real kms_s_0330r_0306_77 = 0.549;
    parameter Real Keq_r_0307_78 = 2.00364;
    parameter Real Vmax_r_0307_78 = 4.40553;
    parameter Real kmp_s_0847r_0307_78 = 0.549;
    parameter Real kms_s_0501r_0307_78 = 0.549;
    parameter Real kms_s_1434_br_0307_78 = 0.549;
    parameter Real Keq_r_0328_79 = 1.1;
    parameter Real Vmax_r_0328_79 = 13.2165;
    parameter Real kmp_s_0507r_0328_79 = 0.549;
    parameter Real kmp_s_0514r_0328_79 = 0.549;
    parameter Real kmp_s_0763_br_0328_79 = 0.549;
    parameter Real kms_s_0380r_0328_79 = 0.549;
    parameter Real kms_s_1156r_0328_79 = 0.549;
    parameter Real kms_s_1434_br_0328_79 = 0.549;
    parameter Real Keq_r_0330_80 = 0.6039;
    parameter Real Vmax_r_0330_80 = 4.40547;
    parameter Real kmp_s_0501r_0330_80 = 0.549;
    parameter Real kmp_s_1434_br_0330_80 = 0.549;
    parameter Real kms_s_0507r_0330_80 = 0.549;
    parameter Real Keq_r_0336_81 = 0.521887;
    parameter Real Vmax_r_0336_81 = 0.703339;
    parameter Real kmp_s_0400r_0336_81 = 1.71907;
    parameter Real kmp_s_0521r_0336_81 = 0.549;
    parameter Real kmp_s_0763_br_0336_81 = 0.549;
    parameter Real kmp_s_1207r_0336_81 = 0.549;
    parameter Real kms_s_0430r_0336_81 = 0.549;
    parameter Real kms_s_0446r_0336_81 = 1.09208;
    parameter Real kms_s_1430r_0336_81 = 0.549;
    parameter Real Keq_r_0338_82 = 1.1;
    parameter Real Vmax_r_0338_82 = 0.18326;
    parameter Real kmp_s_0888r_0338_82 = 0.549;
    parameter Real kmp_s_1434_br_0338_82 = 0.549;
    parameter Real kms_s_0917r_0338_82 = 0.549;
    parameter Real kms_s_0943r_0338_82 = 0.549;
    parameter Real Keq_r_0339_83 = 0.6039;
    parameter Real Vmax_r_0339_83 = 0.719947;
    parameter Real kmp_s_0183r_0339_83 = 0.549;
    parameter Real kmp_s_0430r_0339_83 = 0.549;
    parameter Real kmp_s_0889r_0339_83 = 0.549;
    parameter Real kms_s_0888r_0339_83 = 0.549;
    parameter Real kms_s_1434_br_0339_83 = 0.549;
    parameter Real Keq_r_0340_84 = 0.6039;
    parameter Real Vmax_r_0340_84 = 0.431968;
    parameter Real kmp_s_0369r_0340_84 = 0.549;
    parameter Real kmp_s_0763_br_0340_84 = 0.549;
    parameter Real kmp_s_0888r_0340_84 = 0.549;
    parameter Real kms_s_0889r_0340_84 = 0.549;
    parameter Real kms_s_1117r_0340_84 = 0.549;
    parameter Real Keq_r_0345_85 = 0.698801;
    parameter Real Vmax_r_0345_85 = 0.19019;
    parameter Real kmp_s_0446r_0345_85 = 1.09208;
    parameter Real kmp_s_0511r_0345_85 = 0.549;
    parameter Real kms_s_0400r_0345_85 = 1.71907;
    parameter Real kms_s_0481r_0345_85 = 0.549;
    parameter Real Keq_r_0347_86 = 5726.73;
    parameter Real Vmax_r_0347_86 = 0.12924;
    parameter Real kmp_s_0268r_0347_86 = 0.549;
    parameter Real kmp_s_0689r_0347_86 = 0.549;
    parameter Real kmp_s_1082r_0347_86 = 1.50326;
    parameter Real kmp_s_1434_br_0347_86 = 0.549;
    parameter Real kms_s_0763_br_0347_86 = 0.549;
    parameter Real kms_s_0963r_0347_86 = 0.549;
    parameter Real kms_s_1087r_0347_86 = 0.0867353;
    parameter Real kms_s_1160r_0347_86 = 0.549;
    parameter Real Keq_r_0351_87 = 34.7263;
    parameter Real Vmax_r_0351_87 = 3.30331;
    parameter Real kmp_s_0530r_0351_87 = 0.549;
    parameter Real kmp_s_1082r_0351_87 = 1.50326;
    parameter Real kms_s_0529r_0351_87 = 0.549;
    parameter Real kms_s_0763_br_0351_87 = 0.549;
    parameter Real kms_s_1087r_0351_87 = 0.0867353;
    parameter Real Keq_r_0352_88 = 0.6039;
    parameter Real Vmax_r_0352_88 = 3.30329;
    parameter Real kmp_s_0529r_0352_88 = 0.549;
    parameter Real kmp_s_0763_br_0352_88 = 0.549;
    parameter Real kmp_s_1096r_0352_88 = 0.549;
    parameter Real kms_s_0530r_0352_88 = 0.549;
    parameter Real kms_s_1091r_0352_88 = 0.549;
    parameter Real Keq_r_0357_89 = 0.6039;
    parameter Real Vmax_r_0357_89 = 0.0163349;
    parameter Real kmp_s_0569r_0357_89 = 0.549;
    parameter Real kmp_s_0763_br_0357_89 = 0.549;
    parameter Real kmp_s_1434_br_0357_89 = 0.549;
    parameter Real kms_s_0430r_0357_89 = 0.549;
    parameter Real kms_s_0624r_0357_89 = 0.549;
    parameter Real Keq_r_0360_90 = 0.698801;
    parameter Real Vmax_r_0360_90 = 0.015323;
    parameter Real kmp_s_0446r_0360_90 = 1.09208;
    parameter Real kmp_s_0564r_0360_90 = 0.549;
    parameter Real kms_s_0400r_0360_90 = 1.71907;
    parameter Real kms_s_0562r_0360_90 = 0.549;
    parameter Real Keq_r_0362_91 = 0.698801;
    parameter Real Vmax_r_0362_91 = 0.010395;
    parameter Real kmp_s_0446r_0362_91 = 1.09208;
    parameter Real kmp_s_0593r_0362_91 = 0.549;
    parameter Real kms_s_0400r_0362_91 = 1.71907;
    parameter Real kms_s_0591r_0362_91 = 0.549;
    parameter Real Keq_r_0370_92 = 0.0999269;
    parameter Real Vmax_r_0370_92 = 0.0120878;
    parameter Real kmp_s_0514r_0370_92 = 0.549;
    parameter Real kmp_s_0763_br_0370_92 = 0.549;
    parameter Real kmp_s_1399r_0370_92 = 0.549;
    parameter Real kms_s_0386r_0370_92 = 0.549;
    parameter Real kms_s_0596r_0370_92 = 0.549;
    parameter Real Keq_r_0371_93 = 0.331541;
    parameter Real Vmax_r_0371_93 = 0.00525138;
    parameter Real kmp_s_0596r_0371_93 = 0.549;
    parameter Real kmp_s_0763_br_0371_93 = 0.549;
    parameter Real kmp_s_1207r_0371_93 = 0.549;
    parameter Real kms_s_1215r_0371_93 = 0.549;
    parameter Real kms_s_1434_br_0371_93 = 0.549;
    parameter Real Keq_r_0374_94 = 1.1;
    parameter Real Vmax_r_0374_94 = 0.52591;
    parameter Real kmp_s_0801r_0374_94 = 0.549;
    parameter Real kmp_s_1154r_0374_94 = 0.549;
    parameter Real kms_s_0064r_0374_94 = 0.549;
    parameter Real kms_s_1160r_0374_94 = 0.549;
    parameter Real Keq_r_0375_95 = 2.00364;
    parameter Real Vmax_r_0375_95 = 0.0240791;
    parameter Real kmp_s_0309r_0375_95 = 0.549;
    parameter Real kmp_s_1091r_0375_95 = 0.549;
    parameter Real kms_s_0601r_0375_95 = 0.549;
    parameter Real kms_s_0763_br_0375_95 = 0.549;
    parameter Real kms_s_1096r_0375_95 = 0.549;
    parameter Real Keq_r_0381_96 = 1.1;
    parameter Real Vmax_r_0381_96 = 0.52591;
    parameter Real kmp_s_0064r_0381_96 = 0.549;
    parameter Real kmp_s_1434_br_0381_96 = 0.549;
    parameter Real kms_s_0763_br_0381_96 = 0.549;
    parameter Real kms_s_1073r_0381_96 = 0.549;
    parameter Real Keq_r_0384_97 = 0.6039;
    parameter Real Vmax_r_0384_97 = 1.55099;
    parameter Real kmp_s_0238r_0384_97 = 0.549;
    parameter Real kmp_s_1434_br_0384_97 = 0.549;
    parameter Real kms_s_0018r_0384_97 = 0.549;
    parameter Real Keq_r_0385_98 = 0.6039;
    parameter Real Vmax_r_0385_98 = 0.523597;
    parameter Real kmp_s_0058r_0385_98 = 0.549;
    parameter Real kmp_s_1434_br_0385_98 = 0.549;
    parameter Real kms_s_0007r_0385_98 = 0.549;
    parameter Real Keq_r_0386_99 = 1.04217;
    parameter Real Vmax_r_0386_99 = 5.48128;
    parameter Real kmp_s_0400r_0386_99 = 1.71907;
    parameter Real kmp_s_0735r_0386_99 = 0.601873;
    parameter Real kmp_s_0763_br_0386_99 = 0.549;
    parameter Real kms_s_0446r_0386_99 = 1.09208;
    parameter Real kms_s_0734r_0386_99 = 0.549;
    parameter Real Keq_r_0387_100 = 1.1;
    parameter Real Vmax_r_0387_100 = 0.058597;
    parameter Real kmp_s_0605r_0387_100 = 0.549;
    parameter Real kmp_s_0712r_0387_100 = 0.549;
    parameter Real kms_s_0850r_0387_100 = 0.549;
    parameter Real kms_s_1257r_0387_100 = 0.549;
    parameter Real Keq_r_0393_101 = 1.1;
    parameter Real Vmax_r_0393_101 = 3.5112;
    parameter Real kmp_s_0615r_0393_101 = 0.549;
    parameter Real kmp_s_0706r_0393_101 = 0.549;
    parameter Real kms_s_0616r_0393_101 = 0.549;
    parameter Real kms_s_0710r_0393_101 = 0.549;
    parameter Real Keq_r_0394_102 = 0.331541;
    parameter Real Vmax_r_0394_102 = 4.51436;
    parameter Real kmp_s_0616r_0394_102 = 0.549;
    parameter Real kmp_s_0763_br_0394_102 = 0.549;
    parameter Real kmp_s_1011r_0394_102 = 0.549;
    parameter Real kms_s_0615r_0394_102 = 0.549;
    parameter Real Keq_r_0398_103 = 6500.0;
    parameter Real Vmax_r_0398_103 = 6.15027;
    parameter Real kmp_s_1243r_0398_103 = 0.0271093;
    parameter Real kmp_s_1434_br_0398_103 = 0.549;
    parameter Real kms_s_0193r_0398_103 = 0.0515066;
    parameter Real Keq_r_0417_104 = 3.64962;
    parameter Real Vmax_r_0417_104 = 0.00599719;
    parameter Real kmp_s_0470r_0417_104 = 1.0;
    parameter Real kmp_s_0514r_0417_104 = 0.549;
    parameter Real kmp_s_0574r_0417_104 = 0.549;
    parameter Real kmp_s_1091r_0417_104 = 0.549;
    parameter Real kmp_s_1434_br_0417_104 = 0.549;
    parameter Real kms_s_0763_br_0417_104 = 0.549;
    parameter Real kms_s_1005r_0417_104 = 0.549;
    parameter Real kms_s_1096r_0417_104 = 0.549;
    parameter Real kms_s_1132r_0417_104 = 0.549;
    parameter Real Keq_r_0418_105 = 3.64962;
    parameter Real Vmax_r_0418_105 = 0.00599719;
    parameter Real kmp_s_0470r_0418_105 = 1.0;
    parameter Real kmp_s_0514r_0418_105 = 0.549;
    parameter Real kmp_s_0968r_0418_105 = 0.549;
    parameter Real kmp_s_1091r_0418_105 = 0.549;
    parameter Real kmp_s_1434_br_0418_105 = 0.549;
    parameter Real kms_s_0574r_0418_105 = 0.549;
    parameter Real kms_s_0763_br_0418_105 = 0.549;
    parameter Real kms_s_1005r_0418_105 = 0.549;
    parameter Real kms_s_1096r_0418_105 = 0.549;
    parameter Real Keq_r_0419_106 = 3.64962;
    parameter Real Vmax_r_0419_106 = 0.00599719;
    parameter Real kmp_s_0470r_0419_106 = 1.0;
    parameter Real kmp_s_0514r_0419_106 = 0.549;
    parameter Real kmp_s_1028r_0419_106 = 0.549;
    parameter Real kmp_s_1091r_0419_106 = 0.549;
    parameter Real kmp_s_1434_br_0419_106 = 0.549;
    parameter Real kms_s_0763_br_0419_106 = 0.549;
    parameter Real kms_s_0968r_0419_106 = 0.549;
    parameter Real kms_s_1005r_0419_106 = 0.549;
    parameter Real kms_s_1096r_0419_106 = 0.549;
    parameter Real Keq_r_0421_107 = 3.64962;
    parameter Real Vmax_r_0421_107 = 0.00599719;
    parameter Real kmp_s_0470r_0421_107 = 1.0;
    parameter Real kmp_s_0514r_0421_107 = 0.549;
    parameter Real kmp_s_1091r_0421_107 = 0.549;
    parameter Real kmp_s_1170r_0421_107 = 0.549;
    parameter Real kmp_s_1434_br_0421_107 = 0.549;
    parameter Real kms_s_0763_br_0421_107 = 0.549;
    parameter Real kms_s_1005r_0421_107 = 0.549;
    parameter Real kms_s_1028r_0421_107 = 0.549;
    parameter Real kms_s_1096r_0421_107 = 0.549;
    parameter Real Keq_r_0423_108 = 3.64962;
    parameter Real Vmax_r_0423_108 = 0.00599718;
    parameter Real kmp_s_0470r_0423_108 = 1.0;
    parameter Real kmp_s_0514r_0423_108 = 0.549;
    parameter Real kmp_s_1091r_0423_108 = 0.549;
    parameter Real kmp_s_1329r_0423_108 = 0.549;
    parameter Real kmp_s_1434_br_0423_108 = 0.549;
    parameter Real kms_s_0763_br_0423_108 = 0.549;
    parameter Real kms_s_1005r_0423_108 = 0.549;
    parameter Real kms_s_1096r_0423_108 = 0.549;
    parameter Real kms_s_1170r_0423_108 = 0.549;
    parameter Real Keq_r_0425_109 = 40.2;
    parameter Real Vmax_r_0425_109 = 0.0118696;
    parameter Real kmp_s_0470r_0425_109 = 1.0;
    parameter Real kmp_s_0514r_0425_109 = 0.549;
    parameter Real kmp_s_0987r_0425_109 = 0.549;
    parameter Real kmp_s_1091r_0425_109 = 0.549;
    parameter Real kmp_s_1434_br_0425_109 = 0.549;
    parameter Real kms_s_0763_br_0425_109 = 0.549;
    parameter Real kms_s_1005r_0425_109 = 0.549;
    parameter Real kms_s_1096r_0425_109 = 0.549;
    parameter Real kms_s_1329r_0425_109 = 0.549;
    parameter Real Keq_r_0429_110 = 3.64962;
    parameter Real Vmax_r_0429_110 = 0.0179399;
    parameter Real kmp_s_0470r_0429_110 = 1.0;
    parameter Real kmp_s_0514r_0429_110 = 0.549;
    parameter Real kmp_s_0582r_0429_110 = 0.549;
    parameter Real kmp_s_1091r_0429_110 = 0.549;
    parameter Real kmp_s_1434_br_0429_110 = 0.549;
    parameter Real kms_s_0763_br_0429_110 = 0.549;
    parameter Real kms_s_1005r_0429_110 = 0.549;
    parameter Real kms_s_1096r_0429_110 = 0.549;
    parameter Real kms_s_1140r_0429_110 = 0.549;
    parameter Real Keq_r_0430_111 = 40.2;
    parameter Real Vmax_r_0430_111 = 0.0237906;
    parameter Real kmp_s_0470r_0430_111 = 1.0;
    parameter Real kmp_s_0514r_0430_111 = 0.549;
    parameter Real kmp_s_1091r_0430_111 = 0.549;
    parameter Real kmp_s_1140r_0430_111 = 0.549;
    parameter Real kmp_s_1434_br_0430_111 = 0.549;
    parameter Real kms_s_0380r_0430_111 = 0.549;
    parameter Real kms_s_0763_br_0430_111 = 0.549;
    parameter Real kms_s_1005r_0430_111 = 0.549;
    parameter Real kms_s_1096r_0430_111 = 0.549;
    parameter Real Keq_r_0437_112 = 1.26869;
    parameter Real Vmax_r_0437_112 = 0.0038115;
    parameter Real kmp_s_0434r_0437_112 = 1.25956;
    parameter Real kmp_s_0605r_0437_112 = 0.549;
    parameter Real kmp_s_1355r_0437_112 = 0.549;
    parameter Real kms_s_0446r_0437_112 = 1.09208;
    parameter Real kms_s_0514r_0437_112 = 0.549;
    parameter Real kms_s_0987r_0437_112 = 0.549;
    parameter Real Keq_r_0439_113 = 0.953736;
    parameter Real Vmax_r_0439_113 = 0.001914;
    parameter Real kmp_s_0446r_0439_113 = 1.09208;
    parameter Real kmp_s_0514r_0439_113 = 0.549;
    parameter Real kmp_s_1329r_0439_113 = 0.549;
    parameter Real kms_s_0434r_0439_113 = 1.25956;
    parameter Real kms_s_0605r_0439_113 = 0.549;
    parameter Real kms_s_1334r_0439_113 = 0.549;
    parameter Real Keq_r_0442_114 = 0.953736;
    parameter Real Vmax_r_0442_114 = 0.001914;
    parameter Real kmp_s_0446r_0442_114 = 1.09208;
    parameter Real kmp_s_0514r_0442_114 = 0.549;
    parameter Real kmp_s_1132r_0442_114 = 0.549;
    parameter Real kms_s_0434r_0442_114 = 1.25956;
    parameter Real kms_s_0605r_0442_114 = 0.549;
    parameter Real kms_s_1140r_0442_114 = 0.549;
    parameter Real Keq_r_0464_115 = 3.64962;
    parameter Real Vmax_r_0464_115 = 0.0179399;
    parameter Real kmp_s_0470r_0464_115 = 1.0;
    parameter Real kmp_s_0514r_0464_115 = 0.549;
    parameter Real kmp_s_0977r_0464_115 = 0.549;
    parameter Real kmp_s_1091r_0464_115 = 0.549;
    parameter Real kmp_s_1434_br_0464_115 = 0.549;
    parameter Real kms_s_0582r_0464_115 = 0.549;
    parameter Real kms_s_0763_br_0464_115 = 0.549;
    parameter Real kms_s_1005r_0464_115 = 0.549;
    parameter Real kms_s_1096r_0464_115 = 0.549;
    parameter Real Keq_r_0465_116 = 3.64962;
    parameter Real Vmax_r_0465_116 = 0.0179399;
    parameter Real kmp_s_0470r_0465_116 = 1.0;
    parameter Real kmp_s_0514r_0465_116 = 0.549;
    parameter Real kmp_s_1044r_0465_116 = 0.549;
    parameter Real kmp_s_1091r_0465_116 = 0.549;
    parameter Real kmp_s_1434_br_0465_116 = 0.549;
    parameter Real kms_s_0763_br_0465_116 = 0.549;
    parameter Real kms_s_0977r_0465_116 = 0.549;
    parameter Real kms_s_1005r_0465_116 = 0.549;
    parameter Real kms_s_1096r_0465_116 = 0.549;
    parameter Real Keq_r_0466_117 = 3.64962;
    parameter Real Vmax_r_0466_117 = 0.0179399;
    parameter Real kmp_s_0470r_0466_117 = 1.0;
    parameter Real kmp_s_0514r_0466_117 = 0.549;
    parameter Real kmp_s_1091r_0466_117 = 0.549;
    parameter Real kmp_s_1187r_0466_117 = 0.549;
    parameter Real kmp_s_1434_br_0466_117 = 0.549;
    parameter Real kms_s_0763_br_0466_117 = 0.549;
    parameter Real kms_s_1005r_0466_117 = 0.549;
    parameter Real kms_s_1044r_0466_117 = 0.549;
    parameter Real kms_s_1096r_0466_117 = 0.549;
    parameter Real Keq_r_0467_118 = 3.64962;
    parameter Real Vmax_r_0467_118 = 0.00599719;
    parameter Real kmp_s_0470r_0467_118 = 1.0;
    parameter Real kmp_s_0514r_0467_118 = 0.549;
    parameter Real kmp_s_1091r_0467_118 = 0.549;
    parameter Real kmp_s_1334r_0467_118 = 0.549;
    parameter Real kmp_s_1434_br_0467_118 = 0.549;
    parameter Real kms_s_0763_br_0467_118 = 0.549;
    parameter Real kms_s_1005r_0467_118 = 0.549;
    parameter Real kms_s_1096r_0467_118 = 0.549;
    parameter Real kms_s_1187r_0467_118 = 0.549;
    parameter Real Keq_r_0479_119 = 1.73154;
    parameter Real Vmax_r_0479_119 = 0.087285;
    parameter Real kmp_s_0122r_0479_119 = 0.549;
    parameter Real kmp_s_0400r_0479_119 = 1.71907;
    parameter Real kmp_s_1207r_0479_119 = 0.549;
    parameter Real kms_s_0309r_0479_119 = 0.549;
    parameter Real kms_s_0446r_0479_119 = 1.09208;
    parameter Real kms_s_0689r_0479_119 = 0.549;
    parameter Real Keq_r_0484_120 = 0.045;
    parameter Real Vmax_r_0484_120 = 5.50982;
    parameter Real kmp_s_0731r_0484_120 = 0.0436363;
    parameter Real kmp_s_0735r_0484_120 = 0.601873;
    parameter Real kms_s_0537r_0484_120 = 1.34278;
    parameter Real Keq_r_0485_121 = 0.6039;
    parameter Real Vmax_r_0485_121 = 2.08449;
    parameter Real kmp_s_0692r_0485_121 = 0.549;
    parameter Real kmp_s_1434_br_0485_121 = 0.549;
    parameter Real kms_s_0069r_0485_121 = 0.549;
    parameter Real Keq_r_0488_122 = 1.1;
    parameter Real Vmax_r_0488_122 = 4.5199;
    parameter Real kmp_s_0657r_0488_122 = 0.549;
    parameter Real kmp_s_1338r_0488_122 = 0.549;
    parameter Real kms_s_0659r_0488_122 = 0.549;
    parameter Real kms_s_0692r_0488_122 = 0.549;
    parameter Real Keq_r_0496_123 = 1.1;
    parameter Real Vmax_r_0496_123 = 0.058597;
    parameter Real kmp_s_0195r_0496_123 = 0.549;
    parameter Real kmp_s_0605r_0496_123 = 0.549;
    parameter Real kms_s_0712r_0496_123 = 0.549;
    parameter Real kms_s_0850r_0496_123 = 0.549;
    parameter Real Keq_r_0499_124 = 4.77829;
    parameter Real Vmax_r_0499_124 = 72.4789;
    parameter Real kmp_s_0400r_0499_124 = 1.71907;
    parameter Real kmp_s_0455r_0499_124 = 0.496414;
    parameter Real kmp_s_0763_br_0499_124 = 0.549;
    parameter Real kms_s_0446r_0499_124 = 1.09208;
    parameter Real kms_s_0545r_0499_124 = 0.0987587;
    parameter Real Vmax_r_0504_125 = 15.712;
    parameter Real kms_s_0455r_0504_125 = 0.496414;
    parameter Real Keq_r_0504_125 = 0.29;
    parameter Real kmp_s_0539r_0504_125 = 0.104555;
    parameter Real intracellular_125 = 1.0;
    parameter Real kmI_s_0455mr_0504_125 = 0.7;
    parameter Real kmI_s_0glumr_0504_125 = 0.7;
    parameter Real Keq_r_0505_126 = 0.29;
    parameter Real Vmax_r_0505_126 = 0.753302;
    parameter Real kmp_s_0539r_0505_126 = 0.104555;
    parameter Real kms_s_0410r_0505_126 = 0.549;
    parameter Real Keq_r_0506_127 = 1.73154;
    parameter Real Vmax_r_0506_127 = 0.54978;
    parameter Real kmp_s_0400r_0506_127 = 1.71907;
    parameter Real kmp_s_0894r_0506_127 = 0.549;
    parameter Real kms_s_0446r_0506_127 = 1.09208;
    parameter Real kms_s_0899r_0506_127 = 0.549;
    parameter Real Keq_r_0509_128 = 2.00364;
    parameter Real Vmax_r_0509_128 = 38.2031;
    parameter Real kmp_s_0899r_0509_128 = 0.549;
    parameter Real kmp_s_1091r_0509_128 = 0.549;
    parameter Real kmp_s_1434_br_0509_128 = 0.549;
    parameter Real kms_s_0185r_0509_128 = 0.549;
    parameter Real kms_s_0430r_0509_128 = 0.549;
    parameter Real kms_s_0763_br_0509_128 = 0.549;
    parameter Real kms_s_1096r_0509_128 = 0.549;
    parameter Real Keq_r_0510_129 = 34.7263;
    parameter Real Vmax_r_0510_129 = 31.5593;
    parameter Real kmp_s_0899r_0510_129 = 0.549;
    parameter Real kmp_s_1082r_0510_129 = 1.50326;
    parameter Real kms_s_0185r_0510_129 = 0.549;
    parameter Real kms_s_0763_br_0510_129 = 0.549;
    parameter Real kms_s_0907r_0510_129 = 0.549;
    parameter Real kms_s_1087r_0510_129 = 0.0867353;
    parameter Real Keq_r_0512_130 = 19.0647;
    parameter Real Vmax_r_0512_130 = 1.1781;
    parameter Real kmp_s_0905r_0512_130 = 0.549;
    parameter Real kmp_s_1082r_0512_130 = 1.50326;
    parameter Real kmp_s_1207r_0512_130 = 0.549;
    parameter Real kms_s_0763_br_0512_130 = 0.549;
    parameter Real kms_s_0894r_0512_130 = 0.549;
    parameter Real kms_s_1087r_0512_130 = 0.0867353;
    parameter Real Keq_r_0514_131 = 1.1;
    parameter Real Vmax_r_0514_131 = 1.00155;
    parameter Real kmp_s_0333r_0514_131 = 0.549;
    parameter Real kmp_s_0605r_0514_131 = 0.549;
    parameter Real kmp_s_0899r_0514_131 = 0.549;
    parameter Real kms_s_0331r_0514_131 = 0.549;
    parameter Real kms_s_0907r_0514_131 = 0.549;
    parameter Real kms_s_1434_br_0514_131 = 0.549;
    parameter Real Keq_r_0515_132 = 0.950614;
    parameter Real Vmax_r_0515_132 = 53.3829;
    parameter Real kmp_s_0400r_0515_132 = 1.71907;
    parameter Real kmp_s_0763_br_0515_132 = 0.549;
    parameter Real kmp_s_0907r_0515_132 = 0.549;
    parameter Real kmp_s_1207r_0515_132 = 0.549;
    parameter Real kms_s_0430r_0515_132 = 0.549;
    parameter Real kms_s_0446r_0515_132 = 1.09208;
    parameter Real kms_s_0899r_0515_132 = 0.549;
    parameter Real Vmax_r_0525_133 = 69.589;
    parameter Real kms_s_0731r_0525_133 = 0.0436363;
    parameter Real kms_s_1082r_0525_133 = 1.50326;
    parameter Real kms_s_1207r_0525_133 = 0.549;
    parameter Real Keq_r_0525_133 = 3200.0;
    parameter Real kmp_s_0265r_0525_133 = 0.000108759;
    parameter Real kmp_s_0763_br_0525_133 = 0.549;
    parameter Real kmp_s_1087r_0525_133 = 0.0867353;
    parameter Real kmI_s_0731mr_0525_133 = 0.0012;
    parameter Real Keq_r_0526_134 = 2.21027;
    parameter Real Vmax_r_0526_134 = 5.48128;
    parameter Real kmp_s_0734r_0526_134 = 0.549;
    parameter Real kmp_s_0763_br_0526_134 = 0.549;
    parameter Real kmp_s_1096r_0526_134 = 0.549;
    parameter Real kms_s_0732r_0526_134 = 0.15;
    parameter Real kms_s_1091r_0526_134 = 0.549;
    parameter Real Keq_r_0528_135 = 0.0128394;
    parameter Real Vmax_r_0528_135 = 3.48809;
    parameter Real kmp_s_0732r_0528_135 = 0.15;
    parameter Real kmp_s_1207r_0528_135 = 0.549;
    parameter Real kms_s_1315r_0528_135 = 12.8511;
    parameter Real kms_s_1434_br_0528_135 = 0.549;
    parameter Real Keq_r_0529_136 = 0.0515178;
    parameter Real Vmax_r_0529_136 = 4.51989;
    parameter Real kmp_s_0659r_0529_136 = 0.549;
    parameter Real kmp_s_0735r_0529_136 = 0.601873;
    parameter Real kms_s_0657r_0529_136 = 0.549;
    parameter Real kms_s_1315r_0529_136 = 12.8511;
    parameter Real Keq_r_0530_137 = 741.47;
    parameter Real Vmax_r_0530_137 = 12.5841;
    parameter Real kmp_s_1082r_0530_137 = 1.50326;
    parameter Real kmp_s_1315r_0530_137 = 12.8511;
    parameter Real kms_s_0735r_0530_137 = 0.601873;
    parameter Real kms_s_0763_br_0530_137 = 0.549;
    parameter Real kms_s_1087r_0530_137 = 0.0867353;
    parameter Real Keq_r_0534_138 = 0.0141635;
    parameter Real Vmax_r_0534_138 = 0.0421077;
    parameter Real kmp_s_0083r_0534_138 = 0.549;
    parameter Real kmp_s_0514r_0534_138 = 0.549;
    parameter Real kmp_s_0763_br_0534_138 = 0.549;
    parameter Real kms_s_0386r_0534_138 = 0.549;
    parameter Real kms_s_1315r_0534_138 = 12.8511;
    parameter Real Keq_r_0538_139 = 0.063468;
    parameter Real Vmax_r_0538_139 = 9.5887;
    parameter Real kmp_s_0307r_0538_139 = 0.549;
    parameter Real kmp_s_0430r_0538_139 = 0.549;
    parameter Real kmp_s_0470r_0538_139 = 1.0;
    parameter Real kmp_s_1087r_0538_139 = 0.0867353;
    parameter Real kms_s_0309r_0538_139 = 0.549;
    parameter Real kms_s_0740r_0538_139 = 0.549;
    parameter Real kms_s_1082r_0538_139 = 1.50326;
    parameter Real Keq_r_0539_140 = 2.00364;
    parameter Real Vmax_r_0539_140 = 2.21431;
    parameter Real kmp_s_0309r_0539_140 = 0.549;
    parameter Real kmp_s_0943r_0539_140 = 0.549;
    parameter Real kms_s_0307r_0539_140 = 0.549;
    parameter Real kms_s_0740r_0539_140 = 0.549;
    parameter Real kms_s_1434_br_0539_140 = 0.549;
    parameter Real Keq_r_0547_141 = 0.6039;
    parameter Real Vmax_r_0547_141 = 3.48479;
    parameter Real kmp_s_0438r_0547_141 = 0.549;
    parameter Real kmp_s_0763_br_0547_141 = 0.549;
    parameter Real kmp_s_1411r_0547_141 = 0.549;
    parameter Real kms_s_1415r_0547_141 = 0.549;
    parameter Real kms_s_1434_br_0547_141 = 0.549;
    parameter Real Keq_r_0551_142 = 0.382386;
    parameter Real Vmax_r_0551_142 = 1.57168;
    parameter Real kmp_s_0434r_0551_142 = 1.25956;
    parameter Real kmp_s_0605r_0551_142 = 0.549;
    parameter Real kmp_s_0752r_0551_142 = 0.549;
    parameter Real kmp_s_0763_br_0551_142 = 0.549;
    parameter Real kmp_s_0899r_0551_142 = 0.549;
    parameter Real kms_s_0306r_0551_142 = 0.549;
    parameter Real kms_s_0446r_0551_142 = 1.09208;
    parameter Real kms_s_0907r_0551_142 = 0.549;
    parameter Real kms_s_1434_br_0551_142 = 0.549;
    parameter Real Keq_r_0562_143 = 0.6039;
    parameter Real Vmax_r_0562_143 = 0.0104499;
    parameter Real kmp_s_0145r_0562_143 = 0.549;
    parameter Real kmp_s_0605r_0562_143 = 0.549;
    parameter Real kmp_s_0689r_0562_143 = 0.549;
    parameter Real kmp_s_0763_br_0562_143 = 0.549;
    parameter Real kms_s_0755r_0562_143 = 0.549;
    parameter Real kms_s_1434_br_0562_143 = 0.549;
    parameter Real Keq_r_0567_144 = 1.73154;
    parameter Real Vmax_r_0567_144 = 0.008393;
    parameter Real kmp_s_0400r_0567_144 = 1.71907;
    parameter Real kmp_s_0706r_0567_144 = 0.549;
    parameter Real kms_s_0446r_0567_144 = 1.09208;
    parameter Real kms_s_0752r_0567_144 = 0.549;
    parameter Real Keq_r_0568_145 = 1.1;
    parameter Real Vmax_r_0568_145 = 0.0076692;
    parameter Real kmp_s_0562r_0568_145 = 0.549;
    parameter Real kmp_s_0706r_0568_145 = 0.549;
    parameter Real kms_s_0566r_0568_145 = 0.549;
    parameter Real kms_s_0752r_0568_145 = 0.549;
    parameter Real Keq_r_0573_146 = 2000.0;
    parameter Real Vmax_r_0573_146 = 1.99579;
    parameter Real kmp_s_0400r_0573_146 = 1.71907;
    parameter Real kmp_s_0410r_0573_146 = 0.549;
    parameter Real kmp_s_0763_br_0573_146 = 0.549;
    parameter Real kms_s_0446r_0573_146 = 1.09208;
    parameter Real kms_s_0545r_0573_146 = 0.0987587;
    parameter Real Keq_r_0575_147 = 0.00110373;
    parameter Real Vmax_r_0575_147 = 0.688047;
    parameter Real kmp_s_0763_br_0575_147 = 0.549;
    parameter Real kmp_s_0911r_0575_147 = 0.549;
    parameter Real kmp_s_1087r_0575_147 = 0.0867353;
    parameter Real kms_s_0915r_0575_147 = 0.549;
    parameter Real kms_s_1082r_0575_147 = 1.50326;
    parameter Real kms_s_1434_br_0575_147 = 0.549;
    parameter Real Keq_r_0576_148 = 1.1;
    parameter Real Vmax_r_0576_148 = 0.32109;
    parameter Real kmp_s_0915r_0576_148 = 0.549;
    parameter Real kmp_s_1207r_0576_148 = 0.549;
    parameter Real kms_s_0916r_0576_148 = 0.549;
    parameter Real kms_s_1434_br_0576_148 = 0.549;
    parameter Real Keq_r_0577_149 = 1.1;
    parameter Real Vmax_r_0577_149 = 0.32109;
    parameter Real kmp_s_0185r_0577_149 = 0.549;
    parameter Real kmp_s_0916r_0577_149 = 0.549;
    parameter Real kms_s_0212r_0577_149 = 0.549;
    parameter Real kms_s_0899r_0577_149 = 0.549;
    parameter Real Keq_r_0581_150 = 2.00364;
    parameter Real Vmax_r_0581_150 = 0.731504;
    parameter Real kmp_s_0800r_0581_150 = 0.549;
    parameter Real kms_s_0468r_0581_150 = 0.549;
    parameter Real kms_s_1434_br_0581_150 = 0.549;
    parameter Real Keq_r_0582_151 = 1.1;
    parameter Real Vmax_r_0582_151 = 2.1945;
    parameter Real kmp_s_0514r_0582_151 = 0.549;
    parameter Real kmp_s_0763_br_0582_151 = 0.549;
    parameter Real kmp_s_0798r_0582_151 = 0.549;
    parameter Real kms_s_0185r_0582_151 = 0.549;
    parameter Real kms_s_0380r_0582_151 = 0.549;
    parameter Real kms_s_1434_br_0582_151 = 0.549;
    parameter Real Keq_r_0585_152 = 0.0348439;
    parameter Real Vmax_r_0585_152 = 1.60929;
    parameter Real kmp_s_0180r_0585_152 = 0.549;
    parameter Real kmp_s_0763_br_0585_152 = 0.549;
    parameter Real kmp_s_1087r_0585_152 = 0.0867353;
    parameter Real kms_s_0800r_0585_152 = 0.549;
    parameter Real kms_s_1082r_0585_152 = 1.50326;
    parameter Real Keq_r_0586_153 = 34.7263;
    parameter Real Vmax_r_0586_153 = 9.81316;
    parameter Real kmp_s_0919r_0586_153 = 0.549;
    parameter Real kmp_s_1082r_0586_153 = 1.50326;
    parameter Real kms_s_0763_br_0586_153 = 0.549;
    parameter Real kms_s_0886r_0586_153 = 0.549;
    parameter Real kms_s_1087r_0586_153 = 0.0867353;
    parameter Real Keq_r_0588_154 = 0.950614;
    parameter Real Vmax_r_0588_154 = 8.76037;
    parameter Real kmp_s_0400r_0588_154 = 1.71907;
    parameter Real kmp_s_0763_br_0588_154 = 0.549;
    parameter Real kmp_s_1122r_0588_154 = 0.549;
    parameter Real kms_s_0446r_0588_154 = 1.09208;
    parameter Real kms_s_0919r_0588_154 = 0.549;
    parameter Real Keq_r_0589_155 = 1.1;
    parameter Real Vmax_r_0589_155 = 0.67221;
    parameter Real kmp_s_0514r_0589_155 = 0.549;
    parameter Real kmp_s_1117r_0589_155 = 0.549;
    parameter Real kms_s_0380r_0589_155 = 0.549;
    parameter Real kms_s_0919r_0589_155 = 0.549;
    parameter Real Keq_r_0598_156 = 2.00364;
    parameter Real Vmax_r_0598_156 = 0.3762;
    parameter Real kmp_s_0031r_0598_156 = 0.549;
    parameter Real kmp_s_0514r_0598_156 = 0.549;
    parameter Real kmp_s_1091r_0598_156 = 0.549;
    parameter Real kms_s_0225r_0598_156 = 0.549;
    parameter Real kms_s_0763_br_0598_156 = 0.549;
    parameter Real kms_s_1096r_0598_156 = 0.549;
    parameter Real Keq_r_0599_157 = 1.1;
    parameter Real Vmax_r_0599_157 = 0.3762;
    parameter Real kmp_s_0225r_0599_157 = 0.549;
    parameter Real kmp_s_0514r_0599_157 = 0.549;
    parameter Real kmp_s_0763_br_0599_157 = 0.549;
    parameter Real kms_s_0374r_0599_157 = 0.549;
    parameter Real kms_s_0380r_0599_157 = 0.549;
    parameter Real kms_s_1434_br_0599_157 = 0.549;
    parameter Real Keq_r_0604_158 = 0.331541;
    parameter Real Vmax_r_0604_158 = 0.871524;
    parameter Real kmp_s_0317r_0604_158 = 0.549;
    parameter Real kmp_s_0532r_0604_158 = 0.549;
    parameter Real kmp_s_0763_br_0604_158 = 0.549;
    parameter Real kmp_s_0899r_0604_158 = 0.549;
    parameter Real kms_s_0315r_0604_158 = 0.549;
    parameter Real kms_s_0907r_0604_158 = 0.549;
    parameter Real Keq_r_0605_159 = 0.6039;
    parameter Real Vmax_r_0605_159 = 0.229349;
    parameter Real kmp_s_0212r_0605_159 = 0.549;
    parameter Real kmp_s_1434_br_0605_159 = 0.549;
    parameter Real kms_s_0532r_0605_159 = 0.549;
    parameter Real Keq_r_0606_160 = 0.6039;
    parameter Real Vmax_r_0606_160 = 0.560996;
    parameter Real kmp_s_0816r_0606_160 = 0.549;
    parameter Real kmp_s_1434_br_0606_160 = 0.549;
    parameter Real kms_s_0325r_0606_160 = 0.549;
    parameter Real Keq_r_0607_161 = 0.063468;
    parameter Real Vmax_r_0607_161 = 0.501598;
    parameter Real kmp_s_0306r_0607_161 = 0.549;
    parameter Real kmp_s_0763_br_0607_161 = 0.549;
    parameter Real kmp_s_1087r_0607_161 = 0.0867353;
    parameter Real kms_s_0816r_0607_161 = 0.549;
    parameter Real kms_s_1082r_0607_161 = 1.50326;
    parameter Real kms_s_1434_br_0607_161 = 0.549;
    parameter Real Keq_r_0608_162 = 1.1;
    parameter Real Vmax_r_0608_162 = 0.187549;
    parameter Real kmp_s_0088r_0608_162 = 0.549;
    parameter Real kmp_s_0470r_0608_162 = 1.0;
    parameter Real kmp_s_1434_br_0608_162 = 0.549;
    parameter Real kms_s_0078r_0608_162 = 0.549;
    parameter Real kms_s_0763_br_0608_162 = 0.549;
    parameter Real Keq_r_0610_163 = 0.6039;
    parameter Real Vmax_r_0610_163 = 3.2032;
    parameter Real kmp_s_0763_br_0610_163 = 0.549;
    parameter Real kmp_s_1207r_0610_163 = 0.549;
    parameter Real kms_s_0605r_0610_163 = 0.549;
    parameter Real kms_s_1434_br_0610_163 = 0.549;
    parameter Real Keq_r_0618_164 = 2.00364;
    parameter Real Vmax_r_0618_164 = 0.00127051;
    parameter Real kmp_s_0824r_0618_164 = 0.549;
    parameter Real kms_s_0128r_0618_164 = 0.549;
    parameter Real kms_s_1013r_0618_164 = 0.549;
    parameter Real Keq_r_0621_165 = 2.00364;
    parameter Real Vmax_r_0621_165 = 0.00127051;
    parameter Real kmp_s_0828r_0621_165 = 0.549;
    parameter Real kms_s_0128r_0621_165 = 0.549;
    parameter Real kms_s_1060r_0621_165 = 0.549;
    parameter Real Keq_r_0630_166 = 1.1;
    parameter Real Vmax_r_0630_166 = 6.98167;
    parameter Real kmp_s_0185r_0630_166 = 0.549;
    parameter Real kmp_s_0470r_0630_166 = 1.0;
    parameter Real kmp_s_1096r_0630_166 = 0.549;
    parameter Real kms_s_0847r_0630_166 = 0.549;
    parameter Real kms_s_1091r_0630_166 = 0.549;
    parameter Real Keq_r_0633_167 = 0.6039;
    parameter Real Vmax_r_0633_167 = 1.22649;
    parameter Real kmp_s_0749r_0633_167 = 0.549;
    parameter Real kmp_s_1338r_0633_167 = 0.549;
    parameter Real kms_s_0847r_0633_167 = 0.549;
    parameter Real Keq_r_0634_168 = 1.1;
    parameter Real Vmax_r_0634_168 = 0.73304;
    parameter Real kmp_s_0185r_0634_168 = 0.549;
    parameter Real kmp_s_0920r_0634_168 = 0.549;
    parameter Real kms_s_0058r_0634_168 = 0.549;
    parameter Real kms_s_0899r_0634_168 = 0.549;
    parameter Real Keq_r_0638_169 = 1.1;
    parameter Real Vmax_r_0638_169 = 0.025113;
    parameter Real kmp_s_1257r_0638_169 = 0.549;
    parameter Real kms_s_0850r_0638_169 = 0.549;
    parameter Real Keq_r_0640_170 = 2.00364;
    parameter Real Vmax_r_0640_170 = 1.15192;
    parameter Real kmp_s_0007r_0640_170 = 0.549;
    parameter Real kmp_s_1091r_0640_170 = 0.549;
    parameter Real kms_s_0042r_0640_170 = 0.549;
    parameter Real kms_s_0763_br_0640_170 = 0.549;
    parameter Real kms_s_1096r_0640_170 = 0.549;
    parameter Real Keq_r_0647_171 = 9.96691;
    parameter Real Vmax_r_0647_171 = 3.2494;
    parameter Real kmp_s_0185r_0647_171 = 0.549;
    parameter Real kmp_s_0863r_0647_171 = 0.549;
    parameter Real kms_s_0899r_0647_171 = 0.549;
    parameter Real kms_s_1277r_0647_171 = 0.0605905;
    parameter Real Keq_r_0650_172 = 21.9885;
    parameter Real Vmax_r_0650_172 = 4.53532;
    parameter Real kmp_s_0434r_0650_172 = 1.25956;
    parameter Real kmp_s_0605r_0650_172 = 0.549;
    parameter Real kmp_s_0867r_0650_172 = 0.549;
    parameter Real kmp_s_1082r_0650_172 = 1.50326;
    parameter Real kms_s_0446r_0650_172 = 1.09208;
    parameter Real kms_s_0763_br_0650_172 = 0.549;
    parameter Real kms_s_0861r_0650_172 = 0.549;
    parameter Real kms_s_1087r_0650_172 = 0.0867353;
    parameter Real Keq_r_0657_173 = 0.331541;
    parameter Real Vmax_r_0657_173 = 0.706853;
    parameter Real kmp_s_0120r_0657_173 = 0.549;
    parameter Real kmp_s_0763_br_0657_173 = 0.549;
    parameter Real kmp_s_1434_br_0657_173 = 0.549;
    parameter Real kms_s_0905r_0657_173 = 0.549;
    parameter Real Keq_r_0660_174 = 0.331541;
    parameter Real Vmax_r_0660_174 = 3.30329;
    parameter Real kmp_s_0118r_0660_174 = 0.549;
    parameter Real kmp_s_0763_br_0660_174 = 0.549;
    parameter Real kmp_s_1096r_0660_174 = 0.549;
    parameter Real kms_s_1091r_0660_174 = 0.549;
    parameter Real kms_s_1379r_0660_174 = 0.549;
    parameter Real Keq_r_0661_175 = 63.2537;
    parameter Real Vmax_r_0661_175 = 3.30332;
    parameter Real kmp_s_1082r_0661_175 = 1.50326;
    parameter Real kmp_s_1379r_0661_175 = 0.549;
    parameter Real kms_s_0118r_0661_175 = 0.549;
    parameter Real kms_s_0763_br_0661_175 = 0.549;
    parameter Real kms_s_1087r_0661_175 = 0.0867353;
    parameter Real Keq_r_0667_176 = 0.331541;
    parameter Real Vmax_r_0667_176 = 0.196349;
    parameter Real kmp_s_0183r_0667_176 = 0.549;
    parameter Real kmp_s_0430r_0667_176 = 0.549;
    parameter Real kms_s_0949r_0667_176 = 1.0;
    parameter Real Keq_r_0673_177 = 1.1;
    parameter Real Vmax_r_0673_177 = 0.01254;
    parameter Real kmp_s_0963r_0673_177 = 0.549;
    parameter Real kms_s_0040r_0673_177 = 0.549;
    parameter Real Keq_r_0674_178 = 1.1;
    parameter Real Vmax_r_0674_178 = 1.0703;
    parameter Real kmp_s_0185r_0674_178 = 0.549;
    parameter Real kmp_s_0925r_0674_178 = 0.549;
    parameter Real kms_s_0297r_0674_178 = 0.549;
    parameter Real kms_s_0899r_0674_178 = 0.549;
    parameter Real Keq_r_0688_179 = 34.7263;
    parameter Real Vmax_r_0688_179 = 4.58593;
    parameter Real kmp_s_0069r_0688_179 = 0.549;
    parameter Real kmp_s_1082r_0688_179 = 1.50326;
    parameter Real kms_s_0763_br_0688_179 = 0.549;
    parameter Real kms_s_1087r_0688_179 = 0.0867353;
    parameter Real kms_s_1156r_0688_179 = 0.549;
    parameter Real Keq_r_0697_180 = 2.00364;
    parameter Real Vmax_r_0697_180 = 5.51762;
    parameter Real kmp_s_0605r_0697_180 = 0.549;
    parameter Real kmp_s_0710r_0697_180 = 0.549;
    parameter Real kms_s_0553r_0697_180 = 0.549;
    parameter Real kms_s_0755r_0697_180 = 0.549;
    parameter Real kms_s_0763_br_0697_180 = 0.549;
    parameter Real Keq_r_0698_181 = 5.77591;
    parameter Real Vmax_r_0698_181 = 1.5048;
    parameter Real kmp_s_0554r_0698_181 = 0.549;
    parameter Real kms_s_0539r_0698_181 = 0.104555;
    parameter Real Keq_r_0699_182 = 1.1;
    parameter Real Vmax_r_0699_182 = 1.2166;
    parameter Real kmp_s_0122r_0699_182 = 0.549;
    parameter Real kmp_s_0763_br_0699_182 = 0.549;
    parameter Real kms_s_0015r_0699_182 = 0.549;
    parameter Real kms_s_1434_br_0699_182 = 0.549;
    parameter Real Keq_r_0701_183 = 0.552982;
    parameter Real Vmax_r_0701_183 = 0.141075;
    parameter Real kmp_s_0605r_0701_183 = 0.549;
    parameter Real kmp_s_1207r_0701_183 = 0.549;
    parameter Real kmp_s_1293r_0701_183 = 0.549;
    parameter Real kms_s_0446r_0701_183 = 1.09208;
    parameter Real kms_s_0933r_0701_183 = 0.549;
    parameter Real kms_s_1434_br_0701_183 = 0.549;
    parameter Real Keq_r_0702_184 = 0.6039;
    parameter Real Vmax_r_0702_184 = 0.439228;
    parameter Real kmp_s_0309r_0702_184 = 0.549;
    parameter Real kmp_s_0763_br_0702_184 = 0.549;
    parameter Real kmp_s_0933r_0702_184 = 0.549;
    parameter Real kms_s_0328r_0702_184 = 0.549;
    parameter Real kms_s_0917r_0702_184 = 0.549;
    parameter Real Keq_r_0707_185 = 1.1;
    parameter Real Vmax_r_0707_185 = 1.2166;
    parameter Real kmp_s_0015r_0707_185 = 0.549;
    parameter Real kmp_s_1096r_0707_185 = 0.549;
    parameter Real kms_s_0307r_0707_185 = 0.549;
    parameter Real kms_s_1091r_0707_185 = 0.549;
    parameter Real Keq_r_0712_186 = 0.6039;
    parameter Real Vmax_r_0712_186 = 0.275879;
    parameter Real kmp_s_0022r_0712_186 = 0.549;
    parameter Real kmp_s_0481r_0712_186 = 0.549;
    parameter Real kmp_s_0763_br_0712_186 = 0.549;
    parameter Real kms_s_0031r_0712_186 = 0.549;
    parameter Real kms_s_0521r_0712_186 = 0.549;
    parameter Real Keq_r_0715_187 = 0.950614;
    parameter Real Vmax_r_0715_187 = 0.476517;
    parameter Real kmp_s_0400r_0715_187 = 1.71907;
    parameter Real kmp_s_0470r_0715_187 = 1.0;
    parameter Real kmp_s_0850r_0715_187 = 0.549;
    parameter Real kmp_s_1207r_0715_187 = 0.549;
    parameter Real kms_s_0021r_0715_187 = 0.549;
    parameter Real kms_s_0446r_0715_187 = 1.09208;
    parameter Real Keq_r_0719_188 = 0.6039;
    parameter Real Vmax_r_0719_188 = 3.30329;
    parameter Real kmp_s_0247r_0719_188 = 0.549;
    parameter Real kmp_s_0763_br_0719_188 = 0.549;
    parameter Real kmp_s_1096r_0719_188 = 0.549;
    parameter Real kms_s_0046r_0719_188 = 0.549;
    parameter Real kms_s_1091r_0719_188 = 0.549;
    parameter Real Keq_r_0720_189 = 0.6039;
    parameter Real Vmax_r_0720_189 = 3.30329;
    parameter Real kmp_s_0257r_0720_189 = 0.549;
    parameter Real kmp_s_0763_br_0720_189 = 0.549;
    parameter Real kmp_s_1096r_0720_189 = 0.549;
    parameter Real kms_s_0052r_0720_189 = 0.549;
    parameter Real kms_s_1091r_0720_189 = 0.549;
    parameter Real Keq_r_0721_190 = 0.6039;
    parameter Real Vmax_r_0721_190 = 3.30329;
    parameter Real kmp_s_0254r_0721_190 = 0.549;
    parameter Real kmp_s_0763_br_0721_190 = 0.549;
    parameter Real kmp_s_1096r_0721_190 = 0.549;
    parameter Real kms_s_0234r_0721_190 = 0.549;
    parameter Real kms_s_1091r_0721_190 = 0.549;
    parameter Real Keq_r_0722_191 = 0.6039;
    parameter Real Vmax_r_0722_191 = 3.30329;
    parameter Real kmp_s_0261r_0722_191 = 0.549;
    parameter Real kmp_s_0763_br_0722_191 = 0.549;
    parameter Real kmp_s_1096r_0722_191 = 0.549;
    parameter Real kms_s_0055r_0722_191 = 0.549;
    parameter Real kms_s_1091r_0722_191 = 0.549;
    parameter Real Keq_r_0723_192 = 2.00364;
    parameter Real Vmax_r_0723_192 = 0.00127051;
    parameter Real kmp_s_1013r_0723_192 = 0.549;
    parameter Real kms_s_0710r_0723_192 = 0.549;
    parameter Real kms_s_0828r_0723_192 = 0.549;
    parameter Real Keq_r_0725_193 = 1.1;
    parameter Real Vmax_r_0725_193 = 0.006545;
    parameter Real kmp_s_1020r_0725_193 = 0.549;
    parameter Real kmp_s_1207r_0725_193 = 0.549;
    parameter Real kms_s_0128r_0725_193 = 0.549;
    parameter Real kms_s_1434_br_0725_193 = 0.549;
    parameter Real Keq_r_0726_194 = 1.1;
    parameter Real Vmax_r_0726_194 = 0.004323;
    parameter Real kmp_s_0128r_0726_194 = 0.549;
    parameter Real kms_s_0410r_0726_194 = 0.549;
    parameter Real Keq_r_0728_195 = 1.1;
    parameter Real Vmax_r_0728_195 = 1.2441;
    parameter Real kmp_s_0149r_0728_195 = 0.549;
    parameter Real kmp_s_1091r_0728_195 = 0.549;
    parameter Real kmp_s_1207r_0728_195 = 0.549;
    parameter Real kms_s_0763_br_0728_195 = 0.549;
    parameter Real kms_s_1070r_0728_195 = 0.549;
    parameter Real kms_s_1096r_0728_195 = 0.549;
    parameter Real Keq_r_0765_196 = 2.00364;
    parameter Real Vmax_r_0765_196 = 1.0241;
    parameter Real kmp_s_0181r_0765_196 = 0.549;
    parameter Real kmp_s_0470r_0765_196 = 1.0;
    parameter Real kms_s_0180r_0765_196 = 0.549;
    parameter Real kms_s_0763_br_0765_196 = 0.549;
    parameter Real Keq_r_0771_197 = 0.698801;
    parameter Real Vmax_r_0771_197 = 0.014553;
    parameter Real kmp_s_0446r_0771_197 = 1.09208;
    parameter Real kmp_s_0481r_0771_197 = 0.549;
    parameter Real kms_s_0400r_0771_197 = 1.71907;
    parameter Real kms_s_0521r_0771_197 = 0.549;
    parameter Real Keq_r_0779_198 = 1.73154;
    parameter Real Vmax_r_0779_198 = 7.3843;
    parameter Real kmp_s_0400r_0779_198 = 1.71907;
    parameter Real kmp_s_1430r_0779_198 = 0.549;
    parameter Real kms_s_0446r_0779_198 = 1.09208;
    parameter Real kms_s_1411r_0779_198 = 0.549;
    parameter Real Keq_r_0783_199 = 0.6039;
    parameter Real Vmax_r_0783_199 = 0.624358;
    parameter Real kmp_s_0369r_0783_199 = 0.549;
    parameter Real kmp_s_0763_br_0783_199 = 0.549;
    parameter Real kmp_s_0917r_0783_199 = 0.549;
    parameter Real kms_s_0805r_0783_199 = 0.549;
    parameter Real kms_s_1117r_0783_199 = 0.549;
    parameter Real Keq_r_0789_200 = 0.6039;
    parameter Real Vmax_r_0789_200 = 0.912336;
    parameter Real kmp_s_0763_br_0789_200 = 0.549;
    parameter Real kmp_s_0887r_0789_200 = 0.549;
    parameter Real kmp_s_1207r_0789_200 = 0.549;
    parameter Real kms_s_0469r_0789_200 = 0.549;
    parameter Real kms_s_1151r_0789_200 = 0.549;
    parameter Real Keq_r_0791_201 = 1.1;
    parameter Real Vmax_r_0791_201 = 0.58058;
    parameter Real kmp_s_1071r_0791_201 = 0.549;
    parameter Real kmp_s_1151r_0791_201 = 0.549;
    parameter Real kms_s_0899r_0791_201 = 0.549;
    parameter Real kms_s_1051r_0791_201 = 0.549;
    parameter Real Keq_r_0793_202 = 1.1;
    parameter Real Vmax_r_0793_202 = 0.52591;
    parameter Real kmp_s_0605r_0793_202 = 0.549;
    parameter Real kmp_s_1155r_0793_202 = 0.549;
    parameter Real kms_s_0331r_0793_202 = 0.549;
    parameter Real kms_s_1154r_0793_202 = 0.549;
    parameter Real Keq_r_0794_203 = 2.00364;
    parameter Real Vmax_r_0794_203 = 0.52591;
    parameter Real kmp_s_0470r_0794_203 = 1.0;
    parameter Real kmp_s_1417r_0794_203 = 0.549;
    parameter Real kms_s_0763_br_0794_203 = 0.549;
    parameter Real kms_s_1155r_0794_203 = 0.549;
    parameter Real Keq_r_0825_204 = 1.1;
    parameter Real Vmax_r_0825_204 = 0.48895;
    parameter Real kmp_s_0185r_0825_204 = 0.549;
    parameter Real kmp_s_0936r_0825_204 = 0.549;
    parameter Real kms_s_0859r_0825_204 = 0.549;
    parameter Real kms_s_0899r_0825_204 = 0.549;
    parameter Real Keq_r_0831_205 = 0.6039;
    parameter Real Vmax_r_0831_205 = 0.0193599;
    parameter Real kmp_s_0763_br_0831_205 = 0.549;
    parameter Real kmp_s_1226r_0831_205 = 0.549;
    parameter Real kmp_s_1290r_0831_205 = 0.549;
    parameter Real kms_s_1233r_0831_205 = 0.549;
    parameter Real kms_s_1293r_0831_205 = 0.549;
    parameter Real Keq_r_0847_206 = 0.331541;
    parameter Real Vmax_r_0847_206 = 0.010285;
    parameter Real kmp_s_0090r_0847_206 = 0.549;
    parameter Real kmp_s_0511r_0847_206 = 0.549;
    parameter Real kmp_s_0763_br_0847_206 = 0.549;
    parameter Real kms_s_0485r_0847_206 = 0.549;
    parameter Real kms_s_1020r_0847_206 = 0.549;
    parameter Real Keq_r_0850_207 = 1.1;
    parameter Real Vmax_r_0850_207 = 0.0109449;
    parameter Real kmp_s_0470r_0850_207 = 1.0;
    parameter Real kmp_s_1233r_0850_207 = 0.549;
    parameter Real kms_s_1219r_0850_207 = 0.549;
    parameter Real Keq_r_0853_208 = 0.331541;
    parameter Real Vmax_r_0853_208 = 0.0266199;
    parameter Real kmp_s_0511r_0853_208 = 0.549;
    parameter Real kmp_s_0763_br_0853_208 = 0.549;
    parameter Real kmp_s_1219r_0853_208 = 0.549;
    parameter Real kms_s_0485r_0853_208 = 0.549;
    parameter Real kms_s_0943r_0853_208 = 0.549;
    parameter Real Keq_r_0856_209 = 0.182016;
    parameter Real Vmax_r_0856_209 = 1.07843;
    parameter Real kmp_s_0397r_0856_209 = 0.549;
    parameter Real kmp_s_0763_br_0856_209 = 0.549;
    parameter Real kmp_s_1349r_0856_209 = 0.549;
    parameter Real kmp_s_1517r_0856_209 = 0.549;
    parameter Real kms_s_0206r_0856_209 = 0.549;
    parameter Real kms_s_1521r_0856_209 = 0.549;
    parameter Real Vmax_r_0859_210 = 84.3466;
    parameter Real kms_s_0446r_0859_210 = 1.09208;
    parameter Real kms_s_0539r_0859_210 = 0.104555;
    parameter Real Keq_r_0859_210 = 12.2086;
    parameter Real kmp_s_0400r_0859_210 = 1.71907;
    parameter Real kmp_s_0537r_0859_210 = 1.34278;
    parameter Real kmp_s_0763_br_0859_210 = 0.549;
    parameter Real kmI_s_0446mr_0859_210 = 4.0;
    parameter Real intracellular_210 = 1.0;
    parameter Real Keq_r_0861_211 = 1.1;
    parameter Real Vmax_r_0861_211 = 3.0723;
    parameter Real kmp_s_0549r_0861_211 = 0.549;
    parameter Real kms_s_0410r_0861_211 = 0.549;
    parameter Real Vmax_r_0865_212 = 136.563;
    parameter Real kms_s_0265r_0865_212 = 0.000108759;
    parameter Real kms_s_0400r_0865_212 = 1.71907;
    parameter Real Keq_r_0865_212 = 2334.85;
    parameter Real kmp_s_0264r_0865_212 = 0.363388;
    parameter Real kmp_s_0446r_0865_212 = 1.09208;
    parameter Real kmI_s_0446mr_0865_212 = 0.525;
    parameter Real intracellular_212 = 1.0;
    parameter Real Vmax_r_0866_213 = 5.1151;
    parameter Real kms_s_0264r_0866_213 = 0.363388;
    parameter Real Keq_r_0866_213 = 6.7;
    parameter Real kmp_s_0193r_0866_213 = 0.0515066;
    parameter Real kmI_s_0193mr_0866_213 = 0.8;
    parameter Real Keq_r_0873_214 = 1.1;
    parameter Real Vmax_r_0873_214 = 0.01232;
    parameter Real kmp_s_1228r_0873_214 = 0.549;
    parameter Real kmp_s_1290r_0873_214 = 0.549;
    parameter Real kms_s_1225r_0873_214 = 0.549;
    parameter Real kms_s_1293r_0873_214 = 0.549;
    parameter Real Keq_r_0874_215 = 0.6039;
    parameter Real Vmax_r_0874_215 = 0.0193599;
    parameter Real kmp_s_0763_br_0874_215 = 0.549;
    parameter Real kmp_s_1225r_0874_215 = 0.549;
    parameter Real kmp_s_1290r_0874_215 = 0.549;
    parameter Real kms_s_1226r_0874_215 = 0.549;
    parameter Real kms_s_1293r_0874_215 = 0.549;
    parameter Real Keq_r_0875_216 = 1.1;
    parameter Real Vmax_r_0875_216 = 1.5048;
    parameter Real kmp_s_0553r_0875_216 = 0.549;
    parameter Real kms_s_0554r_0875_216 = 0.549;
    parameter Real Keq_r_0877_217 = 1.73154;
    parameter Real Vmax_r_0877_217 = 0.17556;
    parameter Real kmp_s_0021r_0877_217 = 0.549;
    parameter Real kmp_s_0400r_0877_217 = 1.71907;
    parameter Real kms_s_0022r_0877_217 = 0.549;
    parameter Real kms_s_0446r_0877_217 = 1.09208;
    parameter Real Keq_r_0881_218 = 2.00364;
    parameter Real Vmax_r_0881_218 = 0.229351;
    parameter Real kmp_s_0079r_0881_218 = 0.549;
    parameter Real kms_s_0080r_0881_218 = 0.549;
    parameter Real kms_s_1434_br_0881_218 = 0.549;
    parameter Real Keq_r_0882_219 = 0.6039;
    parameter Real Vmax_r_0882_219 = 0.504568;
    parameter Real kmp_s_0080r_0882_219 = 0.549;
    parameter Real kmp_s_0605r_0882_219 = 0.549;
    parameter Real kmp_s_0763_br_0882_219 = 0.549;
    parameter Real kms_s_0334r_0882_219 = 0.549;
    parameter Real kms_s_1434_br_0882_219 = 0.549;
    parameter Real Keq_r_0883_220 = 0.6039;
    parameter Real Vmax_r_0883_220 = 0.46739;
    parameter Real kmp_s_0318r_0883_220 = 0.549;
    parameter Real kmp_s_0763_br_0883_220 = 0.549;
    parameter Real kms_s_0316r_0883_220 = 0.549;
    parameter Real kms_s_0470r_0883_220 = 1.0;
    parameter Real Keq_r_0884_221 = 0.286516;
    parameter Real Vmax_r_0884_221 = 1.26862;
    parameter Real kmp_s_0316r_0884_221 = 0.549;
    parameter Real kmp_s_0400r_0884_221 = 1.71907;
    parameter Real kmp_s_0763_br_0884_221 = 0.549;
    parameter Real kmp_s_1207r_0884_221 = 0.549;
    parameter Real kms_s_0158r_0884_221 = 0.549;
    parameter Real kms_s_0446r_0884_221 = 1.09208;
    parameter Real Keq_r_0885_222 = 1.1;
    parameter Real Vmax_r_0885_222 = 0.7854;
    parameter Real kmp_s_0309r_0885_222 = 0.549;
    parameter Real kmp_s_0325r_0885_222 = 0.549;
    parameter Real kms_s_0122r_0885_222 = 0.549;
    parameter Real kms_s_0317r_0885_222 = 0.549;
    parameter Real Keq_r_0886_223 = 0.950614;
    parameter Real Vmax_r_0886_223 = 1.53571;
    parameter Real kmp_s_0009r_0886_223 = 0.549;
    parameter Real kmp_s_0400r_0886_223 = 1.71907;
    parameter Real kmp_s_0763_br_0886_223 = 0.549;
    parameter Real kmp_s_1207r_0886_223 = 0.549;
    parameter Real kms_s_0318r_0886_223 = 0.549;
    parameter Real kms_s_0446r_0886_223 = 1.09208;
    parameter Real kms_s_0881r_0886_223 = 0.549;
    parameter Real Keq_r_0887_224 = 1.1;
    parameter Real Vmax_r_0887_224 = 0.05115;
    parameter Real kmp_s_0078r_0887_224 = 0.549;
    parameter Real kms_s_1066r_0887_224 = 0.549;
    parameter Real Keq_r_0888_225 = 0.950614;
    parameter Real Vmax_r_0888_225 = 3.13818;
    parameter Real kmp_s_0158r_0888_225 = 0.549;
    parameter Real kmp_s_0400r_0888_225 = 1.71907;
    parameter Real kmp_s_0763_br_0888_225 = 0.549;
    parameter Real kmp_s_0899r_0888_225 = 0.549;
    parameter Real kmp_s_1207r_0888_225 = 0.549;
    parameter Real kms_s_0446r_0888_225 = 1.09208;
    parameter Real kms_s_0907r_0888_225 = 0.549;
    parameter Real kms_s_1052r_0888_225 = 0.549;
    parameter Real kms_s_1434_br_0888_225 = 0.549;
    parameter Real Keq_r_0889_226 = 0.6039;
    parameter Real Vmax_r_0889_226 = 0.734467;
    parameter Real kmp_s_0309r_0889_226 = 0.549;
    parameter Real kmp_s_0763_br_0889_226 = 0.549;
    parameter Real kmp_s_1052r_0889_226 = 0.549;
    parameter Real kms_s_0122r_0889_226 = 0.549;
    parameter Real kms_s_1048r_0889_226 = 0.549;
    parameter Real Keq_r_0890_227 = 0.950614;
    parameter Real Vmax_r_0890_227 = 1.53571;
    parameter Real kmp_s_0400r_0890_227 = 1.71907;
    parameter Real kmp_s_0763_br_0890_227 = 0.549;
    parameter Real kmp_s_1048r_0890_227 = 0.549;
    parameter Real kmp_s_1207r_0890_227 = 0.549;
    parameter Real kms_s_0333r_0890_227 = 0.549;
    parameter Real kms_s_0446r_0890_227 = 1.09208;
    parameter Real kms_s_0740r_0890_227 = 0.549;
    parameter Real Keq_r_0891_228 = 0.696514;
    parameter Real Vmax_r_0891_228 = 2.25059;
    parameter Real kmp_s_0331r_0891_228 = 0.549;
    parameter Real kmp_s_0434r_0891_228 = 1.25956;
    parameter Real kmp_s_0763_br_0891_228 = 0.549;
    parameter Real kms_s_0427r_0891_228 = 0.549;
    parameter Real kms_s_0446r_0891_228 = 1.09208;
    parameter Real Keq_r_0911_229 = 1.1;
    parameter Real Vmax_r_0911_229 = 0.768347;
    parameter Real kmp_s_0470r_0911_229 = 1.0;
    parameter Real kmp_s_0859r_0911_229 = 0.549;
    parameter Real kmp_s_1434_br_0911_229 = 0.549;
    parameter Real kms_s_0763_br_0911_229 = 0.549;
    parameter Real kms_s_1258r_0911_229 = 0.549;
    parameter Real Keq_r_0913_230 = 1.1;
    parameter Real Vmax_r_0913_230 = 0.648558;
    parameter Real kmp_s_0209r_0913_230 = 0.549;
    parameter Real kmp_s_0470r_0913_230 = 1.0;
    parameter Real kmp_s_1096r_0913_230 = 0.549;
    parameter Real kms_s_1091r_0913_230 = 0.549;
    parameter Real kms_s_1258r_0913_230 = 0.549;
    parameter Real Keq_r_0934_231 = 1.1;
    parameter Real Vmax_r_0934_231 = 0.00385;
    parameter Real kmp_s_0320r_0934_231 = 0.549;
    parameter Real kmp_s_1207r_0934_231 = 0.549;
    parameter Real kms_s_0319r_0934_231 = 0.549;
    parameter Real kms_s_1434_br_0934_231 = 0.549;
    parameter Real Keq_r_0936_232 = 3.64962;
    parameter Real Vmax_r_0936_232 = 0.863944;
    parameter Real kmp_s_0939r_0936_232 = 0.549;
    parameter Real kmp_s_1091r_0936_232 = 0.549;
    parameter Real kms_s_0120r_0936_232 = 0.549;
    parameter Real kms_s_0763_br_0936_232 = 0.549;
    parameter Real kms_s_1096r_0936_232 = 0.549;
    parameter Real Keq_r_0937_233 = 8.61335;
    parameter Real Vmax_r_0937_233 = 62.2377;
    parameter Real kmp_s_0400r_0937_233 = 1.71907;
    parameter Real kmp_s_0763_br_0937_233 = 0.549;
    parameter Real kmp_s_1156r_0937_233 = 0.549;
    parameter Real kmp_s_1207r_0937_233 = 0.549;
    parameter Real kms_s_0446r_0937_233 = 1.09208;
    parameter Real kms_s_0458r_0937_233 = 0.549;
    parameter Real kms_s_1277r_0937_233 = 0.0605905;
    parameter Real Vmax_r_0938_234 = 77.767;
    parameter Real kms_s_0763_br_0938_234 = 0.549;
    parameter Real kms_s_1277r_0938_234 = 0.0605905;
    parameter Real Keq_r_0938_234 = 3.97167;
    parameter Real kmp_s_0366r_0938_234 = 0.120104;
    parameter Real kmp_s_0470r_0938_234 = 1.0;
    parameter Real kmI_s_1277mr_0938_234 = 2.75;
    parameter Real Keq_r_0940_235 = 1.04749;
    parameter Real Vmax_r_0940_235 = 9.4545;
    parameter Real kmp_s_0380r_0940_235 = 0.549;
    parameter Real kmp_s_0470r_0940_235 = 1.0;
    parameter Real kmp_s_1087r_0940_235 = 0.0867353;
    parameter Real kms_s_0514r_0940_235 = 0.549;
    parameter Real kms_s_1082r_0940_235 = 1.50326;
    parameter Real kms_s_1277r_0940_235 = 0.0605905;
    parameter Real Keq_r_0941_236 = 2.8449;
    parameter Real Vmax_r_0941_236 = 146.411;
    parameter Real kmp_s_0446r_0941_236 = 1.09208;
    parameter Real kmp_s_1277r_0941_236 = 0.0605905;
    parameter Real kms_s_0400r_0941_236 = 1.71907;
    parameter Real kms_s_0763_br_0941_236 = 0.549;
    parameter Real kms_s_1243r_0941_236 = 0.0271093;
    parameter Real Keq_r_0948_237 = 0.331541;
    parameter Real Vmax_r_0948_237 = 0.0120878;
    parameter Real kmp_s_0335r_0948_237 = 0.549;
    parameter Real kmp_s_1207r_0948_237 = 0.549;
    parameter Real kmp_s_1434_br_0948_237 = 0.549;
    parameter Real kms_s_0163r_0948_237 = 0.549;
    parameter Real kms_s_0320r_0948_237 = 0.549;
    parameter Real Keq_r_0949_238 = 1.1;
    parameter Real Vmax_r_0949_238 = 0.00274998;
    parameter Real kmp_s_0320r_0949_238 = 0.549;
    parameter Real kmp_s_1283r_0949_238 = 0.549;
    parameter Real kms_s_0335r_0949_238 = 0.549;
    parameter Real Keq_r_0951_239 = 0.192861;
    parameter Real Vmax_r_0951_239 = 0.0120515;
    parameter Real kmp_s_0562r_0951_239 = 0.549;
    parameter Real kmp_s_1434_br_0951_239 = 0.549;
    parameter Real kmp_s_1517r_0951_239 = 0.549;
    parameter Real kms_s_0400r_0951_239 = 1.71907;
    parameter Real kms_s_1521r_0951_239 = 0.549;
    parameter Real Keq_r_0955_240 = 0.6039;
    parameter Real Vmax_r_0955_240 = 0.0163349;
    parameter Real kmp_s_0591r_0955_240 = 0.549;
    parameter Real kmp_s_1434_br_0955_240 = 0.549;
    parameter Real kmp_s_1517r_0955_240 = 0.549;
    parameter Real kms_s_0706r_0955_240 = 0.549;
    parameter Real kms_s_1521r_0955_240 = 0.549;
    parameter Real Keq_r_0957_241 = 0.6039;
    parameter Real Vmax_r_0957_241 = 0.0404138;
    parameter Real kmp_s_0622r_0957_241 = 0.549;
    parameter Real kmp_s_1434_br_0957_241 = 0.549;
    parameter Real kmp_s_1517r_0957_241 = 0.549;
    parameter Real kms_s_1411r_0957_241 = 0.549;
    parameter Real kms_s_1521r_0957_241 = 0.549;
    parameter Real Keq_r_0959_242 = 0.303587;
    parameter Real Vmax_r_0959_242 = 0.0120516;
    parameter Real kmp_s_0566r_0959_242 = 0.549;
    parameter Real kmp_s_1434_br_0959_242 = 0.549;
    parameter Real kmp_s_1517r_0959_242 = 0.549;
    parameter Real kms_s_0446r_0959_242 = 1.09208;
    parameter Real kms_s_1521r_0959_242 = 0.549;
    parameter Real Keq_r_0963_243 = 1.1;
    parameter Real Vmax_r_0963_243 = 0.5544;
    parameter Real kmp_s_0427r_0963_243 = 0.549;
    parameter Real kms_s_0557r_0963_243 = 0.549;
    parameter Real Keq_r_0965_244 = 1.1;
    parameter Real Vmax_r_0965_244 = 0.5577;
    parameter Real kmp_s_0557r_0965_244 = 0.549;
    parameter Real kms_s_0561r_0965_244 = 0.549;
    parameter Real Keq_r_0967_245 = 0.6039;
    parameter Real Vmax_r_0967_245 = 0.00141569;
    parameter Real kmp_s_0669r_0967_245 = 0.549;
    parameter Real kmp_s_0763_br_0967_245 = 0.549;
    parameter Real kmp_s_1290r_0967_245 = 0.549;
    parameter Real kms_s_1293r_0967_245 = 0.549;
    parameter Real kms_s_1447r_0967_245 = 0.549;
    parameter Real Keq_r_0969_246 = 0.0348439;
    parameter Real Vmax_r_0969_246 = 3.3649;
    parameter Real kmp_s_0185r_0969_246 = 0.549;
    parameter Real kmp_s_0763_br_0969_246 = 0.549;
    parameter Real kmp_s_0929r_0969_246 = 0.549;
    parameter Real kmp_s_1087r_0969_246 = 0.0867353;
    parameter Real kms_s_0942r_0969_246 = 0.549;
    parameter Real kms_s_1082r_0969_246 = 1.50326;
    parameter Real kms_s_1434_br_0969_246 = 0.549;
    parameter Real Keq_r_0970_247 = 2.00364;
    parameter Real Vmax_r_0970_247 = 3.3649;
    parameter Real kmp_s_0942r_0970_247 = 0.549;
    parameter Real kmp_s_1091r_0970_247 = 0.549;
    parameter Real kmp_s_1434_br_0970_247 = 0.549;
    parameter Real kms_s_0763_br_0970_247 = 0.549;
    parameter Real kms_s_0867r_0970_247 = 0.549;
    parameter Real kms_s_0899r_0970_247 = 0.549;
    parameter Real kms_s_1096r_0970_247 = 0.549;
    parameter Real Keq_r_0972_248 = 1.1;
    parameter Real Vmax_r_0972_248 = 0.00279509;
    parameter Real kmp_s_0218r_0972_248 = 0.549;
    parameter Real kmp_s_0470r_0972_248 = 1.0;
    parameter Real kmp_s_0514r_0972_248 = 0.549;
    parameter Real kms_s_0943r_0972_248 = 0.549;
    parameter Real kms_s_1187r_0972_248 = 0.549;
    parameter Real Keq_r_0976_249 = 2.00364;
    parameter Real Vmax_r_0976_249 = 1.60931;
    parameter Real kmp_s_1091r_0976_249 = 0.549;
    parameter Real kmp_s_1306r_0976_249 = 0.549;
    parameter Real kms_s_0217r_0976_249 = 0.549;
    parameter Real kms_s_0763_br_0976_249 = 0.549;
    parameter Real kms_s_1096r_0976_249 = 0.549;
    parameter Real Keq_r_0977_250 = 0.950614;
    parameter Real Vmax_r_0977_250 = 1.60929;
    parameter Real kmp_s_0267r_0977_250 = 0.549;
    parameter Real kmp_s_0400r_0977_250 = 1.71907;
    parameter Real kmp_s_0763_br_0977_250 = 0.549;
    parameter Real kms_s_0446r_0977_250 = 1.09208;
    parameter Real kms_s_1306r_0977_250 = 0.549;
    parameter Real Keq_r_0991_251 = 34.7263;
    parameter Real Vmax_r_0991_251 = 0.0961402;
    parameter Real kmp_s_0040r_0991_251 = 0.549;
    parameter Real kmp_s_1082r_0991_251 = 1.50326;
    parameter Real kmp_s_1434_br_0991_251 = 0.549;
    parameter Real kms_s_0763_br_0991_251 = 0.549;
    parameter Real kms_s_1087r_0991_251 = 0.0867353;
    parameter Real kms_s_1160r_0991_251 = 0.549;
    parameter Real kms_s_1327r_0991_251 = 0.549;
    parameter Real Keq_r_0993_252 = 1.1;
    parameter Real Vmax_r_0993_252 = 0.0627;
    parameter Real kmp_s_0605r_0993_252 = 0.549;
    parameter Real kmp_s_1091r_0993_252 = 0.549;
    parameter Real kmp_s_1327r_0993_252 = 0.549;
    parameter Real kms_s_0195r_0993_252 = 0.549;
    parameter Real kms_s_0763_br_0993_252 = 0.549;
    parameter Real kms_s_1096r_0993_252 = 0.549;
    parameter Real Keq_r_0995_253 = 1.1;
    parameter Real Vmax_r_0995_253 = 0.0034727;
    parameter Real kmp_s_0641r_0995_253 = 0.549;
    parameter Real kmp_s_1434_br_0995_253 = 0.549;
    parameter Real kms_s_0635r_0995_253 = 0.549;
    parameter Real kms_s_0663r_0995_253 = 0.549;
    parameter Real Keq_r_1003_254 = 1.73154;
    parameter Real Vmax_r_1003_254 = 0.13134;
    parameter Real kmp_s_0400r_1003_254 = 1.71907;
    parameter Real kmp_s_1207r_1003_254 = 0.549;
    parameter Real kmp_s_1342r_1003_254 = 0.549;
    parameter Real kms_s_0446r_1003_254 = 1.09208;
    parameter Real kms_s_0514r_1003_254 = 0.549;
    parameter Real kms_s_1338r_1003_254 = 0.549;
    parameter Real Keq_r_1007_255 = 0.639881;
    parameter Real Vmax_r_1007_255 = 0.624362;
    parameter Real kmp_s_0304r_1007_255 = 0.549;
    parameter Real kmp_s_1207r_1007_255 = 0.549;
    parameter Real kms_s_0400r_1007_255 = 1.71907;
    parameter Real kms_s_0763_br_1007_255 = 0.549;
    parameter Real kms_s_1347r_1007_255 = 0.549;
    parameter Real Keq_r_1008_256 = 3.64962;
    parameter Real Vmax_r_1008_256 = 0.851402;
    parameter Real kmp_s_0805r_1008_256 = 0.549;
    parameter Real kmp_s_1091r_1008_256 = 0.549;
    parameter Real kmp_s_1434_br_1008_256 = 0.549;
    parameter Real kms_s_0763_br_1008_256 = 0.549;
    parameter Real kms_s_1096r_1008_256 = 0.549;
    parameter Real kms_s_1349r_1008_256 = 0.549;
    parameter Real Keq_r_1024_257 = 2.00364;
    parameter Real Vmax_r_1024_257 = 0.705433;
    parameter Real kmp_s_1091r_1024_257 = 0.549;
    parameter Real kmp_s_1521r_1024_257 = 0.549;
    parameter Real kms_s_0763_br_1024_257 = 0.549;
    parameter Real kms_s_1096r_1024_257 = 0.549;
    parameter Real kms_s_1517r_1024_257 = 0.549;
    parameter Real Keq_r_1026_258 = 0.0725309;
    parameter Real Vmax_r_1026_258 = 3.18448;
    parameter Real kmp_s_0366r_1026_258 = 0.120104;
    parameter Real kmp_s_0740r_1026_258 = 0.549;
    parameter Real kms_s_0949r_1026_258 = 1.0;
    parameter Real Keq_r_1027_259 = 2.00364;
    parameter Real Vmax_r_1027_259 = 5.5748;
    parameter Real kmp_s_0949r_1027_259 = 1.0;
    parameter Real kmp_s_1207r_1027_259 = 0.549;
    parameter Real kms_s_1122r_1027_259 = 0.549;
    parameter Real kms_s_1434_br_1027_259 = 0.549;
    parameter Real Keq_r_1032_260 = 1.1;
    parameter Real Vmax_r_1032_260 = 0.015323;
    parameter Real kmp_s_0601r_1032_260 = 0.549;
    parameter Real kmp_s_0619r_1032_260 = 0.549;
    parameter Real kms_s_0307r_1032_260 = 0.549;
    parameter Real kms_s_0624r_1032_260 = 0.549;
    parameter Real Keq_r_1035_261 = 0.459088;
    parameter Real Vmax_r_1035_261 = 0.14014;
    parameter Real kmp_s_0731r_1035_261 = 0.0436363;
    parameter Real kmp_s_1304r_1035_261 = 0.549;
    parameter Real kms_s_0533r_1035_261 = 0.549;
    parameter Real kms_s_0539r_1035_261 = 0.104555;
    parameter Real Keq_r_1036_262 = 13.8394;
    parameter Real Vmax_r_1036_262 = 0.14014;
    parameter Real kmp_s_0427r_1036_262 = 0.549;
    parameter Real kmp_s_0561r_1036_262 = 0.549;
    parameter Real kms_s_0731r_1036_262 = 0.0436363;
    parameter Real kms_s_1304r_1036_262 = 0.549;
    parameter Real Keq_r_1037_263 = 72.6682;
    parameter Real Vmax_r_1037_263 = 1.1627;
    parameter Real kmp_s_0533r_1037_263 = 0.549;
    parameter Real kmp_s_0561r_1037_263 = 0.549;
    parameter Real kms_s_0539r_1037_263 = 0.104555;
    parameter Real kms_s_0731r_1037_263 = 0.0436363;
    parameter Real Keq_r_1038_264 = 1.1;
    parameter Real Vmax_r_1038_264 = 0.1001;
    parameter Real kmp_s_0416r_1038_264 = 0.549;
    parameter Real kmp_s_1207r_1038_264 = 0.549;
    parameter Real kms_s_0419r_1038_264 = 0.549;
    parameter Real kms_s_1434_br_1038_264 = 0.549;
    parameter Real Keq_r_1040_265 = 1.1;
    parameter Real Vmax_r_1040_265 = 0.0043505;
    parameter Real kmp_s_0596r_1040_265 = 0.549;
    parameter Real kmp_s_0663r_1040_265 = 0.549;
    parameter Real kms_s_1399r_1040_265 = 0.549;
    parameter Real kms_s_1434_br_1040_265 = 0.549;
    parameter Real Keq_r_1041_266 = 0.0797509;
    parameter Real Vmax_r_1041_266 = 20.559;
    parameter Real kmp_s_0731r_1041_266 = 0.0436363;
    parameter Real kms_s_0735r_1041_266 = 0.601873;
    parameter Real Keq_r_1042_267 = 0.0874316;
    parameter Real Vmax_r_1042_267 = 0.187549;
    parameter Real kmp_s_0731r_1042_267 = 0.0436363;
    parameter Real kmp_s_0952r_1042_267 = 1.0;
    parameter Real kmp_s_1434_br_1042_267 = 0.549;
    parameter Real kms_s_0088r_1042_267 = 0.549;
    parameter Real kms_s_0943r_1042_267 = 0.549;
    parameter Real Keq_r_1050_268 = 1.1;
    parameter Real Vmax_r_1050_268 = 0.41272;
    parameter Real kmp_s_0185r_1050_268 = 0.549;
    parameter Real kmp_s_0955r_1050_268 = 0.549;
    parameter Real kms_s_0209r_1050_268 = 0.549;
    parameter Real kms_s_0899r_1050_268 = 0.549;
    parameter Real Keq_r_1059_269 = 1.73154;
    parameter Real Vmax_r_1059_269 = 0.23947;
    parameter Real kmp_s_0400r_1059_269 = 1.71907;
    parameter Real kmp_s_1411r_1059_269 = 0.549;
    parameter Real kms_s_0446r_1059_269 = 1.09208;
    parameter Real kms_s_1417r_1059_269 = 0.549;
    parameter Real Keq_r_1066_270 = 0.698801;
    parameter Real Vmax_r_1066_270 = 0.025718;
    parameter Real kmp_s_0446r_1066_270 = 1.09208;
    parameter Real kmp_s_0624r_1066_270 = 0.549;
    parameter Real kms_s_0400r_1066_270 = 1.71907;
    parameter Real kms_s_0622r_1066_270 = 0.549;
    parameter Real Keq_r_1072_271 = 2.00364;
    parameter Real Vmax_r_1072_271 = 11.2651;
    parameter Real kmp_s_0605r_1072_271 = 0.549;
    parameter Real kmp_s_1415r_1072_271 = 0.549;
    parameter Real kms_s_0549r_1072_271 = 0.549;
    parameter Real kms_s_0763_br_1072_271 = 0.549;
    parameter Real kms_s_1430r_1072_271 = 0.549;
    parameter Real Keq_r_1073_272 = 2.00364;
    parameter Real Vmax_r_1073_272 = 1.1011;
    parameter Real kmp_s_0185r_1073_272 = 0.549;
    parameter Real kmp_s_0960r_1073_272 = 1.0;
    parameter Real kms_s_0238r_1073_272 = 0.549;
    parameter Real kms_s_0899r_1073_272 = 0.549;
    parameter Real Keq_r_1157_273 = 1.0;
    parameter Real Vmax_r_1157_273 = 0.964941;
    parameter Real kmp_s_0430r_1157_273 = 0.549;
    parameter Real kms_s_0431_br_1157_273 = 38.0;
    parameter Real Keq_r_1194_274 = 1.0;
    parameter Real Vmax_r_1194_274 = 2.37902;
    parameter Real kmp_s_0472_br_1194_274 = 1e-05;
    parameter Real kms_s_0470r_1194_274 = 1.0;
    parameter Real Keq_r_1247_275 = 1.0;
    parameter Real Vmax_r_1247_275 = 4.81765;
    parameter Real kmp_s_0651_br_1247_275 = 24.5;
    parameter Real kms_s_0650r_1247_275 = 50.0;
    parameter Real Keq_r_1293_276 = 1.0;
    parameter Real Vmax_r_1293_276 = 2.36101;
    parameter Real kmp_s_0545r_1293_276 = 0.0987587;
    parameter Real kms_s_0547_br_1293_276 = 11.1;
    parameter Real Keq_r_1435_277 = 1.0;
    parameter Real Vmax_r_1435_277 = 0.0232306;
    parameter Real kmp_s_1160r_1435_277 = 0.549;
    parameter Real kms_s_1162_br_1435_277 = 24.5;
    parameter Real Keq_r_1461_278 = 1.0;
    parameter Real Vmax_r_1461_278 = 0.0925906;
    parameter Real kmp_s_0763_br_1461_278 = 0.549;
    parameter Real kmp_s_1207r_1461_278 = 0.549;
    parameter Real kms_s_0766_br_1461_278 = 0.1;
    parameter Real kms_s_1209_br_1461_278 = 24.5;
    parameter Real Keq_r_1503_279 = 1.0;
    parameter Real Vmax_r_1503_279 = 0.840147;
    parameter Real kmp_s_0766_br_1503_279 = 0.1;
    parameter Real kmp_s_1339_br_1503_279 = 1.0;
    parameter Real kms_s_0763_br_1503_279 = 0.549;
    parameter Real kms_s_1338r_1503_279 = 0.549;
    parameter Real Keq_r_1507_280 = 1.0;
    parameter Real Vmax_r_1507_280 = 0.0190579;
    parameter Real kmp_s_1347r_1507_280 = 0.549;
    parameter Real kms_s_1348_br_1507_280 = 42.2;
    parameter Real Keq_r_1672_281 = 1.1;
    parameter Real Vmax_r_1672_281 = 0.026268;
    parameter Real kmp_s_0386r_1672_281 = 0.549;
    parameter Real kms_s_1342r_1672_281 = 0.549;
    parameter Real V_o_282 = 0.0555;
    parameter Real a_s_0001r_1812_282 = 1.1358;
    parameter Real a_s_0416r_1812_282 = 0.023371;
    parameter Real a_s_0434r_1812_282 = 0.051;
    parameter Real a_s_0446r_1812_282 = 59.276;
    parameter Real a_s_0511r_1812_282 = 0.05;
    parameter Real a_s_0564r_1812_282 = 0.003587;
    parameter Real a_s_0569r_1812_282 = 0.002432;
    parameter Real a_s_0593r_1812_282 = 0.002432;
    parameter Real a_s_0619r_1812_282 = 0.003587;
    parameter Real a_s_0740r_1812_282 = 0.32518;
    parameter Real a_s_0743r_1812_282 = 0.51852;
    parameter Real a_s_0752r_1812_282 = 0.051;
    parameter Real a_s_0863r_1812_282 = 0.35734;
    parameter Real a_s_0873r_1812_282 = 0.13579;
    parameter Real a_s_0877r_1812_282 = 0.17152;
    parameter Real a_s_0881r_1812_282 = 0.17152;
    parameter Real a_s_0889r_1812_282 = 0.04288;
    parameter Real a_s_0899r_1812_282 = 0.268;
    parameter Real a_s_0907r_1812_282 = 0.268;
    parameter Real a_s_0911r_1812_282 = 0.075041;
    parameter Real a_s_0920r_1812_282 = 0.17152;
    parameter Real a_s_0925r_1812_282 = 0.25014;
    parameter Real a_s_0929r_1812_282 = 0.23942;
    parameter Real a_s_0933r_1812_282 = 0.050027;
    parameter Real a_s_0936r_1812_282 = 0.11435;
    parameter Real a_s_0939r_1812_282 = 0.12864;
    parameter Real a_s_0943r_1812_282 = 0.25371;
    parameter Real a_s_0949r_1812_282 = 0.19653;
    parameter Real a_s_0952r_1812_282 = 0.028;
    parameter Real a_s_0955r_1812_282 = 0.096481;
    parameter Real a_s_0960r_1812_282 = 0.25728;
    parameter Real a_s_1000r_1812_282 = 1.0;
    parameter Real a_s_1011r_1812_282 = 0.82099;
    parameter Real a_s_1283r_1812_282 = 0.0009;
    parameter Real a_s_1347r_1812_282 = 0.02;
    parameter Real a_s_1417r_1812_282 = 0.067;
    parameter Real s_0001_or_1812_282 = 0.549;
    parameter Real s_0416_or_1812_282 = 0.549;
    parameter Real s_0434_or_1812_282 = 1.25956;
    parameter Real s_0446_or_1812_282 = 1.09208;
    parameter Real s_0511_or_1812_282 = 0.549;
    parameter Real s_0564_or_1812_282 = 0.549;
    parameter Real s_0569_or_1812_282 = 0.549;
    parameter Real s_0593_or_1812_282 = 0.549;
    parameter Real s_0619_or_1812_282 = 0.549;
    parameter Real s_0740_or_1812_282 = 0.549;
    parameter Real s_0743_or_1812_282 = 0.549;
    parameter Real s_0752_or_1812_282 = 0.549;
    parameter Real s_0863_or_1812_282 = 0.549;
    parameter Real s_0873_or_1812_282 = 0.549;
    parameter Real s_0877_or_1812_282 = 0.549;
    parameter Real s_0881_or_1812_282 = 0.549;
    parameter Real s_0889_or_1812_282 = 0.549;
    parameter Real s_0899_or_1812_282 = 0.549;
    parameter Real s_0907_or_1812_282 = 0.549;
    parameter Real s_0911_or_1812_282 = 0.549;
    parameter Real s_0920_or_1812_282 = 0.549;
    parameter Real s_0925_or_1812_282 = 0.549;
    parameter Real s_0929_or_1812_282 = 0.549;
    parameter Real s_0933_or_1812_282 = 0.549;
    parameter Real s_0936_or_1812_282 = 0.549;
    parameter Real s_0939_or_1812_282 = 0.549;
    parameter Real s_0943_or_1812_282 = 0.549;
    parameter Real s_0949_or_1812_282 = 1.0;
    parameter Real s_0952_or_1812_282 = 1.0;
    parameter Real s_0955_or_1812_282 = 0.549;
    parameter Real s_0960_or_1812_282 = 1.0;
    parameter Real s_1000_or_1812_282 = 0.549;
    parameter Real s_1011_or_1812_282 = 0.549;
    parameter Real s_1283_or_1812_282 = 0.549;
    parameter Real s_1347_or_1812_282 = 0.549;
    parameter Real s_1417_or_1812_282 = 0.549;
    parameter Real zero_flux_282 = 0.0;
    parameter Real V_o_283 = 0.0555;
    parameter Real a_s_0463r_1814_283 = 1.0;
    parameter Real s_0463_or_1814_283 = 0.549;
    parameter Real zero_flux_283 = 0.0;
    parameter Real V_o_284 = 0.0555;
    parameter Real a_s_0090r_1816_284 = 0.001531;
    parameter Real a_s_0124r_1816_284 = 5.6e-05;
    parameter Real a_s_0627r_1816_284 = 9.6e-05;
    parameter Real a_s_0632r_1816_284 = 0.000125;
    parameter Real a_s_0635r_1816_284 = 0.005603;
    parameter Real a_s_0641r_1816_284 = 0.000812;
    parameter Real a_s_0663r_1816_284 = 0.000206;
    parameter Real a_s_0669r_1816_284 = 0.000114;
    parameter Real a_s_0824r_1816_284 = 0.000417;
    parameter Real a_s_0963r_1816_284 = 3.2e-05;
    parameter Real a_s_1219r_1816_284 = 0.000373;
    parameter Real a_s_1228r_1816_284 = 0.002884;
    parameter Real a_s_1233r_1816_284 = 0.000697;
    parameter Real a_s_1399r_1816_284 = 0.000781;
    parameter Real a_s_1447r_1816_284 = 1.5e-05;
    parameter Real s_0090_or_1816_284 = 0.549;
    parameter Real s_0124_or_1816_284 = 0.549;
    parameter Real s_0627_or_1816_284 = 0.549;
    parameter Real s_0632_or_1816_284 = 0.549;
    parameter Real s_0635_or_1816_284 = 0.549;
    parameter Real s_0641_or_1816_284 = 0.549;
    parameter Real s_0663_or_1816_284 = 0.549;
    parameter Real s_0669_or_1816_284 = 0.549;
    parameter Real s_0824_or_1816_284 = 0.549;
    parameter Real s_0963_or_1816_284 = 0.549;
    parameter Real s_1219_or_1816_284 = 0.549;
    parameter Real s_1228_or_1816_284 = 0.549;
    parameter Real s_1233_or_1816_284 = 0.549;
    parameter Real s_1399_or_1816_284 = 0.549;
    parameter Real s_1447_or_1816_284 = 0.549;
    parameter Real zero_flux_284 = 0.0;
    parameter Real intracellular = 1.0;
    parameter Real extracellular = 1.0;



    Real s_0001;
    Real s_0007;
    Real s_0008;
    Real s_0009;
    Real s_0010;
    Real s_0015;
    Real s_0017;
    Real s_0018;
    Real s_0021;
    Real s_0022;
    Real s_0031;
    Real s_0040;
    Real s_0042;
    Real s_0046;
    Real s_0052;
    Real s_0055;
    Real s_0058;
    Real s_0064;
    Real s_0069;
    Real s_0078;
    Real s_0079;
    Real s_0080;
    Real s_0083;
    Real s_0088;
    Real s_0090;
    Real s_0118;
    Real s_0120;
    Real s_0122;
    Real s_0124;
    Real s_0128;
    Real s_0145;
    Real s_0146;
    Real s_0149;
    Real s_0150;
    Real s_0158;
    Real s_0163;
    Real s_0167;
    Real s_0170;
    Real s_0180;
    Real s_0181;
    Real s_0183;
    Real s_0185;
    Real s_0193;
    Real s_0195;
    Real s_0206;
    Real s_0209;
    Real s_0212;
    Real s_0215;
    Real s_0216;
    Real s_0217;
    Real s_0218;
    Real s_0225;
    Real s_0234;
    Real s_0238;
    Real s_0247;
    Real s_0254;
    Real s_0257;
    Real s_0261;
    Real s_0264;
    Real s_0265;
    Real s_0267;
    Real s_0268;
    Real s_0297;
    Real s_0301;
    Real s_0302;
    Real s_0303;
    Real s_0304;
    Real s_0306;
    Real s_0307;
    Real s_0309;
    Real s_0315;
    Real s_0316;
    Real s_0317;
    Real s_0318;
    Real s_0319;
    Real s_0320;
    Real s_0325;
    Real s_0328;
    Real s_0330;
    Real s_0331;
    Real s_0333;
    Real s_0334;
    Real s_0335;
    Real s_0356;
    Real s_0366;
    Real s_0369;
    Real s_0374;
    Real s_0380;
    Real s_0386;
    Real s_0393;
    Real s_0397;
    Real s_0400;
    Real s_0410;
    Real s_0416;
    Real s_0419;
    Real s_0427;
    Real s_0430;
    Real s_0434;
    Real s_0438;
    Real s_0439;
    Real s_0446;
    Real s_0455;
    Real s_0458;
    Real s_0463;
    Real s_0468;
    Real s_0469;
    Real s_0470;
    Real s_0481;
    Real s_0485;
    Real s_0500;
    Real s_0501;
    Real s_0507;
    Real s_0511;
    Real s_0514;
    Real s_0521;
    Real s_0529;
    Real s_0530;
    Real s_0532;
    Real s_0533;
    Real s_0537;
    Real s_0539;
    Real s_0545;
    Real s_0549;
    Real s_0553;
    Real s_0554;
    Real s_0557;
    Real s_0561;
    Real s_0562;
    Real s_0564;
    Real s_0566;
    Real s_0569;
    Real s_0574;
    Real s_0582;
    Real s_0591;
    Real s_0593;
    Real s_0596;
    Real s_0601;
    Real s_0605;
    Real s_0615;
    Real s_0616;
    Real s_0619;
    Real s_0622;
    Real s_0624;
    Real s_0627;
    Real s_0632;
    Real s_0635;
    Real s_0641;
    Real s_0650;
    Real s_0657;
    Real s_0659;
    Real s_0663;
    Real s_0669;
    Real s_0689;
    Real s_0692;
    Real s_0706;
    Real s_0710;
    Real s_0712;
    Real s_0731;
    Real s_0732;
    Real s_0734;
    Real s_0735;
    Real s_0740;
    Real s_0743;
    Real s_0749;
    Real s_0752;
    Real s_0755;
    Real s_0798;
    Real s_0800;
    Real s_0801;
    Real s_0805;
    Real s_0816;
    Real s_0824;
    Real s_0828;
    Real s_0847;
    Real s_0850;
    Real s_0859;
    Real s_0861;
    Real s_0863;
    Real s_0867;
    Real s_0873;
    Real s_0877;
    Real s_0881;
    Real s_0886;
    Real s_0887;
    Real s_0888;
    Real s_0889;
    Real s_0894;
    Real s_0899;
    Real s_0905;
    Real s_0907;
    Real s_0911;
    Real s_0915;
    Real s_0916;
    Real s_0917;
    Real s_0919;
    Real s_0920;
    Real s_0925;
    Real s_0929;
    Real s_0933;
    Real s_0936;
    Real s_0939;
    Real s_0942;
    Real s_0943;
    Real s_0949;
    Real s_0952;
    Real s_0955;
    Real s_0960;
    Real s_0963;
    Real s_0968;
    Real s_0977;
    Real s_0987;
    Real s_1000;
    Real s_1005;
    Real s_1011;
    Real s_1013;
    Real s_1020;
    Real s_1028;
    Real s_1044;
    Real s_1048;
    Real s_1051;
    Real s_1052;
    Real s_1053;
    Real s_1060;
    Real s_1066;
    Real s_1070;
    Real s_1071;
    Real s_1073;
    Real s_1080;
    Real s_1082;
    Real s_1087;
    Real s_1091;
    Real s_1096;
    Real s_1117;
    Real s_1122;
    Real s_1132;
    Real s_1140;
    Real s_1151;
    Real s_1154;
    Real s_1155;
    Real s_1156;
    Real s_1160;
    Real s_1170;
    Real s_1187;
    Real s_1207;
    Real s_1215;
    Real s_1219;
    Real s_1225;
    Real s_1226;
    Real s_1228;
    Real s_1233;
    Real s_1243;
    Real s_1257;
    Real s_1258;
    Real s_1277;
    Real s_1283;
    Real s_1290;
    Real s_1293;
    Real s_1304;
    Real s_1306;
    Real s_1315;
    Real s_1325;
    Real s_1327;
    Real s_1329;
    Real s_1334;
    Real s_1338;
    Real s_1342;
    Real s_1347;
    Real s_1349;
    Real s_1355;
    Real s_1379;
    Real s_1399;
    Real s_1411;
    Real s_1415;
    Real s_1417;
    Real s_1430;
    Real s_1447;
    Real s_1455;
    Real s_1456;
    Real s_1457;
    Real s_1458;
    Real s_1517;
    Real s_1521;
    Real s_0763_b;
    Real s_1434_b;
    Real species_1;
    Real s_0431_b;
    Real s_0464_b;
    Real s_0472_b;
    Real s_0547_b;
    Real s_0651_b;
    Real s_0766_b;
    Real s_1162_b;
    Real s_1209_b;
    Real s_1339_b;
    Real s_1348_b;

initial equation
    s_0001 = 0.549000001186;
    s_0007 = 0.549000001219;
    s_0008 = 0.548999999216;
    s_0009 = 0.549000001219;
    s_0010 = 0.548999996568;
    s_0015 = 0.548999996435;
    s_0017 = 0.549000001219;
    s_0018 = 0.548999999216;
    s_0021 = 0.548999996063;
    s_0022 = 0.548999996395;
    s_0031 = 0.548999996568;
    s_0040 = 0.548999999216;
    s_0042 = 0.548999999216;
    s_0046 = 0.548999999216;
    s_0052 = 0.548999999216;
    s_0055 = 0.548999999216;
    s_0058 = 0.548999999216;
    s_0064 = 0.548999996435;
    s_0069 = 0.549000001219;
    s_0078 = 0.548999996529;
    s_0079 = 0.548999999216;
    s_0080 = 0.5489999965;
    s_0083 = 0.548999995995;
    s_0088 = 0.548999996529;
    s_0090 = 0.548999996262;
    s_0118 = 0.548999996262;
    s_0120 = 0.549000001186;
    s_0122 = 0.548999996383;
    s_0124 = 0.548999999216;
    s_0128 = 0.5489999965;
    s_0145 = 0.54900000196;
    s_0146 = 0.54900000196;
    s_0149 = 0.548999996435;
    s_0150 = 0.54900000196;
    s_0158 = 0.54899999593;
    s_0163 = 0.549000001186;
    s_0167 = 0.549000001219;
    s_0170 = 0.548999999216;
    s_0180 = 0.548999995536;
    s_0181 = 0.548999996435;
    s_0183 = 0.549000000846;
    s_0185 = 0.548999999216;
    s_0193 = 0.05150660046;
    s_0195 = 0.548999999216;
    s_0206 = 0.548999996343;
    s_0209 = 0.548999996529;
    s_0212 = 0.548999996435;
    s_0215 = 0.54899999551;
    s_0216 = 0.549000001219;
    s_0217 = 0.548999999216;
    s_0218 = 0.549000001826;
    s_0225 = 0.549000001866;
    s_0234 = 0.548999999216;
    s_0238 = 0.549000001999;
    s_0247 = 0.549000000915;
    s_0254 = 0.549000000915;
    s_0257 = 0.549000000915;
    s_0261 = 0.549000000915;
    s_0264 = 0.363387999607;
    s_0265 = 0.000108759000085;
    s_0267 = 0.548999997773;
    s_0268 = 0.54900000196;
    s_0297 = 0.548999999216;
    s_0301 = 0.548999999216;
    s_0302 = 0.548999999216;
    s_0303 = 0.54899999551;
    s_0304 = 0.548999996343;
    s_0306 = 0.549000002154;
    s_0307 = 0.549000001826;
    s_0309 = 0.548999999216;
    s_0315 = 0.548999999216;
    s_0316 = 0.548999996168;
    s_0317 = 0.548999999216;
    s_0318 = 0.548999999216;
    s_0319 = 0.548999999216;
    s_0320 = 0.548999999216;
    s_0325 = 0.549000001219;
    s_0328 = 0.548999999216;
    s_0330 = 0.548999999216;
    s_0331 = 0.548999996435;
    s_0333 = 0.548999996435;
    s_0334 = 0.548999999216;
    s_0335 = 0.548999996262;
    s_0356 = 0.548999999216;
    s_0366 = 0.120104000134;
    s_0369 = 0.54900000196;
    s_0374 = 0.548999999216;
    s_0380 = 0.548999996435;
    s_0386 = 0.548999995995;
    s_0393 = 0.548999996273999;
    s_0397 = 0.548999996619;
    s_0400 = 1.71906998614;
    s_0410 = 0.548999996395;
    s_0416 = 0.548999999216;
    s_0419 = 0.548999996395;
    s_0427 = 0.548999996273999;
    s_0430 = 0.548999999216;
    s_0434 = 1.25955999733;
    s_0438 = 0.549000001219;
    s_0439 = 0.548999996435;
    s_0446 = 1.09207999161;
    s_0455 = 0.496413999333;
    s_0458 = 0.548999996101;
    s_0463 = 0.548999999216;
    s_0468 = 0.548999999216;
    s_0469 = 0.548999996395;
    s_0470 = 0.99999999807;
    s_0481 = 0.54899999608;
    s_0485 = 0.548999999216;
    s_0500 = 0.548999995879;
    s_0501 = 0.5489999965;
    s_0507 = 0.548999996435;
    s_0511 = 0.548999999216;
    s_0514 = 0.548999995995;
    s_0521 = 0.54900000196;
    s_0529 = 0.549000000915;
    s_0530 = 0.548999999216;
    s_0532 = 0.548999996369;
    s_0533 = 0.549000000621;
    s_0537 = 1.34278000007;
    s_0539 = 0.104554999996;
    s_0545 = 0.09875869957;
    s_0549 = 0.548999999216;
    s_0553 = 0.54900000196;
    s_0554 = 0.548999999216;
    s_0557 = 0.549000001186;
    s_0561 = 0.548999999216;
    s_0562 = 0.54899999608;
    s_0564 = 0.548999999216;
    s_0566 = 0.548999996435;
    s_0569 = 0.548999996395;
    s_0574 = 0.54899999668;
    s_0582 = 0.54899999668;
    s_0591 = 0.54899999608;
    s_0593 = 0.548999999216;
    s_0596 = 0.548999995995;
    s_0601 = 0.54900000196;
    s_0605 = 0.548999996218;
    s_0615 = 0.548999999216;
    s_0616 = 0.548999996435;
    s_0619 = 0.548999999216;
    s_0622 = 0.548999996395;
    s_0624 = 0.548999996395;
    s_0627 = 0.548999999216;
    s_0632 = 0.54900000196;
    s_0635 = 0.548999999216;
    s_0641 = 0.548999999216;
    s_0650 = 49.9999997395;
    s_0657 = 0.548999999216;
    s_0659 = 0.548999996435;
    s_0663 = 0.548999996435;
    s_0669 = 0.548999999216;
    s_0689 = 0.548999999216;
    s_0692 = 0.548999999216;
    s_0706 = 0.548999996111;
    s_0710 = 0.548999996435;
    s_0712 = 0.548999999216;
    s_0731 = 0.0436363000303;
    s_0732 = 0.149999999336;
    s_0734 = 0.54899999611;
    s_0735 = 0.601872999094;
    s_0740 = 0.548999999216;
    s_0743 = 0.548999999216;
    s_0749 = 0.548999995944;
    s_0752 = 0.548999996279;
    s_0755 = 0.548999999216;
    s_0798 = 0.549000001219;
    s_0800 = 0.548999999216;
    s_0801 = 0.549000001219;
    s_0805 = 0.548999996395;
    s_0816 = 0.548999996273;
    s_0824 = 0.548999999216;
    s_0828 = 0.548999999216;
    s_0847 = 0.548999999216;
    s_0850 = 0.548999996435;
    s_0859 = 0.548999996435;
    s_0861 = 0.548999999216;
    s_0863 = 0.548999995944;
    s_0867 = 0.548999999216;
    s_0873 = 0.548999999216;
    s_0877 = 0.548999999216;
    s_0881 = 0.548999996273;
    s_0886 = 0.548999996435;
    s_0887 = 0.548999996406;
    s_0888 = 0.548999999216;
    s_0889 = 0.548999999216;
    s_0894 = 0.548999999216;
    s_0899 = 0.548999996435;
    s_0905 = 0.54899999748;
    s_0907 = 0.548999995879;
    s_0911 = 0.548999999216;
    s_0915 = 0.549000003759;
    s_0916 = 0.548999996435;
    s_0917 = 0.548999999216;
    s_0919 = 0.548999999216;
    s_0920 = 0.548999999216;
    s_0925 = 0.548999999216;
    s_0929 = 0.548999999216;
    s_0933 = 0.548999996434;
    s_0936 = 0.548999999216;
    s_0939 = 0.548999999216;
    s_0942 = 0.549000002886;
    s_0943 = 0.548999996435;
    s_0949 = 1.00000000123;
    s_0952 = 0.99999999807;
    s_0955 = 0.548999999216;
    s_0960 = 0.99999999807;
    s_0963 = 0.548999999685;
    s_0968 = 0.54899999668;
    s_0977 = 0.54899999668;
    s_0987 = 0.548999997213;
    s_1000 = 0.54900000371;
    s_1005 = 0.548999999216;
    s_1011 = 0.548999999216;
    s_1013 = 0.548999999216;
    s_1020 = 0.548999999216;
    s_1028 = 0.54899999668;
    s_1044 = 0.54899999668;
    s_1048 = 0.548999996395;
    s_1051 = 0.548999999216;
    s_1052 = 0.548999996413;
    s_1053 = 0.548999999216;
    s_1060 = 0.548999996463;
    s_1066 = 0.548999999216;
    s_1070 = 0.548999999216;
    s_1071 = 0.548999996383;
    s_1073 = 0.548999999216;
    s_1080 = 0.549000001971;
    s_1082 = 1.50325999658;
    s_1087 = 0.0867352997424;
    s_1091 = 0.548999999216;
    s_1096 = 0.548999996474;
    s_1117 = 0.548999996395;
    s_1122 = 0.548999999216;
    s_1132 = 0.54899999668;
    s_1140 = 0.54899999668;
    s_1151 = 0.548999996395;
    s_1154 = 0.548999999216;
    s_1155 = 0.548999999216;
    s_1156 = 0.548999996435;
    s_1160 = 0.548999996463;
    s_1170 = 0.548999999216;
    s_1187 = 0.548999999216;
    s_1207 = 0.548999999216;
    s_1215 = 0.548999999216;
    s_1219 = 0.549000001352;
    s_1225 = 0.548999996435;
    s_1226 = 0.548999999216;
    s_1228 = 0.548999999216;
    s_1233 = 0.548999996395;
    s_1243 = 0.0271092999605;
    s_1257 = 0.548999996435;
    s_1258 = 0.548999999216;
    s_1277 = 0.0605904998459;
    s_1283 = 0.548999999216;
    s_1290 = 0.548999996435;
    s_1293 = 0.548999996273;
    s_1304 = 0.548999999216;
    s_1306 = 0.548999999216;
    s_1315 = 12.8510998429;
    s_1325 = 0.548999999216;
    s_1327 = 0.548999996687;
    s_1329 = 0.548999999216;
    s_1334 = 0.548999996435;
    s_1338 = 0.548999999216;
    s_1342 = 0.548999999216;
    s_1347 = 0.548999996474;
    s_1349 = 0.548999999216;
    s_1355 = 0.548999996395;
    s_1379 = 0.548999996262;
    s_1399 = 0.548999999216;
    s_1411 = 0.548999999216;
    s_1415 = 0.549000001186;
    s_1417 = 0.548999999216;
    s_1430 = 0.548999995967;
    s_1447 = 0.548999999216;
    s_1455 = 0.548999999216;
    s_1456 = 0.548999999216;
    s_1457 = 0.548999996369;
    s_1458 = 0.548999999216;
    s_1517 = 0.548999999216;
    s_1521 = 0.548999996236;
    s_0763_b = 0.548999999216;
    s_1434_b = 0.548999999216;
    species_1 = 1.0;
    s_0431_b = 37.9999998108;
    s_0464_b = 24.499999887;
    s_0472_b = 1.00000027208e-05;
    s_0547_b = 11.1;
    s_0651_b = 24.49999989;
    s_0766_b = 0.1;
    s_1162_b = 24.49999989;
    s_1209_b = 24.49999974;
    s_1339_b = 0.9999999981;
    s_1348_b = 42.19999979;

equation

    der(s_0001) = (intracellular * function_1(Keq_r_0005_0, Vmax_r_0005_0, intracellular, kmp_s_0001r_0005_0, kmp_s_0763_br_0005_0, kmp_s_1411r_0005_0, kms_s_1415r_0005_0, s_0001, s_0763_b, s_1411, s_1415)) - (1.1358 * intracellular * function_283(V_o_282, a_s_0001r_1812_282, a_s_0416r_1812_282, a_s_0434r_1812_282, a_s_0446r_1812_282, a_s_0511r_1812_282, a_s_0564r_1812_282, a_s_0569r_1812_282, a_s_0593r_1812_282, a_s_0619r_1812_282, a_s_0740r_1812_282, a_s_0743r_1812_282, a_s_0752r_1812_282, a_s_0863r_1812_282, a_s_0873r_1812_282, a_s_0877r_1812_282, a_s_0881r_1812_282, a_s_0889r_1812_282, a_s_0899r_1812_282, a_s_0907r_1812_282, a_s_0911r_1812_282, a_s_0920r_1812_282, a_s_0925r_1812_282, a_s_0929r_1812_282, a_s_0933r_1812_282, a_s_0936r_1812_282, a_s_0939r_1812_282, a_s_0943r_1812_282, a_s_0949r_1812_282, a_s_0952r_1812_282, a_s_0955r_1812_282, a_s_0960r_1812_282, a_s_1000r_1812_282, a_s_1011r_1812_282, a_s_1283r_1812_282, a_s_1347r_1812_282, a_s_1417r_1812_282, intracellular, s_0001, s_0001_or_1812_282, s_0416, s_0416_or_1812_282, s_0434, s_0434_or_1812_282, s_0446, s_0446_or_1812_282, s_0511, s_0511_or_1812_282, s_0564, s_0564_or_1812_282, s_0569, s_0569_or_1812_282, s_0593, s_0593_or_1812_282, s_0619, s_0619_or_1812_282, s_0740, s_0740_or_1812_282, s_0743, s_0743_or_1812_282, s_0752, s_0752_or_1812_282, s_0863, s_0863_or_1812_282, s_0873, s_0873_or_1812_282, s_0877, s_0877_or_1812_282, s_0881, s_0881_or_1812_282, s_0889, s_0889_or_1812_282, s_0899, s_0899_or_1812_282, s_0907, s_0907_or_1812_282, s_0911, s_0911_or_1812_282, s_0920, s_0920_or_1812_282, s_0925, s_0925_or_1812_282, s_0929, s_0929_or_1812_282, s_0933, s_0933_or_1812_282, s_0936, s_0936_or_1812_282, s_0939, s_0939_or_1812_282, s_0943, s_0943_or_1812_282, s_0949, s_0949_or_1812_282, s_0952, s_0952_or_1812_282, s_0955, s_0955_or_1812_282, s_0960, s_0960_or_1812_282, s_1000, s_1000_or_1812_282, s_1011, s_1011_or_1812_282, s_1283, s_1283_or_1812_282, s_1347, s_1347_or_1812_282, s_1417, s_1417_or_1812_282, zero_flux_282));
    der(s_0007) = (intracellular * function_171(Keq_r_0640_170, Vmax_r_0640_170, intracellular, kmp_s_0007r_0640_170, kmp_s_1091r_0640_170, kms_s_0042r_0640_170, kms_s_0763_br_0640_170, kms_s_1096r_0640_170, s_0007, s_0042, s_0763_b, s_1091, s_1096)) - (intracellular * function_99(Keq_r_0385_98, Vmax_r_0385_98, intracellular, kmp_s_0058r_0385_98, kmp_s_1434_br_0385_98, kms_s_0007r_0385_98, s_0007, s_0058, s_1434_b));
    der(s_0008) = (intracellular * function_23(Keq_r_0063_22, Vmax_r_0063_22, intracellular, kmp_s_0008r_0063_22, kms_s_0170r_0063_22, kms_s_1434_br_0063_22, s_0008, s_0170, s_1434_b)) - (intracellular * function_24(Keq_r_0064_23, Vmax_r_0064_23, intracellular, kmp_s_0010r_0064_23, kmp_s_0763_br_0064_23, kmp_s_1087r_0064_23, kms_s_0008r_0064_23, kms_s_1082r_0064_23, s_0008, s_0010, s_0763_b, s_1082, s_1087));
    der(s_0009) = (intracellular * function_224(Keq_r_0886_223, Vmax_r_0886_223, intracellular, kmp_s_0009r_0886_223, kmp_s_0400r_0886_223, kmp_s_0763_br_0886_223, kmp_s_1207r_0886_223, kms_s_0318r_0886_223, kms_s_0446r_0886_223, kms_s_0881r_0886_223, s_0009, s_0318, s_0400, s_0446, s_0763_b, s_0881, s_1207)) - (intracellular * function_39(Keq_r_0169_38, Vmax_r_0169_38, intracellular, kmp_s_0317r_0169_38, kmp_s_0692r_0169_38, kms_s_0009r_0169_38, s_0009, s_0317, s_0692));
    der(s_0010) = (intracellular * function_24(Keq_r_0064_23, Vmax_r_0064_23, intracellular, kmp_s_0010r_0064_23, kmp_s_0763_br_0064_23, kmp_s_1087r_0064_23, kms_s_0008r_0064_23, kms_s_1082r_0064_23, s_0008, s_0010, s_0763_b, s_1082, s_1087)) - (intracellular * function_13(Keq_r_0031_12, Vmax_r_0031_12, intracellular, kmp_s_0297r_0031_12, kmp_s_0470r_0031_12, kms_s_0010r_0031_12, kms_s_0763_br_0031_12, s_0010, s_0297, s_0470, s_0763_b));
    der(s_0015) = (intracellular * function_186(Keq_r_0707_185, Vmax_r_0707_185, intracellular, kmp_s_0015r_0707_185, kmp_s_1096r_0707_185, kms_s_0307r_0707_185, kms_s_1091r_0707_185, s_0015, s_0307, s_1091, s_1096)) - (intracellular * function_183(Keq_r_0699_182, Vmax_r_0699_182, intracellular, kmp_s_0122r_0699_182, kmp_s_0763_br_0699_182, kms_s_0015r_0699_182, kms_s_1434_br_0699_182, s_0015, s_0122, s_0763_b, s_1434_b));
    der(s_0017) = (intracellular * function_50(Keq_r_0226_49, Vmax_r_0226_49, intracellular, kmp_s_0017r_0226_49, kmp_s_0434r_0226_49, kmp_s_0605r_0226_49, kmp_s_0763_br_0226_49, kms_s_0446r_0226_49, kms_s_0881r_0226_49, kms_s_0887r_0226_49, s_0017, s_0434, s_0446, s_0605, s_0763_b, s_0881, s_0887)) - (intracellular * function_49(Keq_r_0225_48, Vmax_r_0225_48, intracellular, kmp_s_0692r_0225_48, kmp_s_0873r_0225_48, kms_s_0017r_0225_48, s_0017, s_0692, s_0873));
    der(s_0018) = (intracellular * function_27(Keq_r_0111_26, Vmax_r_0111_26, intracellular, kmp_s_0018r_0111_26, kmp_s_1091r_0111_26, kms_s_0150r_0111_26, kms_s_0763_br_0111_26, kms_s_1096r_0111_26, s_0018, s_0150, s_0763_b, s_1091, s_1096)) - (intracellular * function_98(Keq_r_0384_97, Vmax_r_0384_97, intracellular, kmp_s_0238r_0384_97, kmp_s_1434_br_0384_97, kms_s_0018r_0384_97, s_0018, s_0238, s_1434_b));
    der(s_0021) = (intracellular * function_218(Keq_r_0877_217, Vmax_r_0877_217, intracellular, kmp_s_0021r_0877_217, kmp_s_0400r_0877_217, kms_s_0022r_0877_217, kms_s_0446r_0877_217, s_0021, s_0022, s_0400, s_0446)) - (intracellular * function_188(Keq_r_0715_187, Vmax_r_0715_187, intracellular, kmp_s_0400r_0715_187, kmp_s_0470r_0715_187, kmp_s_0850r_0715_187, kmp_s_1207r_0715_187, kms_s_0021r_0715_187, kms_s_0446r_0715_187, s_0021, s_0400, s_0446, s_0470, s_0850, s_1207));
    der(s_0022) = (intracellular * function_187(Keq_r_0712_186, Vmax_r_0712_186, intracellular, kmp_s_0022r_0712_186, kmp_s_0481r_0712_186, kmp_s_0763_br_0712_186, kms_s_0031r_0712_186, kms_s_0521r_0712_186, s_0022, s_0031, s_0481, s_0521, s_0763_b)) - (intracellular * function_218(Keq_r_0877_217, Vmax_r_0877_217, intracellular, kmp_s_0021r_0877_217, kmp_s_0400r_0877_217, kms_s_0022r_0877_217, kms_s_0446r_0877_217, s_0021, s_0022, s_0400, s_0446));
    der(s_0031) = (intracellular * function_157(Keq_r_0598_156, Vmax_r_0598_156, intracellular, kmp_s_0031r_0598_156, kmp_s_0514r_0598_156, kmp_s_1091r_0598_156, kms_s_0225r_0598_156, kms_s_0763_br_0598_156, kms_s_1096r_0598_156, s_0031, s_0225, s_0514, s_0763_b, s_1091, s_1096)) - (intracellular * function_187(Keq_r_0712_186, Vmax_r_0712_186, intracellular, kmp_s_0022r_0712_186, kmp_s_0481r_0712_186, kmp_s_0763_br_0712_186, kms_s_0031r_0712_186, kms_s_0521r_0712_186, s_0022, s_0031, s_0481, s_0521, s_0763_b));
    der(s_0040) = (intracellular * function_252(Keq_r_0991_251, Vmax_r_0991_251, intracellular, kmp_s_0040r_0991_251, kmp_s_1082r_0991_251, kmp_s_1434_br_0991_251, kms_s_0763_br_0991_251, kms_s_1087r_0991_251, kms_s_1160r_0991_251, kms_s_1327r_0991_251, s_0040, s_0763_b, s_1082, s_1087, s_1160, s_1327, s_1434_b)) - (intracellular * function_178(Keq_r_0673_177, Vmax_r_0673_177, intracellular, kmp_s_0963r_0673_177, kms_s_0040r_0673_177, s_0040, s_0963));
    der(s_0042) = (intracellular * function_7(Keq_r_0016_6, Vmax_r_0016_6, intracellular, kmp_s_0042r_0016_6, kmp_s_0470r_0016_6, kms_s_0183r_0016_6, kms_s_0763_br_0016_6, kms_s_1277r_0016_6, s_0042, s_0183, s_0470, s_0763_b, s_1277)) - (intracellular * function_171(Keq_r_0640_170, Vmax_r_0640_170, intracellular, kmp_s_0007r_0640_170, kmp_s_1091r_0640_170, kms_s_0042r_0640_170, kms_s_0763_br_0640_170, kms_s_1096r_0640_170, s_0007, s_0042, s_0763_b, s_1091, s_1096));
    der(s_0046) = (intracellular * function_19(Keq_r_0057_18, Vmax_r_0057_18, intracellular, kmp_s_0046r_0057_18, kmp_s_1082r_0057_18, kms_s_0247r_0057_18, kms_s_0763_br_0057_18, kms_s_1087r_0057_18, s_0046, s_0247, s_0763_b, s_1082, s_1087)) - (intracellular * function_189(Keq_r_0719_188, Vmax_r_0719_188, intracellular, kmp_s_0247r_0719_188, kmp_s_0763_br_0719_188, kmp_s_1096r_0719_188, kms_s_0046r_0719_188, kms_s_1091r_0719_188, s_0046, s_0247, s_0763_b, s_1091, s_1096));
    der(s_0052) = (intracellular * function_20(Keq_r_0058_19, Vmax_r_0058_19, intracellular, kmp_s_0052r_0058_19, kmp_s_1082r_0058_19, kms_s_0257r_0058_19, kms_s_0763_br_0058_19, kms_s_1087r_0058_19, s_0052, s_0257, s_0763_b, s_1082, s_1087)) - (intracellular * function_190(Keq_r_0720_189, Vmax_r_0720_189, intracellular, kmp_s_0257r_0720_189, kmp_s_0763_br_0720_189, kmp_s_1096r_0720_189, kms_s_0052r_0720_189, kms_s_1091r_0720_189, s_0052, s_0257, s_0763_b, s_1091, s_1096));
    der(s_0055) = (intracellular * function_22(Keq_r_0060_21, Vmax_r_0060_21, intracellular, kmp_s_0055r_0060_21, kmp_s_1082r_0060_21, kms_s_0261r_0060_21, kms_s_0763_br_0060_21, kms_s_1087r_0060_21, s_0055, s_0261, s_0763_b, s_1082, s_1087)) - (intracellular * function_192(Keq_r_0722_191, Vmax_r_0722_191, intracellular, kmp_s_0261r_0722_191, kmp_s_0763_br_0722_191, kmp_s_1096r_0722_191, kms_s_0055r_0722_191, kms_s_1091r_0722_191, s_0055, s_0261, s_0763_b, s_1091, s_1096));
    der(s_0058) = (intracellular * function_99(Keq_r_0385_98, Vmax_r_0385_98, intracellular, kmp_s_0058r_0385_98, kmp_s_1434_br_0385_98, kms_s_0007r_0385_98, s_0007, s_0058, s_1434_b)) - (intracellular * function_169(Keq_r_0634_168, Vmax_r_0634_168, intracellular, kmp_s_0185r_0634_168, kmp_s_0920r_0634_168, kms_s_0058r_0634_168, kms_s_0899r_0634_168, s_0058, s_0185, s_0899, s_0920));
    der(s_0064) = (intracellular * function_97(Keq_r_0381_96, Vmax_r_0381_96, intracellular, kmp_s_0064r_0381_96, kmp_s_1434_br_0381_96, kms_s_0763_br_0381_96, kms_s_1073r_0381_96, s_0064, s_0763_b, s_1073, s_1434_b)) - (intracellular * function_95(Keq_r_0374_94, Vmax_r_0374_94, intracellular, kmp_s_0801r_0374_94, kmp_s_1154r_0374_94, kms_s_0064r_0374_94, kms_s_1160r_0374_94, s_0064, s_0801, s_1154, s_1160));
    der(s_0069) = (intracellular * function_180(Keq_r_0688_179, Vmax_r_0688_179, intracellular, kmp_s_0069r_0688_179, kmp_s_1082r_0688_179, kms_s_0763_br_0688_179, kms_s_1087r_0688_179, kms_s_1156r_0688_179, s_0069, s_0763_b, s_1082, s_1087, s_1156)) - (intracellular * function_122(Keq_r_0485_121, Vmax_r_0485_121, intracellular, kmp_s_0692r_0485_121, kmp_s_1434_br_0485_121, kms_s_0069r_0485_121, s_0069, s_0692, s_1434_b));
    der(s_0078) = (intracellular * function_225(Keq_r_0887_224, Vmax_r_0887_224, intracellular, kmp_s_0078r_0887_224, kms_s_1066r_0887_224, s_0078, s_1066)) - (intracellular * function_163(Keq_r_0608_162, Vmax_r_0608_162, intracellular, kmp_s_0088r_0608_162, kmp_s_0470r_0608_162, kmp_s_1434_br_0608_162, kms_s_0078r_0608_162, kms_s_0763_br_0608_162, s_0078, s_0088, s_0470, s_0763_b, s_1434_b));
    der(s_0079) = (intracellular * function_219(Keq_r_0881_218, Vmax_r_0881_218, intracellular, kmp_s_0079r_0881_218, kms_s_0080r_0881_218, kms_s_1434_br_0881_218, s_0079, s_0080, s_1434_b)) - (intracellular * function_3(Keq_r_0008_2, Vmax_r_0008_2, intracellular, kmp_s_0315r_0008_2, kms_s_0079r_0008_2, s_0079, s_0315));
    der(s_0080) = (intracellular * function_220(Keq_r_0882_219, Vmax_r_0882_219, intracellular, kmp_s_0080r_0882_219, kmp_s_0605r_0882_219, kmp_s_0763_br_0882_219, kms_s_0334r_0882_219, kms_s_1434_br_0882_219, s_0080, s_0334, s_0605, s_0763_b, s_1434_b)) - (intracellular * function_219(Keq_r_0881_218, Vmax_r_0881_218, intracellular, kmp_s_0079r_0881_218, kms_s_0080r_0881_218, kms_s_1434_br_0881_218, s_0079, s_0080, s_1434_b));
    der(s_0083) = (intracellular * function_139(Keq_r_0534_138, Vmax_r_0534_138, intracellular, kmp_s_0083r_0534_138, kmp_s_0514r_0534_138, kmp_s_0763_br_0534_138, kms_s_0386r_0534_138, kms_s_1315r_0534_138, s_0083, s_0386, s_0514, s_0763_b, s_1315)) - (intracellular * function_4(Keq_r_0009_3, Vmax_r_0009_3, intracellular, kmp_s_0514r_0009_3, kmp_s_0763_br_0009_3, kmp_s_1215r_0009_3, kms_s_0083r_0009_3, kms_s_0386r_0009_3, s_0083, s_0386, s_0514, s_0763_b, s_1215));
    der(s_0088) = (intracellular * function_163(Keq_r_0608_162, Vmax_r_0608_162, intracellular, kmp_s_0088r_0608_162, kmp_s_0470r_0608_162, kmp_s_1434_br_0608_162, kms_s_0078r_0608_162, kms_s_0763_br_0608_162, s_0078, s_0088, s_0470, s_0763_b, s_1434_b)) - (intracellular * function_268(Keq_r_1042_267, Vmax_r_1042_267, intracellular, kmp_s_0731r_1042_267, kmp_s_0952r_1042_267, kmp_s_1434_br_1042_267, kms_s_0088r_1042_267, kms_s_0943r_1042_267, s_0088, s_0731, s_0943, s_0952, s_1434_b));
    der(s_0090) = (intracellular * function_207(Keq_r_0847_206, Vmax_r_0847_206, intracellular, kmp_s_0090r_0847_206, kmp_s_0511r_0847_206, kmp_s_0763_br_0847_206, kms_s_0485r_0847_206, kms_s_1020r_0847_206, s_0090, s_0485, s_0511, s_0763_b, s_1020)) - (0.001531 * intracellular * function_285(V_o_284, a_s_0090r_1816_284, a_s_0124r_1816_284, a_s_0627r_1816_284, a_s_0632r_1816_284, a_s_0635r_1816_284, a_s_0641r_1816_284, a_s_0663r_1816_284, a_s_0669r_1816_284, a_s_0824r_1816_284, a_s_0963r_1816_284, a_s_1219r_1816_284, a_s_1228r_1816_284, a_s_1233r_1816_284, a_s_1399r_1816_284, a_s_1447r_1816_284, intracellular, s_0090, s_0090_or_1816_284, s_0124, s_0124_or_1816_284, s_0627, s_0627_or_1816_284, s_0632, s_0632_or_1816_284, s_0635, s_0635_or_1816_284, s_0641, s_0641_or_1816_284, s_0663, s_0663_or_1816_284, s_0669, s_0669_or_1816_284, s_0824, s_0824_or_1816_284, s_0963, s_0963_or_1816_284, s_1219, s_1219_or_1816_284, s_1228, s_1228_or_1816_284, s_1233, s_1233_or_1816_284, s_1399, s_1399_or_1816_284, s_1447, s_1447_or_1816_284, zero_flux_284));
    der(s_0118) = (intracellular * function_175(Keq_r_0660_174, Vmax_r_0660_174, intracellular, kmp_s_0118r_0660_174, kmp_s_0763_br_0660_174, kmp_s_1096r_0660_174, kms_s_1091r_0660_174, kms_s_1379r_0660_174, s_0118, s_0763_b, s_1091, s_1096, s_1379)) - (intracellular * function_176(Keq_r_0661_175, Vmax_r_0661_175, intracellular, kmp_s_1082r_0661_175, kmp_s_1379r_0661_175, kms_s_0118r_0661_175, kms_s_0763_br_0661_175, kms_s_1087r_0661_175, s_0118, s_0763_b, s_1082, s_1087, s_1379));
    der(s_0120) = (intracellular * function_174(Keq_r_0657_173, Vmax_r_0657_173, intracellular, kmp_s_0120r_0657_173, kmp_s_0763_br_0657_173, kmp_s_1434_br_0657_173, kms_s_0905r_0657_173, s_0120, s_0763_b, s_0905, s_1434_b)) - (intracellular * function_233(Keq_r_0936_232, Vmax_r_0936_232, intracellular, kmp_s_0939r_0936_232, kmp_s_1091r_0936_232, kms_s_0120r_0936_232, kms_s_0763_br_0936_232, kms_s_1096r_0936_232, s_0120, s_0763_b, s_0939, s_1091, s_1096));
    der(s_0122) = (intracellular * function_120(Keq_r_0479_119, Vmax_r_0479_119, intracellular, kmp_s_0122r_0479_119, kmp_s_0400r_0479_119, kmp_s_1207r_0479_119, kms_s_0309r_0479_119, kms_s_0446r_0479_119, kms_s_0689r_0479_119, s_0122, s_0309, s_0400, s_0446, s_0689, s_1207)) + (intracellular * function_183(Keq_r_0699_182, Vmax_r_0699_182, intracellular, kmp_s_0122r_0699_182, kmp_s_0763_br_0699_182, kms_s_0015r_0699_182, kms_s_1434_br_0699_182, s_0015, s_0122, s_0763_b, s_1434_b)) - (intracellular * function_223(Keq_r_0885_222, Vmax_r_0885_222, intracellular, kmp_s_0309r_0885_222, kmp_s_0325r_0885_222, kms_s_0122r_0885_222, kms_s_0317r_0885_222, s_0122, s_0309, s_0317, s_0325)) - (intracellular * function_227(Keq_r_0889_226, Vmax_r_0889_226, intracellular, kmp_s_0309r_0889_226, kmp_s_0763_br_0889_226, kmp_s_1052r_0889_226, kms_s_0122r_0889_226, kms_s_1048r_0889_226, s_0122, s_0309, s_0763_b, s_1048, s_1052));
    der(s_0124) = (intracellular * function_60(Keq_r_0258_59, Vmax_r_0258_59, intracellular, kmp_s_0124r_0258_59, kmp_s_1091r_0258_59, kms_s_0268r_0258_59, kms_s_0763_br_0258_59, kms_s_1096r_0258_59, s_0124, s_0268, s_0763_b, s_1091, s_1096)) - (intracellular * function_68(Keq_r_0268_67, Vmax_r_0268_67, intracellular, kmp_s_0303r_0268_67, kmp_s_1091r_0268_67, kmp_s_1434_br_0268_67, kms_s_0124r_0268_67, kms_s_0763_br_0268_67, kms_s_1096r_0268_67, kms_s_1160r_0268_67, s_0124, s_0303, s_0763_b, s_1091, s_1096, s_1160, s_1434_b)) - (5.6e-05 * intracellular * function_285(V_o_284, a_s_0090r_1816_284, a_s_0124r_1816_284, a_s_0627r_1816_284, a_s_0632r_1816_284, a_s_0635r_1816_284, a_s_0641r_1816_284, a_s_0663r_1816_284, a_s_0669r_1816_284, a_s_0824r_1816_284, a_s_0963r_1816_284, a_s_1219r_1816_284, a_s_1228r_1816_284, a_s_1233r_1816_284, a_s_1399r_1816_284, a_s_1447r_1816_284, intracellular, s_0090, s_0090_or_1816_284, s_0124, s_0124_or_1816_284, s_0627, s_0627_or_1816_284, s_0632, s_0632_or_1816_284, s_0635, s_0635_or_1816_284, s_0641, s_0641_or_1816_284, s_0663, s_0663_or_1816_284, s_0669, s_0669_or_1816_284, s_0824, s_0824_or_1816_284, s_0963, s_0963_or_1816_284, s_1219, s_1219_or_1816_284, s_1228, s_1228_or_1816_284, s_1233, s_1233_or_1816_284, s_1399, s_1399_or_1816_284, s_1447, s_1447_or_1816_284, zero_flux_284));
    der(s_0128) = (intracellular * function_195(Keq_r_0726_194, Vmax_r_0726_194, intracellular, kmp_s_0128r_0726_194, kms_s_0410r_0726_194, s_0128, s_0410)) - (intracellular * function_165(Keq_r_0618_164, Vmax_r_0618_164, intracellular, kmp_s_0824r_0618_164, kms_s_0128r_0618_164, kms_s_1013r_0618_164, s_0128, s_0824, s_1013)) - (intracellular * function_166(Keq_r_0621_165, Vmax_r_0621_165, intracellular, kmp_s_0828r_0621_165, kms_s_0128r_0621_165, kms_s_1060r_0621_165, s_0128, s_0828, s_1060)) - (intracellular * function_194(Keq_r_0725_193, Vmax_r_0725_193, intracellular, kmp_s_1020r_0725_193, kmp_s_1207r_0725_193, kms_s_0128r_0725_193, kms_s_1434_br_0725_193, s_0128, s_1020, s_1207, s_1434_b));
    der(s_0145) = (intracellular * function_144(Keq_r_0562_143, Vmax_r_0562_143, intracellular, kmp_s_0145r_0562_143, kmp_s_0605r_0562_143, kmp_s_0689r_0562_143, kmp_s_0763_br_0562_143, kms_s_0755r_0562_143, kms_s_1434_br_0562_143, s_0145, s_0605, s_0689, s_0755, s_0763_b, s_1434_b)) - (intracellular * function_6(Keq_r_0015_5, Vmax_r_0015_5, intracellular, kmp_s_0146r_0015_5, kmp_s_1091r_0015_5, kms_s_0145r_0015_5, kms_s_0763_br_0015_5, kms_s_1096r_0015_5, s_0145, s_0146, s_0763_b, s_1091, s_1096));
    der(s_0146) = (intracellular * function_6(Keq_r_0015_5, Vmax_r_0015_5, intracellular, kmp_s_0146r_0015_5, kmp_s_1091r_0015_5, kms_s_0145r_0015_5, kms_s_0763_br_0015_5, kms_s_1096r_0015_5, s_0145, s_0146, s_0763_b, s_1091, s_1096)) - (intracellular * function_5(Keq_r_0014_4, Vmax_r_0014_4, intracellular, kmp_s_0319r_0014_4, kmp_s_0430r_0014_4, kms_s_0146r_0014_4, kms_s_0763_br_0014_4, kms_s_1434_br_0014_4, s_0146, s_0319, s_0430, s_0763_b, s_1434_b));
    der(s_0149) = (intracellular * function_196(Keq_r_0728_195, Vmax_r_0728_195, intracellular, kmp_s_0149r_0728_195, kmp_s_1091r_0728_195, kmp_s_1207r_0728_195, kms_s_0763_br_0728_195, kms_s_1070r_0728_195, kms_s_1096r_0728_195, s_0149, s_0763_b, s_1070, s_1091, s_1096, s_1207)) - (intracellular * function_34(Keq_r_0133_33, Vmax_r_0133_33, intracellular, kmp_s_0185r_0133_33, kmp_s_1051r_0133_33, kms_s_0149r_0133_33, kms_s_0899r_0133_33, s_0149, s_0185, s_0899, s_1051));
    der(s_0150) = (intracellular * function_28(Keq_r_0112_27, Vmax_r_0112_27, intracellular, kmp_s_0150r_0112_27, kmp_s_0470r_0112_27, kms_s_0763_br_0112_27, kms_s_1277r_0112_27, s_0150, s_0470, s_0763_b, s_1277)) - (intracellular * function_27(Keq_r_0111_26, Vmax_r_0111_26, intracellular, kmp_s_0018r_0111_26, kmp_s_1091r_0111_26, kms_s_0150r_0111_26, kms_s_0763_br_0111_26, kms_s_1096r_0111_26, s_0018, s_0150, s_0763_b, s_1091, s_1096));
    der(s_0158) = (intracellular * function_226(Keq_r_0888_225, Vmax_r_0888_225, intracellular, kmp_s_0158r_0888_225, kmp_s_0400r_0888_225, kmp_s_0763_br_0888_225, kmp_s_0899r_0888_225, kmp_s_1207r_0888_225, kms_s_0446r_0888_225, kms_s_0907r_0888_225, kms_s_1052r_0888_225, kms_s_1434_br_0888_225, s_0158, s_0400, s_0446, s_0763_b, s_0899, s_0907, s_1052, s_1207, s_1434_b)) - (intracellular * function_222(Keq_r_0884_221, Vmax_r_0884_221, intracellular, kmp_s_0316r_0884_221, kmp_s_0400r_0884_221, kmp_s_0763_br_0884_221, kmp_s_1207r_0884_221, kms_s_0158r_0884_221, kms_s_0446r_0884_221, s_0158, s_0316, s_0400, s_0446, s_0763_b, s_1207));
    der(s_0163) = (intracellular * function_15(Keq_r_0040_14, Vmax_r_0040_14, intracellular, kmp_s_0163r_0040_14, kmp_s_0689r_0040_14, kmp_s_0763_br_0040_14, kms_s_0557r_0040_14, s_0163, s_0557, s_0689, s_0763_b)) - (intracellular * function_238(Keq_r_0948_237, Vmax_r_0948_237, intracellular, kmp_s_0335r_0948_237, kmp_s_1207r_0948_237, kmp_s_1434_br_0948_237, kms_s_0163r_0948_237, kms_s_0320r_0948_237, s_0163, s_0320, s_0335, s_1207, s_1434_b));
    der(s_0167) = (intracellular * function_11(Keq_r_0026_10, Vmax_r_0026_10, intracellular, kmp_s_0167r_0026_10, kmp_s_0514r_0026_10, kmp_s_0763_br_0026_10, kms_s_0238r_0026_10, kms_s_0380r_0026_10, kms_s_1434_br_0026_10, s_0167, s_0238, s_0380, s_0514, s_0763_b, s_1434_b)) - (intracellular * function_10(Keq_r_0025_9, Vmax_r_0025_9, intracellular, kmp_s_0170r_0025_9, kmp_s_1434_br_0025_9, kms_s_0167r_0025_9, s_0167, s_0170, s_1434_b));
    der(s_0170) = (intracellular * function_10(Keq_r_0025_9, Vmax_r_0025_9, intracellular, kmp_s_0170r_0025_9, kmp_s_1434_br_0025_9, kms_s_0167r_0025_9, s_0167, s_0170, s_1434_b)) - (intracellular * function_23(Keq_r_0063_22, Vmax_r_0063_22, intracellular, kmp_s_0008r_0063_22, kms_s_0170r_0063_22, kms_s_1434_br_0063_22, s_0008, s_0170, s_1434_b));
    der(s_0180) = (intracellular * function_153(Keq_r_0585_152, Vmax_r_0585_152, intracellular, kmp_s_0180r_0585_152, kmp_s_0763_br_0585_152, kmp_s_1087r_0585_152, kms_s_0800r_0585_152, kms_s_1082r_0585_152, s_0180, s_0763_b, s_0800, s_1082, s_1087)) - (intracellular * function_197(Keq_r_0765_196, Vmax_r_0765_196, intracellular, kmp_s_0181r_0765_196, kmp_s_0470r_0765_196, kms_s_0180r_0765_196, kms_s_0763_br_0765_196, s_0180, s_0181, s_0470, s_0763_b));
    der(s_0181) = (intracellular * function_197(Keq_r_0765_196, Vmax_r_0765_196, intracellular, kmp_s_0181r_0765_196, kmp_s_0470r_0765_196, kms_s_0180r_0765_196, kms_s_0763_br_0765_196, s_0180, s_0181, s_0470, s_0763_b)) - (intracellular * function_8(Keq_r_0018_7, Vmax_r_0018_7, intracellular, kmp_s_0185r_0018_7, kmp_s_0861r_0018_7, kms_s_0181r_0018_7, kms_s_0899r_0018_7, s_0181, s_0185, s_0861, s_0899));
    der(s_0183) = (intracellular * function_84(Keq_r_0339_83, Vmax_r_0339_83, intracellular, kmp_s_0183r_0339_83, kmp_s_0430r_0339_83, kmp_s_0889r_0339_83, kms_s_0888r_0339_83, kms_s_1434_br_0339_83, s_0183, s_0430, s_0888, s_0889, s_1434_b)) + (intracellular * function_177(Keq_r_0667_176, Vmax_r_0667_176, intracellular, kmp_s_0183r_0667_176, kmp_s_0430r_0667_176, kms_s_0949r_0667_176, s_0183, s_0430, s_0949)) - (intracellular * function_7(Keq_r_0016_6, Vmax_r_0016_6, intracellular, kmp_s_0042r_0016_6, kmp_s_0470r_0016_6, kms_s_0183r_0016_6, kms_s_0763_br_0016_6, kms_s_1277r_0016_6, s_0042, s_0183, s_0470, s_0763_b, s_1277));
    der(s_0185) = (intracellular * function_8(Keq_r_0018_7, Vmax_r_0018_7, intracellular, kmp_s_0185r_0018_7, kmp_s_0861r_0018_7, kms_s_0181r_0018_7, kms_s_0899r_0018_7, s_0181, s_0185, s_0861, s_0899)) + (intracellular * function_34(Keq_r_0133_33, Vmax_r_0133_33, intracellular, kmp_s_0185r_0133_33, kmp_s_1051r_0133_33, kms_s_0149r_0133_33, kms_s_0899r_0133_33, s_0149, s_0185, s_0899, s_1051)) + (intracellular * function_54(Keq_r_0235_53, Vmax_r_0235_53, intracellular, kmp_s_0185r_0235_53, kmp_s_0881r_0235_53, kms_s_0899r_0235_53, kms_s_1156r_0235_53, s_0185, s_0881, s_0899, s_1156)) + (intracellular * function_150(Keq_r_0577_149, Vmax_r_0577_149, intracellular, kmp_s_0185r_0577_149, kmp_s_0916r_0577_149, kms_s_0212r_0577_149, kms_s_0899r_0577_149, s_0185, s_0212, s_0899, s_0916)) + (intracellular * function_167(Keq_r_0630_166, Vmax_r_0630_166, intracellular, kmp_s_0185r_0630_166, kmp_s_0470r_0630_166, kmp_s_1096r_0630_166, kms_s_0847r_0630_166, kms_s_1091r_0630_166, s_0185, s_0470, s_0847, s_1091, s_1096)) + (intracellular * function_169(Keq_r_0634_168, Vmax_r_0634_168, intracellular, kmp_s_0185r_0634_168, kmp_s_0920r_0634_168, kms_s_0058r_0634_168, kms_s_0899r_0634_168, s_0058, s_0185, s_0899, s_0920)) + (intracellular * function_172(Keq_r_0647_171, Vmax_r_0647_171, intracellular, kmp_s_0185r_0647_171, kmp_s_0863r_0647_171, kms_s_0899r_0647_171, kms_s_1277r_0647_171, s_0185, s_0863, s_0899, s_1277)) + (intracellular * function_179(Keq_r_0674_178, Vmax_r_0674_178, intracellular, kmp_s_0185r_0674_178, kmp_s_0925r_0674_178, kms_s_0297r_0674_178, kms_s_0899r_0674_178, s_0185, s_0297, s_0899, s_0925)) + (intracellular * function_205(Keq_r_0825_204, Vmax_r_0825_204, intracellular, kmp_s_0185r_0825_204, kmp_s_0936r_0825_204, kms_s_0859r_0825_204, kms_s_0899r_0825_204, s_0185, s_0859, s_0899, s_0936)) + (intracellular * function_247(Keq_r_0969_246, Vmax_r_0969_246, intracellular, kmp_s_0185r_0969_246, kmp_s_0763_br_0969_246, kmp_s_0929r_0969_246, kmp_s_1087r_0969_246, kms_s_0942r_0969_246, kms_s_1082r_0969_246, kms_s_1434_br_0969_246, s_0185, s_0763_b, s_0929, s_0942, s_1082, s_1087, s_1434_b)) + (intracellular * function_269(Keq_r_1050_268, Vmax_r_1050_268, intracellular, kmp_s_0185r_1050_268, kmp_s_0955r_1050_268, kms_s_0209r_1050_268, kms_s_0899r_1050_268, s_0185, s_0209, s_0899, s_0955)) + (intracellular * function_273(Keq_r_1073_272, Vmax_r_1073_272, intracellular, kmp_s_0185r_1073_272, kmp_s_0960r_1073_272, kms_s_0238r_1073_272, kms_s_0899r_1073_272, s_0185, s_0238, s_0899, s_0960)) - (intracellular * function_129(Keq_r_0509_128, Vmax_r_0509_128, intracellular, kmp_s_0899r_0509_128, kmp_s_1091r_0509_128, kmp_s_1434_br_0509_128, kms_s_0185r_0509_128, kms_s_0430r_0509_128, kms_s_0763_br_0509_128, kms_s_1096r_0509_128, s_0185, s_0430, s_0763_b, s_0899, s_1091, s_1096, s_1434_b)) - (intracellular * function_130(Keq_r_0510_129, Vmax_r_0510_129, intracellular, kmp_s_0899r_0510_129, kmp_s_1082r_0510_129, kms_s_0185r_0510_129, kms_s_0763_br_0510_129, kms_s_0907r_0510_129, kms_s_1087r_0510_129, s_0185, s_0763_b, s_0899, s_0907, s_1082, s_1087)) - (intracellular * function_152(Keq_r_0582_151, Vmax_r_0582_151, intracellular, kmp_s_0514r_0582_151, kmp_s_0763_br_0582_151, kmp_s_0798r_0582_151, kms_s_0185r_0582_151, kms_s_0380r_0582_151, kms_s_1434_br_0582_151, s_0185, s_0380, s_0514, s_0763_b, s_0798, s_1434_b));
    der(s_0193) = (intracellular * function_214(Vmax_r_0866_213, kms_s_0264r_0866_213, s_0264, s_0193, Keq_r_0866_213, kmp_s_0193r_0866_213, s_0193, kmI_s_0193mr_0866_213, intracellular)) - (intracellular * function_104(Keq_r_0398_103, Vmax_r_0398_103, intracellular, kmp_s_1243r_0398_103, kmp_s_1434_br_0398_103, kms_s_0193r_0398_103, s_0193, s_1243, s_1434_b));
    der(s_0195) = (intracellular * function_124(Keq_r_0496_123, Vmax_r_0496_123, intracellular, kmp_s_0195r_0496_123, kmp_s_0605r_0496_123, kms_s_0712r_0496_123, kms_s_0850r_0496_123, s_0195, s_0605, s_0712, s_0850)) - (2.0 * intracellular * function_253(Keq_r_0993_252, Vmax_r_0993_252, intracellular, kmp_s_0605r_0993_252, kmp_s_1091r_0993_252, kmp_s_1327r_0993_252, kms_s_0195r_0993_252, kms_s_0763_br_0993_252, kms_s_1096r_0993_252, s_0195, s_0605, s_0763_b, s_1091, s_1096, s_1327));
    der(s_0206) = (intracellular * function_42(Keq_r_0172_41, Vmax_r_0172_41, intracellular, kmp_s_0206r_0172_41, kmp_s_0400r_0172_41, kmp_s_0763_br_0172_41, kms_s_0304r_0172_41, kms_s_0446r_0172_41, s_0206, s_0304, s_0400, s_0446, s_0763_b)) - (intracellular * function_210(Keq_r_0856_209, Vmax_r_0856_209, intracellular, kmp_s_0397r_0856_209, kmp_s_0763_br_0856_209, kmp_s_1349r_0856_209, kmp_s_1517r_0856_209, kms_s_0206r_0856_209, kms_s_1521r_0856_209, s_0206, s_0397, s_0763_b, s_1349, s_1517, s_1521));
    der(s_0209) = (intracellular * function_231(Keq_r_0913_230, Vmax_r_0913_230, intracellular, kmp_s_0209r_0913_230, kmp_s_0470r_0913_230, kmp_s_1096r_0913_230, kms_s_1091r_0913_230, kms_s_1258r_0913_230, s_0209, s_0470, s_1091, s_1096, s_1258)) - (intracellular * function_269(Keq_r_1050_268, Vmax_r_1050_268, intracellular, kmp_s_0185r_1050_268, kmp_s_0955r_1050_268, kms_s_0209r_1050_268, kms_s_0899r_1050_268, s_0185, s_0209, s_0899, s_0955));
    der(s_0212) = (intracellular * function_160(Keq_r_0605_159, Vmax_r_0605_159, intracellular, kmp_s_0212r_0605_159, kmp_s_1434_br_0605_159, kms_s_0532r_0605_159, s_0212, s_0532, s_1434_b)) - (intracellular * function_150(Keq_r_0577_149, Vmax_r_0577_149, intracellular, kmp_s_0185r_0577_149, kmp_s_0916r_0577_149, kms_s_0212r_0577_149, kms_s_0899r_0577_149, s_0185, s_0212, s_0899, s_0916));
    der(s_0215) = (intracellular * function_62(Keq_r_0262_61, Vmax_r_0262_61, intracellular, kmp_s_0215r_0262_61, kmp_s_0470r_0262_61, kmp_s_0763_br_0262_61, kmp_s_1087r_0262_61, kms_s_0303r_0262_61, kms_s_1082r_0262_61, s_0215, s_0303, s_0470, s_0763_b, s_1082, s_1087)) - (intracellular * function_63(Keq_r_0263_62, Vmax_r_0263_62, intracellular, kmp_s_0302r_0263_62, kmp_s_1091r_0263_62, kms_s_0215r_0263_62, kms_s_0763_br_0263_62, kms_s_1096r_0263_62, s_0215, s_0302, s_0763_b, s_1091, s_1096));
    der(s_0216) = (intracellular * function_17(Keq_r_0043_16, Vmax_r_0043_16, intracellular, kmp_s_0216r_0043_16, kmp_s_1207r_0043_16, kms_s_0356r_0043_16, s_0216, s_0356, s_1207)) - (intracellular * function_16(Keq_r_0042_15, Vmax_r_0042_15, intracellular, kmp_s_0217r_0042_15, kmp_s_1434_br_0042_15, kms_s_0216r_0042_15, s_0216, s_0217, s_1434_b));
    der(s_0217) = (intracellular * function_16(Keq_r_0042_15, Vmax_r_0042_15, intracellular, kmp_s_0217r_0042_15, kmp_s_1434_br_0042_15, kms_s_0216r_0042_15, s_0216, s_0217, s_1434_b)) - (intracellular * function_250(Keq_r_0976_249, Vmax_r_0976_249, intracellular, kmp_s_1091r_0976_249, kmp_s_1306r_0976_249, kms_s_0217r_0976_249, kms_s_0763_br_0976_249, kms_s_1096r_0976_249, s_0217, s_0763_b, s_1091, s_1096, s_1306));
    der(s_0218) = (intracellular * function_249(Keq_r_0972_248, Vmax_r_0972_248, intracellular, kmp_s_0218r_0972_248, kmp_s_0470r_0972_248, kmp_s_0514r_0972_248, kms_s_0943r_0972_248, kms_s_1187r_0972_248, s_0218, s_0470, s_0514, s_0943, s_1187)) - (intracellular * function_18(Keq_r_0044_17, Vmax_r_0044_17, intracellular, kmp_s_1091r_0044_17, kmp_s_1325r_0044_17, kms_s_0218r_0044_17, kms_s_0763_br_0044_17, kms_s_1096r_0044_17, s_0218, s_0763_b, s_1091, s_1096, s_1325));
    der(s_0225) = (intracellular * function_158(Keq_r_0599_157, Vmax_r_0599_157, intracellular, kmp_s_0225r_0599_157, kmp_s_0514r_0599_157, kmp_s_0763_br_0599_157, kms_s_0374r_0599_157, kms_s_0380r_0599_157, kms_s_1434_br_0599_157, s_0225, s_0374, s_0380, s_0514, s_0763_b, s_1434_b)) - (intracellular * function_157(Keq_r_0598_156, Vmax_r_0598_156, intracellular, kmp_s_0031r_0598_156, kmp_s_0514r_0598_156, kmp_s_1091r_0598_156, kms_s_0225r_0598_156, kms_s_0763_br_0598_156, kms_s_1096r_0598_156, s_0031, s_0225, s_0514, s_0763_b, s_1091, s_1096));
    der(s_0234) = (intracellular * function_21(Keq_r_0059_20, Vmax_r_0059_20, intracellular, kmp_s_0234r_0059_20, kmp_s_1082r_0059_20, kms_s_0254r_0059_20, kms_s_0763_br_0059_20, kms_s_1087r_0059_20, s_0234, s_0254, s_0763_b, s_1082, s_1087)) - (intracellular * function_191(Keq_r_0721_190, Vmax_r_0721_190, intracellular, kmp_s_0254r_0721_190, kmp_s_0763_br_0721_190, kmp_s_1096r_0721_190, kms_s_0234r_0721_190, kms_s_1091r_0721_190, s_0234, s_0254, s_0763_b, s_1091, s_1096));
    der(s_0238) = (intracellular * function_98(Keq_r_0384_97, Vmax_r_0384_97, intracellular, kmp_s_0238r_0384_97, kmp_s_1434_br_0384_97, kms_s_0018r_0384_97, s_0018, s_0238, s_1434_b)) - (intracellular * function_11(Keq_r_0026_10, Vmax_r_0026_10, intracellular, kmp_s_0167r_0026_10, kmp_s_0514r_0026_10, kmp_s_0763_br_0026_10, kms_s_0238r_0026_10, kms_s_0380r_0026_10, kms_s_1434_br_0026_10, s_0167, s_0238, s_0380, s_0514, s_0763_b, s_1434_b)) - (intracellular * function_273(Keq_r_1073_272, Vmax_r_1073_272, intracellular, kmp_s_0185r_1073_272, kmp_s_0960r_1073_272, kms_s_0238r_1073_272, kms_s_0899r_1073_272, s_0185, s_0238, s_0899, s_0960));
    der(s_0247) = (intracellular * function_189(Keq_r_0719_188, Vmax_r_0719_188, intracellular, kmp_s_0247r_0719_188, kmp_s_0763_br_0719_188, kmp_s_1096r_0719_188, kms_s_0046r_0719_188, kms_s_1091r_0719_188, s_0046, s_0247, s_0763_b, s_1091, s_1096)) - (intracellular * function_19(Keq_r_0057_18, Vmax_r_0057_18, intracellular, kmp_s_0046r_0057_18, kmp_s_1082r_0057_18, kms_s_0247r_0057_18, kms_s_0763_br_0057_18, kms_s_1087r_0057_18, s_0046, s_0247, s_0763_b, s_1082, s_1087));
    der(s_0254) = (intracellular * function_191(Keq_r_0721_190, Vmax_r_0721_190, intracellular, kmp_s_0254r_0721_190, kmp_s_0763_br_0721_190, kmp_s_1096r_0721_190, kms_s_0234r_0721_190, kms_s_1091r_0721_190, s_0234, s_0254, s_0763_b, s_1091, s_1096)) - (intracellular * function_21(Keq_r_0059_20, Vmax_r_0059_20, intracellular, kmp_s_0234r_0059_20, kmp_s_1082r_0059_20, kms_s_0254r_0059_20, kms_s_0763_br_0059_20, kms_s_1087r_0059_20, s_0234, s_0254, s_0763_b, s_1082, s_1087));
    der(s_0257) = (intracellular * function_190(Keq_r_0720_189, Vmax_r_0720_189, intracellular, kmp_s_0257r_0720_189, kmp_s_0763_br_0720_189, kmp_s_1096r_0720_189, kms_s_0052r_0720_189, kms_s_1091r_0720_189, s_0052, s_0257, s_0763_b, s_1091, s_1096)) - (intracellular * function_20(Keq_r_0058_19, Vmax_r_0058_19, intracellular, kmp_s_0052r_0058_19, kmp_s_1082r_0058_19, kms_s_0257r_0058_19, kms_s_0763_br_0058_19, kms_s_1087r_0058_19, s_0052, s_0257, s_0763_b, s_1082, s_1087));
    der(s_0261) = (intracellular * function_192(Keq_r_0722_191, Vmax_r_0722_191, intracellular, kmp_s_0261r_0722_191, kmp_s_0763_br_0722_191, kmp_s_1096r_0722_191, kms_s_0055r_0722_191, kms_s_1091r_0722_191, s_0055, s_0261, s_0763_b, s_1091, s_1096)) - (intracellular * function_22(Keq_r_0060_21, Vmax_r_0060_21, intracellular, kmp_s_0055r_0060_21, kmp_s_1082r_0060_21, kms_s_0261r_0060_21, kms_s_0763_br_0060_21, kms_s_1087r_0060_21, s_0055, s_0261, s_0763_b, s_1082, s_1087));
    der(s_0264) = (intracellular_212 * function_213(Vmax_r_0865_212, kms_s_0265r_0865_212, kms_s_0400r_0865_212, s_0265, s_0400, s_0264, s_0446, Keq_r_0865_212, kmp_s_0264r_0865_212, kmp_s_0446r_0865_212, s_0446, kmI_s_0446mr_0865_212, intracellular_212)) - (intracellular * function_214(Vmax_r_0866_213, kms_s_0264r_0866_213, s_0264, s_0193, Keq_r_0866_213, kmp_s_0193r_0866_213, s_0193, kmI_s_0193mr_0866_213, intracellular));
    der(s_0265) = (intracellular * function_134(Vmax_r_0525_133, kms_s_0731r_0525_133, kms_s_1082r_0525_133, kms_s_1207r_0525_133, s_0731, s_1082, s_1207, s_0265, s_0763_b, s_1087, Keq_r_0525_133, kmp_s_0265r_0525_133, kmp_s_0763_br_0525_133, kmp_s_1087r_0525_133, s_0731, kmI_s_0731mr_0525_133, intracellular)) - (intracellular_212 * function_213(Vmax_r_0865_212, kms_s_0265r_0865_212, kms_s_0400r_0865_212, s_0265, s_0400, s_0264, s_0446, Keq_r_0865_212, kmp_s_0264r_0865_212, kmp_s_0446r_0865_212, s_0446, kmI_s_0446mr_0865_212, intracellular_212));
    der(s_0267) = (intracellular * function_251(Keq_r_0977_250, Vmax_r_0977_250, intracellular, kmp_s_0267r_0977_250, kmp_s_0400r_0977_250, kmp_s_0763_br_0977_250, kms_s_0446r_0977_250, kms_s_1306r_0977_250, s_0267, s_0400, s_0446, s_0763_b, s_1306)) - (intracellular * function_25(Keq_r_0068_24, Vmax_r_0068_24, intracellular, kmp_s_0330r_0068_24, kmp_s_1207r_0068_24, kms_s_0267r_0068_24, kms_s_1243r_0068_24, s_0267, s_0330, s_1207, s_1243));
    der(s_0268) = (intracellular * function_87(Keq_r_0347_86, Vmax_r_0347_86, intracellular, kmp_s_0268r_0347_86, kmp_s_0689r_0347_86, kmp_s_1082r_0347_86, kmp_s_1434_br_0347_86, kms_s_0763_br_0347_86, kms_s_0963r_0347_86, kms_s_1087r_0347_86, kms_s_1160r_0347_86, s_0268, s_0689, s_0763_b, s_0963, s_1082, s_1087, s_1160, s_1434_b)) - (intracellular * function_60(Keq_r_0258_59, Vmax_r_0258_59, intracellular, kmp_s_0124r_0258_59, kmp_s_1091r_0258_59, kms_s_0268r_0258_59, kms_s_0763_br_0258_59, kms_s_1096r_0258_59, s_0124, s_0268, s_0763_b, s_1091, s_1096));
    der(s_0297) = (intracellular * function_13(Keq_r_0031_12, Vmax_r_0031_12, intracellular, kmp_s_0297r_0031_12, kmp_s_0470r_0031_12, kms_s_0010r_0031_12, kms_s_0763_br_0031_12, s_0010, s_0297, s_0470, s_0763_b)) - (intracellular * function_179(Keq_r_0674_178, Vmax_r_0674_178, intracellular, kmp_s_0185r_0674_178, kmp_s_0925r_0674_178, kms_s_0297r_0674_178, kms_s_0899r_0674_178, s_0185, s_0297, s_0899, s_0925));
    der(s_0301) = (intracellular * function_53(Keq_r_0233_52, Vmax_r_0233_52, intracellular, kmp_s_0301r_0233_52, kmp_s_0400r_0233_52, kms_s_0446r_0233_52, kms_s_0881r_0233_52, s_0301, s_0400, s_0446, s_0881)) - (intracellular * function_55(Keq_r_0238_54, Vmax_r_0238_54, intracellular, kmp_s_0886r_0238_54, kmp_s_1091r_0238_54, kmp_s_1207r_0238_54, kms_s_0301r_0238_54, kms_s_0763_br_0238_54, kms_s_1096r_0238_54, s_0301, s_0763_b, s_0886, s_1091, s_1096, s_1207));
    der(s_0302) = (intracellular * function_63(Keq_r_0263_62, Vmax_r_0263_62, intracellular, kmp_s_0302r_0263_62, kmp_s_1091r_0263_62, kms_s_0215r_0263_62, kms_s_0763_br_0263_62, kms_s_1096r_0263_62, s_0215, s_0302, s_0763_b, s_1091, s_1096)) - (intracellular * function_65(Keq_r_0265_64, Vmax_r_0265_64, intracellular, kmp_s_1091r_0265_64, kmp_s_1434_br_0265_64, kmp_s_1455r_0265_64, kms_s_0302r_0265_64, kms_s_0763_br_0265_64, kms_s_1096r_0265_64, kms_s_1160r_0265_64, s_0302, s_0763_b, s_1091, s_1096, s_1160, s_1434_b, s_1455));
    der(s_0303) = (intracellular * function_68(Keq_r_0268_67, Vmax_r_0268_67, intracellular, kmp_s_0303r_0268_67, kmp_s_1091r_0268_67, kmp_s_1434_br_0268_67, kms_s_0124r_0268_67, kms_s_0763_br_0268_67, kms_s_1096r_0268_67, kms_s_1160r_0268_67, s_0124, s_0303, s_0763_b, s_1091, s_1096, s_1160, s_1434_b)) - (intracellular * function_62(Keq_r_0262_61, Vmax_r_0262_61, intracellular, kmp_s_0215r_0262_61, kmp_s_0470r_0262_61, kmp_s_0763_br_0262_61, kmp_s_1087r_0262_61, kms_s_0303r_0262_61, kms_s_1082r_0262_61, s_0215, s_0303, s_0470, s_0763_b, s_1082, s_1087));
    der(s_0304) = (intracellular * function_256(Keq_r_1007_255, Vmax_r_1007_255, intracellular, kmp_s_0304r_1007_255, kmp_s_1207r_1007_255, kms_s_0400r_1007_255, kms_s_0763_br_1007_255, kms_s_1347r_1007_255, s_0304, s_0400, s_0763_b, s_1207, s_1347)) - (intracellular * function_42(Keq_r_0172_41, Vmax_r_0172_41, intracellular, kmp_s_0206r_0172_41, kmp_s_0400r_0172_41, kmp_s_0763_br_0172_41, kms_s_0304r_0172_41, kms_s_0446r_0172_41, s_0206, s_0304, s_0400, s_0446, s_0763_b));
    der(s_0306) = (intracellular * function_162(Keq_r_0607_161, Vmax_r_0607_161, intracellular, kmp_s_0306r_0607_161, kmp_s_0763_br_0607_161, kmp_s_1087r_0607_161, kms_s_0816r_0607_161, kms_s_1082r_0607_161, kms_s_1434_br_0607_161, s_0306, s_0763_b, s_0816, s_1082, s_1087, s_1434_b)) - (intracellular * function_143(Keq_r_0551_142, Vmax_r_0551_142, intracellular, kmp_s_0434r_0551_142, kmp_s_0605r_0551_142, kmp_s_0752r_0551_142, kmp_s_0763_br_0551_142, kmp_s_0899r_0551_142, kms_s_0306r_0551_142, kms_s_0446r_0551_142, kms_s_0907r_0551_142, kms_s_1434_br_0551_142, s_0306, s_0434, s_0446, s_0605, s_0752, s_0763_b, s_0899, s_0907, s_1434_b));
    der(s_0307) = (intracellular * function_140(Keq_r_0538_139, Vmax_r_0538_139, intracellular, kmp_s_0307r_0538_139, kmp_s_0430r_0538_139, kmp_s_0470r_0538_139, kmp_s_1087r_0538_139, kms_s_0309r_0538_139, kms_s_0740r_0538_139, kms_s_1082r_0538_139, s_0307, s_0309, s_0430, s_0470, s_0740, s_1082, s_1087)) - (intracellular * function_26(Keq_r_0093_25, Vmax_r_0093_25, intracellular, kmp_s_0328r_0093_25, kmp_s_1091r_0093_25, kms_s_0307r_0093_25, kms_s_0763_br_0093_25, kms_s_1096r_0093_25, s_0307, s_0328, s_0763_b, s_1091, s_1096)) - (intracellular * function_141(Keq_r_0539_140, Vmax_r_0539_140, intracellular, kmp_s_0309r_0539_140, kmp_s_0943r_0539_140, kms_s_0307r_0539_140, kms_s_0740r_0539_140, kms_s_1434_br_0539_140, s_0307, s_0309, s_0740, s_0943, s_1434_b)) - (intracellular * function_186(Keq_r_0707_185, Vmax_r_0707_185, intracellular, kmp_s_0015r_0707_185, kmp_s_1096r_0707_185, kms_s_0307r_0707_185, kms_s_1091r_0707_185, s_0015, s_0307, s_1091, s_1096)) - (intracellular * function_261(Keq_r_1032_260, Vmax_r_1032_260, intracellular, kmp_s_0601r_1032_260, kmp_s_0619r_1032_260, kms_s_0307r_1032_260, kms_s_0624r_1032_260, s_0307, s_0601, s_0619, s_0624));
    der(s_0309) = (intracellular * function_96(Keq_r_0375_95, Vmax_r_0375_95, intracellular, kmp_s_0309r_0375_95, kmp_s_1091r_0375_95, kms_s_0601r_0375_95, kms_s_0763_br_0375_95, kms_s_1096r_0375_95, s_0309, s_0601, s_0763_b, s_1091, s_1096)) + (intracellular * function_141(Keq_r_0539_140, Vmax_r_0539_140, intracellular, kmp_s_0309r_0539_140, kmp_s_0943r_0539_140, kms_s_0307r_0539_140, kms_s_0740r_0539_140, kms_s_1434_br_0539_140, s_0307, s_0309, s_0740, s_0943, s_1434_b)) + (intracellular * function_185(Keq_r_0702_184, Vmax_r_0702_184, intracellular, kmp_s_0309r_0702_184, kmp_s_0763_br_0702_184, kmp_s_0933r_0702_184, kms_s_0328r_0702_184, kms_s_0917r_0702_184, s_0309, s_0328, s_0763_b, s_0917, s_0933)) + (intracellular * function_223(Keq_r_0885_222, Vmax_r_0885_222, intracellular, kmp_s_0309r_0885_222, kmp_s_0325r_0885_222, kms_s_0122r_0885_222, kms_s_0317r_0885_222, s_0122, s_0309, s_0317, s_0325)) + (intracellular * function_227(Keq_r_0889_226, Vmax_r_0889_226, intracellular, kmp_s_0309r_0889_226, kmp_s_0763_br_0889_226, kmp_s_1052r_0889_226, kms_s_0122r_0889_226, kms_s_1048r_0889_226, s_0122, s_0309, s_0763_b, s_1048, s_1052)) - (intracellular * function_120(Keq_r_0479_119, Vmax_r_0479_119, intracellular, kmp_s_0122r_0479_119, kmp_s_0400r_0479_119, kmp_s_1207r_0479_119, kms_s_0309r_0479_119, kms_s_0446r_0479_119, kms_s_0689r_0479_119, s_0122, s_0309, s_0400, s_0446, s_0689, s_1207)) - (intracellular * function_140(Keq_r_0538_139, Vmax_r_0538_139, intracellular, kmp_s_0307r_0538_139, kmp_s_0430r_0538_139, kmp_s_0470r_0538_139, kmp_s_1087r_0538_139, kms_s_0309r_0538_139, kms_s_0740r_0538_139, kms_s_1082r_0538_139, s_0307, s_0309, s_0430, s_0470, s_0740, s_1082, s_1087));
    der(s_0315) = (intracellular * function_3(Keq_r_0008_2, Vmax_r_0008_2, intracellular, kmp_s_0315r_0008_2, kms_s_0079r_0008_2, s_0079, s_0315)) - (intracellular * function_159(Keq_r_0604_158, Vmax_r_0604_158, intracellular, kmp_s_0317r_0604_158, kmp_s_0532r_0604_158, kmp_s_0763_br_0604_158, kmp_s_0899r_0604_158, kms_s_0315r_0604_158, kms_s_0907r_0604_158, s_0315, s_0317, s_0532, s_0763_b, s_0899, s_0907));
    der(s_0316) = (intracellular * function_222(Keq_r_0884_221, Vmax_r_0884_221, intracellular, kmp_s_0316r_0884_221, kmp_s_0400r_0884_221, kmp_s_0763_br_0884_221, kmp_s_1207r_0884_221, kms_s_0158r_0884_221, kms_s_0446r_0884_221, s_0158, s_0316, s_0400, s_0446, s_0763_b, s_1207)) - (intracellular * function_221(Keq_r_0883_220, Vmax_r_0883_220, intracellular, kmp_s_0318r_0883_220, kmp_s_0763_br_0883_220, kms_s_0316r_0883_220, kms_s_0470r_0883_220, s_0316, s_0318, s_0470, s_0763_b));
    der(s_0317) = (intracellular * function_39(Keq_r_0169_38, Vmax_r_0169_38, intracellular, kmp_s_0317r_0169_38, kmp_s_0692r_0169_38, kms_s_0009r_0169_38, s_0009, s_0317, s_0692)) + (intracellular * function_159(Keq_r_0604_158, Vmax_r_0604_158, intracellular, kmp_s_0317r_0604_158, kmp_s_0532r_0604_158, kmp_s_0763_br_0604_158, kmp_s_0899r_0604_158, kms_s_0315r_0604_158, kms_s_0907r_0604_158, s_0315, s_0317, s_0532, s_0763_b, s_0899, s_0907)) - (intracellular * function_223(Keq_r_0885_222, Vmax_r_0885_222, intracellular, kmp_s_0309r_0885_222, kmp_s_0325r_0885_222, kms_s_0122r_0885_222, kms_s_0317r_0885_222, s_0122, s_0309, s_0317, s_0325));
    der(s_0318) = (intracellular * function_221(Keq_r_0883_220, Vmax_r_0883_220, intracellular, kmp_s_0318r_0883_220, kmp_s_0763_br_0883_220, kms_s_0316r_0883_220, kms_s_0470r_0883_220, s_0316, s_0318, s_0470, s_0763_b)) - (intracellular * function_224(Keq_r_0886_223, Vmax_r_0886_223, intracellular, kmp_s_0009r_0886_223, kmp_s_0400r_0886_223, kmp_s_0763_br_0886_223, kmp_s_1207r_0886_223, kms_s_0318r_0886_223, kms_s_0446r_0886_223, kms_s_0881r_0886_223, s_0009, s_0318, s_0400, s_0446, s_0763_b, s_0881, s_1207));
    der(s_0319) = (intracellular * function_5(Keq_r_0014_4, Vmax_r_0014_4, intracellular, kmp_s_0319r_0014_4, kmp_s_0430r_0014_4, kms_s_0146r_0014_4, kms_s_0763_br_0014_4, kms_s_1434_br_0014_4, s_0146, s_0319, s_0430, s_0763_b, s_1434_b)) - (intracellular * function_232(Keq_r_0934_231, Vmax_r_0934_231, intracellular, kmp_s_0320r_0934_231, kmp_s_1207r_0934_231, kms_s_0319r_0934_231, kms_s_1434_br_0934_231, s_0319, s_0320, s_1207, s_1434_b));
    der(s_0320) = (intracellular * function_232(Keq_r_0934_231, Vmax_r_0934_231, intracellular, kmp_s_0320r_0934_231, kmp_s_1207r_0934_231, kms_s_0319r_0934_231, kms_s_1434_br_0934_231, s_0319, s_0320, s_1207, s_1434_b)) + (intracellular * function_239(Keq_r_0949_238, Vmax_r_0949_238, intracellular, kmp_s_0320r_0949_238, kmp_s_1283r_0949_238, kms_s_0335r_0949_238, s_0320, s_0335, s_1283)) - (intracellular * function_238(Keq_r_0948_237, Vmax_r_0948_237, intracellular, kmp_s_0335r_0948_237, kmp_s_1207r_0948_237, kmp_s_1434_br_0948_237, kms_s_0163r_0948_237, kms_s_0320r_0948_237, s_0163, s_0320, s_0335, s_1207, s_1434_b));
    der(s_0325) = (intracellular * function_223(Keq_r_0885_222, Vmax_r_0885_222, intracellular, kmp_s_0309r_0885_222, kmp_s_0325r_0885_222, kms_s_0122r_0885_222, kms_s_0317r_0885_222, s_0122, s_0309, s_0317, s_0325)) - (intracellular * function_161(Keq_r_0606_160, Vmax_r_0606_160, intracellular, kmp_s_0816r_0606_160, kmp_s_1434_br_0606_160, kms_s_0325r_0606_160, s_0325, s_0816, s_1434_b));
    der(s_0328) = (intracellular * function_26(Keq_r_0093_25, Vmax_r_0093_25, intracellular, kmp_s_0328r_0093_25, kmp_s_1091r_0093_25, kms_s_0307r_0093_25, kms_s_0763_br_0093_25, kms_s_1096r_0093_25, s_0307, s_0328, s_0763_b, s_1091, s_1096)) - (intracellular * function_185(Keq_r_0702_184, Vmax_r_0702_184, intracellular, kmp_s_0309r_0702_184, kmp_s_0763_br_0702_184, kmp_s_0933r_0702_184, kms_s_0328r_0702_184, kms_s_0917r_0702_184, s_0309, s_0328, s_0763_b, s_0917, s_0933));
    der(s_0330) = (intracellular * function_25(Keq_r_0068_24, Vmax_r_0068_24, intracellular, kmp_s_0330r_0068_24, kmp_s_1207r_0068_24, kms_s_0267r_0068_24, kms_s_1243r_0068_24, s_0267, s_0330, s_1207, s_1243)) - (intracellular * function_78(Keq_r_0306_77, Vmax_r_0306_77, intracellular, kmp_s_0500r_0306_77, kmp_s_1207r_0306_77, kms_s_0330r_0306_77, s_0330, s_0500, s_1207));
    der(s_0331) = (intracellular * function_229(Keq_r_0891_228, Vmax_r_0891_228, intracellular, kmp_s_0331r_0891_228, kmp_s_0434r_0891_228, kmp_s_0763_br_0891_228, kms_s_0427r_0891_228, kms_s_0446r_0891_228, s_0331, s_0427, s_0434, s_0446, s_0763_b)) - (intracellular * function_47(Keq_r_0220_46, Vmax_r_0220_46, intracellular, kmp_s_0605r_0220_46, kmp_s_1066r_0220_46, kms_s_0331r_0220_46, kms_s_0439r_0220_46, s_0331, s_0439, s_0605, s_1066)) - (intracellular * function_56(Keq_r_0245_55, Vmax_r_0245_55, intracellular, kmp_s_0334r_0245_55, kmp_s_0605r_0245_55, kms_s_0331r_0245_55, kms_s_0446r_0245_55, s_0331, s_0334, s_0446, s_0605)) - (intracellular * function_132(Keq_r_0514_131, Vmax_r_0514_131, intracellular, kmp_s_0333r_0514_131, kmp_s_0605r_0514_131, kmp_s_0899r_0514_131, kms_s_0331r_0514_131, kms_s_0907r_0514_131, kms_s_1434_br_0514_131, s_0331, s_0333, s_0605, s_0899, s_0907, s_1434_b)) - (intracellular * function_203(Keq_r_0793_202, Vmax_r_0793_202, intracellular, kmp_s_0605r_0793_202, kmp_s_1155r_0793_202, kms_s_0331r_0793_202, kms_s_1154r_0793_202, s_0331, s_0605, s_1154, s_1155));
    der(s_0333) = (intracellular * function_132(Keq_r_0514_131, Vmax_r_0514_131, intracellular, kmp_s_0333r_0514_131, kmp_s_0605r_0514_131, kmp_s_0899r_0514_131, kms_s_0331r_0514_131, kms_s_0907r_0514_131, kms_s_1434_br_0514_131, s_0331, s_0333, s_0605, s_0899, s_0907, s_1434_b)) - (intracellular * function_228(Keq_r_0890_227, Vmax_r_0890_227, intracellular, kmp_s_0400r_0890_227, kmp_s_0763_br_0890_227, kmp_s_1048r_0890_227, kmp_s_1207r_0890_227, kms_s_0333r_0890_227, kms_s_0446r_0890_227, kms_s_0740r_0890_227, s_0333, s_0400, s_0446, s_0740, s_0763_b, s_1048, s_1207));
    der(s_0334) = (intracellular * function_56(Keq_r_0245_55, Vmax_r_0245_55, intracellular, kmp_s_0334r_0245_55, kmp_s_0605r_0245_55, kms_s_0331r_0245_55, kms_s_0446r_0245_55, s_0331, s_0334, s_0446, s_0605)) - (intracellular * function_220(Keq_r_0882_219, Vmax_r_0882_219, intracellular, kmp_s_0080r_0882_219, kmp_s_0605r_0882_219, kmp_s_0763_br_0882_219, kms_s_0334r_0882_219, kms_s_1434_br_0882_219, s_0080, s_0334, s_0605, s_0763_b, s_1434_b));
    der(s_0335) = (intracellular * function_238(Keq_r_0948_237, Vmax_r_0948_237, intracellular, kmp_s_0335r_0948_237, kmp_s_1207r_0948_237, kmp_s_1434_br_0948_237, kms_s_0163r_0948_237, kms_s_0320r_0948_237, s_0163, s_0320, s_0335, s_1207, s_1434_b)) - (2.0 * intracellular * function_239(Keq_r_0949_238, Vmax_r_0949_238, intracellular, kmp_s_0320r_0949_238, kmp_s_1283r_0949_238, kms_s_0335r_0949_238, s_0320, s_0335, s_1283));
    der(s_0356) = (intracellular * function_9(Keq_r_0021_8, Vmax_r_0021_8, intracellular, kmp_s_0356r_0021_8, kmp_s_1207r_0021_8, kms_s_0533r_0021_8, kms_s_1243r_0021_8, kms_s_1434_br_0021_8, s_0356, s_0533, s_1207, s_1243, s_1434_b)) - (intracellular * function_17(Keq_r_0043_16, Vmax_r_0043_16, intracellular, kmp_s_0216r_0043_16, kmp_s_1207r_0043_16, kms_s_0356r_0043_16, s_0216, s_0356, s_1207));
    der(s_0366) = (intracellular * function_235(Vmax_r_0938_234, kms_s_0763_br_0938_234, kms_s_1277r_0938_234, s_0763_b, s_1277, s_0366, s_0470, Keq_r_0938_234, kmp_s_0366r_0938_234, kmp_s_0470r_0938_234, s_1277, kmI_s_1277mr_0938_234, intracellular)) + (intracellular * function_259(Keq_r_1026_258, Vmax_r_1026_258, intracellular, kmp_s_0366r_1026_258, kmp_s_0740r_1026_258, kms_s_0949r_1026_258, s_0366, s_0740, s_0949)) - (intracellular * function_44(Keq_r_0183_43, Vmax_r_0183_43, intracellular, kmp_s_0650r_0183_43, kmp_s_1082r_0183_43, kms_s_0366r_0183_43, kms_s_0763_br_0183_43, kms_s_1087r_0183_43, s_0366, s_0650, s_0763_b, s_1082, s_1087)) - (intracellular * function_45(Keq_r_0191_44, Vmax_r_0191_44, intracellular, kmp_s_0369r_0191_44, kmp_s_0763_br_0191_44, kmp_s_1096r_0191_44, kms_s_0366r_0191_44, kms_s_1091r_0191_44, kms_s_1434_br_0191_44, s_0366, s_0369, s_0763_b, s_1091, s_1096, s_1434_b));
    der(s_0369) = (intracellular * function_32(Keq_r_0127_31, Vmax_r_0127_31, intracellular, kmp_s_0369r_0127_31, kmp_s_0446r_0127_31, kmp_s_0514r_0127_31, kms_s_0380r_0127_31, kms_s_0434r_0127_31, kms_s_0605r_0127_31, s_0369, s_0380, s_0434, s_0446, s_0514, s_0605)) + (intracellular * function_45(Keq_r_0191_44, Vmax_r_0191_44, intracellular, kmp_s_0369r_0191_44, kmp_s_0763_br_0191_44, kmp_s_1096r_0191_44, kms_s_0366r_0191_44, kms_s_1091r_0191_44, kms_s_1434_br_0191_44, s_0366, s_0369, s_0763_b, s_1091, s_1096, s_1434_b)) + (intracellular * function_85(Keq_r_0340_84, Vmax_r_0340_84, intracellular, kmp_s_0369r_0340_84, kmp_s_0763_br_0340_84, kmp_s_0888r_0340_84, kms_s_0889r_0340_84, kms_s_1117r_0340_84, s_0369, s_0763_b, s_0888, s_0889, s_1117)) + (intracellular * function_200(Keq_r_0783_199, Vmax_r_0783_199, intracellular, kmp_s_0369r_0783_199, kmp_s_0763_br_0783_199, kmp_s_0917r_0783_199, kms_s_0805r_0783_199, kms_s_1117r_0783_199, s_0369, s_0763_b, s_0805, s_0917, s_1117)) - (intracellular * function_31(Keq_r_0125_30, Vmax_r_0125_30, intracellular, kmp_s_0380r_0125_30, kmp_s_1434_br_0125_30, kms_s_0369r_0125_30, kms_s_0514r_0125_30, kms_s_0763_br_0125_30, s_0369, s_0380, s_0514, s_0763_b, s_1434_b));
    der(s_0374) = (intracellular * function_29(Keq_r_0118_28, Vmax_r_0118_28, intracellular, kmp_s_0374r_0118_28, kmp_s_0514r_0118_28, kms_s_0380r_0118_28, s_0374, s_0380, s_0514)) - (intracellular * function_158(Keq_r_0599_157, Vmax_r_0599_157, intracellular, kmp_s_0225r_0599_157, kmp_s_0514r_0599_157, kmp_s_0763_br_0599_157, kms_s_0374r_0599_157, kms_s_0380r_0599_157, kms_s_1434_br_0599_157, s_0225, s_0374, s_0380, s_0514, s_0763_b, s_1434_b));
    der(s_0380) = (intracellular * function_31(Keq_r_0125_30, Vmax_r_0125_30, intracellular, kmp_s_0380r_0125_30, kmp_s_1434_br_0125_30, kms_s_0369r_0125_30, kms_s_0514r_0125_30, kms_s_0763_br_0125_30, s_0369, s_0380, s_0514, s_0763_b, s_1434_b)) + (intracellular * function_236(Keq_r_0940_235, Vmax_r_0940_235, intracellular, kmp_s_0380r_0940_235, kmp_s_0470r_0940_235, kmp_s_1087r_0940_235, kms_s_0514r_0940_235, kms_s_1082r_0940_235, kms_s_1277r_0940_235, s_0380, s_0470, s_0514, s_1082, s_1087, s_1277)) - (intracellular * function_11(Keq_r_0026_10, Vmax_r_0026_10, intracellular, kmp_s_0167r_0026_10, kmp_s_0514r_0026_10, kmp_s_0763_br_0026_10, kms_s_0238r_0026_10, kms_s_0380r_0026_10, kms_s_1434_br_0026_10, s_0167, s_0238, s_0380, s_0514, s_0763_b, s_1434_b)) - (2.0 * intracellular * function_29(Keq_r_0118_28, Vmax_r_0118_28, intracellular, kmp_s_0374r_0118_28, kmp_s_0514r_0118_28, kms_s_0380r_0118_28, s_0374, s_0380, s_0514)) - (intracellular * function_30(Keq_r_0123_29, Vmax_r_0123_29, intracellular, kmp_s_0400r_0123_29, kmp_s_0763_br_0123_29, kmp_s_1005r_0123_29, kmp_s_1207r_0123_29, kms_s_0380r_0123_29, kms_s_0446r_0123_29, kms_s_0458r_0123_29, s_0380, s_0400, s_0446, s_0458, s_0763_b, s_1005, s_1207)) - (intracellular * function_32(Keq_r_0127_31, Vmax_r_0127_31, intracellular, kmp_s_0369r_0127_31, kmp_s_0446r_0127_31, kmp_s_0514r_0127_31, kms_s_0380r_0127_31, kms_s_0434r_0127_31, kms_s_0605r_0127_31, s_0369, s_0380, s_0434, s_0446, s_0514, s_0605)) - (intracellular * function_80(Keq_r_0328_79, Vmax_r_0328_79, intracellular, kmp_s_0507r_0328_79, kmp_s_0514r_0328_79, kmp_s_0763_br_0328_79, kms_s_0380r_0328_79, kms_s_1156r_0328_79, kms_s_1434_br_0328_79, s_0380, s_0507, s_0514, s_0763_b, s_1156, s_1434_b)) - (intracellular * function_112(Keq_r_0430_111, Vmax_r_0430_111, intracellular, kmp_s_0470r_0430_111, kmp_s_0514r_0430_111, kmp_s_1091r_0430_111, kmp_s_1140r_0430_111, kmp_s_1434_br_0430_111, kms_s_0380r_0430_111, kms_s_0763_br_0430_111, kms_s_1005r_0430_111, kms_s_1096r_0430_111, s_0380, s_0470, s_0514, s_0763_b, s_1005, s_1091, s_1096, s_1140, s_1434_b)) - (intracellular * function_152(Keq_r_0582_151, Vmax_r_0582_151, intracellular, kmp_s_0514r_0582_151, kmp_s_0763_br_0582_151, kmp_s_0798r_0582_151, kms_s_0185r_0582_151, kms_s_0380r_0582_151, kms_s_1434_br_0582_151, s_0185, s_0380, s_0514, s_0763_b, s_0798, s_1434_b)) - (intracellular * function_156(Keq_r_0589_155, Vmax_r_0589_155, intracellular, kmp_s_0514r_0589_155, kmp_s_1117r_0589_155, kms_s_0380r_0589_155, kms_s_0919r_0589_155, s_0380, s_0514, s_0919, s_1117)) - (intracellular * function_158(Keq_r_0599_157, Vmax_r_0599_157, intracellular, kmp_s_0225r_0599_157, kmp_s_0514r_0599_157, kmp_s_0763_br_0599_157, kms_s_0374r_0599_157, kms_s_0380r_0599_157, kms_s_1434_br_0599_157, s_0225, s_0374, s_0380, s_0514, s_0763_b, s_1434_b));
    der(s_0386) = (intracellular * function_282(Keq_r_1672_281, Vmax_r_1672_281, intracellular, kmp_s_0386r_1672_281, kms_s_1342r_1672_281, s_0386, s_1342)) - (intracellular * function_4(Keq_r_0009_3, Vmax_r_0009_3, intracellular, kmp_s_0514r_0009_3, kmp_s_0763_br_0009_3, kmp_s_1215r_0009_3, kms_s_0083r_0009_3, kms_s_0386r_0009_3, s_0083, s_0386, s_0514, s_0763_b, s_1215)) - (intracellular * function_93(Keq_r_0370_92, Vmax_r_0370_92, intracellular, kmp_s_0514r_0370_92, kmp_s_0763_br_0370_92, kmp_s_1399r_0370_92, kms_s_0386r_0370_92, kms_s_0596r_0370_92, s_0386, s_0514, s_0596, s_0763_b, s_1399)) - (intracellular * function_139(Keq_r_0534_138, Vmax_r_0534_138, intracellular, kmp_s_0083r_0534_138, kmp_s_0514r_0534_138, kmp_s_0763_br_0534_138, kms_s_0386r_0534_138, kms_s_1315r_0534_138, s_0083, s_0386, s_0514, s_0763_b, s_1315));
    der(s_0393) = (intracellular * function_36(Keq_r_0159_35, Vmax_r_0159_35, intracellular, kmp_s_0393r_0159_35, kmp_s_0917r_0159_35, kms_s_1290r_0159_35, kms_s_1434_br_0159_35, s_0393, s_0917, s_1290, s_1434_b)) - (intracellular * function_35(Keq_r_0157_34, Vmax_r_0157_34, intracellular, kmp_s_0400r_0157_34, kmp_s_0434r_0157_34, kmp_s_0763_br_0157_34, kms_s_0393r_0157_34, kms_s_0446r_0157_34, s_0393, s_0400, s_0434, s_0446, s_0763_b));
    der(s_0397) = (intracellular * function_210(Keq_r_0856_209, Vmax_r_0856_209, intracellular, kmp_s_0397r_0856_209, kmp_s_0763_br_0856_209, kmp_s_1349r_0856_209, kmp_s_1517r_0856_209, kms_s_0206r_0856_209, kms_s_1521r_0856_209, s_0206, s_0397, s_0763_b, s_1349, s_1517, s_1521)) - (intracellular * function_14(Keq_r_0034_13, Vmax_r_0034_13, intracellular, kmp_s_0434r_0034_13, kmp_s_1207r_0034_13, kms_s_0397r_0034_13, kms_s_1434_br_0034_13, s_0397, s_0434, s_1207, s_1434_b));
    der(s_0400) = (intracellular * function_30(Keq_r_0123_29, Vmax_r_0123_29, intracellular, kmp_s_0400r_0123_29, kmp_s_0763_br_0123_29, kmp_s_1005r_0123_29, kmp_s_1207r_0123_29, kms_s_0380r_0123_29, kms_s_0446r_0123_29, kms_s_0458r_0123_29, s_0380, s_0400, s_0446, s_0458, s_0763_b, s_1005, s_1207)) + (intracellular * function_33(Keq_r_0130_32, Vmax_r_0130_32, intracellular, kmp_s_0400r_0130_32, kmp_s_1070r_0130_32, kms_s_0446r_0130_32, kms_s_1071r_0130_32, s_0400, s_0446, s_1070, s_1071)) + (intracellular * function_35(Keq_r_0157_34, Vmax_r_0157_34, intracellular, kmp_s_0400r_0157_34, kmp_s_0434r_0157_34, kmp_s_0763_br_0157_34, kms_s_0393r_0157_34, kms_s_0446r_0157_34, s_0393, s_0400, s_0434, s_0446, s_0763_b)) + (intracellular * function_42(Keq_r_0172_41, Vmax_r_0172_41, intracellular, kmp_s_0206r_0172_41, kmp_s_0400r_0172_41, kmp_s_0763_br_0172_41, kms_s_0304r_0172_41, kms_s_0446r_0172_41, s_0206, s_0304, s_0400, s_0446, s_0763_b)) + (intracellular * function_53(Keq_r_0233_52, Vmax_r_0233_52, intracellular, kmp_s_0301r_0233_52, kmp_s_0400r_0233_52, kms_s_0446r_0233_52, kms_s_0881r_0233_52, s_0301, s_0400, s_0446, s_0881)) + (function_58(Keq_r_0249_57, Vmax_r_0249_57, kmp_s_0400r_0249_57, kmp_s_0766_br_0249_57, kmp_s_1207r_0249_57, kms_s_0446r_0249_57, kms_s_1434_br_0249_57, s_0400, s_0446, s_0766_b, s_1207, s_1434_b)) + (2.0 * intracellular * function_71(Keq_r_0277_70, Vmax_r_0277_70, intracellular, kmp_s_0400r_0277_70, kmp_s_0469r_0277_70, kmp_s_0763_br_0277_70, kmp_s_0899r_0277_70, kmp_s_1207r_0277_70, kms_s_0446r_0277_70, kms_s_0458r_0277_70, kms_s_0907r_0277_70, kms_s_1434_br_0277_70, s_0400, s_0446, s_0458, s_0469, s_0763_b, s_0899, s_0907, s_1207, s_1434_b)) + (intracellular * function_82(Keq_r_0336_81, Vmax_r_0336_81, intracellular, kmp_s_0400r_0336_81, kmp_s_0521r_0336_81, kmp_s_0763_br_0336_81, kmp_s_1207r_0336_81, kms_s_0430r_0336_81, kms_s_0446r_0336_81, kms_s_1430r_0336_81, s_0400, s_0430, s_0446, s_0521, s_0763_b, s_1207, s_1430)) + (intracellular * function_100(Keq_r_0386_99, Vmax_r_0386_99, intracellular, kmp_s_0400r_0386_99, kmp_s_0735r_0386_99, kmp_s_0763_br_0386_99, kms_s_0446r_0386_99, kms_s_0734r_0386_99, s_0400, s_0446, s_0734, s_0735, s_0763_b)) + (intracellular * function_120(Keq_r_0479_119, Vmax_r_0479_119, intracellular, kmp_s_0122r_0479_119, kmp_s_0400r_0479_119, kmp_s_1207r_0479_119, kms_s_0309r_0479_119, kms_s_0446r_0479_119, kms_s_0689r_0479_119, s_0122, s_0309, s_0400, s_0446, s_0689, s_1207)) + (intracellular * function_125(Keq_r_0499_124, Vmax_r_0499_124, intracellular, kmp_s_0400r_0499_124, kmp_s_0455r_0499_124, kmp_s_0763_br_0499_124, kms_s_0446r_0499_124, kms_s_0545r_0499_124, s_0400, s_0446, s_0455, s_0545, s_0763_b)) + (intracellular * function_128(Keq_r_0506_127, Vmax_r_0506_127, intracellular, kmp_s_0400r_0506_127, kmp_s_0894r_0506_127, kms_s_0446r_0506_127, kms_s_0899r_0506_127, s_0400, s_0446, s_0894, s_0899)) + (intracellular * function_133(Keq_r_0515_132, Vmax_r_0515_132, intracellular, kmp_s_0400r_0515_132, kmp_s_0763_br_0515_132, kmp_s_0907r_0515_132, kmp_s_1207r_0515_132, kms_s_0430r_0515_132, kms_s_0446r_0515_132, kms_s_0899r_0515_132, s_0400, s_0430, s_0446, s_0763_b, s_0899, s_0907, s_1207)) + (intracellular * function_145(Keq_r_0567_144, Vmax_r_0567_144, intracellular, kmp_s_0400r_0567_144, kmp_s_0706r_0567_144, kms_s_0446r_0567_144, kms_s_0752r_0567_144, s_0400, s_0446, s_0706, s_0752)) + (intracellular * function_147(Keq_r_0573_146, Vmax_r_0573_146, intracellular, kmp_s_0400r_0573_146, kmp_s_0410r_0573_146, kmp_s_0763_br_0573_146, kms_s_0446r_0573_146, kms_s_0545r_0573_146, s_0400, s_0410, s_0446, s_0545, s_0763_b)) + (intracellular * function_155(Keq_r_0588_154, Vmax_r_0588_154, intracellular, kmp_s_0400r_0588_154, kmp_s_0763_br_0588_154, kmp_s_1122r_0588_154, kms_s_0446r_0588_154, kms_s_0919r_0588_154, s_0400, s_0446, s_0763_b, s_0919, s_1122)) + (intracellular * function_188(Keq_r_0715_187, Vmax_r_0715_187, intracellular, kmp_s_0400r_0715_187, kmp_s_0470r_0715_187, kmp_s_0850r_0715_187, kmp_s_1207r_0715_187, kms_s_0021r_0715_187, kms_s_0446r_0715_187, s_0021, s_0400, s_0446, s_0470, s_0850, s_1207)) + (intracellular * function_199(Keq_r_0779_198, Vmax_r_0779_198, intracellular, kmp_s_0400r_0779_198, kmp_s_1430r_0779_198, kms_s_0446r_0779_198, kms_s_1411r_0779_198, s_0400, s_0446, s_1411, s_1430)) + (intracellular_210 * function_211(Vmax_r_0859_210, kms_s_0446r_0859_210, kms_s_0539r_0859_210, s_0446, s_0539, s_0400, s_0537, s_0763_b, Keq_r_0859_210, kmp_s_0400r_0859_210, kmp_s_0537r_0859_210, kmp_s_0763_br_0859_210, s_0446, kmI_s_0446mr_0859_210, intracellular_210)) + (intracellular * function_218(Keq_r_0877_217, Vmax_r_0877_217, intracellular, kmp_s_0021r_0877_217, kmp_s_0400r_0877_217, kms_s_0022r_0877_217, kms_s_0446r_0877_217, s_0021, s_0022, s_0400, s_0446)) + (intracellular * function_222(Keq_r_0884_221, Vmax_r_0884_221, intracellular, kmp_s_0316r_0884_221, kmp_s_0400r_0884_221, kmp_s_0763_br_0884_221, kmp_s_1207r_0884_221, kms_s_0158r_0884_221, kms_s_0446r_0884_221, s_0158, s_0316, s_0400, s_0446, s_0763_b, s_1207)) + (intracellular * function_224(Keq_r_0886_223, Vmax_r_0886_223, intracellular, kmp_s_0009r_0886_223, kmp_s_0400r_0886_223, kmp_s_0763_br_0886_223, kmp_s_1207r_0886_223, kms_s_0318r_0886_223, kms_s_0446r_0886_223, kms_s_0881r_0886_223, s_0009, s_0318, s_0400, s_0446, s_0763_b, s_0881, s_1207)) + (intracellular * function_226(Keq_r_0888_225, Vmax_r_0888_225, intracellular, kmp_s_0158r_0888_225, kmp_s_0400r_0888_225, kmp_s_0763_br_0888_225, kmp_s_0899r_0888_225, kmp_s_1207r_0888_225, kms_s_0446r_0888_225, kms_s_0907r_0888_225, kms_s_1052r_0888_225, kms_s_1434_br_0888_225, s_0158, s_0400, s_0446, s_0763_b, s_0899, s_0907, s_1052, s_1207, s_1434_b)) + (intracellular * function_228(Keq_r_0890_227, Vmax_r_0890_227, intracellular, kmp_s_0400r_0890_227, kmp_s_0763_br_0890_227, kmp_s_1048r_0890_227, kmp_s_1207r_0890_227, kms_s_0333r_0890_227, kms_s_0446r_0890_227, kms_s_0740r_0890_227, s_0333, s_0400, s_0446, s_0740, s_0763_b, s_1048, s_1207)) + (intracellular * function_234(Keq_r_0937_233, Vmax_r_0937_233, intracellular, kmp_s_0400r_0937_233, kmp_s_0763_br_0937_233, kmp_s_1156r_0937_233, kmp_s_1207r_0937_233, kms_s_0446r_0937_233, kms_s_0458r_0937_233, kms_s_1277r_0937_233, s_0400, s_0446, s_0458, s_0763_b, s_1156, s_1207, s_1277)) + (intracellular * function_251(Keq_r_0977_250, Vmax_r_0977_250, intracellular, kmp_s_0267r_0977_250, kmp_s_0400r_0977_250, kmp_s_0763_br_0977_250, kms_s_0446r_0977_250, kms_s_1306r_0977_250, s_0267, s_0400, s_0446, s_0763_b, s_1306)) + (intracellular * function_255(Keq_r_1003_254, Vmax_r_1003_254, intracellular, kmp_s_0400r_1003_254, kmp_s_1207r_1003_254, kmp_s_1342r_1003_254, kms_s_0446r_1003_254, kms_s_0514r_1003_254, kms_s_1338r_1003_254, s_0400, s_0446, s_0514, s_1207, s_1338, s_1342)) + (intracellular * function_270(Keq_r_1059_269, Vmax_r_1059_269, intracellular, kmp_s_0400r_1059_269, kmp_s_1411r_1059_269, kms_s_0446r_1059_269, kms_s_1417r_1059_269, s_0400, s_0446, s_1411, s_1417)) + (59.276 * intracellular * function_283(V_o_282, a_s_0001r_1812_282, a_s_0416r_1812_282, a_s_0434r_1812_282, a_s_0446r_1812_282, a_s_0511r_1812_282, a_s_0564r_1812_282, a_s_0569r_1812_282, a_s_0593r_1812_282, a_s_0619r_1812_282, a_s_0740r_1812_282, a_s_0743r_1812_282, a_s_0752r_1812_282, a_s_0863r_1812_282, a_s_0873r_1812_282, a_s_0877r_1812_282, a_s_0881r_1812_282, a_s_0889r_1812_282, a_s_0899r_1812_282, a_s_0907r_1812_282, a_s_0911r_1812_282, a_s_0920r_1812_282, a_s_0925r_1812_282, a_s_0929r_1812_282, a_s_0933r_1812_282, a_s_0936r_1812_282, a_s_0939r_1812_282, a_s_0943r_1812_282, a_s_0949r_1812_282, a_s_0952r_1812_282, a_s_0955r_1812_282, a_s_0960r_1812_282, a_s_1000r_1812_282, a_s_1011r_1812_282, a_s_1283r_1812_282, a_s_1347r_1812_282, a_s_1417r_1812_282, intracellular, s_0001, s_0001_or_1812_282, s_0416, s_0416_or_1812_282, s_0434, s_0434_or_1812_282, s_0446, s_0446_or_1812_282, s_0511, s_0511_or_1812_282, s_0564, s_0564_or_1812_282, s_0569, s_0569_or_1812_282, s_0593, s_0593_or_1812_282, s_0619, s_0619_or_1812_282, s_0740, s_0740_or_1812_282, s_0743, s_0743_or_1812_282, s_0752, s_0752_or_1812_282, s_0863, s_0863_or_1812_282, s_0873, s_0873_or_1812_282, s_0877, s_0877_or_1812_282, s_0881, s_0881_or_1812_282, s_0889, s_0889_or_1812_282, s_0899, s_0899_or_1812_282, s_0907, s_0907_or_1812_282, s_0911, s_0911_or_1812_282, s_0920, s_0920_or_1812_282, s_0925, s_0925_or_1812_282, s_0929, s_0929_or_1812_282, s_0933, s_0933_or_1812_282, s_0936, s_0936_or_1812_282, s_0939, s_0939_or_1812_282, s_0943, s_0943_or_1812_282, s_0949, s_0949_or_1812_282, s_0952, s_0952_or_1812_282, s_0955, s_0955_or_1812_282, s_0960, s_0960_or_1812_282, s_1000, s_1000_or_1812_282, s_1011, s_1011_or_1812_282, s_1283, s_1283_or_1812_282, s_1347, s_1347_or_1812_282, s_1417, s_1417_or_1812_282, zero_flux_282)) - (2.0 * intracellular * function_37(Keq_r_0163_36, Vmax_r_0163_36, intracellular, kmp_s_0434r_0163_36, kmp_s_0446r_0163_36, kms_s_0400r_0163_36, s_0400, s_0434, s_0446)) - (intracellular * function_38(Keq_r_0165_37, Vmax_r_0165_37, intracellular, kmp_s_0434r_0165_37, kmp_s_0755r_0165_37, kms_s_0400r_0165_37, kms_s_0706r_0165_37, s_0400, s_0434, s_0706, s_0755)) - (intracellular * function_57(Keq_r_0246_56, Vmax_r_0246_56, intracellular, kmp_s_0446r_0246_56, kmp_s_0763_br_0246_56, kmp_s_1434_br_0246_56, kms_s_0400r_0246_56, kms_s_0763_br_0246_56, kms_s_1207r_0246_56, s_0400, s_0446, s_0763_b, s_1207, s_1434_b)) - (intracellular * function_86(Keq_r_0345_85, Vmax_r_0345_85, intracellular, kmp_s_0446r_0345_85, kmp_s_0511r_0345_85, kms_s_0400r_0345_85, kms_s_0481r_0345_85, s_0400, s_0446, s_0481, s_0511)) - (intracellular * function_91(Keq_r_0360_90, Vmax_r_0360_90, intracellular, kmp_s_0446r_0360_90, kmp_s_0564r_0360_90, kms_s_0400r_0360_90, kms_s_0562r_0360_90, s_0400, s_0446, s_0562, s_0564)) - (intracellular * function_92(Keq_r_0362_91, Vmax_r_0362_91, intracellular, kmp_s_0446r_0362_91, kmp_s_0593r_0362_91, kms_s_0400r_0362_91, kms_s_0591r_0362_91, s_0400, s_0446, s_0591, s_0593)) - (intracellular * function_198(Keq_r_0771_197, Vmax_r_0771_197, intracellular, kmp_s_0446r_0771_197, kmp_s_0481r_0771_197, kms_s_0400r_0771_197, kms_s_0521r_0771_197, s_0400, s_0446, s_0481, s_0521)) - (intracellular_212 * function_213(Vmax_r_0865_212, kms_s_0265r_0865_212, kms_s_0400r_0865_212, s_0265, s_0400, s_0264, s_0446, Keq_r_0865_212, kmp_s_0264r_0865_212, kmp_s_0446r_0865_212, s_0446, kmI_s_0446mr_0865_212, intracellular_212)) - (intracellular * function_237(Keq_r_0941_236, Vmax_r_0941_236, intracellular, kmp_s_0446r_0941_236, kmp_s_1277r_0941_236, kms_s_0400r_0941_236, kms_s_0763_br_0941_236, kms_s_1243r_0941_236, s_0400, s_0446, s_0763_b, s_1243, s_1277)) - (intracellular * function_240(Keq_r_0951_239, Vmax_r_0951_239, intracellular, kmp_s_0562r_0951_239, kmp_s_1434_br_0951_239, kmp_s_1517r_0951_239, kms_s_0400r_0951_239, kms_s_1521r_0951_239, s_0400, s_0562, s_1434_b, s_1517, s_1521)) - (intracellular * function_256(Keq_r_1007_255, Vmax_r_1007_255, intracellular, kmp_s_0304r_1007_255, kmp_s_1207r_1007_255, kms_s_0400r_1007_255, kms_s_0763_br_1007_255, kms_s_1347r_1007_255, s_0304, s_0400, s_0763_b, s_1207, s_1347)) - (intracellular * function_271(Keq_r_1066_270, Vmax_r_1066_270, intracellular, kmp_s_0446r_1066_270, kmp_s_0624r_1066_270, kms_s_0400r_1066_270, kms_s_0622r_1066_270, s_0400, s_0446, s_0622, s_0624));
    der(s_0410) = (intracellular * function_147(Keq_r_0573_146, Vmax_r_0573_146, intracellular, kmp_s_0400r_0573_146, kmp_s_0410r_0573_146, kmp_s_0763_br_0573_146, kms_s_0446r_0573_146, kms_s_0545r_0573_146, s_0400, s_0410, s_0446, s_0545, s_0763_b)) - (intracellular * function_46(Vmax_r_0213_45, kms_s_0410r_0213_45, kms_s_1415r_0213_45, s_0410, s_1415, s_0419, s_0763_b, s_1411, Keq_r_0213_45, kmp_s_0419r_0213_45, kmp_s_0763_br_0213_45, kmp_s_1411r_0213_45, s_1415, kmI_s_1415rm_0213_45, intracellular)) - (intracellular * function_127(Keq_r_0505_126, Vmax_r_0505_126, intracellular, kmp_s_0539r_0505_126, kms_s_0410r_0505_126, s_0410, s_0539)) - (intracellular * function_195(Keq_r_0726_194, Vmax_r_0726_194, intracellular, kmp_s_0128r_0726_194, kms_s_0410r_0726_194, s_0128, s_0410)) - (intracellular * function_212(Keq_r_0861_211, Vmax_r_0861_211, intracellular, kmp_s_0549r_0861_211, kms_s_0410r_0861_211, s_0410, s_0549));
    der(s_0416) = (intracellular * function_265(Keq_r_1038_264, Vmax_r_1038_264, intracellular, kmp_s_0416r_1038_264, kmp_s_1207r_1038_264, kms_s_0419r_1038_264, kms_s_1434_br_1038_264, s_0416, s_0419, s_1207, s_1434_b)) - (0.023371 * intracellular * function_283(V_o_282, a_s_0001r_1812_282, a_s_0416r_1812_282, a_s_0434r_1812_282, a_s_0446r_1812_282, a_s_0511r_1812_282, a_s_0564r_1812_282, a_s_0569r_1812_282, a_s_0593r_1812_282, a_s_0619r_1812_282, a_s_0740r_1812_282, a_s_0743r_1812_282, a_s_0752r_1812_282, a_s_0863r_1812_282, a_s_0873r_1812_282, a_s_0877r_1812_282, a_s_0881r_1812_282, a_s_0889r_1812_282, a_s_0899r_1812_282, a_s_0907r_1812_282, a_s_0911r_1812_282, a_s_0920r_1812_282, a_s_0925r_1812_282, a_s_0929r_1812_282, a_s_0933r_1812_282, a_s_0936r_1812_282, a_s_0939r_1812_282, a_s_0943r_1812_282, a_s_0949r_1812_282, a_s_0952r_1812_282, a_s_0955r_1812_282, a_s_0960r_1812_282, a_s_1000r_1812_282, a_s_1011r_1812_282, a_s_1283r_1812_282, a_s_1347r_1812_282, a_s_1417r_1812_282, intracellular, s_0001, s_0001_or_1812_282, s_0416, s_0416_or_1812_282, s_0434, s_0434_or_1812_282, s_0446, s_0446_or_1812_282, s_0511, s_0511_or_1812_282, s_0564, s_0564_or_1812_282, s_0569, s_0569_or_1812_282, s_0593, s_0593_or_1812_282, s_0619, s_0619_or_1812_282, s_0740, s_0740_or_1812_282, s_0743, s_0743_or_1812_282, s_0752, s_0752_or_1812_282, s_0863, s_0863_or_1812_282, s_0873, s_0873_or_1812_282, s_0877, s_0877_or_1812_282, s_0881, s_0881_or_1812_282, s_0889, s_0889_or_1812_282, s_0899, s_0899_or_1812_282, s_0907, s_0907_or_1812_282, s_0911, s_0911_or_1812_282, s_0920, s_0920_or_1812_282, s_0925, s_0925_or_1812_282, s_0929, s_0929_or_1812_282, s_0933, s_0933_or_1812_282, s_0936, s_0936_or_1812_282, s_0939, s_0939_or_1812_282, s_0943, s_0943_or_1812_282, s_0949, s_0949_or_1812_282, s_0952, s_0952_or_1812_282, s_0955, s_0955_or_1812_282, s_0960, s_0960_or_1812_282, s_1000, s_1000_or_1812_282, s_1011, s_1011_or_1812_282, s_1283, s_1283_or_1812_282, s_1347, s_1347_or_1812_282, s_1417, s_1417_or_1812_282, zero_flux_282));
    der(s_0419) = (intracellular * function_46(Vmax_r_0213_45, kms_s_0410r_0213_45, kms_s_1415r_0213_45, s_0410, s_1415, s_0419, s_0763_b, s_1411, Keq_r_0213_45, kmp_s_0419r_0213_45, kmp_s_0763_br_0213_45, kmp_s_1411r_0213_45, s_1415, kmI_s_1415rm_0213_45, intracellular)) - (intracellular * function_265(Keq_r_1038_264, Vmax_r_1038_264, intracellular, kmp_s_0416r_1038_264, kmp_s_1207r_1038_264, kms_s_0419r_1038_264, kms_s_1434_br_1038_264, s_0416, s_0419, s_1207, s_1434_b));
    der(s_0427) = (intracellular * function_244(Keq_r_0963_243, Vmax_r_0963_243, intracellular, kmp_s_0427r_0963_243, kms_s_0557r_0963_243, s_0427, s_0557)) + (intracellular * function_263(Keq_r_1036_262, Vmax_r_1036_262, intracellular, kmp_s_0427r_1036_262, kmp_s_0561r_1036_262, kms_s_0731r_1036_262, kms_s_1304r_1036_262, s_0427, s_0561, s_0731, s_1304)) - (intracellular * function_229(Keq_r_0891_228, Vmax_r_0891_228, intracellular, kmp_s_0331r_0891_228, kmp_s_0434r_0891_228, kmp_s_0763_br_0891_228, kms_s_0427r_0891_228, kms_s_0446r_0891_228, s_0331, s_0427, s_0434, s_0446, s_0763_b));
    der(s_0430) = (intracellular * function_5(Keq_r_0014_4, Vmax_r_0014_4, intracellular, kmp_s_0319r_0014_4, kmp_s_0430r_0014_4, kms_s_0146r_0014_4, kms_s_0763_br_0014_4, kms_s_1434_br_0014_4, s_0146, s_0319, s_0430, s_0763_b, s_1434_b)) + (intracellular * function_84(Keq_r_0339_83, Vmax_r_0339_83, intracellular, kmp_s_0183r_0339_83, kmp_s_0430r_0339_83, kmp_s_0889r_0339_83, kms_s_0888r_0339_83, kms_s_1434_br_0339_83, s_0183, s_0430, s_0888, s_0889, s_1434_b)) + (intracellular * function_140(Keq_r_0538_139, Vmax_r_0538_139, intracellular, kmp_s_0307r_0538_139, kmp_s_0430r_0538_139, kmp_s_0470r_0538_139, kmp_s_1087r_0538_139, kms_s_0309r_0538_139, kms_s_0740r_0538_139, kms_s_1082r_0538_139, s_0307, s_0309, s_0430, s_0470, s_0740, s_1082, s_1087)) + (intracellular * function_177(Keq_r_0667_176, Vmax_r_0667_176, intracellular, kmp_s_0183r_0667_176, kmp_s_0430r_0667_176, kms_s_0949r_0667_176, s_0183, s_0430, s_0949)) + (function_274(Keq_r_1157_273, Vmax_r_1157_273, kmp_s_0430r_1157_273, kms_s_0431_br_1157_273, s_0430, s_0431_b)) - (intracellular * function_82(Keq_r_0336_81, Vmax_r_0336_81, intracellular, kmp_s_0400r_0336_81, kmp_s_0521r_0336_81, kmp_s_0763_br_0336_81, kmp_s_1207r_0336_81, kms_s_0430r_0336_81, kms_s_0446r_0336_81, kms_s_1430r_0336_81, s_0400, s_0430, s_0446, s_0521, s_0763_b, s_1207, s_1430)) - (intracellular * function_90(Keq_r_0357_89, Vmax_r_0357_89, intracellular, kmp_s_0569r_0357_89, kmp_s_0763_br_0357_89, kmp_s_1434_br_0357_89, kms_s_0430r_0357_89, kms_s_0624r_0357_89, s_0430, s_0569, s_0624, s_0763_b, s_1434_b)) - (intracellular * function_129(Keq_r_0509_128, Vmax_r_0509_128, intracellular, kmp_s_0899r_0509_128, kmp_s_1091r_0509_128, kmp_s_1434_br_0509_128, kms_s_0185r_0509_128, kms_s_0430r_0509_128, kms_s_0763_br_0509_128, kms_s_1096r_0509_128, s_0185, s_0430, s_0763_b, s_0899, s_1091, s_1096, s_1434_b)) - (intracellular * function_133(Keq_r_0515_132, Vmax_r_0515_132, intracellular, kmp_s_0400r_0515_132, kmp_s_0763_br_0515_132, kmp_s_0907r_0515_132, kmp_s_1207r_0515_132, kms_s_0430r_0515_132, kms_s_0446r_0515_132, kms_s_0899r_0515_132, s_0400, s_0430, s_0446, s_0763_b, s_0899, s_0907, s_1207));
    der(s_0434) = (intracellular * function_14(Keq_r_0034_13, Vmax_r_0034_13, intracellular, kmp_s_0434r_0034_13, kmp_s_1207r_0034_13, kms_s_0397r_0034_13, kms_s_1434_br_0034_13, s_0397, s_0434, s_1207, s_1434_b)) + (intracellular * function_35(Keq_r_0157_34, Vmax_r_0157_34, intracellular, kmp_s_0400r_0157_34, kmp_s_0434r_0157_34, kmp_s_0763_br_0157_34, kms_s_0393r_0157_34, kms_s_0446r_0157_34, s_0393, s_0400, s_0434, s_0446, s_0763_b)) + (intracellular * function_37(Keq_r_0163_36, Vmax_r_0163_36, intracellular, kmp_s_0434r_0163_36, kmp_s_0446r_0163_36, kms_s_0400r_0163_36, s_0400, s_0434, s_0446)) + (intracellular * function_38(Keq_r_0165_37, Vmax_r_0165_37, intracellular, kmp_s_0434r_0165_37, kmp_s_0755r_0165_37, kms_s_0400r_0165_37, kms_s_0706r_0165_37, s_0400, s_0434, s_0706, s_0755)) + (intracellular * function_41(Keq_r_0171_40, Vmax_r_0171_40, intracellular, kmp_s_0434r_0171_40, kmp_s_0692r_0171_40, kms_s_1053r_0171_40, s_0434, s_0692, s_1053)) + (intracellular * function_50(Keq_r_0226_49, Vmax_r_0226_49, intracellular, kmp_s_0017r_0226_49, kmp_s_0434r_0226_49, kmp_s_0605r_0226_49, kmp_s_0763_br_0226_49, kms_s_0446r_0226_49, kms_s_0881r_0226_49, kms_s_0887r_0226_49, s_0017, s_0434, s_0446, s_0605, s_0763_b, s_0881, s_0887)) + (intracellular * function_51(Keq_r_0229_50, Vmax_r_0229_50, intracellular, kmp_s_0434r_0229_50, kmp_s_0605r_0229_50, kmp_s_0763_br_0229_50, kmp_s_0877r_0229_50, kmp_s_0899r_0229_50, kms_s_0446r_0229_50, kms_s_0881r_0229_50, kms_s_0907r_0229_50, kms_s_1434_br_0229_50, s_0434, s_0446, s_0605, s_0763_b, s_0877, s_0881, s_0899, s_0907, s_1434_b)) + (intracellular * function_113(Keq_r_0437_112, Vmax_r_0437_112, intracellular, kmp_s_0434r_0437_112, kmp_s_0605r_0437_112, kmp_s_1355r_0437_112, kms_s_0446r_0437_112, kms_s_0514r_0437_112, kms_s_0987r_0437_112, s_0434, s_0446, s_0514, s_0605, s_0987, s_1355)) + (intracellular * function_143(Keq_r_0551_142, Vmax_r_0551_142, intracellular, kmp_s_0434r_0551_142, kmp_s_0605r_0551_142, kmp_s_0752r_0551_142, kmp_s_0763_br_0551_142, kmp_s_0899r_0551_142, kms_s_0306r_0551_142, kms_s_0446r_0551_142, kms_s_0907r_0551_142, kms_s_1434_br_0551_142, s_0306, s_0434, s_0446, s_0605, s_0752, s_0763_b, s_0899, s_0907, s_1434_b)) + (intracellular * function_173(Keq_r_0650_172, Vmax_r_0650_172, intracellular, kmp_s_0434r_0650_172, kmp_s_0605r_0650_172, kmp_s_0867r_0650_172, kmp_s_1082r_0650_172, kms_s_0446r_0650_172, kms_s_0763_br_0650_172, kms_s_0861r_0650_172, kms_s_1087r_0650_172, s_0434, s_0446, s_0605, s_0763_b, s_0861, s_0867, s_1082, s_1087)) + (intracellular * function_229(Keq_r_0891_228, Vmax_r_0891_228, intracellular, kmp_s_0331r_0891_228, kmp_s_0434r_0891_228, kmp_s_0763_br_0891_228, kms_s_0427r_0891_228, kms_s_0446r_0891_228, s_0331, s_0427, s_0434, s_0446, s_0763_b)) - (intracellular * function_32(Keq_r_0127_31, Vmax_r_0127_31, intracellular, kmp_s_0369r_0127_31, kmp_s_0446r_0127_31, kmp_s_0514r_0127_31, kms_s_0380r_0127_31, kms_s_0434r_0127_31, kms_s_0605r_0127_31, s_0369, s_0380, s_0434, s_0446, s_0514, s_0605)) - (intracellular * function_114(Keq_r_0439_113, Vmax_r_0439_113, intracellular, kmp_s_0446r_0439_113, kmp_s_0514r_0439_113, kmp_s_1329r_0439_113, kms_s_0434r_0439_113, kms_s_0605r_0439_113, kms_s_1334r_0439_113, s_0434, s_0446, s_0514, s_0605, s_1329, s_1334)) - (intracellular * function_115(Keq_r_0442_114, Vmax_r_0442_114, intracellular, kmp_s_0446r_0442_114, kmp_s_0514r_0442_114, kmp_s_1132r_0442_114, kms_s_0434r_0442_114, kms_s_0605r_0442_114, kms_s_1140r_0442_114, s_0434, s_0446, s_0514, s_0605, s_1132, s_1140)) - (0.051 * intracellular * function_283(V_o_282, a_s_0001r_1812_282, a_s_0416r_1812_282, a_s_0434r_1812_282, a_s_0446r_1812_282, a_s_0511r_1812_282, a_s_0564r_1812_282, a_s_0569r_1812_282, a_s_0593r_1812_282, a_s_0619r_1812_282, a_s_0740r_1812_282, a_s_0743r_1812_282, a_s_0752r_1812_282, a_s_0863r_1812_282, a_s_0873r_1812_282, a_s_0877r_1812_282, a_s_0881r_1812_282, a_s_0889r_1812_282, a_s_0899r_1812_282, a_s_0907r_1812_282, a_s_0911r_1812_282, a_s_0920r_1812_282, a_s_0925r_1812_282, a_s_0929r_1812_282, a_s_0933r_1812_282, a_s_0936r_1812_282, a_s_0939r_1812_282, a_s_0943r_1812_282, a_s_0949r_1812_282, a_s_0952r_1812_282, a_s_0955r_1812_282, a_s_0960r_1812_282, a_s_1000r_1812_282, a_s_1011r_1812_282, a_s_1283r_1812_282, a_s_1347r_1812_282, a_s_1417r_1812_282, intracellular, s_0001, s_0001_or_1812_282, s_0416, s_0416_or_1812_282, s_0434, s_0434_or_1812_282, s_0446, s_0446_or_1812_282, s_0511, s_0511_or_1812_282, s_0564, s_0564_or_1812_282, s_0569, s_0569_or_1812_282, s_0593, s_0593_or_1812_282, s_0619, s_0619_or_1812_282, s_0740, s_0740_or_1812_282, s_0743, s_0743_or_1812_282, s_0752, s_0752_or_1812_282, s_0863, s_0863_or_1812_282, s_0873, s_0873_or_1812_282, s_0877, s_0877_or_1812_282, s_0881, s_0881_or_1812_282, s_0889, s_0889_or_1812_282, s_0899, s_0899_or_1812_282, s_0907, s_0907_or_1812_282, s_0911, s_0911_or_1812_282, s_0920, s_0920_or_1812_282, s_0925, s_0925_or_1812_282, s_0929, s_0929_or_1812_282, s_0933, s_0933_or_1812_282, s_0936, s_0936_or_1812_282, s_0939, s_0939_or_1812_282, s_0943, s_0943_or_1812_282, s_0949, s_0949_or_1812_282, s_0952, s_0952_or_1812_282, s_0955, s_0955_or_1812_282, s_0960, s_0960_or_1812_282, s_1000, s_1000_or_1812_282, s_1011, s_1011_or_1812_282, s_1283, s_1283_or_1812_282, s_1347, s_1347_or_1812_282, s_1417, s_1417_or_1812_282, zero_flux_282));
    der(s_0438) = (intracellular * function_142(Keq_r_0547_141, Vmax_r_0547_141, intracellular, kmp_s_0438r_0547_141, kmp_s_0763_br_0547_141, kmp_s_1411r_0547_141, kms_s_1415r_0547_141, kms_s_1434_br_0547_141, s_0438, s_0763_b, s_1411, s_1415, s_1434_b)) - (intracellular * function_2(Keq_r_0006_1, Vmax_r_0006_1, intracellular, kmp_s_0743r_0006_1, kmp_s_1434_br_0006_1, kms_s_0438r_0006_1, s_0438, s_0743, s_1434_b));
    der(s_0439) = (intracellular * function_48(Keq_r_0221_47, Vmax_r_0221_47, intracellular, kmp_s_0439r_0221_47, kmp_s_0763_br_0221_47, kmp_s_0899r_0221_47, kmp_s_1277r_0221_47, kms_s_0500r_0221_47, kms_s_0907r_0221_47, s_0439, s_0500, s_0763_b, s_0899, s_0907, s_1277)) - (intracellular * function_47(Keq_r_0220_46, Vmax_r_0220_46, intracellular, kmp_s_0605r_0220_46, kmp_s_1066r_0220_46, kms_s_0331r_0220_46, kms_s_0439r_0220_46, s_0331, s_0439, s_0605, s_1066));
    der(s_0446) = (intracellular * function_32(Keq_r_0127_31, Vmax_r_0127_31, intracellular, kmp_s_0369r_0127_31, kmp_s_0446r_0127_31, kmp_s_0514r_0127_31, kms_s_0380r_0127_31, kms_s_0434r_0127_31, kms_s_0605r_0127_31, s_0369, s_0380, s_0434, s_0446, s_0514, s_0605)) + (intracellular * function_37(Keq_r_0163_36, Vmax_r_0163_36, intracellular, kmp_s_0434r_0163_36, kmp_s_0446r_0163_36, kms_s_0400r_0163_36, s_0400, s_0434, s_0446)) + (intracellular * function_57(Keq_r_0246_56, Vmax_r_0246_56, intracellular, kmp_s_0446r_0246_56, kmp_s_0763_br_0246_56, kmp_s_1434_br_0246_56, kms_s_0400r_0246_56, kms_s_0763_br_0246_56, kms_s_1207r_0246_56, s_0400, s_0446, s_0763_b, s_1207, s_1434_b)) + (intracellular * function_86(Keq_r_0345_85, Vmax_r_0345_85, intracellular, kmp_s_0446r_0345_85, kmp_s_0511r_0345_85, kms_s_0400r_0345_85, kms_s_0481r_0345_85, s_0400, s_0446, s_0481, s_0511)) + (intracellular * function_91(Keq_r_0360_90, Vmax_r_0360_90, intracellular, kmp_s_0446r_0360_90, kmp_s_0564r_0360_90, kms_s_0400r_0360_90, kms_s_0562r_0360_90, s_0400, s_0446, s_0562, s_0564)) + (intracellular * function_92(Keq_r_0362_91, Vmax_r_0362_91, intracellular, kmp_s_0446r_0362_91, kmp_s_0593r_0362_91, kms_s_0400r_0362_91, kms_s_0591r_0362_91, s_0400, s_0446, s_0591, s_0593)) + (intracellular * function_114(Keq_r_0439_113, Vmax_r_0439_113, intracellular, kmp_s_0446r_0439_113, kmp_s_0514r_0439_113, kmp_s_1329r_0439_113, kms_s_0434r_0439_113, kms_s_0605r_0439_113, kms_s_1334r_0439_113, s_0434, s_0446, s_0514, s_0605, s_1329, s_1334)) + (intracellular * function_115(Keq_r_0442_114, Vmax_r_0442_114, intracellular, kmp_s_0446r_0442_114, kmp_s_0514r_0442_114, kmp_s_1132r_0442_114, kms_s_0434r_0442_114, kms_s_0605r_0442_114, kms_s_1140r_0442_114, s_0434, s_0446, s_0514, s_0605, s_1132, s_1140)) + (intracellular * function_198(Keq_r_0771_197, Vmax_r_0771_197, intracellular, kmp_s_0446r_0771_197, kmp_s_0481r_0771_197, kms_s_0400r_0771_197, kms_s_0521r_0771_197, s_0400, s_0446, s_0481, s_0521)) + (intracellular_212 * function_213(Vmax_r_0865_212, kms_s_0265r_0865_212, kms_s_0400r_0865_212, s_0265, s_0400, s_0264, s_0446, Keq_r_0865_212, kmp_s_0264r_0865_212, kmp_s_0446r_0865_212, s_0446, kmI_s_0446mr_0865_212, intracellular_212)) + (intracellular * function_237(Keq_r_0941_236, Vmax_r_0941_236, intracellular, kmp_s_0446r_0941_236, kmp_s_1277r_0941_236, kms_s_0400r_0941_236, kms_s_0763_br_0941_236, kms_s_1243r_0941_236, s_0400, s_0446, s_0763_b, s_1243, s_1277)) + (intracellular * function_271(Keq_r_1066_270, Vmax_r_1066_270, intracellular, kmp_s_0446r_1066_270, kmp_s_0624r_1066_270, kms_s_0400r_1066_270, kms_s_0622r_1066_270, s_0400, s_0446, s_0622, s_0624)) - (intracellular * function_30(Keq_r_0123_29, Vmax_r_0123_29, intracellular, kmp_s_0400r_0123_29, kmp_s_0763_br_0123_29, kmp_s_1005r_0123_29, kmp_s_1207r_0123_29, kms_s_0380r_0123_29, kms_s_0446r_0123_29, kms_s_0458r_0123_29, s_0380, s_0400, s_0446, s_0458, s_0763_b, s_1005, s_1207)) - (intracellular * function_33(Keq_r_0130_32, Vmax_r_0130_32, intracellular, kmp_s_0400r_0130_32, kmp_s_1070r_0130_32, kms_s_0446r_0130_32, kms_s_1071r_0130_32, s_0400, s_0446, s_1070, s_1071)) - (intracellular * function_35(Keq_r_0157_34, Vmax_r_0157_34, intracellular, kmp_s_0400r_0157_34, kmp_s_0434r_0157_34, kmp_s_0763_br_0157_34, kms_s_0393r_0157_34, kms_s_0446r_0157_34, s_0393, s_0400, s_0434, s_0446, s_0763_b)) - (intracellular * function_42(Keq_r_0172_41, Vmax_r_0172_41, intracellular, kmp_s_0206r_0172_41, kmp_s_0400r_0172_41, kmp_s_0763_br_0172_41, kms_s_0304r_0172_41, kms_s_0446r_0172_41, s_0206, s_0304, s_0400, s_0446, s_0763_b)) - (intracellular * function_50(Keq_r_0226_49, Vmax_r_0226_49, intracellular, kmp_s_0017r_0226_49, kmp_s_0434r_0226_49, kmp_s_0605r_0226_49, kmp_s_0763_br_0226_49, kms_s_0446r_0226_49, kms_s_0881r_0226_49, kms_s_0887r_0226_49, s_0017, s_0434, s_0446, s_0605, s_0763_b, s_0881, s_0887)) - (intracellular * function_51(Keq_r_0229_50, Vmax_r_0229_50, intracellular, kmp_s_0434r_0229_50, kmp_s_0605r_0229_50, kmp_s_0763_br_0229_50, kmp_s_0877r_0229_50, kmp_s_0899r_0229_50, kms_s_0446r_0229_50, kms_s_0881r_0229_50, kms_s_0907r_0229_50, kms_s_1434_br_0229_50, s_0434, s_0446, s_0605, s_0763_b, s_0877, s_0881, s_0899, s_0907, s_1434_b)) - (intracellular * function_53(Keq_r_0233_52, Vmax_r_0233_52, intracellular, kmp_s_0301r_0233_52, kmp_s_0400r_0233_52, kms_s_0446r_0233_52, kms_s_0881r_0233_52, s_0301, s_0400, s_0446, s_0881)) - (intracellular * function_56(Keq_r_0245_55, Vmax_r_0245_55, intracellular, kmp_s_0334r_0245_55, kmp_s_0605r_0245_55, kms_s_0331r_0245_55, kms_s_0446r_0245_55, s_0331, s_0334, s_0446, s_0605)) - (function_58(Keq_r_0249_57, Vmax_r_0249_57, kmp_s_0400r_0249_57, kmp_s_0766_br_0249_57, kmp_s_1207r_0249_57, kms_s_0446r_0249_57, kms_s_1434_br_0249_57, s_0400, s_0446, s_0766_b, s_1207, s_1434_b)) - (2.0 * intracellular * function_71(Keq_r_0277_70, Vmax_r_0277_70, intracellular, kmp_s_0400r_0277_70, kmp_s_0469r_0277_70, kmp_s_0763_br_0277_70, kmp_s_0899r_0277_70, kmp_s_1207r_0277_70, kms_s_0446r_0277_70, kms_s_0458r_0277_70, kms_s_0907r_0277_70, kms_s_1434_br_0277_70, s_0400, s_0446, s_0458, s_0469, s_0763_b, s_0899, s_0907, s_1207, s_1434_b)) - (intracellular * function_82(Keq_r_0336_81, Vmax_r_0336_81, intracellular, kmp_s_0400r_0336_81, kmp_s_0521r_0336_81, kmp_s_0763_br_0336_81, kmp_s_1207r_0336_81, kms_s_0430r_0336_81, kms_s_0446r_0336_81, kms_s_1430r_0336_81, s_0400, s_0430, s_0446, s_0521, s_0763_b, s_1207, s_1430)) - (intracellular * function_100(Keq_r_0386_99, Vmax_r_0386_99, intracellular, kmp_s_0400r_0386_99, kmp_s_0735r_0386_99, kmp_s_0763_br_0386_99, kms_s_0446r_0386_99, kms_s_0734r_0386_99, s_0400, s_0446, s_0734, s_0735, s_0763_b)) - (intracellular * function_113(Keq_r_0437_112, Vmax_r_0437_112, intracellular, kmp_s_0434r_0437_112, kmp_s_0605r_0437_112, kmp_s_1355r_0437_112, kms_s_0446r_0437_112, kms_s_0514r_0437_112, kms_s_0987r_0437_112, s_0434, s_0446, s_0514, s_0605, s_0987, s_1355)) - (intracellular * function_120(Keq_r_0479_119, Vmax_r_0479_119, intracellular, kmp_s_0122r_0479_119, kmp_s_0400r_0479_119, kmp_s_1207r_0479_119, kms_s_0309r_0479_119, kms_s_0446r_0479_119, kms_s_0689r_0479_119, s_0122, s_0309, s_0400, s_0446, s_0689, s_1207)) - (intracellular * function_125(Keq_r_0499_124, Vmax_r_0499_124, intracellular, kmp_s_0400r_0499_124, kmp_s_0455r_0499_124, kmp_s_0763_br_0499_124, kms_s_0446r_0499_124, kms_s_0545r_0499_124, s_0400, s_0446, s_0455, s_0545, s_0763_b)) - (intracellular * function_128(Keq_r_0506_127, Vmax_r_0506_127, intracellular, kmp_s_0400r_0506_127, kmp_s_0894r_0506_127, kms_s_0446r_0506_127, kms_s_0899r_0506_127, s_0400, s_0446, s_0894, s_0899)) - (intracellular * function_133(Keq_r_0515_132, Vmax_r_0515_132, intracellular, kmp_s_0400r_0515_132, kmp_s_0763_br_0515_132, kmp_s_0907r_0515_132, kmp_s_1207r_0515_132, kms_s_0430r_0515_132, kms_s_0446r_0515_132, kms_s_0899r_0515_132, s_0400, s_0430, s_0446, s_0763_b, s_0899, s_0907, s_1207)) - (intracellular * function_143(Keq_r_0551_142, Vmax_r_0551_142, intracellular, kmp_s_0434r_0551_142, kmp_s_0605r_0551_142, kmp_s_0752r_0551_142, kmp_s_0763_br_0551_142, kmp_s_0899r_0551_142, kms_s_0306r_0551_142, kms_s_0446r_0551_142, kms_s_0907r_0551_142, kms_s_1434_br_0551_142, s_0306, s_0434, s_0446, s_0605, s_0752, s_0763_b, s_0899, s_0907, s_1434_b)) - (intracellular * function_145(Keq_r_0567_144, Vmax_r_0567_144, intracellular, kmp_s_0400r_0567_144, kmp_s_0706r_0567_144, kms_s_0446r_0567_144, kms_s_0752r_0567_144, s_0400, s_0446, s_0706, s_0752)) - (intracellular * function_147(Keq_r_0573_146, Vmax_r_0573_146, intracellular, kmp_s_0400r_0573_146, kmp_s_0410r_0573_146, kmp_s_0763_br_0573_146, kms_s_0446r_0573_146, kms_s_0545r_0573_146, s_0400, s_0410, s_0446, s_0545, s_0763_b)) - (intracellular * function_155(Keq_r_0588_154, Vmax_r_0588_154, intracellular, kmp_s_0400r_0588_154, kmp_s_0763_br_0588_154, kmp_s_1122r_0588_154, kms_s_0446r_0588_154, kms_s_0919r_0588_154, s_0400, s_0446, s_0763_b, s_0919, s_1122)) - (intracellular * function_173(Keq_r_0650_172, Vmax_r_0650_172, intracellular, kmp_s_0434r_0650_172, kmp_s_0605r_0650_172, kmp_s_0867r_0650_172, kmp_s_1082r_0650_172, kms_s_0446r_0650_172, kms_s_0763_br_0650_172, kms_s_0861r_0650_172, kms_s_1087r_0650_172, s_0434, s_0446, s_0605, s_0763_b, s_0861, s_0867, s_1082, s_1087)) - (intracellular * function_184(Keq_r_0701_183, Vmax_r_0701_183, intracellular, kmp_s_0605r_0701_183, kmp_s_1207r_0701_183, kmp_s_1293r_0701_183, kms_s_0446r_0701_183, kms_s_0933r_0701_183, kms_s_1434_br_0701_183, s_0446, s_0605, s_0933, s_1207, s_1293, s_1434_b)) - (intracellular * function_188(Keq_r_0715_187, Vmax_r_0715_187, intracellular, kmp_s_0400r_0715_187, kmp_s_0470r_0715_187, kmp_s_0850r_0715_187, kmp_s_1207r_0715_187, kms_s_0021r_0715_187, kms_s_0446r_0715_187, s_0021, s_0400, s_0446, s_0470, s_0850, s_1207)) - (intracellular * function_199(Keq_r_0779_198, Vmax_r_0779_198, intracellular, kmp_s_0400r_0779_198, kmp_s_1430r_0779_198, kms_s_0446r_0779_198, kms_s_1411r_0779_198, s_0400, s_0446, s_1411, s_1430)) - (intracellular_210 * function_211(Vmax_r_0859_210, kms_s_0446r_0859_210, kms_s_0539r_0859_210, s_0446, s_0539, s_0400, s_0537, s_0763_b, Keq_r_0859_210, kmp_s_0400r_0859_210, kmp_s_0537r_0859_210, kmp_s_0763_br_0859_210, s_0446, kmI_s_0446mr_0859_210, intracellular_210)) - (intracellular * function_218(Keq_r_0877_217, Vmax_r_0877_217, intracellular, kmp_s_0021r_0877_217, kmp_s_0400r_0877_217, kms_s_0022r_0877_217, kms_s_0446r_0877_217, s_0021, s_0022, s_0400, s_0446)) - (intracellular * function_222(Keq_r_0884_221, Vmax_r_0884_221, intracellular, kmp_s_0316r_0884_221, kmp_s_0400r_0884_221, kmp_s_0763_br_0884_221, kmp_s_1207r_0884_221, kms_s_0158r_0884_221, kms_s_0446r_0884_221, s_0158, s_0316, s_0400, s_0446, s_0763_b, s_1207)) - (intracellular * function_224(Keq_r_0886_223, Vmax_r_0886_223, intracellular, kmp_s_0009r_0886_223, kmp_s_0400r_0886_223, kmp_s_0763_br_0886_223, kmp_s_1207r_0886_223, kms_s_0318r_0886_223, kms_s_0446r_0886_223, kms_s_0881r_0886_223, s_0009, s_0318, s_0400, s_0446, s_0763_b, s_0881, s_1207)) - (intracellular * function_226(Keq_r_0888_225, Vmax_r_0888_225, intracellular, kmp_s_0158r_0888_225, kmp_s_0400r_0888_225, kmp_s_0763_br_0888_225, kmp_s_0899r_0888_225, kmp_s_1207r_0888_225, kms_s_0446r_0888_225, kms_s_0907r_0888_225, kms_s_1052r_0888_225, kms_s_1434_br_0888_225, s_0158, s_0400, s_0446, s_0763_b, s_0899, s_0907, s_1052, s_1207, s_1434_b)) - (intracellular * function_228(Keq_r_0890_227, Vmax_r_0890_227, intracellular, kmp_s_0400r_0890_227, kmp_s_0763_br_0890_227, kmp_s_1048r_0890_227, kmp_s_1207r_0890_227, kms_s_0333r_0890_227, kms_s_0446r_0890_227, kms_s_0740r_0890_227, s_0333, s_0400, s_0446, s_0740, s_0763_b, s_1048, s_1207)) - (intracellular * function_229(Keq_r_0891_228, Vmax_r_0891_228, intracellular, kmp_s_0331r_0891_228, kmp_s_0434r_0891_228, kmp_s_0763_br_0891_228, kms_s_0427r_0891_228, kms_s_0446r_0891_228, s_0331, s_0427, s_0434, s_0446, s_0763_b)) - (intracellular * function_234(Keq_r_0937_233, Vmax_r_0937_233, intracellular, kmp_s_0400r_0937_233, kmp_s_0763_br_0937_233, kmp_s_1156r_0937_233, kmp_s_1207r_0937_233, kms_s_0446r_0937_233, kms_s_0458r_0937_233, kms_s_1277r_0937_233, s_0400, s_0446, s_0458, s_0763_b, s_1156, s_1207, s_1277)) - (intracellular * function_243(Keq_r_0959_242, Vmax_r_0959_242, intracellular, kmp_s_0566r_0959_242, kmp_s_1434_br_0959_242, kmp_s_1517r_0959_242, kms_s_0446r_0959_242, kms_s_1521r_0959_242, s_0446, s_0566, s_1434_b, s_1517, s_1521)) - (intracellular * function_251(Keq_r_0977_250, Vmax_r_0977_250, intracellular, kmp_s_0267r_0977_250, kmp_s_0400r_0977_250, kmp_s_0763_br_0977_250, kms_s_0446r_0977_250, kms_s_1306r_0977_250, s_0267, s_0400, s_0446, s_0763_b, s_1306)) - (intracellular * function_255(Keq_r_1003_254, Vmax_r_1003_254, intracellular, kmp_s_0400r_1003_254, kmp_s_1207r_1003_254, kmp_s_1342r_1003_254, kms_s_0446r_1003_254, kms_s_0514r_1003_254, kms_s_1338r_1003_254, s_0400, s_0446, s_0514, s_1207, s_1338, s_1342)) - (intracellular * function_270(Keq_r_1059_269, Vmax_r_1059_269, intracellular, kmp_s_0400r_1059_269, kmp_s_1411r_1059_269, kms_s_0446r_1059_269, kms_s_1417r_1059_269, s_0400, s_0446, s_1411, s_1417)) - (59.276 * intracellular * function_283(V_o_282, a_s_0001r_1812_282, a_s_0416r_1812_282, a_s_0434r_1812_282, a_s_0446r_1812_282, a_s_0511r_1812_282, a_s_0564r_1812_282, a_s_0569r_1812_282, a_s_0593r_1812_282, a_s_0619r_1812_282, a_s_0740r_1812_282, a_s_0743r_1812_282, a_s_0752r_1812_282, a_s_0863r_1812_282, a_s_0873r_1812_282, a_s_0877r_1812_282, a_s_0881r_1812_282, a_s_0889r_1812_282, a_s_0899r_1812_282, a_s_0907r_1812_282, a_s_0911r_1812_282, a_s_0920r_1812_282, a_s_0925r_1812_282, a_s_0929r_1812_282, a_s_0933r_1812_282, a_s_0936r_1812_282, a_s_0939r_1812_282, a_s_0943r_1812_282, a_s_0949r_1812_282, a_s_0952r_1812_282, a_s_0955r_1812_282, a_s_0960r_1812_282, a_s_1000r_1812_282, a_s_1011r_1812_282, a_s_1283r_1812_282, a_s_1347r_1812_282, a_s_1417r_1812_282, intracellular, s_0001, s_0001_or_1812_282, s_0416, s_0416_or_1812_282, s_0434, s_0434_or_1812_282, s_0446, s_0446_or_1812_282, s_0511, s_0511_or_1812_282, s_0564, s_0564_or_1812_282, s_0569, s_0569_or_1812_282, s_0593, s_0593_or_1812_282, s_0619, s_0619_or_1812_282, s_0740, s_0740_or_1812_282, s_0743, s_0743_or_1812_282, s_0752, s_0752_or_1812_282, s_0863, s_0863_or_1812_282, s_0873, s_0873_or_1812_282, s_0877, s_0877_or_1812_282, s_0881, s_0881_or_1812_282, s_0889, s_0889_or_1812_282, s_0899, s_0899_or_1812_282, s_0907, s_0907_or_1812_282, s_0911, s_0911_or_1812_282, s_0920, s_0920_or_1812_282, s_0925, s_0925_or_1812_282, s_0929, s_0929_or_1812_282, s_0933, s_0933_or_1812_282, s_0936, s_0936_or_1812_282, s_0939, s_0939_or_1812_282, s_0943, s_0943_or_1812_282, s_0949, s_0949_or_1812_282, s_0952, s_0952_or_1812_282, s_0955, s_0955_or_1812_282, s_0960, s_0960_or_1812_282, s_1000, s_1000_or_1812_282, s_1011, s_1011_or_1812_282, s_1283, s_1283_or_1812_282, s_1347, s_1347_or_1812_282, s_1417, s_1417_or_1812_282, zero_flux_282));
    der(s_0455) = (intracellular * function_125(Keq_r_0499_124, Vmax_r_0499_124, intracellular, kmp_s_0400r_0499_124, kmp_s_0455r_0499_124, kmp_s_0763_br_0499_124, kms_s_0446r_0499_124, kms_s_0545r_0499_124, s_0400, s_0446, s_0455, s_0545, s_0763_b)) - (intracellular_125 * function_126(Vmax_r_0504_125, kms_s_0455r_0504_125, s_0455, s_0539, Keq_r_0504_125, kmp_s_0539r_0504_125, intracellular_125, s_0455, kmI_s_0455mr_0504_125, s_0545, kmI_s_0glumr_0504_125));
    der(s_0458) = (intracellular * function_59(Keq_r_0251_58, Vmax_r_0251_58, intracellular, kmp_s_0458r_0251_58, kmp_s_0763_br_0251_58, kms_s_0470r_0251_58, kms_s_1434_br_0251_58, s_0458, s_0470, s_0763_b, s_1434_b)) - (intracellular * function_30(Keq_r_0123_29, Vmax_r_0123_29, intracellular, kmp_s_0400r_0123_29, kmp_s_0763_br_0123_29, kmp_s_1005r_0123_29, kmp_s_1207r_0123_29, kms_s_0380r_0123_29, kms_s_0446r_0123_29, kms_s_0458r_0123_29, s_0380, s_0400, s_0446, s_0458, s_0763_b, s_1005, s_1207)) - (intracellular * function_71(Keq_r_0277_70, Vmax_r_0277_70, intracellular, kmp_s_0400r_0277_70, kmp_s_0469r_0277_70, kmp_s_0763_br_0277_70, kmp_s_0899r_0277_70, kmp_s_1207r_0277_70, kms_s_0446r_0277_70, kms_s_0458r_0277_70, kms_s_0907r_0277_70, kms_s_1434_br_0277_70, s_0400, s_0446, s_0458, s_0469, s_0763_b, s_0899, s_0907, s_1207, s_1434_b)) - (intracellular * function_234(Keq_r_0937_233, Vmax_r_0937_233, intracellular, kmp_s_0400r_0937_233, kmp_s_0763_br_0937_233, kmp_s_1156r_0937_233, kmp_s_1207r_0937_233, kms_s_0446r_0937_233, kms_s_0458r_0937_233, kms_s_1277r_0937_233, s_0400, s_0446, s_0458, s_0763_b, s_1156, s_1207, s_1277));
    der(s_0463) = (intracellular * function_283(V_o_282, a_s_0001r_1812_282, a_s_0416r_1812_282, a_s_0434r_1812_282, a_s_0446r_1812_282, a_s_0511r_1812_282, a_s_0564r_1812_282, a_s_0569r_1812_282, a_s_0593r_1812_282, a_s_0619r_1812_282, a_s_0740r_1812_282, a_s_0743r_1812_282, a_s_0752r_1812_282, a_s_0863r_1812_282, a_s_0873r_1812_282, a_s_0877r_1812_282, a_s_0881r_1812_282, a_s_0889r_1812_282, a_s_0899r_1812_282, a_s_0907r_1812_282, a_s_0911r_1812_282, a_s_0920r_1812_282, a_s_0925r_1812_282, a_s_0929r_1812_282, a_s_0933r_1812_282, a_s_0936r_1812_282, a_s_0939r_1812_282, a_s_0943r_1812_282, a_s_0949r_1812_282, a_s_0952r_1812_282, a_s_0955r_1812_282, a_s_0960r_1812_282, a_s_1000r_1812_282, a_s_1011r_1812_282, a_s_1283r_1812_282, a_s_1347r_1812_282, a_s_1417r_1812_282, intracellular, s_0001, s_0001_or_1812_282, s_0416, s_0416_or_1812_282, s_0434, s_0434_or_1812_282, s_0446, s_0446_or_1812_282, s_0511, s_0511_or_1812_282, s_0564, s_0564_or_1812_282, s_0569, s_0569_or_1812_282, s_0593, s_0593_or_1812_282, s_0619, s_0619_or_1812_282, s_0740, s_0740_or_1812_282, s_0743, s_0743_or_1812_282, s_0752, s_0752_or_1812_282, s_0863, s_0863_or_1812_282, s_0873, s_0873_or_1812_282, s_0877, s_0877_or_1812_282, s_0881, s_0881_or_1812_282, s_0889, s_0889_or_1812_282, s_0899, s_0899_or_1812_282, s_0907, s_0907_or_1812_282, s_0911, s_0911_or_1812_282, s_0920, s_0920_or_1812_282, s_0925, s_0925_or_1812_282, s_0929, s_0929_or_1812_282, s_0933, s_0933_or_1812_282, s_0936, s_0936_or_1812_282, s_0939, s_0939_or_1812_282, s_0943, s_0943_or_1812_282, s_0949, s_0949_or_1812_282, s_0952, s_0952_or_1812_282, s_0955, s_0955_or_1812_282, s_0960, s_0960_or_1812_282, s_1000, s_1000_or_1812_282, s_1011, s_1011_or_1812_282, s_1283, s_1283_or_1812_282, s_1347, s_1347_or_1812_282, s_1417, s_1417_or_1812_282, zero_flux_282)) - (function_284(V_o_283, a_s_0463r_1814_283, s_0463, s_0463_or_1814_283, zero_flux_283));
    der(s_0468) = (intracellular * function_12(Keq_r_0029_11, Vmax_r_0029_11, intracellular, kmp_s_0468r_0029_11, kmp_s_1434_br_0029_11, kms_s_0798r_0029_11, s_0468, s_0798, s_1434_b)) - (intracellular * function_151(Keq_r_0581_150, Vmax_r_0581_150, intracellular, kmp_s_0800r_0581_150, kms_s_0468r_0581_150, kms_s_1434_br_0581_150, s_0468, s_0800, s_1434_b));
    der(s_0469) = (intracellular * function_71(Keq_r_0277_70, Vmax_r_0277_70, intracellular, kmp_s_0400r_0277_70, kmp_s_0469r_0277_70, kmp_s_0763_br_0277_70, kmp_s_0899r_0277_70, kmp_s_1207r_0277_70, kms_s_0446r_0277_70, kms_s_0458r_0277_70, kms_s_0907r_0277_70, kms_s_1434_br_0277_70, s_0400, s_0446, s_0458, s_0469, s_0763_b, s_0899, s_0907, s_1207, s_1434_b)) - (intracellular * function_52(Keq_r_0232_51, Vmax_r_0232_51, intracellular, kmp_s_0763_br_0232_51, kmp_s_1073r_0232_51, kmp_s_1207r_0232_51, kms_s_0469r_0232_51, kms_s_0881r_0232_51, s_0469, s_0763_b, s_0881, s_1073, s_1207)) - (intracellular * function_201(Keq_r_0789_200, Vmax_r_0789_200, intracellular, kmp_s_0763_br_0789_200, kmp_s_0887r_0789_200, kmp_s_1207r_0789_200, kms_s_0469r_0789_200, kms_s_1151r_0789_200, s_0469, s_0763_b, s_0887, s_1151, s_1207));
    der(s_0470) = (intracellular * function_7(Keq_r_0016_6, Vmax_r_0016_6, intracellular, kmp_s_0042r_0016_6, kmp_s_0470r_0016_6, kms_s_0183r_0016_6, kms_s_0763_br_0016_6, kms_s_1277r_0016_6, s_0042, s_0183, s_0470, s_0763_b, s_1277)) + (intracellular * function_13(Keq_r_0031_12, Vmax_r_0031_12, intracellular, kmp_s_0297r_0031_12, kmp_s_0470r_0031_12, kms_s_0010r_0031_12, kms_s_0763_br_0031_12, s_0010, s_0297, s_0470, s_0763_b)) + (intracellular * function_28(Keq_r_0112_27, Vmax_r_0112_27, intracellular, kmp_s_0150r_0112_27, kmp_s_0470r_0112_27, kms_s_0763_br_0112_27, kms_s_1277r_0112_27, s_0150, s_0470, s_0763_b, s_1277)) + (intracellular * function_61(Keq_r_0261_60, Vmax_r_0261_60, intracellular, kmp_s_0470r_0261_60, kmp_s_0763_br_0261_60, kmp_s_1096r_0261_60, kmp_s_1458r_0261_60, kms_s_1091r_0261_60, kms_s_1457r_0261_60, s_0470, s_0763_b, s_1091, s_1096, s_1457, s_1458)) + (intracellular * function_62(Keq_r_0262_61, Vmax_r_0262_61, intracellular, kmp_s_0215r_0262_61, kmp_s_0470r_0262_61, kmp_s_0763_br_0262_61, kmp_s_1087r_0262_61, kms_s_0303r_0262_61, kms_s_1082r_0262_61, s_0215, s_0303, s_0470, s_0763_b, s_1082, s_1087)) + (intracellular * function_105(Keq_r_0417_104, Vmax_r_0417_104, intracellular, kmp_s_0470r_0417_104, kmp_s_0514r_0417_104, kmp_s_0574r_0417_104, kmp_s_1091r_0417_104, kmp_s_1434_br_0417_104, kms_s_0763_br_0417_104, kms_s_1005r_0417_104, kms_s_1096r_0417_104, kms_s_1132r_0417_104, s_0470, s_0514, s_0574, s_0763_b, s_1005, s_1091, s_1096, s_1132, s_1434_b)) + (intracellular * function_106(Keq_r_0418_105, Vmax_r_0418_105, intracellular, kmp_s_0470r_0418_105, kmp_s_0514r_0418_105, kmp_s_0968r_0418_105, kmp_s_1091r_0418_105, kmp_s_1434_br_0418_105, kms_s_0574r_0418_105, kms_s_0763_br_0418_105, kms_s_1005r_0418_105, kms_s_1096r_0418_105, s_0470, s_0514, s_0574, s_0763_b, s_0968, s_1005, s_1091, s_1096, s_1434_b)) + (intracellular * function_107(Keq_r_0419_106, Vmax_r_0419_106, intracellular, kmp_s_0470r_0419_106, kmp_s_0514r_0419_106, kmp_s_1028r_0419_106, kmp_s_1091r_0419_106, kmp_s_1434_br_0419_106, kms_s_0763_br_0419_106, kms_s_0968r_0419_106, kms_s_1005r_0419_106, kms_s_1096r_0419_106, s_0470, s_0514, s_0763_b, s_0968, s_1005, s_1028, s_1091, s_1096, s_1434_b)) + (intracellular * function_108(Keq_r_0421_107, Vmax_r_0421_107, intracellular, kmp_s_0470r_0421_107, kmp_s_0514r_0421_107, kmp_s_1091r_0421_107, kmp_s_1170r_0421_107, kmp_s_1434_br_0421_107, kms_s_0763_br_0421_107, kms_s_1005r_0421_107, kms_s_1028r_0421_107, kms_s_1096r_0421_107, s_0470, s_0514, s_0763_b, s_1005, s_1028, s_1091, s_1096, s_1170, s_1434_b)) + (intracellular * function_109(Keq_r_0423_108, Vmax_r_0423_108, intracellular, kmp_s_0470r_0423_108, kmp_s_0514r_0423_108, kmp_s_1091r_0423_108, kmp_s_1329r_0423_108, kmp_s_1434_br_0423_108, kms_s_0763_br_0423_108, kms_s_1005r_0423_108, kms_s_1096r_0423_108, kms_s_1170r_0423_108, s_0470, s_0514, s_0763_b, s_1005, s_1091, s_1096, s_1170, s_1329, s_1434_b)) + (3.0 * intracellular * function_110(Keq_r_0425_109, Vmax_r_0425_109, intracellular, kmp_s_0470r_0425_109, kmp_s_0514r_0425_109, kmp_s_0987r_0425_109, kmp_s_1091r_0425_109, kmp_s_1434_br_0425_109, kms_s_0763_br_0425_109, kms_s_1005r_0425_109, kms_s_1096r_0425_109, kms_s_1329r_0425_109, s_0470, s_0514, s_0763_b, s_0987, s_1005, s_1091, s_1096, s_1329, s_1434_b)) + (intracellular * function_111(Keq_r_0429_110, Vmax_r_0429_110, intracellular, kmp_s_0470r_0429_110, kmp_s_0514r_0429_110, kmp_s_0582r_0429_110, kmp_s_1091r_0429_110, kmp_s_1434_br_0429_110, kms_s_0763_br_0429_110, kms_s_1005r_0429_110, kms_s_1096r_0429_110, kms_s_1140r_0429_110, s_0470, s_0514, s_0582, s_0763_b, s_1005, s_1091, s_1096, s_1140, s_1434_b)) + (3.0 * intracellular * function_112(Keq_r_0430_111, Vmax_r_0430_111, intracellular, kmp_s_0470r_0430_111, kmp_s_0514r_0430_111, kmp_s_1091r_0430_111, kmp_s_1140r_0430_111, kmp_s_1434_br_0430_111, kms_s_0380r_0430_111, kms_s_0763_br_0430_111, kms_s_1005r_0430_111, kms_s_1096r_0430_111, s_0380, s_0470, s_0514, s_0763_b, s_1005, s_1091, s_1096, s_1140, s_1434_b)) + (intracellular * function_116(Keq_r_0464_115, Vmax_r_0464_115, intracellular, kmp_s_0470r_0464_115, kmp_s_0514r_0464_115, kmp_s_0977r_0464_115, kmp_s_1091r_0464_115, kmp_s_1434_br_0464_115, kms_s_0582r_0464_115, kms_s_0763_br_0464_115, kms_s_1005r_0464_115, kms_s_1096r_0464_115, s_0470, s_0514, s_0582, s_0763_b, s_0977, s_1005, s_1091, s_1096, s_1434_b)) + (intracellular * function_117(Keq_r_0465_116, Vmax_r_0465_116, intracellular, kmp_s_0470r_0465_116, kmp_s_0514r_0465_116, kmp_s_1044r_0465_116, kmp_s_1091r_0465_116, kmp_s_1434_br_0465_116, kms_s_0763_br_0465_116, kms_s_0977r_0465_116, kms_s_1005r_0465_116, kms_s_1096r_0465_116, s_0470, s_0514, s_0763_b, s_0977, s_1005, s_1044, s_1091, s_1096, s_1434_b)) + (intracellular * function_118(Keq_r_0466_117, Vmax_r_0466_117, intracellular, kmp_s_0470r_0466_117, kmp_s_0514r_0466_117, kmp_s_1091r_0466_117, kmp_s_1187r_0466_117, kmp_s_1434_br_0466_117, kms_s_0763_br_0466_117, kms_s_1005r_0466_117, kms_s_1044r_0466_117, kms_s_1096r_0466_117, s_0470, s_0514, s_0763_b, s_1005, s_1044, s_1091, s_1096, s_1187, s_1434_b)) + (intracellular * function_119(Keq_r_0467_118, Vmax_r_0467_118, intracellular, kmp_s_0470r_0467_118, kmp_s_0514r_0467_118, kmp_s_1091r_0467_118, kmp_s_1334r_0467_118, kmp_s_1434_br_0467_118, kms_s_0763_br_0467_118, kms_s_1005r_0467_118, kms_s_1096r_0467_118, kms_s_1187r_0467_118, s_0470, s_0514, s_0763_b, s_1005, s_1091, s_1096, s_1187, s_1334, s_1434_b)) + (intracellular * function_140(Keq_r_0538_139, Vmax_r_0538_139, intracellular, kmp_s_0307r_0538_139, kmp_s_0430r_0538_139, kmp_s_0470r_0538_139, kmp_s_1087r_0538_139, kms_s_0309r_0538_139, kms_s_0740r_0538_139, kms_s_1082r_0538_139, s_0307, s_0309, s_0430, s_0470, s_0740, s_1082, s_1087)) + (intracellular * function_163(Keq_r_0608_162, Vmax_r_0608_162, intracellular, kmp_s_0088r_0608_162, kmp_s_0470r_0608_162, kmp_s_1434_br_0608_162, kms_s_0078r_0608_162, kms_s_0763_br_0608_162, s_0078, s_0088, s_0470, s_0763_b, s_1434_b)) + (intracellular * function_167(Keq_r_0630_166, Vmax_r_0630_166, intracellular, kmp_s_0185r_0630_166, kmp_s_0470r_0630_166, kmp_s_1096r_0630_166, kms_s_0847r_0630_166, kms_s_1091r_0630_166, s_0185, s_0470, s_0847, s_1091, s_1096)) + (intracellular * function_188(Keq_r_0715_187, Vmax_r_0715_187, intracellular, kmp_s_0400r_0715_187, kmp_s_0470r_0715_187, kmp_s_0850r_0715_187, kmp_s_1207r_0715_187, kms_s_0021r_0715_187, kms_s_0446r_0715_187, s_0021, s_0400, s_0446, s_0470, s_0850, s_1207)) + (intracellular * function_197(Keq_r_0765_196, Vmax_r_0765_196, intracellular, kmp_s_0181r_0765_196, kmp_s_0470r_0765_196, kms_s_0180r_0765_196, kms_s_0763_br_0765_196, s_0180, s_0181, s_0470, s_0763_b)) + (intracellular * function_204(Keq_r_0794_203, Vmax_r_0794_203, intracellular, kmp_s_0470r_0794_203, kmp_s_1417r_0794_203, kms_s_0763_br_0794_203, kms_s_1155r_0794_203, s_0470, s_0763_b, s_1155, s_1417)) + (intracellular * function_208(Keq_r_0850_207, Vmax_r_0850_207, intracellular, kmp_s_0470r_0850_207, kmp_s_1233r_0850_207, kms_s_1219r_0850_207, s_0470, s_1219, s_1233)) + (intracellular * function_230(Keq_r_0911_229, Vmax_r_0911_229, intracellular, kmp_s_0470r_0911_229, kmp_s_0859r_0911_229, kmp_s_1434_br_0911_229, kms_s_0763_br_0911_229, kms_s_1258r_0911_229, s_0470, s_0763_b, s_0859, s_1258, s_1434_b)) + (intracellular * function_231(Keq_r_0913_230, Vmax_r_0913_230, intracellular, kmp_s_0209r_0913_230, kmp_s_0470r_0913_230, kmp_s_1096r_0913_230, kms_s_1091r_0913_230, kms_s_1258r_0913_230, s_0209, s_0470, s_1091, s_1096, s_1258)) + (intracellular * function_235(Vmax_r_0938_234, kms_s_0763_br_0938_234, kms_s_1277r_0938_234, s_0763_b, s_1277, s_0366, s_0470, Keq_r_0938_234, kmp_s_0366r_0938_234, kmp_s_0470r_0938_234, s_1277, kmI_s_1277mr_0938_234, intracellular)) + (intracellular * function_236(Keq_r_0940_235, Vmax_r_0940_235, intracellular, kmp_s_0380r_0940_235, kmp_s_0470r_0940_235, kmp_s_1087r_0940_235, kms_s_0514r_0940_235, kms_s_1082r_0940_235, kms_s_1277r_0940_235, s_0380, s_0470, s_0514, s_1082, s_1087, s_1277)) + (intracellular * function_249(Keq_r_0972_248, Vmax_r_0972_248, intracellular, kmp_s_0218r_0972_248, kmp_s_0470r_0972_248, kmp_s_0514r_0972_248, kms_s_0943r_0972_248, kms_s_1187r_0972_248, s_0218, s_0470, s_0514, s_0943, s_1187)) - (intracellular * function_59(Keq_r_0251_58, Vmax_r_0251_58, intracellular, kmp_s_0458r_0251_58, kmp_s_0763_br_0251_58, kms_s_0470r_0251_58, kms_s_1434_br_0251_58, s_0458, s_0470, s_0763_b, s_1434_b)) - (intracellular * function_221(Keq_r_0883_220, Vmax_r_0883_220, intracellular, kmp_s_0318r_0883_220, kmp_s_0763_br_0883_220, kms_s_0316r_0883_220, kms_s_0470r_0883_220, s_0316, s_0318, s_0470, s_0763_b)) - (function_275(Keq_r_1194_274, Vmax_r_1194_274, kmp_s_0472_br_1194_274, kms_s_0470r_1194_274, s_0470, s_0472_b));
    der(s_0481) = (intracellular * function_187(Keq_r_0712_186, Vmax_r_0712_186, intracellular, kmp_s_0022r_0712_186, kmp_s_0481r_0712_186, kmp_s_0763_br_0712_186, kms_s_0031r_0712_186, kms_s_0521r_0712_186, s_0022, s_0031, s_0481, s_0521, s_0763_b)) + (intracellular * function_198(Keq_r_0771_197, Vmax_r_0771_197, intracellular, kmp_s_0446r_0771_197, kmp_s_0481r_0771_197, kms_s_0400r_0771_197, kms_s_0521r_0771_197, s_0400, s_0446, s_0481, s_0521)) - (intracellular * function_86(Keq_r_0345_85, Vmax_r_0345_85, intracellular, kmp_s_0446r_0345_85, kmp_s_0511r_0345_85, kms_s_0400r_0345_85, kms_s_0481r_0345_85, s_0400, s_0446, s_0481, s_0511));
    der(s_0485) = (intracellular * function_73(Keq_r_0284_72, Vmax_r_0284_72, intracellular, kmp_s_0485r_0284_72, kmp_s_0605r_0284_72, kms_s_0521r_0284_72, kms_s_0763_br_0284_72, kms_s_1215r_0284_72, s_0485, s_0521, s_0605, s_0763_b, s_1215)) - (intracellular * function_207(Keq_r_0847_206, Vmax_r_0847_206, intracellular, kmp_s_0090r_0847_206, kmp_s_0511r_0847_206, kmp_s_0763_br_0847_206, kms_s_0485r_0847_206, kms_s_1020r_0847_206, s_0090, s_0485, s_0511, s_0763_b, s_1020)) - (intracellular * function_209(Keq_r_0853_208, Vmax_r_0853_208, intracellular, kmp_s_0511r_0853_208, kmp_s_0763_br_0853_208, kmp_s_1219r_0853_208, kms_s_0485r_0853_208, kms_s_0943r_0853_208, s_0485, s_0511, s_0763_b, s_0943, s_1219));
    der(s_0500) = (intracellular * function_78(Keq_r_0306_77, Vmax_r_0306_77, intracellular, kmp_s_0500r_0306_77, kmp_s_1207r_0306_77, kms_s_0330r_0306_77, s_0330, s_0500, s_1207)) - (intracellular * function_48(Keq_r_0221_47, Vmax_r_0221_47, intracellular, kmp_s_0439r_0221_47, kmp_s_0763_br_0221_47, kmp_s_0899r_0221_47, kmp_s_1277r_0221_47, kms_s_0500r_0221_47, kms_s_0907r_0221_47, s_0439, s_0500, s_0763_b, s_0899, s_0907, s_1277)) - (intracellular * function_77(Keq_r_0304_76, Vmax_r_0304_76, intracellular, kmp_s_1258r_0304_76, kms_s_0500r_0304_76, s_0500, s_1258));
    der(s_0501) = (intracellular * function_81(Keq_r_0330_80, Vmax_r_0330_80, intracellular, kmp_s_0501r_0330_80, kmp_s_1434_br_0330_80, kms_s_0507r_0330_80, s_0501, s_0507, s_1434_b)) - (intracellular * function_79(Keq_r_0307_78, Vmax_r_0307_78, intracellular, kmp_s_0847r_0307_78, kms_s_0501r_0307_78, kms_s_1434_br_0307_78, s_0501, s_0847, s_1434_b));
    der(s_0507) = (intracellular * function_80(Keq_r_0328_79, Vmax_r_0328_79, intracellular, kmp_s_0507r_0328_79, kmp_s_0514r_0328_79, kmp_s_0763_br_0328_79, kms_s_0380r_0328_79, kms_s_1156r_0328_79, kms_s_1434_br_0328_79, s_0380, s_0507, s_0514, s_0763_b, s_1156, s_1434_b)) - (intracellular * function_81(Keq_r_0330_80, Vmax_r_0330_80, intracellular, kmp_s_0501r_0330_80, kmp_s_1434_br_0330_80, kms_s_0507r_0330_80, s_0501, s_0507, s_1434_b));
    der(s_0511) = (intracellular * function_86(Keq_r_0345_85, Vmax_r_0345_85, intracellular, kmp_s_0446r_0345_85, kmp_s_0511r_0345_85, kms_s_0400r_0345_85, kms_s_0481r_0345_85, s_0400, s_0446, s_0481, s_0511)) + (intracellular * function_207(Keq_r_0847_206, Vmax_r_0847_206, intracellular, kmp_s_0090r_0847_206, kmp_s_0511r_0847_206, kmp_s_0763_br_0847_206, kms_s_0485r_0847_206, kms_s_1020r_0847_206, s_0090, s_0485, s_0511, s_0763_b, s_1020)) + (intracellular * function_209(Keq_r_0853_208, Vmax_r_0853_208, intracellular, kmp_s_0511r_0853_208, kmp_s_0763_br_0853_208, kmp_s_1219r_0853_208, kms_s_0485r_0853_208, kms_s_0943r_0853_208, s_0485, s_0511, s_0763_b, s_0943, s_1219)) - (0.05 * intracellular * function_283(V_o_282, a_s_0001r_1812_282, a_s_0416r_1812_282, a_s_0434r_1812_282, a_s_0446r_1812_282, a_s_0511r_1812_282, a_s_0564r_1812_282, a_s_0569r_1812_282, a_s_0593r_1812_282, a_s_0619r_1812_282, a_s_0740r_1812_282, a_s_0743r_1812_282, a_s_0752r_1812_282, a_s_0863r_1812_282, a_s_0873r_1812_282, a_s_0877r_1812_282, a_s_0881r_1812_282, a_s_0889r_1812_282, a_s_0899r_1812_282, a_s_0907r_1812_282, a_s_0911r_1812_282, a_s_0920r_1812_282, a_s_0925r_1812_282, a_s_0929r_1812_282, a_s_0933r_1812_282, a_s_0936r_1812_282, a_s_0939r_1812_282, a_s_0943r_1812_282, a_s_0949r_1812_282, a_s_0952r_1812_282, a_s_0955r_1812_282, a_s_0960r_1812_282, a_s_1000r_1812_282, a_s_1011r_1812_282, a_s_1283r_1812_282, a_s_1347r_1812_282, a_s_1417r_1812_282, intracellular, s_0001, s_0001_or_1812_282, s_0416, s_0416_or_1812_282, s_0434, s_0434_or_1812_282, s_0446, s_0446_or_1812_282, s_0511, s_0511_or_1812_282, s_0564, s_0564_or_1812_282, s_0569, s_0569_or_1812_282, s_0593, s_0593_or_1812_282, s_0619, s_0619_or_1812_282, s_0740, s_0740_or_1812_282, s_0743, s_0743_or_1812_282, s_0752, s_0752_or_1812_282, s_0863, s_0863_or_1812_282, s_0873, s_0873_or_1812_282, s_0877, s_0877_or_1812_282, s_0881, s_0881_or_1812_282, s_0889, s_0889_or_1812_282, s_0899, s_0899_or_1812_282, s_0907, s_0907_or_1812_282, s_0911, s_0911_or_1812_282, s_0920, s_0920_or_1812_282, s_0925, s_0925_or_1812_282, s_0929, s_0929_or_1812_282, s_0933, s_0933_or_1812_282, s_0936, s_0936_or_1812_282, s_0939, s_0939_or_1812_282, s_0943, s_0943_or_1812_282, s_0949, s_0949_or_1812_282, s_0952, s_0952_or_1812_282, s_0955, s_0955_or_1812_282, s_0960, s_0960_or_1812_282, s_1000, s_1000_or_1812_282, s_1011, s_1011_or_1812_282, s_1283, s_1283_or_1812_282, s_1347, s_1347_or_1812_282, s_1417, s_1417_or_1812_282, zero_flux_282));
    der(s_0514) = (intracellular * function_4(Keq_r_0009_3, Vmax_r_0009_3, intracellular, kmp_s_0514r_0009_3, kmp_s_0763_br_0009_3, kmp_s_1215r_0009_3, kms_s_0083r_0009_3, kms_s_0386r_0009_3, s_0083, s_0386, s_0514, s_0763_b, s_1215)) + (intracellular * function_11(Keq_r_0026_10, Vmax_r_0026_10, intracellular, kmp_s_0167r_0026_10, kmp_s_0514r_0026_10, kmp_s_0763_br_0026_10, kms_s_0238r_0026_10, kms_s_0380r_0026_10, kms_s_1434_br_0026_10, s_0167, s_0238, s_0380, s_0514, s_0763_b, s_1434_b)) + (intracellular * function_29(Keq_r_0118_28, Vmax_r_0118_28, intracellular, kmp_s_0374r_0118_28, kmp_s_0514r_0118_28, kms_s_0380r_0118_28, s_0374, s_0380, s_0514)) + (intracellular * function_32(Keq_r_0127_31, Vmax_r_0127_31, intracellular, kmp_s_0369r_0127_31, kmp_s_0446r_0127_31, kmp_s_0514r_0127_31, kms_s_0380r_0127_31, kms_s_0434r_0127_31, kms_s_0605r_0127_31, s_0369, s_0380, s_0434, s_0446, s_0514, s_0605)) + (intracellular * function_75(Keq_r_0290_74, Vmax_r_0290_74, intracellular, kmp_s_0514r_0290_74, kmp_s_0763_br_0290_74, kmp_s_1080r_0290_74, kms_s_1325r_0290_74, kms_s_1355r_0290_74, s_0514, s_0763_b, s_1080, s_1325, s_1355)) + (intracellular * function_80(Keq_r_0328_79, Vmax_r_0328_79, intracellular, kmp_s_0507r_0328_79, kmp_s_0514r_0328_79, kmp_s_0763_br_0328_79, kms_s_0380r_0328_79, kms_s_1156r_0328_79, kms_s_1434_br_0328_79, s_0380, s_0507, s_0514, s_0763_b, s_1156, s_1434_b)) + (intracellular * function_93(Keq_r_0370_92, Vmax_r_0370_92, intracellular, kmp_s_0514r_0370_92, kmp_s_0763_br_0370_92, kmp_s_1399r_0370_92, kms_s_0386r_0370_92, kms_s_0596r_0370_92, s_0386, s_0514, s_0596, s_0763_b, s_1399)) + (intracellular * function_105(Keq_r_0417_104, Vmax_r_0417_104, intracellular, kmp_s_0470r_0417_104, kmp_s_0514r_0417_104, kmp_s_0574r_0417_104, kmp_s_1091r_0417_104, kmp_s_1434_br_0417_104, kms_s_0763_br_0417_104, kms_s_1005r_0417_104, kms_s_1096r_0417_104, kms_s_1132r_0417_104, s_0470, s_0514, s_0574, s_0763_b, s_1005, s_1091, s_1096, s_1132, s_1434_b)) + (intracellular * function_106(Keq_r_0418_105, Vmax_r_0418_105, intracellular, kmp_s_0470r_0418_105, kmp_s_0514r_0418_105, kmp_s_0968r_0418_105, kmp_s_1091r_0418_105, kmp_s_1434_br_0418_105, kms_s_0574r_0418_105, kms_s_0763_br_0418_105, kms_s_1005r_0418_105, kms_s_1096r_0418_105, s_0470, s_0514, s_0574, s_0763_b, s_0968, s_1005, s_1091, s_1096, s_1434_b)) + (intracellular * function_107(Keq_r_0419_106, Vmax_r_0419_106, intracellular, kmp_s_0470r_0419_106, kmp_s_0514r_0419_106, kmp_s_1028r_0419_106, kmp_s_1091r_0419_106, kmp_s_1434_br_0419_106, kms_s_0763_br_0419_106, kms_s_0968r_0419_106, kms_s_1005r_0419_106, kms_s_1096r_0419_106, s_0470, s_0514, s_0763_b, s_0968, s_1005, s_1028, s_1091, s_1096, s_1434_b)) + (intracellular * function_108(Keq_r_0421_107, Vmax_r_0421_107, intracellular, kmp_s_0470r_0421_107, kmp_s_0514r_0421_107, kmp_s_1091r_0421_107, kmp_s_1170r_0421_107, kmp_s_1434_br_0421_107, kms_s_0763_br_0421_107, kms_s_1005r_0421_107, kms_s_1028r_0421_107, kms_s_1096r_0421_107, s_0470, s_0514, s_0763_b, s_1005, s_1028, s_1091, s_1096, s_1170, s_1434_b)) + (intracellular * function_109(Keq_r_0423_108, Vmax_r_0423_108, intracellular, kmp_s_0470r_0423_108, kmp_s_0514r_0423_108, kmp_s_1091r_0423_108, kmp_s_1329r_0423_108, kmp_s_1434_br_0423_108, kms_s_0763_br_0423_108, kms_s_1005r_0423_108, kms_s_1096r_0423_108, kms_s_1170r_0423_108, s_0470, s_0514, s_0763_b, s_1005, s_1091, s_1096, s_1170, s_1329, s_1434_b)) + (3.0 * intracellular * function_110(Keq_r_0425_109, Vmax_r_0425_109, intracellular, kmp_s_0470r_0425_109, kmp_s_0514r_0425_109, kmp_s_0987r_0425_109, kmp_s_1091r_0425_109, kmp_s_1434_br_0425_109, kms_s_0763_br_0425_109, kms_s_1005r_0425_109, kms_s_1096r_0425_109, kms_s_1329r_0425_109, s_0470, s_0514, s_0763_b, s_0987, s_1005, s_1091, s_1096, s_1329, s_1434_b)) + (intracellular * function_111(Keq_r_0429_110, Vmax_r_0429_110, intracellular, kmp_s_0470r_0429_110, kmp_s_0514r_0429_110, kmp_s_0582r_0429_110, kmp_s_1091r_0429_110, kmp_s_1434_br_0429_110, kms_s_0763_br_0429_110, kms_s_1005r_0429_110, kms_s_1096r_0429_110, kms_s_1140r_0429_110, s_0470, s_0514, s_0582, s_0763_b, s_1005, s_1091, s_1096, s_1140, s_1434_b)) + (3.0 * intracellular * function_112(Keq_r_0430_111, Vmax_r_0430_111, intracellular, kmp_s_0470r_0430_111, kmp_s_0514r_0430_111, kmp_s_1091r_0430_111, kmp_s_1140r_0430_111, kmp_s_1434_br_0430_111, kms_s_0380r_0430_111, kms_s_0763_br_0430_111, kms_s_1005r_0430_111, kms_s_1096r_0430_111, s_0380, s_0470, s_0514, s_0763_b, s_1005, s_1091, s_1096, s_1140, s_1434_b)) + (intracellular * function_114(Keq_r_0439_113, Vmax_r_0439_113, intracellular, kmp_s_0446r_0439_113, kmp_s_0514r_0439_113, kmp_s_1329r_0439_113, kms_s_0434r_0439_113, kms_s_0605r_0439_113, kms_s_1334r_0439_113, s_0434, s_0446, s_0514, s_0605, s_1329, s_1334)) + (intracellular * function_115(Keq_r_0442_114, Vmax_r_0442_114, intracellular, kmp_s_0446r_0442_114, kmp_s_0514r_0442_114, kmp_s_1132r_0442_114, kms_s_0434r_0442_114, kms_s_0605r_0442_114, kms_s_1140r_0442_114, s_0434, s_0446, s_0514, s_0605, s_1132, s_1140)) + (intracellular * function_116(Keq_r_0464_115, Vmax_r_0464_115, intracellular, kmp_s_0470r_0464_115, kmp_s_0514r_0464_115, kmp_s_0977r_0464_115, kmp_s_1091r_0464_115, kmp_s_1434_br_0464_115, kms_s_0582r_0464_115, kms_s_0763_br_0464_115, kms_s_1005r_0464_115, kms_s_1096r_0464_115, s_0470, s_0514, s_0582, s_0763_b, s_0977, s_1005, s_1091, s_1096, s_1434_b)) + (intracellular * function_117(Keq_r_0465_116, Vmax_r_0465_116, intracellular, kmp_s_0470r_0465_116, kmp_s_0514r_0465_116, kmp_s_1044r_0465_116, kmp_s_1091r_0465_116, kmp_s_1434_br_0465_116, kms_s_0763_br_0465_116, kms_s_0977r_0465_116, kms_s_1005r_0465_116, kms_s_1096r_0465_116, s_0470, s_0514, s_0763_b, s_0977, s_1005, s_1044, s_1091, s_1096, s_1434_b)) + (intracellular * function_118(Keq_r_0466_117, Vmax_r_0466_117, intracellular, kmp_s_0470r_0466_117, kmp_s_0514r_0466_117, kmp_s_1091r_0466_117, kmp_s_1187r_0466_117, kmp_s_1434_br_0466_117, kms_s_0763_br_0466_117, kms_s_1005r_0466_117, kms_s_1044r_0466_117, kms_s_1096r_0466_117, s_0470, s_0514, s_0763_b, s_1005, s_1044, s_1091, s_1096, s_1187, s_1434_b)) + (intracellular * function_119(Keq_r_0467_118, Vmax_r_0467_118, intracellular, kmp_s_0470r_0467_118, kmp_s_0514r_0467_118, kmp_s_1091r_0467_118, kmp_s_1334r_0467_118, kmp_s_1434_br_0467_118, kms_s_0763_br_0467_118, kms_s_1005r_0467_118, kms_s_1096r_0467_118, kms_s_1187r_0467_118, s_0470, s_0514, s_0763_b, s_1005, s_1091, s_1096, s_1187, s_1334, s_1434_b)) + (intracellular * function_139(Keq_r_0534_138, Vmax_r_0534_138, intracellular, kmp_s_0083r_0534_138, kmp_s_0514r_0534_138, kmp_s_0763_br_0534_138, kms_s_0386r_0534_138, kms_s_1315r_0534_138, s_0083, s_0386, s_0514, s_0763_b, s_1315)) + (intracellular * function_152(Keq_r_0582_151, Vmax_r_0582_151, intracellular, kmp_s_0514r_0582_151, kmp_s_0763_br_0582_151, kmp_s_0798r_0582_151, kms_s_0185r_0582_151, kms_s_0380r_0582_151, kms_s_1434_br_0582_151, s_0185, s_0380, s_0514, s_0763_b, s_0798, s_1434_b)) + (intracellular * function_156(Keq_r_0589_155, Vmax_r_0589_155, intracellular, kmp_s_0514r_0589_155, kmp_s_1117r_0589_155, kms_s_0380r_0589_155, kms_s_0919r_0589_155, s_0380, s_0514, s_0919, s_1117)) + (intracellular * function_157(Keq_r_0598_156, Vmax_r_0598_156, intracellular, kmp_s_0031r_0598_156, kmp_s_0514r_0598_156, kmp_s_1091r_0598_156, kms_s_0225r_0598_156, kms_s_0763_br_0598_156, kms_s_1096r_0598_156, s_0031, s_0225, s_0514, s_0763_b, s_1091, s_1096)) + (intracellular * function_158(Keq_r_0599_157, Vmax_r_0599_157, intracellular, kmp_s_0225r_0599_157, kmp_s_0514r_0599_157, kmp_s_0763_br_0599_157, kms_s_0374r_0599_157, kms_s_0380r_0599_157, kms_s_1434_br_0599_157, s_0225, s_0374, s_0380, s_0514, s_0763_b, s_1434_b)) + (intracellular * function_249(Keq_r_0972_248, Vmax_r_0972_248, intracellular, kmp_s_0218r_0972_248, kmp_s_0470r_0972_248, kmp_s_0514r_0972_248, kms_s_0943r_0972_248, kms_s_1187r_0972_248, s_0218, s_0470, s_0514, s_0943, s_1187)) - (intracellular * function_31(Keq_r_0125_30, Vmax_r_0125_30, intracellular, kmp_s_0380r_0125_30, kmp_s_1434_br_0125_30, kms_s_0369r_0125_30, kms_s_0514r_0125_30, kms_s_0763_br_0125_30, s_0369, s_0380, s_0514, s_0763_b, s_1434_b)) - (intracellular * function_113(Keq_r_0437_112, Vmax_r_0437_112, intracellular, kmp_s_0434r_0437_112, kmp_s_0605r_0437_112, kmp_s_1355r_0437_112, kms_s_0446r_0437_112, kms_s_0514r_0437_112, kms_s_0987r_0437_112, s_0434, s_0446, s_0514, s_0605, s_0987, s_1355)) - (intracellular * function_236(Keq_r_0940_235, Vmax_r_0940_235, intracellular, kmp_s_0380r_0940_235, kmp_s_0470r_0940_235, kmp_s_1087r_0940_235, kms_s_0514r_0940_235, kms_s_1082r_0940_235, kms_s_1277r_0940_235, s_0380, s_0470, s_0514, s_1082, s_1087, s_1277)) - (intracellular * function_255(Keq_r_1003_254, Vmax_r_1003_254, intracellular, kmp_s_0400r_1003_254, kmp_s_1207r_1003_254, kmp_s_1342r_1003_254, kms_s_0446r_1003_254, kms_s_0514r_1003_254, kms_s_1338r_1003_254, s_0400, s_0446, s_0514, s_1207, s_1338, s_1342));
    der(s_0521) = (intracellular * function_82(Keq_r_0336_81, Vmax_r_0336_81, intracellular, kmp_s_0400r_0336_81, kmp_s_0521r_0336_81, kmp_s_0763_br_0336_81, kmp_s_1207r_0336_81, kms_s_0430r_0336_81, kms_s_0446r_0336_81, kms_s_1430r_0336_81, s_0400, s_0430, s_0446, s_0521, s_0763_b, s_1207, s_1430)) - (intracellular * function_73(Keq_r_0284_72, Vmax_r_0284_72, intracellular, kmp_s_0485r_0284_72, kmp_s_0605r_0284_72, kms_s_0521r_0284_72, kms_s_0763_br_0284_72, kms_s_1215r_0284_72, s_0485, s_0521, s_0605, s_0763_b, s_1215)) - (intracellular * function_187(Keq_r_0712_186, Vmax_r_0712_186, intracellular, kmp_s_0022r_0712_186, kmp_s_0481r_0712_186, kmp_s_0763_br_0712_186, kms_s_0031r_0712_186, kms_s_0521r_0712_186, s_0022, s_0031, s_0481, s_0521, s_0763_b)) - (intracellular * function_198(Keq_r_0771_197, Vmax_r_0771_197, intracellular, kmp_s_0446r_0771_197, kmp_s_0481r_0771_197, kms_s_0400r_0771_197, kms_s_0521r_0771_197, s_0400, s_0446, s_0481, s_0521));
    der(s_0529) = (intracellular * function_89(Keq_r_0352_88, Vmax_r_0352_88, intracellular, kmp_s_0529r_0352_88, kmp_s_0763_br_0352_88, kmp_s_1096r_0352_88, kms_s_0530r_0352_88, kms_s_1091r_0352_88, s_0529, s_0530, s_0763_b, s_1091, s_1096)) - (intracellular * function_88(Keq_r_0351_87, Vmax_r_0351_87, intracellular, kmp_s_0530r_0351_87, kmp_s_1082r_0351_87, kms_s_0529r_0351_87, kms_s_0763_br_0351_87, kms_s_1087r_0351_87, s_0529, s_0530, s_0763_b, s_1082, s_1087));
    der(s_0530) = (intracellular * function_88(Keq_r_0351_87, Vmax_r_0351_87, intracellular, kmp_s_0530r_0351_87, kmp_s_1082r_0351_87, kms_s_0529r_0351_87, kms_s_0763_br_0351_87, kms_s_1087r_0351_87, s_0529, s_0530, s_0763_b, s_1082, s_1087)) - (intracellular * function_89(Keq_r_0352_88, Vmax_r_0352_88, intracellular, kmp_s_0529r_0352_88, kmp_s_0763_br_0352_88, kmp_s_1096r_0352_88, kms_s_0530r_0352_88, kms_s_1091r_0352_88, s_0529, s_0530, s_0763_b, s_1091, s_1096));
    der(s_0532) = (intracellular * function_159(Keq_r_0604_158, Vmax_r_0604_158, intracellular, kmp_s_0317r_0604_158, kmp_s_0532r_0604_158, kmp_s_0763_br_0604_158, kmp_s_0899r_0604_158, kms_s_0315r_0604_158, kms_s_0907r_0604_158, s_0315, s_0317, s_0532, s_0763_b, s_0899, s_0907)) - (intracellular * function_160(Keq_r_0605_159, Vmax_r_0605_159, intracellular, kmp_s_0212r_0605_159, kmp_s_1434_br_0605_159, kms_s_0532r_0605_159, s_0212, s_0532, s_1434_b));
    der(s_0533) = (intracellular * function_264(Keq_r_1037_263, Vmax_r_1037_263, intracellular, kmp_s_0533r_1037_263, kmp_s_0561r_1037_263, kms_s_0539r_1037_263, kms_s_0731r_1037_263, s_0533, s_0539, s_0561, s_0731)) - (intracellular * function_9(Keq_r_0021_8, Vmax_r_0021_8, intracellular, kmp_s_0356r_0021_8, kmp_s_1207r_0021_8, kms_s_0533r_0021_8, kms_s_1243r_0021_8, kms_s_1434_br_0021_8, s_0356, s_0533, s_1207, s_1243, s_1434_b)) - (intracellular * function_262(Keq_r_1035_261, Vmax_r_1035_261, intracellular, kmp_s_0731r_1035_261, kmp_s_1304r_1035_261, kms_s_0533r_1035_261, kms_s_0539r_1035_261, s_0533, s_0539, s_0731, s_1304));
    der(s_0537) = (intracellular_210 * function_211(Vmax_r_0859_210, kms_s_0446r_0859_210, kms_s_0539r_0859_210, s_0446, s_0539, s_0400, s_0537, s_0763_b, Keq_r_0859_210, kmp_s_0400r_0859_210, kmp_s_0537r_0859_210, kmp_s_0763_br_0859_210, s_0446, kmI_s_0446mr_0859_210, intracellular_210)) - (intracellular * function_121(Keq_r_0484_120, Vmax_r_0484_120, intracellular, kmp_s_0731r_0484_120, kmp_s_0735r_0484_120, kms_s_0537r_0484_120, s_0537, s_0731, s_0735));
    der(s_0539) = (intracellular_125 * function_126(Vmax_r_0504_125, kms_s_0455r_0504_125, s_0455, s_0539, Keq_r_0504_125, kmp_s_0539r_0504_125, intracellular_125, s_0455, kmI_s_0455mr_0504_125, s_0545, kmI_s_0glumr_0504_125)) + (intracellular * function_127(Keq_r_0505_126, Vmax_r_0505_126, intracellular, kmp_s_0539r_0505_126, kms_s_0410r_0505_126, s_0410, s_0539)) - (intracellular * function_182(Keq_r_0698_181, Vmax_r_0698_181, intracellular, kmp_s_0554r_0698_181, kms_s_0539r_0698_181, s_0539, s_0554)) - (intracellular_210 * function_211(Vmax_r_0859_210, kms_s_0446r_0859_210, kms_s_0539r_0859_210, s_0446, s_0539, s_0400, s_0537, s_0763_b, Keq_r_0859_210, kmp_s_0400r_0859_210, kmp_s_0537r_0859_210, kmp_s_0763_br_0859_210, s_0446, kmI_s_0446mr_0859_210, intracellular_210)) - (intracellular * function_262(Keq_r_1035_261, Vmax_r_1035_261, intracellular, kmp_s_0731r_1035_261, kmp_s_1304r_1035_261, kms_s_0533r_1035_261, kms_s_0539r_1035_261, s_0533, s_0539, s_0731, s_1304)) - (intracellular * function_264(Keq_r_1037_263, Vmax_r_1037_263, intracellular, kmp_s_0533r_1037_263, kmp_s_0561r_1037_263, kms_s_0539r_1037_263, kms_s_0731r_1037_263, s_0533, s_0539, s_0561, s_0731));
    der(s_0545) = (function_277(Keq_r_1293_276, Vmax_r_1293_276, kmp_s_0545r_1293_276, kms_s_0547_br_1293_276, s_0545, s_0547_b)) - (intracellular * function_125(Keq_r_0499_124, Vmax_r_0499_124, intracellular, kmp_s_0400r_0499_124, kmp_s_0455r_0499_124, kmp_s_0763_br_0499_124, kms_s_0446r_0499_124, kms_s_0545r_0499_124, s_0400, s_0446, s_0455, s_0545, s_0763_b)) - (intracellular * function_147(Keq_r_0573_146, Vmax_r_0573_146, intracellular, kmp_s_0400r_0573_146, kmp_s_0410r_0573_146, kmp_s_0763_br_0573_146, kms_s_0446r_0573_146, kms_s_0545r_0573_146, s_0400, s_0410, s_0446, s_0545, s_0763_b));
    der(s_0549) = (intracellular * function_212(Keq_r_0861_211, Vmax_r_0861_211, intracellular, kmp_s_0549r_0861_211, kms_s_0410r_0861_211, s_0410, s_0549)) - (intracellular * function_272(Keq_r_1072_271, Vmax_r_1072_271, intracellular, kmp_s_0605r_1072_271, kmp_s_1415r_1072_271, kms_s_0549r_1072_271, kms_s_0763_br_1072_271, kms_s_1430r_1072_271, s_0549, s_0605, s_0763_b, s_1415, s_1430));
    der(s_0553) = (intracellular * function_217(Keq_r_0875_216, Vmax_r_0875_216, intracellular, kmp_s_0553r_0875_216, kms_s_0554r_0875_216, s_0553, s_0554)) - (intracellular * function_181(Keq_r_0697_180, Vmax_r_0697_180, intracellular, kmp_s_0605r_0697_180, kmp_s_0710r_0697_180, kms_s_0553r_0697_180, kms_s_0755r_0697_180, kms_s_0763_br_0697_180, s_0553, s_0605, s_0710, s_0755, s_0763_b));
    der(s_0554) = (intracellular * function_182(Keq_r_0698_181, Vmax_r_0698_181, intracellular, kmp_s_0554r_0698_181, kms_s_0539r_0698_181, s_0539, s_0554)) - (intracellular * function_217(Keq_r_0875_216, Vmax_r_0875_216, intracellular, kmp_s_0553r_0875_216, kms_s_0554r_0875_216, s_0553, s_0554));
    der(s_0557) = (intracellular * function_245(Keq_r_0965_244, Vmax_r_0965_244, intracellular, kmp_s_0557r_0965_244, kms_s_0561r_0965_244, s_0557, s_0561)) - (intracellular * function_15(Keq_r_0040_14, Vmax_r_0040_14, intracellular, kmp_s_0163r_0040_14, kmp_s_0689r_0040_14, kmp_s_0763_br_0040_14, kms_s_0557r_0040_14, s_0163, s_0557, s_0689, s_0763_b)) - (intracellular * function_244(Keq_r_0963_243, Vmax_r_0963_243, intracellular, kmp_s_0427r_0963_243, kms_s_0557r_0963_243, s_0427, s_0557));
    der(s_0561) = (intracellular * function_263(Keq_r_1036_262, Vmax_r_1036_262, intracellular, kmp_s_0427r_1036_262, kmp_s_0561r_1036_262, kms_s_0731r_1036_262, kms_s_1304r_1036_262, s_0427, s_0561, s_0731, s_1304)) + (intracellular * function_264(Keq_r_1037_263, Vmax_r_1037_263, intracellular, kmp_s_0533r_1037_263, kmp_s_0561r_1037_263, kms_s_0539r_1037_263, kms_s_0731r_1037_263, s_0533, s_0539, s_0561, s_0731)) - (intracellular * function_245(Keq_r_0965_244, Vmax_r_0965_244, intracellular, kmp_s_0557r_0965_244, kms_s_0561r_0965_244, s_0557, s_0561));
    der(s_0562) = (intracellular * function_146(Keq_r_0568_145, Vmax_r_0568_145, intracellular, kmp_s_0562r_0568_145, kmp_s_0706r_0568_145, kms_s_0566r_0568_145, kms_s_0752r_0568_145, s_0562, s_0566, s_0706, s_0752)) + (intracellular * function_240(Keq_r_0951_239, Vmax_r_0951_239, intracellular, kmp_s_0562r_0951_239, kmp_s_1434_br_0951_239, kmp_s_1517r_0951_239, kms_s_0400r_0951_239, kms_s_1521r_0951_239, s_0400, s_0562, s_1434_b, s_1517, s_1521)) - (intracellular * function_91(Keq_r_0360_90, Vmax_r_0360_90, intracellular, kmp_s_0446r_0360_90, kmp_s_0564r_0360_90, kms_s_0400r_0360_90, kms_s_0562r_0360_90, s_0400, s_0446, s_0562, s_0564));
    der(s_0564) = (intracellular * function_91(Keq_r_0360_90, Vmax_r_0360_90, intracellular, kmp_s_0446r_0360_90, kmp_s_0564r_0360_90, kms_s_0400r_0360_90, kms_s_0562r_0360_90, s_0400, s_0446, s_0562, s_0564)) - (0.003587 * intracellular * function_283(V_o_282, a_s_0001r_1812_282, a_s_0416r_1812_282, a_s_0434r_1812_282, a_s_0446r_1812_282, a_s_0511r_1812_282, a_s_0564r_1812_282, a_s_0569r_1812_282, a_s_0593r_1812_282, a_s_0619r_1812_282, a_s_0740r_1812_282, a_s_0743r_1812_282, a_s_0752r_1812_282, a_s_0863r_1812_282, a_s_0873r_1812_282, a_s_0877r_1812_282, a_s_0881r_1812_282, a_s_0889r_1812_282, a_s_0899r_1812_282, a_s_0907r_1812_282, a_s_0911r_1812_282, a_s_0920r_1812_282, a_s_0925r_1812_282, a_s_0929r_1812_282, a_s_0933r_1812_282, a_s_0936r_1812_282, a_s_0939r_1812_282, a_s_0943r_1812_282, a_s_0949r_1812_282, a_s_0952r_1812_282, a_s_0955r_1812_282, a_s_0960r_1812_282, a_s_1000r_1812_282, a_s_1011r_1812_282, a_s_1283r_1812_282, a_s_1347r_1812_282, a_s_1417r_1812_282, intracellular, s_0001, s_0001_or_1812_282, s_0416, s_0416_or_1812_282, s_0434, s_0434_or_1812_282, s_0446, s_0446_or_1812_282, s_0511, s_0511_or_1812_282, s_0564, s_0564_or_1812_282, s_0569, s_0569_or_1812_282, s_0593, s_0593_or_1812_282, s_0619, s_0619_or_1812_282, s_0740, s_0740_or_1812_282, s_0743, s_0743_or_1812_282, s_0752, s_0752_or_1812_282, s_0863, s_0863_or_1812_282, s_0873, s_0873_or_1812_282, s_0877, s_0877_or_1812_282, s_0881, s_0881_or_1812_282, s_0889, s_0889_or_1812_282, s_0899, s_0899_or_1812_282, s_0907, s_0907_or_1812_282, s_0911, s_0911_or_1812_282, s_0920, s_0920_or_1812_282, s_0925, s_0925_or_1812_282, s_0929, s_0929_or_1812_282, s_0933, s_0933_or_1812_282, s_0936, s_0936_or_1812_282, s_0939, s_0939_or_1812_282, s_0943, s_0943_or_1812_282, s_0949, s_0949_or_1812_282, s_0952, s_0952_or_1812_282, s_0955, s_0955_or_1812_282, s_0960, s_0960_or_1812_282, s_1000, s_1000_or_1812_282, s_1011, s_1011_or_1812_282, s_1283, s_1283_or_1812_282, s_1347, s_1347_or_1812_282, s_1417, s_1417_or_1812_282, zero_flux_282));
    der(s_0566) = (intracellular * function_243(Keq_r_0959_242, Vmax_r_0959_242, intracellular, kmp_s_0566r_0959_242, kmp_s_1434_br_0959_242, kmp_s_1517r_0959_242, kms_s_0446r_0959_242, kms_s_1521r_0959_242, s_0446, s_0566, s_1434_b, s_1517, s_1521)) - (intracellular * function_146(Keq_r_0568_145, Vmax_r_0568_145, intracellular, kmp_s_0562r_0568_145, kmp_s_0706r_0568_145, kms_s_0566r_0568_145, kms_s_0752r_0568_145, s_0562, s_0566, s_0706, s_0752));
    der(s_0569) = (intracellular * function_90(Keq_r_0357_89, Vmax_r_0357_89, intracellular, kmp_s_0569r_0357_89, kmp_s_0763_br_0357_89, kmp_s_1434_br_0357_89, kms_s_0430r_0357_89, kms_s_0624r_0357_89, s_0430, s_0569, s_0624, s_0763_b, s_1434_b)) - (0.002432 * intracellular * function_283(V_o_282, a_s_0001r_1812_282, a_s_0416r_1812_282, a_s_0434r_1812_282, a_s_0446r_1812_282, a_s_0511r_1812_282, a_s_0564r_1812_282, a_s_0569r_1812_282, a_s_0593r_1812_282, a_s_0619r_1812_282, a_s_0740r_1812_282, a_s_0743r_1812_282, a_s_0752r_1812_282, a_s_0863r_1812_282, a_s_0873r_1812_282, a_s_0877r_1812_282, a_s_0881r_1812_282, a_s_0889r_1812_282, a_s_0899r_1812_282, a_s_0907r_1812_282, a_s_0911r_1812_282, a_s_0920r_1812_282, a_s_0925r_1812_282, a_s_0929r_1812_282, a_s_0933r_1812_282, a_s_0936r_1812_282, a_s_0939r_1812_282, a_s_0943r_1812_282, a_s_0949r_1812_282, a_s_0952r_1812_282, a_s_0955r_1812_282, a_s_0960r_1812_282, a_s_1000r_1812_282, a_s_1011r_1812_282, a_s_1283r_1812_282, a_s_1347r_1812_282, a_s_1417r_1812_282, intracellular, s_0001, s_0001_or_1812_282, s_0416, s_0416_or_1812_282, s_0434, s_0434_or_1812_282, s_0446, s_0446_or_1812_282, s_0511, s_0511_or_1812_282, s_0564, s_0564_or_1812_282, s_0569, s_0569_or_1812_282, s_0593, s_0593_or_1812_282, s_0619, s_0619_or_1812_282, s_0740, s_0740_or_1812_282, s_0743, s_0743_or_1812_282, s_0752, s_0752_or_1812_282, s_0863, s_0863_or_1812_282, s_0873, s_0873_or_1812_282, s_0877, s_0877_or_1812_282, s_0881, s_0881_or_1812_282, s_0889, s_0889_or_1812_282, s_0899, s_0899_or_1812_282, s_0907, s_0907_or_1812_282, s_0911, s_0911_or_1812_282, s_0920, s_0920_or_1812_282, s_0925, s_0925_or_1812_282, s_0929, s_0929_or_1812_282, s_0933, s_0933_or_1812_282, s_0936, s_0936_or_1812_282, s_0939, s_0939_or_1812_282, s_0943, s_0943_or_1812_282, s_0949, s_0949_or_1812_282, s_0952, s_0952_or_1812_282, s_0955, s_0955_or_1812_282, s_0960, s_0960_or_1812_282, s_1000, s_1000_or_1812_282, s_1011, s_1011_or_1812_282, s_1283, s_1283_or_1812_282, s_1347, s_1347_or_1812_282, s_1417, s_1417_or_1812_282, zero_flux_282));
    der(s_0574) = (intracellular * function_105(Keq_r_0417_104, Vmax_r_0417_104, intracellular, kmp_s_0470r_0417_104, kmp_s_0514r_0417_104, kmp_s_0574r_0417_104, kmp_s_1091r_0417_104, kmp_s_1434_br_0417_104, kms_s_0763_br_0417_104, kms_s_1005r_0417_104, kms_s_1096r_0417_104, kms_s_1132r_0417_104, s_0470, s_0514, s_0574, s_0763_b, s_1005, s_1091, s_1096, s_1132, s_1434_b)) - (intracellular * function_106(Keq_r_0418_105, Vmax_r_0418_105, intracellular, kmp_s_0470r_0418_105, kmp_s_0514r_0418_105, kmp_s_0968r_0418_105, kmp_s_1091r_0418_105, kmp_s_1434_br_0418_105, kms_s_0574r_0418_105, kms_s_0763_br_0418_105, kms_s_1005r_0418_105, kms_s_1096r_0418_105, s_0470, s_0514, s_0574, s_0763_b, s_0968, s_1005, s_1091, s_1096, s_1434_b));
    der(s_0582) = (intracellular * function_111(Keq_r_0429_110, Vmax_r_0429_110, intracellular, kmp_s_0470r_0429_110, kmp_s_0514r_0429_110, kmp_s_0582r_0429_110, kmp_s_1091r_0429_110, kmp_s_1434_br_0429_110, kms_s_0763_br_0429_110, kms_s_1005r_0429_110, kms_s_1096r_0429_110, kms_s_1140r_0429_110, s_0470, s_0514, s_0582, s_0763_b, s_1005, s_1091, s_1096, s_1140, s_1434_b)) - (intracellular * function_116(Keq_r_0464_115, Vmax_r_0464_115, intracellular, kmp_s_0470r_0464_115, kmp_s_0514r_0464_115, kmp_s_0977r_0464_115, kmp_s_1091r_0464_115, kmp_s_1434_br_0464_115, kms_s_0582r_0464_115, kms_s_0763_br_0464_115, kms_s_1005r_0464_115, kms_s_1096r_0464_115, s_0470, s_0514, s_0582, s_0763_b, s_0977, s_1005, s_1091, s_1096, s_1434_b));
    der(s_0591) = (intracellular * function_241(Keq_r_0955_240, Vmax_r_0955_240, intracellular, kmp_s_0591r_0955_240, kmp_s_1434_br_0955_240, kmp_s_1517r_0955_240, kms_s_0706r_0955_240, kms_s_1521r_0955_240, s_0591, s_0706, s_1434_b, s_1517, s_1521)) - (intracellular * function_92(Keq_r_0362_91, Vmax_r_0362_91, intracellular, kmp_s_0446r_0362_91, kmp_s_0593r_0362_91, kms_s_0400r_0362_91, kms_s_0591r_0362_91, s_0400, s_0446, s_0591, s_0593));
    der(s_0593) = (intracellular * function_92(Keq_r_0362_91, Vmax_r_0362_91, intracellular, kmp_s_0446r_0362_91, kmp_s_0593r_0362_91, kms_s_0400r_0362_91, kms_s_0591r_0362_91, s_0400, s_0446, s_0591, s_0593)) - (0.002432 * intracellular * function_283(V_o_282, a_s_0001r_1812_282, a_s_0416r_1812_282, a_s_0434r_1812_282, a_s_0446r_1812_282, a_s_0511r_1812_282, a_s_0564r_1812_282, a_s_0569r_1812_282, a_s_0593r_1812_282, a_s_0619r_1812_282, a_s_0740r_1812_282, a_s_0743r_1812_282, a_s_0752r_1812_282, a_s_0863r_1812_282, a_s_0873r_1812_282, a_s_0877r_1812_282, a_s_0881r_1812_282, a_s_0889r_1812_282, a_s_0899r_1812_282, a_s_0907r_1812_282, a_s_0911r_1812_282, a_s_0920r_1812_282, a_s_0925r_1812_282, a_s_0929r_1812_282, a_s_0933r_1812_282, a_s_0936r_1812_282, a_s_0939r_1812_282, a_s_0943r_1812_282, a_s_0949r_1812_282, a_s_0952r_1812_282, a_s_0955r_1812_282, a_s_0960r_1812_282, a_s_1000r_1812_282, a_s_1011r_1812_282, a_s_1283r_1812_282, a_s_1347r_1812_282, a_s_1417r_1812_282, intracellular, s_0001, s_0001_or_1812_282, s_0416, s_0416_or_1812_282, s_0434, s_0434_or_1812_282, s_0446, s_0446_or_1812_282, s_0511, s_0511_or_1812_282, s_0564, s_0564_or_1812_282, s_0569, s_0569_or_1812_282, s_0593, s_0593_or_1812_282, s_0619, s_0619_or_1812_282, s_0740, s_0740_or_1812_282, s_0743, s_0743_or_1812_282, s_0752, s_0752_or_1812_282, s_0863, s_0863_or_1812_282, s_0873, s_0873_or_1812_282, s_0877, s_0877_or_1812_282, s_0881, s_0881_or_1812_282, s_0889, s_0889_or_1812_282, s_0899, s_0899_or_1812_282, s_0907, s_0907_or_1812_282, s_0911, s_0911_or_1812_282, s_0920, s_0920_or_1812_282, s_0925, s_0925_or_1812_282, s_0929, s_0929_or_1812_282, s_0933, s_0933_or_1812_282, s_0936, s_0936_or_1812_282, s_0939, s_0939_or_1812_282, s_0943, s_0943_or_1812_282, s_0949, s_0949_or_1812_282, s_0952, s_0952_or_1812_282, s_0955, s_0955_or_1812_282, s_0960, s_0960_or_1812_282, s_1000, s_1000_or_1812_282, s_1011, s_1011_or_1812_282, s_1283, s_1283_or_1812_282, s_1347, s_1347_or_1812_282, s_1417, s_1417_or_1812_282, zero_flux_282));
    der(s_0596) = (intracellular * function_94(Keq_r_0371_93, Vmax_r_0371_93, intracellular, kmp_s_0596r_0371_93, kmp_s_0763_br_0371_93, kmp_s_1207r_0371_93, kms_s_1215r_0371_93, kms_s_1434_br_0371_93, s_0596, s_0763_b, s_1207, s_1215, s_1434_b)) + (intracellular * function_266(Keq_r_1040_265, Vmax_r_1040_265, intracellular, kmp_s_0596r_1040_265, kmp_s_0663r_1040_265, kms_s_1399r_1040_265, kms_s_1434_br_1040_265, s_0596, s_0663, s_1399, s_1434_b)) - (intracellular * function_93(Keq_r_0370_92, Vmax_r_0370_92, intracellular, kmp_s_0514r_0370_92, kmp_s_0763_br_0370_92, kmp_s_1399r_0370_92, kms_s_0386r_0370_92, kms_s_0596r_0370_92, s_0386, s_0514, s_0596, s_0763_b, s_1399));
    der(s_0601) = (intracellular * function_261(Keq_r_1032_260, Vmax_r_1032_260, intracellular, kmp_s_0601r_1032_260, kmp_s_0619r_1032_260, kms_s_0307r_1032_260, kms_s_0624r_1032_260, s_0307, s_0601, s_0619, s_0624)) - (intracellular * function_96(Keq_r_0375_95, Vmax_r_0375_95, intracellular, kmp_s_0309r_0375_95, kmp_s_1091r_0375_95, kms_s_0601r_0375_95, kms_s_0763_br_0375_95, kms_s_1096r_0375_95, s_0309, s_0601, s_0763_b, s_1091, s_1096));
    der(s_0605) = (intracellular * function_47(Keq_r_0220_46, Vmax_r_0220_46, intracellular, kmp_s_0605r_0220_46, kmp_s_1066r_0220_46, kms_s_0331r_0220_46, kms_s_0439r_0220_46, s_0331, s_0439, s_0605, s_1066)) + (intracellular * function_50(Keq_r_0226_49, Vmax_r_0226_49, intracellular, kmp_s_0017r_0226_49, kmp_s_0434r_0226_49, kmp_s_0605r_0226_49, kmp_s_0763_br_0226_49, kms_s_0446r_0226_49, kms_s_0881r_0226_49, kms_s_0887r_0226_49, s_0017, s_0434, s_0446, s_0605, s_0763_b, s_0881, s_0887)) + (intracellular * function_51(Keq_r_0229_50, Vmax_r_0229_50, intracellular, kmp_s_0434r_0229_50, kmp_s_0605r_0229_50, kmp_s_0763_br_0229_50, kmp_s_0877r_0229_50, kmp_s_0899r_0229_50, kms_s_0446r_0229_50, kms_s_0881r_0229_50, kms_s_0907r_0229_50, kms_s_1434_br_0229_50, s_0434, s_0446, s_0605, s_0763_b, s_0877, s_0881, s_0899, s_0907, s_1434_b)) + (intracellular * function_56(Keq_r_0245_55, Vmax_r_0245_55, intracellular, kmp_s_0334r_0245_55, kmp_s_0605r_0245_55, kms_s_0331r_0245_55, kms_s_0446r_0245_55, s_0331, s_0334, s_0446, s_0605)) + (intracellular * function_73(Keq_r_0284_72, Vmax_r_0284_72, intracellular, kmp_s_0485r_0284_72, kmp_s_0605r_0284_72, kms_s_0521r_0284_72, kms_s_0763_br_0284_72, kms_s_1215r_0284_72, s_0485, s_0521, s_0605, s_0763_b, s_1215)) + (intracellular * function_101(Keq_r_0387_100, Vmax_r_0387_100, intracellular, kmp_s_0605r_0387_100, kmp_s_0712r_0387_100, kms_s_0850r_0387_100, kms_s_1257r_0387_100, s_0605, s_0712, s_0850, s_1257)) + (intracellular * function_113(Keq_r_0437_112, Vmax_r_0437_112, intracellular, kmp_s_0434r_0437_112, kmp_s_0605r_0437_112, kmp_s_1355r_0437_112, kms_s_0446r_0437_112, kms_s_0514r_0437_112, kms_s_0987r_0437_112, s_0434, s_0446, s_0514, s_0605, s_0987, s_1355)) + (intracellular * function_124(Keq_r_0496_123, Vmax_r_0496_123, intracellular, kmp_s_0195r_0496_123, kmp_s_0605r_0496_123, kms_s_0712r_0496_123, kms_s_0850r_0496_123, s_0195, s_0605, s_0712, s_0850)) + (intracellular * function_132(Keq_r_0514_131, Vmax_r_0514_131, intracellular, kmp_s_0333r_0514_131, kmp_s_0605r_0514_131, kmp_s_0899r_0514_131, kms_s_0331r_0514_131, kms_s_0907r_0514_131, kms_s_1434_br_0514_131, s_0331, s_0333, s_0605, s_0899, s_0907, s_1434_b)) + (intracellular * function_143(Keq_r_0551_142, Vmax_r_0551_142, intracellular, kmp_s_0434r_0551_142, kmp_s_0605r_0551_142, kmp_s_0752r_0551_142, kmp_s_0763_br_0551_142, kmp_s_0899r_0551_142, kms_s_0306r_0551_142, kms_s_0446r_0551_142, kms_s_0907r_0551_142, kms_s_1434_br_0551_142, s_0306, s_0434, s_0446, s_0605, s_0752, s_0763_b, s_0899, s_0907, s_1434_b)) + (intracellular * function_144(Keq_r_0562_143, Vmax_r_0562_143, intracellular, kmp_s_0145r_0562_143, kmp_s_0605r_0562_143, kmp_s_0689r_0562_143, kmp_s_0763_br_0562_143, kms_s_0755r_0562_143, kms_s_1434_br_0562_143, s_0145, s_0605, s_0689, s_0755, s_0763_b, s_1434_b)) + (intracellular * function_173(Keq_r_0650_172, Vmax_r_0650_172, intracellular, kmp_s_0434r_0650_172, kmp_s_0605r_0650_172, kmp_s_0867r_0650_172, kmp_s_1082r_0650_172, kms_s_0446r_0650_172, kms_s_0763_br_0650_172, kms_s_0861r_0650_172, kms_s_1087r_0650_172, s_0434, s_0446, s_0605, s_0763_b, s_0861, s_0867, s_1082, s_1087)) + (intracellular * function_181(Keq_r_0697_180, Vmax_r_0697_180, intracellular, kmp_s_0605r_0697_180, kmp_s_0710r_0697_180, kms_s_0553r_0697_180, kms_s_0755r_0697_180, kms_s_0763_br_0697_180, s_0553, s_0605, s_0710, s_0755, s_0763_b)) + (intracellular * function_184(Keq_r_0701_183, Vmax_r_0701_183, intracellular, kmp_s_0605r_0701_183, kmp_s_1207r_0701_183, kmp_s_1293r_0701_183, kms_s_0446r_0701_183, kms_s_0933r_0701_183, kms_s_1434_br_0701_183, s_0446, s_0605, s_0933, s_1207, s_1293, s_1434_b)) + (intracellular * function_203(Keq_r_0793_202, Vmax_r_0793_202, intracellular, kmp_s_0605r_0793_202, kmp_s_1155r_0793_202, kms_s_0331r_0793_202, kms_s_1154r_0793_202, s_0331, s_0605, s_1154, s_1155)) + (intracellular * function_220(Keq_r_0882_219, Vmax_r_0882_219, intracellular, kmp_s_0080r_0882_219, kmp_s_0605r_0882_219, kmp_s_0763_br_0882_219, kms_s_0334r_0882_219, kms_s_1434_br_0882_219, s_0080, s_0334, s_0605, s_0763_b, s_1434_b)) + (2.0 * intracellular * function_253(Keq_r_0993_252, Vmax_r_0993_252, intracellular, kmp_s_0605r_0993_252, kmp_s_1091r_0993_252, kmp_s_1327r_0993_252, kms_s_0195r_0993_252, kms_s_0763_br_0993_252, kms_s_1096r_0993_252, s_0195, s_0605, s_0763_b, s_1091, s_1096, s_1327)) + (intracellular * function_272(Keq_r_1072_271, Vmax_r_1072_271, intracellular, kmp_s_0605r_1072_271, kmp_s_1415r_1072_271, kms_s_0549r_1072_271, kms_s_0763_br_1072_271, kms_s_1430r_1072_271, s_0549, s_0605, s_0763_b, s_1415, s_1430)) - (intracellular * function_32(Keq_r_0127_31, Vmax_r_0127_31, intracellular, kmp_s_0369r_0127_31, kmp_s_0446r_0127_31, kmp_s_0514r_0127_31, kms_s_0380r_0127_31, kms_s_0434r_0127_31, kms_s_0605r_0127_31, s_0369, s_0380, s_0434, s_0446, s_0514, s_0605)) - (intracellular * function_114(Keq_r_0439_113, Vmax_r_0439_113, intracellular, kmp_s_0446r_0439_113, kmp_s_0514r_0439_113, kmp_s_1329r_0439_113, kms_s_0434r_0439_113, kms_s_0605r_0439_113, kms_s_1334r_0439_113, s_0434, s_0446, s_0514, s_0605, s_1329, s_1334)) - (intracellular * function_115(Keq_r_0442_114, Vmax_r_0442_114, intracellular, kmp_s_0446r_0442_114, kmp_s_0514r_0442_114, kmp_s_1132r_0442_114, kms_s_0434r_0442_114, kms_s_0605r_0442_114, kms_s_1140r_0442_114, s_0434, s_0446, s_0514, s_0605, s_1132, s_1140)) - (intracellular * function_164(Keq_r_0610_163, Vmax_r_0610_163, intracellular, kmp_s_0763_br_0610_163, kmp_s_1207r_0610_163, kms_s_0605r_0610_163, kms_s_1434_br_0610_163, s_0605, s_0763_b, s_1207, s_1434_b));
    der(s_0615) = (intracellular * function_102(Keq_r_0393_101, Vmax_r_0393_101, intracellular, kmp_s_0615r_0393_101, kmp_s_0706r_0393_101, kms_s_0616r_0393_101, kms_s_0710r_0393_101, s_0615, s_0616, s_0706, s_0710)) - (intracellular * function_103(Keq_r_0394_102, Vmax_r_0394_102, intracellular, kmp_s_0616r_0394_102, kmp_s_0763_br_0394_102, kmp_s_1011r_0394_102, kms_s_0615r_0394_102, s_0615, s_0616, s_0763_b, s_1011));
    der(s_0616) = (intracellular * function_103(Keq_r_0394_102, Vmax_r_0394_102, intracellular, kmp_s_0616r_0394_102, kmp_s_0763_br_0394_102, kmp_s_1011r_0394_102, kms_s_0615r_0394_102, s_0615, s_0616, s_0763_b, s_1011)) - (intracellular * function_102(Keq_r_0393_101, Vmax_r_0393_101, intracellular, kmp_s_0615r_0393_101, kmp_s_0706r_0393_101, kms_s_0616r_0393_101, kms_s_0710r_0393_101, s_0615, s_0616, s_0706, s_0710));
    der(s_0619) = (intracellular * function_261(Keq_r_1032_260, Vmax_r_1032_260, intracellular, kmp_s_0601r_1032_260, kmp_s_0619r_1032_260, kms_s_0307r_1032_260, kms_s_0624r_1032_260, s_0307, s_0601, s_0619, s_0624)) - (0.003587 * intracellular * function_283(V_o_282, a_s_0001r_1812_282, a_s_0416r_1812_282, a_s_0434r_1812_282, a_s_0446r_1812_282, a_s_0511r_1812_282, a_s_0564r_1812_282, a_s_0569r_1812_282, a_s_0593r_1812_282, a_s_0619r_1812_282, a_s_0740r_1812_282, a_s_0743r_1812_282, a_s_0752r_1812_282, a_s_0863r_1812_282, a_s_0873r_1812_282, a_s_0877r_1812_282, a_s_0881r_1812_282, a_s_0889r_1812_282, a_s_0899r_1812_282, a_s_0907r_1812_282, a_s_0911r_1812_282, a_s_0920r_1812_282, a_s_0925r_1812_282, a_s_0929r_1812_282, a_s_0933r_1812_282, a_s_0936r_1812_282, a_s_0939r_1812_282, a_s_0943r_1812_282, a_s_0949r_1812_282, a_s_0952r_1812_282, a_s_0955r_1812_282, a_s_0960r_1812_282, a_s_1000r_1812_282, a_s_1011r_1812_282, a_s_1283r_1812_282, a_s_1347r_1812_282, a_s_1417r_1812_282, intracellular, s_0001, s_0001_or_1812_282, s_0416, s_0416_or_1812_282, s_0434, s_0434_or_1812_282, s_0446, s_0446_or_1812_282, s_0511, s_0511_or_1812_282, s_0564, s_0564_or_1812_282, s_0569, s_0569_or_1812_282, s_0593, s_0593_or_1812_282, s_0619, s_0619_or_1812_282, s_0740, s_0740_or_1812_282, s_0743, s_0743_or_1812_282, s_0752, s_0752_or_1812_282, s_0863, s_0863_or_1812_282, s_0873, s_0873_or_1812_282, s_0877, s_0877_or_1812_282, s_0881, s_0881_or_1812_282, s_0889, s_0889_or_1812_282, s_0899, s_0899_or_1812_282, s_0907, s_0907_or_1812_282, s_0911, s_0911_or_1812_282, s_0920, s_0920_or_1812_282, s_0925, s_0925_or_1812_282, s_0929, s_0929_or_1812_282, s_0933, s_0933_or_1812_282, s_0936, s_0936_or_1812_282, s_0939, s_0939_or_1812_282, s_0943, s_0943_or_1812_282, s_0949, s_0949_or_1812_282, s_0952, s_0952_or_1812_282, s_0955, s_0955_or_1812_282, s_0960, s_0960_or_1812_282, s_1000, s_1000_or_1812_282, s_1011, s_1011_or_1812_282, s_1283, s_1283_or_1812_282, s_1347, s_1347_or_1812_282, s_1417, s_1417_or_1812_282, zero_flux_282));
    der(s_0622) = (intracellular * function_242(Keq_r_0957_241, Vmax_r_0957_241, intracellular, kmp_s_0622r_0957_241, kmp_s_1434_br_0957_241, kmp_s_1517r_0957_241, kms_s_1411r_0957_241, kms_s_1521r_0957_241, s_0622, s_1411, s_1434_b, s_1517, s_1521)) - (intracellular * function_271(Keq_r_1066_270, Vmax_r_1066_270, intracellular, kmp_s_0446r_1066_270, kmp_s_0624r_1066_270, kms_s_0400r_1066_270, kms_s_0622r_1066_270, s_0400, s_0446, s_0622, s_0624));
    der(s_0624) = (intracellular * function_271(Keq_r_1066_270, Vmax_r_1066_270, intracellular, kmp_s_0446r_1066_270, kmp_s_0624r_1066_270, kms_s_0400r_1066_270, kms_s_0622r_1066_270, s_0400, s_0446, s_0622, s_0624)) - (intracellular * function_90(Keq_r_0357_89, Vmax_r_0357_89, intracellular, kmp_s_0569r_0357_89, kmp_s_0763_br_0357_89, kmp_s_1434_br_0357_89, kms_s_0430r_0357_89, kms_s_0624r_0357_89, s_0430, s_0569, s_0624, s_0763_b, s_1434_b)) - (intracellular * function_261(Keq_r_1032_260, Vmax_r_1032_260, intracellular, kmp_s_0601r_1032_260, kmp_s_0619r_1032_260, kms_s_0307r_1032_260, kms_s_0624r_1032_260, s_0307, s_0601, s_0619, s_0624));
    der(s_0627) = (intracellular * function_69(Keq_r_0270_68, Vmax_r_0270_68, intracellular, kmp_s_0627r_0270_68, kms_s_0669r_0270_68, s_0627, s_0669)) - (9.6e-05 * intracellular * function_285(V_o_284, a_s_0090r_1816_284, a_s_0124r_1816_284, a_s_0627r_1816_284, a_s_0632r_1816_284, a_s_0635r_1816_284, a_s_0641r_1816_284, a_s_0663r_1816_284, a_s_0669r_1816_284, a_s_0824r_1816_284, a_s_0963r_1816_284, a_s_1219r_1816_284, a_s_1228r_1816_284, a_s_1233r_1816_284, a_s_1399r_1816_284, a_s_1447r_1816_284, intracellular, s_0090, s_0090_or_1816_284, s_0124, s_0124_or_1816_284, s_0627, s_0627_or_1816_284, s_0632, s_0632_or_1816_284, s_0635, s_0635_or_1816_284, s_0641, s_0641_or_1816_284, s_0663, s_0663_or_1816_284, s_0669, s_0669_or_1816_284, s_0824, s_0824_or_1816_284, s_0963, s_0963_or_1816_284, s_1219, s_1219_or_1816_284, s_1228, s_1228_or_1816_284, s_1233, s_1233_or_1816_284, s_1399, s_1399_or_1816_284, s_1447, s_1447_or_1816_284, zero_flux_284));
    der(s_0632) = (intracellular * function_76(Keq_r_0298_75, Vmax_r_0298_75, intracellular, kmp_s_0632r_0298_75, kmp_s_0763_br_0298_75, kmp_s_1290r_0298_75, kmp_s_1434_br_0298_75, kms_s_1160r_0298_75, kms_s_1293r_0298_75, kms_s_1447r_0298_75, s_0632, s_0763_b, s_1160, s_1290, s_1293, s_1434_b, s_1447)) - (intracellular * function_70(Keq_r_0271_69, Vmax_r_0271_69, intracellular, kmp_s_0635r_0271_69, kmp_s_1091r_0271_69, kms_s_0632r_0271_69, kms_s_0763_br_0271_69, kms_s_1096r_0271_69, s_0632, s_0635, s_0763_b, s_1091, s_1096)) - (0.000125 * intracellular * function_285(V_o_284, a_s_0090r_1816_284, a_s_0124r_1816_284, a_s_0627r_1816_284, a_s_0632r_1816_284, a_s_0635r_1816_284, a_s_0641r_1816_284, a_s_0663r_1816_284, a_s_0669r_1816_284, a_s_0824r_1816_284, a_s_0963r_1816_284, a_s_1219r_1816_284, a_s_1228r_1816_284, a_s_1233r_1816_284, a_s_1399r_1816_284, a_s_1447r_1816_284, intracellular, s_0090, s_0090_or_1816_284, s_0124, s_0124_or_1816_284, s_0627, s_0627_or_1816_284, s_0632, s_0632_or_1816_284, s_0635, s_0635_or_1816_284, s_0641, s_0641_or_1816_284, s_0663, s_0663_or_1816_284, s_0669, s_0669_or_1816_284, s_0824, s_0824_or_1816_284, s_0963, s_0963_or_1816_284, s_1219, s_1219_or_1816_284, s_1228, s_1228_or_1816_284, s_1233, s_1233_or_1816_284, s_1399, s_1399_or_1816_284, s_1447, s_1447_or_1816_284, zero_flux_284));
    der(s_0635) = (intracellular * function_70(Keq_r_0271_69, Vmax_r_0271_69, intracellular, kmp_s_0635r_0271_69, kmp_s_1091r_0271_69, kms_s_0632r_0271_69, kms_s_0763_br_0271_69, kms_s_1096r_0271_69, s_0632, s_0635, s_0763_b, s_1091, s_1096)) - (intracellular * function_254(Keq_r_0995_253, Vmax_r_0995_253, intracellular, kmp_s_0641r_0995_253, kmp_s_1434_br_0995_253, kms_s_0635r_0995_253, kms_s_0663r_0995_253, s_0635, s_0641, s_0663, s_1434_b)) - (0.005603 * intracellular * function_285(V_o_284, a_s_0090r_1816_284, a_s_0124r_1816_284, a_s_0627r_1816_284, a_s_0632r_1816_284, a_s_0635r_1816_284, a_s_0641r_1816_284, a_s_0663r_1816_284, a_s_0669r_1816_284, a_s_0824r_1816_284, a_s_0963r_1816_284, a_s_1219r_1816_284, a_s_1228r_1816_284, a_s_1233r_1816_284, a_s_1399r_1816_284, a_s_1447r_1816_284, intracellular, s_0090, s_0090_or_1816_284, s_0124, s_0124_or_1816_284, s_0627, s_0627_or_1816_284, s_0632, s_0632_or_1816_284, s_0635, s_0635_or_1816_284, s_0641, s_0641_or_1816_284, s_0663, s_0663_or_1816_284, s_0669, s_0669_or_1816_284, s_0824, s_0824_or_1816_284, s_0963, s_0963_or_1816_284, s_1219, s_1219_or_1816_284, s_1228, s_1228_or_1816_284, s_1233, s_1233_or_1816_284, s_1399, s_1399_or_1816_284, s_1447, s_1447_or_1816_284, zero_flux_284));
    der(s_0641) = (intracellular * function_254(Keq_r_0995_253, Vmax_r_0995_253, intracellular, kmp_s_0641r_0995_253, kmp_s_1434_br_0995_253, kms_s_0635r_0995_253, kms_s_0663r_0995_253, s_0635, s_0641, s_0663, s_1434_b)) - (0.000812 * intracellular * function_285(V_o_284, a_s_0090r_1816_284, a_s_0124r_1816_284, a_s_0627r_1816_284, a_s_0632r_1816_284, a_s_0635r_1816_284, a_s_0641r_1816_284, a_s_0663r_1816_284, a_s_0669r_1816_284, a_s_0824r_1816_284, a_s_0963r_1816_284, a_s_1219r_1816_284, a_s_1228r_1816_284, a_s_1233r_1816_284, a_s_1399r_1816_284, a_s_1447r_1816_284, intracellular, s_0090, s_0090_or_1816_284, s_0124, s_0124_or_1816_284, s_0627, s_0627_or_1816_284, s_0632, s_0632_or_1816_284, s_0635, s_0635_or_1816_284, s_0641, s_0641_or_1816_284, s_0663, s_0663_or_1816_284, s_0669, s_0669_or_1816_284, s_0824, s_0824_or_1816_284, s_0963, s_0963_or_1816_284, s_1219, s_1219_or_1816_284, s_1228, s_1228_or_1816_284, s_1233, s_1233_or_1816_284, s_1399, s_1399_or_1816_284, s_1447, s_1447_or_1816_284, zero_flux_284));
    der(s_0650) = (intracellular * function_44(Keq_r_0183_43, Vmax_r_0183_43, intracellular, kmp_s_0650r_0183_43, kmp_s_1082r_0183_43, kms_s_0366r_0183_43, kms_s_0763_br_0183_43, kms_s_1087r_0183_43, s_0366, s_0650, s_0763_b, s_1082, s_1087)) - (function_276(Keq_r_1247_275, Vmax_r_1247_275, kmp_s_0651_br_1247_275, kms_s_0650r_1247_275, s_0650, s_0651_b));
    der(s_0657) = (intracellular * function_123(Keq_r_0488_122, Vmax_r_0488_122, intracellular, kmp_s_0657r_0488_122, kmp_s_1338r_0488_122, kms_s_0659r_0488_122, kms_s_0692r_0488_122, s_0657, s_0659, s_0692, s_1338)) - (intracellular * function_137(Keq_r_0529_136, Vmax_r_0529_136, intracellular, kmp_s_0659r_0529_136, kmp_s_0735r_0529_136, kms_s_0657r_0529_136, kms_s_1315r_0529_136, s_0657, s_0659, s_0735, s_1315));
    der(s_0659) = (intracellular * function_137(Keq_r_0529_136, Vmax_r_0529_136, intracellular, kmp_s_0659r_0529_136, kmp_s_0735r_0529_136, kms_s_0657r_0529_136, kms_s_1315r_0529_136, s_0657, s_0659, s_0735, s_1315)) - (intracellular * function_123(Keq_r_0488_122, Vmax_r_0488_122, intracellular, kmp_s_0657r_0488_122, kmp_s_1338r_0488_122, kms_s_0659r_0488_122, kms_s_0692r_0488_122, s_0657, s_0659, s_0692, s_1338));
    der(s_0663) = (intracellular * function_266(Keq_r_1040_265, Vmax_r_1040_265, intracellular, kmp_s_0596r_1040_265, kmp_s_0663r_1040_265, kms_s_1399r_1040_265, kms_s_1434_br_1040_265, s_0596, s_0663, s_1399, s_1434_b)) - (intracellular * function_254(Keq_r_0995_253, Vmax_r_0995_253, intracellular, kmp_s_0641r_0995_253, kmp_s_1434_br_0995_253, kms_s_0635r_0995_253, kms_s_0663r_0995_253, s_0635, s_0641, s_0663, s_1434_b)) - (0.000206 * intracellular * function_285(V_o_284, a_s_0090r_1816_284, a_s_0124r_1816_284, a_s_0627r_1816_284, a_s_0632r_1816_284, a_s_0635r_1816_284, a_s_0641r_1816_284, a_s_0663r_1816_284, a_s_0669r_1816_284, a_s_0824r_1816_284, a_s_0963r_1816_284, a_s_1219r_1816_284, a_s_1228r_1816_284, a_s_1233r_1816_284, a_s_1399r_1816_284, a_s_1447r_1816_284, intracellular, s_0090, s_0090_or_1816_284, s_0124, s_0124_or_1816_284, s_0627, s_0627_or_1816_284, s_0632, s_0632_or_1816_284, s_0635, s_0635_or_1816_284, s_0641, s_0641_or_1816_284, s_0663, s_0663_or_1816_284, s_0669, s_0669_or_1816_284, s_0824, s_0824_or_1816_284, s_0963, s_0963_or_1816_284, s_1219, s_1219_or_1816_284, s_1228, s_1228_or_1816_284, s_1233, s_1233_or_1816_284, s_1399, s_1399_or_1816_284, s_1447, s_1447_or_1816_284, zero_flux_284));
    der(s_0669) = (intracellular * function_246(Keq_r_0967_245, Vmax_r_0967_245, intracellular, kmp_s_0669r_0967_245, kmp_s_0763_br_0967_245, kmp_s_1290r_0967_245, kms_s_1293r_0967_245, kms_s_1447r_0967_245, s_0669, s_0763_b, s_1290, s_1293, s_1447)) - (intracellular * function_69(Keq_r_0270_68, Vmax_r_0270_68, intracellular, kmp_s_0627r_0270_68, kms_s_0669r_0270_68, s_0627, s_0669)) - (0.000114 * intracellular * function_285(V_o_284, a_s_0090r_1816_284, a_s_0124r_1816_284, a_s_0627r_1816_284, a_s_0632r_1816_284, a_s_0635r_1816_284, a_s_0641r_1816_284, a_s_0663r_1816_284, a_s_0669r_1816_284, a_s_0824r_1816_284, a_s_0963r_1816_284, a_s_1219r_1816_284, a_s_1228r_1816_284, a_s_1233r_1816_284, a_s_1399r_1816_284, a_s_1447r_1816_284, intracellular, s_0090, s_0090_or_1816_284, s_0124, s_0124_or_1816_284, s_0627, s_0627_or_1816_284, s_0632, s_0632_or_1816_284, s_0635, s_0635_or_1816_284, s_0641, s_0641_or_1816_284, s_0663, s_0663_or_1816_284, s_0669, s_0669_or_1816_284, s_0824, s_0824_or_1816_284, s_0963, s_0963_or_1816_284, s_1219, s_1219_or_1816_284, s_1228, s_1228_or_1816_284, s_1233, s_1233_or_1816_284, s_1399, s_1399_or_1816_284, s_1447, s_1447_or_1816_284, zero_flux_284));
    der(s_0689) = (intracellular * function_15(Keq_r_0040_14, Vmax_r_0040_14, intracellular, kmp_s_0163r_0040_14, kmp_s_0689r_0040_14, kmp_s_0763_br_0040_14, kms_s_0557r_0040_14, s_0163, s_0557, s_0689, s_0763_b)) + (intracellular * function_87(Keq_r_0347_86, Vmax_r_0347_86, intracellular, kmp_s_0268r_0347_86, kmp_s_0689r_0347_86, kmp_s_1082r_0347_86, kmp_s_1434_br_0347_86, kms_s_0763_br_0347_86, kms_s_0963r_0347_86, kms_s_1087r_0347_86, kms_s_1160r_0347_86, s_0268, s_0689, s_0763_b, s_0963, s_1082, s_1087, s_1160, s_1434_b)) + (intracellular * function_144(Keq_r_0562_143, Vmax_r_0562_143, intracellular, kmp_s_0145r_0562_143, kmp_s_0605r_0562_143, kmp_s_0689r_0562_143, kmp_s_0763_br_0562_143, kms_s_0755r_0562_143, kms_s_1434_br_0562_143, s_0145, s_0605, s_0689, s_0755, s_0763_b, s_1434_b)) - (intracellular * function_120(Keq_r_0479_119, Vmax_r_0479_119, intracellular, kmp_s_0122r_0479_119, kmp_s_0400r_0479_119, kmp_s_1207r_0479_119, kms_s_0309r_0479_119, kms_s_0446r_0479_119, kms_s_0689r_0479_119, s_0122, s_0309, s_0400, s_0446, s_0689, s_1207));
    der(s_0692) = (intracellular * function_39(Keq_r_0169_38, Vmax_r_0169_38, intracellular, kmp_s_0317r_0169_38, kmp_s_0692r_0169_38, kms_s_0009r_0169_38, s_0009, s_0317, s_0692)) + (intracellular * function_41(Keq_r_0171_40, Vmax_r_0171_40, intracellular, kmp_s_0434r_0171_40, kmp_s_0692r_0171_40, kms_s_1053r_0171_40, s_0434, s_0692, s_1053)) + (intracellular * function_49(Keq_r_0225_48, Vmax_r_0225_48, intracellular, kmp_s_0692r_0225_48, kmp_s_0873r_0225_48, kms_s_0017r_0225_48, s_0017, s_0692, s_0873)) + (intracellular * function_122(Keq_r_0485_121, Vmax_r_0485_121, intracellular, kmp_s_0692r_0485_121, kmp_s_1434_br_0485_121, kms_s_0069r_0485_121, s_0069, s_0692, s_1434_b)) - (intracellular * function_123(Keq_r_0488_122, Vmax_r_0488_122, intracellular, kmp_s_0657r_0488_122, kmp_s_1338r_0488_122, kms_s_0659r_0488_122, kms_s_0692r_0488_122, s_0657, s_0659, s_0692, s_1338));
    der(s_0706) = (intracellular * function_40(Keq_r_0170_39, Vmax_r_0170_39, intracellular, kmp_s_0706r_0170_39, kmp_s_0763_br_0170_39, kmp_s_1053r_0170_39, kmp_s_1207r_0170_39, kms_s_0755r_0170_39, kms_s_0816r_0170_39, kms_s_0881r_0170_39, s_0706, s_0755, s_0763_b, s_0816, s_0881, s_1053, s_1207)) + (intracellular * function_102(Keq_r_0393_101, Vmax_r_0393_101, intracellular, kmp_s_0615r_0393_101, kmp_s_0706r_0393_101, kms_s_0616r_0393_101, kms_s_0710r_0393_101, s_0615, s_0616, s_0706, s_0710)) + (intracellular * function_145(Keq_r_0567_144, Vmax_r_0567_144, intracellular, kmp_s_0400r_0567_144, kmp_s_0706r_0567_144, kms_s_0446r_0567_144, kms_s_0752r_0567_144, s_0400, s_0446, s_0706, s_0752)) + (intracellular * function_146(Keq_r_0568_145, Vmax_r_0568_145, intracellular, kmp_s_0562r_0568_145, kmp_s_0706r_0568_145, kms_s_0566r_0568_145, kms_s_0752r_0568_145, s_0562, s_0566, s_0706, s_0752)) - (intracellular * function_38(Keq_r_0165_37, Vmax_r_0165_37, intracellular, kmp_s_0434r_0165_37, kmp_s_0755r_0165_37, kms_s_0400r_0165_37, kms_s_0706r_0165_37, s_0400, s_0434, s_0706, s_0755)) - (intracellular * function_241(Keq_r_0955_240, Vmax_r_0955_240, intracellular, kmp_s_0591r_0955_240, kmp_s_1434_br_0955_240, kmp_s_1517r_0955_240, kms_s_0706r_0955_240, kms_s_1521r_0955_240, s_0591, s_0706, s_1434_b, s_1517, s_1521));
    der(s_0710) = (intracellular * function_181(Keq_r_0697_180, Vmax_r_0697_180, intracellular, kmp_s_0605r_0697_180, kmp_s_0710r_0697_180, kms_s_0553r_0697_180, kms_s_0755r_0697_180, kms_s_0763_br_0697_180, s_0553, s_0605, s_0710, s_0755, s_0763_b)) - (intracellular * function_102(Keq_r_0393_101, Vmax_r_0393_101, intracellular, kmp_s_0615r_0393_101, kmp_s_0706r_0393_101, kms_s_0616r_0393_101, kms_s_0710r_0393_101, s_0615, s_0616, s_0706, s_0710)) - (intracellular * function_193(Keq_r_0723_192, Vmax_r_0723_192, intracellular, kmp_s_1013r_0723_192, kms_s_0710r_0723_192, kms_s_0828r_0723_192, s_0710, s_0828, s_1013));
    der(s_0712) = (intracellular * function_101(Keq_r_0387_100, Vmax_r_0387_100, intracellular, kmp_s_0605r_0387_100, kmp_s_0712r_0387_100, kms_s_0850r_0387_100, kms_s_1257r_0387_100, s_0605, s_0712, s_0850, s_1257)) - (intracellular * function_124(Keq_r_0496_123, Vmax_r_0496_123, intracellular, kmp_s_0195r_0496_123, kmp_s_0605r_0496_123, kms_s_0712r_0496_123, kms_s_0850r_0496_123, s_0195, s_0605, s_0712, s_0850));
    der(s_0731) = (intracellular * function_121(Keq_r_0484_120, Vmax_r_0484_120, intracellular, kmp_s_0731r_0484_120, kmp_s_0735r_0484_120, kms_s_0537r_0484_120, s_0537, s_0731, s_0735)) + (intracellular * function_262(Keq_r_1035_261, Vmax_r_1035_261, intracellular, kmp_s_0731r_1035_261, kmp_s_1304r_1035_261, kms_s_0533r_1035_261, kms_s_0539r_1035_261, s_0533, s_0539, s_0731, s_1304)) + (intracellular * function_267(Keq_r_1041_266, Vmax_r_1041_266, intracellular, kmp_s_0731r_1041_266, kms_s_0735r_1041_266, s_0731, s_0735)) + (intracellular * function_268(Keq_r_1042_267, Vmax_r_1042_267, intracellular, kmp_s_0731r_1042_267, kmp_s_0952r_1042_267, kmp_s_1434_br_1042_267, kms_s_0088r_1042_267, kms_s_0943r_1042_267, s_0088, s_0731, s_0943, s_0952, s_1434_b)) - (intracellular * function_134(Vmax_r_0525_133, kms_s_0731r_0525_133, kms_s_1082r_0525_133, kms_s_1207r_0525_133, s_0731, s_1082, s_1207, s_0265, s_0763_b, s_1087, Keq_r_0525_133, kmp_s_0265r_0525_133, kmp_s_0763_br_0525_133, kmp_s_1087r_0525_133, s_0731, kmI_s_0731mr_0525_133, intracellular)) - (intracellular * function_263(Keq_r_1036_262, Vmax_r_1036_262, intracellular, kmp_s_0427r_1036_262, kmp_s_0561r_1036_262, kms_s_0731r_1036_262, kms_s_1304r_1036_262, s_0427, s_0561, s_0731, s_1304)) - (intracellular * function_264(Keq_r_1037_263, Vmax_r_1037_263, intracellular, kmp_s_0533r_1037_263, kmp_s_0561r_1037_263, kms_s_0539r_1037_263, kms_s_0731r_1037_263, s_0533, s_0539, s_0561, s_0731));
    der(s_0732) = (intracellular * function_136(Keq_r_0528_135, Vmax_r_0528_135, intracellular, kmp_s_0732r_0528_135, kmp_s_1207r_0528_135, kms_s_1315r_0528_135, kms_s_1434_br_0528_135, s_0732, s_1207, s_1315, s_1434_b)) - (intracellular * function_135(Keq_r_0526_134, Vmax_r_0526_134, intracellular, kmp_s_0734r_0526_134, kmp_s_0763_br_0526_134, kmp_s_1096r_0526_134, kms_s_0732r_0526_134, kms_s_1091r_0526_134, s_0732, s_0734, s_0763_b, s_1091, s_1096));
    der(s_0734) = (intracellular * function_135(Keq_r_0526_134, Vmax_r_0526_134, intracellular, kmp_s_0734r_0526_134, kmp_s_0763_br_0526_134, kmp_s_1096r_0526_134, kms_s_0732r_0526_134, kms_s_1091r_0526_134, s_0732, s_0734, s_0763_b, s_1091, s_1096)) - (intracellular * function_100(Keq_r_0386_99, Vmax_r_0386_99, intracellular, kmp_s_0400r_0386_99, kmp_s_0735r_0386_99, kmp_s_0763_br_0386_99, kms_s_0446r_0386_99, kms_s_0734r_0386_99, s_0400, s_0446, s_0734, s_0735, s_0763_b));
    der(s_0735) = (intracellular * function_100(Keq_r_0386_99, Vmax_r_0386_99, intracellular, kmp_s_0400r_0386_99, kmp_s_0735r_0386_99, kmp_s_0763_br_0386_99, kms_s_0446r_0386_99, kms_s_0734r_0386_99, s_0400, s_0446, s_0734, s_0735, s_0763_b)) + (intracellular * function_121(Keq_r_0484_120, Vmax_r_0484_120, intracellular, kmp_s_0731r_0484_120, kmp_s_0735r_0484_120, kms_s_0537r_0484_120, s_0537, s_0731, s_0735)) + (intracellular * function_137(Keq_r_0529_136, Vmax_r_0529_136, intracellular, kmp_s_0659r_0529_136, kmp_s_0735r_0529_136, kms_s_0657r_0529_136, kms_s_1315r_0529_136, s_0657, s_0659, s_0735, s_1315)) - (intracellular * function_138(Keq_r_0530_137, Vmax_r_0530_137, intracellular, kmp_s_1082r_0530_137, kmp_s_1315r_0530_137, kms_s_0735r_0530_137, kms_s_0763_br_0530_137, kms_s_1087r_0530_137, s_0735, s_0763_b, s_1082, s_1087, s_1315)) - (intracellular * function_267(Keq_r_1041_266, Vmax_r_1041_266, intracellular, kmp_s_0731r_1041_266, kms_s_0735r_1041_266, s_0731, s_0735));
    der(s_0740) = (intracellular * function_43(Keq_r_0174_42, Vmax_r_0174_42, intracellular, kmp_s_0740r_0174_42, kmp_s_1277r_0174_42, kms_s_0749r_0174_42, kms_s_0863r_0174_42, s_0740, s_0749, s_0863, s_1277)) + (intracellular * function_259(Keq_r_1026_258, Vmax_r_1026_258, intracellular, kmp_s_0366r_1026_258, kmp_s_0740r_1026_258, kms_s_0949r_1026_258, s_0366, s_0740, s_0949)) - (intracellular * function_140(Keq_r_0538_139, Vmax_r_0538_139, intracellular, kmp_s_0307r_0538_139, kmp_s_0430r_0538_139, kmp_s_0470r_0538_139, kmp_s_1087r_0538_139, kms_s_0309r_0538_139, kms_s_0740r_0538_139, kms_s_1082r_0538_139, s_0307, s_0309, s_0430, s_0470, s_0740, s_1082, s_1087)) - (intracellular * function_141(Keq_r_0539_140, Vmax_r_0539_140, intracellular, kmp_s_0309r_0539_140, kmp_s_0943r_0539_140, kms_s_0307r_0539_140, kms_s_0740r_0539_140, kms_s_1434_br_0539_140, s_0307, s_0309, s_0740, s_0943, s_1434_b)) - (intracellular * function_228(Keq_r_0890_227, Vmax_r_0890_227, intracellular, kmp_s_0400r_0890_227, kmp_s_0763_br_0890_227, kmp_s_1048r_0890_227, kmp_s_1207r_0890_227, kms_s_0333r_0890_227, kms_s_0446r_0890_227, kms_s_0740r_0890_227, s_0333, s_0400, s_0446, s_0740, s_0763_b, s_1048, s_1207)) - (0.32518 * intracellular * function_283(V_o_282, a_s_0001r_1812_282, a_s_0416r_1812_282, a_s_0434r_1812_282, a_s_0446r_1812_282, a_s_0511r_1812_282, a_s_0564r_1812_282, a_s_0569r_1812_282, a_s_0593r_1812_282, a_s_0619r_1812_282, a_s_0740r_1812_282, a_s_0743r_1812_282, a_s_0752r_1812_282, a_s_0863r_1812_282, a_s_0873r_1812_282, a_s_0877r_1812_282, a_s_0881r_1812_282, a_s_0889r_1812_282, a_s_0899r_1812_282, a_s_0907r_1812_282, a_s_0911r_1812_282, a_s_0920r_1812_282, a_s_0925r_1812_282, a_s_0929r_1812_282, a_s_0933r_1812_282, a_s_0936r_1812_282, a_s_0939r_1812_282, a_s_0943r_1812_282, a_s_0949r_1812_282, a_s_0952r_1812_282, a_s_0955r_1812_282, a_s_0960r_1812_282, a_s_1000r_1812_282, a_s_1011r_1812_282, a_s_1283r_1812_282, a_s_1347r_1812_282, a_s_1417r_1812_282, intracellular, s_0001, s_0001_or_1812_282, s_0416, s_0416_or_1812_282, s_0434, s_0434_or_1812_282, s_0446, s_0446_or_1812_282, s_0511, s_0511_or_1812_282, s_0564, s_0564_or_1812_282, s_0569, s_0569_or_1812_282, s_0593, s_0593_or_1812_282, s_0619, s_0619_or_1812_282, s_0740, s_0740_or_1812_282, s_0743, s_0743_or_1812_282, s_0752, s_0752_or_1812_282, s_0863, s_0863_or_1812_282, s_0873, s_0873_or_1812_282, s_0877, s_0877_or_1812_282, s_0881, s_0881_or_1812_282, s_0889, s_0889_or_1812_282, s_0899, s_0899_or_1812_282, s_0907, s_0907_or_1812_282, s_0911, s_0911_or_1812_282, s_0920, s_0920_or_1812_282, s_0925, s_0925_or_1812_282, s_0929, s_0929_or_1812_282, s_0933, s_0933_or_1812_282, s_0936, s_0936_or_1812_282, s_0939, s_0939_or_1812_282, s_0943, s_0943_or_1812_282, s_0949, s_0949_or_1812_282, s_0952, s_0952_or_1812_282, s_0955, s_0955_or_1812_282, s_0960, s_0960_or_1812_282, s_1000, s_1000_or_1812_282, s_1011, s_1011_or_1812_282, s_1283, s_1283_or_1812_282, s_1347, s_1347_or_1812_282, s_1417, s_1417_or_1812_282, zero_flux_282));
    der(s_0743) = (intracellular * function_2(Keq_r_0006_1, Vmax_r_0006_1, intracellular, kmp_s_0743r_0006_1, kmp_s_1434_br_0006_1, kms_s_0438r_0006_1, s_0438, s_0743, s_1434_b)) - (0.51852 * intracellular * function_283(V_o_282, a_s_0001r_1812_282, a_s_0416r_1812_282, a_s_0434r_1812_282, a_s_0446r_1812_282, a_s_0511r_1812_282, a_s_0564r_1812_282, a_s_0569r_1812_282, a_s_0593r_1812_282, a_s_0619r_1812_282, a_s_0740r_1812_282, a_s_0743r_1812_282, a_s_0752r_1812_282, a_s_0863r_1812_282, a_s_0873r_1812_282, a_s_0877r_1812_282, a_s_0881r_1812_282, a_s_0889r_1812_282, a_s_0899r_1812_282, a_s_0907r_1812_282, a_s_0911r_1812_282, a_s_0920r_1812_282, a_s_0925r_1812_282, a_s_0929r_1812_282, a_s_0933r_1812_282, a_s_0936r_1812_282, a_s_0939r_1812_282, a_s_0943r_1812_282, a_s_0949r_1812_282, a_s_0952r_1812_282, a_s_0955r_1812_282, a_s_0960r_1812_282, a_s_1000r_1812_282, a_s_1011r_1812_282, a_s_1283r_1812_282, a_s_1347r_1812_282, a_s_1417r_1812_282, intracellular, s_0001, s_0001_or_1812_282, s_0416, s_0416_or_1812_282, s_0434, s_0434_or_1812_282, s_0446, s_0446_or_1812_282, s_0511, s_0511_or_1812_282, s_0564, s_0564_or_1812_282, s_0569, s_0569_or_1812_282, s_0593, s_0593_or_1812_282, s_0619, s_0619_or_1812_282, s_0740, s_0740_or_1812_282, s_0743, s_0743_or_1812_282, s_0752, s_0752_or_1812_282, s_0863, s_0863_or_1812_282, s_0873, s_0873_or_1812_282, s_0877, s_0877_or_1812_282, s_0881, s_0881_or_1812_282, s_0889, s_0889_or_1812_282, s_0899, s_0899_or_1812_282, s_0907, s_0907_or_1812_282, s_0911, s_0911_or_1812_282, s_0920, s_0920_or_1812_282, s_0925, s_0925_or_1812_282, s_0929, s_0929_or_1812_282, s_0933, s_0933_or_1812_282, s_0936, s_0936_or_1812_282, s_0939, s_0939_or_1812_282, s_0943, s_0943_or_1812_282, s_0949, s_0949_or_1812_282, s_0952, s_0952_or_1812_282, s_0955, s_0955_or_1812_282, s_0960, s_0960_or_1812_282, s_1000, s_1000_or_1812_282, s_1011, s_1011_or_1812_282, s_1283, s_1283_or_1812_282, s_1347, s_1347_or_1812_282, s_1417, s_1417_or_1812_282, zero_flux_282));
    der(s_0749) = (intracellular * function_168(Keq_r_0633_167, Vmax_r_0633_167, intracellular, kmp_s_0749r_0633_167, kmp_s_1338r_0633_167, kms_s_0847r_0633_167, s_0749, s_0847, s_1338)) - (intracellular * function_43(Keq_r_0174_42, Vmax_r_0174_42, intracellular, kmp_s_0740r_0174_42, kmp_s_1277r_0174_42, kms_s_0749r_0174_42, kms_s_0863r_0174_42, s_0740, s_0749, s_0863, s_1277));
    der(s_0752) = (intracellular * function_143(Keq_r_0551_142, Vmax_r_0551_142, intracellular, kmp_s_0434r_0551_142, kmp_s_0605r_0551_142, kmp_s_0752r_0551_142, kmp_s_0763_br_0551_142, kmp_s_0899r_0551_142, kms_s_0306r_0551_142, kms_s_0446r_0551_142, kms_s_0907r_0551_142, kms_s_1434_br_0551_142, s_0306, s_0434, s_0446, s_0605, s_0752, s_0763_b, s_0899, s_0907, s_1434_b)) - (intracellular * function_145(Keq_r_0567_144, Vmax_r_0567_144, intracellular, kmp_s_0400r_0567_144, kmp_s_0706r_0567_144, kms_s_0446r_0567_144, kms_s_0752r_0567_144, s_0400, s_0446, s_0706, s_0752)) - (intracellular * function_146(Keq_r_0568_145, Vmax_r_0568_145, intracellular, kmp_s_0562r_0568_145, kmp_s_0706r_0568_145, kms_s_0566r_0568_145, kms_s_0752r_0568_145, s_0562, s_0566, s_0706, s_0752)) - (0.051 * intracellular * function_283(V_o_282, a_s_0001r_1812_282, a_s_0416r_1812_282, a_s_0434r_1812_282, a_s_0446r_1812_282, a_s_0511r_1812_282, a_s_0564r_1812_282, a_s_0569r_1812_282, a_s_0593r_1812_282, a_s_0619r_1812_282, a_s_0740r_1812_282, a_s_0743r_1812_282, a_s_0752r_1812_282, a_s_0863r_1812_282, a_s_0873r_1812_282, a_s_0877r_1812_282, a_s_0881r_1812_282, a_s_0889r_1812_282, a_s_0899r_1812_282, a_s_0907r_1812_282, a_s_0911r_1812_282, a_s_0920r_1812_282, a_s_0925r_1812_282, a_s_0929r_1812_282, a_s_0933r_1812_282, a_s_0936r_1812_282, a_s_0939r_1812_282, a_s_0943r_1812_282, a_s_0949r_1812_282, a_s_0952r_1812_282, a_s_0955r_1812_282, a_s_0960r_1812_282, a_s_1000r_1812_282, a_s_1011r_1812_282, a_s_1283r_1812_282, a_s_1347r_1812_282, a_s_1417r_1812_282, intracellular, s_0001, s_0001_or_1812_282, s_0416, s_0416_or_1812_282, s_0434, s_0434_or_1812_282, s_0446, s_0446_or_1812_282, s_0511, s_0511_or_1812_282, s_0564, s_0564_or_1812_282, s_0569, s_0569_or_1812_282, s_0593, s_0593_or_1812_282, s_0619, s_0619_or_1812_282, s_0740, s_0740_or_1812_282, s_0743, s_0743_or_1812_282, s_0752, s_0752_or_1812_282, s_0863, s_0863_or_1812_282, s_0873, s_0873_or_1812_282, s_0877, s_0877_or_1812_282, s_0881, s_0881_or_1812_282, s_0889, s_0889_or_1812_282, s_0899, s_0899_or_1812_282, s_0907, s_0907_or_1812_282, s_0911, s_0911_or_1812_282, s_0920, s_0920_or_1812_282, s_0925, s_0925_or_1812_282, s_0929, s_0929_or_1812_282, s_0933, s_0933_or_1812_282, s_0936, s_0936_or_1812_282, s_0939, s_0939_or_1812_282, s_0943, s_0943_or_1812_282, s_0949, s_0949_or_1812_282, s_0952, s_0952_or_1812_282, s_0955, s_0955_or_1812_282, s_0960, s_0960_or_1812_282, s_1000, s_1000_or_1812_282, s_1011, s_1011_or_1812_282, s_1283, s_1283_or_1812_282, s_1347, s_1347_or_1812_282, s_1417, s_1417_or_1812_282, zero_flux_282));
    der(s_0755) = (intracellular * function_38(Keq_r_0165_37, Vmax_r_0165_37, intracellular, kmp_s_0434r_0165_37, kmp_s_0755r_0165_37, kms_s_0400r_0165_37, kms_s_0706r_0165_37, s_0400, s_0434, s_0706, s_0755)) - (intracellular * function_40(Keq_r_0170_39, Vmax_r_0170_39, intracellular, kmp_s_0706r_0170_39, kmp_s_0763_br_0170_39, kmp_s_1053r_0170_39, kmp_s_1207r_0170_39, kms_s_0755r_0170_39, kms_s_0816r_0170_39, kms_s_0881r_0170_39, s_0706, s_0755, s_0763_b, s_0816, s_0881, s_1053, s_1207)) - (intracellular * function_144(Keq_r_0562_143, Vmax_r_0562_143, intracellular, kmp_s_0145r_0562_143, kmp_s_0605r_0562_143, kmp_s_0689r_0562_143, kmp_s_0763_br_0562_143, kms_s_0755r_0562_143, kms_s_1434_br_0562_143, s_0145, s_0605, s_0689, s_0755, s_0763_b, s_1434_b)) - (intracellular * function_181(Keq_r_0697_180, Vmax_r_0697_180, intracellular, kmp_s_0605r_0697_180, kmp_s_0710r_0697_180, kms_s_0553r_0697_180, kms_s_0755r_0697_180, kms_s_0763_br_0697_180, s_0553, s_0605, s_0710, s_0755, s_0763_b));
    der(s_0798) = (intracellular * function_152(Keq_r_0582_151, Vmax_r_0582_151, intracellular, kmp_s_0514r_0582_151, kmp_s_0763_br_0582_151, kmp_s_0798r_0582_151, kms_s_0185r_0582_151, kms_s_0380r_0582_151, kms_s_1434_br_0582_151, s_0185, s_0380, s_0514, s_0763_b, s_0798, s_1434_b)) - (intracellular * function_12(Keq_r_0029_11, Vmax_r_0029_11, intracellular, kmp_s_0468r_0029_11, kmp_s_1434_br_0029_11, kms_s_0798r_0029_11, s_0468, s_0798, s_1434_b));
    der(s_0800) = (intracellular * function_151(Keq_r_0581_150, Vmax_r_0581_150, intracellular, kmp_s_0800r_0581_150, kms_s_0468r_0581_150, kms_s_1434_br_0581_150, s_0468, s_0800, s_1434_b)) - (intracellular * function_153(Keq_r_0585_152, Vmax_r_0585_152, intracellular, kmp_s_0180r_0585_152, kmp_s_0763_br_0585_152, kmp_s_1087r_0585_152, kms_s_0800r_0585_152, kms_s_1082r_0585_152, s_0180, s_0763_b, s_0800, s_1082, s_1087));
    der(s_0801) = (intracellular * function_95(Keq_r_0374_94, Vmax_r_0374_94, intracellular, kmp_s_0801r_0374_94, kmp_s_1154r_0374_94, kms_s_0064r_0374_94, kms_s_1160r_0374_94, s_0064, s_0801, s_1154, s_1160)) - (2.0 * intracellular * function_72(Keq_r_0282_71, Vmax_r_0282_71, intracellular, kmp_s_1160r_0282_71, kmp_s_1434_br_0282_71, kms_s_0801r_0282_71, s_0801, s_1160, s_1434_b));
    der(s_0805) = (intracellular * function_257(Keq_r_1008_256, Vmax_r_1008_256, intracellular, kmp_s_0805r_1008_256, kmp_s_1091r_1008_256, kmp_s_1434_br_1008_256, kms_s_0763_br_1008_256, kms_s_1096r_1008_256, kms_s_1349r_1008_256, s_0763_b, s_0805, s_1091, s_1096, s_1349, s_1434_b)) - (intracellular * function_200(Keq_r_0783_199, Vmax_r_0783_199, intracellular, kmp_s_0369r_0783_199, kmp_s_0763_br_0783_199, kmp_s_0917r_0783_199, kms_s_0805r_0783_199, kms_s_1117r_0783_199, s_0369, s_0763_b, s_0805, s_0917, s_1117));
    der(s_0816) = (intracellular * function_161(Keq_r_0606_160, Vmax_r_0606_160, intracellular, kmp_s_0816r_0606_160, kmp_s_1434_br_0606_160, kms_s_0325r_0606_160, s_0325, s_0816, s_1434_b)) - (intracellular * function_40(Keq_r_0170_39, Vmax_r_0170_39, intracellular, kmp_s_0706r_0170_39, kmp_s_0763_br_0170_39, kmp_s_1053r_0170_39, kmp_s_1207r_0170_39, kms_s_0755r_0170_39, kms_s_0816r_0170_39, kms_s_0881r_0170_39, s_0706, s_0755, s_0763_b, s_0816, s_0881, s_1053, s_1207)) - (intracellular * function_162(Keq_r_0607_161, Vmax_r_0607_161, intracellular, kmp_s_0306r_0607_161, kmp_s_0763_br_0607_161, kmp_s_1087r_0607_161, kms_s_0816r_0607_161, kms_s_1082r_0607_161, kms_s_1434_br_0607_161, s_0306, s_0763_b, s_0816, s_1082, s_1087, s_1434_b));
    der(s_0824) = (intracellular * function_165(Keq_r_0618_164, Vmax_r_0618_164, intracellular, kmp_s_0824r_0618_164, kms_s_0128r_0618_164, kms_s_1013r_0618_164, s_0128, s_0824, s_1013)) - (0.000417 * intracellular * function_285(V_o_284, a_s_0090r_1816_284, a_s_0124r_1816_284, a_s_0627r_1816_284, a_s_0632r_1816_284, a_s_0635r_1816_284, a_s_0641r_1816_284, a_s_0663r_1816_284, a_s_0669r_1816_284, a_s_0824r_1816_284, a_s_0963r_1816_284, a_s_1219r_1816_284, a_s_1228r_1816_284, a_s_1233r_1816_284, a_s_1399r_1816_284, a_s_1447r_1816_284, intracellular, s_0090, s_0090_or_1816_284, s_0124, s_0124_or_1816_284, s_0627, s_0627_or_1816_284, s_0632, s_0632_or_1816_284, s_0635, s_0635_or_1816_284, s_0641, s_0641_or_1816_284, s_0663, s_0663_or_1816_284, s_0669, s_0669_or_1816_284, s_0824, s_0824_or_1816_284, s_0963, s_0963_or_1816_284, s_1219, s_1219_or_1816_284, s_1228, s_1228_or_1816_284, s_1233, s_1233_or_1816_284, s_1399, s_1399_or_1816_284, s_1447, s_1447_or_1816_284, zero_flux_284));
    der(s_0828) = (intracellular * function_166(Keq_r_0621_165, Vmax_r_0621_165, intracellular, kmp_s_0828r_0621_165, kms_s_0128r_0621_165, kms_s_1060r_0621_165, s_0128, s_0828, s_1060)) - (intracellular * function_193(Keq_r_0723_192, Vmax_r_0723_192, intracellular, kmp_s_1013r_0723_192, kms_s_0710r_0723_192, kms_s_0828r_0723_192, s_0710, s_0828, s_1013));
    der(s_0847) = (intracellular * function_79(Keq_r_0307_78, Vmax_r_0307_78, intracellular, kmp_s_0847r_0307_78, kms_s_0501r_0307_78, kms_s_1434_br_0307_78, s_0501, s_0847, s_1434_b)) - (intracellular * function_167(Keq_r_0630_166, Vmax_r_0630_166, intracellular, kmp_s_0185r_0630_166, kmp_s_0470r_0630_166, kmp_s_1096r_0630_166, kms_s_0847r_0630_166, kms_s_1091r_0630_166, s_0185, s_0470, s_0847, s_1091, s_1096)) - (intracellular * function_168(Keq_r_0633_167, Vmax_r_0633_167, intracellular, kmp_s_0749r_0633_167, kmp_s_1338r_0633_167, kms_s_0847r_0633_167, s_0749, s_0847, s_1338));
    der(s_0850) = (intracellular * function_188(Keq_r_0715_187, Vmax_r_0715_187, intracellular, kmp_s_0400r_0715_187, kmp_s_0470r_0715_187, kmp_s_0850r_0715_187, kmp_s_1207r_0715_187, kms_s_0021r_0715_187, kms_s_0446r_0715_187, s_0021, s_0400, s_0446, s_0470, s_0850, s_1207)) - (intracellular * function_101(Keq_r_0387_100, Vmax_r_0387_100, intracellular, kmp_s_0605r_0387_100, kmp_s_0712r_0387_100, kms_s_0850r_0387_100, kms_s_1257r_0387_100, s_0605, s_0712, s_0850, s_1257)) - (intracellular * function_124(Keq_r_0496_123, Vmax_r_0496_123, intracellular, kmp_s_0195r_0496_123, kmp_s_0605r_0496_123, kms_s_0712r_0496_123, kms_s_0850r_0496_123, s_0195, s_0605, s_0712, s_0850)) - (intracellular * function_170(Keq_r_0638_169, Vmax_r_0638_169, intracellular, kmp_s_1257r_0638_169, kms_s_0850r_0638_169, s_0850, s_1257));
    der(s_0859) = (intracellular * function_230(Keq_r_0911_229, Vmax_r_0911_229, intracellular, kmp_s_0470r_0911_229, kmp_s_0859r_0911_229, kmp_s_1434_br_0911_229, kms_s_0763_br_0911_229, kms_s_1258r_0911_229, s_0470, s_0763_b, s_0859, s_1258, s_1434_b)) - (intracellular * function_205(Keq_r_0825_204, Vmax_r_0825_204, intracellular, kmp_s_0185r_0825_204, kmp_s_0936r_0825_204, kms_s_0859r_0825_204, kms_s_0899r_0825_204, s_0185, s_0859, s_0899, s_0936));
    der(s_0861) = (intracellular * function_8(Keq_r_0018_7, Vmax_r_0018_7, intracellular, kmp_s_0185r_0018_7, kmp_s_0861r_0018_7, kms_s_0181r_0018_7, kms_s_0899r_0018_7, s_0181, s_0185, s_0861, s_0899)) - (intracellular * function_173(Keq_r_0650_172, Vmax_r_0650_172, intracellular, kmp_s_0434r_0650_172, kmp_s_0605r_0650_172, kmp_s_0867r_0650_172, kmp_s_1082r_0650_172, kms_s_0446r_0650_172, kms_s_0763_br_0650_172, kms_s_0861r_0650_172, kms_s_1087r_0650_172, s_0434, s_0446, s_0605, s_0763_b, s_0861, s_0867, s_1082, s_1087));
    der(s_0863) = (intracellular * function_172(Keq_r_0647_171, Vmax_r_0647_171, intracellular, kmp_s_0185r_0647_171, kmp_s_0863r_0647_171, kms_s_0899r_0647_171, kms_s_1277r_0647_171, s_0185, s_0863, s_0899, s_1277)) - (intracellular * function_43(Keq_r_0174_42, Vmax_r_0174_42, intracellular, kmp_s_0740r_0174_42, kmp_s_1277r_0174_42, kms_s_0749r_0174_42, kms_s_0863r_0174_42, s_0740, s_0749, s_0863, s_1277)) - (0.35734 * intracellular * function_283(V_o_282, a_s_0001r_1812_282, a_s_0416r_1812_282, a_s_0434r_1812_282, a_s_0446r_1812_282, a_s_0511r_1812_282, a_s_0564r_1812_282, a_s_0569r_1812_282, a_s_0593r_1812_282, a_s_0619r_1812_282, a_s_0740r_1812_282, a_s_0743r_1812_282, a_s_0752r_1812_282, a_s_0863r_1812_282, a_s_0873r_1812_282, a_s_0877r_1812_282, a_s_0881r_1812_282, a_s_0889r_1812_282, a_s_0899r_1812_282, a_s_0907r_1812_282, a_s_0911r_1812_282, a_s_0920r_1812_282, a_s_0925r_1812_282, a_s_0929r_1812_282, a_s_0933r_1812_282, a_s_0936r_1812_282, a_s_0939r_1812_282, a_s_0943r_1812_282, a_s_0949r_1812_282, a_s_0952r_1812_282, a_s_0955r_1812_282, a_s_0960r_1812_282, a_s_1000r_1812_282, a_s_1011r_1812_282, a_s_1283r_1812_282, a_s_1347r_1812_282, a_s_1417r_1812_282, intracellular, s_0001, s_0001_or_1812_282, s_0416, s_0416_or_1812_282, s_0434, s_0434_or_1812_282, s_0446, s_0446_or_1812_282, s_0511, s_0511_or_1812_282, s_0564, s_0564_or_1812_282, s_0569, s_0569_or_1812_282, s_0593, s_0593_or_1812_282, s_0619, s_0619_or_1812_282, s_0740, s_0740_or_1812_282, s_0743, s_0743_or_1812_282, s_0752, s_0752_or_1812_282, s_0863, s_0863_or_1812_282, s_0873, s_0873_or_1812_282, s_0877, s_0877_or_1812_282, s_0881, s_0881_or_1812_282, s_0889, s_0889_or_1812_282, s_0899, s_0899_or_1812_282, s_0907, s_0907_or_1812_282, s_0911, s_0911_or_1812_282, s_0920, s_0920_or_1812_282, s_0925, s_0925_or_1812_282, s_0929, s_0929_or_1812_282, s_0933, s_0933_or_1812_282, s_0936, s_0936_or_1812_282, s_0939, s_0939_or_1812_282, s_0943, s_0943_or_1812_282, s_0949, s_0949_or_1812_282, s_0952, s_0952_or_1812_282, s_0955, s_0955_or_1812_282, s_0960, s_0960_or_1812_282, s_1000, s_1000_or_1812_282, s_1011, s_1011_or_1812_282, s_1283, s_1283_or_1812_282, s_1347, s_1347_or_1812_282, s_1417, s_1417_or_1812_282, zero_flux_282));
    der(s_0867) = (intracellular * function_173(Keq_r_0650_172, Vmax_r_0650_172, intracellular, kmp_s_0434r_0650_172, kmp_s_0605r_0650_172, kmp_s_0867r_0650_172, kmp_s_1082r_0650_172, kms_s_0446r_0650_172, kms_s_0763_br_0650_172, kms_s_0861r_0650_172, kms_s_1087r_0650_172, s_0434, s_0446, s_0605, s_0763_b, s_0861, s_0867, s_1082, s_1087)) - (intracellular * function_248(Keq_r_0970_247, Vmax_r_0970_247, intracellular, kmp_s_0942r_0970_247, kmp_s_1091r_0970_247, kmp_s_1434_br_0970_247, kms_s_0763_br_0970_247, kms_s_0867r_0970_247, kms_s_0899r_0970_247, kms_s_1096r_0970_247, s_0763_b, s_0867, s_0899, s_0942, s_1091, s_1096, s_1434_b));
    der(s_0873) = (intracellular * function_49(Keq_r_0225_48, Vmax_r_0225_48, intracellular, kmp_s_0692r_0225_48, kmp_s_0873r_0225_48, kms_s_0017r_0225_48, s_0017, s_0692, s_0873)) - (0.13579 * intracellular * function_283(V_o_282, a_s_0001r_1812_282, a_s_0416r_1812_282, a_s_0434r_1812_282, a_s_0446r_1812_282, a_s_0511r_1812_282, a_s_0564r_1812_282, a_s_0569r_1812_282, a_s_0593r_1812_282, a_s_0619r_1812_282, a_s_0740r_1812_282, a_s_0743r_1812_282, a_s_0752r_1812_282, a_s_0863r_1812_282, a_s_0873r_1812_282, a_s_0877r_1812_282, a_s_0881r_1812_282, a_s_0889r_1812_282, a_s_0899r_1812_282, a_s_0907r_1812_282, a_s_0911r_1812_282, a_s_0920r_1812_282, a_s_0925r_1812_282, a_s_0929r_1812_282, a_s_0933r_1812_282, a_s_0936r_1812_282, a_s_0939r_1812_282, a_s_0943r_1812_282, a_s_0949r_1812_282, a_s_0952r_1812_282, a_s_0955r_1812_282, a_s_0960r_1812_282, a_s_1000r_1812_282, a_s_1011r_1812_282, a_s_1283r_1812_282, a_s_1347r_1812_282, a_s_1417r_1812_282, intracellular, s_0001, s_0001_or_1812_282, s_0416, s_0416_or_1812_282, s_0434, s_0434_or_1812_282, s_0446, s_0446_or_1812_282, s_0511, s_0511_or_1812_282, s_0564, s_0564_or_1812_282, s_0569, s_0569_or_1812_282, s_0593, s_0593_or_1812_282, s_0619, s_0619_or_1812_282, s_0740, s_0740_or_1812_282, s_0743, s_0743_or_1812_282, s_0752, s_0752_or_1812_282, s_0863, s_0863_or_1812_282, s_0873, s_0873_or_1812_282, s_0877, s_0877_or_1812_282, s_0881, s_0881_or_1812_282, s_0889, s_0889_or_1812_282, s_0899, s_0899_or_1812_282, s_0907, s_0907_or_1812_282, s_0911, s_0911_or_1812_282, s_0920, s_0920_or_1812_282, s_0925, s_0925_or_1812_282, s_0929, s_0929_or_1812_282, s_0933, s_0933_or_1812_282, s_0936, s_0936_or_1812_282, s_0939, s_0939_or_1812_282, s_0943, s_0943_or_1812_282, s_0949, s_0949_or_1812_282, s_0952, s_0952_or_1812_282, s_0955, s_0955_or_1812_282, s_0960, s_0960_or_1812_282, s_1000, s_1000_or_1812_282, s_1011, s_1011_or_1812_282, s_1283, s_1283_or_1812_282, s_1347, s_1347_or_1812_282, s_1417, s_1417_or_1812_282, zero_flux_282));
    der(s_0877) = (intracellular * function_51(Keq_r_0229_50, Vmax_r_0229_50, intracellular, kmp_s_0434r_0229_50, kmp_s_0605r_0229_50, kmp_s_0763_br_0229_50, kmp_s_0877r_0229_50, kmp_s_0899r_0229_50, kms_s_0446r_0229_50, kms_s_0881r_0229_50, kms_s_0907r_0229_50, kms_s_1434_br_0229_50, s_0434, s_0446, s_0605, s_0763_b, s_0877, s_0881, s_0899, s_0907, s_1434_b)) - (0.17152 * intracellular * function_283(V_o_282, a_s_0001r_1812_282, a_s_0416r_1812_282, a_s_0434r_1812_282, a_s_0446r_1812_282, a_s_0511r_1812_282, a_s_0564r_1812_282, a_s_0569r_1812_282, a_s_0593r_1812_282, a_s_0619r_1812_282, a_s_0740r_1812_282, a_s_0743r_1812_282, a_s_0752r_1812_282, a_s_0863r_1812_282, a_s_0873r_1812_282, a_s_0877r_1812_282, a_s_0881r_1812_282, a_s_0889r_1812_282, a_s_0899r_1812_282, a_s_0907r_1812_282, a_s_0911r_1812_282, a_s_0920r_1812_282, a_s_0925r_1812_282, a_s_0929r_1812_282, a_s_0933r_1812_282, a_s_0936r_1812_282, a_s_0939r_1812_282, a_s_0943r_1812_282, a_s_0949r_1812_282, a_s_0952r_1812_282, a_s_0955r_1812_282, a_s_0960r_1812_282, a_s_1000r_1812_282, a_s_1011r_1812_282, a_s_1283r_1812_282, a_s_1347r_1812_282, a_s_1417r_1812_282, intracellular, s_0001, s_0001_or_1812_282, s_0416, s_0416_or_1812_282, s_0434, s_0434_or_1812_282, s_0446, s_0446_or_1812_282, s_0511, s_0511_or_1812_282, s_0564, s_0564_or_1812_282, s_0569, s_0569_or_1812_282, s_0593, s_0593_or_1812_282, s_0619, s_0619_or_1812_282, s_0740, s_0740_or_1812_282, s_0743, s_0743_or_1812_282, s_0752, s_0752_or_1812_282, s_0863, s_0863_or_1812_282, s_0873, s_0873_or_1812_282, s_0877, s_0877_or_1812_282, s_0881, s_0881_or_1812_282, s_0889, s_0889_or_1812_282, s_0899, s_0899_or_1812_282, s_0907, s_0907_or_1812_282, s_0911, s_0911_or_1812_282, s_0920, s_0920_or_1812_282, s_0925, s_0925_or_1812_282, s_0929, s_0929_or_1812_282, s_0933, s_0933_or_1812_282, s_0936, s_0936_or_1812_282, s_0939, s_0939_or_1812_282, s_0943, s_0943_or_1812_282, s_0949, s_0949_or_1812_282, s_0952, s_0952_or_1812_282, s_0955, s_0955_or_1812_282, s_0960, s_0960_or_1812_282, s_1000, s_1000_or_1812_282, s_1011, s_1011_or_1812_282, s_1283, s_1283_or_1812_282, s_1347, s_1347_or_1812_282, s_1417, s_1417_or_1812_282, zero_flux_282));
    der(s_0881) = (intracellular * function_54(Keq_r_0235_53, Vmax_r_0235_53, intracellular, kmp_s_0185r_0235_53, kmp_s_0881r_0235_53, kms_s_0899r_0235_53, kms_s_1156r_0235_53, s_0185, s_0881, s_0899, s_1156)) - (intracellular * function_40(Keq_r_0170_39, Vmax_r_0170_39, intracellular, kmp_s_0706r_0170_39, kmp_s_0763_br_0170_39, kmp_s_1053r_0170_39, kmp_s_1207r_0170_39, kms_s_0755r_0170_39, kms_s_0816r_0170_39, kms_s_0881r_0170_39, s_0706, s_0755, s_0763_b, s_0816, s_0881, s_1053, s_1207)) - (intracellular * function_50(Keq_r_0226_49, Vmax_r_0226_49, intracellular, kmp_s_0017r_0226_49, kmp_s_0434r_0226_49, kmp_s_0605r_0226_49, kmp_s_0763_br_0226_49, kms_s_0446r_0226_49, kms_s_0881r_0226_49, kms_s_0887r_0226_49, s_0017, s_0434, s_0446, s_0605, s_0763_b, s_0881, s_0887)) - (intracellular * function_51(Keq_r_0229_50, Vmax_r_0229_50, intracellular, kmp_s_0434r_0229_50, kmp_s_0605r_0229_50, kmp_s_0763_br_0229_50, kmp_s_0877r_0229_50, kmp_s_0899r_0229_50, kms_s_0446r_0229_50, kms_s_0881r_0229_50, kms_s_0907r_0229_50, kms_s_1434_br_0229_50, s_0434, s_0446, s_0605, s_0763_b, s_0877, s_0881, s_0899, s_0907, s_1434_b)) - (intracellular * function_52(Keq_r_0232_51, Vmax_r_0232_51, intracellular, kmp_s_0763_br_0232_51, kmp_s_1073r_0232_51, kmp_s_1207r_0232_51, kms_s_0469r_0232_51, kms_s_0881r_0232_51, s_0469, s_0763_b, s_0881, s_1073, s_1207)) - (intracellular * function_53(Keq_r_0233_52, Vmax_r_0233_52, intracellular, kmp_s_0301r_0233_52, kmp_s_0400r_0233_52, kms_s_0446r_0233_52, kms_s_0881r_0233_52, s_0301, s_0400, s_0446, s_0881)) - (intracellular * function_224(Keq_r_0886_223, Vmax_r_0886_223, intracellular, kmp_s_0009r_0886_223, kmp_s_0400r_0886_223, kmp_s_0763_br_0886_223, kmp_s_1207r_0886_223, kms_s_0318r_0886_223, kms_s_0446r_0886_223, kms_s_0881r_0886_223, s_0009, s_0318, s_0400, s_0446, s_0763_b, s_0881, s_1207)) - (0.17152 * intracellular * function_283(V_o_282, a_s_0001r_1812_282, a_s_0416r_1812_282, a_s_0434r_1812_282, a_s_0446r_1812_282, a_s_0511r_1812_282, a_s_0564r_1812_282, a_s_0569r_1812_282, a_s_0593r_1812_282, a_s_0619r_1812_282, a_s_0740r_1812_282, a_s_0743r_1812_282, a_s_0752r_1812_282, a_s_0863r_1812_282, a_s_0873r_1812_282, a_s_0877r_1812_282, a_s_0881r_1812_282, a_s_0889r_1812_282, a_s_0899r_1812_282, a_s_0907r_1812_282, a_s_0911r_1812_282, a_s_0920r_1812_282, a_s_0925r_1812_282, a_s_0929r_1812_282, a_s_0933r_1812_282, a_s_0936r_1812_282, a_s_0939r_1812_282, a_s_0943r_1812_282, a_s_0949r_1812_282, a_s_0952r_1812_282, a_s_0955r_1812_282, a_s_0960r_1812_282, a_s_1000r_1812_282, a_s_1011r_1812_282, a_s_1283r_1812_282, a_s_1347r_1812_282, a_s_1417r_1812_282, intracellular, s_0001, s_0001_or_1812_282, s_0416, s_0416_or_1812_282, s_0434, s_0434_or_1812_282, s_0446, s_0446_or_1812_282, s_0511, s_0511_or_1812_282, s_0564, s_0564_or_1812_282, s_0569, s_0569_or_1812_282, s_0593, s_0593_or_1812_282, s_0619, s_0619_or_1812_282, s_0740, s_0740_or_1812_282, s_0743, s_0743_or_1812_282, s_0752, s_0752_or_1812_282, s_0863, s_0863_or_1812_282, s_0873, s_0873_or_1812_282, s_0877, s_0877_or_1812_282, s_0881, s_0881_or_1812_282, s_0889, s_0889_or_1812_282, s_0899, s_0899_or_1812_282, s_0907, s_0907_or_1812_282, s_0911, s_0911_or_1812_282, s_0920, s_0920_or_1812_282, s_0925, s_0925_or_1812_282, s_0929, s_0929_or_1812_282, s_0933, s_0933_or_1812_282, s_0936, s_0936_or_1812_282, s_0939, s_0939_or_1812_282, s_0943, s_0943_or_1812_282, s_0949, s_0949_or_1812_282, s_0952, s_0952_or_1812_282, s_0955, s_0955_or_1812_282, s_0960, s_0960_or_1812_282, s_1000, s_1000_or_1812_282, s_1011, s_1011_or_1812_282, s_1283, s_1283_or_1812_282, s_1347, s_1347_or_1812_282, s_1417, s_1417_or_1812_282, zero_flux_282));
    der(s_0886) = (intracellular * function_55(Keq_r_0238_54, Vmax_r_0238_54, intracellular, kmp_s_0886r_0238_54, kmp_s_1091r_0238_54, kmp_s_1207r_0238_54, kms_s_0301r_0238_54, kms_s_0763_br_0238_54, kms_s_1096r_0238_54, s_0301, s_0763_b, s_0886, s_1091, s_1096, s_1207)) - (intracellular * function_154(Keq_r_0586_153, Vmax_r_0586_153, intracellular, kmp_s_0919r_0586_153, kmp_s_1082r_0586_153, kms_s_0763_br_0586_153, kms_s_0886r_0586_153, kms_s_1087r_0586_153, s_0763_b, s_0886, s_0919, s_1082, s_1087));
    der(s_0887) = (intracellular * function_201(Keq_r_0789_200, Vmax_r_0789_200, intracellular, kmp_s_0763_br_0789_200, kmp_s_0887r_0789_200, kmp_s_1207r_0789_200, kms_s_0469r_0789_200, kms_s_1151r_0789_200, s_0469, s_0763_b, s_0887, s_1151, s_1207)) - (intracellular * function_50(Keq_r_0226_49, Vmax_r_0226_49, intracellular, kmp_s_0017r_0226_49, kmp_s_0434r_0226_49, kmp_s_0605r_0226_49, kmp_s_0763_br_0226_49, kms_s_0446r_0226_49, kms_s_0881r_0226_49, kms_s_0887r_0226_49, s_0017, s_0434, s_0446, s_0605, s_0763_b, s_0881, s_0887));
    der(s_0888) = (intracellular * function_83(Keq_r_0338_82, Vmax_r_0338_82, intracellular, kmp_s_0888r_0338_82, kmp_s_1434_br_0338_82, kms_s_0917r_0338_82, kms_s_0943r_0338_82, s_0888, s_0917, s_0943, s_1434_b)) + (intracellular * function_85(Keq_r_0340_84, Vmax_r_0340_84, intracellular, kmp_s_0369r_0340_84, kmp_s_0763_br_0340_84, kmp_s_0888r_0340_84, kms_s_0889r_0340_84, kms_s_1117r_0340_84, s_0369, s_0763_b, s_0888, s_0889, s_1117)) - (intracellular * function_84(Keq_r_0339_83, Vmax_r_0339_83, intracellular, kmp_s_0183r_0339_83, kmp_s_0430r_0339_83, kmp_s_0889r_0339_83, kms_s_0888r_0339_83, kms_s_1434_br_0339_83, s_0183, s_0430, s_0888, s_0889, s_1434_b));
    der(s_0889) = (intracellular * function_84(Keq_r_0339_83, Vmax_r_0339_83, intracellular, kmp_s_0183r_0339_83, kmp_s_0430r_0339_83, kmp_s_0889r_0339_83, kms_s_0888r_0339_83, kms_s_1434_br_0339_83, s_0183, s_0430, s_0888, s_0889, s_1434_b)) - (intracellular * function_85(Keq_r_0340_84, Vmax_r_0340_84, intracellular, kmp_s_0369r_0340_84, kmp_s_0763_br_0340_84, kmp_s_0888r_0340_84, kms_s_0889r_0340_84, kms_s_1117r_0340_84, s_0369, s_0763_b, s_0888, s_0889, s_1117)) - (0.04288 * intracellular * function_283(V_o_282, a_s_0001r_1812_282, a_s_0416r_1812_282, a_s_0434r_1812_282, a_s_0446r_1812_282, a_s_0511r_1812_282, a_s_0564r_1812_282, a_s_0569r_1812_282, a_s_0593r_1812_282, a_s_0619r_1812_282, a_s_0740r_1812_282, a_s_0743r_1812_282, a_s_0752r_1812_282, a_s_0863r_1812_282, a_s_0873r_1812_282, a_s_0877r_1812_282, a_s_0881r_1812_282, a_s_0889r_1812_282, a_s_0899r_1812_282, a_s_0907r_1812_282, a_s_0911r_1812_282, a_s_0920r_1812_282, a_s_0925r_1812_282, a_s_0929r_1812_282, a_s_0933r_1812_282, a_s_0936r_1812_282, a_s_0939r_1812_282, a_s_0943r_1812_282, a_s_0949r_1812_282, a_s_0952r_1812_282, a_s_0955r_1812_282, a_s_0960r_1812_282, a_s_1000r_1812_282, a_s_1011r_1812_282, a_s_1283r_1812_282, a_s_1347r_1812_282, a_s_1417r_1812_282, intracellular, s_0001, s_0001_or_1812_282, s_0416, s_0416_or_1812_282, s_0434, s_0434_or_1812_282, s_0446, s_0446_or_1812_282, s_0511, s_0511_or_1812_282, s_0564, s_0564_or_1812_282, s_0569, s_0569_or_1812_282, s_0593, s_0593_or_1812_282, s_0619, s_0619_or_1812_282, s_0740, s_0740_or_1812_282, s_0743, s_0743_or_1812_282, s_0752, s_0752_or_1812_282, s_0863, s_0863_or_1812_282, s_0873, s_0873_or_1812_282, s_0877, s_0877_or_1812_282, s_0881, s_0881_or_1812_282, s_0889, s_0889_or_1812_282, s_0899, s_0899_or_1812_282, s_0907, s_0907_or_1812_282, s_0911, s_0911_or_1812_282, s_0920, s_0920_or_1812_282, s_0925, s_0925_or_1812_282, s_0929, s_0929_or_1812_282, s_0933, s_0933_or_1812_282, s_0936, s_0936_or_1812_282, s_0939, s_0939_or_1812_282, s_0943, s_0943_or_1812_282, s_0949, s_0949_or_1812_282, s_0952, s_0952_or_1812_282, s_0955, s_0955_or_1812_282, s_0960, s_0960_or_1812_282, s_1000, s_1000_or_1812_282, s_1011, s_1011_or_1812_282, s_1283, s_1283_or_1812_282, s_1347, s_1347_or_1812_282, s_1417, s_1417_or_1812_282, zero_flux_282));
    der(s_0894) = (intracellular * function_128(Keq_r_0506_127, Vmax_r_0506_127, intracellular, kmp_s_0400r_0506_127, kmp_s_0894r_0506_127, kms_s_0446r_0506_127, kms_s_0899r_0506_127, s_0400, s_0446, s_0894, s_0899)) - (intracellular * function_131(Keq_r_0512_130, Vmax_r_0512_130, intracellular, kmp_s_0905r_0512_130, kmp_s_1082r_0512_130, kmp_s_1207r_0512_130, kms_s_0763_br_0512_130, kms_s_0894r_0512_130, kms_s_1087r_0512_130, s_0763_b, s_0894, s_0905, s_1082, s_1087, s_1207));
    der(s_0899) = (intracellular * function_48(Keq_r_0221_47, Vmax_r_0221_47, intracellular, kmp_s_0439r_0221_47, kmp_s_0763_br_0221_47, kmp_s_0899r_0221_47, kmp_s_1277r_0221_47, kms_s_0500r_0221_47, kms_s_0907r_0221_47, s_0439, s_0500, s_0763_b, s_0899, s_0907, s_1277)) + (intracellular * function_51(Keq_r_0229_50, Vmax_r_0229_50, intracellular, kmp_s_0434r_0229_50, kmp_s_0605r_0229_50, kmp_s_0763_br_0229_50, kmp_s_0877r_0229_50, kmp_s_0899r_0229_50, kms_s_0446r_0229_50, kms_s_0881r_0229_50, kms_s_0907r_0229_50, kms_s_1434_br_0229_50, s_0434, s_0446, s_0605, s_0763_b, s_0877, s_0881, s_0899, s_0907, s_1434_b)) + (intracellular * function_71(Keq_r_0277_70, Vmax_r_0277_70, intracellular, kmp_s_0400r_0277_70, kmp_s_0469r_0277_70, kmp_s_0763_br_0277_70, kmp_s_0899r_0277_70, kmp_s_1207r_0277_70, kms_s_0446r_0277_70, kms_s_0458r_0277_70, kms_s_0907r_0277_70, kms_s_1434_br_0277_70, s_0400, s_0446, s_0458, s_0469, s_0763_b, s_0899, s_0907, s_1207, s_1434_b)) + (intracellular * function_129(Keq_r_0509_128, Vmax_r_0509_128, intracellular, kmp_s_0899r_0509_128, kmp_s_1091r_0509_128, kmp_s_1434_br_0509_128, kms_s_0185r_0509_128, kms_s_0430r_0509_128, kms_s_0763_br_0509_128, kms_s_1096r_0509_128, s_0185, s_0430, s_0763_b, s_0899, s_1091, s_1096, s_1434_b)) + (2.0 * intracellular * function_130(Keq_r_0510_129, Vmax_r_0510_129, intracellular, kmp_s_0899r_0510_129, kmp_s_1082r_0510_129, kms_s_0185r_0510_129, kms_s_0763_br_0510_129, kms_s_0907r_0510_129, kms_s_1087r_0510_129, s_0185, s_0763_b, s_0899, s_0907, s_1082, s_1087)) + (intracellular * function_132(Keq_r_0514_131, Vmax_r_0514_131, intracellular, kmp_s_0333r_0514_131, kmp_s_0605r_0514_131, kmp_s_0899r_0514_131, kms_s_0331r_0514_131, kms_s_0907r_0514_131, kms_s_1434_br_0514_131, s_0331, s_0333, s_0605, s_0899, s_0907, s_1434_b)) + (intracellular * function_143(Keq_r_0551_142, Vmax_r_0551_142, intracellular, kmp_s_0434r_0551_142, kmp_s_0605r_0551_142, kmp_s_0752r_0551_142, kmp_s_0763_br_0551_142, kmp_s_0899r_0551_142, kms_s_0306r_0551_142, kms_s_0446r_0551_142, kms_s_0907r_0551_142, kms_s_1434_br_0551_142, s_0306, s_0434, s_0446, s_0605, s_0752, s_0763_b, s_0899, s_0907, s_1434_b)) + (intracellular * function_159(Keq_r_0604_158, Vmax_r_0604_158, intracellular, kmp_s_0317r_0604_158, kmp_s_0532r_0604_158, kmp_s_0763_br_0604_158, kmp_s_0899r_0604_158, kms_s_0315r_0604_158, kms_s_0907r_0604_158, s_0315, s_0317, s_0532, s_0763_b, s_0899, s_0907)) + (intracellular * function_226(Keq_r_0888_225, Vmax_r_0888_225, intracellular, kmp_s_0158r_0888_225, kmp_s_0400r_0888_225, kmp_s_0763_br_0888_225, kmp_s_0899r_0888_225, kmp_s_1207r_0888_225, kms_s_0446r_0888_225, kms_s_0907r_0888_225, kms_s_1052r_0888_225, kms_s_1434_br_0888_225, s_0158, s_0400, s_0446, s_0763_b, s_0899, s_0907, s_1052, s_1207, s_1434_b)) - (intracellular * function_8(Keq_r_0018_7, Vmax_r_0018_7, intracellular, kmp_s_0185r_0018_7, kmp_s_0861r_0018_7, kms_s_0181r_0018_7, kms_s_0899r_0018_7, s_0181, s_0185, s_0861, s_0899)) - (intracellular * function_34(Keq_r_0133_33, Vmax_r_0133_33, intracellular, kmp_s_0185r_0133_33, kmp_s_1051r_0133_33, kms_s_0149r_0133_33, kms_s_0899r_0133_33, s_0149, s_0185, s_0899, s_1051)) - (intracellular * function_54(Keq_r_0235_53, Vmax_r_0235_53, intracellular, kmp_s_0185r_0235_53, kmp_s_0881r_0235_53, kms_s_0899r_0235_53, kms_s_1156r_0235_53, s_0185, s_0881, s_0899, s_1156)) - (intracellular * function_128(Keq_r_0506_127, Vmax_r_0506_127, intracellular, kmp_s_0400r_0506_127, kmp_s_0894r_0506_127, kms_s_0446r_0506_127, kms_s_0899r_0506_127, s_0400, s_0446, s_0894, s_0899)) - (intracellular * function_133(Keq_r_0515_132, Vmax_r_0515_132, intracellular, kmp_s_0400r_0515_132, kmp_s_0763_br_0515_132, kmp_s_0907r_0515_132, kmp_s_1207r_0515_132, kms_s_0430r_0515_132, kms_s_0446r_0515_132, kms_s_0899r_0515_132, s_0400, s_0430, s_0446, s_0763_b, s_0899, s_0907, s_1207)) - (intracellular * function_150(Keq_r_0577_149, Vmax_r_0577_149, intracellular, kmp_s_0185r_0577_149, kmp_s_0916r_0577_149, kms_s_0212r_0577_149, kms_s_0899r_0577_149, s_0185, s_0212, s_0899, s_0916)) - (intracellular * function_169(Keq_r_0634_168, Vmax_r_0634_168, intracellular, kmp_s_0185r_0634_168, kmp_s_0920r_0634_168, kms_s_0058r_0634_168, kms_s_0899r_0634_168, s_0058, s_0185, s_0899, s_0920)) - (intracellular * function_172(Keq_r_0647_171, Vmax_r_0647_171, intracellular, kmp_s_0185r_0647_171, kmp_s_0863r_0647_171, kms_s_0899r_0647_171, kms_s_1277r_0647_171, s_0185, s_0863, s_0899, s_1277)) - (intracellular * function_179(Keq_r_0674_178, Vmax_r_0674_178, intracellular, kmp_s_0185r_0674_178, kmp_s_0925r_0674_178, kms_s_0297r_0674_178, kms_s_0899r_0674_178, s_0185, s_0297, s_0899, s_0925)) - (intracellular * function_202(Keq_r_0791_201, Vmax_r_0791_201, intracellular, kmp_s_1071r_0791_201, kmp_s_1151r_0791_201, kms_s_0899r_0791_201, kms_s_1051r_0791_201, s_0899, s_1051, s_1071, s_1151)) - (intracellular * function_205(Keq_r_0825_204, Vmax_r_0825_204, intracellular, kmp_s_0185r_0825_204, kmp_s_0936r_0825_204, kms_s_0859r_0825_204, kms_s_0899r_0825_204, s_0185, s_0859, s_0899, s_0936)) - (intracellular * function_248(Keq_r_0970_247, Vmax_r_0970_247, intracellular, kmp_s_0942r_0970_247, kmp_s_1091r_0970_247, kmp_s_1434_br_0970_247, kms_s_0763_br_0970_247, kms_s_0867r_0970_247, kms_s_0899r_0970_247, kms_s_1096r_0970_247, s_0763_b, s_0867, s_0899, s_0942, s_1091, s_1096, s_1434_b)) - (intracellular * function_269(Keq_r_1050_268, Vmax_r_1050_268, intracellular, kmp_s_0185r_1050_268, kmp_s_0955r_1050_268, kms_s_0209r_1050_268, kms_s_0899r_1050_268, s_0185, s_0209, s_0899, s_0955)) - (intracellular * function_273(Keq_r_1073_272, Vmax_r_1073_272, intracellular, kmp_s_0185r_1073_272, kmp_s_0960r_1073_272, kms_s_0238r_1073_272, kms_s_0899r_1073_272, s_0185, s_0238, s_0899, s_0960)) - (0.268 * intracellular * function_283(V_o_282, a_s_0001r_1812_282, a_s_0416r_1812_282, a_s_0434r_1812_282, a_s_0446r_1812_282, a_s_0511r_1812_282, a_s_0564r_1812_282, a_s_0569r_1812_282, a_s_0593r_1812_282, a_s_0619r_1812_282, a_s_0740r_1812_282, a_s_0743r_1812_282, a_s_0752r_1812_282, a_s_0863r_1812_282, a_s_0873r_1812_282, a_s_0877r_1812_282, a_s_0881r_1812_282, a_s_0889r_1812_282, a_s_0899r_1812_282, a_s_0907r_1812_282, a_s_0911r_1812_282, a_s_0920r_1812_282, a_s_0925r_1812_282, a_s_0929r_1812_282, a_s_0933r_1812_282, a_s_0936r_1812_282, a_s_0939r_1812_282, a_s_0943r_1812_282, a_s_0949r_1812_282, a_s_0952r_1812_282, a_s_0955r_1812_282, a_s_0960r_1812_282, a_s_1000r_1812_282, a_s_1011r_1812_282, a_s_1283r_1812_282, a_s_1347r_1812_282, a_s_1417r_1812_282, intracellular, s_0001, s_0001_or_1812_282, s_0416, s_0416_or_1812_282, s_0434, s_0434_or_1812_282, s_0446, s_0446_or_1812_282, s_0511, s_0511_or_1812_282, s_0564, s_0564_or_1812_282, s_0569, s_0569_or_1812_282, s_0593, s_0593_or_1812_282, s_0619, s_0619_or_1812_282, s_0740, s_0740_or_1812_282, s_0743, s_0743_or_1812_282, s_0752, s_0752_or_1812_282, s_0863, s_0863_or_1812_282, s_0873, s_0873_or_1812_282, s_0877, s_0877_or_1812_282, s_0881, s_0881_or_1812_282, s_0889, s_0889_or_1812_282, s_0899, s_0899_or_1812_282, s_0907, s_0907_or_1812_282, s_0911, s_0911_or_1812_282, s_0920, s_0920_or_1812_282, s_0925, s_0925_or_1812_282, s_0929, s_0929_or_1812_282, s_0933, s_0933_or_1812_282, s_0936, s_0936_or_1812_282, s_0939, s_0939_or_1812_282, s_0943, s_0943_or_1812_282, s_0949, s_0949_or_1812_282, s_0952, s_0952_or_1812_282, s_0955, s_0955_or_1812_282, s_0960, s_0960_or_1812_282, s_1000, s_1000_or_1812_282, s_1011, s_1011_or_1812_282, s_1283, s_1283_or_1812_282, s_1347, s_1347_or_1812_282, s_1417, s_1417_or_1812_282, zero_flux_282));
    der(s_0905) = (intracellular * function_131(Keq_r_0512_130, Vmax_r_0512_130, intracellular, kmp_s_0905r_0512_130, kmp_s_1082r_0512_130, kmp_s_1207r_0512_130, kms_s_0763_br_0512_130, kms_s_0894r_0512_130, kms_s_1087r_0512_130, s_0763_b, s_0894, s_0905, s_1082, s_1087, s_1207)) - (intracellular * function_174(Keq_r_0657_173, Vmax_r_0657_173, intracellular, kmp_s_0120r_0657_173, kmp_s_0763_br_0657_173, kmp_s_1434_br_0657_173, kms_s_0905r_0657_173, s_0120, s_0763_b, s_0905, s_1434_b));
    der(s_0907) = (intracellular * function_133(Keq_r_0515_132, Vmax_r_0515_132, intracellular, kmp_s_0400r_0515_132, kmp_s_0763_br_0515_132, kmp_s_0907r_0515_132, kmp_s_1207r_0515_132, kms_s_0430r_0515_132, kms_s_0446r_0515_132, kms_s_0899r_0515_132, s_0400, s_0430, s_0446, s_0763_b, s_0899, s_0907, s_1207)) - (intracellular * function_48(Keq_r_0221_47, Vmax_r_0221_47, intracellular, kmp_s_0439r_0221_47, kmp_s_0763_br_0221_47, kmp_s_0899r_0221_47, kmp_s_1277r_0221_47, kms_s_0500r_0221_47, kms_s_0907r_0221_47, s_0439, s_0500, s_0763_b, s_0899, s_0907, s_1277)) - (intracellular * function_51(Keq_r_0229_50, Vmax_r_0229_50, intracellular, kmp_s_0434r_0229_50, kmp_s_0605r_0229_50, kmp_s_0763_br_0229_50, kmp_s_0877r_0229_50, kmp_s_0899r_0229_50, kms_s_0446r_0229_50, kms_s_0881r_0229_50, kms_s_0907r_0229_50, kms_s_1434_br_0229_50, s_0434, s_0446, s_0605, s_0763_b, s_0877, s_0881, s_0899, s_0907, s_1434_b)) - (intracellular * function_71(Keq_r_0277_70, Vmax_r_0277_70, intracellular, kmp_s_0400r_0277_70, kmp_s_0469r_0277_70, kmp_s_0763_br_0277_70, kmp_s_0899r_0277_70, kmp_s_1207r_0277_70, kms_s_0446r_0277_70, kms_s_0458r_0277_70, kms_s_0907r_0277_70, kms_s_1434_br_0277_70, s_0400, s_0446, s_0458, s_0469, s_0763_b, s_0899, s_0907, s_1207, s_1434_b)) - (intracellular * function_130(Keq_r_0510_129, Vmax_r_0510_129, intracellular, kmp_s_0899r_0510_129, kmp_s_1082r_0510_129, kms_s_0185r_0510_129, kms_s_0763_br_0510_129, kms_s_0907r_0510_129, kms_s_1087r_0510_129, s_0185, s_0763_b, s_0899, s_0907, s_1082, s_1087)) - (intracellular * function_132(Keq_r_0514_131, Vmax_r_0514_131, intracellular, kmp_s_0333r_0514_131, kmp_s_0605r_0514_131, kmp_s_0899r_0514_131, kms_s_0331r_0514_131, kms_s_0907r_0514_131, kms_s_1434_br_0514_131, s_0331, s_0333, s_0605, s_0899, s_0907, s_1434_b)) - (intracellular * function_143(Keq_r_0551_142, Vmax_r_0551_142, intracellular, kmp_s_0434r_0551_142, kmp_s_0605r_0551_142, kmp_s_0752r_0551_142, kmp_s_0763_br_0551_142, kmp_s_0899r_0551_142, kms_s_0306r_0551_142, kms_s_0446r_0551_142, kms_s_0907r_0551_142, kms_s_1434_br_0551_142, s_0306, s_0434, s_0446, s_0605, s_0752, s_0763_b, s_0899, s_0907, s_1434_b)) - (intracellular * function_159(Keq_r_0604_158, Vmax_r_0604_158, intracellular, kmp_s_0317r_0604_158, kmp_s_0532r_0604_158, kmp_s_0763_br_0604_158, kmp_s_0899r_0604_158, kms_s_0315r_0604_158, kms_s_0907r_0604_158, s_0315, s_0317, s_0532, s_0763_b, s_0899, s_0907)) - (intracellular * function_226(Keq_r_0888_225, Vmax_r_0888_225, intracellular, kmp_s_0158r_0888_225, kmp_s_0400r_0888_225, kmp_s_0763_br_0888_225, kmp_s_0899r_0888_225, kmp_s_1207r_0888_225, kms_s_0446r_0888_225, kms_s_0907r_0888_225, kms_s_1052r_0888_225, kms_s_1434_br_0888_225, s_0158, s_0400, s_0446, s_0763_b, s_0899, s_0907, s_1052, s_1207, s_1434_b)) - (0.268 * intracellular * function_283(V_o_282, a_s_0001r_1812_282, a_s_0416r_1812_282, a_s_0434r_1812_282, a_s_0446r_1812_282, a_s_0511r_1812_282, a_s_0564r_1812_282, a_s_0569r_1812_282, a_s_0593r_1812_282, a_s_0619r_1812_282, a_s_0740r_1812_282, a_s_0743r_1812_282, a_s_0752r_1812_282, a_s_0863r_1812_282, a_s_0873r_1812_282, a_s_0877r_1812_282, a_s_0881r_1812_282, a_s_0889r_1812_282, a_s_0899r_1812_282, a_s_0907r_1812_282, a_s_0911r_1812_282, a_s_0920r_1812_282, a_s_0925r_1812_282, a_s_0929r_1812_282, a_s_0933r_1812_282, a_s_0936r_1812_282, a_s_0939r_1812_282, a_s_0943r_1812_282, a_s_0949r_1812_282, a_s_0952r_1812_282, a_s_0955r_1812_282, a_s_0960r_1812_282, a_s_1000r_1812_282, a_s_1011r_1812_282, a_s_1283r_1812_282, a_s_1347r_1812_282, a_s_1417r_1812_282, intracellular, s_0001, s_0001_or_1812_282, s_0416, s_0416_or_1812_282, s_0434, s_0434_or_1812_282, s_0446, s_0446_or_1812_282, s_0511, s_0511_or_1812_282, s_0564, s_0564_or_1812_282, s_0569, s_0569_or_1812_282, s_0593, s_0593_or_1812_282, s_0619, s_0619_or_1812_282, s_0740, s_0740_or_1812_282, s_0743, s_0743_or_1812_282, s_0752, s_0752_or_1812_282, s_0863, s_0863_or_1812_282, s_0873, s_0873_or_1812_282, s_0877, s_0877_or_1812_282, s_0881, s_0881_or_1812_282, s_0889, s_0889_or_1812_282, s_0899, s_0899_or_1812_282, s_0907, s_0907_or_1812_282, s_0911, s_0911_or_1812_282, s_0920, s_0920_or_1812_282, s_0925, s_0925_or_1812_282, s_0929, s_0929_or_1812_282, s_0933, s_0933_or_1812_282, s_0936, s_0936_or_1812_282, s_0939, s_0939_or_1812_282, s_0943, s_0943_or_1812_282, s_0949, s_0949_or_1812_282, s_0952, s_0952_or_1812_282, s_0955, s_0955_or_1812_282, s_0960, s_0960_or_1812_282, s_1000, s_1000_or_1812_282, s_1011, s_1011_or_1812_282, s_1283, s_1283_or_1812_282, s_1347, s_1347_or_1812_282, s_1417, s_1417_or_1812_282, zero_flux_282));
    der(s_0911) = (intracellular * function_148(Keq_r_0575_147, Vmax_r_0575_147, intracellular, kmp_s_0763_br_0575_147, kmp_s_0911r_0575_147, kmp_s_1087r_0575_147, kms_s_0915r_0575_147, kms_s_1082r_0575_147, kms_s_1434_br_0575_147, s_0763_b, s_0911, s_0915, s_1082, s_1087, s_1434_b)) - (0.075041 * intracellular * function_283(V_o_282, a_s_0001r_1812_282, a_s_0416r_1812_282, a_s_0434r_1812_282, a_s_0446r_1812_282, a_s_0511r_1812_282, a_s_0564r_1812_282, a_s_0569r_1812_282, a_s_0593r_1812_282, a_s_0619r_1812_282, a_s_0740r_1812_282, a_s_0743r_1812_282, a_s_0752r_1812_282, a_s_0863r_1812_282, a_s_0873r_1812_282, a_s_0877r_1812_282, a_s_0881r_1812_282, a_s_0889r_1812_282, a_s_0899r_1812_282, a_s_0907r_1812_282, a_s_0911r_1812_282, a_s_0920r_1812_282, a_s_0925r_1812_282, a_s_0929r_1812_282, a_s_0933r_1812_282, a_s_0936r_1812_282, a_s_0939r_1812_282, a_s_0943r_1812_282, a_s_0949r_1812_282, a_s_0952r_1812_282, a_s_0955r_1812_282, a_s_0960r_1812_282, a_s_1000r_1812_282, a_s_1011r_1812_282, a_s_1283r_1812_282, a_s_1347r_1812_282, a_s_1417r_1812_282, intracellular, s_0001, s_0001_or_1812_282, s_0416, s_0416_or_1812_282, s_0434, s_0434_or_1812_282, s_0446, s_0446_or_1812_282, s_0511, s_0511_or_1812_282, s_0564, s_0564_or_1812_282, s_0569, s_0569_or_1812_282, s_0593, s_0593_or_1812_282, s_0619, s_0619_or_1812_282, s_0740, s_0740_or_1812_282, s_0743, s_0743_or_1812_282, s_0752, s_0752_or_1812_282, s_0863, s_0863_or_1812_282, s_0873, s_0873_or_1812_282, s_0877, s_0877_or_1812_282, s_0881, s_0881_or_1812_282, s_0889, s_0889_or_1812_282, s_0899, s_0899_or_1812_282, s_0907, s_0907_or_1812_282, s_0911, s_0911_or_1812_282, s_0920, s_0920_or_1812_282, s_0925, s_0925_or_1812_282, s_0929, s_0929_or_1812_282, s_0933, s_0933_or_1812_282, s_0936, s_0936_or_1812_282, s_0939, s_0939_or_1812_282, s_0943, s_0943_or_1812_282, s_0949, s_0949_or_1812_282, s_0952, s_0952_or_1812_282, s_0955, s_0955_or_1812_282, s_0960, s_0960_or_1812_282, s_1000, s_1000_or_1812_282, s_1011, s_1011_or_1812_282, s_1283, s_1283_or_1812_282, s_1347, s_1347_or_1812_282, s_1417, s_1417_or_1812_282, zero_flux_282));
    der(s_0915) = (intracellular * function_149(Keq_r_0576_148, Vmax_r_0576_148, intracellular, kmp_s_0915r_0576_148, kmp_s_1207r_0576_148, kms_s_0916r_0576_148, kms_s_1434_br_0576_148, s_0915, s_0916, s_1207, s_1434_b)) - (intracellular * function_148(Keq_r_0575_147, Vmax_r_0575_147, intracellular, kmp_s_0763_br_0575_147, kmp_s_0911r_0575_147, kmp_s_1087r_0575_147, kms_s_0915r_0575_147, kms_s_1082r_0575_147, kms_s_1434_br_0575_147, s_0763_b, s_0911, s_0915, s_1082, s_1087, s_1434_b));
    der(s_0916) = (intracellular * function_150(Keq_r_0577_149, Vmax_r_0577_149, intracellular, kmp_s_0185r_0577_149, kmp_s_0916r_0577_149, kms_s_0212r_0577_149, kms_s_0899r_0577_149, s_0185, s_0212, s_0899, s_0916)) - (intracellular * function_149(Keq_r_0576_148, Vmax_r_0576_148, intracellular, kmp_s_0915r_0576_148, kmp_s_1207r_0576_148, kms_s_0916r_0576_148, kms_s_1434_br_0576_148, s_0915, s_0916, s_1207, s_1434_b));
    der(s_0917) = (intracellular * function_36(Keq_r_0159_35, Vmax_r_0159_35, intracellular, kmp_s_0393r_0159_35, kmp_s_0917r_0159_35, kms_s_1290r_0159_35, kms_s_1434_br_0159_35, s_0393, s_0917, s_1290, s_1434_b)) + (intracellular * function_200(Keq_r_0783_199, Vmax_r_0783_199, intracellular, kmp_s_0369r_0783_199, kmp_s_0763_br_0783_199, kmp_s_0917r_0783_199, kms_s_0805r_0783_199, kms_s_1117r_0783_199, s_0369, s_0763_b, s_0805, s_0917, s_1117)) - (intracellular * function_83(Keq_r_0338_82, Vmax_r_0338_82, intracellular, kmp_s_0888r_0338_82, kmp_s_1434_br_0338_82, kms_s_0917r_0338_82, kms_s_0943r_0338_82, s_0888, s_0917, s_0943, s_1434_b)) - (intracellular * function_185(Keq_r_0702_184, Vmax_r_0702_184, intracellular, kmp_s_0309r_0702_184, kmp_s_0763_br_0702_184, kmp_s_0933r_0702_184, kms_s_0328r_0702_184, kms_s_0917r_0702_184, s_0309, s_0328, s_0763_b, s_0917, s_0933));
    der(s_0919) = (intracellular * function_154(Keq_r_0586_153, Vmax_r_0586_153, intracellular, kmp_s_0919r_0586_153, kmp_s_1082r_0586_153, kms_s_0763_br_0586_153, kms_s_0886r_0586_153, kms_s_1087r_0586_153, s_0763_b, s_0886, s_0919, s_1082, s_1087)) - (intracellular * function_155(Keq_r_0588_154, Vmax_r_0588_154, intracellular, kmp_s_0400r_0588_154, kmp_s_0763_br_0588_154, kmp_s_1122r_0588_154, kms_s_0446r_0588_154, kms_s_0919r_0588_154, s_0400, s_0446, s_0763_b, s_0919, s_1122)) - (intracellular * function_156(Keq_r_0589_155, Vmax_r_0589_155, intracellular, kmp_s_0514r_0589_155, kmp_s_1117r_0589_155, kms_s_0380r_0589_155, kms_s_0919r_0589_155, s_0380, s_0514, s_0919, s_1117));
    der(s_0920) = (intracellular * function_169(Keq_r_0634_168, Vmax_r_0634_168, intracellular, kmp_s_0185r_0634_168, kmp_s_0920r_0634_168, kms_s_0058r_0634_168, kms_s_0899r_0634_168, s_0058, s_0185, s_0899, s_0920)) - (0.17152 * intracellular * function_283(V_o_282, a_s_0001r_1812_282, a_s_0416r_1812_282, a_s_0434r_1812_282, a_s_0446r_1812_282, a_s_0511r_1812_282, a_s_0564r_1812_282, a_s_0569r_1812_282, a_s_0593r_1812_282, a_s_0619r_1812_282, a_s_0740r_1812_282, a_s_0743r_1812_282, a_s_0752r_1812_282, a_s_0863r_1812_282, a_s_0873r_1812_282, a_s_0877r_1812_282, a_s_0881r_1812_282, a_s_0889r_1812_282, a_s_0899r_1812_282, a_s_0907r_1812_282, a_s_0911r_1812_282, a_s_0920r_1812_282, a_s_0925r_1812_282, a_s_0929r_1812_282, a_s_0933r_1812_282, a_s_0936r_1812_282, a_s_0939r_1812_282, a_s_0943r_1812_282, a_s_0949r_1812_282, a_s_0952r_1812_282, a_s_0955r_1812_282, a_s_0960r_1812_282, a_s_1000r_1812_282, a_s_1011r_1812_282, a_s_1283r_1812_282, a_s_1347r_1812_282, a_s_1417r_1812_282, intracellular, s_0001, s_0001_or_1812_282, s_0416, s_0416_or_1812_282, s_0434, s_0434_or_1812_282, s_0446, s_0446_or_1812_282, s_0511, s_0511_or_1812_282, s_0564, s_0564_or_1812_282, s_0569, s_0569_or_1812_282, s_0593, s_0593_or_1812_282, s_0619, s_0619_or_1812_282, s_0740, s_0740_or_1812_282, s_0743, s_0743_or_1812_282, s_0752, s_0752_or_1812_282, s_0863, s_0863_or_1812_282, s_0873, s_0873_or_1812_282, s_0877, s_0877_or_1812_282, s_0881, s_0881_or_1812_282, s_0889, s_0889_or_1812_282, s_0899, s_0899_or_1812_282, s_0907, s_0907_or_1812_282, s_0911, s_0911_or_1812_282, s_0920, s_0920_or_1812_282, s_0925, s_0925_or_1812_282, s_0929, s_0929_or_1812_282, s_0933, s_0933_or_1812_282, s_0936, s_0936_or_1812_282, s_0939, s_0939_or_1812_282, s_0943, s_0943_or_1812_282, s_0949, s_0949_or_1812_282, s_0952, s_0952_or_1812_282, s_0955, s_0955_or_1812_282, s_0960, s_0960_or_1812_282, s_1000, s_1000_or_1812_282, s_1011, s_1011_or_1812_282, s_1283, s_1283_or_1812_282, s_1347, s_1347_or_1812_282, s_1417, s_1417_or_1812_282, zero_flux_282));
    der(s_0925) = (intracellular * function_179(Keq_r_0674_178, Vmax_r_0674_178, intracellular, kmp_s_0185r_0674_178, kmp_s_0925r_0674_178, kms_s_0297r_0674_178, kms_s_0899r_0674_178, s_0185, s_0297, s_0899, s_0925)) - (0.25014 * intracellular * function_283(V_o_282, a_s_0001r_1812_282, a_s_0416r_1812_282, a_s_0434r_1812_282, a_s_0446r_1812_282, a_s_0511r_1812_282, a_s_0564r_1812_282, a_s_0569r_1812_282, a_s_0593r_1812_282, a_s_0619r_1812_282, a_s_0740r_1812_282, a_s_0743r_1812_282, a_s_0752r_1812_282, a_s_0863r_1812_282, a_s_0873r_1812_282, a_s_0877r_1812_282, a_s_0881r_1812_282, a_s_0889r_1812_282, a_s_0899r_1812_282, a_s_0907r_1812_282, a_s_0911r_1812_282, a_s_0920r_1812_282, a_s_0925r_1812_282, a_s_0929r_1812_282, a_s_0933r_1812_282, a_s_0936r_1812_282, a_s_0939r_1812_282, a_s_0943r_1812_282, a_s_0949r_1812_282, a_s_0952r_1812_282, a_s_0955r_1812_282, a_s_0960r_1812_282, a_s_1000r_1812_282, a_s_1011r_1812_282, a_s_1283r_1812_282, a_s_1347r_1812_282, a_s_1417r_1812_282, intracellular, s_0001, s_0001_or_1812_282, s_0416, s_0416_or_1812_282, s_0434, s_0434_or_1812_282, s_0446, s_0446_or_1812_282, s_0511, s_0511_or_1812_282, s_0564, s_0564_or_1812_282, s_0569, s_0569_or_1812_282, s_0593, s_0593_or_1812_282, s_0619, s_0619_or_1812_282, s_0740, s_0740_or_1812_282, s_0743, s_0743_or_1812_282, s_0752, s_0752_or_1812_282, s_0863, s_0863_or_1812_282, s_0873, s_0873_or_1812_282, s_0877, s_0877_or_1812_282, s_0881, s_0881_or_1812_282, s_0889, s_0889_or_1812_282, s_0899, s_0899_or_1812_282, s_0907, s_0907_or_1812_282, s_0911, s_0911_or_1812_282, s_0920, s_0920_or_1812_282, s_0925, s_0925_or_1812_282, s_0929, s_0929_or_1812_282, s_0933, s_0933_or_1812_282, s_0936, s_0936_or_1812_282, s_0939, s_0939_or_1812_282, s_0943, s_0943_or_1812_282, s_0949, s_0949_or_1812_282, s_0952, s_0952_or_1812_282, s_0955, s_0955_or_1812_282, s_0960, s_0960_or_1812_282, s_1000, s_1000_or_1812_282, s_1011, s_1011_or_1812_282, s_1283, s_1283_or_1812_282, s_1347, s_1347_or_1812_282, s_1417, s_1417_or_1812_282, zero_flux_282));
    der(s_0929) = (intracellular * function_247(Keq_r_0969_246, Vmax_r_0969_246, intracellular, kmp_s_0185r_0969_246, kmp_s_0763_br_0969_246, kmp_s_0929r_0969_246, kmp_s_1087r_0969_246, kms_s_0942r_0969_246, kms_s_1082r_0969_246, kms_s_1434_br_0969_246, s_0185, s_0763_b, s_0929, s_0942, s_1082, s_1087, s_1434_b)) - (0.23942 * intracellular * function_283(V_o_282, a_s_0001r_1812_282, a_s_0416r_1812_282, a_s_0434r_1812_282, a_s_0446r_1812_282, a_s_0511r_1812_282, a_s_0564r_1812_282, a_s_0569r_1812_282, a_s_0593r_1812_282, a_s_0619r_1812_282, a_s_0740r_1812_282, a_s_0743r_1812_282, a_s_0752r_1812_282, a_s_0863r_1812_282, a_s_0873r_1812_282, a_s_0877r_1812_282, a_s_0881r_1812_282, a_s_0889r_1812_282, a_s_0899r_1812_282, a_s_0907r_1812_282, a_s_0911r_1812_282, a_s_0920r_1812_282, a_s_0925r_1812_282, a_s_0929r_1812_282, a_s_0933r_1812_282, a_s_0936r_1812_282, a_s_0939r_1812_282, a_s_0943r_1812_282, a_s_0949r_1812_282, a_s_0952r_1812_282, a_s_0955r_1812_282, a_s_0960r_1812_282, a_s_1000r_1812_282, a_s_1011r_1812_282, a_s_1283r_1812_282, a_s_1347r_1812_282, a_s_1417r_1812_282, intracellular, s_0001, s_0001_or_1812_282, s_0416, s_0416_or_1812_282, s_0434, s_0434_or_1812_282, s_0446, s_0446_or_1812_282, s_0511, s_0511_or_1812_282, s_0564, s_0564_or_1812_282, s_0569, s_0569_or_1812_282, s_0593, s_0593_or_1812_282, s_0619, s_0619_or_1812_282, s_0740, s_0740_or_1812_282, s_0743, s_0743_or_1812_282, s_0752, s_0752_or_1812_282, s_0863, s_0863_or_1812_282, s_0873, s_0873_or_1812_282, s_0877, s_0877_or_1812_282, s_0881, s_0881_or_1812_282, s_0889, s_0889_or_1812_282, s_0899, s_0899_or_1812_282, s_0907, s_0907_or_1812_282, s_0911, s_0911_or_1812_282, s_0920, s_0920_or_1812_282, s_0925, s_0925_or_1812_282, s_0929, s_0929_or_1812_282, s_0933, s_0933_or_1812_282, s_0936, s_0936_or_1812_282, s_0939, s_0939_or_1812_282, s_0943, s_0943_or_1812_282, s_0949, s_0949_or_1812_282, s_0952, s_0952_or_1812_282, s_0955, s_0955_or_1812_282, s_0960, s_0960_or_1812_282, s_1000, s_1000_or_1812_282, s_1011, s_1011_or_1812_282, s_1283, s_1283_or_1812_282, s_1347, s_1347_or_1812_282, s_1417, s_1417_or_1812_282, zero_flux_282));
    der(s_0933) = (intracellular * function_185(Keq_r_0702_184, Vmax_r_0702_184, intracellular, kmp_s_0309r_0702_184, kmp_s_0763_br_0702_184, kmp_s_0933r_0702_184, kms_s_0328r_0702_184, kms_s_0917r_0702_184, s_0309, s_0328, s_0763_b, s_0917, s_0933)) - (intracellular * function_184(Keq_r_0701_183, Vmax_r_0701_183, intracellular, kmp_s_0605r_0701_183, kmp_s_1207r_0701_183, kmp_s_1293r_0701_183, kms_s_0446r_0701_183, kms_s_0933r_0701_183, kms_s_1434_br_0701_183, s_0446, s_0605, s_0933, s_1207, s_1293, s_1434_b)) - (0.050027 * intracellular * function_283(V_o_282, a_s_0001r_1812_282, a_s_0416r_1812_282, a_s_0434r_1812_282, a_s_0446r_1812_282, a_s_0511r_1812_282, a_s_0564r_1812_282, a_s_0569r_1812_282, a_s_0593r_1812_282, a_s_0619r_1812_282, a_s_0740r_1812_282, a_s_0743r_1812_282, a_s_0752r_1812_282, a_s_0863r_1812_282, a_s_0873r_1812_282, a_s_0877r_1812_282, a_s_0881r_1812_282, a_s_0889r_1812_282, a_s_0899r_1812_282, a_s_0907r_1812_282, a_s_0911r_1812_282, a_s_0920r_1812_282, a_s_0925r_1812_282, a_s_0929r_1812_282, a_s_0933r_1812_282, a_s_0936r_1812_282, a_s_0939r_1812_282, a_s_0943r_1812_282, a_s_0949r_1812_282, a_s_0952r_1812_282, a_s_0955r_1812_282, a_s_0960r_1812_282, a_s_1000r_1812_282, a_s_1011r_1812_282, a_s_1283r_1812_282, a_s_1347r_1812_282, a_s_1417r_1812_282, intracellular, s_0001, s_0001_or_1812_282, s_0416, s_0416_or_1812_282, s_0434, s_0434_or_1812_282, s_0446, s_0446_or_1812_282, s_0511, s_0511_or_1812_282, s_0564, s_0564_or_1812_282, s_0569, s_0569_or_1812_282, s_0593, s_0593_or_1812_282, s_0619, s_0619_or_1812_282, s_0740, s_0740_or_1812_282, s_0743, s_0743_or_1812_282, s_0752, s_0752_or_1812_282, s_0863, s_0863_or_1812_282, s_0873, s_0873_or_1812_282, s_0877, s_0877_or_1812_282, s_0881, s_0881_or_1812_282, s_0889, s_0889_or_1812_282, s_0899, s_0899_or_1812_282, s_0907, s_0907_or_1812_282, s_0911, s_0911_or_1812_282, s_0920, s_0920_or_1812_282, s_0925, s_0925_or_1812_282, s_0929, s_0929_or_1812_282, s_0933, s_0933_or_1812_282, s_0936, s_0936_or_1812_282, s_0939, s_0939_or_1812_282, s_0943, s_0943_or_1812_282, s_0949, s_0949_or_1812_282, s_0952, s_0952_or_1812_282, s_0955, s_0955_or_1812_282, s_0960, s_0960_or_1812_282, s_1000, s_1000_or_1812_282, s_1011, s_1011_or_1812_282, s_1283, s_1283_or_1812_282, s_1347, s_1347_or_1812_282, s_1417, s_1417_or_1812_282, zero_flux_282));
    der(s_0936) = (intracellular * function_205(Keq_r_0825_204, Vmax_r_0825_204, intracellular, kmp_s_0185r_0825_204, kmp_s_0936r_0825_204, kms_s_0859r_0825_204, kms_s_0899r_0825_204, s_0185, s_0859, s_0899, s_0936)) - (0.11435 * intracellular * function_283(V_o_282, a_s_0001r_1812_282, a_s_0416r_1812_282, a_s_0434r_1812_282, a_s_0446r_1812_282, a_s_0511r_1812_282, a_s_0564r_1812_282, a_s_0569r_1812_282, a_s_0593r_1812_282, a_s_0619r_1812_282, a_s_0740r_1812_282, a_s_0743r_1812_282, a_s_0752r_1812_282, a_s_0863r_1812_282, a_s_0873r_1812_282, a_s_0877r_1812_282, a_s_0881r_1812_282, a_s_0889r_1812_282, a_s_0899r_1812_282, a_s_0907r_1812_282, a_s_0911r_1812_282, a_s_0920r_1812_282, a_s_0925r_1812_282, a_s_0929r_1812_282, a_s_0933r_1812_282, a_s_0936r_1812_282, a_s_0939r_1812_282, a_s_0943r_1812_282, a_s_0949r_1812_282, a_s_0952r_1812_282, a_s_0955r_1812_282, a_s_0960r_1812_282, a_s_1000r_1812_282, a_s_1011r_1812_282, a_s_1283r_1812_282, a_s_1347r_1812_282, a_s_1417r_1812_282, intracellular, s_0001, s_0001_or_1812_282, s_0416, s_0416_or_1812_282, s_0434, s_0434_or_1812_282, s_0446, s_0446_or_1812_282, s_0511, s_0511_or_1812_282, s_0564, s_0564_or_1812_282, s_0569, s_0569_or_1812_282, s_0593, s_0593_or_1812_282, s_0619, s_0619_or_1812_282, s_0740, s_0740_or_1812_282, s_0743, s_0743_or_1812_282, s_0752, s_0752_or_1812_282, s_0863, s_0863_or_1812_282, s_0873, s_0873_or_1812_282, s_0877, s_0877_or_1812_282, s_0881, s_0881_or_1812_282, s_0889, s_0889_or_1812_282, s_0899, s_0899_or_1812_282, s_0907, s_0907_or_1812_282, s_0911, s_0911_or_1812_282, s_0920, s_0920_or_1812_282, s_0925, s_0925_or_1812_282, s_0929, s_0929_or_1812_282, s_0933, s_0933_or_1812_282, s_0936, s_0936_or_1812_282, s_0939, s_0939_or_1812_282, s_0943, s_0943_or_1812_282, s_0949, s_0949_or_1812_282, s_0952, s_0952_or_1812_282, s_0955, s_0955_or_1812_282, s_0960, s_0960_or_1812_282, s_1000, s_1000_or_1812_282, s_1011, s_1011_or_1812_282, s_1283, s_1283_or_1812_282, s_1347, s_1347_or_1812_282, s_1417, s_1417_or_1812_282, zero_flux_282));
    der(s_0939) = (intracellular * function_233(Keq_r_0936_232, Vmax_r_0936_232, intracellular, kmp_s_0939r_0936_232, kmp_s_1091r_0936_232, kms_s_0120r_0936_232, kms_s_0763_br_0936_232, kms_s_1096r_0936_232, s_0120, s_0763_b, s_0939, s_1091, s_1096)) - (0.12864 * intracellular * function_283(V_o_282, a_s_0001r_1812_282, a_s_0416r_1812_282, a_s_0434r_1812_282, a_s_0446r_1812_282, a_s_0511r_1812_282, a_s_0564r_1812_282, a_s_0569r_1812_282, a_s_0593r_1812_282, a_s_0619r_1812_282, a_s_0740r_1812_282, a_s_0743r_1812_282, a_s_0752r_1812_282, a_s_0863r_1812_282, a_s_0873r_1812_282, a_s_0877r_1812_282, a_s_0881r_1812_282, a_s_0889r_1812_282, a_s_0899r_1812_282, a_s_0907r_1812_282, a_s_0911r_1812_282, a_s_0920r_1812_282, a_s_0925r_1812_282, a_s_0929r_1812_282, a_s_0933r_1812_282, a_s_0936r_1812_282, a_s_0939r_1812_282, a_s_0943r_1812_282, a_s_0949r_1812_282, a_s_0952r_1812_282, a_s_0955r_1812_282, a_s_0960r_1812_282, a_s_1000r_1812_282, a_s_1011r_1812_282, a_s_1283r_1812_282, a_s_1347r_1812_282, a_s_1417r_1812_282, intracellular, s_0001, s_0001_or_1812_282, s_0416, s_0416_or_1812_282, s_0434, s_0434_or_1812_282, s_0446, s_0446_or_1812_282, s_0511, s_0511_or_1812_282, s_0564, s_0564_or_1812_282, s_0569, s_0569_or_1812_282, s_0593, s_0593_or_1812_282, s_0619, s_0619_or_1812_282, s_0740, s_0740_or_1812_282, s_0743, s_0743_or_1812_282, s_0752, s_0752_or_1812_282, s_0863, s_0863_or_1812_282, s_0873, s_0873_or_1812_282, s_0877, s_0877_or_1812_282, s_0881, s_0881_or_1812_282, s_0889, s_0889_or_1812_282, s_0899, s_0899_or_1812_282, s_0907, s_0907_or_1812_282, s_0911, s_0911_or_1812_282, s_0920, s_0920_or_1812_282, s_0925, s_0925_or_1812_282, s_0929, s_0929_or_1812_282, s_0933, s_0933_or_1812_282, s_0936, s_0936_or_1812_282, s_0939, s_0939_or_1812_282, s_0943, s_0943_or_1812_282, s_0949, s_0949_or_1812_282, s_0952, s_0952_or_1812_282, s_0955, s_0955_or_1812_282, s_0960, s_0960_or_1812_282, s_1000, s_1000_or_1812_282, s_1011, s_1011_or_1812_282, s_1283, s_1283_or_1812_282, s_1347, s_1347_or_1812_282, s_1417, s_1417_or_1812_282, zero_flux_282));
    der(s_0942) = (intracellular * function_248(Keq_r_0970_247, Vmax_r_0970_247, intracellular, kmp_s_0942r_0970_247, kmp_s_1091r_0970_247, kmp_s_1434_br_0970_247, kms_s_0763_br_0970_247, kms_s_0867r_0970_247, kms_s_0899r_0970_247, kms_s_1096r_0970_247, s_0763_b, s_0867, s_0899, s_0942, s_1091, s_1096, s_1434_b)) - (intracellular * function_247(Keq_r_0969_246, Vmax_r_0969_246, intracellular, kmp_s_0185r_0969_246, kmp_s_0763_br_0969_246, kmp_s_0929r_0969_246, kmp_s_1087r_0969_246, kms_s_0942r_0969_246, kms_s_1082r_0969_246, kms_s_1434_br_0969_246, s_0185, s_0763_b, s_0929, s_0942, s_1082, s_1087, s_1434_b));
    der(s_0943) = (intracellular * function_141(Keq_r_0539_140, Vmax_r_0539_140, intracellular, kmp_s_0309r_0539_140, kmp_s_0943r_0539_140, kms_s_0307r_0539_140, kms_s_0740r_0539_140, kms_s_1434_br_0539_140, s_0307, s_0309, s_0740, s_0943, s_1434_b)) - (intracellular * function_83(Keq_r_0338_82, Vmax_r_0338_82, intracellular, kmp_s_0888r_0338_82, kmp_s_1434_br_0338_82, kms_s_0917r_0338_82, kms_s_0943r_0338_82, s_0888, s_0917, s_0943, s_1434_b)) - (intracellular * function_209(Keq_r_0853_208, Vmax_r_0853_208, intracellular, kmp_s_0511r_0853_208, kmp_s_0763_br_0853_208, kmp_s_1219r_0853_208, kms_s_0485r_0853_208, kms_s_0943r_0853_208, s_0485, s_0511, s_0763_b, s_0943, s_1219)) - (intracellular * function_249(Keq_r_0972_248, Vmax_r_0972_248, intracellular, kmp_s_0218r_0972_248, kmp_s_0470r_0972_248, kmp_s_0514r_0972_248, kms_s_0943r_0972_248, kms_s_1187r_0972_248, s_0218, s_0470, s_0514, s_0943, s_1187)) - (intracellular * function_268(Keq_r_1042_267, Vmax_r_1042_267, intracellular, kmp_s_0731r_1042_267, kmp_s_0952r_1042_267, kmp_s_1434_br_1042_267, kms_s_0088r_1042_267, kms_s_0943r_1042_267, s_0088, s_0731, s_0943, s_0952, s_1434_b)) - (0.25371 * intracellular * function_283(V_o_282, a_s_0001r_1812_282, a_s_0416r_1812_282, a_s_0434r_1812_282, a_s_0446r_1812_282, a_s_0511r_1812_282, a_s_0564r_1812_282, a_s_0569r_1812_282, a_s_0593r_1812_282, a_s_0619r_1812_282, a_s_0740r_1812_282, a_s_0743r_1812_282, a_s_0752r_1812_282, a_s_0863r_1812_282, a_s_0873r_1812_282, a_s_0877r_1812_282, a_s_0881r_1812_282, a_s_0889r_1812_282, a_s_0899r_1812_282, a_s_0907r_1812_282, a_s_0911r_1812_282, a_s_0920r_1812_282, a_s_0925r_1812_282, a_s_0929r_1812_282, a_s_0933r_1812_282, a_s_0936r_1812_282, a_s_0939r_1812_282, a_s_0943r_1812_282, a_s_0949r_1812_282, a_s_0952r_1812_282, a_s_0955r_1812_282, a_s_0960r_1812_282, a_s_1000r_1812_282, a_s_1011r_1812_282, a_s_1283r_1812_282, a_s_1347r_1812_282, a_s_1417r_1812_282, intracellular, s_0001, s_0001_or_1812_282, s_0416, s_0416_or_1812_282, s_0434, s_0434_or_1812_282, s_0446, s_0446_or_1812_282, s_0511, s_0511_or_1812_282, s_0564, s_0564_or_1812_282, s_0569, s_0569_or_1812_282, s_0593, s_0593_or_1812_282, s_0619, s_0619_or_1812_282, s_0740, s_0740_or_1812_282, s_0743, s_0743_or_1812_282, s_0752, s_0752_or_1812_282, s_0863, s_0863_or_1812_282, s_0873, s_0873_or_1812_282, s_0877, s_0877_or_1812_282, s_0881, s_0881_or_1812_282, s_0889, s_0889_or_1812_282, s_0899, s_0899_or_1812_282, s_0907, s_0907_or_1812_282, s_0911, s_0911_or_1812_282, s_0920, s_0920_or_1812_282, s_0925, s_0925_or_1812_282, s_0929, s_0929_or_1812_282, s_0933, s_0933_or_1812_282, s_0936, s_0936_or_1812_282, s_0939, s_0939_or_1812_282, s_0943, s_0943_or_1812_282, s_0949, s_0949_or_1812_282, s_0952, s_0952_or_1812_282, s_0955, s_0955_or_1812_282, s_0960, s_0960_or_1812_282, s_1000, s_1000_or_1812_282, s_1011, s_1011_or_1812_282, s_1283, s_1283_or_1812_282, s_1347, s_1347_or_1812_282, s_1417, s_1417_or_1812_282, zero_flux_282));
    der(s_0949) = (intracellular * function_260(Keq_r_1027_259, Vmax_r_1027_259, intracellular, kmp_s_0949r_1027_259, kmp_s_1207r_1027_259, kms_s_1122r_1027_259, kms_s_1434_br_1027_259, s_0949, s_1122, s_1207, s_1434_b)) - (intracellular * function_177(Keq_r_0667_176, Vmax_r_0667_176, intracellular, kmp_s_0183r_0667_176, kmp_s_0430r_0667_176, kms_s_0949r_0667_176, s_0183, s_0430, s_0949)) - (intracellular * function_259(Keq_r_1026_258, Vmax_r_1026_258, intracellular, kmp_s_0366r_1026_258, kmp_s_0740r_1026_258, kms_s_0949r_1026_258, s_0366, s_0740, s_0949)) - (0.19653 * intracellular * function_283(V_o_282, a_s_0001r_1812_282, a_s_0416r_1812_282, a_s_0434r_1812_282, a_s_0446r_1812_282, a_s_0511r_1812_282, a_s_0564r_1812_282, a_s_0569r_1812_282, a_s_0593r_1812_282, a_s_0619r_1812_282, a_s_0740r_1812_282, a_s_0743r_1812_282, a_s_0752r_1812_282, a_s_0863r_1812_282, a_s_0873r_1812_282, a_s_0877r_1812_282, a_s_0881r_1812_282, a_s_0889r_1812_282, a_s_0899r_1812_282, a_s_0907r_1812_282, a_s_0911r_1812_282, a_s_0920r_1812_282, a_s_0925r_1812_282, a_s_0929r_1812_282, a_s_0933r_1812_282, a_s_0936r_1812_282, a_s_0939r_1812_282, a_s_0943r_1812_282, a_s_0949r_1812_282, a_s_0952r_1812_282, a_s_0955r_1812_282, a_s_0960r_1812_282, a_s_1000r_1812_282, a_s_1011r_1812_282, a_s_1283r_1812_282, a_s_1347r_1812_282, a_s_1417r_1812_282, intracellular, s_0001, s_0001_or_1812_282, s_0416, s_0416_or_1812_282, s_0434, s_0434_or_1812_282, s_0446, s_0446_or_1812_282, s_0511, s_0511_or_1812_282, s_0564, s_0564_or_1812_282, s_0569, s_0569_or_1812_282, s_0593, s_0593_or_1812_282, s_0619, s_0619_or_1812_282, s_0740, s_0740_or_1812_282, s_0743, s_0743_or_1812_282, s_0752, s_0752_or_1812_282, s_0863, s_0863_or_1812_282, s_0873, s_0873_or_1812_282, s_0877, s_0877_or_1812_282, s_0881, s_0881_or_1812_282, s_0889, s_0889_or_1812_282, s_0899, s_0899_or_1812_282, s_0907, s_0907_or_1812_282, s_0911, s_0911_or_1812_282, s_0920, s_0920_or_1812_282, s_0925, s_0925_or_1812_282, s_0929, s_0929_or_1812_282, s_0933, s_0933_or_1812_282, s_0936, s_0936_or_1812_282, s_0939, s_0939_or_1812_282, s_0943, s_0943_or_1812_282, s_0949, s_0949_or_1812_282, s_0952, s_0952_or_1812_282, s_0955, s_0955_or_1812_282, s_0960, s_0960_or_1812_282, s_1000, s_1000_or_1812_282, s_1011, s_1011_or_1812_282, s_1283, s_1283_or_1812_282, s_1347, s_1347_or_1812_282, s_1417, s_1417_or_1812_282, zero_flux_282));
    der(s_0952) = (intracellular * function_268(Keq_r_1042_267, Vmax_r_1042_267, intracellular, kmp_s_0731r_1042_267, kmp_s_0952r_1042_267, kmp_s_1434_br_1042_267, kms_s_0088r_1042_267, kms_s_0943r_1042_267, s_0088, s_0731, s_0943, s_0952, s_1434_b)) - (0.028 * intracellular * function_283(V_o_282, a_s_0001r_1812_282, a_s_0416r_1812_282, a_s_0434r_1812_282, a_s_0446r_1812_282, a_s_0511r_1812_282, a_s_0564r_1812_282, a_s_0569r_1812_282, a_s_0593r_1812_282, a_s_0619r_1812_282, a_s_0740r_1812_282, a_s_0743r_1812_282, a_s_0752r_1812_282, a_s_0863r_1812_282, a_s_0873r_1812_282, a_s_0877r_1812_282, a_s_0881r_1812_282, a_s_0889r_1812_282, a_s_0899r_1812_282, a_s_0907r_1812_282, a_s_0911r_1812_282, a_s_0920r_1812_282, a_s_0925r_1812_282, a_s_0929r_1812_282, a_s_0933r_1812_282, a_s_0936r_1812_282, a_s_0939r_1812_282, a_s_0943r_1812_282, a_s_0949r_1812_282, a_s_0952r_1812_282, a_s_0955r_1812_282, a_s_0960r_1812_282, a_s_1000r_1812_282, a_s_1011r_1812_282, a_s_1283r_1812_282, a_s_1347r_1812_282, a_s_1417r_1812_282, intracellular, s_0001, s_0001_or_1812_282, s_0416, s_0416_or_1812_282, s_0434, s_0434_or_1812_282, s_0446, s_0446_or_1812_282, s_0511, s_0511_or_1812_282, s_0564, s_0564_or_1812_282, s_0569, s_0569_or_1812_282, s_0593, s_0593_or_1812_282, s_0619, s_0619_or_1812_282, s_0740, s_0740_or_1812_282, s_0743, s_0743_or_1812_282, s_0752, s_0752_or_1812_282, s_0863, s_0863_or_1812_282, s_0873, s_0873_or_1812_282, s_0877, s_0877_or_1812_282, s_0881, s_0881_or_1812_282, s_0889, s_0889_or_1812_282, s_0899, s_0899_or_1812_282, s_0907, s_0907_or_1812_282, s_0911, s_0911_or_1812_282, s_0920, s_0920_or_1812_282, s_0925, s_0925_or_1812_282, s_0929, s_0929_or_1812_282, s_0933, s_0933_or_1812_282, s_0936, s_0936_or_1812_282, s_0939, s_0939_or_1812_282, s_0943, s_0943_or_1812_282, s_0949, s_0949_or_1812_282, s_0952, s_0952_or_1812_282, s_0955, s_0955_or_1812_282, s_0960, s_0960_or_1812_282, s_1000, s_1000_or_1812_282, s_1011, s_1011_or_1812_282, s_1283, s_1283_or_1812_282, s_1347, s_1347_or_1812_282, s_1417, s_1417_or_1812_282, zero_flux_282));
    der(s_0955) = (intracellular * function_269(Keq_r_1050_268, Vmax_r_1050_268, intracellular, kmp_s_0185r_1050_268, kmp_s_0955r_1050_268, kms_s_0209r_1050_268, kms_s_0899r_1050_268, s_0185, s_0209, s_0899, s_0955)) - (0.096481 * intracellular * function_283(V_o_282, a_s_0001r_1812_282, a_s_0416r_1812_282, a_s_0434r_1812_282, a_s_0446r_1812_282, a_s_0511r_1812_282, a_s_0564r_1812_282, a_s_0569r_1812_282, a_s_0593r_1812_282, a_s_0619r_1812_282, a_s_0740r_1812_282, a_s_0743r_1812_282, a_s_0752r_1812_282, a_s_0863r_1812_282, a_s_0873r_1812_282, a_s_0877r_1812_282, a_s_0881r_1812_282, a_s_0889r_1812_282, a_s_0899r_1812_282, a_s_0907r_1812_282, a_s_0911r_1812_282, a_s_0920r_1812_282, a_s_0925r_1812_282, a_s_0929r_1812_282, a_s_0933r_1812_282, a_s_0936r_1812_282, a_s_0939r_1812_282, a_s_0943r_1812_282, a_s_0949r_1812_282, a_s_0952r_1812_282, a_s_0955r_1812_282, a_s_0960r_1812_282, a_s_1000r_1812_282, a_s_1011r_1812_282, a_s_1283r_1812_282, a_s_1347r_1812_282, a_s_1417r_1812_282, intracellular, s_0001, s_0001_or_1812_282, s_0416, s_0416_or_1812_282, s_0434, s_0434_or_1812_282, s_0446, s_0446_or_1812_282, s_0511, s_0511_or_1812_282, s_0564, s_0564_or_1812_282, s_0569, s_0569_or_1812_282, s_0593, s_0593_or_1812_282, s_0619, s_0619_or_1812_282, s_0740, s_0740_or_1812_282, s_0743, s_0743_or_1812_282, s_0752, s_0752_or_1812_282, s_0863, s_0863_or_1812_282, s_0873, s_0873_or_1812_282, s_0877, s_0877_or_1812_282, s_0881, s_0881_or_1812_282, s_0889, s_0889_or_1812_282, s_0899, s_0899_or_1812_282, s_0907, s_0907_or_1812_282, s_0911, s_0911_or_1812_282, s_0920, s_0920_or_1812_282, s_0925, s_0925_or_1812_282, s_0929, s_0929_or_1812_282, s_0933, s_0933_or_1812_282, s_0936, s_0936_or_1812_282, s_0939, s_0939_or_1812_282, s_0943, s_0943_or_1812_282, s_0949, s_0949_or_1812_282, s_0952, s_0952_or_1812_282, s_0955, s_0955_or_1812_282, s_0960, s_0960_or_1812_282, s_1000, s_1000_or_1812_282, s_1011, s_1011_or_1812_282, s_1283, s_1283_or_1812_282, s_1347, s_1347_or_1812_282, s_1417, s_1417_or_1812_282, zero_flux_282));
    der(s_0960) = (intracellular * function_273(Keq_r_1073_272, Vmax_r_1073_272, intracellular, kmp_s_0185r_1073_272, kmp_s_0960r_1073_272, kms_s_0238r_1073_272, kms_s_0899r_1073_272, s_0185, s_0238, s_0899, s_0960)) - (0.25728 * intracellular * function_283(V_o_282, a_s_0001r_1812_282, a_s_0416r_1812_282, a_s_0434r_1812_282, a_s_0446r_1812_282, a_s_0511r_1812_282, a_s_0564r_1812_282, a_s_0569r_1812_282, a_s_0593r_1812_282, a_s_0619r_1812_282, a_s_0740r_1812_282, a_s_0743r_1812_282, a_s_0752r_1812_282, a_s_0863r_1812_282, a_s_0873r_1812_282, a_s_0877r_1812_282, a_s_0881r_1812_282, a_s_0889r_1812_282, a_s_0899r_1812_282, a_s_0907r_1812_282, a_s_0911r_1812_282, a_s_0920r_1812_282, a_s_0925r_1812_282, a_s_0929r_1812_282, a_s_0933r_1812_282, a_s_0936r_1812_282, a_s_0939r_1812_282, a_s_0943r_1812_282, a_s_0949r_1812_282, a_s_0952r_1812_282, a_s_0955r_1812_282, a_s_0960r_1812_282, a_s_1000r_1812_282, a_s_1011r_1812_282, a_s_1283r_1812_282, a_s_1347r_1812_282, a_s_1417r_1812_282, intracellular, s_0001, s_0001_or_1812_282, s_0416, s_0416_or_1812_282, s_0434, s_0434_or_1812_282, s_0446, s_0446_or_1812_282, s_0511, s_0511_or_1812_282, s_0564, s_0564_or_1812_282, s_0569, s_0569_or_1812_282, s_0593, s_0593_or_1812_282, s_0619, s_0619_or_1812_282, s_0740, s_0740_or_1812_282, s_0743, s_0743_or_1812_282, s_0752, s_0752_or_1812_282, s_0863, s_0863_or_1812_282, s_0873, s_0873_or_1812_282, s_0877, s_0877_or_1812_282, s_0881, s_0881_or_1812_282, s_0889, s_0889_or_1812_282, s_0899, s_0899_or_1812_282, s_0907, s_0907_or_1812_282, s_0911, s_0911_or_1812_282, s_0920, s_0920_or_1812_282, s_0925, s_0925_or_1812_282, s_0929, s_0929_or_1812_282, s_0933, s_0933_or_1812_282, s_0936, s_0936_or_1812_282, s_0939, s_0939_or_1812_282, s_0943, s_0943_or_1812_282, s_0949, s_0949_or_1812_282, s_0952, s_0952_or_1812_282, s_0955, s_0955_or_1812_282, s_0960, s_0960_or_1812_282, s_1000, s_1000_or_1812_282, s_1011, s_1011_or_1812_282, s_1283, s_1283_or_1812_282, s_1347, s_1347_or_1812_282, s_1417, s_1417_or_1812_282, zero_flux_282));
    der(s_0963) = (intracellular * function_178(Keq_r_0673_177, Vmax_r_0673_177, intracellular, kmp_s_0963r_0673_177, kms_s_0040r_0673_177, s_0040, s_0963)) - (intracellular * function_87(Keq_r_0347_86, Vmax_r_0347_86, intracellular, kmp_s_0268r_0347_86, kmp_s_0689r_0347_86, kmp_s_1082r_0347_86, kmp_s_1434_br_0347_86, kms_s_0763_br_0347_86, kms_s_0963r_0347_86, kms_s_1087r_0347_86, kms_s_1160r_0347_86, s_0268, s_0689, s_0763_b, s_0963, s_1082, s_1087, s_1160, s_1434_b)) - (3.2e-05 * intracellular * function_285(V_o_284, a_s_0090r_1816_284, a_s_0124r_1816_284, a_s_0627r_1816_284, a_s_0632r_1816_284, a_s_0635r_1816_284, a_s_0641r_1816_284, a_s_0663r_1816_284, a_s_0669r_1816_284, a_s_0824r_1816_284, a_s_0963r_1816_284, a_s_1219r_1816_284, a_s_1228r_1816_284, a_s_1233r_1816_284, a_s_1399r_1816_284, a_s_1447r_1816_284, intracellular, s_0090, s_0090_or_1816_284, s_0124, s_0124_or_1816_284, s_0627, s_0627_or_1816_284, s_0632, s_0632_or_1816_284, s_0635, s_0635_or_1816_284, s_0641, s_0641_or_1816_284, s_0663, s_0663_or_1816_284, s_0669, s_0669_or_1816_284, s_0824, s_0824_or_1816_284, s_0963, s_0963_or_1816_284, s_1219, s_1219_or_1816_284, s_1228, s_1228_or_1816_284, s_1233, s_1233_or_1816_284, s_1399, s_1399_or_1816_284, s_1447, s_1447_or_1816_284, zero_flux_284));
    der(s_0968) = (intracellular * function_106(Keq_r_0418_105, Vmax_r_0418_105, intracellular, kmp_s_0470r_0418_105, kmp_s_0514r_0418_105, kmp_s_0968r_0418_105, kmp_s_1091r_0418_105, kmp_s_1434_br_0418_105, kms_s_0574r_0418_105, kms_s_0763_br_0418_105, kms_s_1005r_0418_105, kms_s_1096r_0418_105, s_0470, s_0514, s_0574, s_0763_b, s_0968, s_1005, s_1091, s_1096, s_1434_b)) - (intracellular * function_107(Keq_r_0419_106, Vmax_r_0419_106, intracellular, kmp_s_0470r_0419_106, kmp_s_0514r_0419_106, kmp_s_1028r_0419_106, kmp_s_1091r_0419_106, kmp_s_1434_br_0419_106, kms_s_0763_br_0419_106, kms_s_0968r_0419_106, kms_s_1005r_0419_106, kms_s_1096r_0419_106, s_0470, s_0514, s_0763_b, s_0968, s_1005, s_1028, s_1091, s_1096, s_1434_b));
    der(s_0977) = (intracellular * function_116(Keq_r_0464_115, Vmax_r_0464_115, intracellular, kmp_s_0470r_0464_115, kmp_s_0514r_0464_115, kmp_s_0977r_0464_115, kmp_s_1091r_0464_115, kmp_s_1434_br_0464_115, kms_s_0582r_0464_115, kms_s_0763_br_0464_115, kms_s_1005r_0464_115, kms_s_1096r_0464_115, s_0470, s_0514, s_0582, s_0763_b, s_0977, s_1005, s_1091, s_1096, s_1434_b)) - (intracellular * function_117(Keq_r_0465_116, Vmax_r_0465_116, intracellular, kmp_s_0470r_0465_116, kmp_s_0514r_0465_116, kmp_s_1044r_0465_116, kmp_s_1091r_0465_116, kmp_s_1434_br_0465_116, kms_s_0763_br_0465_116, kms_s_0977r_0465_116, kms_s_1005r_0465_116, kms_s_1096r_0465_116, s_0470, s_0514, s_0763_b, s_0977, s_1005, s_1044, s_1091, s_1096, s_1434_b));
    der(s_0987) = (intracellular * function_110(Keq_r_0425_109, Vmax_r_0425_109, intracellular, kmp_s_0470r_0425_109, kmp_s_0514r_0425_109, kmp_s_0987r_0425_109, kmp_s_1091r_0425_109, kmp_s_1434_br_0425_109, kms_s_0763_br_0425_109, kms_s_1005r_0425_109, kms_s_1096r_0425_109, kms_s_1329r_0425_109, s_0470, s_0514, s_0763_b, s_0987, s_1005, s_1091, s_1096, s_1329, s_1434_b)) - (intracellular * function_113(Keq_r_0437_112, Vmax_r_0437_112, intracellular, kmp_s_0434r_0437_112, kmp_s_0605r_0437_112, kmp_s_1355r_0437_112, kms_s_0446r_0437_112, kms_s_0514r_0437_112, kms_s_0987r_0437_112, s_0434, s_0446, s_0514, s_0605, s_0987, s_1355));
    der(s_1000) = 0.0;
    der(s_1005) = (intracellular * function_30(Keq_r_0123_29, Vmax_r_0123_29, intracellular, kmp_s_0400r_0123_29, kmp_s_0763_br_0123_29, kmp_s_1005r_0123_29, kmp_s_1207r_0123_29, kms_s_0380r_0123_29, kms_s_0446r_0123_29, kms_s_0458r_0123_29, s_0380, s_0400, s_0446, s_0458, s_0763_b, s_1005, s_1207)) - (intracellular * function_105(Keq_r_0417_104, Vmax_r_0417_104, intracellular, kmp_s_0470r_0417_104, kmp_s_0514r_0417_104, kmp_s_0574r_0417_104, kmp_s_1091r_0417_104, kmp_s_1434_br_0417_104, kms_s_0763_br_0417_104, kms_s_1005r_0417_104, kms_s_1096r_0417_104, kms_s_1132r_0417_104, s_0470, s_0514, s_0574, s_0763_b, s_1005, s_1091, s_1096, s_1132, s_1434_b)) - (intracellular * function_106(Keq_r_0418_105, Vmax_r_0418_105, intracellular, kmp_s_0470r_0418_105, kmp_s_0514r_0418_105, kmp_s_0968r_0418_105, kmp_s_1091r_0418_105, kmp_s_1434_br_0418_105, kms_s_0574r_0418_105, kms_s_0763_br_0418_105, kms_s_1005r_0418_105, kms_s_1096r_0418_105, s_0470, s_0514, s_0574, s_0763_b, s_0968, s_1005, s_1091, s_1096, s_1434_b)) - (intracellular * function_107(Keq_r_0419_106, Vmax_r_0419_106, intracellular, kmp_s_0470r_0419_106, kmp_s_0514r_0419_106, kmp_s_1028r_0419_106, kmp_s_1091r_0419_106, kmp_s_1434_br_0419_106, kms_s_0763_br_0419_106, kms_s_0968r_0419_106, kms_s_1005r_0419_106, kms_s_1096r_0419_106, s_0470, s_0514, s_0763_b, s_0968, s_1005, s_1028, s_1091, s_1096, s_1434_b)) - (intracellular * function_108(Keq_r_0421_107, Vmax_r_0421_107, intracellular, kmp_s_0470r_0421_107, kmp_s_0514r_0421_107, kmp_s_1091r_0421_107, kmp_s_1170r_0421_107, kmp_s_1434_br_0421_107, kms_s_0763_br_0421_107, kms_s_1005r_0421_107, kms_s_1028r_0421_107, kms_s_1096r_0421_107, s_0470, s_0514, s_0763_b, s_1005, s_1028, s_1091, s_1096, s_1170, s_1434_b)) - (intracellular * function_109(Keq_r_0423_108, Vmax_r_0423_108, intracellular, kmp_s_0470r_0423_108, kmp_s_0514r_0423_108, kmp_s_1091r_0423_108, kmp_s_1329r_0423_108, kmp_s_1434_br_0423_108, kms_s_0763_br_0423_108, kms_s_1005r_0423_108, kms_s_1096r_0423_108, kms_s_1170r_0423_108, s_0470, s_0514, s_0763_b, s_1005, s_1091, s_1096, s_1170, s_1329, s_1434_b)) - (3.0 * intracellular * function_110(Keq_r_0425_109, Vmax_r_0425_109, intracellular, kmp_s_0470r_0425_109, kmp_s_0514r_0425_109, kmp_s_0987r_0425_109, kmp_s_1091r_0425_109, kmp_s_1434_br_0425_109, kms_s_0763_br_0425_109, kms_s_1005r_0425_109, kms_s_1096r_0425_109, kms_s_1329r_0425_109, s_0470, s_0514, s_0763_b, s_0987, s_1005, s_1091, s_1096, s_1329, s_1434_b)) - (intracellular * function_111(Keq_r_0429_110, Vmax_r_0429_110, intracellular, kmp_s_0470r_0429_110, kmp_s_0514r_0429_110, kmp_s_0582r_0429_110, kmp_s_1091r_0429_110, kmp_s_1434_br_0429_110, kms_s_0763_br_0429_110, kms_s_1005r_0429_110, kms_s_1096r_0429_110, kms_s_1140r_0429_110, s_0470, s_0514, s_0582, s_0763_b, s_1005, s_1091, s_1096, s_1140, s_1434_b)) - (3.0 * intracellular * function_112(Keq_r_0430_111, Vmax_r_0430_111, intracellular, kmp_s_0470r_0430_111, kmp_s_0514r_0430_111, kmp_s_1091r_0430_111, kmp_s_1140r_0430_111, kmp_s_1434_br_0430_111, kms_s_0380r_0430_111, kms_s_0763_br_0430_111, kms_s_1005r_0430_111, kms_s_1096r_0430_111, s_0380, s_0470, s_0514, s_0763_b, s_1005, s_1091, s_1096, s_1140, s_1434_b)) - (intracellular * function_116(Keq_r_0464_115, Vmax_r_0464_115, intracellular, kmp_s_0470r_0464_115, kmp_s_0514r_0464_115, kmp_s_0977r_0464_115, kmp_s_1091r_0464_115, kmp_s_1434_br_0464_115, kms_s_0582r_0464_115, kms_s_0763_br_0464_115, kms_s_1005r_0464_115, kms_s_1096r_0464_115, s_0470, s_0514, s_0582, s_0763_b, s_0977, s_1005, s_1091, s_1096, s_1434_b)) - (intracellular * function_117(Keq_r_0465_116, Vmax_r_0465_116, intracellular, kmp_s_0470r_0465_116, kmp_s_0514r_0465_116, kmp_s_1044r_0465_116, kmp_s_1091r_0465_116, kmp_s_1434_br_0465_116, kms_s_0763_br_0465_116, kms_s_0977r_0465_116, kms_s_1005r_0465_116, kms_s_1096r_0465_116, s_0470, s_0514, s_0763_b, s_0977, s_1005, s_1044, s_1091, s_1096, s_1434_b)) - (intracellular * function_118(Keq_r_0466_117, Vmax_r_0466_117, intracellular, kmp_s_0470r_0466_117, kmp_s_0514r_0466_117, kmp_s_1091r_0466_117, kmp_s_1187r_0466_117, kmp_s_1434_br_0466_117, kms_s_0763_br_0466_117, kms_s_1005r_0466_117, kms_s_1044r_0466_117, kms_s_1096r_0466_117, s_0470, s_0514, s_0763_b, s_1005, s_1044, s_1091, s_1096, s_1187, s_1434_b)) - (intracellular * function_119(Keq_r_0467_118, Vmax_r_0467_118, intracellular, kmp_s_0470r_0467_118, kmp_s_0514r_0467_118, kmp_s_1091r_0467_118, kmp_s_1334r_0467_118, kmp_s_1434_br_0467_118, kms_s_0763_br_0467_118, kms_s_1005r_0467_118, kms_s_1096r_0467_118, kms_s_1187r_0467_118, s_0470, s_0514, s_0763_b, s_1005, s_1091, s_1096, s_1187, s_1334, s_1434_b));
    der(s_1011) = (intracellular * function_103(Keq_r_0394_102, Vmax_r_0394_102, intracellular, kmp_s_0616r_0394_102, kmp_s_0763_br_0394_102, kmp_s_1011r_0394_102, kms_s_0615r_0394_102, s_0615, s_0616, s_0763_b, s_1011)) - (0.82099 * intracellular * function_283(V_o_282, a_s_0001r_1812_282, a_s_0416r_1812_282, a_s_0434r_1812_282, a_s_0446r_1812_282, a_s_0511r_1812_282, a_s_0564r_1812_282, a_s_0569r_1812_282, a_s_0593r_1812_282, a_s_0619r_1812_282, a_s_0740r_1812_282, a_s_0743r_1812_282, a_s_0752r_1812_282, a_s_0863r_1812_282, a_s_0873r_1812_282, a_s_0877r_1812_282, a_s_0881r_1812_282, a_s_0889r_1812_282, a_s_0899r_1812_282, a_s_0907r_1812_282, a_s_0911r_1812_282, a_s_0920r_1812_282, a_s_0925r_1812_282, a_s_0929r_1812_282, a_s_0933r_1812_282, a_s_0936r_1812_282, a_s_0939r_1812_282, a_s_0943r_1812_282, a_s_0949r_1812_282, a_s_0952r_1812_282, a_s_0955r_1812_282, a_s_0960r_1812_282, a_s_1000r_1812_282, a_s_1011r_1812_282, a_s_1283r_1812_282, a_s_1347r_1812_282, a_s_1417r_1812_282, intracellular, s_0001, s_0001_or_1812_282, s_0416, s_0416_or_1812_282, s_0434, s_0434_or_1812_282, s_0446, s_0446_or_1812_282, s_0511, s_0511_or_1812_282, s_0564, s_0564_or_1812_282, s_0569, s_0569_or_1812_282, s_0593, s_0593_or_1812_282, s_0619, s_0619_or_1812_282, s_0740, s_0740_or_1812_282, s_0743, s_0743_or_1812_282, s_0752, s_0752_or_1812_282, s_0863, s_0863_or_1812_282, s_0873, s_0873_or_1812_282, s_0877, s_0877_or_1812_282, s_0881, s_0881_or_1812_282, s_0889, s_0889_or_1812_282, s_0899, s_0899_or_1812_282, s_0907, s_0907_or_1812_282, s_0911, s_0911_or_1812_282, s_0920, s_0920_or_1812_282, s_0925, s_0925_or_1812_282, s_0929, s_0929_or_1812_282, s_0933, s_0933_or_1812_282, s_0936, s_0936_or_1812_282, s_0939, s_0939_or_1812_282, s_0943, s_0943_or_1812_282, s_0949, s_0949_or_1812_282, s_0952, s_0952_or_1812_282, s_0955, s_0955_or_1812_282, s_0960, s_0960_or_1812_282, s_1000, s_1000_or_1812_282, s_1011, s_1011_or_1812_282, s_1283, s_1283_or_1812_282, s_1347, s_1347_or_1812_282, s_1417, s_1417_or_1812_282, zero_flux_282));
    der(s_1013) = (intracellular * function_193(Keq_r_0723_192, Vmax_r_0723_192, intracellular, kmp_s_1013r_0723_192, kms_s_0710r_0723_192, kms_s_0828r_0723_192, s_0710, s_0828, s_1013)) - (intracellular * function_165(Keq_r_0618_164, Vmax_r_0618_164, intracellular, kmp_s_0824r_0618_164, kms_s_0128r_0618_164, kms_s_1013r_0618_164, s_0128, s_0824, s_1013));
    der(s_1020) = (intracellular * function_194(Keq_r_0725_193, Vmax_r_0725_193, intracellular, kmp_s_1020r_0725_193, kmp_s_1207r_0725_193, kms_s_0128r_0725_193, kms_s_1434_br_0725_193, s_0128, s_1020, s_1207, s_1434_b)) - (intracellular * function_207(Keq_r_0847_206, Vmax_r_0847_206, intracellular, kmp_s_0090r_0847_206, kmp_s_0511r_0847_206, kmp_s_0763_br_0847_206, kms_s_0485r_0847_206, kms_s_1020r_0847_206, s_0090, s_0485, s_0511, s_0763_b, s_1020));
    der(s_1028) = (intracellular * function_107(Keq_r_0419_106, Vmax_r_0419_106, intracellular, kmp_s_0470r_0419_106, kmp_s_0514r_0419_106, kmp_s_1028r_0419_106, kmp_s_1091r_0419_106, kmp_s_1434_br_0419_106, kms_s_0763_br_0419_106, kms_s_0968r_0419_106, kms_s_1005r_0419_106, kms_s_1096r_0419_106, s_0470, s_0514, s_0763_b, s_0968, s_1005, s_1028, s_1091, s_1096, s_1434_b)) - (intracellular * function_108(Keq_r_0421_107, Vmax_r_0421_107, intracellular, kmp_s_0470r_0421_107, kmp_s_0514r_0421_107, kmp_s_1091r_0421_107, kmp_s_1170r_0421_107, kmp_s_1434_br_0421_107, kms_s_0763_br_0421_107, kms_s_1005r_0421_107, kms_s_1028r_0421_107, kms_s_1096r_0421_107, s_0470, s_0514, s_0763_b, s_1005, s_1028, s_1091, s_1096, s_1170, s_1434_b));
    der(s_1044) = (intracellular * function_117(Keq_r_0465_116, Vmax_r_0465_116, intracellular, kmp_s_0470r_0465_116, kmp_s_0514r_0465_116, kmp_s_1044r_0465_116, kmp_s_1091r_0465_116, kmp_s_1434_br_0465_116, kms_s_0763_br_0465_116, kms_s_0977r_0465_116, kms_s_1005r_0465_116, kms_s_1096r_0465_116, s_0470, s_0514, s_0763_b, s_0977, s_1005, s_1044, s_1091, s_1096, s_1434_b)) - (intracellular * function_118(Keq_r_0466_117, Vmax_r_0466_117, intracellular, kmp_s_0470r_0466_117, kmp_s_0514r_0466_117, kmp_s_1091r_0466_117, kmp_s_1187r_0466_117, kmp_s_1434_br_0466_117, kms_s_0763_br_0466_117, kms_s_1005r_0466_117, kms_s_1044r_0466_117, kms_s_1096r_0466_117, s_0470, s_0514, s_0763_b, s_1005, s_1044, s_1091, s_1096, s_1187, s_1434_b));
    der(s_1048) = (intracellular * function_228(Keq_r_0890_227, Vmax_r_0890_227, intracellular, kmp_s_0400r_0890_227, kmp_s_0763_br_0890_227, kmp_s_1048r_0890_227, kmp_s_1207r_0890_227, kms_s_0333r_0890_227, kms_s_0446r_0890_227, kms_s_0740r_0890_227, s_0333, s_0400, s_0446, s_0740, s_0763_b, s_1048, s_1207)) - (intracellular * function_227(Keq_r_0889_226, Vmax_r_0889_226, intracellular, kmp_s_0309r_0889_226, kmp_s_0763_br_0889_226, kmp_s_1052r_0889_226, kms_s_0122r_0889_226, kms_s_1048r_0889_226, s_0122, s_0309, s_0763_b, s_1048, s_1052));
    der(s_1051) = (intracellular * function_34(Keq_r_0133_33, Vmax_r_0133_33, intracellular, kmp_s_0185r_0133_33, kmp_s_1051r_0133_33, kms_s_0149r_0133_33, kms_s_0899r_0133_33, s_0149, s_0185, s_0899, s_1051)) - (intracellular * function_202(Keq_r_0791_201, Vmax_r_0791_201, intracellular, kmp_s_1071r_0791_201, kmp_s_1151r_0791_201, kms_s_0899r_0791_201, kms_s_1051r_0791_201, s_0899, s_1051, s_1071, s_1151));
    der(s_1052) = (intracellular * function_227(Keq_r_0889_226, Vmax_r_0889_226, intracellular, kmp_s_0309r_0889_226, kmp_s_0763_br_0889_226, kmp_s_1052r_0889_226, kms_s_0122r_0889_226, kms_s_1048r_0889_226, s_0122, s_0309, s_0763_b, s_1048, s_1052)) - (intracellular * function_226(Keq_r_0888_225, Vmax_r_0888_225, intracellular, kmp_s_0158r_0888_225, kmp_s_0400r_0888_225, kmp_s_0763_br_0888_225, kmp_s_0899r_0888_225, kmp_s_1207r_0888_225, kms_s_0446r_0888_225, kms_s_0907r_0888_225, kms_s_1052r_0888_225, kms_s_1434_br_0888_225, s_0158, s_0400, s_0446, s_0763_b, s_0899, s_0907, s_1052, s_1207, s_1434_b));
    der(s_1053) = (intracellular * function_40(Keq_r_0170_39, Vmax_r_0170_39, intracellular, kmp_s_0706r_0170_39, kmp_s_0763_br_0170_39, kmp_s_1053r_0170_39, kmp_s_1207r_0170_39, kms_s_0755r_0170_39, kms_s_0816r_0170_39, kms_s_0881r_0170_39, s_0706, s_0755, s_0763_b, s_0816, s_0881, s_1053, s_1207)) - (intracellular * function_41(Keq_r_0171_40, Vmax_r_0171_40, intracellular, kmp_s_0434r_0171_40, kmp_s_0692r_0171_40, kms_s_1053r_0171_40, s_0434, s_0692, s_1053));
    der(s_1060) = (intracellular * function_74(Keq_r_0287_73, Vmax_r_0287_73, intracellular, kmp_s_1060r_0287_73, kmp_s_1091r_0287_73, kmp_s_1434_br_0287_73, kms_s_0763_br_0287_73, kms_s_1080r_0287_73, kms_s_1096r_0287_73, kms_s_1160r_0287_73, s_0763_b, s_1060, s_1080, s_1091, s_1096, s_1160, s_1434_b)) - (intracellular * function_166(Keq_r_0621_165, Vmax_r_0621_165, intracellular, kmp_s_0828r_0621_165, kms_s_0128r_0621_165, kms_s_1060r_0621_165, s_0128, s_0828, s_1060));
    der(s_1066) = (intracellular * function_47(Keq_r_0220_46, Vmax_r_0220_46, intracellular, kmp_s_0605r_0220_46, kmp_s_1066r_0220_46, kms_s_0331r_0220_46, kms_s_0439r_0220_46, s_0331, s_0439, s_0605, s_1066)) - (intracellular * function_225(Keq_r_0887_224, Vmax_r_0887_224, intracellular, kmp_s_0078r_0887_224, kms_s_1066r_0887_224, s_0078, s_1066));
    der(s_1070) = (intracellular * function_33(Keq_r_0130_32, Vmax_r_0130_32, intracellular, kmp_s_0400r_0130_32, kmp_s_1070r_0130_32, kms_s_0446r_0130_32, kms_s_1071r_0130_32, s_0400, s_0446, s_1070, s_1071)) - (intracellular * function_196(Keq_r_0728_195, Vmax_r_0728_195, intracellular, kmp_s_0149r_0728_195, kmp_s_1091r_0728_195, kmp_s_1207r_0728_195, kms_s_0763_br_0728_195, kms_s_1070r_0728_195, kms_s_1096r_0728_195, s_0149, s_0763_b, s_1070, s_1091, s_1096, s_1207));
    der(s_1071) = (intracellular * function_202(Keq_r_0791_201, Vmax_r_0791_201, intracellular, kmp_s_1071r_0791_201, kmp_s_1151r_0791_201, kms_s_0899r_0791_201, kms_s_1051r_0791_201, s_0899, s_1051, s_1071, s_1151)) - (intracellular * function_33(Keq_r_0130_32, Vmax_r_0130_32, intracellular, kmp_s_0400r_0130_32, kmp_s_1070r_0130_32, kms_s_0446r_0130_32, kms_s_1071r_0130_32, s_0400, s_0446, s_1070, s_1071));
    der(s_1073) = (intracellular * function_52(Keq_r_0232_51, Vmax_r_0232_51, intracellular, kmp_s_0763_br_0232_51, kmp_s_1073r_0232_51, kmp_s_1207r_0232_51, kms_s_0469r_0232_51, kms_s_0881r_0232_51, s_0469, s_0763_b, s_0881, s_1073, s_1207)) - (intracellular * function_97(Keq_r_0381_96, Vmax_r_0381_96, intracellular, kmp_s_0064r_0381_96, kmp_s_1434_br_0381_96, kms_s_0763_br_0381_96, kms_s_1073r_0381_96, s_0064, s_0763_b, s_1073, s_1434_b));
    der(s_1080) = (intracellular * function_75(Keq_r_0290_74, Vmax_r_0290_74, intracellular, kmp_s_0514r_0290_74, kmp_s_0763_br_0290_74, kmp_s_1080r_0290_74, kms_s_1325r_0290_74, kms_s_1355r_0290_74, s_0514, s_0763_b, s_1080, s_1325, s_1355)) - (intracellular * function_74(Keq_r_0287_73, Vmax_r_0287_73, intracellular, kmp_s_1060r_0287_73, kmp_s_1091r_0287_73, kmp_s_1434_br_0287_73, kms_s_0763_br_0287_73, kms_s_1080r_0287_73, kms_s_1096r_0287_73, kms_s_1160r_0287_73, s_0763_b, s_1060, s_1080, s_1091, s_1096, s_1160, s_1434_b));
    der(s_1082) = (intracellular * function_19(Keq_r_0057_18, Vmax_r_0057_18, intracellular, kmp_s_0046r_0057_18, kmp_s_1082r_0057_18, kms_s_0247r_0057_18, kms_s_0763_br_0057_18, kms_s_1087r_0057_18, s_0046, s_0247, s_0763_b, s_1082, s_1087)) + (intracellular * function_20(Keq_r_0058_19, Vmax_r_0058_19, intracellular, kmp_s_0052r_0058_19, kmp_s_1082r_0058_19, kms_s_0257r_0058_19, kms_s_0763_br_0058_19, kms_s_1087r_0058_19, s_0052, s_0257, s_0763_b, s_1082, s_1087)) + (intracellular * function_21(Keq_r_0059_20, Vmax_r_0059_20, intracellular, kmp_s_0234r_0059_20, kmp_s_1082r_0059_20, kms_s_0254r_0059_20, kms_s_0763_br_0059_20, kms_s_1087r_0059_20, s_0234, s_0254, s_0763_b, s_1082, s_1087)) + (intracellular * function_22(Keq_r_0060_21, Vmax_r_0060_21, intracellular, kmp_s_0055r_0060_21, kmp_s_1082r_0060_21, kms_s_0261r_0060_21, kms_s_0763_br_0060_21, kms_s_1087r_0060_21, s_0055, s_0261, s_0763_b, s_1082, s_1087)) + (intracellular * function_44(Keq_r_0183_43, Vmax_r_0183_43, intracellular, kmp_s_0650r_0183_43, kmp_s_1082r_0183_43, kms_s_0366r_0183_43, kms_s_0763_br_0183_43, kms_s_1087r_0183_43, s_0366, s_0650, s_0763_b, s_1082, s_1087)) + (3.0 * intracellular * function_87(Keq_r_0347_86, Vmax_r_0347_86, intracellular, kmp_s_0268r_0347_86, kmp_s_0689r_0347_86, kmp_s_1082r_0347_86, kmp_s_1434_br_0347_86, kms_s_0763_br_0347_86, kms_s_0963r_0347_86, kms_s_1087r_0347_86, kms_s_1160r_0347_86, s_0268, s_0689, s_0763_b, s_0963, s_1082, s_1087, s_1160, s_1434_b)) + (intracellular * function_88(Keq_r_0351_87, Vmax_r_0351_87, intracellular, kmp_s_0530r_0351_87, kmp_s_1082r_0351_87, kms_s_0529r_0351_87, kms_s_0763_br_0351_87, kms_s_1087r_0351_87, s_0529, s_0530, s_0763_b, s_1082, s_1087)) + (intracellular * function_130(Keq_r_0510_129, Vmax_r_0510_129, intracellular, kmp_s_0899r_0510_129, kmp_s_1082r_0510_129, kms_s_0185r_0510_129, kms_s_0763_br_0510_129, kms_s_0907r_0510_129, kms_s_1087r_0510_129, s_0185, s_0763_b, s_0899, s_0907, s_1082, s_1087)) + (intracellular * function_131(Keq_r_0512_130, Vmax_r_0512_130, intracellular, kmp_s_0905r_0512_130, kmp_s_1082r_0512_130, kmp_s_1207r_0512_130, kms_s_0763_br_0512_130, kms_s_0894r_0512_130, kms_s_1087r_0512_130, s_0763_b, s_0894, s_0905, s_1082, s_1087, s_1207)) + (intracellular * function_138(Keq_r_0530_137, Vmax_r_0530_137, intracellular, kmp_s_1082r_0530_137, kmp_s_1315r_0530_137, kms_s_0735r_0530_137, kms_s_0763_br_0530_137, kms_s_1087r_0530_137, s_0735, s_0763_b, s_1082, s_1087, s_1315)) + (intracellular * function_154(Keq_r_0586_153, Vmax_r_0586_153, intracellular, kmp_s_0919r_0586_153, kmp_s_1082r_0586_153, kms_s_0763_br_0586_153, kms_s_0886r_0586_153, kms_s_1087r_0586_153, s_0763_b, s_0886, s_0919, s_1082, s_1087)) + (intracellular * function_173(Keq_r_0650_172, Vmax_r_0650_172, intracellular, kmp_s_0434r_0650_172, kmp_s_0605r_0650_172, kmp_s_0867r_0650_172, kmp_s_1082r_0650_172, kms_s_0446r_0650_172, kms_s_0763_br_0650_172, kms_s_0861r_0650_172, kms_s_1087r_0650_172, s_0434, s_0446, s_0605, s_0763_b, s_0861, s_0867, s_1082, s_1087)) + (intracellular * function_176(Keq_r_0661_175, Vmax_r_0661_175, intracellular, kmp_s_1082r_0661_175, kmp_s_1379r_0661_175, kms_s_0118r_0661_175, kms_s_0763_br_0661_175, kms_s_1087r_0661_175, s_0118, s_0763_b, s_1082, s_1087, s_1379)) + (intracellular * function_180(Keq_r_0688_179, Vmax_r_0688_179, intracellular, kmp_s_0069r_0688_179, kmp_s_1082r_0688_179, kms_s_0763_br_0688_179, kms_s_1087r_0688_179, kms_s_1156r_0688_179, s_0069, s_0763_b, s_1082, s_1087, s_1156)) + (intracellular * function_252(Keq_r_0991_251, Vmax_r_0991_251, intracellular, kmp_s_0040r_0991_251, kmp_s_1082r_0991_251, kmp_s_1434_br_0991_251, kms_s_0763_br_0991_251, kms_s_1087r_0991_251, kms_s_1160r_0991_251, kms_s_1327r_0991_251, s_0040, s_0763_b, s_1082, s_1087, s_1160, s_1327, s_1434_b)) - (intracellular * function_24(Keq_r_0064_23, Vmax_r_0064_23, intracellular, kmp_s_0010r_0064_23, kmp_s_0763_br_0064_23, kmp_s_1087r_0064_23, kms_s_0008r_0064_23, kms_s_1082r_0064_23, s_0008, s_0010, s_0763_b, s_1082, s_1087)) - (intracellular * function_62(Keq_r_0262_61, Vmax_r_0262_61, intracellular, kmp_s_0215r_0262_61, kmp_s_0470r_0262_61, kmp_s_0763_br_0262_61, kmp_s_1087r_0262_61, kms_s_0303r_0262_61, kms_s_1082r_0262_61, s_0215, s_0303, s_0470, s_0763_b, s_1082, s_1087)) - (intracellular * function_134(Vmax_r_0525_133, kms_s_0731r_0525_133, kms_s_1082r_0525_133, kms_s_1207r_0525_133, s_0731, s_1082, s_1207, s_0265, s_0763_b, s_1087, Keq_r_0525_133, kmp_s_0265r_0525_133, kmp_s_0763_br_0525_133, kmp_s_1087r_0525_133, s_0731, kmI_s_0731mr_0525_133, intracellular)) - (intracellular * function_140(Keq_r_0538_139, Vmax_r_0538_139, intracellular, kmp_s_0307r_0538_139, kmp_s_0430r_0538_139, kmp_s_0470r_0538_139, kmp_s_1087r_0538_139, kms_s_0309r_0538_139, kms_s_0740r_0538_139, kms_s_1082r_0538_139, s_0307, s_0309, s_0430, s_0470, s_0740, s_1082, s_1087)) - (2.0 * intracellular * function_148(Keq_r_0575_147, Vmax_r_0575_147, intracellular, kmp_s_0763_br_0575_147, kmp_s_0911r_0575_147, kmp_s_1087r_0575_147, kms_s_0915r_0575_147, kms_s_1082r_0575_147, kms_s_1434_br_0575_147, s_0763_b, s_0911, s_0915, s_1082, s_1087, s_1434_b)) - (intracellular * function_153(Keq_r_0585_152, Vmax_r_0585_152, intracellular, kmp_s_0180r_0585_152, kmp_s_0763_br_0585_152, kmp_s_1087r_0585_152, kms_s_0800r_0585_152, kms_s_1082r_0585_152, s_0180, s_0763_b, s_0800, s_1082, s_1087)) - (intracellular * function_162(Keq_r_0607_161, Vmax_r_0607_161, intracellular, kmp_s_0306r_0607_161, kmp_s_0763_br_0607_161, kmp_s_1087r_0607_161, kms_s_0816r_0607_161, kms_s_1082r_0607_161, kms_s_1434_br_0607_161, s_0306, s_0763_b, s_0816, s_1082, s_1087, s_1434_b)) - (intracellular * function_236(Keq_r_0940_235, Vmax_r_0940_235, intracellular, kmp_s_0380r_0940_235, kmp_s_0470r_0940_235, kmp_s_1087r_0940_235, kms_s_0514r_0940_235, kms_s_1082r_0940_235, kms_s_1277r_0940_235, s_0380, s_0470, s_0514, s_1082, s_1087, s_1277)) - (intracellular * function_247(Keq_r_0969_246, Vmax_r_0969_246, intracellular, kmp_s_0185r_0969_246, kmp_s_0763_br_0969_246, kmp_s_0929r_0969_246, kmp_s_1087r_0969_246, kms_s_0942r_0969_246, kms_s_1082r_0969_246, kms_s_1434_br_0969_246, s_0185, s_0763_b, s_0929, s_0942, s_1082, s_1087, s_1434_b));
    der(s_1087) = (intracellular * function_24(Keq_r_0064_23, Vmax_r_0064_23, intracellular, kmp_s_0010r_0064_23, kmp_s_0763_br_0064_23, kmp_s_1087r_0064_23, kms_s_0008r_0064_23, kms_s_1082r_0064_23, s_0008, s_0010, s_0763_b, s_1082, s_1087)) + (intracellular * function_62(Keq_r_0262_61, Vmax_r_0262_61, intracellular, kmp_s_0215r_0262_61, kmp_s_0470r_0262_61, kmp_s_0763_br_0262_61, kmp_s_1087r_0262_61, kms_s_0303r_0262_61, kms_s_1082r_0262_61, s_0215, s_0303, s_0470, s_0763_b, s_1082, s_1087)) + (intracellular * function_134(Vmax_r_0525_133, kms_s_0731r_0525_133, kms_s_1082r_0525_133, kms_s_1207r_0525_133, s_0731, s_1082, s_1207, s_0265, s_0763_b, s_1087, Keq_r_0525_133, kmp_s_0265r_0525_133, kmp_s_0763_br_0525_133, kmp_s_1087r_0525_133, s_0731, kmI_s_0731mr_0525_133, intracellular)) + (intracellular * function_140(Keq_r_0538_139, Vmax_r_0538_139, intracellular, kmp_s_0307r_0538_139, kmp_s_0430r_0538_139, kmp_s_0470r_0538_139, kmp_s_1087r_0538_139, kms_s_0309r_0538_139, kms_s_0740r_0538_139, kms_s_1082r_0538_139, s_0307, s_0309, s_0430, s_0470, s_0740, s_1082, s_1087)) + (2.0 * intracellular * function_148(Keq_r_0575_147, Vmax_r_0575_147, intracellular, kmp_s_0763_br_0575_147, kmp_s_0911r_0575_147, kmp_s_1087r_0575_147, kms_s_0915r_0575_147, kms_s_1082r_0575_147, kms_s_1434_br_0575_147, s_0763_b, s_0911, s_0915, s_1082, s_1087, s_1434_b)) + (intracellular * function_153(Keq_r_0585_152, Vmax_r_0585_152, intracellular, kmp_s_0180r_0585_152, kmp_s_0763_br_0585_152, kmp_s_1087r_0585_152, kms_s_0800r_0585_152, kms_s_1082r_0585_152, s_0180, s_0763_b, s_0800, s_1082, s_1087)) + (intracellular * function_162(Keq_r_0607_161, Vmax_r_0607_161, intracellular, kmp_s_0306r_0607_161, kmp_s_0763_br_0607_161, kmp_s_1087r_0607_161, kms_s_0816r_0607_161, kms_s_1082r_0607_161, kms_s_1434_br_0607_161, s_0306, s_0763_b, s_0816, s_1082, s_1087, s_1434_b)) + (intracellular * function_236(Keq_r_0940_235, Vmax_r_0940_235, intracellular, kmp_s_0380r_0940_235, kmp_s_0470r_0940_235, kmp_s_1087r_0940_235, kms_s_0514r_0940_235, kms_s_1082r_0940_235, kms_s_1277r_0940_235, s_0380, s_0470, s_0514, s_1082, s_1087, s_1277)) + (intracellular * function_247(Keq_r_0969_246, Vmax_r_0969_246, intracellular, kmp_s_0185r_0969_246, kmp_s_0763_br_0969_246, kmp_s_0929r_0969_246, kmp_s_1087r_0969_246, kms_s_0942r_0969_246, kms_s_1082r_0969_246, kms_s_1434_br_0969_246, s_0185, s_0763_b, s_0929, s_0942, s_1082, s_1087, s_1434_b)) - (intracellular * function_19(Keq_r_0057_18, Vmax_r_0057_18, intracellular, kmp_s_0046r_0057_18, kmp_s_1082r_0057_18, kms_s_0247r_0057_18, kms_s_0763_br_0057_18, kms_s_1087r_0057_18, s_0046, s_0247, s_0763_b, s_1082, s_1087)) - (intracellular * function_20(Keq_r_0058_19, Vmax_r_0058_19, intracellular, kmp_s_0052r_0058_19, kmp_s_1082r_0058_19, kms_s_0257r_0058_19, kms_s_0763_br_0058_19, kms_s_1087r_0058_19, s_0052, s_0257, s_0763_b, s_1082, s_1087)) - (intracellular * function_21(Keq_r_0059_20, Vmax_r_0059_20, intracellular, kmp_s_0234r_0059_20, kmp_s_1082r_0059_20, kms_s_0254r_0059_20, kms_s_0763_br_0059_20, kms_s_1087r_0059_20, s_0234, s_0254, s_0763_b, s_1082, s_1087)) - (intracellular * function_22(Keq_r_0060_21, Vmax_r_0060_21, intracellular, kmp_s_0055r_0060_21, kmp_s_1082r_0060_21, kms_s_0261r_0060_21, kms_s_0763_br_0060_21, kms_s_1087r_0060_21, s_0055, s_0261, s_0763_b, s_1082, s_1087)) - (intracellular * function_44(Keq_r_0183_43, Vmax_r_0183_43, intracellular, kmp_s_0650r_0183_43, kmp_s_1082r_0183_43, kms_s_0366r_0183_43, kms_s_0763_br_0183_43, kms_s_1087r_0183_43, s_0366, s_0650, s_0763_b, s_1082, s_1087)) - (3.0 * intracellular * function_87(Keq_r_0347_86, Vmax_r_0347_86, intracellular, kmp_s_0268r_0347_86, kmp_s_0689r_0347_86, kmp_s_1082r_0347_86, kmp_s_1434_br_0347_86, kms_s_0763_br_0347_86, kms_s_0963r_0347_86, kms_s_1087r_0347_86, kms_s_1160r_0347_86, s_0268, s_0689, s_0763_b, s_0963, s_1082, s_1087, s_1160, s_1434_b)) - (intracellular * function_88(Keq_r_0351_87, Vmax_r_0351_87, intracellular, kmp_s_0530r_0351_87, kmp_s_1082r_0351_87, kms_s_0529r_0351_87, kms_s_0763_br_0351_87, kms_s_1087r_0351_87, s_0529, s_0530, s_0763_b, s_1082, s_1087)) - (intracellular * function_130(Keq_r_0510_129, Vmax_r_0510_129, intracellular, kmp_s_0899r_0510_129, kmp_s_1082r_0510_129, kms_s_0185r_0510_129, kms_s_0763_br_0510_129, kms_s_0907r_0510_129, kms_s_1087r_0510_129, s_0185, s_0763_b, s_0899, s_0907, s_1082, s_1087)) - (intracellular * function_131(Keq_r_0512_130, Vmax_r_0512_130, intracellular, kmp_s_0905r_0512_130, kmp_s_1082r_0512_130, kmp_s_1207r_0512_130, kms_s_0763_br_0512_130, kms_s_0894r_0512_130, kms_s_1087r_0512_130, s_0763_b, s_0894, s_0905, s_1082, s_1087, s_1207)) - (intracellular * function_138(Keq_r_0530_137, Vmax_r_0530_137, intracellular, kmp_s_1082r_0530_137, kmp_s_1315r_0530_137, kms_s_0735r_0530_137, kms_s_0763_br_0530_137, kms_s_1087r_0530_137, s_0735, s_0763_b, s_1082, s_1087, s_1315)) - (intracellular * function_154(Keq_r_0586_153, Vmax_r_0586_153, intracellular, kmp_s_0919r_0586_153, kmp_s_1082r_0586_153, kms_s_0763_br_0586_153, kms_s_0886r_0586_153, kms_s_1087r_0586_153, s_0763_b, s_0886, s_0919, s_1082, s_1087)) - (intracellular * function_173(Keq_r_0650_172, Vmax_r_0650_172, intracellular, kmp_s_0434r_0650_172, kmp_s_0605r_0650_172, kmp_s_0867r_0650_172, kmp_s_1082r_0650_172, kms_s_0446r_0650_172, kms_s_0763_br_0650_172, kms_s_0861r_0650_172, kms_s_1087r_0650_172, s_0434, s_0446, s_0605, s_0763_b, s_0861, s_0867, s_1082, s_1087)) - (intracellular * function_176(Keq_r_0661_175, Vmax_r_0661_175, intracellular, kmp_s_1082r_0661_175, kmp_s_1379r_0661_175, kms_s_0118r_0661_175, kms_s_0763_br_0661_175, kms_s_1087r_0661_175, s_0118, s_0763_b, s_1082, s_1087, s_1379)) - (intracellular * function_180(Keq_r_0688_179, Vmax_r_0688_179, intracellular, kmp_s_0069r_0688_179, kmp_s_1082r_0688_179, kms_s_0763_br_0688_179, kms_s_1087r_0688_179, kms_s_1156r_0688_179, s_0069, s_0763_b, s_1082, s_1087, s_1156)) - (intracellular * function_252(Keq_r_0991_251, Vmax_r_0991_251, intracellular, kmp_s_0040r_0991_251, kmp_s_1082r_0991_251, kmp_s_1434_br_0991_251, kms_s_0763_br_0991_251, kms_s_1087r_0991_251, kms_s_1160r_0991_251, kms_s_1327r_0991_251, s_0040, s_0763_b, s_1082, s_1087, s_1160, s_1327, s_1434_b));
    der(s_1091) = (intracellular * function_6(Keq_r_0015_5, Vmax_r_0015_5, intracellular, kmp_s_0146r_0015_5, kmp_s_1091r_0015_5, kms_s_0145r_0015_5, kms_s_0763_br_0015_5, kms_s_1096r_0015_5, s_0145, s_0146, s_0763_b, s_1091, s_1096)) + (intracellular * function_18(Keq_r_0044_17, Vmax_r_0044_17, intracellular, kmp_s_1091r_0044_17, kmp_s_1325r_0044_17, kms_s_0218r_0044_17, kms_s_0763_br_0044_17, kms_s_1096r_0044_17, s_0218, s_0763_b, s_1091, s_1096, s_1325)) + (intracellular * function_26(Keq_r_0093_25, Vmax_r_0093_25, intracellular, kmp_s_0328r_0093_25, kmp_s_1091r_0093_25, kms_s_0307r_0093_25, kms_s_0763_br_0093_25, kms_s_1096r_0093_25, s_0307, s_0328, s_0763_b, s_1091, s_1096)) + (intracellular * function_27(Keq_r_0111_26, Vmax_r_0111_26, intracellular, kmp_s_0018r_0111_26, kmp_s_1091r_0111_26, kms_s_0150r_0111_26, kms_s_0763_br_0111_26, kms_s_1096r_0111_26, s_0018, s_0150, s_0763_b, s_1091, s_1096)) + (intracellular * function_55(Keq_r_0238_54, Vmax_r_0238_54, intracellular, kmp_s_0886r_0238_54, kmp_s_1091r_0238_54, kmp_s_1207r_0238_54, kms_s_0301r_0238_54, kms_s_0763_br_0238_54, kms_s_1096r_0238_54, s_0301, s_0763_b, s_0886, s_1091, s_1096, s_1207)) + (intracellular * function_60(Keq_r_0258_59, Vmax_r_0258_59, intracellular, kmp_s_0124r_0258_59, kmp_s_1091r_0258_59, kms_s_0268r_0258_59, kms_s_0763_br_0258_59, kms_s_1096r_0258_59, s_0124, s_0268, s_0763_b, s_1091, s_1096)) + (intracellular * function_63(Keq_r_0263_62, Vmax_r_0263_62, intracellular, kmp_s_0302r_0263_62, kmp_s_1091r_0263_62, kms_s_0215r_0263_62, kms_s_0763_br_0263_62, kms_s_1096r_0263_62, s_0215, s_0302, s_0763_b, s_1091, s_1096)) + (intracellular * function_64(Keq_r_0264_63, Vmax_r_0264_63, intracellular, kmp_s_1091r_0264_63, kmp_s_1447r_0264_63, kms_s_0763_br_0264_63, kms_s_1096r_0264_63, kms_s_1458r_0264_63, s_0763_b, s_1091, s_1096, s_1447, s_1458)) + (intracellular * function_65(Keq_r_0265_64, Vmax_r_0265_64, intracellular, kmp_s_1091r_0265_64, kmp_s_1434_br_0265_64, kmp_s_1455r_0265_64, kms_s_0302r_0265_64, kms_s_0763_br_0265_64, kms_s_1096r_0265_64, kms_s_1160r_0265_64, s_0302, s_0763_b, s_1091, s_1096, s_1160, s_1434_b, s_1455)) + (intracellular * function_66(Keq_r_0266_65, Vmax_r_0266_65, intracellular, kmp_s_1091r_0266_65, kmp_s_1434_br_0266_65, kmp_s_1456r_0266_65, kms_s_0763_br_0266_65, kms_s_1096r_0266_65, kms_s_1160r_0266_65, kms_s_1455r_0266_65, s_0763_b, s_1091, s_1096, s_1160, s_1434_b, s_1455, s_1456)) + (intracellular * function_67(Keq_r_0267_66, Vmax_r_0267_66, intracellular, kmp_s_1091r_0267_66, kmp_s_1434_br_0267_66, kmp_s_1457r_0267_66, kms_s_0763_br_0267_66, kms_s_1096r_0267_66, kms_s_1160r_0267_66, kms_s_1456r_0267_66, s_0763_b, s_1091, s_1096, s_1160, s_1434_b, s_1456, s_1457)) + (3.0 * intracellular * function_68(Keq_r_0268_67, Vmax_r_0268_67, intracellular, kmp_s_0303r_0268_67, kmp_s_1091r_0268_67, kmp_s_1434_br_0268_67, kms_s_0124r_0268_67, kms_s_0763_br_0268_67, kms_s_1096r_0268_67, kms_s_1160r_0268_67, s_0124, s_0303, s_0763_b, s_1091, s_1096, s_1160, s_1434_b)) + (intracellular * function_70(Keq_r_0271_69, Vmax_r_0271_69, intracellular, kmp_s_0635r_0271_69, kmp_s_1091r_0271_69, kms_s_0632r_0271_69, kms_s_0763_br_0271_69, kms_s_1096r_0271_69, s_0632, s_0635, s_0763_b, s_1091, s_1096)) + (intracellular * function_74(Keq_r_0287_73, Vmax_r_0287_73, intracellular, kmp_s_1060r_0287_73, kmp_s_1091r_0287_73, kmp_s_1434_br_0287_73, kms_s_0763_br_0287_73, kms_s_1080r_0287_73, kms_s_1096r_0287_73, kms_s_1160r_0287_73, s_0763_b, s_1060, s_1080, s_1091, s_1096, s_1160, s_1434_b)) + (intracellular * function_96(Keq_r_0375_95, Vmax_r_0375_95, intracellular, kmp_s_0309r_0375_95, kmp_s_1091r_0375_95, kms_s_0601r_0375_95, kms_s_0763_br_0375_95, kms_s_1096r_0375_95, s_0309, s_0601, s_0763_b, s_1091, s_1096)) + (2.0 * intracellular * function_105(Keq_r_0417_104, Vmax_r_0417_104, intracellular, kmp_s_0470r_0417_104, kmp_s_0514r_0417_104, kmp_s_0574r_0417_104, kmp_s_1091r_0417_104, kmp_s_1434_br_0417_104, kms_s_0763_br_0417_104, kms_s_1005r_0417_104, kms_s_1096r_0417_104, kms_s_1132r_0417_104, s_0470, s_0514, s_0574, s_0763_b, s_1005, s_1091, s_1096, s_1132, s_1434_b)) + (2.0 * intracellular * function_106(Keq_r_0418_105, Vmax_r_0418_105, intracellular, kmp_s_0470r_0418_105, kmp_s_0514r_0418_105, kmp_s_0968r_0418_105, kmp_s_1091r_0418_105, kmp_s_1434_br_0418_105, kms_s_0574r_0418_105, kms_s_0763_br_0418_105, kms_s_1005r_0418_105, kms_s_1096r_0418_105, s_0470, s_0514, s_0574, s_0763_b, s_0968, s_1005, s_1091, s_1096, s_1434_b)) + (2.0 * intracellular * function_107(Keq_r_0419_106, Vmax_r_0419_106, intracellular, kmp_s_0470r_0419_106, kmp_s_0514r_0419_106, kmp_s_1028r_0419_106, kmp_s_1091r_0419_106, kmp_s_1434_br_0419_106, kms_s_0763_br_0419_106, kms_s_0968r_0419_106, kms_s_1005r_0419_106, kms_s_1096r_0419_106, s_0470, s_0514, s_0763_b, s_0968, s_1005, s_1028, s_1091, s_1096, s_1434_b)) + (2.0 * intracellular * function_108(Keq_r_0421_107, Vmax_r_0421_107, intracellular, kmp_s_0470r_0421_107, kmp_s_0514r_0421_107, kmp_s_1091r_0421_107, kmp_s_1170r_0421_107, kmp_s_1434_br_0421_107, kms_s_0763_br_0421_107, kms_s_1005r_0421_107, kms_s_1028r_0421_107, kms_s_1096r_0421_107, s_0470, s_0514, s_0763_b, s_1005, s_1028, s_1091, s_1096, s_1170, s_1434_b)) + (2.0 * intracellular * function_109(Keq_r_0423_108, Vmax_r_0423_108, intracellular, kmp_s_0470r_0423_108, kmp_s_0514r_0423_108, kmp_s_1091r_0423_108, kmp_s_1329r_0423_108, kmp_s_1434_br_0423_108, kms_s_0763_br_0423_108, kms_s_1005r_0423_108, kms_s_1096r_0423_108, kms_s_1170r_0423_108, s_0470, s_0514, s_0763_b, s_1005, s_1091, s_1096, s_1170, s_1329, s_1434_b)) + (6.0 * intracellular * function_110(Keq_r_0425_109, Vmax_r_0425_109, intracellular, kmp_s_0470r_0425_109, kmp_s_0514r_0425_109, kmp_s_0987r_0425_109, kmp_s_1091r_0425_109, kmp_s_1434_br_0425_109, kms_s_0763_br_0425_109, kms_s_1005r_0425_109, kms_s_1096r_0425_109, kms_s_1329r_0425_109, s_0470, s_0514, s_0763_b, s_0987, s_1005, s_1091, s_1096, s_1329, s_1434_b)) + (2.0 * intracellular * function_111(Keq_r_0429_110, Vmax_r_0429_110, intracellular, kmp_s_0470r_0429_110, kmp_s_0514r_0429_110, kmp_s_0582r_0429_110, kmp_s_1091r_0429_110, kmp_s_1434_br_0429_110, kms_s_0763_br_0429_110, kms_s_1005r_0429_110, kms_s_1096r_0429_110, kms_s_1140r_0429_110, s_0470, s_0514, s_0582, s_0763_b, s_1005, s_1091, s_1096, s_1140, s_1434_b)) + (6.0 * intracellular * function_112(Keq_r_0430_111, Vmax_r_0430_111, intracellular, kmp_s_0470r_0430_111, kmp_s_0514r_0430_111, kmp_s_1091r_0430_111, kmp_s_1140r_0430_111, kmp_s_1434_br_0430_111, kms_s_0380r_0430_111, kms_s_0763_br_0430_111, kms_s_1005r_0430_111, kms_s_1096r_0430_111, s_0380, s_0470, s_0514, s_0763_b, s_1005, s_1091, s_1096, s_1140, s_1434_b)) + (2.0 * intracellular * function_116(Keq_r_0464_115, Vmax_r_0464_115, intracellular, kmp_s_0470r_0464_115, kmp_s_0514r_0464_115, kmp_s_0977r_0464_115, kmp_s_1091r_0464_115, kmp_s_1434_br_0464_115, kms_s_0582r_0464_115, kms_s_0763_br_0464_115, kms_s_1005r_0464_115, kms_s_1096r_0464_115, s_0470, s_0514, s_0582, s_0763_b, s_0977, s_1005, s_1091, s_1096, s_1434_b)) + (2.0 * intracellular * function_117(Keq_r_0465_116, Vmax_r_0465_116, intracellular, kmp_s_0470r_0465_116, kmp_s_0514r_0465_116, kmp_s_1044r_0465_116, kmp_s_1091r_0465_116, kmp_s_1434_br_0465_116, kms_s_0763_br_0465_116, kms_s_0977r_0465_116, kms_s_1005r_0465_116, kms_s_1096r_0465_116, s_0470, s_0514, s_0763_b, s_0977, s_1005, s_1044, s_1091, s_1096, s_1434_b)) + (2.0 * intracellular * function_118(Keq_r_0466_117, Vmax_r_0466_117, intracellular, kmp_s_0470r_0466_117, kmp_s_0514r_0466_117, kmp_s_1091r_0466_117, kmp_s_1187r_0466_117, kmp_s_1434_br_0466_117, kms_s_0763_br_0466_117, kms_s_1005r_0466_117, kms_s_1044r_0466_117, kms_s_1096r_0466_117, s_0470, s_0514, s_0763_b, s_1005, s_1044, s_1091, s_1096, s_1187, s_1434_b)) + (2.0 * intracellular * function_119(Keq_r_0467_118, Vmax_r_0467_118, intracellular, kmp_s_0470r_0467_118, kmp_s_0514r_0467_118, kmp_s_1091r_0467_118, kmp_s_1334r_0467_118, kmp_s_1434_br_0467_118, kms_s_0763_br_0467_118, kms_s_1005r_0467_118, kms_s_1096r_0467_118, kms_s_1187r_0467_118, s_0470, s_0514, s_0763_b, s_1005, s_1091, s_1096, s_1187, s_1334, s_1434_b)) + (intracellular * function_129(Keq_r_0509_128, Vmax_r_0509_128, intracellular, kmp_s_0899r_0509_128, kmp_s_1091r_0509_128, kmp_s_1434_br_0509_128, kms_s_0185r_0509_128, kms_s_0430r_0509_128, kms_s_0763_br_0509_128, kms_s_1096r_0509_128, s_0185, s_0430, s_0763_b, s_0899, s_1091, s_1096, s_1434_b)) + (2.0 * intracellular * function_157(Keq_r_0598_156, Vmax_r_0598_156, intracellular, kmp_s_0031r_0598_156, kmp_s_0514r_0598_156, kmp_s_1091r_0598_156, kms_s_0225r_0598_156, kms_s_0763_br_0598_156, kms_s_1096r_0598_156, s_0031, s_0225, s_0514, s_0763_b, s_1091, s_1096)) + (intracellular * function_171(Keq_r_0640_170, Vmax_r_0640_170, intracellular, kmp_s_0007r_0640_170, kmp_s_1091r_0640_170, kms_s_0042r_0640_170, kms_s_0763_br_0640_170, kms_s_1096r_0640_170, s_0007, s_0042, s_0763_b, s_1091, s_1096)) + (intracellular * function_196(Keq_r_0728_195, Vmax_r_0728_195, intracellular, kmp_s_0149r_0728_195, kmp_s_1091r_0728_195, kmp_s_1207r_0728_195, kms_s_0763_br_0728_195, kms_s_1070r_0728_195, kms_s_1096r_0728_195, s_0149, s_0763_b, s_1070, s_1091, s_1096, s_1207)) + (intracellular * function_233(Keq_r_0936_232, Vmax_r_0936_232, intracellular, kmp_s_0939r_0936_232, kmp_s_1091r_0936_232, kms_s_0120r_0936_232, kms_s_0763_br_0936_232, kms_s_1096r_0936_232, s_0120, s_0763_b, s_0939, s_1091, s_1096)) + (intracellular * function_248(Keq_r_0970_247, Vmax_r_0970_247, intracellular, kmp_s_0942r_0970_247, kmp_s_1091r_0970_247, kmp_s_1434_br_0970_247, kms_s_0763_br_0970_247, kms_s_0867r_0970_247, kms_s_0899r_0970_247, kms_s_1096r_0970_247, s_0763_b, s_0867, s_0899, s_0942, s_1091, s_1096, s_1434_b)) + (intracellular * function_250(Keq_r_0976_249, Vmax_r_0976_249, intracellular, kmp_s_1091r_0976_249, kmp_s_1306r_0976_249, kms_s_0217r_0976_249, kms_s_0763_br_0976_249, kms_s_1096r_0976_249, s_0217, s_0763_b, s_1091, s_1096, s_1306)) + (intracellular * function_253(Keq_r_0993_252, Vmax_r_0993_252, intracellular, kmp_s_0605r_0993_252, kmp_s_1091r_0993_252, kmp_s_1327r_0993_252, kms_s_0195r_0993_252, kms_s_0763_br_0993_252, kms_s_1096r_0993_252, s_0195, s_0605, s_0763_b, s_1091, s_1096, s_1327)) + (3.0 * intracellular * function_257(Keq_r_1008_256, Vmax_r_1008_256, intracellular, kmp_s_0805r_1008_256, kmp_s_1091r_1008_256, kmp_s_1434_br_1008_256, kms_s_0763_br_1008_256, kms_s_1096r_1008_256, kms_s_1349r_1008_256, s_0763_b, s_0805, s_1091, s_1096, s_1349, s_1434_b)) + (intracellular * function_258(Keq_r_1024_257, Vmax_r_1024_257, intracellular, kmp_s_1091r_1024_257, kmp_s_1521r_1024_257, kms_s_0763_br_1024_257, kms_s_1096r_1024_257, kms_s_1517r_1024_257, s_0763_b, s_1091, s_1096, s_1517, s_1521)) - (intracellular * function_45(Keq_r_0191_44, Vmax_r_0191_44, intracellular, kmp_s_0369r_0191_44, kmp_s_0763_br_0191_44, kmp_s_1096r_0191_44, kms_s_0366r_0191_44, kms_s_1091r_0191_44, kms_s_1434_br_0191_44, s_0366, s_0369, s_0763_b, s_1091, s_1096, s_1434_b)) - (intracellular * function_61(Keq_r_0261_60, Vmax_r_0261_60, intracellular, kmp_s_0470r_0261_60, kmp_s_0763_br_0261_60, kmp_s_1096r_0261_60, kmp_s_1458r_0261_60, kms_s_1091r_0261_60, kms_s_1457r_0261_60, s_0470, s_0763_b, s_1091, s_1096, s_1457, s_1458)) - (intracellular * function_89(Keq_r_0352_88, Vmax_r_0352_88, intracellular, kmp_s_0529r_0352_88, kmp_s_0763_br_0352_88, kmp_s_1096r_0352_88, kms_s_0530r_0352_88, kms_s_1091r_0352_88, s_0529, s_0530, s_0763_b, s_1091, s_1096)) - (intracellular * function_135(Keq_r_0526_134, Vmax_r_0526_134, intracellular, kmp_s_0734r_0526_134, kmp_s_0763_br_0526_134, kmp_s_1096r_0526_134, kms_s_0732r_0526_134, kms_s_1091r_0526_134, s_0732, s_0734, s_0763_b, s_1091, s_1096)) - (intracellular * function_167(Keq_r_0630_166, Vmax_r_0630_166, intracellular, kmp_s_0185r_0630_166, kmp_s_0470r_0630_166, kmp_s_1096r_0630_166, kms_s_0847r_0630_166, kms_s_1091r_0630_166, s_0185, s_0470, s_0847, s_1091, s_1096)) - (intracellular * function_175(Keq_r_0660_174, Vmax_r_0660_174, intracellular, kmp_s_0118r_0660_174, kmp_s_0763_br_0660_174, kmp_s_1096r_0660_174, kms_s_1091r_0660_174, kms_s_1379r_0660_174, s_0118, s_0763_b, s_1091, s_1096, s_1379)) - (intracellular * function_186(Keq_r_0707_185, Vmax_r_0707_185, intracellular, kmp_s_0015r_0707_185, kmp_s_1096r_0707_185, kms_s_0307r_0707_185, kms_s_1091r_0707_185, s_0015, s_0307, s_1091, s_1096)) - (intracellular * function_189(Keq_r_0719_188, Vmax_r_0719_188, intracellular, kmp_s_0247r_0719_188, kmp_s_0763_br_0719_188, kmp_s_1096r_0719_188, kms_s_0046r_0719_188, kms_s_1091r_0719_188, s_0046, s_0247, s_0763_b, s_1091, s_1096)) - (intracellular * function_190(Keq_r_0720_189, Vmax_r_0720_189, intracellular, kmp_s_0257r_0720_189, kmp_s_0763_br_0720_189, kmp_s_1096r_0720_189, kms_s_0052r_0720_189, kms_s_1091r_0720_189, s_0052, s_0257, s_0763_b, s_1091, s_1096)) - (intracellular * function_191(Keq_r_0721_190, Vmax_r_0721_190, intracellular, kmp_s_0254r_0721_190, kmp_s_0763_br_0721_190, kmp_s_1096r_0721_190, kms_s_0234r_0721_190, kms_s_1091r_0721_190, s_0234, s_0254, s_0763_b, s_1091, s_1096)) - (intracellular * function_192(Keq_r_0722_191, Vmax_r_0722_191, intracellular, kmp_s_0261r_0722_191, kmp_s_0763_br_0722_191, kmp_s_1096r_0722_191, kms_s_0055r_0722_191, kms_s_1091r_0722_191, s_0055, s_0261, s_0763_b, s_1091, s_1096)) - (intracellular * function_231(Keq_r_0913_230, Vmax_r_0913_230, intracellular, kmp_s_0209r_0913_230, kmp_s_0470r_0913_230, kmp_s_1096r_0913_230, kms_s_1091r_0913_230, kms_s_1258r_0913_230, s_0209, s_0470, s_1091, s_1096, s_1258));
    der(s_1096) = (intracellular * function_45(Keq_r_0191_44, Vmax_r_0191_44, intracellular, kmp_s_0369r_0191_44, kmp_s_0763_br_0191_44, kmp_s_1096r_0191_44, kms_s_0366r_0191_44, kms_s_1091r_0191_44, kms_s_1434_br_0191_44, s_0366, s_0369, s_0763_b, s_1091, s_1096, s_1434_b)) + (intracellular * function_61(Keq_r_0261_60, Vmax_r_0261_60, intracellular, kmp_s_0470r_0261_60, kmp_s_0763_br_0261_60, kmp_s_1096r_0261_60, kmp_s_1458r_0261_60, kms_s_1091r_0261_60, kms_s_1457r_0261_60, s_0470, s_0763_b, s_1091, s_1096, s_1457, s_1458)) + (intracellular * function_89(Keq_r_0352_88, Vmax_r_0352_88, intracellular, kmp_s_0529r_0352_88, kmp_s_0763_br_0352_88, kmp_s_1096r_0352_88, kms_s_0530r_0352_88, kms_s_1091r_0352_88, s_0529, s_0530, s_0763_b, s_1091, s_1096)) + (intracellular * function_135(Keq_r_0526_134, Vmax_r_0526_134, intracellular, kmp_s_0734r_0526_134, kmp_s_0763_br_0526_134, kmp_s_1096r_0526_134, kms_s_0732r_0526_134, kms_s_1091r_0526_134, s_0732, s_0734, s_0763_b, s_1091, s_1096)) + (intracellular * function_167(Keq_r_0630_166, Vmax_r_0630_166, intracellular, kmp_s_0185r_0630_166, kmp_s_0470r_0630_166, kmp_s_1096r_0630_166, kms_s_0847r_0630_166, kms_s_1091r_0630_166, s_0185, s_0470, s_0847, s_1091, s_1096)) + (intracellular * function_175(Keq_r_0660_174, Vmax_r_0660_174, intracellular, kmp_s_0118r_0660_174, kmp_s_0763_br_0660_174, kmp_s_1096r_0660_174, kms_s_1091r_0660_174, kms_s_1379r_0660_174, s_0118, s_0763_b, s_1091, s_1096, s_1379)) + (intracellular * function_186(Keq_r_0707_185, Vmax_r_0707_185, intracellular, kmp_s_0015r_0707_185, kmp_s_1096r_0707_185, kms_s_0307r_0707_185, kms_s_1091r_0707_185, s_0015, s_0307, s_1091, s_1096)) + (intracellular * function_189(Keq_r_0719_188, Vmax_r_0719_188, intracellular, kmp_s_0247r_0719_188, kmp_s_0763_br_0719_188, kmp_s_1096r_0719_188, kms_s_0046r_0719_188, kms_s_1091r_0719_188, s_0046, s_0247, s_0763_b, s_1091, s_1096)) + (intracellular * function_190(Keq_r_0720_189, Vmax_r_0720_189, intracellular, kmp_s_0257r_0720_189, kmp_s_0763_br_0720_189, kmp_s_1096r_0720_189, kms_s_0052r_0720_189, kms_s_1091r_0720_189, s_0052, s_0257, s_0763_b, s_1091, s_1096)) + (intracellular * function_191(Keq_r_0721_190, Vmax_r_0721_190, intracellular, kmp_s_0254r_0721_190, kmp_s_0763_br_0721_190, kmp_s_1096r_0721_190, kms_s_0234r_0721_190, kms_s_1091r_0721_190, s_0234, s_0254, s_0763_b, s_1091, s_1096)) + (intracellular * function_192(Keq_r_0722_191, Vmax_r_0722_191, intracellular, kmp_s_0261r_0722_191, kmp_s_0763_br_0722_191, kmp_s_1096r_0722_191, kms_s_0055r_0722_191, kms_s_1091r_0722_191, s_0055, s_0261, s_0763_b, s_1091, s_1096)) + (intracellular * function_231(Keq_r_0913_230, Vmax_r_0913_230, intracellular, kmp_s_0209r_0913_230, kmp_s_0470r_0913_230, kmp_s_1096r_0913_230, kms_s_1091r_0913_230, kms_s_1258r_0913_230, s_0209, s_0470, s_1091, s_1096, s_1258)) - (intracellular * function_6(Keq_r_0015_5, Vmax_r_0015_5, intracellular, kmp_s_0146r_0015_5, kmp_s_1091r_0015_5, kms_s_0145r_0015_5, kms_s_0763_br_0015_5, kms_s_1096r_0015_5, s_0145, s_0146, s_0763_b, s_1091, s_1096)) - (intracellular * function_18(Keq_r_0044_17, Vmax_r_0044_17, intracellular, kmp_s_1091r_0044_17, kmp_s_1325r_0044_17, kms_s_0218r_0044_17, kms_s_0763_br_0044_17, kms_s_1096r_0044_17, s_0218, s_0763_b, s_1091, s_1096, s_1325)) - (intracellular * function_26(Keq_r_0093_25, Vmax_r_0093_25, intracellular, kmp_s_0328r_0093_25, kmp_s_1091r_0093_25, kms_s_0307r_0093_25, kms_s_0763_br_0093_25, kms_s_1096r_0093_25, s_0307, s_0328, s_0763_b, s_1091, s_1096)) - (intracellular * function_27(Keq_r_0111_26, Vmax_r_0111_26, intracellular, kmp_s_0018r_0111_26, kmp_s_1091r_0111_26, kms_s_0150r_0111_26, kms_s_0763_br_0111_26, kms_s_1096r_0111_26, s_0018, s_0150, s_0763_b, s_1091, s_1096)) - (intracellular * function_55(Keq_r_0238_54, Vmax_r_0238_54, intracellular, kmp_s_0886r_0238_54, kmp_s_1091r_0238_54, kmp_s_1207r_0238_54, kms_s_0301r_0238_54, kms_s_0763_br_0238_54, kms_s_1096r_0238_54, s_0301, s_0763_b, s_0886, s_1091, s_1096, s_1207)) - (intracellular * function_60(Keq_r_0258_59, Vmax_r_0258_59, intracellular, kmp_s_0124r_0258_59, kmp_s_1091r_0258_59, kms_s_0268r_0258_59, kms_s_0763_br_0258_59, kms_s_1096r_0258_59, s_0124, s_0268, s_0763_b, s_1091, s_1096)) - (intracellular * function_63(Keq_r_0263_62, Vmax_r_0263_62, intracellular, kmp_s_0302r_0263_62, kmp_s_1091r_0263_62, kms_s_0215r_0263_62, kms_s_0763_br_0263_62, kms_s_1096r_0263_62, s_0215, s_0302, s_0763_b, s_1091, s_1096)) - (intracellular * function_64(Keq_r_0264_63, Vmax_r_0264_63, intracellular, kmp_s_1091r_0264_63, kmp_s_1447r_0264_63, kms_s_0763_br_0264_63, kms_s_1096r_0264_63, kms_s_1458r_0264_63, s_0763_b, s_1091, s_1096, s_1447, s_1458)) - (intracellular * function_65(Keq_r_0265_64, Vmax_r_0265_64, intracellular, kmp_s_1091r_0265_64, kmp_s_1434_br_0265_64, kmp_s_1455r_0265_64, kms_s_0302r_0265_64, kms_s_0763_br_0265_64, kms_s_1096r_0265_64, kms_s_1160r_0265_64, s_0302, s_0763_b, s_1091, s_1096, s_1160, s_1434_b, s_1455)) - (intracellular * function_66(Keq_r_0266_65, Vmax_r_0266_65, intracellular, kmp_s_1091r_0266_65, kmp_s_1434_br_0266_65, kmp_s_1456r_0266_65, kms_s_0763_br_0266_65, kms_s_1096r_0266_65, kms_s_1160r_0266_65, kms_s_1455r_0266_65, s_0763_b, s_1091, s_1096, s_1160, s_1434_b, s_1455, s_1456)) - (intracellular * function_67(Keq_r_0267_66, Vmax_r_0267_66, intracellular, kmp_s_1091r_0267_66, kmp_s_1434_br_0267_66, kmp_s_1457r_0267_66, kms_s_0763_br_0267_66, kms_s_1096r_0267_66, kms_s_1160r_0267_66, kms_s_1456r_0267_66, s_0763_b, s_1091, s_1096, s_1160, s_1434_b, s_1456, s_1457)) - (3.0 * intracellular * function_68(Keq_r_0268_67, Vmax_r_0268_67, intracellular, kmp_s_0303r_0268_67, kmp_s_1091r_0268_67, kmp_s_1434_br_0268_67, kms_s_0124r_0268_67, kms_s_0763_br_0268_67, kms_s_1096r_0268_67, kms_s_1160r_0268_67, s_0124, s_0303, s_0763_b, s_1091, s_1096, s_1160, s_1434_b)) - (intracellular * function_70(Keq_r_0271_69, Vmax_r_0271_69, intracellular, kmp_s_0635r_0271_69, kmp_s_1091r_0271_69, kms_s_0632r_0271_69, kms_s_0763_br_0271_69, kms_s_1096r_0271_69, s_0632, s_0635, s_0763_b, s_1091, s_1096)) - (intracellular * function_74(Keq_r_0287_73, Vmax_r_0287_73, intracellular, kmp_s_1060r_0287_73, kmp_s_1091r_0287_73, kmp_s_1434_br_0287_73, kms_s_0763_br_0287_73, kms_s_1080r_0287_73, kms_s_1096r_0287_73, kms_s_1160r_0287_73, s_0763_b, s_1060, s_1080, s_1091, s_1096, s_1160, s_1434_b)) - (intracellular * function_96(Keq_r_0375_95, Vmax_r_0375_95, intracellular, kmp_s_0309r_0375_95, kmp_s_1091r_0375_95, kms_s_0601r_0375_95, kms_s_0763_br_0375_95, kms_s_1096r_0375_95, s_0309, s_0601, s_0763_b, s_1091, s_1096)) - (2.0 * intracellular * function_105(Keq_r_0417_104, Vmax_r_0417_104, intracellular, kmp_s_0470r_0417_104, kmp_s_0514r_0417_104, kmp_s_0574r_0417_104, kmp_s_1091r_0417_104, kmp_s_1434_br_0417_104, kms_s_0763_br_0417_104, kms_s_1005r_0417_104, kms_s_1096r_0417_104, kms_s_1132r_0417_104, s_0470, s_0514, s_0574, s_0763_b, s_1005, s_1091, s_1096, s_1132, s_1434_b)) - (2.0 * intracellular * function_106(Keq_r_0418_105, Vmax_r_0418_105, intracellular, kmp_s_0470r_0418_105, kmp_s_0514r_0418_105, kmp_s_0968r_0418_105, kmp_s_1091r_0418_105, kmp_s_1434_br_0418_105, kms_s_0574r_0418_105, kms_s_0763_br_0418_105, kms_s_1005r_0418_105, kms_s_1096r_0418_105, s_0470, s_0514, s_0574, s_0763_b, s_0968, s_1005, s_1091, s_1096, s_1434_b)) - (2.0 * intracellular * function_107(Keq_r_0419_106, Vmax_r_0419_106, intracellular, kmp_s_0470r_0419_106, kmp_s_0514r_0419_106, kmp_s_1028r_0419_106, kmp_s_1091r_0419_106, kmp_s_1434_br_0419_106, kms_s_0763_br_0419_106, kms_s_0968r_0419_106, kms_s_1005r_0419_106, kms_s_1096r_0419_106, s_0470, s_0514, s_0763_b, s_0968, s_1005, s_1028, s_1091, s_1096, s_1434_b)) - (2.0 * intracellular * function_108(Keq_r_0421_107, Vmax_r_0421_107, intracellular, kmp_s_0470r_0421_107, kmp_s_0514r_0421_107, kmp_s_1091r_0421_107, kmp_s_1170r_0421_107, kmp_s_1434_br_0421_107, kms_s_0763_br_0421_107, kms_s_1005r_0421_107, kms_s_1028r_0421_107, kms_s_1096r_0421_107, s_0470, s_0514, s_0763_b, s_1005, s_1028, s_1091, s_1096, s_1170, s_1434_b)) - (2.0 * intracellular * function_109(Keq_r_0423_108, Vmax_r_0423_108, intracellular, kmp_s_0470r_0423_108, kmp_s_0514r_0423_108, kmp_s_1091r_0423_108, kmp_s_1329r_0423_108, kmp_s_1434_br_0423_108, kms_s_0763_br_0423_108, kms_s_1005r_0423_108, kms_s_1096r_0423_108, kms_s_1170r_0423_108, s_0470, s_0514, s_0763_b, s_1005, s_1091, s_1096, s_1170, s_1329, s_1434_b)) - (6.0 * intracellular * function_110(Keq_r_0425_109, Vmax_r_0425_109, intracellular, kmp_s_0470r_0425_109, kmp_s_0514r_0425_109, kmp_s_0987r_0425_109, kmp_s_1091r_0425_109, kmp_s_1434_br_0425_109, kms_s_0763_br_0425_109, kms_s_1005r_0425_109, kms_s_1096r_0425_109, kms_s_1329r_0425_109, s_0470, s_0514, s_0763_b, s_0987, s_1005, s_1091, s_1096, s_1329, s_1434_b)) - (2.0 * intracellular * function_111(Keq_r_0429_110, Vmax_r_0429_110, intracellular, kmp_s_0470r_0429_110, kmp_s_0514r_0429_110, kmp_s_0582r_0429_110, kmp_s_1091r_0429_110, kmp_s_1434_br_0429_110, kms_s_0763_br_0429_110, kms_s_1005r_0429_110, kms_s_1096r_0429_110, kms_s_1140r_0429_110, s_0470, s_0514, s_0582, s_0763_b, s_1005, s_1091, s_1096, s_1140, s_1434_b)) - (6.0 * intracellular * function_112(Keq_r_0430_111, Vmax_r_0430_111, intracellular, kmp_s_0470r_0430_111, kmp_s_0514r_0430_111, kmp_s_1091r_0430_111, kmp_s_1140r_0430_111, kmp_s_1434_br_0430_111, kms_s_0380r_0430_111, kms_s_0763_br_0430_111, kms_s_1005r_0430_111, kms_s_1096r_0430_111, s_0380, s_0470, s_0514, s_0763_b, s_1005, s_1091, s_1096, s_1140, s_1434_b)) - (2.0 * intracellular * function_116(Keq_r_0464_115, Vmax_r_0464_115, intracellular, kmp_s_0470r_0464_115, kmp_s_0514r_0464_115, kmp_s_0977r_0464_115, kmp_s_1091r_0464_115, kmp_s_1434_br_0464_115, kms_s_0582r_0464_115, kms_s_0763_br_0464_115, kms_s_1005r_0464_115, kms_s_1096r_0464_115, s_0470, s_0514, s_0582, s_0763_b, s_0977, s_1005, s_1091, s_1096, s_1434_b)) - (2.0 * intracellular * function_117(Keq_r_0465_116, Vmax_r_0465_116, intracellular, kmp_s_0470r_0465_116, kmp_s_0514r_0465_116, kmp_s_1044r_0465_116, kmp_s_1091r_0465_116, kmp_s_1434_br_0465_116, kms_s_0763_br_0465_116, kms_s_0977r_0465_116, kms_s_1005r_0465_116, kms_s_1096r_0465_116, s_0470, s_0514, s_0763_b, s_0977, s_1005, s_1044, s_1091, s_1096, s_1434_b)) - (2.0 * intracellular * function_118(Keq_r_0466_117, Vmax_r_0466_117, intracellular, kmp_s_0470r_0466_117, kmp_s_0514r_0466_117, kmp_s_1091r_0466_117, kmp_s_1187r_0466_117, kmp_s_1434_br_0466_117, kms_s_0763_br_0466_117, kms_s_1005r_0466_117, kms_s_1044r_0466_117, kms_s_1096r_0466_117, s_0470, s_0514, s_0763_b, s_1005, s_1044, s_1091, s_1096, s_1187, s_1434_b)) - (2.0 * intracellular * function_119(Keq_r_0467_118, Vmax_r_0467_118, intracellular, kmp_s_0470r_0467_118, kmp_s_0514r_0467_118, kmp_s_1091r_0467_118, kmp_s_1334r_0467_118, kmp_s_1434_br_0467_118, kms_s_0763_br_0467_118, kms_s_1005r_0467_118, kms_s_1096r_0467_118, kms_s_1187r_0467_118, s_0470, s_0514, s_0763_b, s_1005, s_1091, s_1096, s_1187, s_1334, s_1434_b)) - (intracellular * function_129(Keq_r_0509_128, Vmax_r_0509_128, intracellular, kmp_s_0899r_0509_128, kmp_s_1091r_0509_128, kmp_s_1434_br_0509_128, kms_s_0185r_0509_128, kms_s_0430r_0509_128, kms_s_0763_br_0509_128, kms_s_1096r_0509_128, s_0185, s_0430, s_0763_b, s_0899, s_1091, s_1096, s_1434_b)) - (2.0 * intracellular * function_157(Keq_r_0598_156, Vmax_r_0598_156, intracellular, kmp_s_0031r_0598_156, kmp_s_0514r_0598_156, kmp_s_1091r_0598_156, kms_s_0225r_0598_156, kms_s_0763_br_0598_156, kms_s_1096r_0598_156, s_0031, s_0225, s_0514, s_0763_b, s_1091, s_1096)) - (intracellular * function_171(Keq_r_0640_170, Vmax_r_0640_170, intracellular, kmp_s_0007r_0640_170, kmp_s_1091r_0640_170, kms_s_0042r_0640_170, kms_s_0763_br_0640_170, kms_s_1096r_0640_170, s_0007, s_0042, s_0763_b, s_1091, s_1096)) - (intracellular * function_196(Keq_r_0728_195, Vmax_r_0728_195, intracellular, kmp_s_0149r_0728_195, kmp_s_1091r_0728_195, kmp_s_1207r_0728_195, kms_s_0763_br_0728_195, kms_s_1070r_0728_195, kms_s_1096r_0728_195, s_0149, s_0763_b, s_1070, s_1091, s_1096, s_1207)) - (intracellular * function_233(Keq_r_0936_232, Vmax_r_0936_232, intracellular, kmp_s_0939r_0936_232, kmp_s_1091r_0936_232, kms_s_0120r_0936_232, kms_s_0763_br_0936_232, kms_s_1096r_0936_232, s_0120, s_0763_b, s_0939, s_1091, s_1096)) - (intracellular * function_248(Keq_r_0970_247, Vmax_r_0970_247, intracellular, kmp_s_0942r_0970_247, kmp_s_1091r_0970_247, kmp_s_1434_br_0970_247, kms_s_0763_br_0970_247, kms_s_0867r_0970_247, kms_s_0899r_0970_247, kms_s_1096r_0970_247, s_0763_b, s_0867, s_0899, s_0942, s_1091, s_1096, s_1434_b)) - (intracellular * function_250(Keq_r_0976_249, Vmax_r_0976_249, intracellular, kmp_s_1091r_0976_249, kmp_s_1306r_0976_249, kms_s_0217r_0976_249, kms_s_0763_br_0976_249, kms_s_1096r_0976_249, s_0217, s_0763_b, s_1091, s_1096, s_1306)) - (intracellular * function_253(Keq_r_0993_252, Vmax_r_0993_252, intracellular, kmp_s_0605r_0993_252, kmp_s_1091r_0993_252, kmp_s_1327r_0993_252, kms_s_0195r_0993_252, kms_s_0763_br_0993_252, kms_s_1096r_0993_252, s_0195, s_0605, s_0763_b, s_1091, s_1096, s_1327)) - (3.0 * intracellular * function_257(Keq_r_1008_256, Vmax_r_1008_256, intracellular, kmp_s_0805r_1008_256, kmp_s_1091r_1008_256, kmp_s_1434_br_1008_256, kms_s_0763_br_1008_256, kms_s_1096r_1008_256, kms_s_1349r_1008_256, s_0763_b, s_0805, s_1091, s_1096, s_1349, s_1434_b)) - (intracellular * function_258(Keq_r_1024_257, Vmax_r_1024_257, intracellular, kmp_s_1091r_1024_257, kmp_s_1521r_1024_257, kms_s_0763_br_1024_257, kms_s_1096r_1024_257, kms_s_1517r_1024_257, s_0763_b, s_1091, s_1096, s_1517, s_1521));
    der(s_1117) = (intracellular * function_156(Keq_r_0589_155, Vmax_r_0589_155, intracellular, kmp_s_0514r_0589_155, kmp_s_1117r_0589_155, kms_s_0380r_0589_155, kms_s_0919r_0589_155, s_0380, s_0514, s_0919, s_1117)) - (intracellular * function_85(Keq_r_0340_84, Vmax_r_0340_84, intracellular, kmp_s_0369r_0340_84, kmp_s_0763_br_0340_84, kmp_s_0888r_0340_84, kms_s_0889r_0340_84, kms_s_1117r_0340_84, s_0369, s_0763_b, s_0888, s_0889, s_1117)) - (intracellular * function_200(Keq_r_0783_199, Vmax_r_0783_199, intracellular, kmp_s_0369r_0783_199, kmp_s_0763_br_0783_199, kmp_s_0917r_0783_199, kms_s_0805r_0783_199, kms_s_1117r_0783_199, s_0369, s_0763_b, s_0805, s_0917, s_1117));
    der(s_1122) = (intracellular * function_155(Keq_r_0588_154, Vmax_r_0588_154, intracellular, kmp_s_0400r_0588_154, kmp_s_0763_br_0588_154, kmp_s_1122r_0588_154, kms_s_0446r_0588_154, kms_s_0919r_0588_154, s_0400, s_0446, s_0763_b, s_0919, s_1122)) - (intracellular * function_260(Keq_r_1027_259, Vmax_r_1027_259, intracellular, kmp_s_0949r_1027_259, kmp_s_1207r_1027_259, kms_s_1122r_1027_259, kms_s_1434_br_1027_259, s_0949, s_1122, s_1207, s_1434_b));
    der(s_1132) = (intracellular * function_115(Keq_r_0442_114, Vmax_r_0442_114, intracellular, kmp_s_0446r_0442_114, kmp_s_0514r_0442_114, kmp_s_1132r_0442_114, kms_s_0434r_0442_114, kms_s_0605r_0442_114, kms_s_1140r_0442_114, s_0434, s_0446, s_0514, s_0605, s_1132, s_1140)) - (intracellular * function_105(Keq_r_0417_104, Vmax_r_0417_104, intracellular, kmp_s_0470r_0417_104, kmp_s_0514r_0417_104, kmp_s_0574r_0417_104, kmp_s_1091r_0417_104, kmp_s_1434_br_0417_104, kms_s_0763_br_0417_104, kms_s_1005r_0417_104, kms_s_1096r_0417_104, kms_s_1132r_0417_104, s_0470, s_0514, s_0574, s_0763_b, s_1005, s_1091, s_1096, s_1132, s_1434_b));
    der(s_1140) = (intracellular * function_112(Keq_r_0430_111, Vmax_r_0430_111, intracellular, kmp_s_0470r_0430_111, kmp_s_0514r_0430_111, kmp_s_1091r_0430_111, kmp_s_1140r_0430_111, kmp_s_1434_br_0430_111, kms_s_0380r_0430_111, kms_s_0763_br_0430_111, kms_s_1005r_0430_111, kms_s_1096r_0430_111, s_0380, s_0470, s_0514, s_0763_b, s_1005, s_1091, s_1096, s_1140, s_1434_b)) - (intracellular * function_111(Keq_r_0429_110, Vmax_r_0429_110, intracellular, kmp_s_0470r_0429_110, kmp_s_0514r_0429_110, kmp_s_0582r_0429_110, kmp_s_1091r_0429_110, kmp_s_1434_br_0429_110, kms_s_0763_br_0429_110, kms_s_1005r_0429_110, kms_s_1096r_0429_110, kms_s_1140r_0429_110, s_0470, s_0514, s_0582, s_0763_b, s_1005, s_1091, s_1096, s_1140, s_1434_b)) - (intracellular * function_115(Keq_r_0442_114, Vmax_r_0442_114, intracellular, kmp_s_0446r_0442_114, kmp_s_0514r_0442_114, kmp_s_1132r_0442_114, kms_s_0434r_0442_114, kms_s_0605r_0442_114, kms_s_1140r_0442_114, s_0434, s_0446, s_0514, s_0605, s_1132, s_1140));
    der(s_1151) = (intracellular * function_202(Keq_r_0791_201, Vmax_r_0791_201, intracellular, kmp_s_1071r_0791_201, kmp_s_1151r_0791_201, kms_s_0899r_0791_201, kms_s_1051r_0791_201, s_0899, s_1051, s_1071, s_1151)) - (intracellular * function_201(Keq_r_0789_200, Vmax_r_0789_200, intracellular, kmp_s_0763_br_0789_200, kmp_s_0887r_0789_200, kmp_s_1207r_0789_200, kms_s_0469r_0789_200, kms_s_1151r_0789_200, s_0469, s_0763_b, s_0887, s_1151, s_1207));
    der(s_1154) = (intracellular * function_95(Keq_r_0374_94, Vmax_r_0374_94, intracellular, kmp_s_0801r_0374_94, kmp_s_1154r_0374_94, kms_s_0064r_0374_94, kms_s_1160r_0374_94, s_0064, s_0801, s_1154, s_1160)) - (intracellular * function_203(Keq_r_0793_202, Vmax_r_0793_202, intracellular, kmp_s_0605r_0793_202, kmp_s_1155r_0793_202, kms_s_0331r_0793_202, kms_s_1154r_0793_202, s_0331, s_0605, s_1154, s_1155));
    der(s_1155) = (intracellular * function_203(Keq_r_0793_202, Vmax_r_0793_202, intracellular, kmp_s_0605r_0793_202, kmp_s_1155r_0793_202, kms_s_0331r_0793_202, kms_s_1154r_0793_202, s_0331, s_0605, s_1154, s_1155)) - (intracellular * function_204(Keq_r_0794_203, Vmax_r_0794_203, intracellular, kmp_s_0470r_0794_203, kmp_s_1417r_0794_203, kms_s_0763_br_0794_203, kms_s_1155r_0794_203, s_0470, s_0763_b, s_1155, s_1417));
    der(s_1156) = (intracellular * function_234(Keq_r_0937_233, Vmax_r_0937_233, intracellular, kmp_s_0400r_0937_233, kmp_s_0763_br_0937_233, kmp_s_1156r_0937_233, kmp_s_1207r_0937_233, kms_s_0446r_0937_233, kms_s_0458r_0937_233, kms_s_1277r_0937_233, s_0400, s_0446, s_0458, s_0763_b, s_1156, s_1207, s_1277)) - (intracellular * function_54(Keq_r_0235_53, Vmax_r_0235_53, intracellular, kmp_s_0185r_0235_53, kmp_s_0881r_0235_53, kms_s_0899r_0235_53, kms_s_1156r_0235_53, s_0185, s_0881, s_0899, s_1156)) - (intracellular * function_80(Keq_r_0328_79, Vmax_r_0328_79, intracellular, kmp_s_0507r_0328_79, kmp_s_0514r_0328_79, kmp_s_0763_br_0328_79, kms_s_0380r_0328_79, kms_s_1156r_0328_79, kms_s_1434_br_0328_79, s_0380, s_0507, s_0514, s_0763_b, s_1156, s_1434_b)) - (intracellular * function_180(Keq_r_0688_179, Vmax_r_0688_179, intracellular, kmp_s_0069r_0688_179, kmp_s_1082r_0688_179, kms_s_0763_br_0688_179, kms_s_1087r_0688_179, kms_s_1156r_0688_179, s_0069, s_0763_b, s_1082, s_1087, s_1156));
    der(s_1160) = (intracellular * function_72(Keq_r_0282_71, Vmax_r_0282_71, intracellular, kmp_s_1160r_0282_71, kmp_s_1434_br_0282_71, kms_s_0801r_0282_71, s_0801, s_1160, s_1434_b)) + (function_278(Keq_r_1435_277, Vmax_r_1435_277, kmp_s_1160r_1435_277, kms_s_1162_br_1435_277, s_1160, s_1162_b)) - (intracellular * function_65(Keq_r_0265_64, Vmax_r_0265_64, intracellular, kmp_s_1091r_0265_64, kmp_s_1434_br_0265_64, kmp_s_1455r_0265_64, kms_s_0302r_0265_64, kms_s_0763_br_0265_64, kms_s_1096r_0265_64, kms_s_1160r_0265_64, s_0302, s_0763_b, s_1091, s_1096, s_1160, s_1434_b, s_1455)) - (intracellular * function_66(Keq_r_0266_65, Vmax_r_0266_65, intracellular, kmp_s_1091r_0266_65, kmp_s_1434_br_0266_65, kmp_s_1456r_0266_65, kms_s_0763_br_0266_65, kms_s_1096r_0266_65, kms_s_1160r_0266_65, kms_s_1455r_0266_65, s_0763_b, s_1091, s_1096, s_1160, s_1434_b, s_1455, s_1456)) - (intracellular * function_67(Keq_r_0267_66, Vmax_r_0267_66, intracellular, kmp_s_1091r_0267_66, kmp_s_1434_br_0267_66, kmp_s_1457r_0267_66, kms_s_0763_br_0267_66, kms_s_1096r_0267_66, kms_s_1160r_0267_66, kms_s_1456r_0267_66, s_0763_b, s_1091, s_1096, s_1160, s_1434_b, s_1456, s_1457)) - (3.0 * intracellular * function_68(Keq_r_0268_67, Vmax_r_0268_67, intracellular, kmp_s_0303r_0268_67, kmp_s_1091r_0268_67, kmp_s_1434_br_0268_67, kms_s_0124r_0268_67, kms_s_0763_br_0268_67, kms_s_1096r_0268_67, kms_s_1160r_0268_67, s_0124, s_0303, s_0763_b, s_1091, s_1096, s_1160, s_1434_b)) - (intracellular * function_74(Keq_r_0287_73, Vmax_r_0287_73, intracellular, kmp_s_1060r_0287_73, kmp_s_1091r_0287_73, kmp_s_1434_br_0287_73, kms_s_0763_br_0287_73, kms_s_1080r_0287_73, kms_s_1096r_0287_73, kms_s_1160r_0287_73, s_0763_b, s_1060, s_1080, s_1091, s_1096, s_1160, s_1434_b)) - (intracellular * function_76(Keq_r_0298_75, Vmax_r_0298_75, intracellular, kmp_s_0632r_0298_75, kmp_s_0763_br_0298_75, kmp_s_1290r_0298_75, kmp_s_1434_br_0298_75, kms_s_1160r_0298_75, kms_s_1293r_0298_75, kms_s_1447r_0298_75, s_0632, s_0763_b, s_1160, s_1290, s_1293, s_1434_b, s_1447)) - (3.0 * intracellular * function_87(Keq_r_0347_86, Vmax_r_0347_86, intracellular, kmp_s_0268r_0347_86, kmp_s_0689r_0347_86, kmp_s_1082r_0347_86, kmp_s_1434_br_0347_86, kms_s_0763_br_0347_86, kms_s_0963r_0347_86, kms_s_1087r_0347_86, kms_s_1160r_0347_86, s_0268, s_0689, s_0763_b, s_0963, s_1082, s_1087, s_1160, s_1434_b)) - (intracellular * function_95(Keq_r_0374_94, Vmax_r_0374_94, intracellular, kmp_s_0801r_0374_94, kmp_s_1154r_0374_94, kms_s_0064r_0374_94, kms_s_1160r_0374_94, s_0064, s_0801, s_1154, s_1160)) - (intracellular * function_252(Keq_r_0991_251, Vmax_r_0991_251, intracellular, kmp_s_0040r_0991_251, kmp_s_1082r_0991_251, kmp_s_1434_br_0991_251, kms_s_0763_br_0991_251, kms_s_1087r_0991_251, kms_s_1160r_0991_251, kms_s_1327r_0991_251, s_0040, s_0763_b, s_1082, s_1087, s_1160, s_1327, s_1434_b));
    der(s_1170) = (intracellular * function_108(Keq_r_0421_107, Vmax_r_0421_107, intracellular, kmp_s_0470r_0421_107, kmp_s_0514r_0421_107, kmp_s_1091r_0421_107, kmp_s_1170r_0421_107, kmp_s_1434_br_0421_107, kms_s_0763_br_0421_107, kms_s_1005r_0421_107, kms_s_1028r_0421_107, kms_s_1096r_0421_107, s_0470, s_0514, s_0763_b, s_1005, s_1028, s_1091, s_1096, s_1170, s_1434_b)) - (intracellular * function_109(Keq_r_0423_108, Vmax_r_0423_108, intracellular, kmp_s_0470r_0423_108, kmp_s_0514r_0423_108, kmp_s_1091r_0423_108, kmp_s_1329r_0423_108, kmp_s_1434_br_0423_108, kms_s_0763_br_0423_108, kms_s_1005r_0423_108, kms_s_1096r_0423_108, kms_s_1170r_0423_108, s_0470, s_0514, s_0763_b, s_1005, s_1091, s_1096, s_1170, s_1329, s_1434_b));
    der(s_1187) = (intracellular * function_118(Keq_r_0466_117, Vmax_r_0466_117, intracellular, kmp_s_0470r_0466_117, kmp_s_0514r_0466_117, kmp_s_1091r_0466_117, kmp_s_1187r_0466_117, kmp_s_1434_br_0466_117, kms_s_0763_br_0466_117, kms_s_1005r_0466_117, kms_s_1044r_0466_117, kms_s_1096r_0466_117, s_0470, s_0514, s_0763_b, s_1005, s_1044, s_1091, s_1096, s_1187, s_1434_b)) - (intracellular * function_119(Keq_r_0467_118, Vmax_r_0467_118, intracellular, kmp_s_0470r_0467_118, kmp_s_0514r_0467_118, kmp_s_1091r_0467_118, kmp_s_1334r_0467_118, kmp_s_1434_br_0467_118, kms_s_0763_br_0467_118, kms_s_1005r_0467_118, kms_s_1096r_0467_118, kms_s_1187r_0467_118, s_0470, s_0514, s_0763_b, s_1005, s_1091, s_1096, s_1187, s_1334, s_1434_b)) - (intracellular * function_249(Keq_r_0972_248, Vmax_r_0972_248, intracellular, kmp_s_0218r_0972_248, kmp_s_0470r_0972_248, kmp_s_0514r_0972_248, kms_s_0943r_0972_248, kms_s_1187r_0972_248, s_0218, s_0470, s_0514, s_0943, s_1187));
    der(s_1207) = 0.0;
    der(s_1215) = (intracellular * function_4(Keq_r_0009_3, Vmax_r_0009_3, intracellular, kmp_s_0514r_0009_3, kmp_s_0763_br_0009_3, kmp_s_1215r_0009_3, kms_s_0083r_0009_3, kms_s_0386r_0009_3, s_0083, s_0386, s_0514, s_0763_b, s_1215)) - (intracellular * function_73(Keq_r_0284_72, Vmax_r_0284_72, intracellular, kmp_s_0485r_0284_72, kmp_s_0605r_0284_72, kms_s_0521r_0284_72, kms_s_0763_br_0284_72, kms_s_1215r_0284_72, s_0485, s_0521, s_0605, s_0763_b, s_1215)) - (intracellular * function_94(Keq_r_0371_93, Vmax_r_0371_93, intracellular, kmp_s_0596r_0371_93, kmp_s_0763_br_0371_93, kmp_s_1207r_0371_93, kms_s_1215r_0371_93, kms_s_1434_br_0371_93, s_0596, s_0763_b, s_1207, s_1215, s_1434_b));
    der(s_1219) = (intracellular * function_209(Keq_r_0853_208, Vmax_r_0853_208, intracellular, kmp_s_0511r_0853_208, kmp_s_0763_br_0853_208, kmp_s_1219r_0853_208, kms_s_0485r_0853_208, kms_s_0943r_0853_208, s_0485, s_0511, s_0763_b, s_0943, s_1219)) - (intracellular * function_208(Keq_r_0850_207, Vmax_r_0850_207, intracellular, kmp_s_0470r_0850_207, kmp_s_1233r_0850_207, kms_s_1219r_0850_207, s_0470, s_1219, s_1233)) - (0.000373 * intracellular * function_285(V_o_284, a_s_0090r_1816_284, a_s_0124r_1816_284, a_s_0627r_1816_284, a_s_0632r_1816_284, a_s_0635r_1816_284, a_s_0641r_1816_284, a_s_0663r_1816_284, a_s_0669r_1816_284, a_s_0824r_1816_284, a_s_0963r_1816_284, a_s_1219r_1816_284, a_s_1228r_1816_284, a_s_1233r_1816_284, a_s_1399r_1816_284, a_s_1447r_1816_284, intracellular, s_0090, s_0090_or_1816_284, s_0124, s_0124_or_1816_284, s_0627, s_0627_or_1816_284, s_0632, s_0632_or_1816_284, s_0635, s_0635_or_1816_284, s_0641, s_0641_or_1816_284, s_0663, s_0663_or_1816_284, s_0669, s_0669_or_1816_284, s_0824, s_0824_or_1816_284, s_0963, s_0963_or_1816_284, s_1219, s_1219_or_1816_284, s_1228, s_1228_or_1816_284, s_1233, s_1233_or_1816_284, s_1399, s_1399_or_1816_284, s_1447, s_1447_or_1816_284, zero_flux_284));
    der(s_1225) = (intracellular * function_216(Keq_r_0874_215, Vmax_r_0874_215, intracellular, kmp_s_0763_br_0874_215, kmp_s_1225r_0874_215, kmp_s_1290r_0874_215, kms_s_1226r_0874_215, kms_s_1293r_0874_215, s_0763_b, s_1225, s_1226, s_1290, s_1293)) - (intracellular * function_215(Keq_r_0873_214, Vmax_r_0873_214, intracellular, kmp_s_1228r_0873_214, kmp_s_1290r_0873_214, kms_s_1225r_0873_214, kms_s_1293r_0873_214, s_1225, s_1228, s_1290, s_1293));
    der(s_1226) = (intracellular * function_206(Keq_r_0831_205, Vmax_r_0831_205, intracellular, kmp_s_0763_br_0831_205, kmp_s_1226r_0831_205, kmp_s_1290r_0831_205, kms_s_1233r_0831_205, kms_s_1293r_0831_205, s_0763_b, s_1226, s_1233, s_1290, s_1293)) - (intracellular * function_216(Keq_r_0874_215, Vmax_r_0874_215, intracellular, kmp_s_0763_br_0874_215, kmp_s_1225r_0874_215, kmp_s_1290r_0874_215, kms_s_1226r_0874_215, kms_s_1293r_0874_215, s_0763_b, s_1225, s_1226, s_1290, s_1293));
    der(s_1228) = (intracellular * function_215(Keq_r_0873_214, Vmax_r_0873_214, intracellular, kmp_s_1228r_0873_214, kmp_s_1290r_0873_214, kms_s_1225r_0873_214, kms_s_1293r_0873_214, s_1225, s_1228, s_1290, s_1293)) - (0.002884 * intracellular * function_285(V_o_284, a_s_0090r_1816_284, a_s_0124r_1816_284, a_s_0627r_1816_284, a_s_0632r_1816_284, a_s_0635r_1816_284, a_s_0641r_1816_284, a_s_0663r_1816_284, a_s_0669r_1816_284, a_s_0824r_1816_284, a_s_0963r_1816_284, a_s_1219r_1816_284, a_s_1228r_1816_284, a_s_1233r_1816_284, a_s_1399r_1816_284, a_s_1447r_1816_284, intracellular, s_0090, s_0090_or_1816_284, s_0124, s_0124_or_1816_284, s_0627, s_0627_or_1816_284, s_0632, s_0632_or_1816_284, s_0635, s_0635_or_1816_284, s_0641, s_0641_or_1816_284, s_0663, s_0663_or_1816_284, s_0669, s_0669_or_1816_284, s_0824, s_0824_or_1816_284, s_0963, s_0963_or_1816_284, s_1219, s_1219_or_1816_284, s_1228, s_1228_or_1816_284, s_1233, s_1233_or_1816_284, s_1399, s_1399_or_1816_284, s_1447, s_1447_or_1816_284, zero_flux_284));
    der(s_1233) = (intracellular * function_208(Keq_r_0850_207, Vmax_r_0850_207, intracellular, kmp_s_0470r_0850_207, kmp_s_1233r_0850_207, kms_s_1219r_0850_207, s_0470, s_1219, s_1233)) - (intracellular * function_206(Keq_r_0831_205, Vmax_r_0831_205, intracellular, kmp_s_0763_br_0831_205, kmp_s_1226r_0831_205, kmp_s_1290r_0831_205, kms_s_1233r_0831_205, kms_s_1293r_0831_205, s_0763_b, s_1226, s_1233, s_1290, s_1293)) - (0.000697 * intracellular * function_285(V_o_284, a_s_0090r_1816_284, a_s_0124r_1816_284, a_s_0627r_1816_284, a_s_0632r_1816_284, a_s_0635r_1816_284, a_s_0641r_1816_284, a_s_0663r_1816_284, a_s_0669r_1816_284, a_s_0824r_1816_284, a_s_0963r_1816_284, a_s_1219r_1816_284, a_s_1228r_1816_284, a_s_1233r_1816_284, a_s_1399r_1816_284, a_s_1447r_1816_284, intracellular, s_0090, s_0090_or_1816_284, s_0124, s_0124_or_1816_284, s_0627, s_0627_or_1816_284, s_0632, s_0632_or_1816_284, s_0635, s_0635_or_1816_284, s_0641, s_0641_or_1816_284, s_0663, s_0663_or_1816_284, s_0669, s_0669_or_1816_284, s_0824, s_0824_or_1816_284, s_0963, s_0963_or_1816_284, s_1219, s_1219_or_1816_284, s_1228, s_1228_or_1816_284, s_1233, s_1233_or_1816_284, s_1399, s_1399_or_1816_284, s_1447, s_1447_or_1816_284, zero_flux_284));
    der(s_1243) = (intracellular * function_104(Keq_r_0398_103, Vmax_r_0398_103, intracellular, kmp_s_1243r_0398_103, kmp_s_1434_br_0398_103, kms_s_0193r_0398_103, s_0193, s_1243, s_1434_b)) - (intracellular * function_9(Keq_r_0021_8, Vmax_r_0021_8, intracellular, kmp_s_0356r_0021_8, kmp_s_1207r_0021_8, kms_s_0533r_0021_8, kms_s_1243r_0021_8, kms_s_1434_br_0021_8, s_0356, s_0533, s_1207, s_1243, s_1434_b)) - (intracellular * function_25(Keq_r_0068_24, Vmax_r_0068_24, intracellular, kmp_s_0330r_0068_24, kmp_s_1207r_0068_24, kms_s_0267r_0068_24, kms_s_1243r_0068_24, s_0267, s_0330, s_1207, s_1243)) - (intracellular * function_237(Keq_r_0941_236, Vmax_r_0941_236, intracellular, kmp_s_0446r_0941_236, kmp_s_1277r_0941_236, kms_s_0400r_0941_236, kms_s_0763_br_0941_236, kms_s_1243r_0941_236, s_0400, s_0446, s_0763_b, s_1243, s_1277));
    der(s_1257) = (intracellular * function_170(Keq_r_0638_169, Vmax_r_0638_169, intracellular, kmp_s_1257r_0638_169, kms_s_0850r_0638_169, s_0850, s_1257)) - (intracellular * function_101(Keq_r_0387_100, Vmax_r_0387_100, intracellular, kmp_s_0605r_0387_100, kmp_s_0712r_0387_100, kms_s_0850r_0387_100, kms_s_1257r_0387_100, s_0605, s_0712, s_0850, s_1257));
    der(s_1258) = (intracellular * function_77(Keq_r_0304_76, Vmax_r_0304_76, intracellular, kmp_s_1258r_0304_76, kms_s_0500r_0304_76, s_0500, s_1258)) - (intracellular * function_230(Keq_r_0911_229, Vmax_r_0911_229, intracellular, kmp_s_0470r_0911_229, kmp_s_0859r_0911_229, kmp_s_1434_br_0911_229, kms_s_0763_br_0911_229, kms_s_1258r_0911_229, s_0470, s_0763_b, s_0859, s_1258, s_1434_b)) - (intracellular * function_231(Keq_r_0913_230, Vmax_r_0913_230, intracellular, kmp_s_0209r_0913_230, kmp_s_0470r_0913_230, kmp_s_1096r_0913_230, kms_s_1091r_0913_230, kms_s_1258r_0913_230, s_0209, s_0470, s_1091, s_1096, s_1258));
    der(s_1277) = (intracellular * function_43(Keq_r_0174_42, Vmax_r_0174_42, intracellular, kmp_s_0740r_0174_42, kmp_s_1277r_0174_42, kms_s_0749r_0174_42, kms_s_0863r_0174_42, s_0740, s_0749, s_0863, s_1277)) + (intracellular * function_48(Keq_r_0221_47, Vmax_r_0221_47, intracellular, kmp_s_0439r_0221_47, kmp_s_0763_br_0221_47, kmp_s_0899r_0221_47, kmp_s_1277r_0221_47, kms_s_0500r_0221_47, kms_s_0907r_0221_47, s_0439, s_0500, s_0763_b, s_0899, s_0907, s_1277)) + (intracellular * function_237(Keq_r_0941_236, Vmax_r_0941_236, intracellular, kmp_s_0446r_0941_236, kmp_s_1277r_0941_236, kms_s_0400r_0941_236, kms_s_0763_br_0941_236, kms_s_1243r_0941_236, s_0400, s_0446, s_0763_b, s_1243, s_1277)) - (intracellular * function_7(Keq_r_0016_6, Vmax_r_0016_6, intracellular, kmp_s_0042r_0016_6, kmp_s_0470r_0016_6, kms_s_0183r_0016_6, kms_s_0763_br_0016_6, kms_s_1277r_0016_6, s_0042, s_0183, s_0470, s_0763_b, s_1277)) - (2.0 * intracellular * function_28(Keq_r_0112_27, Vmax_r_0112_27, intracellular, kmp_s_0150r_0112_27, kmp_s_0470r_0112_27, kms_s_0763_br_0112_27, kms_s_1277r_0112_27, s_0150, s_0470, s_0763_b, s_1277)) - (intracellular * function_172(Keq_r_0647_171, Vmax_r_0647_171, intracellular, kmp_s_0185r_0647_171, kmp_s_0863r_0647_171, kms_s_0899r_0647_171, kms_s_1277r_0647_171, s_0185, s_0863, s_0899, s_1277)) - (intracellular * function_234(Keq_r_0937_233, Vmax_r_0937_233, intracellular, kmp_s_0400r_0937_233, kmp_s_0763_br_0937_233, kmp_s_1156r_0937_233, kmp_s_1207r_0937_233, kms_s_0446r_0937_233, kms_s_0458r_0937_233, kms_s_1277r_0937_233, s_0400, s_0446, s_0458, s_0763_b, s_1156, s_1207, s_1277)) - (intracellular * function_235(Vmax_r_0938_234, kms_s_0763_br_0938_234, kms_s_1277r_0938_234, s_0763_b, s_1277, s_0366, s_0470, Keq_r_0938_234, kmp_s_0366r_0938_234, kmp_s_0470r_0938_234, s_1277, kmI_s_1277mr_0938_234, intracellular)) - (intracellular * function_236(Keq_r_0940_235, Vmax_r_0940_235, intracellular, kmp_s_0380r_0940_235, kmp_s_0470r_0940_235, kmp_s_1087r_0940_235, kms_s_0514r_0940_235, kms_s_1082r_0940_235, kms_s_1277r_0940_235, s_0380, s_0470, s_0514, s_1082, s_1087, s_1277));
    der(s_1283) = (intracellular * function_239(Keq_r_0949_238, Vmax_r_0949_238, intracellular, kmp_s_0320r_0949_238, kmp_s_1283r_0949_238, kms_s_0335r_0949_238, s_0320, s_0335, s_1283)) - (0.0009 * intracellular * function_283(V_o_282, a_s_0001r_1812_282, a_s_0416r_1812_282, a_s_0434r_1812_282, a_s_0446r_1812_282, a_s_0511r_1812_282, a_s_0564r_1812_282, a_s_0569r_1812_282, a_s_0593r_1812_282, a_s_0619r_1812_282, a_s_0740r_1812_282, a_s_0743r_1812_282, a_s_0752r_1812_282, a_s_0863r_1812_282, a_s_0873r_1812_282, a_s_0877r_1812_282, a_s_0881r_1812_282, a_s_0889r_1812_282, a_s_0899r_1812_282, a_s_0907r_1812_282, a_s_0911r_1812_282, a_s_0920r_1812_282, a_s_0925r_1812_282, a_s_0929r_1812_282, a_s_0933r_1812_282, a_s_0936r_1812_282, a_s_0939r_1812_282, a_s_0943r_1812_282, a_s_0949r_1812_282, a_s_0952r_1812_282, a_s_0955r_1812_282, a_s_0960r_1812_282, a_s_1000r_1812_282, a_s_1011r_1812_282, a_s_1283r_1812_282, a_s_1347r_1812_282, a_s_1417r_1812_282, intracellular, s_0001, s_0001_or_1812_282, s_0416, s_0416_or_1812_282, s_0434, s_0434_or_1812_282, s_0446, s_0446_or_1812_282, s_0511, s_0511_or_1812_282, s_0564, s_0564_or_1812_282, s_0569, s_0569_or_1812_282, s_0593, s_0593_or_1812_282, s_0619, s_0619_or_1812_282, s_0740, s_0740_or_1812_282, s_0743, s_0743_or_1812_282, s_0752, s_0752_or_1812_282, s_0863, s_0863_or_1812_282, s_0873, s_0873_or_1812_282, s_0877, s_0877_or_1812_282, s_0881, s_0881_or_1812_282, s_0889, s_0889_or_1812_282, s_0899, s_0899_or_1812_282, s_0907, s_0907_or_1812_282, s_0911, s_0911_or_1812_282, s_0920, s_0920_or_1812_282, s_0925, s_0925_or_1812_282, s_0929, s_0929_or_1812_282, s_0933, s_0933_or_1812_282, s_0936, s_0936_or_1812_282, s_0939, s_0939_or_1812_282, s_0943, s_0943_or_1812_282, s_0949, s_0949_or_1812_282, s_0952, s_0952_or_1812_282, s_0955, s_0955_or_1812_282, s_0960, s_0960_or_1812_282, s_1000, s_1000_or_1812_282, s_1011, s_1011_or_1812_282, s_1283, s_1283_or_1812_282, s_1347, s_1347_or_1812_282, s_1417, s_1417_or_1812_282, zero_flux_282));
    der(s_1290) = (intracellular * function_76(Keq_r_0298_75, Vmax_r_0298_75, intracellular, kmp_s_0632r_0298_75, kmp_s_0763_br_0298_75, kmp_s_1290r_0298_75, kmp_s_1434_br_0298_75, kms_s_1160r_0298_75, kms_s_1293r_0298_75, kms_s_1447r_0298_75, s_0632, s_0763_b, s_1160, s_1290, s_1293, s_1434_b, s_1447)) + (intracellular * function_206(Keq_r_0831_205, Vmax_r_0831_205, intracellular, kmp_s_0763_br_0831_205, kmp_s_1226r_0831_205, kmp_s_1290r_0831_205, kms_s_1233r_0831_205, kms_s_1293r_0831_205, s_0763_b, s_1226, s_1233, s_1290, s_1293)) + (intracellular * function_215(Keq_r_0873_214, Vmax_r_0873_214, intracellular, kmp_s_1228r_0873_214, kmp_s_1290r_0873_214, kms_s_1225r_0873_214, kms_s_1293r_0873_214, s_1225, s_1228, s_1290, s_1293)) + (intracellular * function_216(Keq_r_0874_215, Vmax_r_0874_215, intracellular, kmp_s_0763_br_0874_215, kmp_s_1225r_0874_215, kmp_s_1290r_0874_215, kms_s_1226r_0874_215, kms_s_1293r_0874_215, s_0763_b, s_1225, s_1226, s_1290, s_1293)) + (intracellular * function_246(Keq_r_0967_245, Vmax_r_0967_245, intracellular, kmp_s_0669r_0967_245, kmp_s_0763_br_0967_245, kmp_s_1290r_0967_245, kms_s_1293r_0967_245, kms_s_1447r_0967_245, s_0669, s_0763_b, s_1290, s_1293, s_1447)) - (intracellular * function_36(Keq_r_0159_35, Vmax_r_0159_35, intracellular, kmp_s_0393r_0159_35, kmp_s_0917r_0159_35, kms_s_1290r_0159_35, kms_s_1434_br_0159_35, s_0393, s_0917, s_1290, s_1434_b));
    der(s_1293) = (intracellular * function_184(Keq_r_0701_183, Vmax_r_0701_183, intracellular, kmp_s_0605r_0701_183, kmp_s_1207r_0701_183, kmp_s_1293r_0701_183, kms_s_0446r_0701_183, kms_s_0933r_0701_183, kms_s_1434_br_0701_183, s_0446, s_0605, s_0933, s_1207, s_1293, s_1434_b)) - (intracellular * function_76(Keq_r_0298_75, Vmax_r_0298_75, intracellular, kmp_s_0632r_0298_75, kmp_s_0763_br_0298_75, kmp_s_1290r_0298_75, kmp_s_1434_br_0298_75, kms_s_1160r_0298_75, kms_s_1293r_0298_75, kms_s_1447r_0298_75, s_0632, s_0763_b, s_1160, s_1290, s_1293, s_1434_b, s_1447)) - (intracellular * function_206(Keq_r_0831_205, Vmax_r_0831_205, intracellular, kmp_s_0763_br_0831_205, kmp_s_1226r_0831_205, kmp_s_1290r_0831_205, kms_s_1233r_0831_205, kms_s_1293r_0831_205, s_0763_b, s_1226, s_1233, s_1290, s_1293)) - (intracellular * function_215(Keq_r_0873_214, Vmax_r_0873_214, intracellular, kmp_s_1228r_0873_214, kmp_s_1290r_0873_214, kms_s_1225r_0873_214, kms_s_1293r_0873_214, s_1225, s_1228, s_1290, s_1293)) - (intracellular * function_216(Keq_r_0874_215, Vmax_r_0874_215, intracellular, kmp_s_0763_br_0874_215, kmp_s_1225r_0874_215, kmp_s_1290r_0874_215, kms_s_1226r_0874_215, kms_s_1293r_0874_215, s_0763_b, s_1225, s_1226, s_1290, s_1293)) - (intracellular * function_246(Keq_r_0967_245, Vmax_r_0967_245, intracellular, kmp_s_0669r_0967_245, kmp_s_0763_br_0967_245, kmp_s_1290r_0967_245, kms_s_1293r_0967_245, kms_s_1447r_0967_245, s_0669, s_0763_b, s_1290, s_1293, s_1447));
    der(s_1304) = (intracellular * function_262(Keq_r_1035_261, Vmax_r_1035_261, intracellular, kmp_s_0731r_1035_261, kmp_s_1304r_1035_261, kms_s_0533r_1035_261, kms_s_0539r_1035_261, s_0533, s_0539, s_0731, s_1304)) - (intracellular * function_263(Keq_r_1036_262, Vmax_r_1036_262, intracellular, kmp_s_0427r_1036_262, kmp_s_0561r_1036_262, kms_s_0731r_1036_262, kms_s_1304r_1036_262, s_0427, s_0561, s_0731, s_1304));
    der(s_1306) = (intracellular * function_250(Keq_r_0976_249, Vmax_r_0976_249, intracellular, kmp_s_1091r_0976_249, kmp_s_1306r_0976_249, kms_s_0217r_0976_249, kms_s_0763_br_0976_249, kms_s_1096r_0976_249, s_0217, s_0763_b, s_1091, s_1096, s_1306)) - (intracellular * function_251(Keq_r_0977_250, Vmax_r_0977_250, intracellular, kmp_s_0267r_0977_250, kmp_s_0400r_0977_250, kmp_s_0763_br_0977_250, kms_s_0446r_0977_250, kms_s_1306r_0977_250, s_0267, s_0400, s_0446, s_0763_b, s_1306));
    der(s_1315) = (intracellular * function_138(Keq_r_0530_137, Vmax_r_0530_137, intracellular, kmp_s_1082r_0530_137, kmp_s_1315r_0530_137, kms_s_0735r_0530_137, kms_s_0763_br_0530_137, kms_s_1087r_0530_137, s_0735, s_0763_b, s_1082, s_1087, s_1315)) - (intracellular * function_136(Keq_r_0528_135, Vmax_r_0528_135, intracellular, kmp_s_0732r_0528_135, kmp_s_1207r_0528_135, kms_s_1315r_0528_135, kms_s_1434_br_0528_135, s_0732, s_1207, s_1315, s_1434_b)) - (intracellular * function_137(Keq_r_0529_136, Vmax_r_0529_136, intracellular, kmp_s_0659r_0529_136, kmp_s_0735r_0529_136, kms_s_0657r_0529_136, kms_s_1315r_0529_136, s_0657, s_0659, s_0735, s_1315)) - (intracellular * function_139(Keq_r_0534_138, Vmax_r_0534_138, intracellular, kmp_s_0083r_0534_138, kmp_s_0514r_0534_138, kmp_s_0763_br_0534_138, kms_s_0386r_0534_138, kms_s_1315r_0534_138, s_0083, s_0386, s_0514, s_0763_b, s_1315));
    der(s_1325) = (intracellular * function_18(Keq_r_0044_17, Vmax_r_0044_17, intracellular, kmp_s_1091r_0044_17, kmp_s_1325r_0044_17, kms_s_0218r_0044_17, kms_s_0763_br_0044_17, kms_s_1096r_0044_17, s_0218, s_0763_b, s_1091, s_1096, s_1325)) - (intracellular * function_75(Keq_r_0290_74, Vmax_r_0290_74, intracellular, kmp_s_0514r_0290_74, kmp_s_0763_br_0290_74, kmp_s_1080r_0290_74, kms_s_1325r_0290_74, kms_s_1355r_0290_74, s_0514, s_0763_b, s_1080, s_1325, s_1355));
    der(s_1327) = (intracellular * function_253(Keq_r_0993_252, Vmax_r_0993_252, intracellular, kmp_s_0605r_0993_252, kmp_s_1091r_0993_252, kmp_s_1327r_0993_252, kms_s_0195r_0993_252, kms_s_0763_br_0993_252, kms_s_1096r_0993_252, s_0195, s_0605, s_0763_b, s_1091, s_1096, s_1327)) - (intracellular * function_252(Keq_r_0991_251, Vmax_r_0991_251, intracellular, kmp_s_0040r_0991_251, kmp_s_1082r_0991_251, kmp_s_1434_br_0991_251, kms_s_0763_br_0991_251, kms_s_1087r_0991_251, kms_s_1160r_0991_251, kms_s_1327r_0991_251, s_0040, s_0763_b, s_1082, s_1087, s_1160, s_1327, s_1434_b));
    der(s_1329) = (intracellular * function_109(Keq_r_0423_108, Vmax_r_0423_108, intracellular, kmp_s_0470r_0423_108, kmp_s_0514r_0423_108, kmp_s_1091r_0423_108, kmp_s_1329r_0423_108, kmp_s_1434_br_0423_108, kms_s_0763_br_0423_108, kms_s_1005r_0423_108, kms_s_1096r_0423_108, kms_s_1170r_0423_108, s_0470, s_0514, s_0763_b, s_1005, s_1091, s_1096, s_1170, s_1329, s_1434_b)) + (intracellular * function_114(Keq_r_0439_113, Vmax_r_0439_113, intracellular, kmp_s_0446r_0439_113, kmp_s_0514r_0439_113, kmp_s_1329r_0439_113, kms_s_0434r_0439_113, kms_s_0605r_0439_113, kms_s_1334r_0439_113, s_0434, s_0446, s_0514, s_0605, s_1329, s_1334)) - (intracellular * function_110(Keq_r_0425_109, Vmax_r_0425_109, intracellular, kmp_s_0470r_0425_109, kmp_s_0514r_0425_109, kmp_s_0987r_0425_109, kmp_s_1091r_0425_109, kmp_s_1434_br_0425_109, kms_s_0763_br_0425_109, kms_s_1005r_0425_109, kms_s_1096r_0425_109, kms_s_1329r_0425_109, s_0470, s_0514, s_0763_b, s_0987, s_1005, s_1091, s_1096, s_1329, s_1434_b));
    der(s_1334) = (intracellular * function_119(Keq_r_0467_118, Vmax_r_0467_118, intracellular, kmp_s_0470r_0467_118, kmp_s_0514r_0467_118, kmp_s_1091r_0467_118, kmp_s_1334r_0467_118, kmp_s_1434_br_0467_118, kms_s_0763_br_0467_118, kms_s_1005r_0467_118, kms_s_1096r_0467_118, kms_s_1187r_0467_118, s_0470, s_0514, s_0763_b, s_1005, s_1091, s_1096, s_1187, s_1334, s_1434_b)) - (intracellular * function_114(Keq_r_0439_113, Vmax_r_0439_113, intracellular, kmp_s_0446r_0439_113, kmp_s_0514r_0439_113, kmp_s_1329r_0439_113, kms_s_0434r_0439_113, kms_s_0605r_0439_113, kms_s_1334r_0439_113, s_0434, s_0446, s_0514, s_0605, s_1329, s_1334));
    der(s_1338) = (intracellular * function_123(Keq_r_0488_122, Vmax_r_0488_122, intracellular, kmp_s_0657r_0488_122, kmp_s_1338r_0488_122, kms_s_0659r_0488_122, kms_s_0692r_0488_122, s_0657, s_0659, s_0692, s_1338)) + (intracellular * function_168(Keq_r_0633_167, Vmax_r_0633_167, intracellular, kmp_s_0749r_0633_167, kmp_s_1338r_0633_167, kms_s_0847r_0633_167, s_0749, s_0847, s_1338)) - (intracellular * function_255(Keq_r_1003_254, Vmax_r_1003_254, intracellular, kmp_s_0400r_1003_254, kmp_s_1207r_1003_254, kmp_s_1342r_1003_254, kms_s_0446r_1003_254, kms_s_0514r_1003_254, kms_s_1338r_1003_254, s_0400, s_0446, s_0514, s_1207, s_1338, s_1342)) - (function_280(Keq_r_1503_279, Vmax_r_1503_279, kmp_s_0766_br_1503_279, kmp_s_1339_br_1503_279, kms_s_0763_br_1503_279, kms_s_1338r_1503_279, s_0763_b, s_0766_b, s_1338, s_1339_b));
    der(s_1342) = (intracellular * function_255(Keq_r_1003_254, Vmax_r_1003_254, intracellular, kmp_s_0400r_1003_254, kmp_s_1207r_1003_254, kmp_s_1342r_1003_254, kms_s_0446r_1003_254, kms_s_0514r_1003_254, kms_s_1338r_1003_254, s_0400, s_0446, s_0514, s_1207, s_1338, s_1342)) - (intracellular * function_282(Keq_r_1672_281, Vmax_r_1672_281, intracellular, kmp_s_0386r_1672_281, kms_s_1342r_1672_281, s_0386, s_1342));
    der(s_1347) = (function_281(Keq_r_1507_280, Vmax_r_1507_280, kmp_s_1347r_1507_280, kms_s_1348_br_1507_280, s_1347, s_1348_b)) - (intracellular * function_256(Keq_r_1007_255, Vmax_r_1007_255, intracellular, kmp_s_0304r_1007_255, kmp_s_1207r_1007_255, kms_s_0400r_1007_255, kms_s_0763_br_1007_255, kms_s_1347r_1007_255, s_0304, s_0400, s_0763_b, s_1207, s_1347)) - (0.02 * intracellular * function_283(V_o_282, a_s_0001r_1812_282, a_s_0416r_1812_282, a_s_0434r_1812_282, a_s_0446r_1812_282, a_s_0511r_1812_282, a_s_0564r_1812_282, a_s_0569r_1812_282, a_s_0593r_1812_282, a_s_0619r_1812_282, a_s_0740r_1812_282, a_s_0743r_1812_282, a_s_0752r_1812_282, a_s_0863r_1812_282, a_s_0873r_1812_282, a_s_0877r_1812_282, a_s_0881r_1812_282, a_s_0889r_1812_282, a_s_0899r_1812_282, a_s_0907r_1812_282, a_s_0911r_1812_282, a_s_0920r_1812_282, a_s_0925r_1812_282, a_s_0929r_1812_282, a_s_0933r_1812_282, a_s_0936r_1812_282, a_s_0939r_1812_282, a_s_0943r_1812_282, a_s_0949r_1812_282, a_s_0952r_1812_282, a_s_0955r_1812_282, a_s_0960r_1812_282, a_s_1000r_1812_282, a_s_1011r_1812_282, a_s_1283r_1812_282, a_s_1347r_1812_282, a_s_1417r_1812_282, intracellular, s_0001, s_0001_or_1812_282, s_0416, s_0416_or_1812_282, s_0434, s_0434_or_1812_282, s_0446, s_0446_or_1812_282, s_0511, s_0511_or_1812_282, s_0564, s_0564_or_1812_282, s_0569, s_0569_or_1812_282, s_0593, s_0593_or_1812_282, s_0619, s_0619_or_1812_282, s_0740, s_0740_or_1812_282, s_0743, s_0743_or_1812_282, s_0752, s_0752_or_1812_282, s_0863, s_0863_or_1812_282, s_0873, s_0873_or_1812_282, s_0877, s_0877_or_1812_282, s_0881, s_0881_or_1812_282, s_0889, s_0889_or_1812_282, s_0899, s_0899_or_1812_282, s_0907, s_0907_or_1812_282, s_0911, s_0911_or_1812_282, s_0920, s_0920_or_1812_282, s_0925, s_0925_or_1812_282, s_0929, s_0929_or_1812_282, s_0933, s_0933_or_1812_282, s_0936, s_0936_or_1812_282, s_0939, s_0939_or_1812_282, s_0943, s_0943_or_1812_282, s_0949, s_0949_or_1812_282, s_0952, s_0952_or_1812_282, s_0955, s_0955_or_1812_282, s_0960, s_0960_or_1812_282, s_1000, s_1000_or_1812_282, s_1011, s_1011_or_1812_282, s_1283, s_1283_or_1812_282, s_1347, s_1347_or_1812_282, s_1417, s_1417_or_1812_282, zero_flux_282));
    der(s_1349) = (intracellular * function_210(Keq_r_0856_209, Vmax_r_0856_209, intracellular, kmp_s_0397r_0856_209, kmp_s_0763_br_0856_209, kmp_s_1349r_0856_209, kmp_s_1517r_0856_209, kms_s_0206r_0856_209, kms_s_1521r_0856_209, s_0206, s_0397, s_0763_b, s_1349, s_1517, s_1521)) - (intracellular * function_257(Keq_r_1008_256, Vmax_r_1008_256, intracellular, kmp_s_0805r_1008_256, kmp_s_1091r_1008_256, kmp_s_1434_br_1008_256, kms_s_0763_br_1008_256, kms_s_1096r_1008_256, kms_s_1349r_1008_256, s_0763_b, s_0805, s_1091, s_1096, s_1349, s_1434_b));
    der(s_1355) = (intracellular * function_113(Keq_r_0437_112, Vmax_r_0437_112, intracellular, kmp_s_0434r_0437_112, kmp_s_0605r_0437_112, kmp_s_1355r_0437_112, kms_s_0446r_0437_112, kms_s_0514r_0437_112, kms_s_0987r_0437_112, s_0434, s_0446, s_0514, s_0605, s_0987, s_1355)) - (intracellular * function_75(Keq_r_0290_74, Vmax_r_0290_74, intracellular, kmp_s_0514r_0290_74, kmp_s_0763_br_0290_74, kmp_s_1080r_0290_74, kms_s_1325r_0290_74, kms_s_1355r_0290_74, s_0514, s_0763_b, s_1080, s_1325, s_1355));
    der(s_1379) = (intracellular * function_176(Keq_r_0661_175, Vmax_r_0661_175, intracellular, kmp_s_1082r_0661_175, kmp_s_1379r_0661_175, kms_s_0118r_0661_175, kms_s_0763_br_0661_175, kms_s_1087r_0661_175, s_0118, s_0763_b, s_1082, s_1087, s_1379)) - (intracellular * function_175(Keq_r_0660_174, Vmax_r_0660_174, intracellular, kmp_s_0118r_0660_174, kmp_s_0763_br_0660_174, kmp_s_1096r_0660_174, kms_s_1091r_0660_174, kms_s_1379r_0660_174, s_0118, s_0763_b, s_1091, s_1096, s_1379));
    der(s_1399) = 0.0;
    der(s_1411) = (intracellular * function_1(Keq_r_0005_0, Vmax_r_0005_0, intracellular, kmp_s_0001r_0005_0, kmp_s_0763_br_0005_0, kmp_s_1411r_0005_0, kms_s_1415r_0005_0, s_0001, s_0763_b, s_1411, s_1415)) + (intracellular * function_46(Vmax_r_0213_45, kms_s_0410r_0213_45, kms_s_1415r_0213_45, s_0410, s_1415, s_0419, s_0763_b, s_1411, Keq_r_0213_45, kmp_s_0419r_0213_45, kmp_s_0763_br_0213_45, kmp_s_1411r_0213_45, s_1415, kmI_s_1415rm_0213_45, intracellular)) + (intracellular * function_142(Keq_r_0547_141, Vmax_r_0547_141, intracellular, kmp_s_0438r_0547_141, kmp_s_0763_br_0547_141, kmp_s_1411r_0547_141, kms_s_1415r_0547_141, kms_s_1434_br_0547_141, s_0438, s_0763_b, s_1411, s_1415, s_1434_b)) + (intracellular * function_270(Keq_r_1059_269, Vmax_r_1059_269, intracellular, kmp_s_0400r_1059_269, kmp_s_1411r_1059_269, kms_s_0446r_1059_269, kms_s_1417r_1059_269, s_0400, s_0446, s_1411, s_1417)) - (intracellular * function_199(Keq_r_0779_198, Vmax_r_0779_198, intracellular, kmp_s_0400r_0779_198, kmp_s_1430r_0779_198, kms_s_0446r_0779_198, kms_s_1411r_0779_198, s_0400, s_0446, s_1411, s_1430)) - (intracellular * function_242(Keq_r_0957_241, Vmax_r_0957_241, intracellular, kmp_s_0622r_0957_241, kmp_s_1434_br_0957_241, kmp_s_1517r_0957_241, kms_s_1411r_0957_241, kms_s_1521r_0957_241, s_0622, s_1411, s_1434_b, s_1517, s_1521));
    der(s_1415) = (intracellular * function_272(Keq_r_1072_271, Vmax_r_1072_271, intracellular, kmp_s_0605r_1072_271, kmp_s_1415r_1072_271, kms_s_0549r_1072_271, kms_s_0763_br_1072_271, kms_s_1430r_1072_271, s_0549, s_0605, s_0763_b, s_1415, s_1430)) - (intracellular * function_1(Keq_r_0005_0, Vmax_r_0005_0, intracellular, kmp_s_0001r_0005_0, kmp_s_0763_br_0005_0, kmp_s_1411r_0005_0, kms_s_1415r_0005_0, s_0001, s_0763_b, s_1411, s_1415)) - (intracellular * function_46(Vmax_r_0213_45, kms_s_0410r_0213_45, kms_s_1415r_0213_45, s_0410, s_1415, s_0419, s_0763_b, s_1411, Keq_r_0213_45, kmp_s_0419r_0213_45, kmp_s_0763_br_0213_45, kmp_s_1411r_0213_45, s_1415, kmI_s_1415rm_0213_45, intracellular)) - (intracellular * function_142(Keq_r_0547_141, Vmax_r_0547_141, intracellular, kmp_s_0438r_0547_141, kmp_s_0763_br_0547_141, kmp_s_1411r_0547_141, kms_s_1415r_0547_141, kms_s_1434_br_0547_141, s_0438, s_0763_b, s_1411, s_1415, s_1434_b));
    der(s_1417) = (intracellular * function_204(Keq_r_0794_203, Vmax_r_0794_203, intracellular, kmp_s_0470r_0794_203, kmp_s_1417r_0794_203, kms_s_0763_br_0794_203, kms_s_1155r_0794_203, s_0470, s_0763_b, s_1155, s_1417)) - (intracellular * function_270(Keq_r_1059_269, Vmax_r_1059_269, intracellular, kmp_s_0400r_1059_269, kmp_s_1411r_1059_269, kms_s_0446r_1059_269, kms_s_1417r_1059_269, s_0400, s_0446, s_1411, s_1417)) - (0.067 * intracellular * function_283(V_o_282, a_s_0001r_1812_282, a_s_0416r_1812_282, a_s_0434r_1812_282, a_s_0446r_1812_282, a_s_0511r_1812_282, a_s_0564r_1812_282, a_s_0569r_1812_282, a_s_0593r_1812_282, a_s_0619r_1812_282, a_s_0740r_1812_282, a_s_0743r_1812_282, a_s_0752r_1812_282, a_s_0863r_1812_282, a_s_0873r_1812_282, a_s_0877r_1812_282, a_s_0881r_1812_282, a_s_0889r_1812_282, a_s_0899r_1812_282, a_s_0907r_1812_282, a_s_0911r_1812_282, a_s_0920r_1812_282, a_s_0925r_1812_282, a_s_0929r_1812_282, a_s_0933r_1812_282, a_s_0936r_1812_282, a_s_0939r_1812_282, a_s_0943r_1812_282, a_s_0949r_1812_282, a_s_0952r_1812_282, a_s_0955r_1812_282, a_s_0960r_1812_282, a_s_1000r_1812_282, a_s_1011r_1812_282, a_s_1283r_1812_282, a_s_1347r_1812_282, a_s_1417r_1812_282, intracellular, s_0001, s_0001_or_1812_282, s_0416, s_0416_or_1812_282, s_0434, s_0434_or_1812_282, s_0446, s_0446_or_1812_282, s_0511, s_0511_or_1812_282, s_0564, s_0564_or_1812_282, s_0569, s_0569_or_1812_282, s_0593, s_0593_or_1812_282, s_0619, s_0619_or_1812_282, s_0740, s_0740_or_1812_282, s_0743, s_0743_or_1812_282, s_0752, s_0752_or_1812_282, s_0863, s_0863_or_1812_282, s_0873, s_0873_or_1812_282, s_0877, s_0877_or_1812_282, s_0881, s_0881_or_1812_282, s_0889, s_0889_or_1812_282, s_0899, s_0899_or_1812_282, s_0907, s_0907_or_1812_282, s_0911, s_0911_or_1812_282, s_0920, s_0920_or_1812_282, s_0925, s_0925_or_1812_282, s_0929, s_0929_or_1812_282, s_0933, s_0933_or_1812_282, s_0936, s_0936_or_1812_282, s_0939, s_0939_or_1812_282, s_0943, s_0943_or_1812_282, s_0949, s_0949_or_1812_282, s_0952, s_0952_or_1812_282, s_0955, s_0955_or_1812_282, s_0960, s_0960_or_1812_282, s_1000, s_1000_or_1812_282, s_1011, s_1011_or_1812_282, s_1283, s_1283_or_1812_282, s_1347, s_1347_or_1812_282, s_1417, s_1417_or_1812_282, zero_flux_282));
    der(s_1430) = (intracellular * function_199(Keq_r_0779_198, Vmax_r_0779_198, intracellular, kmp_s_0400r_0779_198, kmp_s_1430r_0779_198, kms_s_0446r_0779_198, kms_s_1411r_0779_198, s_0400, s_0446, s_1411, s_1430)) - (intracellular * function_82(Keq_r_0336_81, Vmax_r_0336_81, intracellular, kmp_s_0400r_0336_81, kmp_s_0521r_0336_81, kmp_s_0763_br_0336_81, kmp_s_1207r_0336_81, kms_s_0430r_0336_81, kms_s_0446r_0336_81, kms_s_1430r_0336_81, s_0400, s_0430, s_0446, s_0521, s_0763_b, s_1207, s_1430)) - (intracellular * function_272(Keq_r_1072_271, Vmax_r_1072_271, intracellular, kmp_s_0605r_1072_271, kmp_s_1415r_1072_271, kms_s_0549r_1072_271, kms_s_0763_br_1072_271, kms_s_1430r_1072_271, s_0549, s_0605, s_0763_b, s_1415, s_1430));
    der(s_1447) = (intracellular * function_64(Keq_r_0264_63, Vmax_r_0264_63, intracellular, kmp_s_1091r_0264_63, kmp_s_1447r_0264_63, kms_s_0763_br_0264_63, kms_s_1096r_0264_63, kms_s_1458r_0264_63, s_0763_b, s_1091, s_1096, s_1447, s_1458)) - (intracellular * function_76(Keq_r_0298_75, Vmax_r_0298_75, intracellular, kmp_s_0632r_0298_75, kmp_s_0763_br_0298_75, kmp_s_1290r_0298_75, kmp_s_1434_br_0298_75, kms_s_1160r_0298_75, kms_s_1293r_0298_75, kms_s_1447r_0298_75, s_0632, s_0763_b, s_1160, s_1290, s_1293, s_1434_b, s_1447)) - (intracellular * function_246(Keq_r_0967_245, Vmax_r_0967_245, intracellular, kmp_s_0669r_0967_245, kmp_s_0763_br_0967_245, kmp_s_1290r_0967_245, kms_s_1293r_0967_245, kms_s_1447r_0967_245, s_0669, s_0763_b, s_1290, s_1293, s_1447)) - (1.5e-05 * intracellular * function_285(V_o_284, a_s_0090r_1816_284, a_s_0124r_1816_284, a_s_0627r_1816_284, a_s_0632r_1816_284, a_s_0635r_1816_284, a_s_0641r_1816_284, a_s_0663r_1816_284, a_s_0669r_1816_284, a_s_0824r_1816_284, a_s_0963r_1816_284, a_s_1219r_1816_284, a_s_1228r_1816_284, a_s_1233r_1816_284, a_s_1399r_1816_284, a_s_1447r_1816_284, intracellular, s_0090, s_0090_or_1816_284, s_0124, s_0124_or_1816_284, s_0627, s_0627_or_1816_284, s_0632, s_0632_or_1816_284, s_0635, s_0635_or_1816_284, s_0641, s_0641_or_1816_284, s_0663, s_0663_or_1816_284, s_0669, s_0669_or_1816_284, s_0824, s_0824_or_1816_284, s_0963, s_0963_or_1816_284, s_1219, s_1219_or_1816_284, s_1228, s_1228_or_1816_284, s_1233, s_1233_or_1816_284, s_1399, s_1399_or_1816_284, s_1447, s_1447_or_1816_284, zero_flux_284));
    der(s_1455) = (intracellular * function_65(Keq_r_0265_64, Vmax_r_0265_64, intracellular, kmp_s_1091r_0265_64, kmp_s_1434_br_0265_64, kmp_s_1455r_0265_64, kms_s_0302r_0265_64, kms_s_0763_br_0265_64, kms_s_1096r_0265_64, kms_s_1160r_0265_64, s_0302, s_0763_b, s_1091, s_1096, s_1160, s_1434_b, s_1455)) - (intracellular * function_66(Keq_r_0266_65, Vmax_r_0266_65, intracellular, kmp_s_1091r_0266_65, kmp_s_1434_br_0266_65, kmp_s_1456r_0266_65, kms_s_0763_br_0266_65, kms_s_1096r_0266_65, kms_s_1160r_0266_65, kms_s_1455r_0266_65, s_0763_b, s_1091, s_1096, s_1160, s_1434_b, s_1455, s_1456));
    der(s_1456) = (intracellular * function_66(Keq_r_0266_65, Vmax_r_0266_65, intracellular, kmp_s_1091r_0266_65, kmp_s_1434_br_0266_65, kmp_s_1456r_0266_65, kms_s_0763_br_0266_65, kms_s_1096r_0266_65, kms_s_1160r_0266_65, kms_s_1455r_0266_65, s_0763_b, s_1091, s_1096, s_1160, s_1434_b, s_1455, s_1456)) - (intracellular * function_67(Keq_r_0267_66, Vmax_r_0267_66, intracellular, kmp_s_1091r_0267_66, kmp_s_1434_br_0267_66, kmp_s_1457r_0267_66, kms_s_0763_br_0267_66, kms_s_1096r_0267_66, kms_s_1160r_0267_66, kms_s_1456r_0267_66, s_0763_b, s_1091, s_1096, s_1160, s_1434_b, s_1456, s_1457));
    der(s_1457) = (intracellular * function_67(Keq_r_0267_66, Vmax_r_0267_66, intracellular, kmp_s_1091r_0267_66, kmp_s_1434_br_0267_66, kmp_s_1457r_0267_66, kms_s_0763_br_0267_66, kms_s_1096r_0267_66, kms_s_1160r_0267_66, kms_s_1456r_0267_66, s_0763_b, s_1091, s_1096, s_1160, s_1434_b, s_1456, s_1457)) - (intracellular * function_61(Keq_r_0261_60, Vmax_r_0261_60, intracellular, kmp_s_0470r_0261_60, kmp_s_0763_br_0261_60, kmp_s_1096r_0261_60, kmp_s_1458r_0261_60, kms_s_1091r_0261_60, kms_s_1457r_0261_60, s_0470, s_0763_b, s_1091, s_1096, s_1457, s_1458));
    der(s_1458) = (intracellular * function_61(Keq_r_0261_60, Vmax_r_0261_60, intracellular, kmp_s_0470r_0261_60, kmp_s_0763_br_0261_60, kmp_s_1096r_0261_60, kmp_s_1458r_0261_60, kms_s_1091r_0261_60, kms_s_1457r_0261_60, s_0470, s_0763_b, s_1091, s_1096, s_1457, s_1458)) - (intracellular * function_64(Keq_r_0264_63, Vmax_r_0264_63, intracellular, kmp_s_1091r_0264_63, kmp_s_1447r_0264_63, kms_s_0763_br_0264_63, kms_s_1096r_0264_63, kms_s_1458r_0264_63, s_0763_b, s_1091, s_1096, s_1447, s_1458));
    der(s_1517) = (intracellular * function_210(Keq_r_0856_209, Vmax_r_0856_209, intracellular, kmp_s_0397r_0856_209, kmp_s_0763_br_0856_209, kmp_s_1349r_0856_209, kmp_s_1517r_0856_209, kms_s_0206r_0856_209, kms_s_1521r_0856_209, s_0206, s_0397, s_0763_b, s_1349, s_1517, s_1521)) + (intracellular * function_240(Keq_r_0951_239, Vmax_r_0951_239, intracellular, kmp_s_0562r_0951_239, kmp_s_1434_br_0951_239, kmp_s_1517r_0951_239, kms_s_0400r_0951_239, kms_s_1521r_0951_239, s_0400, s_0562, s_1434_b, s_1517, s_1521)) + (intracellular * function_241(Keq_r_0955_240, Vmax_r_0955_240, intracellular, kmp_s_0591r_0955_240, kmp_s_1434_br_0955_240, kmp_s_1517r_0955_240, kms_s_0706r_0955_240, kms_s_1521r_0955_240, s_0591, s_0706, s_1434_b, s_1517, s_1521)) + (intracellular * function_242(Keq_r_0957_241, Vmax_r_0957_241, intracellular, kmp_s_0622r_0957_241, kmp_s_1434_br_0957_241, kmp_s_1517r_0957_241, kms_s_1411r_0957_241, kms_s_1521r_0957_241, s_0622, s_1411, s_1434_b, s_1517, s_1521)) + (intracellular * function_243(Keq_r_0959_242, Vmax_r_0959_242, intracellular, kmp_s_0566r_0959_242, kmp_s_1434_br_0959_242, kmp_s_1517r_0959_242, kms_s_0446r_0959_242, kms_s_1521r_0959_242, s_0446, s_0566, s_1434_b, s_1517, s_1521)) - (intracellular * function_258(Keq_r_1024_257, Vmax_r_1024_257, intracellular, kmp_s_1091r_1024_257, kmp_s_1521r_1024_257, kms_s_0763_br_1024_257, kms_s_1096r_1024_257, kms_s_1517r_1024_257, s_0763_b, s_1091, s_1096, s_1517, s_1521));
    der(s_1521) = (intracellular * function_258(Keq_r_1024_257, Vmax_r_1024_257, intracellular, kmp_s_1091r_1024_257, kmp_s_1521r_1024_257, kms_s_0763_br_1024_257, kms_s_1096r_1024_257, kms_s_1517r_1024_257, s_0763_b, s_1091, s_1096, s_1517, s_1521)) - (intracellular * function_210(Keq_r_0856_209, Vmax_r_0856_209, intracellular, kmp_s_0397r_0856_209, kmp_s_0763_br_0856_209, kmp_s_1349r_0856_209, kmp_s_1517r_0856_209, kms_s_0206r_0856_209, kms_s_1521r_0856_209, s_0206, s_0397, s_0763_b, s_1349, s_1517, s_1521)) - (intracellular * function_240(Keq_r_0951_239, Vmax_r_0951_239, intracellular, kmp_s_0562r_0951_239, kmp_s_1434_br_0951_239, kmp_s_1517r_0951_239, kms_s_0400r_0951_239, kms_s_1521r_0951_239, s_0400, s_0562, s_1434_b, s_1517, s_1521)) - (intracellular * function_241(Keq_r_0955_240, Vmax_r_0955_240, intracellular, kmp_s_0591r_0955_240, kmp_s_1434_br_0955_240, kmp_s_1517r_0955_240, kms_s_0706r_0955_240, kms_s_1521r_0955_240, s_0591, s_0706, s_1434_b, s_1517, s_1521)) - (intracellular * function_242(Keq_r_0957_241, Vmax_r_0957_241, intracellular, kmp_s_0622r_0957_241, kmp_s_1434_br_0957_241, kmp_s_1517r_0957_241, kms_s_1411r_0957_241, kms_s_1521r_0957_241, s_0622, s_1411, s_1434_b, s_1517, s_1521)) - (intracellular * function_243(Keq_r_0959_242, Vmax_r_0959_242, intracellular, kmp_s_0566r_0959_242, kmp_s_1434_br_0959_242, kmp_s_1517r_0959_242, kms_s_0446r_0959_242, kms_s_1521r_0959_242, s_0446, s_0566, s_1434_b, s_1517, s_1521));
    der(s_0763_b) = 0.0;
    der(s_1434_b) = 0.0;
    der(species_1) = 0.0;
    der(s_0431_b) = 0.0;
    der(s_0464_b) = 0.0;
    der(s_0472_b) = 0.0;
    der(s_0547_b) = 0.0;
    der(s_0651_b) = 0.0;
    der(s_0766_b) = 0.0;
    der(s_1162_b) = 0.0;
    der(s_1209_b) = 0.0;
    der(s_1339_b) = 0.0;
    der(s_1348_b) = 0.0;


    when time > 1000 then
        reinit(s_0547_b,7.77);
    end when;

end BIOMD497;
