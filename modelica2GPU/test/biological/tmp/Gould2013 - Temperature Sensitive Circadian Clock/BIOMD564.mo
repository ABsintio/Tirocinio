
model BIOMD564 "Gould2013 - Temperature Sensitive Circadian Clock"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;
    
    function piecewise
        input Real x;
        input Boolean condition;
        input Real y;
        output Real z;
        algorithm
            z := if condition then x else y;
    end piecewise;


    function function_4_cL_degr_1
        	input Real c;
	input Real cL;
	input Real def;
	input Real g3;
	input Real m3;
	input Real p3;
        output Real y;
    algorithm
        y :=  (m3 * cL + p3 * cL^c / (cL^c + g3^c)) / def;
    end function_4_cL_degr_1;


    function function_4_cL_m_trscr_1
        	input Real L;
	input Real a;
	input Real b;
	input Real cNI;
	input Real cP;
	input Real cP7;
	input Real cP9;
	input Real cTm;
	input Real def;
	input Real g1;
	input Real g2;
	input Real n0;
	input Real n1;
	input Real q1;
        output Real y;
    algorithm
        y :=  (n0 * L + L * q1 * cP + n1 * cTm^b / (cTm^b + g2^b)) * g1^a / ((cP9 + cP7 + cNI)^a + g1^a) / def;
    end function_4_cL_m_trscr_1;


    function function_4_cL_m_degr_1
        	input Real D;
	input Real L;
	input Real cL_m;
	input Real def;
	input Real m1;
	input Real m2;
        output Real y;
    algorithm
        y :=  (m1 * L + m2 * D) * cL_m / def;
    end function_4_cL_m_degr_1;


    function function_4_cL_trsl_1
        	input Real D;
	input Real L;
	input Real cL_m;
	input Real def;
	input Real p1;
	input Real p2;
        output Real y;
    algorithm
        y :=  cL_m * (p1 * L + p2 * D) / def;
    end function_4_cL_trsl_1;


    function function_4_cL_modif_1
        	input Real c;
	input Real cL;
	input Real def;
	input Real g3;
	input Real p3;
        output Real y;
    algorithm
        y :=  p3 * cL^c / (cL^c + g3^c) / def;
    end function_4_cL_modif_1;


    function function_4_cLm_degr_1
        	input Real cLm;
	input Real def;
	input Real m4;
        output Real y;
    algorithm
        y :=  m4 * cLm / def;
    end function_4_cLm_degr_1;


    function function_4_cT_m_trscr_1
        	input Real cL;
	input Real cY;
	input Real d;
	input Real def;
	input Real e;
	input Real g4;
	input Real g5;
	input Real n2;
	input Real n3;
        output Real y;
    algorithm
        y :=  (n2 * cY^d / (cY^d + g4^d) + n3) * g5^e / (cL^e + g5^e) / def;
    end function_4_cT_m_trscr_1;


    function function_4_cT_m_degr_1
        	input Real cT_m;
	input Real def;
	input Real m5;
        output Real y;
    algorithm
        y :=  m5 * cT_m / def;
    end function_4_cT_m_degr_1;


    function function_4_cT_trsl_1
        	input Real cT_m;
	input Real def;
	input Real p4;
        output Real y;
    algorithm
        y :=  p4 * cT_m / def;
    end function_4_cT_trsl_1;


    function function_4_cT_degr_1
        	input Real D;
	input Real L;
	input Real cT;
	input Real cZG;
	input Real cZTL;
	input Real def;
	input Real m6;
	input Real m7;
	input Real m8;
	input Real p5;
        output Real y;
    algorithm
        y :=  ((m6 * L + m7 * D) * cT * (p5 * cZTL + cZG) + m8 * cT) / def;
    end function_4_cT_degr_1;


    function function_4_cT_modif_1
        	input Real cT;
	input Real def;
	input Real f;
	input Real g6;
	input Real p15;
        output Real y;
    algorithm
        y :=  p15 * cT^f / (cT^f + g6^f) / def;
    end function_4_cT_modif_1;


    function function_4_cY_m_trscr_1
        	input Real D;
	input Real L;
	input Real cL;
	input Real cP;
	input Real cT;
	input Real def;
	input Real g;
	input Real g16;
	input Real g7;
	input Real n5;
	input Real n6;
	input Real q2;
	input Real s;
        output Real y;
    algorithm
        y :=  (L * q2 * cP + ((n5 * L + n6 * D) * g7^s / (cT^s + g7^s)) * g16^g / (cL^g + g16^g)) / def;
    end function_4_cY_m_trscr_1;


    function function_4_cTm_degr_1
        	input Real D;
	input Real L;
	input Real cTm;
	input Real def;
	input Real m25;
	input Real m26;
        output Real y;
    algorithm
        y :=  (m25 * L + m26 * D) * cTm / def;
    end function_4_cTm_degr_1;


    function function_4_cY_m_degr_1
        	input Real cY_m;
	input Real def;
	input Real m9;
        output Real y;
    algorithm
        y :=  m9 * cY_m / def;
    end function_4_cY_m_degr_1;


    function function_4_cY_trsl_1
        	input Real cY_m;
	input Real def;
	input Real p6;
        output Real y;
    algorithm
        y :=  p6 * cY_m / def;
    end function_4_cY_trsl_1;


    function function_4_cY_degr_1
        	input Real cY;
	input Real def;
	input Real m10;
        output Real y;
    algorithm
        y :=  m10 * cY / def;
    end function_4_cY_degr_1;


    function function_4_cP_trsl_1
        	input Real D;
	input Real cP;
	input Real def;
	input Real p7;
        output Real y;
    algorithm
        y :=  p7 * D * (1 - cP) / def;
    end function_4_cP_trsl_1;


    function function_4_cP_degr_1
        	input Real L;
	input Real cP;
	input Real def;
	input Real m11;
        output Real y;
    algorithm
        y :=  m11 * cP * L / def;
    end function_4_cP_degr_1;


    function function_4_cP9_m_trscr_1
        	input Real L;
	input Real cL;
	input Real cP;
	input Real cT;
	input Real def;
	input Real g8;
	input Real g9;
	input Real h;
	input Real i;
	input Real n4;
	input Real n7;
	input Real q3;
        output Real y;
    algorithm
        y :=  (L * q3 * cP + (n4 * L + n7 * cL^i / (cL^i + g9^i)) * g8^h / (cT^h + g8^h)) / def;
    end function_4_cP9_m_trscr_1;


    function function_4_cP9_m_degr_1
        	input Real cP9_m;
	input Real def;
	input Real m12;
        output Real y;
    algorithm
        y :=  m12 * cP9_m / def;
    end function_4_cP9_m_degr_1;


    function function_4_cP9_trsl_1
        	input Real cP9_m;
	input Real def;
	input Real p8;
        output Real y;
    algorithm
        y :=  p8 * cP9_m / def;
    end function_4_cP9_trsl_1;


    function function_4_cP9_degr_1
        	input Real D;
	input Real L;
	input Real cP9;
	input Real def;
	input Real m13;
	input Real m22;
        output Real y;
    algorithm
        y :=  (m13 * L + m22 * D) * cP9 / def;
    end function_4_cP9_degr_1;


    function function_4_cP7_m_trscr_1
        	input Real cL;
	input Real cLm;
	input Real cP9;
	input Real def;
	input Real g10;
	input Real g11;
	input Real j;
	input Real k;
	input Real n8;
	input Real n9;
        output Real y;
    algorithm
        y :=  (n8 * (cLm + cL)^j / ((cLm + cL)^j + g10^j) + n9 * cP9^k / (cP9^k + g11^k)) / def;
    end function_4_cP7_m_trscr_1;


    function function_4_cP7_m_degr_1
        	input Real cP7_m;
	input Real def;
	input Real m14;
        output Real y;
    algorithm
        y :=  m14 * cP7_m / def;
    end function_4_cP7_m_degr_1;


    function function_4_cP7_trsl_1
        	input Real cP7_m;
	input Real def;
	input Real p9;
        output Real y;
    algorithm
        y :=  p9 * cP7_m / def;
    end function_4_cP7_trsl_1;


    function function_4_cNI_m_trscr_1
        	input Real cLm;
	input Real cP7;
	input Real def;
	input Real g12;
	input Real g13;
	input Real l;
	input Real m;
	input Real n10;
	input Real n11;
        output Real y;
    algorithm
        y :=  (n10 * cLm^l / (cLm^l + g12^l) + n11 * cP7^m / (cP7^m + g13^m)) / def;
    end function_4_cNI_m_trscr_1;


    function function_4_cP7_degr_1
        	input Real D;
	input Real L;
	input Real cP7;
	input Real def;
	input Real m15;
	input Real m23;
        output Real y;
    algorithm
        y :=  (m15 * L + m23 * D) * cP7 / def;
    end function_4_cP7_degr_1;


    function function_4_cNI_m_degr_1
        	input Real cNI_m;
	input Real def;
	input Real m16;
        output Real y;
    algorithm
        y :=  m16 * cNI_m / def;
    end function_4_cNI_m_degr_1;


    function function_4_cNI_trsl_1
        	input Real cNI_m;
	input Real def;
	input Real p10;
        output Real y;
    algorithm
        y :=  p10 * cNI_m / def;
    end function_4_cNI_trsl_1;


    function function_4_cG_m_trscr_1
        	input Real L;
	input Real cL;
	input Real cP;
	input Real cT;
	input Real def;
	input Real g14;
	input Real g15;
	input Real n;
	input Real n12;
	input Real o;
	input Real q4;
        output Real y;
    algorithm
        y :=  (L * q4 * cP + (n12 * L * g15^o / (cL^o + g15^o)) * g14^n / (cT^n + g14^n)) / def;
    end function_4_cG_m_trscr_1;


    function function_4_cNI_degr_1
        	input Real D;
	input Real L;
	input Real cNI;
	input Real def;
	input Real m17;
	input Real m24;
        output Real y;
    algorithm
        y :=  (m17 * L + m24 * D) * cNI / def;
    end function_4_cNI_degr_1;


    function function_4_cG_m_degr_1
        	input Real cG_m;
	input Real def;
	input Real m18;
        output Real y;
    algorithm
        y :=  m18 * cG_m / def;
    end function_4_cG_m_degr_1;


    function function_4_cG_trsl_1
        	input Real cG_m;
	input Real def;
	input Real p11;
        output Real y;
    algorithm
        y :=  p11 * cG_m / def;
    end function_4_cG_trsl_1;


    function function_4_cG_degr_1
        	input Real cG;
	input Real def;
	input Real m19;
        output Real y;
    algorithm
        y :=  m19 * cG / def;
    end function_4_cG_degr_1;


    function function_4_cG_cZTL_assoc_1
        	input Real D;
	input Real L;
	input Real cG;
	input Real cZG;
	input Real cZTL;
	input Real def;
	input Real p12;
	input Real p13;
        output Real y;
    algorithm
        y :=  (p12 * L * cZTL * cG - p13 * D * cZG) / def;
    end function_4_cG_cZTL_assoc_1;


    function function_4_cZTL_trsl_1
        	input Real def;
	input Real p14;
        output Real y;
    algorithm
        y :=  p14 / def;
    end function_4_cZTL_trsl_1;


    function function_4_cZTL_degr_1
        	input Real cZTL;
	input Real def;
	input Real m20;
        output Real y;
    algorithm
        y :=  m20 * cZTL / def;
    end function_4_cZTL_degr_1;


    function function_4_cZG_degr_1
        	input Real cZG;
	input Real def;
	input Real m21;
        output Real y;
    algorithm
        y :=  m21 * cZG / def;
    end function_4_cZG_degr_1;


    parameter Real n1 = 1.8;
    parameter Real n2 = 0.7;
    parameter Real n3 = 0.06;
    parameter Real n4 = 0.0;
    parameter Real n5 = 3.4;
    parameter Real n6 = 1.25;
    parameter Real n7 = 0.2;
    parameter Real n8 = 0.42;
    parameter Real n9 = 0.26;
    parameter Real n10 = 0.18;
    parameter Real n11 = 0.71;
    parameter Real g1 = 0.1;
    parameter Real g2 = 0.28;
    parameter Real g3 = 0.4;
    parameter Real g4 = 0.91;
    parameter Real g5 = 0.3;
    parameter Real g6 = 0.3;
    parameter Real g7 = 0.18;
    parameter Real g8 = 0.14;
    parameter Real g9 = 0.3;
    parameter Real g10 = 0.7;
    parameter Real g11 = 0.7;
    parameter Real g12 = 0.5;
    parameter Real g13 = 0.6;
    parameter Real g14 = 0.17;
    parameter Real g15 = 0.4;
    parameter Real g16 = 0.2;
    parameter Real m2 = 0.24;
    parameter Real m3 = 0.2;
    parameter Real m4 = 0.2;
    parameter Real m5 = 0.3;
    parameter Real m7 = 0.5;
    parameter Real m8 = 0.1;
    parameter Real m9 = 1.0;
    parameter Real m10 = 0.3;
    parameter Real m11 = 1.0;
    parameter Real m12 = 1.0;
    parameter Real m13 = 0.32;
    parameter Real m14 = 0.28;
    parameter Real m16 = 0.5;
    parameter Real m17 = 0.3;
    parameter Real m18 = 1.0;
    parameter Real m19 = 0.2;
    parameter Real m20 = 1.2;
    parameter Real m21 = 0.2;
    parameter Real m22 = 2.0;
    parameter Real m23 = 1.0;
    parameter Real m24 = 0.405;
    parameter Real m26 = 0.14;
    parameter Real a = 2.0;
    parameter Real b = 3.0;
    parameter Real c = 3.0;
    parameter Real d = 2.5;
    parameter Real e = 2.0;
    parameter Real f = 3.0;
    parameter Real h = 2.0;
    parameter Real g = 2.0;
    parameter Real i = 3.0;
    parameter Real j = 3.0;
    parameter Real k = 3.0;
    parameter Real l = 2.0;
    parameter Real m = 2.0;
    parameter Real n = 1.0;
    parameter Real o = 2.0;
    parameter Real s = 3.0;
    parameter Real p2 = 0.27;
    parameter Real p3 = 0.1;
    parameter Real p4 = 0.268;
    parameter Real p5 = 1.0;
    parameter Real p6 = 0.44;
    parameter Real p7 = 0.3;
    parameter Real p8 = 0.7;
    parameter Real p9 = 0.4;
    parameter Real p10 = 0.36;
    parameter Real p11 = 0.23;
    parameter Real p12 = 30.0;
    parameter Real p13 = 0.4;
    parameter Real p14 = 0.45;
    parameter Real p15 = 0.05;
    parameter Real q1 = 0.8;
    parameter Real q2 = 0.5;
    parameter Real q3 = 2.9;
    parameter Real q4 = 0.6;
    parameter Real dawn = 0.0;
    parameter Real dusk = 12.0;
    parameter Real dawn1 = 0.0;
    parameter Real dusk1 = 3.0;
    parameter Real dawn2 = 9.0;
    parameter Real dusk2 = 12.0;
    parameter Real parameter_1 = 0.5;
    parameter Real An0 = 4638600.0;
    parameter Real En0 = 40.5939;
    parameter Real Temp = 300.15;
    parameter Real Rgas = 0.0083145;
    parameter Real Am1 = 2.3323;
    parameter Real Em1 = 3.6511;
    parameter Real Ap1 = 559910.0;
    parameter Real Ep1 = 35.3172;
    parameter Real Am6 = 1499400.0;
    parameter Real Em6 = 38.9484;
    parameter Real Am25 = 0.559;
    parameter Real Em25 = 1.7253;
    parameter Real Am15 = 1287.0;
    parameter Real Em15 = 20.7914;
    parameter Real An12 = 3.5369;
    parameter Real En12 = 1.0203;
    parameter Real def = 1.0;

    Real n0(start=0.400002792587441);
    Real n12(start=2.3499889284595);
    Real m1(start=0.54001322056037);
    Real m6(start=0.250006065831407);
    Real m15(start=0.310006139862489);
    Real m25(start=0.280006253789297);
    Real p1(start=0.400007560981732);
    Real L(start=0.5);
    Real D(start=0.5);

    Real cG;
    Real cG_m;
    Real cL;
    Real cL_m;
    Real cLm;
    Real cNI;
    Real cNI_m;
    Real cP;
    Real cP7;
    Real cP7_m;
    Real cP9;
    Real cP9_m;
    Real cT;
    Real cT_m;
    Real cTm;
    Real cY;
    Real cY_m;
    Real cZG;
    Real cZTL;

