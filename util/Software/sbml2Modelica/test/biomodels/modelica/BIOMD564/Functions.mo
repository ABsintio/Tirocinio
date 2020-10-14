within BIOMD564;
class Functions

    function elmt_function_4_cG_degr_1
        input Real arg_cG;
        input Real arg_def;
        input Real arg_m19;

        output Real result;
        algorithm
            result := ((arg_m19 * arg_cG) / arg_def);
    end elmt_function_4_cG_degr_1;

    function elmt_function_4_cT_m_degr_1
        input Real arg_cT_m;
        input Real arg_def;
        input Real arg_m5;

        output Real result;
        algorithm
            result := ((arg_m5 * arg_cT_m) / arg_def);
    end elmt_function_4_cT_m_degr_1;

    function elmt_function_4_cG_cZTL_assoc_1
        input Real arg_D;
        input Real arg_L;
        input Real arg_cG;
        input Real arg_cZG;
        input Real arg_cZTL;
        input Real arg_def;
        input Real arg_p12;
        input Real arg_p13;

        output Real result;
        algorithm
            result := (((arg_p12 * arg_L * arg_cZTL * arg_cG) - (arg_p13 * arg_D * arg_cZG)) / arg_def);
    end elmt_function_4_cG_cZTL_assoc_1;

    function elmt_function_4_cT_trsl_1
        input Real arg_cT_m;
        input Real arg_def;
        input Real arg_p4;

        output Real result;
        algorithm
            result := ((arg_p4 * arg_cT_m) / arg_def);
    end elmt_function_4_cT_trsl_1;

    function elmt_function_4_cNI_trsl_1
        input Real arg_cNI_m;
        input Real arg_def;
        input Real arg_p10;

        output Real result;
        algorithm
            result := ((arg_p10 * arg_cNI_m) / arg_def);
    end elmt_function_4_cNI_trsl_1;

    function elmt_function_4_cY_m_trscr_1
        input Real arg_D;
        input Real arg_L;
        input Real arg_cL;
        input Real arg_cP;
        input Real arg_cT;
        input Real arg_def;
        input Real arg_g;
        input Real arg_g16;
        input Real arg_g7;
        input Real arg_n5;
        input Real arg_n6;
        input Real arg_q2;
        input Real arg_s;

        output Real result;
        algorithm
            result := (((arg_L * arg_q2 * arg_cP) + ((((((arg_n5 * arg_L) + (arg_n6 * arg_D)) * Functions.pow(arg_g7, arg_s)) / (Functions.pow(arg_cT, arg_s) + Functions.pow(arg_g7, arg_s))) * Functions.pow(arg_g16, arg_g)) / (Functions.pow(arg_cL, arg_g) + Functions.pow(arg_g16, arg_g)))) / arg_def);
    end elmt_function_4_cY_m_trscr_1;

    function elmt_function_4_cTm_degr_1
        input Real arg_D;
        input Real arg_L;
        input Real arg_cTm;
        input Real arg_def;
        input Real arg_m25;
        input Real arg_m26;

        output Real result;
        algorithm
            result := ((((arg_m25 * arg_L) + (arg_m26 * arg_D)) * arg_cTm) / arg_def);
    end elmt_function_4_cTm_degr_1;

    function elmt_function_4_cY_trsl_1
        input Real arg_cY_m;
        input Real arg_def;
        input Real arg_p6;

        output Real result;
        algorithm
            result := ((arg_p6 * arg_cY_m) / arg_def);
    end elmt_function_4_cY_trsl_1;

    function elmt_function_4_cP9_degr_1
        input Real arg_D;
        input Real arg_L;
        input Real arg_cP9;
        input Real arg_def;
        input Real arg_m13;
        input Real arg_m22;

        output Real result;
        algorithm
            result := ((((arg_m13 * arg_L) + (arg_m22 * arg_D)) * arg_cP9) / arg_def);
    end elmt_function_4_cP9_degr_1;

    function elmt_function_4_cL_degr_1
        input Real arg_c;
        input Real arg_cL;
        input Real arg_def;
        input Real arg_g3;
        input Real arg_m3;
        input Real arg_p3;

        output Real result;
        algorithm
            result := (((arg_m3 * arg_cL) + ((arg_p3 * Functions.pow(arg_cL, arg_c)) / (Functions.pow(arg_cL, arg_c) + Functions.pow(arg_g3, arg_c)))) / arg_def);
    end elmt_function_4_cL_degr_1;

    function elmt_function_4_cNI_m_degr_1
        input Real arg_cNI_m;
        input Real arg_def;
        input Real arg_m16;

        output Real result;
        algorithm
            result := ((arg_m16 * arg_cNI_m) / arg_def);
    end elmt_function_4_cNI_m_degr_1;

    function elmt_function_4_cP7_degr_1
        input Real arg_D;
        input Real arg_L;
        input Real arg_cP7;
        input Real arg_def;
        input Real arg_m15;
        input Real arg_m23;

        output Real result;
        algorithm
            result := ((((arg_m15 * arg_L) + (arg_m23 * arg_D)) * arg_cP7) / arg_def);
    end elmt_function_4_cP7_degr_1;

    function elmt_function_4_cP7_m_trscr_1
        input Real arg_cL;
        input Real arg_cLm;
        input Real arg_cP9;
        input Real arg_def;
        input Real arg_g10;
        input Real arg_g11;
        input Real arg_j;
        input Real arg_k;
        input Real arg_n8;
        input Real arg_n9;

        output Real result;
        algorithm
            result := ((((arg_n8 * Functions.pow((arg_cLm + arg_cL), arg_j)) / (Functions.pow((arg_cLm + arg_cL), arg_j) + Functions.pow(arg_g10, arg_j))) + ((arg_n9 * Functions.pow(arg_cP9, arg_k)) / (Functions.pow(arg_cP9, arg_k) + Functions.pow(arg_g11, arg_k)))) / arg_def);
    end elmt_function_4_cP7_m_trscr_1;

    function elmt_function_4_cG_m_trscr_1
        input Real arg_L;
        input Real arg_cL;
        input Real arg_cP;
        input Real arg_cT;
        input Real arg_def;
        input Real arg_g14;
        input Real arg_g15;
        input Real arg_n;
        input Real arg_n12;
        input Real arg_o;
        input Real arg_q4;

        output Real result;
        algorithm
            result := (((arg_L * arg_q4 * arg_cP) + ((((arg_n12 * arg_L * Functions.pow(arg_g15, arg_o)) / (Functions.pow(arg_cL, arg_o) + Functions.pow(arg_g15, arg_o))) * Functions.pow(arg_g14, arg_n)) / (Functions.pow(arg_cT, arg_n) + Functions.pow(arg_g14, arg_n)))) / arg_def);
    end elmt_function_4_cG_m_trscr_1;

    function elmt_function_4_cZTL_trsl_1
        input Real arg_def;
        input Real arg_p14;

        output Real result;
        algorithm
            result := (arg_p14 / arg_def);
    end elmt_function_4_cZTL_trsl_1;

    function elmt_function_4_cNI_m_trscr_1
        input Real arg_cLm;
        input Real arg_cP7;
        input Real arg_def;
        input Real arg_g12;
        input Real arg_g13;
        input Real arg_l;
        input Real arg_m;
        input Real arg_n10;
        input Real arg_n11;

        output Real result;
        algorithm
            result := ((((arg_n10 * Functions.pow(arg_cLm, arg_l)) / (Functions.pow(arg_cLm, arg_l) + Functions.pow(arg_g12, arg_l))) + ((arg_n11 * Functions.pow(arg_cP7, arg_m)) / (Functions.pow(arg_cP7, arg_m) + Functions.pow(arg_g13, arg_m)))) / arg_def);
    end elmt_function_4_cNI_m_trscr_1;

    function elmt_function_4_cP_trsl_1
        input Real arg_D;
        input Real arg_cP;
        input Real arg_def;
        input Real arg_p7;

        output Real result;
        algorithm
            result := ((arg_p7 * arg_D * (1.0 - arg_cP)) / arg_def);
    end elmt_function_4_cP_trsl_1;

    function elmt_function_4_cZG_degr_1
        input Real arg_cZG;
        input Real arg_def;
        input Real arg_m21;

        output Real result;
        algorithm
            result := ((arg_m21 * arg_cZG) / arg_def);
    end elmt_function_4_cZG_degr_1;

    function elmt_function_4_cL_trsl_1
        input Real arg_D;
        input Real arg_L;
        input Real arg_cL_m;
        input Real arg_def;
        input Real arg_p1;
        input Real arg_p2;

        output Real result;
        algorithm
            result := ((arg_cL_m * ((arg_p1 * arg_L) + (arg_p2 * arg_D))) / arg_def);
    end elmt_function_4_cL_trsl_1;

    function elmt_function_4_cP9_trsl_1
        input Real arg_cP9_m;
        input Real arg_def;
        input Real arg_p8;

        output Real result;
        algorithm
            result := ((arg_p8 * arg_cP9_m) / arg_def);
    end elmt_function_4_cP9_trsl_1;

    function elmt_function_4_cP7_m_degr_1
        input Real arg_cP7_m;
        input Real arg_def;
        input Real arg_m14;

        output Real result;
        algorithm
            result := ((arg_m14 * arg_cP7_m) / arg_def);
    end elmt_function_4_cP7_m_degr_1;

    function elmt_function_4_cP9_m_trscr_1
        input Real arg_L;
        input Real arg_cL;
        input Real arg_cP;
        input Real arg_cT;
        input Real arg_def;
        input Real arg_g8;
        input Real arg_g9;
        input Real arg_h;
        input Real arg_i;
        input Real arg_n4;
        input Real arg_n7;
        input Real arg_q3;

        output Real result;
        algorithm
            result := (((arg_L * arg_q3 * arg_cP) + ((((arg_n4 * arg_L) + ((arg_n7 * Functions.pow(arg_cL, arg_i)) / (Functions.pow(arg_cL, arg_i) + Functions.pow(arg_g9, arg_i)))) * Functions.pow(arg_g8, arg_h)) / (Functions.pow(arg_cT, arg_h) + Functions.pow(arg_g8, arg_h)))) / arg_def);
    end elmt_function_4_cP9_m_trscr_1;

    function elmt_function_4_cLm_degr_1
        input Real arg_cLm;
        input Real arg_def;
        input Real arg_m4;

        output Real result;
        algorithm
            result := ((arg_m4 * arg_cLm) / arg_def);
    end elmt_function_4_cLm_degr_1;

    function elmt_function_4_cP7_trsl_1
        input Real arg_cP7_m;
        input Real arg_def;
        input Real arg_p9;

        output Real result;
        algorithm
            result := ((arg_p9 * arg_cP7_m) / arg_def);
    end elmt_function_4_cP7_trsl_1;

    function elmt_function_4_cG_trsl_1
        input Real arg_cG_m;
        input Real arg_def;
        input Real arg_p11;

        output Real result;
        algorithm
            result := ((arg_p11 * arg_cG_m) / arg_def);
    end elmt_function_4_cG_trsl_1;

    function elmt_function_4_cT_degr_1
        input Real arg_D;
        input Real arg_L;
        input Real arg_cT;
        input Real arg_cZG;
        input Real arg_cZTL;
        input Real arg_def;
        input Real arg_m6;
        input Real arg_m7;
        input Real arg_m8;
        input Real arg_p5;

        output Real result;
        algorithm
            result := (((((arg_m6 * arg_L) + (arg_m7 * arg_D)) * arg_cT * ((arg_p5 * arg_cZTL) + arg_cZG)) + (arg_m8 * arg_cT)) / arg_def);
    end elmt_function_4_cT_degr_1;

    function elmt_function_4_cNI_degr_1
        input Real arg_D;
        input Real arg_L;
        input Real arg_cNI;
        input Real arg_def;
        input Real arg_m17;
        input Real arg_m24;

        output Real result;
        algorithm
            result := ((((arg_m17 * arg_L) + (arg_m24 * arg_D)) * arg_cNI) / arg_def);
    end elmt_function_4_cNI_degr_1;

    function elmt_function_4_cY_degr_1
        input Real arg_cY;
        input Real arg_def;
        input Real arg_m10;

        output Real result;
        algorithm
            result := ((arg_m10 * arg_cY) / arg_def);
    end elmt_function_4_cY_degr_1;

    function elmt_function_4_cP_degr_1
        input Real arg_L;
        input Real arg_cP;
        input Real arg_def;
        input Real arg_m11;

        output Real result;
        algorithm
            result := ((arg_m11 * arg_cP * arg_L) / arg_def);
    end elmt_function_4_cP_degr_1;

    function elmt_function_4_cT_modif_1
        input Real arg_cT;
        input Real arg_def;
        input Real arg_f;
        input Real arg_g6;
        input Real arg_p15;

        output Real result;
        algorithm
            result := (((arg_p15 * Functions.pow(arg_cT, arg_f)) / (Functions.pow(arg_cT, arg_f) + Functions.pow(arg_g6, arg_f))) / arg_def);
    end elmt_function_4_cT_modif_1;

    function elmt_function_4_cZTL_degr_1
        input Real arg_cZTL;
        input Real arg_def;
        input Real arg_m20;

        output Real result;
        algorithm
            result := ((arg_m20 * arg_cZTL) / arg_def);
    end elmt_function_4_cZTL_degr_1;

    function elmt_function_4_cG_m_degr_1
        input Real arg_cG_m;
        input Real arg_def;
        input Real arg_m18;

        output Real result;
        algorithm
            result := ((arg_m18 * arg_cG_m) / arg_def);
    end elmt_function_4_cG_m_degr_1;

    function elmt_function_4_cL_m_trscr_1
        input Real arg_L;
        input Real arg_a;
        input Real arg_b;
        input Real arg_cNI;
        input Real arg_cP;
        input Real arg_cP7;
        input Real arg_cP9;
        input Real arg_cTm;
        input Real arg_def;
        input Real arg_g1;
        input Real arg_g2;
        input Real arg_n0;
        input Real arg_n1;
        input Real arg_q1;

        output Real result;
        algorithm
            result := (((((arg_n0 * arg_L) + (arg_L * arg_q1 * arg_cP) + ((arg_n1 * Functions.pow(arg_cTm, arg_b)) / (Functions.pow(arg_cTm, arg_b) + Functions.pow(arg_g2, arg_b)))) * Functions.pow(arg_g1, arg_a)) / (Functions.pow((arg_cP9 + arg_cP7 + arg_cNI), arg_a) + Functions.pow(arg_g1, arg_a))) / arg_def);
    end elmt_function_4_cL_m_trscr_1;

    function elmt_function_4_cT_m_trscr_1
        input Real arg_cL;
        input Real arg_cY;
        input Real arg_d;
        input Real arg_def;
        input Real arg_e;
        input Real arg_g4;
        input Real arg_g5;
        input Real arg_n2;
        input Real arg_n3;

        output Real result;
        algorithm
            result := ((((((arg_n2 * Functions.pow(arg_cY, arg_d)) / (Functions.pow(arg_cY, arg_d) + Functions.pow(arg_g4, arg_d))) + arg_n3) * Functions.pow(arg_g5, arg_e)) / (Functions.pow(arg_cL, arg_e) + Functions.pow(arg_g5, arg_e))) / arg_def);
    end elmt_function_4_cT_m_trscr_1;

    function elmt_function_4_cP9_m_degr_1
        input Real arg_cP9_m;
        input Real arg_def;
        input Real arg_m12;

        output Real result;
        algorithm
            result := ((arg_m12 * arg_cP9_m) / arg_def);
    end elmt_function_4_cP9_m_degr_1;

    function elmt_function_4_cL_m_degr_1
        input Real arg_D;
        input Real arg_L;
        input Real arg_cL_m;
        input Real arg_def;
        input Real arg_m1;
        input Real arg_m2;

        output Real result;
        algorithm
            result := ((((arg_m1 * arg_L) + (arg_m2 * arg_D)) * arg_cL_m) / arg_def);
    end elmt_function_4_cL_m_degr_1;

    function elmt_function_4_cY_m_degr_1
        input Real arg_cY_m;
        input Real arg_def;
        input Real arg_m9;

        output Real result;
        algorithm
            result := ((arg_m9 * arg_cY_m) / arg_def);
    end elmt_function_4_cY_m_degr_1;

    function elmt_function_4_cL_modif_1
        input Real arg_c;
        input Real arg_cL;
        input Real arg_def;
        input Real arg_g3;
        input Real arg_p3;

        output Real result;
        algorithm
            result := (((arg_p3 * Functions.pow(arg_cL, arg_c)) / (Functions.pow(arg_cL, arg_c) + Functions.pow(arg_g3, arg_c))) / arg_def);
    end elmt_function_4_cL_modif_1;


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
