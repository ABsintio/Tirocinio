within BIOMD434;
class Functions

    function elmt_function_11
        input Real arg_khrs;
        input Real arg_HLDLRsS;
        input Real arg_HFC;

        output Real result;
        algorithm
            result := ((arg_khrs * arg_HLDLRsS) / arg_HFC);
    end elmt_function_11;

    function elmt_function_22
        input Real arg_k28;
        input Real arg_HDLC;
        input Real arg_CETP;

        output Real result;
        algorithm
            result := (arg_k28 * arg_HDLC * arg_CETP);
    end elmt_function_22;

    function elmt_function_12
        input Real arg_k15;
        input Real arg_VLDLC;
        input Real arg_LPL;

        output Real result;
        algorithm
            result := (arg_k15 * arg_VLDLC * arg_LPL);
    end elmt_function_12;

    function elmt_function_23
        input Real arg_k29;
        input Real arg_HDLC;
        input Real arg_SRB1;

        output Real result;
        algorithm
            result := (arg_k29 * arg_HDLC * arg_SRB1);
    end elmt_function_23;

    function elmt_function_20
        input Real arg_PCSmax;
        input Real arg_PFC;
        input Real arg_PPCt;
        input Real arg_PCSS;

        output Real result;
        algorithm
            result := (arg_PCSmax / (1.0 + Functions.pow((arg_PFC / arg_PPCt), arg_PCSS)));
    end elmt_function_20;

    function elmt_function_10
        input Real arg_k11;
        input Real arg_PFC;

        output Real result;
        algorithm
            result := (arg_k11 * arg_PFC);
    end elmt_function_10;

    function elmt_function_21
        input Real arg_k27;
        input Real arg_HDLC;
        input Real arg_CETP;

        output Real result;
        algorithm
            result := (arg_k27 * arg_HDLC * arg_CETP);
    end elmt_function_21;

    function elmt_function_8
        input Real arg_k9;
        input Real arg_ACAT;
        input Real arg_HFC;

        output Real result;
        algorithm
            result := (arg_k9 * arg_ACAT * arg_HFC);
    end elmt_function_8;

    function elmt_function_15
        input Real arg_k20;
        input Real arg_PLDLRs;
        input Real arg_LDLC;

        output Real result;
        algorithm
            result := (arg_k20 * arg_PLDLRs * arg_LDLC);
    end elmt_function_15;

    function elmt_function_9
        input Real arg_k10;
        input Real arg_CEH;
        input Real arg_HCE;

        output Real result;
        algorithm
            result := (arg_k10 * arg_CEH * arg_HCE);
    end elmt_function_9;

    function elmt_function_16
        input Real arg_kprs;
        input Real arg_PLDLRsS;
        input Real arg_PFC;

        output Real result;
        algorithm
            result := ((arg_kprs * arg_PLDLRsS) / arg_PFC);
    end elmt_function_16;

    function elmt_function_6
        input Real arg_BCRmax;
        input Real arg_BCRt;
        input Real arg_HFC;
        input Real arg_BS;

        output Real result;
        algorithm
            result := (arg_BCRmax / (1.0 + Functions.pow((arg_BCRt / arg_HFC), arg_BS)));
    end elmt_function_6;

    function elmt_function_13
        input Real arg_k17;
        input Real arg_IDLC;
        input Real arg_HSL;

        output Real result;
        algorithm
            result := (arg_k17 * arg_IDLC * arg_HSL);
    end elmt_function_13;

    function elmt_function_7
        input Real arg_HCSmax;
        input Real arg_HFC;
        input Real arg_HCSt;
        input Real arg_HS;

        output Real result;
        algorithm
            result := (arg_HCSmax / (1.0 + Functions.pow((arg_HFC / arg_HCSt), arg_HS)));
    end elmt_function_7;

    function elmt_function_14
        input Real arg_k18;
        input Real arg_LDLC;
        input Real arg_HLDLRs;

        output Real result;
        algorithm
            result := (arg_k18 * arg_LDLC * arg_HLDLRs);
    end elmt_function_14;

    function elmt_function_19
        input Real arg_k26;
        input Real arg_PFC;
        input Real arg_NHDL;
        input Real arg_LCAT;

        output Real result;
        algorithm
            result := (arg_k26 * arg_PFC * arg_NHDL * arg_LCAT);
    end elmt_function_19;

    function elmt_function_17
        input Real arg_k23;
        input Real arg_ACAT;
        input Real arg_PFC;

        output Real result;
        algorithm
            result := (arg_k23 * arg_ACAT * arg_PFC);
    end elmt_function_17;

    function elmt_function_18
        input Real arg_k24;
        input Real arg_CEH;
        input Real arg_PCE;

        output Real result;
        algorithm
            result := (arg_k24 * arg_CEH * arg_PCE);
    end elmt_function_18;

    function elmt_function_1
        input Real arg_ICSmax;
        input Real arg_IC;
        input Real arg_ICt;
        input Real arg_IS;

        output Real result;
        algorithm
            result := (arg_ICSmax / (1.0 + Functions.pow((arg_IC / arg_ICt), arg_IS)));
    end elmt_function_1;

    function elmt_function_4
        input Real arg_k7;
        input Real arg_IC;
        input Real arg_IBS;

        output Real result;
        algorithm
            result := (arg_k7 * arg_IC * arg_IBS);
    end elmt_function_4;

    function elmt_function_5
        input Real arg_k8;
        input Real arg_PFC;

        output Real result;
        algorithm
            result := (arg_k8 * arg_PFC);
    end elmt_function_5;

    function elmt_function_2
        input Real arg_k5;
        input Real arg_HFC;
        input Real arg_HBS;

        output Real result;
        algorithm
            result := ((arg_k5 * arg_HFC) / arg_HBS);
    end elmt_function_2;

    function elmt_function_3
        input Real arg_k6;
        input Real arg_IC;
        input Real arg_IBS;

        output Real result;
        algorithm
            result := (arg_k6 * arg_IC * arg_IBS);
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