initial equation
    cG = 0.0238;
    cG_m = 0.119;
    cL = 0.416;
    cL_m = 1.0;
    cLm = 0.054;
    cNI = 0.044;
    cNI_m = 0.0065;
    cP = 0.825;
    cP7 = 0.019;
    cP7_m = 0.075;
    cP9 = 0.056;
    cP9_m = 0.35;
    cT = 0.393;
    cT_m = 0.25;
    cTm = 0.24;
    cY = 0.1;
    cY_m = 0.093;
    cZG = 0.0774;
    cZTL = 0.323;

equation
    n12 = An12 * exp(-En12 / (Rgas * Temp));
    n0 = An0 * exp(-En0 / (Rgas * Temp));
    m1 = Am1 * exp(-Em1 / (Rgas * Temp));
    m6 = Am6 * exp(-Em6 / (Rgas * Temp));
    m15 = Am15 * exp(-Em15 / (Rgas * Temp));
    m25 = Am25 * exp(-Em25 / (Rgas * Temp));
    p1 = Ap1 * exp(-Ep1 / (Rgas * Temp));
    L = 0.5 * (1 + tanh((time - 24 * floor(time / 24)) / 0.5) - (1 + tanh((time - 24 * floor(time / 24) - 12) / 0.5)) + 1 + tanh((time - 24 * floor(time / 24) - 24) / 0.5));
    D = 1 - L;
    der(cG) = (def * function_4_cG_trsl_1(cG_m, def, p11)) - (def * function_4_cG_degr_1(cG, def, m19)) - (def * function_4_cG_cZTL_assoc_1(D, L, cG, cZG, cZTL, def, p12, p13));
    der(cG_m) = (def * function_4_cG_m_trscr_1(L, cL, cP, cT, def, g14, g15, n, n12, o, q4)) - (def * function_4_cG_m_degr_1(cG_m, def, m18));
    der(cL) = (def * function_4_cL_trsl_1(D, L, cL_m, def, p1, p2)) - (def * function_4_cL_degr_1(c, cL, def, g3, m3, p3));
    der(cL_m) = (def * function_4_cL_m_trscr_1(L, a, b, cNI, cP, cP7, cP9, cTm, def, g1, g2, n0, n1, q1)) - (def * function_4_cL_m_degr_1(D, L, cL_m, def, m1, m2));
    der(cLm) = (def * function_4_cL_modif_1(c, cL, def, g3, p3)) - (def * function_4_cLm_degr_1(cLm, def, m4));
    der(cNI) = (def * function_4_cNI_trsl_1(cNI_m, def, p10)) - (def * function_4_cNI_degr_1(D, L, cNI, def, m17, m24));
    der(cNI_m) = (def * function_4_cNI_m_trscr_1(cLm, cP7, def, g12, g13, l, m, n10, n11)) - (def * function_4_cNI_m_degr_1(cNI_m, def, m16));
    der(cP) = (def * function_4_cP_trsl_1(D, cP, def, p7)) - (def * function_4_cP_degr_1(L, cP, def, m11));
    der(cP7) = (def * function_4_cP7_trsl_1(cP7_m, def, p9)) - (def * function_4_cP7_degr_1(D, L, cP7, def, m15, m23));
    der(cP7_m) = (def * function_4_cP7_m_trscr_1(cL, cLm, cP9, def, g10, g11, j, k, n8, n9)) - (def * function_4_cP7_m_degr_1(cP7_m, def, m14));
    der(cP9) = (def * function_4_cP9_trsl_1(cP9_m, def, p8)) - (def * function_4_cP9_degr_1(D, L, cP9, def, m13, m22));
    der(cP9_m) = (def * function_4_cP9_m_trscr_1(L, cL, cP, cT, def, g8, g9, h, i, n4, n7, q3)) - (def * function_4_cP9_m_degr_1(cP9_m, def, m12));
    der(cT) = (def * function_4_cT_trsl_1(cT_m, def, p4)) - (def * function_4_cT_degr_1(D, L, cT, cZG, cZTL, def, m6, m7, m8, p5));
    der(cT_m) = (def * function_4_cT_m_trscr_1(cL, cY, d, def, e, g4, g5, n2, n3)) - (def * function_4_cT_m_degr_1(cT_m, def, m5));
    der(cTm) = (def * function_4_cT_modif_1(cT, def, f, g6, p15)) - (def * function_4_cTm_degr_1(D, L, cTm, def, m25, m26));
    der(cY) = (def * function_4_cY_trsl_1(cY_m, def, p6)) - (def * function_4_cY_degr_1(cY, def, m10));
    der(cY_m) = (def * function_4_cY_m_trscr_1(D, L, cL, cP, cT, def, g, g16, g7, n5, n6, q2, s)) - (def * function_4_cY_m_degr_1(cY_m, def, m9));
    der(cZG) = (def * function_4_cG_cZTL_assoc_1(D, L, cG, cZG, cZTL, def, p12, p13)) - (def * function_4_cZG_degr_1(cZG, def, m21));
    der(cZTL) = (def * function_4_cZTL_trsl_1(def, p14)) - (def * function_4_cG_cZTL_assoc_1(D, L, cG, cZG, cZTL, def, p12, p13)) - (def * function_4_cZTL_degr_1(cZTL, def, m20));




end BIOMD564;
