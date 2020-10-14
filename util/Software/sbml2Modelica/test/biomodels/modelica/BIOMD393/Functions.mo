within BIOMD393;
class Functions

    function elmt_function_22
        input Real arg_Vm;
        input Real arg_s1;
        input Real arg_Ks1;
        input Real arg_r1;
        input Real arg_Kr1;

        output Real result;
        algorithm
            result := ((arg_Vm * arg_s1) / (arg_s1 + (arg_Ks1 * (1.0 + (arg_r1 / arg_Kr1)))));
    end elmt_function_22;

    function elmt_function_11
        input Real arg_Vm;
        input Real arg_S;
        input Real arg_KA;
        input Real arg_A;
        input Real arg_K;
        input Real arg_R1;
        input Real arg_KR1;
        input Real arg_R2;
        input Real arg_KR2;
        input Real arg_R3;
        input Real arg_KR3;

        output Real result;
        algorithm
            result := ((arg_Vm * arg_S) / ((arg_S * (1.0 + (arg_KA / arg_A))) + (arg_K * (1.0 + ((1.0 + (arg_KA / arg_A)) * ((arg_R1 / arg_KR1) + (arg_R2 / arg_KR2) + (arg_R3 / arg_KR3)))))));
    end elmt_function_11;

    function elmt_function_12
        input Real arg_s1;
        input Real arg_p1;
        input Real arg_p2;
        input Real arg_q;
        input Real arg_Ks1;
        input Real arg_Kp1;
        input Real arg_Kp2;
        input Real arg_Vm;

        output Real result;
        algorithm
            result := ((arg_Vm * (arg_s1 - ((arg_p1 * arg_p2) / arg_q))) / (arg_Ks1 * ((arg_s1 / arg_Ks1) + ((1.0 + (arg_p1 / arg_Kp1)) * (1.0 + (arg_p2 / arg_Kp2))))));
    end elmt_function_12;

    function elmt_function_20
        input Real arg_Vm;
        input Real arg_s1;
        input Real arg_s2;
        input Real arg_p1;
        input Real arg_p2;
        input Real arg_q;
        input Real arg_Ks1;
        input Real arg_r1;
        input Real arg_Kr1;
        input Real arg_Ks2;

        output Real result;
        algorithm
            result := ((arg_Vm * ((arg_s1 * arg_s2) - ((arg_p1 * arg_p2) / arg_q))) / ((arg_s1 + (arg_Ks1 * (1.0 + (arg_r1 / arg_Kr1)))) * (arg_s2 + arg_Ks2)));
    end elmt_function_20;

    function elmt_function_21
        input Real arg_Vm;
        input Real arg_s1;
        input Real arg_s2;
        input Real arg_p1;
        input Real arg_p2;
        input Real arg_q;
        input Real arg_Ks1;
        input Real arg_r1;
        input Real arg_Kr1;

        output Real result;
        algorithm
            result := ((arg_Vm * ((arg_s1 * arg_s2) - ((arg_p1 * arg_p2) / arg_q))) / (arg_s1 + (arg_Ks1 * (1.0 + (arg_r1 / arg_Kr1)))));
    end elmt_function_21;

    function elmt_function_10
        input Real arg_Vm;
        input Real arg_S1;
        input Real arg_S2;
        input Real arg_K1;
        input Real arg_K2;
        input Real arg_R1;
        input Real arg_KR1;
        input Real arg_R2;
        input Real arg_KA1;
        input Real arg_A1;
        input Real arg_KA2;
        input Real arg_A2;
        input Real arg_KA3;
        input Real arg_A3;

        output Real result;
        algorithm
            result := ((arg_Vm * arg_S1 * arg_S2) / ((arg_S1 + arg_K1) * (1.0 + (arg_R1 / arg_KR1)) * (arg_S2 + (arg_K2 * (1.0 + ((arg_K2 * arg_R2) / ((arg_KA1 * arg_A1) + (arg_KA2 * arg_A2) + (arg_KA3 * arg_A3))))))));
    end elmt_function_10;

    function elmt_function_15
        input Real arg_Vm;
        input Real arg_s1;
        input Real arg_s2;
        input Real arg_p1;
        input Real arg_p2;
        input Real arg_q;
        input Real arg_Ks1;
        input Real arg_r1;
        input Real arg_Kr1;
        input Real arg_r2;
        input Real arg_Kr2;
        input Real arg_Ks2;
        input Real arg_r3;
        input Real arg_Kr3;

        output Real result;
        algorithm
            result := ((arg_Vm * ((arg_s1 * arg_s2) - ((arg_p1 * arg_p2) / arg_q))) / ((arg_s1 + (arg_Ks1 * (1.0 + (arg_r1 / arg_Kr1)) * (1.0 + (arg_r2 / arg_Kr2)))) * (arg_s2 + (arg_Ks2 * (1.0 + (arg_r3 / arg_Kr3))))));
    end elmt_function_15;

    function elmt_function_8
        input Real arg_Vm;
        input Real arg_s1;
        input Real arg_p1;
        input Real arg_p2;
        input Real arg_q;
        input Real arg_Ks1;
        input Real arg_r1;
        input Real arg_Kr1;

        output Real result;
        algorithm
            result := ((arg_Vm * (arg_s1 - ((arg_p1 * arg_p2) / arg_q))) / (arg_s1 + (arg_Ks1 * (1.0 + (arg_r1 / arg_Kr1)))));
    end elmt_function_8;

    function elmt_function_9
        input Real arg_Vm;
        input Real arg_s1;
        input Real arg_s2;
        input Real arg_p1;
        input Real arg_p2;
        input Real arg_q;
        input Real arg_Ks1;
        input Real arg_r1;
        input Real arg_Kr1;
        input Real arg_r2;
        input Real arg_Kr2;
        input Real arg_r3;
        input Real arg_Kr3;
        input Real arg_r4;
        input Real arg_Kr41;
        input Real arg_Ks2;
        input Real arg_Kr42;

        output Real result;
        algorithm
            result := ((arg_Vm * ((arg_s1 * arg_s2) - ((arg_p1 * arg_p2) / arg_q))) / ((arg_s1 + (arg_Ks1 * (1.0 + (arg_r1 / arg_Kr1) + (arg_r2 / arg_Kr2) + (arg_r3 / arg_Kr3)))) * ((arg_s2 * (1.0 + (arg_r4 / arg_Kr41))) + (arg_Ks2 * (1.0 + (arg_r4 / arg_Kr42))))));
    end elmt_function_9;

    function elmt_function_16
        input Real arg_Vm;
        input Real arg_s1;
        input Real arg_r1;
        input Real arg_Kr1;
        input Real arg_r2;
        input Real arg_Kr2;
        input Real arg_Ks1;

        output Real result;
        algorithm
            result := ((arg_Vm * arg_s1) / ((arg_s1 + arg_Ks1) * (1.0 + (arg_r1 / arg_Kr1)) * (1.0 + (arg_r2 / arg_Kr2))));
    end elmt_function_16;

    function elmt_function_13
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
    end elmt_function_13;

    function elmt_function_6
        input Real arg_Vm;
        input Real arg_s1;
        input Real arg_s2;
        input Real arg_p1;
        input Real arg_p2;
        input Real arg_Ks1;
        input Real arg_Ks2;
        input Real arg_r1;
        input Real arg_Kr1;
        input Real arg_r2;
        input Real arg_Kr2;
        input Real arg_q;

        output Real result;
        algorithm
            result := ((arg_Vm * ((arg_s1 * arg_s2) - ((arg_p1 * arg_p2) / arg_q))) / ((arg_s1 + (arg_Ks1 * (1.0 + (arg_r1 / arg_Kr1) + (arg_r2 / arg_Kr2)))) * (arg_s2 + arg_Ks2)));
    end elmt_function_6;

    function elmt_function_14
        input Real arg_Vm;
        input Real arg_s1;
        input Real arg_s2;
        input Real arg_p1;
        input Real arg_p2;
        input Real arg_q;
        input Real arg_Ks1;
        input Real arg_r1;
        input Real arg_Kr1;
        input Real arg_Ks2;
        input Real arg_r2;
        input Real arg_Kr2;
        input Real arg_r3;
        input Real arg_Kr3;
        input Real arg_r4;
        input Real arg_Kr4;
        input Real arg_r5;
        input Real arg_Kr5;

        output Real result;
        algorithm
            result := ((arg_Vm * ((arg_s1 * arg_s2) - ((arg_p1 * arg_p2) / arg_q))) / ((arg_s1 + (arg_Ks1 * (1.0 + (arg_r1 / arg_Kr1)))) * (arg_s2 + (arg_Ks2 * (1.0 + (arg_r2 / arg_Kr2)) * (1.0 + (arg_r3 / arg_Kr3)) * (1.0 + (arg_r4 / arg_Kr4)) * (1.0 + (arg_r5 / arg_Kr5))))));
    end elmt_function_14;

    function elmt_function_7
        input Real arg_Vm;
        input Real arg_s1;
        input Real arg_s2;
        input Real arg_p1;
        input Real arg_q;
        input Real arg_Ks1;
        input Real arg_Ks2;

        output Real result;
        algorithm
            result := ((arg_Vm * ((arg_s1 * arg_s2) - (arg_p1 / arg_q))) / ((arg_s1 + arg_Ks1) * (arg_s2 + arg_Ks2)));
    end elmt_function_7;

    function elmt_function_19
        input Real arg_Vm;
        input Real arg_s1;
        input Real arg_Ks1;
        input Real arg_r1;
        input Real arg_Kr1;
        input Real arg_r2;
        input Real arg_Kr2;

        output Real result;
        algorithm
            result := ((arg_Vm * arg_s1) / (arg_s1 + (arg_Ks1 * (1.0 + (arg_r1 / arg_Kr1)) * (1.0 + (arg_r2 / arg_Kr2)))));
    end elmt_function_19;

    function elmt_function_17
        input Real arg_substrate;
        input Real arg_Km;
        input Real arg_V;

        output Real result;
        algorithm
            result := ((arg_V * arg_substrate) / (arg_Km + arg_substrate));
    end elmt_function_17;

    function elmt_function_18
        input Real arg_substrate;
        input Real arg_Inhibitor;
        input Real arg_Km;
        input Real arg_V;
        input Real arg_Ki;

        output Real result;
        algorithm
            result := ((arg_V * arg_substrate) / (arg_Km + arg_substrate + ((arg_Km * arg_Inhibitor) / arg_Ki)));
    end elmt_function_18;

    function elmt_function_1
        input Real arg_Vm;
        input Real arg_S;
        input Real arg_K;
        input Real arg_R1;
        input Real arg_KR1;
        input Real arg_R2;
        input Real arg_KR2;
        input Real arg_R3;
        input Real arg_KR3;
        input Real arg_R4;
        input Real arg_KR4;
        input Real arg_R5;
        input Real arg_KR5;

        output Real result;
        algorithm
            result := ((arg_Vm * arg_S) / (arg_S + (arg_K * (1.0 + (arg_R1 / arg_KR1) + (arg_R2 / arg_KR2) + (arg_R3 / arg_KR3) + (arg_R4 / arg_KR4) + (arg_R5 / arg_KR5)))));
    end elmt_function_1;

    function elmt_function_4
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
    end elmt_function_4;

    function elmt_function_5
        input Real arg_Vm;
        input Real arg_s1;
        input Real arg_p1;
        input Real arg_p2;
        input Real arg_q;
        input Real arg_Ks1;
        input Real arg_r1;
        input Real arg_Kr1;
        input Real arg_r2;
        input Real arg_Kr2;

        output Real result;
        algorithm
            result := ((arg_Vm * (arg_s1 - ((arg_p1 * arg_p2) / arg_q))) / (arg_s1 + (arg_Ks1 * (1.0 + (arg_r1 / arg_Kr1) + (arg_r2 / arg_Kr2)))));
    end elmt_function_5;

    function elmt_function_2
        input Real arg_Vm;
        input Real arg_s1;
        input Real arg_s2;
        input Real arg_Ks1;
        input Real arg_Ks2;
        input Real arg_r1;
        input Real arg_Kr1;

        output Real result;
        algorithm
            result := ((arg_Vm * arg_s1 * arg_s2) / ((arg_s1 + arg_Ks1) * (arg_s2 + (arg_Ks2 * (1.0 + (arg_r1 / arg_Kr1))))));
    end elmt_function_2;

    function elmt_function_3
        input Real arg_Vm;
        input Real arg_s1;
        input Real arg_s2;
        input Real arg_K1;
        input Real arg_K2;

        output Real result;
        algorithm
            result := ((arg_Vm * arg_s1 * arg_s2) / ((arg_s1 + arg_K1) * (arg_s2 + arg_K2)));
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
