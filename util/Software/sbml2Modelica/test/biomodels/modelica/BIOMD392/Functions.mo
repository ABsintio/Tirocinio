within BIOMD392;
class Functions

    function elmt_function_30
        input Real arg_Vm;
        input Real arg_s1;
        input Real arg_p1;
        input Real arg_p2;
        input Real arg_q;
        input Real arg_Ks1;
        input Real arg_r1;
        input Real arg_Kr1;
        input Real arg_Kp1;
        input Real arg_Kp2;

        output Real result;
        algorithm
            result := ((arg_Vm * arg_s1 * (arg_s1 - ((arg_p1 * arg_p2) / arg_q))) / (Functions.pow((arg_Ks1 * (1.0 + (arg_r1 / arg_Kr1))), 2.0) * (Functions.pow((arg_s1 / (arg_Ks1 * (1.0 + (arg_r1 / arg_Kr1)))), 2.0) + ((1.0 + (arg_p1 / arg_Kp1)) * (1.0 + (arg_p2 / arg_Kp2))))));
    end elmt_function_30;

    function elmt_function_33
        input Real arg_Vm;
        input Real arg_s1;
        input Real arg_Ks1;
        input Real arg_r1;
        input Real arg_r2;
        input Real arg_Kr1;
        input Real arg_r3;
        input Real arg_Kr3;
        input Real arg_r4;
        input Real arg_Kr4;

        output Real result;
        algorithm
            result := ((((arg_Vm * arg_s1) / arg_Ks1) * (1.0 + ((arg_r1 + arg_r2) / arg_Kr1))) / (1.0 + (arg_r3 / arg_Kr3) + (arg_r4 / arg_Kr4)));
    end elmt_function_33;

    function elmt_function_34
        input Real arg_v;

        output Real result;
        algorithm
            result := arg_v;
    end elmt_function_34;

    function elmt_function_23
        input Real arg_Vm;
        input Real arg_s1;
        input Real arg_s2;
        input Real arg_p1;
        input Real arg_p2;
        input Real arg_p3;
        input Real arg_q;
        input Real arg_Ks1;
        input Real arg_Ks2;
        input Real arg_Kp1;
        input Real arg_Kp2;
        input Real arg_Kp3;

        output Real result;
        algorithm
            result := ((arg_Vm * ((arg_s1 * arg_s2) - ((arg_p1 * arg_p2 * arg_p3) / arg_q))) / (arg_Ks1 * arg_Ks2 * (((1.0 + (arg_s1 / arg_Ks1)) * (1.0 + (arg_s2 / arg_Ks2))) + (arg_p1 / arg_Kp1) + (arg_p2 / arg_Kp2) + (arg_p3 / arg_Kp3) + ((arg_p1 * arg_p2 * arg_p3) / (arg_Kp1 * arg_Kp2 * arg_Kp3)))));
    end elmt_function_23;

    function elmt_function_31
        input Real arg_Vm;
        input Real arg_s1;
        input Real arg_s2;
        input Real arg_p1;
        input Real arg_p2;
        input Real arg_p3;
        input Real arg_q;
        input Real arg_Ks1;
        input Real arg_r1;
        input Real arg_Kr11;
        input Real arg_Ks2;
        input Real arg_Kp1;
        input Real arg_Kp2;
        input Real arg_Kr12;

        output Real result;
        algorithm
            result := ((arg_Vm * arg_s1 * ((arg_s1 * arg_s2) - ((arg_p1 * arg_p2 * arg_p3) / arg_q))) / (Functions.pow((arg_Ks1 * (1.0 + (arg_r1 / arg_Kr11))), 2.0) * arg_Ks2 * (((((1.0 + Functions.pow((arg_s1 / (arg_Ks1 * (1.0 + (arg_r1 / arg_Kr11)))), 2.0)) * (1.0 + (arg_s2 / arg_Ks2))) + ((1.0 + (arg_p1 / arg_Kp1)) * (1.0 + (arg_p2 / arg_Kp2)))) - 1.0) + (arg_r1 / arg_Kr12))));
    end elmt_function_31;

    function elmt_function_32
        input Real arg_Vm;
        input Real arg_s1;
        input Real arg_Ks1;
        input Real arg_r1;
        input Real arg_Kr1;
        input Real arg_r2;
        input Real arg_r3;
        input Real arg_Kr2;

        output Real result;
        algorithm
            result := ((((arg_Vm * arg_s1) / arg_Ks1) * (1.0 + (arg_r1 / arg_Kr1))) / (1.0 + ((arg_r2 + arg_r3) / arg_Kr2)));
    end elmt_function_32;

    function elmt_function_26
        input Real arg_Vm;
        input Real arg_s1;
        input Real arg_p1;
        input Real arg_p2;
        input Real arg_q;
        input Real arg_Ks1;
        input Real arg_Kp1;
        input Real arg_Kp2;

        output Real result;
        algorithm
            result := ((arg_Vm * (arg_s1 - ((arg_p1 * arg_p2) / arg_q))) / (arg_Ks1 * ((arg_s1 / arg_Ks1) + ((1.0 + (arg_p1 / arg_Kp1)) * (1.0 + (arg_p2 / arg_Kp2))))));
    end elmt_function_26;

    function elmt_function_27
        input Real arg_s1;
        input Real arg_s2;
        input Real arg_p1;
        input Real arg_p2;
        input Real arg_q;
        input Real arg_Ks1;
        input Real arg_Ks2;
        input Real arg_Kp1;
        input Real arg_Kp2;
        input Real arg_Vm;

        output Real result;
        algorithm
            result := ((arg_Vm * ((arg_s1 * arg_s2) - ((arg_p1 * arg_p2) / arg_q))) / (arg_Ks1 * arg_Ks2 * ((((1.0 + (arg_s1 / arg_Ks1)) * (1.0 + (arg_s2 / arg_Ks2))) + ((1.0 + (arg_p1 / arg_Kp1)) * (1.0 + (arg_p2 / arg_Kp2)))) - 1.0)));
    end elmt_function_27;

    function elmt_function_24
        input Real arg_s1;
        input Real arg_s2;
        input Real arg_p1;
        input Real arg_q;
        input Real arg_Ks1;
        input Real arg_Ks2;
        input Real arg_Kp1;
        input Real arg_Vm;

        output Real result;
        algorithm
            result := ((arg_Vm * ((arg_s1 * arg_s2) - (arg_p1 / arg_q))) / (arg_Ks1 * arg_Ks2 * (((1.0 + (arg_s1 / arg_Ks1)) * (1.0 + (arg_s2 / arg_Ks2))) + (arg_p1 / arg_Kp1))));
    end elmt_function_24;

    function elmt_function_25
        input Real arg_Vm;
        input Real arg_s1;
        input Real arg_p1;
        input Real arg_p2;
        input Real arg_q;
        input Real arg_Ks1;
        input Real arg_Kp1;
        input Real arg_Kp2;

        output Real result;
        algorithm
            result := ((arg_Vm * (arg_s1 - ((arg_p1 * arg_p2) / arg_q))) / (arg_Ks1 * (1.0 + (arg_s1 / arg_Ks1) + (arg_p1 / arg_Kp1) + ((arg_p1 * arg_p2) / (arg_Kp1 * arg_Kp2)))));
    end elmt_function_25;

    function elmt_function_28
        input Real arg_Vm;
        input Real arg_r1;
        input Real arg_r2;
        input Real arg_s1;
        input Real arg_s2;
        input Real arg_p1;
        input Real arg_p2;
        input Real arg_q;
        input Real arg_Ks1;
        input Real arg_Ks2;
        input Real arg_Kp1;
        input Real arg_Kp2;

        output Real result;
        algorithm
            result := ((arg_Vm * Functions.pow((arg_r1 / arg_r2), 2.0) * ((arg_s1 * arg_s2) - ((arg_p1 * arg_p2) / arg_q))) / (arg_Ks1 * arg_Ks2 * ((((1.0 + (arg_s1 / arg_Ks1)) * (1.0 + (arg_s2 / arg_Ks2))) + ((1.0 + (arg_p1 / arg_Kp1)) * (1.0 + (arg_p2 / arg_Kp2)))) - 1.0)));
    end elmt_function_28;

    function elmt_function_29
        input Real arg_Vm;
        input Real arg_s1;
        input Real arg_p1;
        input Real arg_q;
        input Real arg_Ks1;
        input Real arg_Kp1;

        output Real result;
        algorithm
            result := ((arg_Vm * (arg_s1 - (arg_p1 / arg_q))) / (arg_Ks1 * (1.0 + (arg_s1 / arg_Ks1) + (arg_p1 / arg_Kp1))));
    end elmt_function_29;

    function elmt_Transketolase
        input Real arg_Vm;
        input Real arg_q;
        input Real arg_s1;
        input Real arg_s2;
        input Real arg_p1;
        input Real arg_p2;
        input Real arg_K1;
        input Real arg_K2;
        input Real arg_K1s2;
        input Real arg_K2s1;
        input Real arg_r1;
        input Real arg_K2r1;
        input Real arg_K2s2;
        input Real arg_r2;

        output Real result;
        algorithm
            result := ((arg_Vm * ((arg_q * arg_s1 * arg_s2) - (arg_p1 * arg_p2))) / (arg_K1 * arg_K2 * (1.0 + ((1.0 + (arg_s2 / arg_K1s2)) * ((arg_s1 / arg_K2s1) + (arg_r1 / arg_K2r1))) + (arg_s2 / arg_K2s2) + ((1.0 / arg_K2) * ((arg_p2 * (1.0 + ((arg_p1 * arg_r2) / arg_K1))) + arg_p1 + arg_r2)))));
    end elmt_Transketolase;

    function elmt_TPTout
        input Real arg_Vm;
        input Real arg_s;
        input Real arg_Ks;
        input Real arg_r1;
        input Real arg_Kr1;
        input Real arg_r2;
        input Real arg_Kr2;
        input Real arg_p;
        input Real arg_Kp;
        input Real arg_r3;
        input Real arg_Kr3;
        input Real arg_r4;
        input Real arg_Kr4;

        output Real result;
        algorithm
            result := ((arg_Vm / ((arg_s / arg_Ks) + (arg_r1 / arg_Kr1) + (arg_r2 / arg_Kr2) + (arg_p / arg_Kp) + (arg_r3 / arg_Kr3) + (arg_r4 / arg_Kr4) + (((arg_s / arg_Ks) + (arg_r1 / arg_Kr1) + (arg_r2 / arg_Kr2)) * ((arg_p / arg_Kp) + (arg_r3 / arg_Kr3) + (arg_r4 / arg_Kr4))))) * (((arg_s * ((arg_p / arg_Kp) + (arg_r3 / arg_Kr3) + (arg_r4 / arg_Kr4))) / arg_Ks) - ((arg_p * ((arg_s / arg_Ks) + (arg_r1 / arg_Kr1) + (arg_r2 / arg_Kr2))) / arg_Kp)));
    end elmt_TPTout;


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
