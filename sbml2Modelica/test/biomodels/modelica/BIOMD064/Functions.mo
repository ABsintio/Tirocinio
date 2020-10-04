within BIOMD064;
class Functions

    function elmt_R_PFK
        input Real arg_KmF6P;
        input Real arg_KmATP;
        input Real arg_g;
        input Real arg_AT;
        input Real arg_F6;

        output Real result;
        algorithm
            result := (1.0 + (arg_F6 / arg_KmF6P) + (arg_AT / arg_KmATP) + (arg_g * (arg_F6 / arg_KmF6P) * (arg_AT / arg_KmATP)));
    end elmt_R_PFK;

    function elmt_L_PFK
        input Real arg_L;
        input Real arg_CiATP;
        input Real arg_KiATP;
        input Real arg_CAMP;
        input Real arg_KAMP;
        input Real arg_CF26BP;
        input Real arg_KF26BP;
        input Real arg_CF16BP;
        input Real arg_KF16BP;
        input Real arg_AT;
        input Real arg_AM;
        input Real arg_F16;
        input Real arg_F26;

        output Real result;
        algorithm
            result := (arg_L * Functions.pow(((1.0 + (arg_CiATP * (arg_AT / arg_KiATP))) / (1.0 + (arg_AT / arg_KiATP))), 2.0) * Functions.pow(((1.0 + (arg_CAMP * (arg_AM / arg_KAMP))) / (1.0 + (arg_AM / arg_KAMP))), 2.0) * Functions.pow(((1.0 + ((arg_CF26BP * arg_F26) / arg_KF26BP) + ((arg_CF16BP * arg_F16) / arg_KF16BP)) / (1.0 + (arg_F26 / arg_KF26BP) + (arg_F16 / arg_KF16BP))), 2.0));
    end elmt_L_PFK;

    function elmt_T_PFK
        input Real arg_CATP;
        input Real arg_KmATP;
        input Real arg_AT;

        output Real result;
        algorithm
            result := (1.0 + (arg_CATP * (arg_AT / arg_KmATP)));
    end elmt_T_PFK;


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
