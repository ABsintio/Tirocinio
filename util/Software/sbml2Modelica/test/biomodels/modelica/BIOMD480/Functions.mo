within BIOMD480;
class Functions

    function elmt_function_11
        input Real arg_k;
        input Real arg_substrate;
        input Real arg_A;
        input Real arg_n;
        input Real arg_kA;
        input Real arg_B;
        input Real arg_kB;

        output Real result;
        algorithm
            result := (arg_k * arg_substrate * ((Functions.pow(arg_A, arg_n) / (Functions.pow(arg_A, arg_n) + Functions.pow(arg_kA, arg_n))) + (Functions.pow(arg_B, arg_n) / (Functions.pow(arg_B, arg_n) + Functions.pow(arg_kB, arg_n)))));
    end elmt_function_11;

    function elmt_function_12
        input Real arg_V;
        input Real arg_s;
        input Real arg_k;
        input Real arg_P;

        output Real result;
        algorithm
            result := (arg_V * (arg_s - (arg_k * arg_P)));
    end elmt_function_12;

    function elmt_function_10
        input Real arg_c;
        input Real arg_k;
        input Real arg_A;
        input Real arg_n;
        input Real arg_kA;
        input Real arg_B;
        input Real arg_kB;
        input Real arg_C;
        input Real arg_kC;

        output Real result;
        algorithm
            result := (arg_c + (arg_k * ((Functions.pow(arg_A, arg_n) / (Functions.pow(arg_A, arg_n) + Functions.pow(arg_kA, arg_n))) + (Functions.pow(arg_B, arg_n) / (Functions.pow(arg_B, arg_n) + Functions.pow(arg_kB, arg_n))) + (Functions.pow(arg_C, arg_n) / (Functions.pow(arg_C, arg_n) + Functions.pow(arg_kC, arg_n))))));
    end elmt_function_10;

    function elmt_function_8
        input Real arg_substrate;
        input Real arg_k1;
        input Real arg_a1;
        input Real arg_k2;
        input Real arg_a2;

        output Real result;
        algorithm
            result := (arg_substrate * ((arg_k1 * arg_a1) + (arg_k2 * arg_a2)));
    end elmt_function_8;

    function elmt_function_9
        input Real arg_substrate;
        input Real arg_k;
        input Real arg_k1;
        input Real arg_a1;
        input Real arg_k2;
        input Real arg_a2;

        output Real result;
        algorithm
            result := (arg_substrate * arg_k * ((arg_k1 * arg_a1) + (arg_k2 * arg_a2)));
    end elmt_function_9;

    function elmt_function_13
        input Real arg_v;

        output Real result;
        algorithm
            result := arg_v;
    end elmt_function_13;

    function elmt_function_6
        input Real arg_substrate;
        input Real arg_k1;
        input Real arg_a1;
        input Real arg_k2;
        input Real arg_a2;
        input Real arg_k3;
        input Real arg_a3;

        output Real result;
        algorithm
            result := (arg_substrate * ((arg_k1 * arg_a1) + (arg_k2 * arg_a2) + (arg_k3 * arg_a3)));
    end elmt_function_6;

    function elmt_function_7
        input Real arg_k;
        input Real arg_A;
        input Real arg_n;
        input Real arg_kA;
        input Real arg_c;

        output Real result;
        algorithm
            result := (arg_c + (arg_k * (Functions.pow(arg_A, arg_n) / (Functions.pow(arg_A, arg_n) + Functions.pow(arg_kA, arg_n)))));
    end elmt_function_7;

    function elmt_function_1
        input Real arg_Vf;
        input Real arg_r1;
        input Real arg_A1;
        input Real arg_n1;
        input Real arg_A2;
        input Real arg_n2;
        input Real arg_A3;
        input Real arg_n3;

        output Real result;
        algorithm
            result := (arg_Vf * arg_r1 * ((arg_n1 * arg_A1) + (arg_n2 * arg_A2) + (arg_n3 * arg_A3)));
    end elmt_function_1;

    function elmt_function_4
        input Real arg_k;
        input Real arg_substrate;
        input Real arg_A;
        input Real arg_n;
        input Real arg_kA;
        input Real arg_B;
        input Real arg_kB;
        input Real arg_C;
        input Real arg_kC;

        output Real result;
        algorithm
            result := (arg_k * arg_substrate * ((Functions.pow(arg_A, arg_n) / (Functions.pow(arg_A, arg_n) + Functions.pow(arg_kA, arg_n))) + (Functions.pow(arg_B, arg_n) / (Functions.pow(arg_B, arg_n) + Functions.pow(arg_kB, arg_n))) + (Functions.pow(arg_C, arg_n) / (Functions.pow(arg_C, arg_n) + Functions.pow(arg_kC, arg_n)))));
    end elmt_function_4;

    function elmt_function_5
        input Real arg_k;
        input Real arg_sub;
        input Real arg_c;

        output Real result;
        algorithm
            result := ((arg_k * arg_sub) / (arg_c + arg_sub));
    end elmt_function_5;

    function elmt_function_2
        input Real arg_k;
        input Real arg_substrate;
        input Real arg_A;
        input Real arg_n;
        input Real arg_kA;
        input Real arg_B;
        input Real arg_kB;
        input Real arg_C;
        input Real arg_kC;
        input Real arg_D;
        input Real arg_kD;
        input Real arg_E;
        input Real arg_kE;

        output Real result;
        algorithm
            result := (arg_k * arg_substrate * ((Functions.pow(arg_A, arg_n) / (Functions.pow(arg_A, arg_n) + Functions.pow(arg_kA, arg_n))) + (Functions.pow(arg_B, arg_n) / (Functions.pow(arg_B, arg_n) + Functions.pow(arg_kB, arg_n))) + (Functions.pow(arg_C, arg_n) / (Functions.pow(arg_C, arg_n) + Functions.pow(arg_kC, arg_n))) + (Functions.pow(arg_D, arg_n) / (Functions.pow(arg_D, arg_n) + Functions.pow(arg_kD, arg_n))) + (Functions.pow(arg_E, arg_n) / (Functions.pow(arg_E, arg_n) + Functions.pow(arg_kE, arg_n)))));
    end elmt_function_2;

    function elmt_function_3
        input Real arg_substrate;
        input Real arg_a1;
        input Real arg_k1;

        output Real result;
        algorithm
            result := (arg_substrate * arg_a1 * arg_k1);
    end elmt_function_3;


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
