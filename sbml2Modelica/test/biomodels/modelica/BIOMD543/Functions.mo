within BIOMD543;
class Functions

    function elmt_function_1
        input Real arg_parameter_52;
        input Real arg_parameter_53;
        input Real arg_species_23;

        output Real result;
        algorithm
            result := ((arg_parameter_52 * arg_species_23) / (arg_parameter_53 + arg_species_23));
    end elmt_function_1;

    function elmt_function_activation
        input Real arg_v;
        input Real arg_a;
        input Real arg_b;
        input Real arg_k;

        output Real result;
        algorithm
            result := ((arg_v * arg_a * arg_b) / (arg_b + arg_k));
    end elmt_function_activation;

    function elmt_function_4
        input Real arg_c2;
        input Real arg_parameter_152;
        input Real arg_parameter_153;
        input Real arg_species_24;
        input Real arg_species_94;
        input Real arg_species_95;

        output Real result;
        algorithm
            result := (arg_c2 * ((arg_parameter_152 * arg_species_24 * arg_species_95) - (arg_parameter_153 * arg_species_94)));
    end elmt_function_4;

    function elmt_function_5
        input Real arg_c2;
        input Real arg_parameter_155;
        input Real arg_species_94;

        output Real result;
        algorithm
            result := (arg_c2 * arg_parameter_155 * arg_species_94);
    end elmt_function_5;

    function elmt_function_2
        input Real arg_parameter_55;
        input Real arg_species_31;

        output Real result;
        algorithm
            result := (arg_parameter_55 * arg_species_31);
    end elmt_function_2;

    function elmt_function_3
        input Real arg_substrate;
        input Real arg_Km;
        input Real arg_V;

        output Real result;
        algorithm
            result := ((arg_V * arg_substrate) / (arg_Km + arg_substrate));
    end elmt_function_3;

    function elmt_function_8
        input Real arg_c2;
        input Real arg_parameter_169;
        input Real arg_parameter_170;
        input Real arg_species_102;
        input Real arg_species_24;
        input Real arg_species_92;

        output Real result;
        algorithm
            result := (arg_c2 * ((arg_parameter_169 * arg_species_24 * arg_species_92) - (arg_parameter_170 * arg_species_102)));
    end elmt_function_8;

    function elmt_function_9
        input Real arg_c2;
        input Real arg_parameter_171;
        input Real arg_species_102;

        output Real result;
        algorithm
            result := (arg_c2 * arg_parameter_171 * arg_species_102);
    end elmt_function_9;

    function elmt_function_6
        input Real arg_parameter_156;
        input Real arg_parameter_157;
        input Real arg_species_92;

        output Real result;
        algorithm
            result := ((arg_parameter_156 * arg_species_92) / (arg_parameter_157 + arg_species_92));
    end elmt_function_6;

    function elmt_function_7
        input Real arg_parameter_159;
        input Real arg_species_98;

        output Real result;
        algorithm
            result := (arg_parameter_159 * arg_species_98);
    end elmt_function_7;

    function elmt_function_4_reaction_n7_1
        input Real arg_parameter_231;
        input Real arg_parameter_232;
        input Real arg_species_92;

        output Real result;
        algorithm
            result := ((arg_parameter_231 * arg_species_92) / (arg_parameter_232 + arg_species_92));
    end elmt_function_4_reaction_n7_1;


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
