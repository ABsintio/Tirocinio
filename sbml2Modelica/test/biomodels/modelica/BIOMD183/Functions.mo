within BIOMD183;
class Functions

    function elmt_function_22
        input Real arg_parameter_10;
        input Real arg_parameter_11;
        input Real arg_parameter_12;
        input Real arg_parameter_14;
        input Real arg_species_29;

        output Real result;
        algorithm
            result := ((arg_species_29 * arg_parameter_10) / Functions.pow((arg_parameter_11 * arg_parameter_12 * arg_parameter_14), (1.0 / 2.0)));
    end elmt_function_22;

    function elmt_function_23
        input Real arg_parameter_10;
        input Real arg_parameter_11;
        input Real arg_parameter_13;
        input Real arg_parameter_14;
        input Real arg_species_30;

        output Real result;
        algorithm
            result := ((arg_species_30 * arg_parameter_10) / Functions.pow((arg_parameter_11 * arg_parameter_13 * arg_parameter_14), (1.0 / 2.0)));
    end elmt_function_23;

    function elmt_function_20
        input Real arg_parameter_12;
        input Real arg_parameter_13;
        input Real arg_parameter_14;
        input Real arg_parameter_9;
        input Real arg_species_15;

        output Real result;
        algorithm
            result := (arg_species_15 * arg_parameter_9 * Functions.pow((arg_parameter_12 * arg_parameter_13 * arg_parameter_14), (1.0 / 2.0)));
    end elmt_function_20;

    function elmt_function_21
        input Real arg_parameter_10;
        input Real arg_parameter_11;
        input Real arg_parameter_12;
        input Real arg_parameter_13;
        input Real arg_species_28;

        output Real result;
        algorithm
            result := ((arg_species_28 * arg_parameter_10) / Functions.pow((arg_parameter_11 * arg_parameter_12 * arg_parameter_13), (1.0 / 2.0)));
    end elmt_function_21;

    function elmt_function_26
        input Real arg_parameter_10;
        input Real arg_parameter_11;
        input Real arg_parameter_12;
        input Real arg_parameter_13;
        input Real arg_parameter_14;
        input Real arg_species_32;

        output Real result;
        algorithm
            result := ((arg_species_32 * arg_parameter_10) / Functions.pow((arg_parameter_11 * arg_parameter_12 * arg_parameter_13 * arg_parameter_14), (1.0 / 2.0)));
    end elmt_function_26;

    function elmt_function_24
        input Real arg_parameter_10;
        input Real arg_parameter_12;
        input Real arg_parameter_13;
        input Real arg_parameter_14;
        input Real arg_species_31;

        output Real result;
        algorithm
            result := ((arg_species_31 * arg_parameter_10) / Functions.pow((arg_parameter_12 * arg_parameter_13 * arg_parameter_14), (1.0 / 2.0)));
    end elmt_function_24;

    function elmt_function_25
        input Real arg_parameter_11;
        input Real arg_parameter_12;
        input Real arg_parameter_13;
        input Real arg_parameter_14;
        input Real arg_parameter_9;
        input Real arg_species_16;

        output Real result;
        algorithm
            result := (arg_species_16 * arg_parameter_9 * Functions.pow((arg_parameter_11 * arg_parameter_12 * arg_parameter_13 * arg_parameter_14), (1.0 / 2.0)));
    end elmt_function_25;

    function elmt_transition1_R_T
        input Real arg_ka;
        input Real arg_b;
        input Real arg_species;

        output Real result;
        algorithm
            result := (arg_species * arg_ka * Functions.pow(arg_b, (1.0 / 2.0)));
    end elmt_transition1_R_T;

    function elmt_function_1
        input Real arg_parameter_10;
        input Real arg_parameter_11;
        input Real arg_species_18;

        output Real result;
        algorithm
            result := ((arg_species_18 * arg_parameter_10) / Functions.pow(arg_parameter_11, (1.0 / 2.0)));
    end elmt_function_1;

    function elmt_function_4
        input Real arg_parameter_10;
        input Real arg_parameter_14;
        input Real arg_species_21;

        output Real result;
        algorithm
            result := ((arg_species_21 * arg_parameter_10) / Functions.pow(arg_parameter_14, (1.0 / 2.0)));
    end elmt_function_4;

    function elmt_function_5
        input Real arg_parameter_11;
        input Real arg_parameter_12;
        input Real arg_parameter_9;
        input Real arg_species_6;

        output Real result;
        algorithm
            result := (arg_species_6 * arg_parameter_9 * Functions.pow((arg_parameter_11 * arg_parameter_12), (1.0 / 2.0)));
    end elmt_function_5;

    function elmt_function_2
        input Real arg_parameter_10;
        input Real arg_parameter_12;
        input Real arg_species_19;

        output Real result;
        algorithm
            result := ((arg_species_19 * arg_parameter_10) / Functions.pow(arg_parameter_12, (1.0 / 2.0)));
    end elmt_function_2;

    function elmt_function_3
        input Real arg_parameter_10;
        input Real arg_parameter_13;
        input Real arg_species_20;

        output Real result;
        algorithm
            result := ((arg_species_20 * arg_parameter_10) / Functions.pow(arg_parameter_13, (1.0 / 2.0)));
    end elmt_function_3;

    function elmt_function_11
        input Real arg_parameter_10;
        input Real arg_parameter_11;
        input Real arg_parameter_12;
        input Real arg_species_22;

        output Real result;
        algorithm
            result := ((arg_species_22 * arg_parameter_10) / Functions.pow((arg_parameter_11 * arg_parameter_12), (1.0 / 2.0)));
    end elmt_function_11;

    function elmt_function_12
        input Real arg_parameter_10;
        input Real arg_parameter_11;
        input Real arg_parameter_13;
        input Real arg_species_23;

        output Real result;
        algorithm
            result := ((arg_species_23 * arg_parameter_10) / Functions.pow((arg_parameter_11 * arg_parameter_13), (1.0 / 2.0)));
    end elmt_function_12;

    function elmt_function_10
        input Real arg_parameter_13;
        input Real arg_parameter_14;
        input Real arg_parameter_9;
        input Real arg_species_11;

        output Real result;
        algorithm
            result := (arg_species_11 * arg_parameter_9 * Functions.pow((arg_parameter_13 * arg_parameter_14), (1.0 / 2.0)));
    end elmt_function_10;

    function elmt_function_15
        input Real arg_parameter_10;
        input Real arg_parameter_12;
        input Real arg_parameter_14;
        input Real arg_species_26;

        output Real result;
        algorithm
            result := ((arg_species_26 * arg_parameter_10) / Functions.pow((arg_parameter_12 * arg_parameter_14), (1.0 / 2.0)));
    end elmt_function_15;

    function elmt_function_8
        input Real arg_parameter_12;
        input Real arg_parameter_13;
        input Real arg_parameter_9;
        input Real arg_species_9;

        output Real result;
        algorithm
            result := (arg_species_9 * arg_parameter_9 * Functions.pow((arg_parameter_12 * arg_parameter_13), (1.0 / 2.0)));
    end elmt_function_8;

    function elmt_function_16
        input Real arg_parameter_10;
        input Real arg_parameter_13;
        input Real arg_parameter_14;
        input Real arg_species_27;

        output Real result;
        algorithm
            result := ((arg_species_27 * arg_parameter_10) / Functions.pow((arg_parameter_13 * arg_parameter_14), (1.0 / 2.0)));
    end elmt_function_16;

    function elmt_function_9
        input Real arg_parameter_12;
        input Real arg_parameter_14;
        input Real arg_parameter_9;
        input Real arg_species_10;

        output Real result;
        algorithm
            result := (arg_species_10 * arg_parameter_9 * Functions.pow((arg_parameter_12 * arg_parameter_14), (1.0 / 2.0)));
    end elmt_function_9;

    function elmt_function_6
        input Real arg_parameter_11;
        input Real arg_parameter_13;
        input Real arg_parameter_9;
        input Real arg_species_7;

        output Real result;
        algorithm
            result := (arg_species_7 * arg_parameter_9 * Functions.pow((arg_parameter_11 * arg_parameter_13), (1.0 / 2.0)));
    end elmt_function_6;

    function elmt_function_13
        input Real arg_parameter_10;
        input Real arg_parameter_11;
        input Real arg_parameter_14;
        input Real arg_species_24;

        output Real result;
        algorithm
            result := ((arg_species_24 * arg_parameter_10) / Functions.pow((arg_parameter_11 * arg_parameter_14), (1.0 / 2.0)));
    end elmt_function_13;

    function elmt_function_7
        input Real arg_parameter_11;
        input Real arg_parameter_14;
        input Real arg_parameter_9;
        input Real arg_species_8;

        output Real result;
        algorithm
            result := (arg_species_8 * arg_parameter_9 * Functions.pow((arg_parameter_11 * arg_parameter_14), (1.0 / 2.0)));
    end elmt_function_7;

    function elmt_function_14
        input Real arg_parameter_10;
        input Real arg_parameter_12;
        input Real arg_parameter_13;
        input Real arg_species_25;

        output Real result;
        algorithm
            result := ((arg_species_25 * arg_parameter_10) / Functions.pow((arg_parameter_12 * arg_parameter_13), (1.0 / 2.0)));
    end elmt_function_14;

    function elmt_function_19
        input Real arg_parameter_11;
        input Real arg_parameter_13;
        input Real arg_parameter_14;
        input Real arg_parameter_9;
        input Real arg_species_14;

        output Real result;
        algorithm
            result := (arg_species_14 * arg_parameter_9 * Functions.pow((arg_parameter_11 * arg_parameter_13 * arg_parameter_14), (1.0 / 2.0)));
    end elmt_function_19;

    function elmt_function_17
        input Real arg_parameter_11;
        input Real arg_parameter_12;
        input Real arg_parameter_13;
        input Real arg_parameter_9;
        input Real arg_species_12;

        output Real result;
        algorithm
            result := (arg_species_12 * arg_parameter_9 * Functions.pow((arg_parameter_11 * arg_parameter_12 * arg_parameter_13), (1.0 / 2.0)));
    end elmt_function_17;

    function elmt_function_18
        input Real arg_parameter_11;
        input Real arg_parameter_12;
        input Real arg_parameter_14;
        input Real arg_parameter_9;
        input Real arg_species_13;

        output Real result;
        algorithm
            result := (arg_species_13 * arg_parameter_9 * Functions.pow((arg_parameter_11 * arg_parameter_12 * arg_parameter_14), (1.0 / 2.0)));
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
