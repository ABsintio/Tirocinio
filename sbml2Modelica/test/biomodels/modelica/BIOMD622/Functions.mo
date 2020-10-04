within BIOMD622;
class Functions

    function elmt_R6_Rate
        input Real arg_subs;
        input Real arg_k1;
        input Real arg_k2;
        input Real arg_prod;

        output Real result;
        algorithm
            result := (arg_subs * ((arg_k1 * arg_subs) + (arg_k2 * arg_prod)));
    end elmt_R6_Rate;

    function elmt_MM_mod
        input Real arg_kc;
        input Real arg_mod;
        input Real arg_subs;
        input Real arg_Km;

        output Real result;
        algorithm
            result := ((arg_kc * arg_mod * arg_subs) / (arg_Km + arg_subs));
    end elmt_MM_mod;

    function elmt_R12_Rate
        input Real arg_subs;
        input Real arg_k1;
        input Real arg_mod1;
        input Real arg_k2;
        input Real arg_mod2;
        input Real arg_k3;
        input Real arg_mod3;

        output Real result;
        algorithm
            result := (arg_subs * ((arg_k1 * arg_mod1) + (arg_k2 * arg_mod2) + (arg_k3 * arg_mod3)));
    end elmt_R12_Rate;

    function elmt_Constant_flux__irreversible
        input Real arg_v;

        output Real result;
        algorithm
            result := arg_v;
    end elmt_Constant_flux__irreversible;

    function elmt_Mod_MA1
        input Real arg_k;
        input Real arg_mod;
        input Real arg_subs;

        output Real result;
        algorithm
            result := (arg_k * arg_mod * arg_subs);
    end elmt_Mod_MA1;


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
