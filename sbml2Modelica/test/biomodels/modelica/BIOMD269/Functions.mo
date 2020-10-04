within BIOMD269;
class Functions

    function elmt_function_12
        input Real arg_Re_star;
        input Real arg_ET;
        input Real arg_k11;

        output Real result;
        algorithm
            result := (arg_k11 * arg_Re_star * arg_ET);
    end elmt_function_12;

    function elmt_function_20
        input Real arg_Auxin;
        input Real arg_k18a;
        input Real arg_k18;

        output Real result;
        algorithm
            result := (arg_k18a / (1.0 + (arg_Auxin / arg_k18)));
    end elmt_function_20;

    function elmt_function_10
        input Real arg_k10;
        input Real arg_PLSp;
        input Real arg_k10a;
        input Real arg_Re;

        output Real result;
        algorithm
            result := ((arg_k10 + (arg_k10a * arg_PLSp)) * arg_Re);
    end elmt_function_10;

    function elmt_function_21
        input Real arg_CK;
        input Real arg_k19;

        output Real result;
        algorithm
            result := (arg_k19 * arg_CK);
    end elmt_function_21;

    function elmt_function_8
        input Real arg_k8;
        input Real arg_PLSm;

        output Real result;
        algorithm
            result := (arg_k8 * arg_PLSm);
    end elmt_function_8;

    function elmt_function_15
        input Real arg_ET;
        input Real arg_k13;

        output Real result;
        algorithm
            result := (arg_k13 * arg_ET);
    end elmt_function_15;

    function elmt_function_9
        input Real arg_k9;
        input Real arg_PLSp;

        output Real result;
        algorithm
            result := (arg_k9 * arg_PLSp);
    end elmt_function_9;

    function elmt_function_16
        input Real arg_Re_star;
        input Real arg_k14;
        input Real arg_CTR1;

        output Real result;
        algorithm
            result := (arg_k14 * arg_Re_star * arg_CTR1);
    end elmt_function_16;

    function elmt_function_6
        input Real arg_k6;
        input Real arg_Ra_star;
        input Real arg_ET;
        input Real arg_k6a;

        output Real result;
        algorithm
            result := ((arg_k6 * arg_Ra_star) / (1.0 + (arg_ET / arg_k6a)));
    end elmt_function_6;

    function elmt_function_13
        input Real arg_Auxin;
        input Real arg_CK;
        input Real arg_k12;
        input Real arg_k12a;

        output Real result;
        algorithm
            result := (arg_k12 + (arg_k12a * arg_Auxin * arg_CK));
    end elmt_function_13;

    function elmt_function_7
        input Real arg_k7;
        input Real arg_PLSm;

        output Real result;
        algorithm
            result := (arg_k7 * arg_PLSm);
    end elmt_function_7;

    function elmt_function_19
        input Real arg_X;
        input Real arg_k17;

        output Real result;
        algorithm
            result := (arg_k17 * arg_X);
    end elmt_function_19;

    function elmt_function_17
        input Real arg_CTR1_star;
        input Real arg_k15;

        output Real result;
        algorithm
            result := (arg_k15 * arg_CTR1_star);
    end elmt_function_17;

    function elmt_function_18
        input Real arg_CTR1_star;
        input Real arg_k16;
        input Real arg_k16a;

        output Real result;
        algorithm
            result := (arg_k16 - (arg_k16a * arg_CTR1_star));
    end elmt_function_18;

    function elmt_function_1
        input Real arg_k3;
        input Real arg_k3a;
        input Real arg_X;
        input Real arg_Auxin;

        output Real result;
        algorithm
            result := ((arg_k3 + (arg_k3a * arg_X)) * arg_Auxin);
    end elmt_function_1;

    function elmt_function_4
        input Real arg_k4;
        input Real arg_Auxin;
        input Real arg_Ra;

        output Real result;
        algorithm
            result := (arg_k4 * arg_Auxin * arg_Ra);
    end elmt_function_4;

    function elmt_function_2
        input Real arg_k1a;
        input Real arg_X;
        input Real arg_k1;

        output Real result;
        algorithm
            result := (arg_k1a / (1.0 + (arg_X / arg_k1)));
    end elmt_function_2;

    function elmt_function_3
        input Real arg_k2;
        input Real arg_k2a;
        input Real arg_ET;
        input Real arg_CK;
        input Real arg_k2b;
        input Real arg_PLSp;
        input Real arg_k2c;

        output Real result;
        algorithm
            result := (arg_k2 + (arg_k2a * (arg_ET / (1.0 + (arg_CK / arg_k2b))) * (arg_PLSp / (arg_k2c + arg_PLSp))));
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
