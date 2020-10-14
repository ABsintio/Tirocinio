within BIOMD444;
class Functions

    function elmt_function_1
        input Real arg_k11f;
        input Real arg_ppERK_c;
        input Real arg_k11b;
        input Real arg_ppERK_n;

        output Real result;
        algorithm
            result := ((arg_k11f * arg_ppERK_c) - (arg_k11b * arg_ppERK_n));
    end elmt_function_1;

    function elmt_function_4_1_1
        input Real arg_A;
        input Real arg_K1;
        input Real arg_Ka;
        input Real arg_V1;
        input Real arg_species_0;
        input Real arg_species_7;

        output Real result;
        algorithm
            result := ((((arg_V1 * arg_species_0) / arg_K1) / (1.0 + (arg_species_0 / arg_K1))) * ((1.0 + ((arg_A * arg_species_7) / arg_Ka)) / (1.0 + (arg_species_7 / arg_Ka))));
    end elmt_function_4_1_1;

    function elmt_function_4_2_1
        input Real arg_K2;
        input Real arg_k2;
        input Real arg_species_1;
        input Real arg_species_8;

        output Real result;
        algorithm
            result := (((arg_k2 * arg_species_8 * arg_species_1) / arg_K2) / (1.0 + (arg_species_1 / arg_K2)));
    end elmt_function_4_2_1;

    function elmt_function_4_3_1
        input Real arg_K3;
        input Real arg_KI;
        input Real arg_k3;
        input Real arg_species_1;
        input Real arg_species_2;
        input Real arg_species_3;
        input Real arg_species_7;

        output Real result;
        algorithm
            result := (((arg_k3 * arg_species_1 * arg_species_2) / arg_K3) / ((1.0 + (arg_species_2 / arg_K3) + (arg_species_3 / arg_K3)) * (1.0 + (arg_species_7 / arg_KI))));
    end elmt_function_4_3_1;

    function elmt_function_4_10_1
        input Real arg_K10;
        input Real arg_k10;
        input Real arg_species_10;
        input Real arg_species_6;
        input Real arg_species_7;

        output Real result;
        algorithm
            result := (((arg_k10 * arg_species_10 * arg_species_6) / arg_K10) / (1.0 + (arg_species_7 / arg_K10) + (arg_species_6 / arg_K10)));
    end elmt_function_4_10_1;

    function elmt_function_4
        input Real arg_k21;
        input Real arg_P3_n;
        input Real arg_M_PP_n;
        input Real arg_K21;
        input Real arg_M_P_n;
        input Real arg_K21i;

        output Real result;
        algorithm
            result := (((arg_k21 * arg_P3_n * arg_M_PP_n) / arg_K21) / (1.0 + (arg_M_PP_n / arg_K21) + (arg_M_P_n / arg_K21i)));
    end elmt_function_4;

    function elmt_function_4_4_1
        input Real arg_K4;
        input Real arg_KI;
        input Real arg_k4;
        input Real arg_species_1;
        input Real arg_species_2;
        input Real arg_species_3;
        input Real arg_species_7;

        output Real result;
        algorithm
            result := (((arg_k4 * arg_species_1 * arg_species_3) / arg_K4) / ((1.0 + (arg_species_2 / arg_K4) + (arg_species_3 / arg_K4)) * (1.0 + (arg_species_7 / arg_KI))));
    end elmt_function_4_4_1;

    function elmt_function_5
        input Real arg_k22;
        input Real arg_P3_n;
        input Real arg_M_P_n;
        input Real arg_K22;
        input Real arg_M_PP_n;
        input Real arg_K22i;

        output Real result;
        algorithm
            result := (((arg_k22 * arg_P3_n * arg_M_P_n) / arg_K22) / (1.0 + (arg_M_P_n / arg_K22) + (arg_M_PP_n / arg_K22i)));
    end elmt_function_5;

    function elmt_function_4_5_1
        input Real arg_K5;
        input Real arg_k5;
        input Real arg_species_3;
        input Real arg_species_4;
        input Real arg_species_9;

        output Real result;
        algorithm
            result := (((arg_k5 * arg_species_9 * arg_species_4) / arg_K5) / (1.0 + (arg_species_4 / arg_K5) + (arg_species_3 / arg_K5)));
    end elmt_function_4_5_1;

    function elmt_function_2
        input Real arg_V12;
        input Real arg_M_PP_n;
        input Real arg_n12;
        input Real arg_K12;

        output Real result;
        algorithm
            result := ((arg_V12 * Functions.pow(arg_M_PP_n, arg_n12)) / (Functions.pow(arg_K12, arg_n12) + Functions.pow(arg_M_PP_n, arg_n12)));
    end elmt_function_2;

    function elmt_function_4_6_1
        input Real arg_K6;
        input Real arg_k6;
        input Real arg_species_3;
        input Real arg_species_4;
        input Real arg_species_9;

        output Real result;
        algorithm
            result := (((arg_k6 * arg_species_9 * arg_species_3) / arg_K6) / (1.0 + (arg_species_4 / arg_K6) + (arg_species_3 / arg_K6)));
    end elmt_function_4_6_1;

    function elmt_function_3
        input Real arg_k15;
        input Real arg_P3mRNA;

        output Real result;
        algorithm
            result := (arg_k15 * arg_P3mRNA);
    end elmt_function_3;

    function elmt_function_4_7_1
        input Real arg_K7;
        input Real arg_k7;
        input Real arg_species_4;
        input Real arg_species_5;
        input Real arg_species_6;

        output Real result;
        algorithm
            result := (((arg_k7 * arg_species_4 * arg_species_5) / arg_K7) / (1.0 + (arg_species_5 / arg_K7) + (arg_species_6 / arg_K7)));
    end elmt_function_4_7_1;

    function elmt_function_4_8_1
        input Real arg_K8;
        input Real arg_k8;
        input Real arg_species_4;
        input Real arg_species_5;
        input Real arg_species_6;

        output Real result;
        algorithm
            result := (((arg_k8 * arg_species_4 * arg_species_6) / arg_K8) / (1.0 + (arg_species_5 / arg_K8) + (arg_species_6 / arg_K8)));
    end elmt_function_4_8_1;

    function elmt_function_4_9_1
        input Real arg_K9;
        input Real arg_k9;
        input Real arg_species_10;
        input Real arg_species_6;
        input Real arg_species_7;

        output Real result;
        algorithm
            result := (((arg_k9 * arg_species_10 * arg_species_7) / arg_K9) / (1.0 + (arg_species_7 / arg_K9) + (arg_species_6 / arg_K9)));
    end elmt_function_4_9_1;


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
