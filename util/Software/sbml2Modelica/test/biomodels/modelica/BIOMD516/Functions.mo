within BIOMD516;
class Functions

    function elmt_mass_action_rev
        input Real arg_k1;
        input Real arg_S;
        input Real arg_k2;
        input Real arg_P;

        output Real result;
        algorithm
            result := ((arg_k1 * arg_S) - (arg_k2 * arg_P));
    end elmt_mass_action_rev;

    function elmt_v2sub2prod_compinhib
        input Real arg_Vfmax;
        input Real arg_Keq;
        input Real arg_S1;
        input Real arg_Ks1;
        input Real arg_S2;
        input Real arg_Ks2;
        input Real arg_P1;
        input Real arg_Kp1;
        input Real arg_P2;
        input Real arg_Kp2;
        input Real arg_I1;
        input Real arg_Ki1;
        input Real arg_I2;
        input Real arg_Ki2;

        output Real result;
        algorithm
            result := ((arg_Vfmax * arg_S1 * arg_S2 * (1.0 - ((arg_P1 * arg_P2) / (arg_Keq * arg_S1 * arg_S2)))) / (arg_Ks1 * arg_Ks2 * (1.0 + (arg_S1 / arg_Ks1) + (arg_P1 / arg_Kp1)) * (1.0 + (arg_S2 / arg_Ks2) + (arg_P2 / arg_Kp2) + (arg_I1 / arg_Ki1) + (arg_I2 / arg_Ki2))));
    end elmt_v2sub2prod_compinhib;

    function elmt_v2sub2prod
        input Real arg_Vfmax;
        input Real arg_Keq;
        input Real arg_S1;
        input Real arg_Ks1;
        input Real arg_S2;
        input Real arg_Ks2;
        input Real arg_P1;
        input Real arg_Kp1;
        input Real arg_P2;
        input Real arg_Kp2;

        output Real result;
        algorithm
            result := ((arg_Vfmax * arg_S1 * arg_S2 * (1.0 - ((arg_P1 * arg_P2) / (arg_Keq * arg_S1 * arg_S2)))) / (arg_Ks1 * arg_Ks2 * (1.0 + (arg_S1 / arg_Ks1) + (arg_P1 / arg_Kp1)) * (1.0 + (arg_S2 / arg_Ks2) + (arg_P2 / arg_Kp2))));
    end elmt_v2sub2prod;

    function elmt_vAK
        input Real arg_ADP;
        input Real arg_AMP;
        input Real arg_ATP;
        input Real arg_k1;
        input Real arg_k2;

        output Real result;
        algorithm
            result := ((arg_k1 * Functions.pow(arg_ADP, 2.0)) - (arg_AMP * arg_ATP * arg_k2));
    end elmt_vAK;

    function elmt_v1sub
        input Real arg_Vfmax;
        input Real arg_S;
        input Real arg_Ks;

        output Real result;
        algorithm
            result := ((arg_Vfmax * arg_S) / (arg_Ks * (1.0 + (arg_S / arg_Ks))));
    end elmt_v1sub;

    function elmt_v1sub1prod
        input Real arg_Vfmax;
        input Real arg_Keq;
        input Real arg_S;
        input Real arg_Ks;
        input Real arg_P;
        input Real arg_Kp;

        output Real result;
        algorithm
            result := ((arg_Vfmax * arg_S * (1.0 - (arg_P / (arg_Keq * arg_S)))) / (arg_Ks * (1.0 + (arg_S / arg_Ks) + (arg_P / arg_Kp))));
    end elmt_v1sub1prod;

    function elmt_mass_action_irrev
        input Real arg_k;
        input Real arg_S;

        output Real result;
        algorithm
            result := (arg_k * arg_S);
    end elmt_mass_action_irrev;


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
