within BIOMD583;
class Functions

    function elmt_Rate_Law_for_CD_Lumen_death
        input Real arg_K;
        input Real arg_S;
        input Real arg_A1;
        input Real arg_m2;
        input Real arg_A2;
        input Real arg_m3;
        input Real arg_A3;

        output Real result;
        algorithm
            result := (arg_K * arg_S * ((arg_A1 + (arg_m2 * arg_A2)) - (arg_m3 * arg_A3)));
    end elmt_Rate_Law_for_CD_Lumen_death;

    function elmt_Rate_Law_for_Effector_DC_Production_1
        input Real arg_k;
        input Real arg_S;

        output Real result;
        algorithm
            result := (arg_k * arg_S);
    end elmt_Rate_Law_for_Effector_DC_Production_1;

    function elmt_Rate_Law_for_Commensal_Harmful_Death_1
        input Real arg_K;
        input Real arg_S;
        input Real arg_m1;
        input Real arg_A1;
        input Real arg_m2;
        input Real arg_A2;

        output Real result;
        algorithm
            result := (arg_K * arg_S * ((arg_m1 * arg_A1) + (arg_m2 * arg_A2)));
    end elmt_Rate_Law_for_Commensal_Harmful_Death_1;

    function elmt_Rate_Law_for_E_damage
        input Real arg_v;
        input Real arg_S;
        input Real arg_k1;
        input Real arg_a1;
        input Real arg_k2;
        input Real arg_a2;
        input Real arg_k3;
        input Real arg_a3;

        output Real result;
        algorithm
            result := (arg_v * arg_S * ((arg_k1 * arg_a1) + (arg_k2 * arg_a2) + (arg_k3 * arg_a3)));
    end elmt_Rate_Law_for_E_damage;

    function elmt_Rate_Law_for_tDC_Production
        input Real arg_K;
        input Real arg_S;
        input Real arg_k1;
        input Real arg_M1;
        input Real arg_M2;
        input Real arg_k2;
        input Real arg_M3;
        input Real arg_M4;

        output Real result;
        algorithm
            result := (arg_K * arg_S * (((arg_k1 * arg_M1) / arg_M2) + ((arg_k2 * arg_M3) / (arg_M4 + 100.0))));
    end elmt_Rate_Law_for_tDC_Production;

    function elmt_Rate_Law_for_eDC
        input Real arg_K;
        input Real arg_S;
        input Real arg_M1;
        input Real arg_M2;
        input Real arg_k2;
        input Real arg_M3;
        input Real arg_k1;

        output Real result;
        algorithm
            result := ((arg_K * arg_S * arg_M1) / ((arg_k1 * arg_M2) + (arg_k2 * arg_M3)));
    end elmt_Rate_Law_for_eDC;

    function elmt_Rate_Law_for_Commensal_Regrowth
        input Real arg_k1;
        input Real arg_S;
        input Real arg_m1;
        input Real arg_m2;
        input Real arg_k2;
        input Real arg_P;

        output Real result;
        algorithm
            result := ((arg_k1 * arg_S * arg_m1 * arg_m2) - (arg_k2 * arg_P));
    end elmt_Rate_Law_for_Commensal_Regrowth;

    function elmt_KSA
        input Real arg_K;
        input Real arg_S;
        input Real arg_A;

        output Real result;
        algorithm
            result := (arg_K * arg_S * arg_A);
    end elmt_KSA;

    function elmt_Rate_Law_for_N_Activation_Migration
        input Real arg_v;
        input Real arg_S;
        input Real arg_m;
        input Real arg_k1;
        input Real arg_A1;
        input Real arg_k2;
        input Real arg_A2;
        input Real arg_k3;
        input Real arg_I1;

        output Real result;
        algorithm
            result := (arg_v * arg_S * ((arg_m * ((arg_k1 * arg_A1) + (arg_k2 * arg_A2))) - (arg_k3 * arg_I1)));
    end elmt_Rate_Law_for_N_Activation_Migration;

    function elmt_Rate_Law_for_Th17plas
        input Real arg_k1;
        input Real arg_s;
        input Real arg_k2;
        input Real arg_m2;
        input Real arg_p;

        output Real result;
        algorithm
            result := ((arg_k1 * arg_s) - (arg_k2 * arg_m2 * arg_p));
    end elmt_Rate_Law_for_Th17plas;

    function elmt_Rate_Law_for_M_Activation
        input Real arg_K;
        input Real arg_S;
        input Real arg_e1;
        input Real arg_A1;
        input Real arg_A2;
        input Real arg_e2;
        input Real arg_I1;

        output Real result;
        algorithm
            result := (arg_K * arg_S * (((arg_e1 * arg_A1) + arg_A2) - (arg_e2 * arg_I1)));
    end elmt_Rate_Law_for_M_Activation;


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
