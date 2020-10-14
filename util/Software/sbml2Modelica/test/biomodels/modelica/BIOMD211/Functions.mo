within BIOMD211;
class Functions

    function elmt_function_11
        input Real arg_Vmax_v2;
        input Real arg_GlucoseInt;
        input Real arg_KGlcInt_v2;
        input Real arg_ATPg;
        input Real arg_KATPg_v2;
        input Real arg_ADPg;
        input Real arg_KADPg_v2;
        input Real arg_Glc6P;
        input Real arg_KGlc6P_v2;

        output Real result;
        algorithm
            result := ((arg_Vmax_v2 * (arg_GlucoseInt / arg_KGlcInt_v2) * (arg_ATPg / arg_KATPg_v2)) / ((1.0 + (arg_ATPg / arg_KATPg_v2) + (arg_ADPg / arg_KADPg_v2)) * (1.0 + (arg_GlucoseInt / arg_KGlcInt_v2) + (arg_Glc6P / arg_KGlc6P_v2))));
    end elmt_function_11;

    function elmt_function_22
        input Real arg_k;
        input Real arg_atp;
        input Real arg_amp;
        input Real arg_keqak;
        input Real arg_adp;

        output Real result;
        algorithm
            result := (arg_k * ((arg_atp * arg_amp) - (arg_keqak * arg_adp * arg_adp)));
    end elmt_function_22;

    function elmt_function_12
        input Real arg_substrate;
        input Real arg_product;
        input Real arg_Kms;
        input Real arg_Kmp;
        input Real arg_Vf;
        input Real arg_Vr;

        output Real result;
        algorithm
            result := ((((arg_Vf * arg_substrate) / arg_Kms) - ((arg_Vr * arg_product) / arg_Kmp)) / (1.0 + (arg_substrate / arg_Kms) + (arg_product / arg_Kmp)));
    end elmt_function_12;

    function elmt_function_20
        input Real arg_k;
        input Real arg_atpc;
        input Real arg_adpc;

        output Real result;
        algorithm
            result := ((arg_k * arg_atpc) / arg_adpc);
    end elmt_function_20;

    function elmt_function_21
        input Real arg_Vmax_v14;
        input Real arg_Gly3Pg;
        input Real arg_KGly3Pg_v14;
        input Real arg_ADPg;
        input Real arg_KADPg_v14;
        input Real arg_r_v14;
        input Real arg_Glycerol;
        input Real arg_KGlycerol_v14;
        input Real arg_ATPg;
        input Real arg_KATPg_v14;

        output Real result;
        algorithm
            result := (arg_Vmax_v14 * ((((arg_Gly3Pg / arg_KGly3Pg_v14) * (arg_ADPg / arg_KADPg_v14)) - (arg_r_v14 * (arg_Glycerol / arg_KGlycerol_v14) * (arg_ATPg / arg_KATPg_v14))) / ((1.0 + (arg_Gly3Pg / arg_KGly3Pg_v14) + (arg_Glycerol / arg_KGlycerol_v14)) * (1.0 + (arg_ADPg / arg_KADPg_v14) + (arg_ATPg / arg_KATPg_v14)))));
    end elmt_function_21;

    function elmt_function_10
        input Real arg_Vmax_v1;
        input Real arg_GlucoseExt;
        input Real arg_GlucoseInt;
        input Real arg_KGlc;
        input Real arg_Alpha_v1;

        output Real result;
        algorithm
            result := (arg_Vmax_v1 * ((arg_GlucoseExt - arg_GlucoseInt) / (arg_KGlc + arg_GlucoseExt + arg_GlucoseInt + ((arg_Alpha_v1 * arg_GlucoseExt * arg_GlucoseInt) / arg_KGlc))));
    end elmt_function_10;

    function elmt_function_15
        input Real arg_Vmax_v7;
        input Real arg_GAP;
        input Real arg_KGAP_v7;
        input Real arg_NAD;
        input Real arg_KNAD_v7;
        input Real arg_r_v7;
        input Real arg_BPGA13;
        input Real arg_KBPGA13_v7;
        input Real arg_NADH;
        input Real arg_KNADH_v7;

        output Real result;
        algorithm
            result := (arg_Vmax_v7 * ((((arg_GAP / arg_KGAP_v7) * (arg_NAD / arg_KNAD_v7)) - (arg_r_v7 * (arg_BPGA13 / arg_KBPGA13_v7) * (arg_NADH / arg_KNADH_v7))) / ((1.0 + (arg_GAP / arg_KGAP_v7) + (arg_BPGA13 / arg_KBPGA13_v7)) * (1.0 + (arg_NAD / arg_KNAD_v7) + (arg_NADH / arg_KNADH_v7)))));
    end elmt_function_15;

    function elmt_function_16
        input Real arg_Vmax_v8;
        input Real arg_DHAPg;
        input Real arg_KDHAPg_v8;
        input Real arg_NADH;
        input Real arg_KNADH_v8;
        input Real arg_r_v8;
        input Real arg_NAD;
        input Real arg_KNAD_v8;
        input Real arg_Gly3Pg;
        input Real arg_KGly3Pg_v8;

        output Real result;
        algorithm
            result := (arg_Vmax_v8 * ((((arg_DHAPg / arg_KDHAPg_v8) * (arg_NADH / arg_KNADH_v8)) - (arg_r_v8 * (arg_NAD / arg_KNAD_v8) * (arg_Gly3Pg / arg_KGly3Pg_v8))) / ((1.0 + (arg_DHAPg / arg_KDHAPg_v8) + (arg_Gly3Pg / arg_KGly3Pg_v8)) * (1.0 + (arg_NADH / arg_KNADH_v8) + (arg_NAD / arg_KNAD_v8)))));
    end elmt_function_16;

    function elmt_function_13
        input Real arg_Vmax_v4;
        input Real arg_Ki1Fru16BP_v4;
        input Real arg_Fru16BP;
        input Real arg_Fru6P;
        input Real arg_KFru6P_v4;
        input Real arg_ATPg;
        input Real arg_KATPg_v4;
        input Real arg_Ki2Fru16BP_v4;

        output Real result;
        algorithm
            result := ((arg_Vmax_v4 * (arg_Ki1Fru16BP_v4 / (arg_Ki1Fru16BP_v4 + arg_Fru16BP)) * (arg_Fru6P / arg_KFru6P_v4) * (arg_ATPg / arg_KATPg_v4)) / ((1.0 + (arg_Fru6P / arg_KFru6P_v4) + (arg_Fru16BP / arg_Ki2Fru16BP_v4)) * (1.0 + (arg_ATPg / arg_KATPg_v4))));
    end elmt_function_13;

    function elmt_function_14
        input Real arg_Vmax_v5;
        input Real arg_Fru16BP;
        input Real arg_GAP;
        input Real arg_DHAPg;
        input Real arg_Keq_v5;
        input Real arg_ATPg;
        input Real arg_ADPg;
        input Real arg_AMPg;
        input Real arg_r_v5;
        input Real arg_KGAP_v5;
        input Real arg_KGAPi_v5;

        output Real result;
        algorithm
            result := ((arg_Vmax_v5 * (arg_Fru16BP - ((arg_GAP * arg_DHAPg) / arg_Keq_v5))) / ((0.009 * (1.0 + (arg_ATPg / 0.68) + (arg_ADPg / 1.51) + (arg_AMPg / 3.65))) + arg_Fru16BP + (arg_GAP * ((0.015 * (1.0 + (arg_ATPg / 0.68) + (arg_ADPg / 1.51) + (arg_AMPg / 3.65))) / arg_Keq_v5) * (1.0 / arg_r_v5)) + (arg_DHAPg * (arg_KGAP_v5 / arg_Keq_v5) * (1.0 / arg_r_v5)) + ((arg_Fru16BP * arg_GAP) / arg_KGAPi_v5) + (((arg_GAP * arg_DHAPg) / arg_Keq_v5) * (1.0 / arg_r_v5))));
    end elmt_function_14;

    function elmt_function_19
        input Real arg_Vmax_v12;
        input Real arg_PEP;
        input Real arg_PK_n;
        input Real arg_ADPc;
        input Real arg_KADP_v12;
        input Real arg_ATPc;

        output Real result;
        algorithm
            result := ((arg_Vmax_v12 * Functions.pow((arg_PEP / (0.34 * (1.0 + (arg_ATPc / 0.57) + (arg_ADPc / 0.64)))), arg_PK_n) * (arg_ADPc / arg_KADP_v12)) / ((1.0 + Functions.pow((arg_PEP / (0.34 * (1.0 + (arg_ATPc / 0.57) + (arg_ADPc / 0.64)))), arg_PK_n)) * (1.0 + (arg_ADPc / arg_KADP_v12))));
    end elmt_function_19;

    function elmt_function_17
        input Real arg_substrate;
        input Real arg_Km;
        input Real arg_V;

        output Real result;
        algorithm
            result := ((arg_V * arg_substrate) / (arg_Km + arg_substrate));
    end elmt_function_17;

    function elmt_function_18
        input Real arg_Vmax_v11;
        input Real arg_BPGA13;
        input Real arg_KBPGA13_v11;
        input Real arg_ADPg;
        input Real arg_KADPg_v11;
        input Real arg_r_v11;
        input Real arg_PGA3;
        input Real arg_KPGA3_v11;
        input Real arg_ATPg;
        input Real arg_KATPg_v11;

        output Real result;
        algorithm
            result := (arg_Vmax_v11 * ((((arg_BPGA13 / arg_KBPGA13_v11) * (arg_ADPg / arg_KADPg_v11)) - (arg_r_v11 * (arg_PGA3 / arg_KPGA3_v11) * (arg_ATPg / arg_KATPg_v11))) / ((1.0 + (arg_BPGA13 / arg_KBPGA13_v11) + (arg_PGA3 / arg_KPGA3_v11)) * (1.0 + (arg_ADPg / arg_KADPg_v11) + (arg_ATPg / arg_KATPg_v11)))));
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
