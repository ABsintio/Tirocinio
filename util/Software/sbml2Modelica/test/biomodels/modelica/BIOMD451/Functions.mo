within BIOMD451;
class Functions

    function elmt_function_11
        input Real arg_Vf;
        input Real arg_r1;
        input Real arg_K1;
        input Real arg_n1;
        input Real arg_I1;
        input Real arg_K2;
        input Real arg_n2;
        input Real arg_I2;
        input Real arg_K3;
        input Real arg_n3;
        input Real arg_I3;
        input Real arg_A1;
        input Real arg_n4;
        input Real arg_K4;
        input Real arg_A2;
        input Real arg_n5;
        input Real arg_K5;
        input Real arg_A3;
        input Real arg_n6;
        input Real arg_K6;
        input Real arg_A4;
        input Real arg_n7;
        input Real arg_K7;
        input Real arg_Vr;
        input Real arg_p;

        output Real result;
        algorithm
            result := ((arg_Vf * arg_r1 * (Functions.pow(arg_K1, arg_n1) / (Functions.pow(arg_I1, arg_n1) + Functions.pow(arg_K1, arg_n1))) * (Functions.pow(arg_K2, arg_n2) / (Functions.pow(arg_I2, arg_n2) + Functions.pow(arg_K2, arg_n2))) * (Functions.pow(arg_K3, arg_n3) / (Functions.pow(arg_I3, arg_n3) + Functions.pow(arg_K3, arg_n3))) * ((Functions.pow(arg_A1, arg_n4) / (Functions.pow(arg_A1, arg_n4) + Functions.pow(arg_K4, arg_n4))) + (Functions.pow(arg_A2, arg_n5) / (Functions.pow(arg_A2, arg_n5) + Functions.pow(arg_K5, arg_n5))) + (Functions.pow(arg_A3, arg_n6) / (Functions.pow(arg_A3, arg_n6) + Functions.pow(arg_K6, arg_n6))) + (Functions.pow(arg_A4, arg_n7) / (Functions.pow(arg_A4, arg_n7) + Functions.pow(arg_K7, arg_n7))))) - (arg_Vr * arg_p));
    end elmt_function_11;

    function elmt_function_12
        input Real arg_Vf;
        input Real arg_r1;
        input Real arg_K;
        input Real arg_n;
        input Real arg_I;
        input Real arg_A1;
        input Real arg_n1;
        input Real arg_K1;
        input Real arg_A2;
        input Real arg_n2;
        input Real arg_K2;
        input Real arg_A3;
        input Real arg_n3;
        input Real arg_K3;
        input Real arg_A4;
        input Real arg_n4;
        input Real arg_K4;
        input Real arg_Vr;
        input Real arg_p;

        output Real result;
        algorithm
            result := ((arg_Vf * arg_r1 * (Functions.pow(arg_K, arg_n) / (Functions.pow(arg_I, arg_n) + Functions.pow(arg_K, arg_n))) * ((Functions.pow(arg_A1, arg_n1) / (Functions.pow(arg_A1, arg_n1) + Functions.pow(arg_K1, arg_n1))) + (Functions.pow(arg_A2, arg_n2) / (Functions.pow(arg_A2, arg_n2) + Functions.pow(arg_K2, arg_n2))) + (Functions.pow(arg_A3, arg_n3) / (Functions.pow(arg_A3, arg_n3) + Functions.pow(arg_K3, arg_n3))) + (Functions.pow(arg_A4, arg_n4) / (Functions.pow(arg_A4, arg_n4) + Functions.pow(arg_K4, arg_n4))))) - (arg_Vr * arg_p));
    end elmt_function_12;

    function elmt_function_10
        input Real arg_Vf;
        input Real arg_r1;
        input Real arg_K1;
        input Real arg_n1;
        input Real arg_I1;
        input Real arg_K2;
        input Real arg_n2;
        input Real arg_I2;
        input Real arg_K3;
        input Real arg_n3;
        input Real arg_I3;
        input Real arg_A1;
        input Real arg_n4;
        input Real arg_K4;
        input Real arg_A2;
        input Real arg_n5;
        input Real arg_K5;
        input Real arg_Vr;
        input Real arg_p;

        output Real result;
        algorithm
            result := ((arg_Vf * arg_r1 * (Functions.pow(arg_K1, arg_n1) / (Functions.pow(arg_I1, arg_n1) + Functions.pow(arg_K1, arg_n1))) * (Functions.pow(arg_K2, arg_n2) / (Functions.pow(arg_I2, arg_n2) + Functions.pow(arg_K2, arg_n2))) * (Functions.pow(arg_K3, arg_n3) / (Functions.pow(arg_I3, arg_n3) + Functions.pow(arg_K3, arg_n3))) * ((Functions.pow(arg_A1, arg_n4) / (Functions.pow(arg_A1, arg_n4) + Functions.pow(arg_K4, arg_n4))) + (Functions.pow(arg_A2, arg_n5) / (Functions.pow(arg_A2, arg_n5) + Functions.pow(arg_K5, arg_n5))))) - (arg_Vr * arg_p));
    end elmt_function_10;

    function elmt_function_8
        input Real arg_Vf;
        input Real arg_r1;
        input Real arg_K1;
        input Real arg_n1;
        input Real arg_I1;
        input Real arg_K2;
        input Real arg_n2;
        input Real arg_I2;
        input Real arg_A;
        input Real arg_n3;
        input Real arg_K3;
        input Real arg_Vr;
        input Real arg_p;

        output Real result;
        algorithm
            result := ((arg_Vf * arg_r1 * (Functions.pow(arg_K1, arg_n1) / (Functions.pow(arg_I1, arg_n1) + Functions.pow(arg_K1, arg_n1))) * (Functions.pow(arg_K2, arg_n2) / (Functions.pow(arg_I2, arg_n2) + Functions.pow(arg_K2, arg_n2))) * (1.0 + (Functions.pow(arg_A, arg_n3) / (Functions.pow(arg_A, arg_n3) + Functions.pow(arg_K3, arg_n3))))) - (arg_Vr * arg_p));
    end elmt_function_8;

    function elmt_function_15
        input Real arg_Vf;
        input Real arg_r1;
        input Real arg_K;
        input Real arg_n;
        input Real arg_I;
        input Real arg_A1;
        input Real arg_n1;
        input Real arg_K1;
        input Real arg_Vr;
        input Real arg_p;

        output Real result;
        algorithm
            result := ((arg_Vf * arg_r1 * (Functions.pow(arg_K, arg_n) / (Functions.pow(arg_I, arg_n) + Functions.pow(arg_K, arg_n))) * (Functions.pow(arg_A1, arg_n1) / (Functions.pow(arg_A1, arg_n1) + Functions.pow(arg_K1, arg_n1)))) - (arg_Vr * arg_p));
    end elmt_function_15;

    function elmt_function_9
        input Real arg_Vf;
        input Real arg_r1;
        input Real arg_A1;
        input Real arg_n1;
        input Real arg_K1;
        input Real arg_A2;
        input Real arg_n2;
        input Real arg_K2;
        input Real arg_Vr;
        input Real arg_p;

        output Real result;
        algorithm
            result := ((arg_Vf * arg_r1 * (Functions.pow(arg_A1, arg_n1) / (Functions.pow(arg_A1, arg_n1) + Functions.pow(arg_K1, arg_n1))) * (Functions.pow(arg_A2, arg_n2) / (Functions.pow(arg_A2, arg_n2) + Functions.pow(arg_K2, arg_n2)))) - (arg_Vr * arg_p));
    end elmt_function_9;

    function elmt_function_16
        input Real arg_V;
        input Real arg_pool;
        input Real arg_n;
        input Real arg_ext;
        input Real arg_k;

        output Real result;
        algorithm
            result := (arg_V * ((Functions.pow(arg_pool, arg_n) / (Functions.pow(arg_pool, arg_n) + Functions.pow(arg_ext, arg_n) + 0.001)) - (arg_k * arg_ext)));
    end elmt_function_16;

    function elmt_function_6
        input Real arg_Vf;
        input Real arg_r1;
        input Real arg_K;
        input Real arg_n;
        input Real arg_I;
        input Real arg_A1;
        input Real arg_n1;
        input Real arg_K1;
        input Real arg_A2;
        input Real arg_n2;
        input Real arg_K2;
        input Real arg_A3;
        input Real arg_n3;
        input Real arg_K3;
        input Real arg_Vr;
        input Real arg_p;

        output Real result;
        algorithm
            result := ((arg_Vf * arg_r1 * (Functions.pow(arg_K, arg_n) / (Functions.pow(arg_I, arg_n) + Functions.pow(arg_K, arg_n))) * ((Functions.pow(arg_A1, arg_n1) / (Functions.pow(arg_A1, arg_n1) + Functions.pow(arg_K1, arg_n1))) + (Functions.pow(arg_A2, arg_n2) / (Functions.pow(arg_A2, arg_n2) + Functions.pow(arg_K2, arg_n2))) + (Functions.pow(arg_A3, arg_n3) / (Functions.pow(arg_A3, arg_n3) + Functions.pow(arg_K3, arg_n3))))) - (arg_Vr * arg_p));
    end elmt_function_6;

    function elmt_function_13
        input Real arg_Vf;
        input Real arg_r1;
        input Real arg_K1;
        input Real arg_n1;
        input Real arg_I1;
        input Real arg_K2;
        input Real arg_n2;
        input Real arg_I2;
        input Real arg_A1;
        input Real arg_n3;
        input Real arg_K3;
        input Real arg_A2;
        input Real arg_n4;
        input Real arg_K4;
        input Real arg_A3;
        input Real arg_n5;
        input Real arg_K5;
        input Real arg_Vr;
        input Real arg_p;

        output Real result;
        algorithm
            result := ((arg_Vf * arg_r1 * (Functions.pow(arg_K1, arg_n1) / (Functions.pow(arg_I1, arg_n1) + Functions.pow(arg_K1, arg_n1))) * (Functions.pow(arg_K2, arg_n2) / (Functions.pow(arg_I2, arg_n2) + Functions.pow(arg_K2, arg_n2))) * ((Functions.pow(arg_A1, arg_n3) / (Functions.pow(arg_A1, arg_n3) + Functions.pow(arg_K3, arg_n3))) + (Functions.pow(arg_A2, arg_n4) / (Functions.pow(arg_A2, arg_n4) + Functions.pow(arg_K4, arg_n4))) + (Functions.pow(arg_A3, arg_n5) / (Functions.pow(arg_A3, arg_n5) + Functions.pow(arg_K5, arg_n5))))) - (arg_Vr * arg_p));
    end elmt_function_13;

    function elmt_function_7
        input Real arg_Vf;
        input Real arg_r1;
        input Real arg_K1;
        input Real arg_n1;
        input Real arg_I1;
        input Real arg_K2;
        input Real arg_n2;
        input Real arg_I2;
        input Real arg_K3;
        input Real arg_n3;
        input Real arg_I3;
        input Real arg_A1;
        input Real arg_n4;
        input Real arg_K4;
        input Real arg_A2;
        input Real arg_n5;
        input Real arg_K5;
        input Real arg_A3;
        input Real arg_n6;
        input Real arg_K6;
        input Real arg_Vr;
        input Real arg_p;

        output Real result;
        algorithm
            result := ((arg_Vf * arg_r1 * (Functions.pow(arg_K1, arg_n1) / (Functions.pow(arg_I1, arg_n1) + Functions.pow(arg_K1, arg_n1))) * (Functions.pow(arg_K2, arg_n2) / (Functions.pow(arg_I2, arg_n2) + Functions.pow(arg_K2, arg_n2))) * (Functions.pow(arg_K3, arg_n3) / (Functions.pow(arg_I3, arg_n3) + Functions.pow(arg_K3, arg_n3))) * ((Functions.pow(arg_A1, arg_n4) / (Functions.pow(arg_A1, arg_n4) + Functions.pow(arg_K4, arg_n4))) + (Functions.pow(arg_A2, arg_n5) / (Functions.pow(arg_A2, arg_n5) + Functions.pow(arg_K5, arg_n5))) + (Functions.pow(arg_A3, arg_n6) / (Functions.pow(arg_A3, arg_n6) + Functions.pow(arg_K6, arg_n6))))) - (arg_Vr * arg_p));
    end elmt_function_7;

    function elmt_function_14
        input Real arg_Vf;
        input Real arg_r1;
        input Real arg_r2;
        input Real arg_K;
        input Real arg_n;
        input Real arg_I;
        input Real arg_A;
        input Real arg_n1;
        input Real arg_K1;
        input Real arg_Vr;
        input Real arg_p;

        output Real result;
        algorithm
            result := ((arg_Vf * arg_r1 * arg_r2 * (Functions.pow(arg_K, arg_n) / (Functions.pow(arg_I, arg_n) + Functions.pow(arg_K, arg_n))) * (1.0 + (Functions.pow(arg_A, arg_n1) / (Functions.pow(arg_A, arg_n1) + Functions.pow(arg_K1, arg_n1))))) - (arg_Vr * arg_p));
    end elmt_function_14;

    function elmt_function_1
        input Real arg_Vf;
        input Real arg_r1;
        input Real arg_r2;
        input Real arg_K;
        input Real arg_n;
        input Real arg_I;
        input Real arg_Vr;
        input Real arg_p;

        output Real result;
        algorithm
            result := ((arg_Vf * arg_r1 * arg_r2 * (Functions.pow(arg_K, arg_n) / (Functions.pow(arg_I, arg_n) + Functions.pow(arg_K, arg_n)))) - (arg_Vr * arg_p));
    end elmt_function_1;

    function elmt_function_4
        input Real arg_Vf;
        input Real arg_K1;
        input Real arg_n1;
        input Real arg_I1;
        input Real arg_K2;
        input Real arg_n2;
        input Real arg_I2;
        input Real arg_A;
        input Real arg_n3;
        input Real arg_K3;
        input Real arg_Vr;
        input Real arg_p;
        input Real arg_r1;
        input Real arg_r2;

        output Real result;
        algorithm
            result := ((arg_Vf * arg_r1 * arg_r2 * (Functions.pow(arg_K1, arg_n1) / (Functions.pow(arg_I1, arg_n1) + Functions.pow(arg_K1, arg_n1))) * (Functions.pow(arg_K2, arg_n2) / (Functions.pow(arg_I2, arg_n2) + Functions.pow(arg_K2, arg_n2))) * (1.0 + (Functions.pow(arg_A, arg_n3) / (Functions.pow(arg_A, arg_n3) + Functions.pow(arg_K3, arg_n3))))) - (arg_Vr * arg_p));
    end elmt_function_4;

    function elmt_function_5
        input Real arg_Vf;
        input Real arg_r1;
        input Real arg_K1;
        input Real arg_n1;
        input Real arg_I1;
        input Real arg_K2;
        input Real arg_n2;
        input Real arg_I2;
        input Real arg_A1;
        input Real arg_n3;
        input Real arg_K3;
        input Real arg_A2;
        input Real arg_n4;
        input Real arg_K4;
        input Real arg_Vr;
        input Real arg_p;

        output Real result;
        algorithm
            result := ((arg_Vf * arg_r1 * (Functions.pow(arg_K1, arg_n1) / (Functions.pow(arg_I1, arg_n1) + Functions.pow(arg_K1, arg_n1))) * (Functions.pow(arg_K2, arg_n2) / (Functions.pow(arg_I2, arg_n2) + Functions.pow(arg_K2, arg_n2))) * ((Functions.pow(arg_A1, arg_n3) / (Functions.pow(arg_A1, arg_n3) + Functions.pow(arg_K3, arg_n3))) + (Functions.pow(arg_A2, arg_n4) / (Functions.pow(arg_A2, arg_n4) + Functions.pow(arg_K4, arg_n4))))) - (arg_Vr * arg_p));
    end elmt_function_5;

    function elmt_function_2
        input Real arg_Vf;
        input Real arg_r1;
        input Real arg_A;
        input Real arg_n;
        input Real arg_K;
        input Real arg_Vr;
        input Real arg_p;

        output Real result;
        algorithm
            result := ((arg_Vf * arg_r1 * (1.0 + (Functions.pow(arg_A, arg_n) / (Functions.pow(arg_A, arg_n) + Functions.pow(arg_K, arg_n))))) - (arg_Vr * arg_p));
    end elmt_function_2;

    function elmt_function_3
        input Real arg_Vf;
        input Real arg_r1;
        input Real arg_r2;
        input Real arg_K1;
        input Real arg_n1;
        input Real arg_I1;
        input Real arg_K2;
        input Real arg_n2;
        input Real arg_I2;
        input Real arg_Vr;
        input Real arg_p;

        output Real result;
        algorithm
            result := ((arg_Vf * arg_r1 * arg_r2 * (Functions.pow(arg_K1, arg_n1) / (Functions.pow(arg_I1, arg_n1) + Functions.pow(arg_K1, arg_n1))) * (Functions.pow(arg_K2, arg_n2) / (Functions.pow(arg_I2, arg_n2) + Functions.pow(arg_K2, arg_n2)))) - (arg_Vr * arg_p));
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
