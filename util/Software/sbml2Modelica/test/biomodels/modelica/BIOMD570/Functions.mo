within BIOMD570;
class Functions

    function elmt_v_GLC_m
        input Real arg_Tmax;
        input Real arg_GLC_c;
        input Real arg_Kt_GLC;
        input Real arg_GLC_i;

        output Real result;
        algorithm
            result := (arg_Tmax * ((arg_GLC_c / (arg_GLC_c + arg_Kt_GLC)) - (arg_GLC_i / (arg_GLC_i + arg_Kt_GLC))));
    end elmt_v_GLC_m;

    function elmt_v_O2_m
        input Real arg_PS_V;
        input Real arg_KO2;
        input Real arg_HbOP;
        input Real arg_O2_c;
        input Real arg_nh;
        input Real arg_O2_i;

        output Real result;
        algorithm
            result := (arg_PS_V * ((arg_KO2 * Functions.pow(((arg_HbOP / arg_O2_c) - 1.0), ((- 1.0) / arg_nh))) - arg_O2_i));
    end elmt_v_O2_m;

    function elmt_v_PGK
        input Real arg_kPGK;
        input Real arg_GAP;
        input Real arg_ADP;
        input Real arg_NAD;
        input Real arg_NADH;

        output Real result;
        algorithm
            result := (arg_kPGK * arg_GAP * arg_ADP * (arg_NAD / arg_NADH));
    end elmt_v_PGK;

    function elmt_v_LAC_c
        input Real arg_F_in;
        input Real arg_V_cap;
        input Real arg_LAC_a;
        input Real arg_LAC_c;

        output Real result;
        algorithm
            result := (((2.0 * arg_F_in) / arg_V_cap) * (arg_LAC_a - arg_LAC_c));
    end elmt_v_LAC_c;

    function elmt_v_O2_c
        input Real arg_F_in;
        input Real arg_V_cap;
        input Real arg_O2_a;
        input Real arg_O2_c;

        output Real result;
        algorithm
            result := (((2.0 * arg_F_in) / arg_V_cap) * (arg_O2_a - arg_O2_c));
    end elmt_v_O2_c;

    function elmt_v_LAC_m
        input Real arg_Tmax;
        input Real arg_LAC_i;
        input Real arg_Kt_LAC;
        input Real arg_LAC_c;

        output Real result;
        algorithm
            result := (arg_Tmax * ((arg_LAC_i / (arg_LAC_i + arg_Kt_LAC)) - (arg_LAC_c / (arg_LAC_c + arg_Kt_LAC))));
    end elmt_v_LAC_m;

    function elmt_function_1
        input Real arg_S_V;
        input Real arg_gNA;
        input Real arg_F;
        input Real arg_RT_F;
        input Real arg_Na_e;
        input Real arg_Na;
        input Real arg_Vm;

        output Real result;
        algorithm
            result := (arg_S_V * (arg_gNA / arg_F) * ((arg_RT_F * log((arg_Na_e / arg_Na))) - arg_Vm));
    end elmt_function_1;

    function elmt_v_dHb_in
        input Real arg_F_in;
        input Real arg_O2_a;
        input Real arg_O2_c;

        output Real result;
        algorithm
            result := (arg_F_in * 2.0 * (arg_O2_a - arg_O2_c));
    end elmt_v_dHb_in;

    function elmt_function_2
        input Real arg_ATP;
        input Real arg_GLC_i;
        input Real arg_Kg;
        input Real arg_KI_ATP;
        input Real arg_nH;
        input Real arg_kHK_PFK;

        output Real result;
        algorithm
            result := ((arg_kHK_PFK * arg_ATP * (arg_GLC_i / (arg_GLC_i + arg_Kg))) / (1.0 + Functions.pow((arg_ATP / arg_KI_ATP), arg_nH)));
    end elmt_function_2;

    function elmt_v_dHb_out
        input Real arg_F_out;
        input Real arg_dHb;
        input Real arg_V_v;

        output Real result;
        algorithm
            result := ((arg_F_out * arg_dHb) / arg_V_v);
    end elmt_v_dHb_out;

    function elmt_v_GLC_c
        input Real arg_F_in;
        input Real arg_V_cap;
        input Real arg_GLC_a;
        input Real arg_GLC_c;

        output Real result;
        algorithm
            result := (((2.0 * arg_F_in) / arg_V_cap) * (arg_GLC_a - arg_GLC_c));
    end elmt_v_GLC_c;

    function elmt_Constant_flux__irreversible
        input Real arg_v;

        output Real result;
        algorithm
            result := arg_v;
    end elmt_Constant_flux__irreversible;

    function elmt_v_pump
        input Real arg_S_V;
        input Real arg_k_pump;
        input Real arg_ATP;
        input Real arg_NA;
        input Real arg_Km_pump;

        output Real result;
        algorithm
            result := ((arg_S_V * arg_k_pump * arg_ATP * arg_NA) / (1.0 + (arg_ATP / arg_Km_pump)));
    end elmt_v_pump;


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
