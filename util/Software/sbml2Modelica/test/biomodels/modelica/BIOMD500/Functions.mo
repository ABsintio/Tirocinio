within BIOMD500;
class Functions

    function elmt_function_4_DNA9
        input Real arg_DNA_001;
        input Real arg_DNA_011;
        input Real arg_Koff_G1;
        input Real arg_Kon_G1;
        input Real arg_S1;
        input Real arg_nucleus;

        output Real result;
        algorithm
            result := (((arg_Kon_G1 * arg_DNA_001 * arg_S1) - (arg_Koff_G1 * arg_DNA_011)) / arg_nucleus);
    end elmt_function_4_DNA9;

    function elmt_function_4_DNA8
        input Real arg_DNA_001;
        input Real arg_DNA_101;
        input Real arg_Koff_NG1;
        input Real arg_Kon_NG1;
        input Real arg_S1;
        input Real arg_nucleus;

        output Real result;
        algorithm
            result := (((arg_Kon_NG1 * arg_DNA_001 * arg_S1) - (arg_Koff_NG1 * arg_DNA_101)) / arg_nucleus);
    end elmt_function_4_DNA8;

    function elmt_function_4_DNA7
        input Real arg_DNA_010;
        input Real arg_DNA_011;
        input Real arg_Koff_NG1;
        input Real arg_Kon_NG1;
        input Real arg_S1;
        input Real arg_nucleus;

        output Real result;
        algorithm
            result := (((arg_Kon_NG1 * arg_DNA_010 * arg_S1) - (arg_Koff_NG1 * arg_DNA_011)) / arg_nucleus);
    end elmt_function_4_DNA7;

    function elmt_function_4_DNA6
        input Real arg_DNA_010;
        input Real arg_DNA_110;
        input Real arg_Koff_NG1;
        input Real arg_Kon_NG1;
        input Real arg_S1;
        input Real arg_nucleus;

        output Real result;
        algorithm
            result := (((arg_Kon_NG1 * arg_DNA_010 * arg_S1) - (arg_Koff_NG1 * arg_DNA_110)) / arg_nucleus);
    end elmt_function_4_DNA6;

    function elmt_function_4_DNA49
        input Real arg_DNA_110;
        input Real arg_DNA_1B10;
        input Real arg_Koff_P1;
        input Real arg_Kon_P1;
        input Real arg_nucleus;

        output Real result;
        algorithm
            result := (((arg_Kon_P1 * arg_DNA_110) - (arg_Koff_P1 * arg_DNA_1B10)) / arg_nucleus);
    end elmt_function_4_DNA49;

    function elmt_function_4_DNA5
        input Real arg_DNA_100;
        input Real arg_DNA_101;
        input Real arg_Koff_NG1;
        input Real arg_Kon_NG1;
        input Real arg_S1;
        input Real arg_nucleus;

        output Real result;
        algorithm
            result := (((arg_Kon_NG1 * arg_DNA_100 * arg_S1) - (arg_Koff_NG1 * arg_DNA_101)) / arg_nucleus);
    end elmt_function_4_DNA5;

    function elmt_function_4_DNA4
        input Real arg_DNA_100;
        input Real arg_DNA_110;
        input Real arg_Koff_G1;
        input Real arg_Kon_G1;
        input Real arg_S1;
        input Real arg_nucleus;

        output Real result;
        algorithm
            result := (((arg_Kon_G1 * arg_DNA_100 * arg_S1) - (arg_Koff_G1 * arg_DNA_110)) / arg_nucleus);
    end elmt_function_4_DNA4;

    function elmt_function_4_DNA3
        input Real arg_DNA_000;
        input Real arg_DNA_001;
        input Real arg_Koff_NG1;
        input Real arg_Kon_NG1;
        input Real arg_S1;
        input Real arg_nucleus;

        output Real result;
        algorithm
            result := (((arg_Kon_NG1 * arg_DNA_000 * arg_S1) - (arg_Koff_NG1 * arg_DNA_001)) / arg_nucleus);
    end elmt_function_4_DNA3;

    function elmt_function_4_DNA2
        input Real arg_DNA_000;
        input Real arg_DNA_010;
        input Real arg_Koff_G1;
        input Real arg_Kon_G1;
        input Real arg_S1;
        input Real arg_nucleus;

        output Real result;
        algorithm
            result := (((arg_Kon_G1 * arg_DNA_000 * arg_S1) - (arg_Koff_G1 * arg_DNA_010)) / arg_nucleus);
    end elmt_function_4_DNA2;

    function elmt_function_4_DNA1
        input Real arg_DNA_000;
        input Real arg_DNA_100;
        input Real arg_Koff_NG1;
        input Real arg_Kon_NG1;
        input Real arg_S1;
        input Real arg_nucleus;

        output Real result;
        algorithm
            result := (((arg_Kon_NG1 * arg_DNA_000 * arg_S1) - (arg_Koff_NG1 * arg_DNA_100)) / arg_nucleus);
    end elmt_function_4_DNA1;

    function elmt_function_4_DNA52
        input Real arg_DNA_111;
        input Real arg_DNA_1B11;
        input Real arg_Koff_P1;
        input Real arg_Kon_P1;
        input Real arg_nucleus;

        output Real result;
        algorithm
            result := (((arg_Kon_P1 * arg_DNA_111) - (arg_Koff_P1 * arg_DNA_1B11)) / arg_nucleus);
    end elmt_function_4_DNA52;

    function elmt_function_4_DNA51
        input Real arg_DNA_111;
        input Real arg_DNA_11B1;
        input Real arg_Koff_P1;
        input Real arg_Kon_P1;
        input Real arg_nucleus;

        output Real result;
        algorithm
            result := (((arg_Kon_P1 * arg_DNA_111) - (arg_Koff_P1 * arg_DNA_11B1)) / arg_nucleus);
    end elmt_function_4_DNA51;

    function elmt_function_4_DNA50
        input Real arg_DNA_011;
        input Real arg_DNA_01B1;
        input Real arg_Koff_P1;
        input Real arg_Kon_P1;
        input Real arg_nucleus;

        output Real result;
        algorithm
            result := (((arg_Kon_P1 * arg_DNA_011) - (arg_Koff_P1 * arg_DNA_01B1)) / arg_nucleus);
    end elmt_function_4_DNA50;

    function elmt_function_4_DNA12
        input Real arg_DNA_011;
        input Real arg_DNA_111;
        input Real arg_Koff_NG1;
        input Real arg_Kon_NG1;
        input Real arg_S1;
        input Real arg_nucleus;

        output Real result;
        algorithm
            result := (((arg_Kon_NG1 * arg_DNA_011 * arg_S1) - (arg_Koff_NG1 * arg_DNA_111)) / arg_nucleus);
    end elmt_function_4_DNA12;

    function elmt_function_4_DNA11
        input Real arg_DNA_101;
        input Real arg_DNA_111;
        input Real arg_Koff_G1;
        input Real arg_Kon_G1;
        input Real arg_S1;
        input Real arg_nucleus;

        output Real result;
        algorithm
            result := (((arg_Kon_G1 * arg_DNA_101 * arg_S1) - (arg_Koff_G1 * arg_DNA_111)) / arg_nucleus);
    end elmt_function_4_DNA11;

    function elmt_function_4_DNA54
        input Real arg_DNA_1B11;
        input Real arg_DNA_1B1B1;
        input Real arg_Koff_P1;
        input Real arg_Kon_P1;
        input Real arg_nucleus;

        output Real result;
        algorithm
            result := (((arg_Kon_P1 * arg_DNA_1B11) - (arg_Koff_P1 * arg_DNA_1B1B1)) / arg_nucleus);
    end elmt_function_4_DNA54;

    function elmt_function_4_DNA10
        input Real arg_DNA_110;
        input Real arg_DNA_111;
        input Real arg_Koff_NG1;
        input Real arg_Kon_NG1;
        input Real arg_S1;
        input Real arg_nucleus;

        output Real result;
        algorithm
            result := (((arg_Kon_NG1 * arg_DNA_110 * arg_S1) - (arg_Koff_NG1 * arg_DNA_111)) / arg_nucleus);
    end elmt_function_4_DNA10;

    function elmt_function_4_DNA53
        input Real arg_DNA_11B1;
        input Real arg_DNA_1B1B1;
        input Real arg_Koff_P1;
        input Real arg_Kon_P1;
        input Real arg_nucleus;

        output Real result;
        algorithm
            result := (((arg_Kon_P1 * arg_DNA_11B1) - (arg_Koff_P1 * arg_DNA_1B1B1)) / arg_nucleus);
    end elmt_function_4_DNA53;


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
