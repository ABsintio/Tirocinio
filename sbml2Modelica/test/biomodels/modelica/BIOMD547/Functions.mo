within BIOMD547;
class Functions

    function elmt_function_1
        input Real arg_V;
        input Real arg_Mod;
        input Real arg_k;
        input Real arg_Ex;
        input Real arg_In;

        output Real result;
        algorithm
            result := (Functions.pow((36.0 * 3.141592653589793), (1.0 / 3.0)) * Functions.pow(arg_V, (2.0 / 3.0)) * arg_Mod * arg_k * (arg_Ex - arg_In));
    end elmt_function_1;

    function elmt_function_4
        input Real arg_ko;
        input Real arg_Mod;
        input Real arg_k;
        input Real arg_V;
        input Real arg_Sub;

        output Real result;
        algorithm
            result := (arg_ko * arg_Mod * arg_k * Functions.pow((36.0 * 3.141592653589793), (1.0 / 3.0)) * Functions.pow(arg_V, (2.0 / 3.0)) * arg_Sub);
    end elmt_function_4;

    function elmt_function_5
        input Real arg_V;
        input Real arg_Mod;
        input Real arg_Vmax;
        input Real arg_Sub;
        input Real arg_Km;

        output Real result;
        algorithm
            result := ((Functions.pow((36.0 * 3.141592653589793), (1.0 / 3.0)) * Functions.pow(arg_V, (2.0 / 3.0)) * arg_Mod * arg_Vmax * arg_Sub) / (arg_Km + arg_Sub));
    end elmt_function_5;

    function elmt_function_2
        input Real arg_k;
        input Real arg_ko;
        input Real arg_sub;
        input Real arg_sub2;

        output Real result;
        algorithm
            result := (arg_k * arg_ko * arg_sub * arg_sub2);
    end elmt_function_2;

    function elmt_function_3
        input Real arg_S;
        input Real arg_M;
        input Real arg_k;
        input Real arg_ko;

        output Real result;
        algorithm
            result := (arg_k * arg_ko * arg_M * arg_S);
    end elmt_function_3;

    function elmt_function_8
        input Real arg_V;
        input Real arg_k;
        input Real arg_Sub;

        output Real result;
        algorithm
            result := (Functions.pow((36.0 * 3.141592653589793), (1.0 / 3.0)) * Functions.pow(arg_V, (2.0 / 3.0)) * arg_k * arg_Sub);
    end elmt_function_8;

    function elmt_function_6
        input Real arg_Substrate;
        input Real arg_k;
        input Real arg_Mod1;
        input Real arg_Mod;
        input Real arg_k1;
        input Real arg_kb;

        output Real result;
        algorithm
            result := (arg_Substrate * ((arg_k * arg_Mod1) + (arg_k1 * arg_Mod) + arg_kb));
    end elmt_function_6;

    function elmt_function_7
        input Real arg_M;
        input Real arg_k;
        input Real arg_ko;

        output Real result;
        algorithm
            result := (arg_k * arg_ko * arg_M);
    end elmt_function_7;


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
