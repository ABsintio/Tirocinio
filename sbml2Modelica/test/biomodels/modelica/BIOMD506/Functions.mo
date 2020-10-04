within BIOMD506;
class Functions

    function elmt_MCKATA
        input Real arg_sf;
        input Real arg_V;
        input Real arg_Kms1;
        input Real arg_Kms2;
        input Real arg_Kms3;
        input Real arg_Kms4;
        input Real arg_Kms5;
        input Real arg_Kms6;
        input Real arg_Kms7;
        input Real arg_Kms8;
        input Real arg_Kmp1;
        input Real arg_Kmp2;
        input Real arg_Kmp3;
        input Real arg_Kmp4;
        input Real arg_Kmp5;
        input Real arg_Kmp6;
        input Real arg_Kmp7;
        input Real arg_Kmp8;
        input Real arg_Keq;
        input Real arg_S1;
        input Real arg_S2;
        input Real arg_S3;
        input Real arg_S4;
        input Real arg_S5;
        input Real arg_S6;
        input Real arg_S7;
        input Real arg_S8;
        input Real arg_P1;
        input Real arg_P2;
        input Real arg_P3;
        input Real arg_P4;
        input Real arg_P5;
        input Real arg_P6;
        input Real arg_P7;
        input Real arg_P8;

        output Real result;
        algorithm
            result := ((arg_sf * arg_V * (((arg_S1 * arg_S8) / (arg_Kms1 * arg_Kms8)) - ((arg_P1 * arg_P8) / (arg_Kms1 * arg_Kms8 * arg_Keq)))) / ((1.0 + (arg_S1 / arg_Kms1) + (arg_P1 / arg_Kmp1) + (arg_S2 / arg_Kms2) + (arg_P2 / arg_Kmp2) + (arg_S3 / arg_Kms3) + (arg_P3 / arg_Kmp3) + (arg_S4 / arg_Kms4) + (arg_P4 / arg_Kmp4) + (arg_S5 / arg_Kms5) + (arg_P5 / arg_Kmp5) + (arg_S6 / arg_Kms6) + (arg_P6 / arg_Kmp6) + (arg_S7 / arg_Kms7) + (arg_P7 / arg_Kmp7) + (arg_P8 / arg_Kmp8)) * (1.0 + (arg_S8 / arg_Kms8) + (arg_P8 / arg_Kmp8))));
    end elmt_MCKATA;

    function elmt_MCKATB
        input Real arg_sf;
        input Real arg_V;
        input Real arg_Kms1;
        input Real arg_Kms2;
        input Real arg_Kms3;
        input Real arg_Kms4;
        input Real arg_Kms5;
        input Real arg_Kms6;
        input Real arg_Kms7;
        input Real arg_Kms8;
        input Real arg_Kmp1;
        input Real arg_Kmp2;
        input Real arg_Kmp3;
        input Real arg_Kmp4;
        input Real arg_Kmp5;
        input Real arg_Kmp6;
        input Real arg_Kmp7;
        input Real arg_Kmp8;
        input Real arg_Keq;
        input Real arg_S1;
        input Real arg_S2;
        input Real arg_S3;
        input Real arg_S4;
        input Real arg_S5;
        input Real arg_S6;
        input Real arg_S7;
        input Real arg_S8;
        input Real arg_P1;
        input Real arg_P2;
        input Real arg_P3;
        input Real arg_P4;
        input Real arg_P5;
        input Real arg_P6;
        input Real arg_P7;
        input Real arg_P8;

        output Real result;
        algorithm
            result := ((arg_sf * arg_V * (((arg_S1 * arg_S8) / (arg_Kms1 * arg_Kms8)) - ((arg_P8 * arg_P8) / (arg_Kms1 * arg_Kms8 * arg_Keq)))) / ((1.0 + (arg_S1 / arg_Kms1) + (arg_P1 / arg_Kmp1) + (arg_S2 / arg_Kms2) + (arg_P2 / arg_Kmp2) + (arg_S3 / arg_Kms3) + (arg_P3 / arg_Kmp3) + (arg_S4 / arg_Kms4) + (arg_P4 / arg_Kmp4) + (arg_S5 / arg_Kms5) + (arg_P5 / arg_Kmp5) + (arg_S6 / arg_Kms6) + (arg_P6 / arg_Kmp6) + (arg_S7 / arg_Kms7) + (arg_P7 / arg_Kmp7) + (arg_P8 / arg_Kmp8)) * (1.0 + (arg_S8 / arg_Kms8) + (arg_P8 / arg_Kmp8))));
    end elmt_MCKATB;

    function elmt_RES
        input Real arg_Ks;
        input Real arg_S;
        input Real arg_K1;

        output Real result;
        algorithm
            result := (arg_Ks * (arg_S - arg_K1));
    end elmt_RES;

    function elmt_CPT1
        input Real arg_sf;
        input Real arg_V;
        input Real arg_Kms1;
        input Real arg_Kms2;
        input Real arg_Kmp1;
        input Real arg_Kmp2;
        input Real arg_Ki1;
        input Real arg_Keq;
        input Real arg_S1;
        input Real arg_S2;
        input Real arg_P1;
        input Real arg_P2;
        input Real arg_I1;
        input Real arg_n;

        output Real result;
        algorithm
            result := ((arg_sf * arg_V * (((arg_S1 * arg_S2) / (arg_Kms1 * arg_Kms2)) - ((arg_P1 * arg_P2) / (arg_Kms1 * arg_Kms2 * arg_Keq)))) / ((1.0 + (arg_S1 / arg_Kms1) + (arg_P1 / arg_Kmp1) + Functions.pow((arg_I1 / arg_Ki1), arg_n)) * (1.0 + (arg_S2 / arg_Kms2) + (arg_P2 / arg_Kmp2))));
    end elmt_CPT1;

    function elmt_CPT2
        input Real arg_sf;
        input Real arg_V;
        input Real arg_Kms1;
        input Real arg_Kms2;
        input Real arg_Kms3;
        input Real arg_Kms4;
        input Real arg_Kms5;
        input Real arg_Kms6;
        input Real arg_Kms7;
        input Real arg_Kms8;
        input Real arg_Kmp1;
        input Real arg_Kmp2;
        input Real arg_Kmp3;
        input Real arg_Kmp4;
        input Real arg_Kmp5;
        input Real arg_Kmp6;
        input Real arg_Kmp7;
        input Real arg_Kmp8;
        input Real arg_Keq;
        input Real arg_S1;
        input Real arg_S2;
        input Real arg_S3;
        input Real arg_S4;
        input Real arg_S5;
        input Real arg_S6;
        input Real arg_S7;
        input Real arg_S8;
        input Real arg_P1;
        input Real arg_P2;
        input Real arg_P3;
        input Real arg_P4;
        input Real arg_P5;
        input Real arg_P6;
        input Real arg_P7;
        input Real arg_P8;

        output Real result;
        algorithm
            result := ((arg_sf * arg_V * (((arg_S1 * arg_S8) / (arg_Kms1 * arg_Kms8)) - ((arg_P1 * arg_P8) / (arg_Kms1 * arg_Kms8 * arg_Keq)))) / ((1.0 + (arg_S1 / arg_Kms1) + (arg_P1 / arg_Kmp1) + (arg_S2 / arg_Kms2) + (arg_P2 / arg_Kmp2) + (arg_S3 / arg_Kms3) + (arg_P3 / arg_Kmp3) + (arg_S4 / arg_Kms4) + (arg_P4 / arg_Kmp4) + (arg_S5 / arg_Kms5) + (arg_P5 / arg_Kmp5) + (arg_S6 / arg_Kms6) + (arg_P6 / arg_Kmp6) + (arg_S7 / arg_Kms7) + (arg_P7 / arg_Kmp7)) * (1.0 + (arg_S8 / arg_Kms8) + (arg_P8 / arg_Kmp8))));
    end elmt_CPT2;

    function elmt_CACT
        input Real arg_Vf;
        input Real arg_Vr;
        input Real arg_Kms1;
        input Real arg_Kms2;
        input Real arg_Kmp1;
        input Real arg_Kmp2;
        input Real arg_Kis1;
        input Real arg_Kip2;
        input Real arg_Keq;
        input Real arg_S1;
        input Real arg_S2;
        input Real arg_P1;
        input Real arg_P2;

        output Real result;
        algorithm
            result := ((arg_Vf * ((arg_S1 * arg_S2) - ((arg_P1 * arg_P2) / arg_Keq))) / ((arg_S1 * arg_S2) + (arg_Kms2 * arg_S1) + (arg_Kms1 * arg_S2 * (1.0 + (arg_P2 / arg_Kip2))) + ((arg_Vf / (arg_Vr * arg_Keq)) * ((arg_Kmp2 * arg_P1 * (1.0 + (arg_S1 / arg_Kis1))) + (arg_P2 * (arg_Kmp1 + arg_P1))))));
    end elmt_CACT;

    function elmt_CROT
        input Real arg_sf;
        input Real arg_V;
        input Real arg_Kms1;
        input Real arg_Kms2;
        input Real arg_Kms3;
        input Real arg_Kms4;
        input Real arg_Kms5;
        input Real arg_Kms6;
        input Real arg_Kms7;
        input Real arg_Kmp1;
        input Real arg_Kmp2;
        input Real arg_Kmp3;
        input Real arg_Kmp4;
        input Real arg_Kmp5;
        input Real arg_Kmp6;
        input Real arg_Kmp7;
        input Real arg_Ki1;
        input Real arg_Keq;
        input Real arg_S1;
        input Real arg_S2;
        input Real arg_S3;
        input Real arg_S4;
        input Real arg_S5;
        input Real arg_S6;
        input Real arg_S7;
        input Real arg_P1;
        input Real arg_P2;
        input Real arg_P3;
        input Real arg_P4;
        input Real arg_P5;
        input Real arg_P6;
        input Real arg_P7;
        input Real arg_I1;

        output Real result;
        algorithm
            result := ((arg_sf * arg_V * ((arg_S1 / arg_Kms1) - (arg_P1 / (arg_Kms1 * arg_Keq)))) / (1.0 + (arg_S1 / arg_Kms1) + (arg_P1 / arg_Kmp1) + (arg_S2 / arg_Kms2) + (arg_P2 / arg_Kmp2) + (arg_S3 / arg_Kms3) + (arg_P3 / arg_Kmp3) + (arg_S4 / arg_Kms4) + (arg_P4 / arg_Kmp4) + (arg_S5 / arg_Kms5) + (arg_P5 / arg_Kmp5) + (arg_S6 / arg_Kms6) + (arg_P6 / arg_Kmp6) + (arg_S7 / arg_Kms7) + (arg_P7 / arg_Kmp7) + (arg_I1 / arg_Ki1)));
    end elmt_CROT;

    function elmt_MSCHAD
        input Real arg_sf;
        input Real arg_V;
        input Real arg_Kms1;
        input Real arg_Kms2;
        input Real arg_Kms3;
        input Real arg_Kms4;
        input Real arg_Kms5;
        input Real arg_Kms6;
        input Real arg_Kms7;
        input Real arg_Kms8;
        input Real arg_Kmp1;
        input Real arg_Kmp2;
        input Real arg_Kmp3;
        input Real arg_Kmp4;
        input Real arg_Kmp5;
        input Real arg_Kmp6;
        input Real arg_Kmp7;
        input Real arg_Kmp8;
        input Real arg_Keq;
        input Real arg_S1;
        input Real arg_S2;
        input Real arg_S3;
        input Real arg_S4;
        input Real arg_S5;
        input Real arg_S6;
        input Real arg_S7;
        input Real arg_S8;
        input Real arg_P1;
        input Real arg_P2;
        input Real arg_P3;
        input Real arg_P4;
        input Real arg_P5;
        input Real arg_P6;
        input Real arg_P7;
        input Real arg_P8;

        output Real result;
        algorithm
            result := ((arg_sf * arg_V * (((arg_S1 * (arg_S8 - arg_P8)) / (arg_Kms1 * arg_Kms8)) - ((arg_P1 * arg_P8) / (arg_Kms1 * arg_Kms8 * arg_Keq)))) / ((1.0 + (arg_S1 / arg_Kms1) + (arg_P1 / arg_Kmp1) + (arg_S2 / arg_Kms2) + (arg_P2 / arg_Kmp2) + (arg_S3 / arg_Kms3) + (arg_P3 / arg_Kmp3) + (arg_S4 / arg_Kms4) + (arg_P4 / arg_Kmp4) + (arg_S5 / arg_Kms5) + (arg_P5 / arg_Kmp5) + (arg_S6 / arg_Kms6) + (arg_P6 / arg_Kmp6) + (arg_S7 / arg_Kms7) + (arg_P7 / arg_Kmp7)) * (1.0 + ((arg_S8 - arg_P8) / arg_Kms8) + (arg_P8 / arg_Kmp8))));
    end elmt_MSCHAD;

    function elmt_VLCAD
        input Real arg_sf;
        input Real arg_V;
        input Real arg_Kms1;
        input Real arg_Kms2;
        input Real arg_Kms3;
        input Real arg_Kms4;
        input Real arg_Kmp1;
        input Real arg_Kmp2;
        input Real arg_Kmp3;
        input Real arg_Kmp4;
        input Real arg_Keq;
        input Real arg_S1;
        input Real arg_S2;
        input Real arg_S3;
        input Real arg_S4;
        input Real arg_P1;
        input Real arg_P2;
        input Real arg_P3;
        input Real arg_P4;

        output Real result;
        algorithm
            result := ((arg_sf * arg_V * (((arg_S1 * (arg_S4 - arg_P4)) / (arg_Kms1 * arg_Kms4)) - ((arg_P1 * arg_P4) / (arg_Kms1 * arg_Kms4 * arg_Keq)))) / ((1.0 + (arg_S1 / arg_Kms1) + (arg_P1 / arg_Kmp1) + (arg_S2 / arg_Kms2) + (arg_P2 / arg_Kmp2) + (arg_S3 / arg_Kms3) + (arg_P3 / arg_Kmp3)) * (1.0 + ((arg_S4 - arg_P4) / arg_Kms4) + (arg_P4 / arg_Kmp4))));
    end elmt_VLCAD;

    function elmt_MCAD
        input Real arg_sf;
        input Real arg_V;
        input Real arg_Kms1;
        input Real arg_Kms2;
        input Real arg_Kms3;
        input Real arg_Kms4;
        input Real arg_Kms5;
        input Real arg_Kms6;
        input Real arg_Kmp1;
        input Real arg_Kmp2;
        input Real arg_Kmp3;
        input Real arg_Kmp4;
        input Real arg_Kmp5;
        input Real arg_Kmp6;
        input Real arg_Keq;
        input Real arg_S1;
        input Real arg_S2;
        input Real arg_S3;
        input Real arg_S4;
        input Real arg_S5;
        input Real arg_S6;
        input Real arg_P1;
        input Real arg_P2;
        input Real arg_P3;
        input Real arg_P4;
        input Real arg_P5;
        input Real arg_P6;

        output Real result;
        algorithm
            result := ((arg_sf * arg_V * (((arg_S1 * (arg_S6 - arg_P6)) / (arg_Kms1 * arg_Kms6)) - ((arg_P1 * arg_P6) / (arg_Kms1 * arg_Kms6 * arg_Keq)))) / ((1.0 + (arg_S1 / arg_Kms1) + (arg_P1 / arg_Kmp1) + (arg_S2 / arg_Kms2) + (arg_P2 / arg_Kmp2) + (arg_S3 / arg_Kms3) + (arg_P3 / arg_Kmp3) + (arg_S4 / arg_Kms4) + (arg_P4 / arg_Kmp4) + (arg_S5 / arg_Kms5) + (arg_P5 / arg_Kmp5)) * (1.0 + ((arg_S6 - arg_P6) / arg_Kms6) + (arg_P6 / arg_Kmp6))));
    end elmt_MCAD;

    function elmt_LCAD
        input Real arg_sf;
        input Real arg_V;
        input Real arg_Kms1;
        input Real arg_Kms2;
        input Real arg_Kms3;
        input Real arg_Kms4;
        input Real arg_Kms5;
        input Real arg_Kms6;
        input Real arg_Kmp1;
        input Real arg_Kmp2;
        input Real arg_Kmp3;
        input Real arg_Kmp4;
        input Real arg_Kmp5;
        input Real arg_Kmp6;
        input Real arg_Keq;
        input Real arg_S1;
        input Real arg_S2;
        input Real arg_S3;
        input Real arg_S4;
        input Real arg_S5;
        input Real arg_S6;
        input Real arg_P1;
        input Real arg_P2;
        input Real arg_P3;
        input Real arg_P4;
        input Real arg_P5;
        input Real arg_P6;

        output Real result;
        algorithm
            result := ((arg_sf * arg_V * (((arg_S1 * (arg_S6 - arg_P6)) / (arg_Kms1 * arg_Kms6)) - ((arg_P1 * arg_P6) / (arg_Kms1 * arg_Kms6 * arg_Keq)))) / ((1.0 + (arg_S1 / arg_Kms1) + (arg_P1 / arg_Kmp1) + (arg_S2 / arg_Kms2) + (arg_P2 / arg_Kmp2) + (arg_S3 / arg_Kms3) + (arg_P3 / arg_Kmp3) + (arg_S4 / arg_Kms4) + (arg_P4 / arg_Kmp4) + (arg_S5 / arg_Kms5) + (arg_P5 / arg_Kmp5)) * (1.0 + ((arg_S6 - arg_P6) / arg_Kms6) + (arg_P6 / arg_Kmp6))));
    end elmt_LCAD;

    function elmt_SCAD
        input Real arg_sf;
        input Real arg_V;
        input Real arg_Kms1;
        input Real arg_Kms2;
        input Real arg_Kms3;
        input Real arg_Kmp1;
        input Real arg_Kmp2;
        input Real arg_Kmp3;
        input Real arg_Keq;
        input Real arg_S1;
        input Real arg_S2;
        input Real arg_S3;
        input Real arg_P1;
        input Real arg_P2;
        input Real arg_P3;

        output Real result;
        algorithm
            result := ((arg_sf * arg_V * (((arg_S1 * (arg_S3 - arg_P3)) / (arg_Kms1 * arg_Kms3)) - ((arg_P1 * arg_P3) / (arg_Kms1 * arg_Kms3 * arg_Keq)))) / ((1.0 + (arg_S1 / arg_Kms1) + (arg_P1 / arg_Kmp1) + (arg_S2 / arg_Kms2) + (arg_P2 / arg_Kmp2)) * (1.0 + ((arg_S3 - arg_P3) / arg_Kms3) + (arg_P3 / arg_Kmp3))));
    end elmt_SCAD;

    function elmt_MTP
        input Real arg_sf;
        input Real arg_V;
        input Real arg_Kms1;
        input Real arg_Kms2;
        input Real arg_Kms3;
        input Real arg_Kms4;
        input Real arg_Kms5;
        input Real arg_Kms7;
        input Real arg_Kms8;
        input Real arg_Kmp1;
        input Real arg_Kmp2;
        input Real arg_Kmp3;
        input Real arg_Kmp4;
        input Real arg_Kmp5;
        input Real arg_Kmp6;
        input Real arg_Kmp7;
        input Real arg_Kmp8;
        input Real arg_Ki1;
        input Real arg_Keq;
        input Real arg_S1;
        input Real arg_S2;
        input Real arg_S3;
        input Real arg_S4;
        input Real arg_S5;
        input Real arg_S7;
        input Real arg_S8;
        input Real arg_P1;
        input Real arg_P2;
        input Real arg_P3;
        input Real arg_P4;
        input Real arg_P5;
        input Real arg_P6;
        input Real arg_P7;
        input Real arg_P8;
        input Real arg_I1;

        output Real result;
        algorithm
            result := ((arg_sf * arg_V * (((arg_S1 * (arg_S7 - arg_P7) * arg_S8) / (arg_Kms1 * arg_Kms7 * arg_Kms8)) - ((arg_P1 * arg_P7 * arg_P8) / (arg_Kms1 * arg_Kms7 * arg_Kms8 * arg_Keq)))) / ((1.0 + (arg_S1 / arg_Kms1) + (arg_P1 / arg_Kmp1) + (arg_S2 / arg_Kms2) + (arg_P2 / arg_Kmp2) + (arg_S3 / arg_Kms3) + (arg_P3 / arg_Kmp3) + (arg_S4 / arg_Kms4) + (arg_P4 / arg_Kmp4) + (arg_S5 / arg_Kms5) + (arg_P5 / arg_Kmp5) + (arg_P6 / arg_Kmp6) + (arg_I1 / arg_Ki1)) * (1.0 + ((arg_S7 - arg_P7) / arg_Kms7) + (arg_P7 / arg_Kmp7)) * (1.0 + (arg_S8 / arg_Kms8) + (arg_P8 / arg_Kmp8))));
    end elmt_MTP;


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
