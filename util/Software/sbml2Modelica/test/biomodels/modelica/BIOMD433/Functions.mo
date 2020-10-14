within BIOMD433;
class Functions

    function elmt_function_1
        input Real arg_MKKK;
        input Real arg_K1;
        input Real arg_k1;
        input Real arg_Sig;

        output Real result;
        algorithm
            result := ((arg_k1 * arg_Sig * arg_MKKK) / (arg_K1 + arg_MKKK));
    end elmt_function_1;

    function elmt_function_4
        input Real arg_k4;
        input Real arg_MKKK_P;
        input Real arg_MKK_P;
        input Real arg_K4;
        input Real arg_MKK;
        input Real arg_K3;

        output Real result;
        algorithm
            result := (((arg_k4 * arg_MKKK_P * arg_MKK_P) / arg_K4) / (1.0 + (arg_MKK / arg_K3) + (arg_MKK_P / arg_K4)));
    end elmt_function_4;

    function elmt_function_5
        input Real arg_MKK_PP;
        input Real arg_MKK_P;
        input Real arg_MK_P;
        input Real arg_MK_PP;
        input Real arg_P1;
        input Real arg_MKK;
        input Real arg_MK;
        input Real arg_k5a;
        input Real arg_K5a;
        input Real arg_MKKK;
        input Real arg_MKKK_P;
        input Real arg_k5b;
        input Real arg_P2;
        input Real arg_K5b;
        input Real arg_K6a;
        input Real arg_Kse1;
        input Real arg_K2a;
        input Real arg_K6b;
        input Real arg_Kse2;
        input Real arg_K10b;
        input Real arg_K9b;

        output Real result;
        algorithm
            result := ((((arg_k5a * arg_P1 * arg_MKK_PP) / arg_K5a) / (1.0 + (arg_MKKK_P / arg_K2a) + (arg_MKKK / arg_Kse1) + (arg_MKK_PP / arg_K5a) + (arg_MKK_P / arg_K6a) + (arg_MKK / arg_Kse1))) + (((arg_k5b * arg_P2 * arg_MKK_PP) / arg_K5b) / (1.0 + (arg_MKK_PP / arg_K5b) + (arg_MKK_P / arg_K6b) + (arg_MKK / arg_Kse2) + (arg_MK / arg_Kse2) + (arg_MK_P / arg_K10b) + (arg_MK_PP / arg_K9b))));
    end elmt_function_5;

    function elmt_function_2
        input Real arg_MKKK_P;
        input Real arg_MKKK;
        input Real arg_P1;
        input Real arg_MKK_PP;
        input Real arg_MKK_P;
        input Real arg_MKK;
        input Real arg_Kse1;
        input Real arg_K2a;
        input Real arg_K5a;
        input Real arg_K6a;
        input Real arg_k2a;

        output Real result;
        algorithm
            result := (((arg_k2a * arg_MKKK_P * arg_P1) / arg_K2a) / (1.0 + (arg_MKKK_P / arg_K2a) + (arg_MKKK / arg_Kse1) + (arg_MKK_PP / arg_K5a) + (arg_MKK_P / arg_K6a) + (arg_MKK / arg_Kse1)));
    end elmt_function_2;

    function elmt_function_10
        input Real arg_MK_P;
        input Real arg_MKK_PP;
        input Real arg_MKK_P;
        input Real arg_MK_PP;
        input Real arg_MKK;
        input Real arg_MK;
        input Real arg_P2;
        input Real arg_K10b;
        input Real arg_K5b;
        input Real arg_K6b;
        input Real arg_Kse2;
        input Real arg_K9b;
        input Real arg_k10b;

        output Real result;
        algorithm
            result := (((arg_k10b * arg_P2 * arg_MK_P) / arg_K10b) / (1.0 + (arg_MKK_PP / arg_K5b) + (arg_MKK_P / arg_K6b) + (arg_MKK / arg_Kse2) + (arg_MK / arg_Kse2) + (arg_MK_P / arg_K10b) + (arg_MK_PP / arg_K9b)));
    end elmt_function_10;

    function elmt_function_3
        input Real arg_k3;
        input Real arg_MKKK_P;
        input Real arg_MKK;
        input Real arg_K3;
        input Real arg_MKK_P;
        input Real arg_K4;

        output Real result;
        algorithm
            result := (((arg_k3 * arg_MKKK_P * arg_MKK) / arg_K3) / (1.0 + (arg_MKK / arg_K3) + (arg_MKK_P / arg_K4)));
    end elmt_function_3;

    function elmt_function_8
        input Real arg_k7;
        input Real arg_MKK_PP;
        input Real arg_MK_P;
        input Real arg_K8;
        input Real arg_MK;
        input Real arg_K7;

        output Real result;
        algorithm
            result := (((arg_k7 * arg_MKK_PP * arg_MK_P) / arg_K8) / (1.0 + (arg_MK / arg_K7) + (arg_MK_P / arg_K8)));
    end elmt_function_8;

    function elmt_function_9
        input Real arg_MK_PP;
        input Real arg_MKK_PP;
        input Real arg_MKK_P;
        input Real arg_MK_P;
        input Real arg_MKK;
        input Real arg_MK;
        input Real arg_P2;
        input Real arg_K9b;
        input Real arg_K5b;
        input Real arg_K6b;
        input Real arg_Kse2;
        input Real arg_K10b;
        input Real arg_k9b;

        output Real result;
        algorithm
            result := (((arg_k9b * arg_P2 * arg_MK_PP) / arg_K9b) / (1.0 + (arg_MKK_PP / arg_K5b) + (arg_MKK_P / arg_K6b) + (arg_MKK / arg_Kse2) + (arg_MK / arg_Kse2) + (arg_MK_P / arg_K10b) + (arg_MK_PP / arg_K9b)));
    end elmt_function_9;

    function elmt_function_6
        input Real arg_P1;
        input Real arg_MKK_P;
        input Real arg_MKK_PP;
        input Real arg_MK_P;
        input Real arg_MK_PP;
        input Real arg_MKK;
        input Real arg_MK;
        input Real arg_k6a;
        input Real arg_K6a;
        input Real arg_MKKK;
        input Real arg_MKKK_P;
        input Real arg_P2;
        input Real arg_K6b;
        input Real arg_K2a;
        input Real arg_Kse1;
        input Real arg_K5a;
        input Real arg_k6b;
        input Real arg_K5b;
        input Real arg_Kse2;
        input Real arg_K10b;
        input Real arg_K9b;

        output Real result;
        algorithm
            result := ((((arg_k6a * arg_P1 * arg_MKK_P) / arg_K6a) / (1.0 + (arg_MKKK_P / arg_K2a) + (arg_MKKK / arg_Kse1) + (arg_MKK_PP / arg_K5a) + (arg_MKK_P / arg_K6a) + (arg_MKK / arg_Kse1))) + (((arg_k6b * arg_P2 * arg_MKK_P) / arg_K6b) / (1.0 + (arg_MKK_PP / arg_K5b) + (arg_MKK_P / arg_K6b) + (arg_MKK / arg_Kse2) + (arg_MK / arg_Kse2) + (arg_MK_P / arg_K10b) + (arg_MK_PP / arg_K9b))));
    end elmt_function_6;

    function elmt_function_7
        input Real arg_k7;
        input Real arg_MKK_PP;
        input Real arg_MK;
        input Real arg_K7;
        input Real arg_MK_P;
        input Real arg_K8;

        output Real result;
        algorithm
            result := (((arg_k7 * arg_MKK_PP * arg_MK) / arg_K7) / (1.0 + (arg_MK / arg_K7) + (arg_MK_P / arg_K8)));
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
