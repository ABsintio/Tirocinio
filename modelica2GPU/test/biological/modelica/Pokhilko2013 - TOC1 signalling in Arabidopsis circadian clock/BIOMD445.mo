
model BIOMD445 "Pokhilko2013 - TOC1 signalling in Arabidopsis circadian clock"

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


    function function_4_cE4_degr
        	input Real cCOP1d;
	input Real cCOP1n;
	input Real cE3n;
	input Real cE4;
	input Real cLUX;
	input Real def;
	input Real m10;
	input Real m35;
	input Real m9;
	input Real p21;
	input Real p25;
	input Real p26;
        output Real y;
    algorithm
        y :=  (m35 * cE4 + p25 * cE4 * cE3n - p21 * p25 * cE4 * cE3n / (p26 * cLUX + p21 + m9 * cCOP1d + m10 * cCOP1n)) / def;
    end function_4_cE4_degr;


    function function_4_cE3_m_trscr
        	input Real cL;
	input Real def;
	input Real e;
	input Real g16;
	input Real n3;
        output Real y;
    algorithm
        y :=  n3 * g16^e / (cL^e + g16^e) / def;
    end function_4_cE3_m_trscr;


    function function_4_cE3_m_degr
        	input Real cE3_m;
	input Real def;
	input Real m26;
        output Real y;
    algorithm
        y :=  m26 * cE3_m / def;
    end function_4_cE3_m_degr;


    function function_4_cE3_trsl
        	input Real cE3_m;
	input Real def;
	input Real p16;
        output Real y;
    algorithm
        y :=  p16 * cE3_m / def;
    end function_4_cE3_trsl;


    function function_4_cE3_degr
        	input Real cCOP1c;
	input Real cE3;
	input Real def;
	input Real m9;
        output Real y;
    algorithm
        y :=  m9 * cE3 * cCOP1c / def;
    end function_4_cE3_degr;


    function function_4_cE3n_degr
        	input Real cCOP1d;
	input Real cCOP1n;
	input Real cE3n;
	input Real cE4;
	input Real cG;
	input Real cLUX;
	input Real def;
	input Real m10;
	input Real m19;
	input Real m9;
	input Real p17;
	input Real p21;
	input Real p25;
	input Real p26;
	input Real p28;
	input Real p29;
        output Real y;
    algorithm
        y :=  ((m10 * cE3n * cCOP1n + m9 * cE3n * cCOP1d + p25 * cE4 * cE3n - p21 * p25 * cE4 * cE3n / (p26 * cLUX + p21 + m9 * cCOP1d + m10 * cCOP1n)) + p17 * cE3n * p28 * cG / (p29 + m19 + p17 * cE3n)) / def;
    end function_4_cE3n_degr;


    function function_4_cE3n_import
        	input Real cE3;
	input Real cE3n;
	input Real def;
	input Real p19;
	input Real p20;
        output Real y;
    algorithm
        y :=  (p19 * cE3 - p20 * cE3n) / def;
    end function_4_cE3n_import;


    function function_4_cLUX_m_trscr
        	input Real cEC;
	input Real cL;
	input Real cT;
	input Real def;
	input Real e;
	input Real g2;
	input Real g6;
	input Real n13;
	input Real parameter_3;
	input Real parameter_7;
        output Real y;
    algorithm
        y :=  (parameter_3^parameter_7 / (parameter_3^parameter_7 + cT^parameter_7)) * ((n13 * g2 / (cEC + g2)) * g6^e / (cL^e + g6^e)) / def;
    end function_4_cLUX_m_trscr;


    function function_4_cLUX_m_degr
        	input Real cLUX_m;
	input Real def;
	input Real m34;
        output Real y;
    algorithm
        y :=  m34 * cLUX_m / def;
    end function_4_cLUX_m_degr;


    function function_4_cLUX_trsl
        	input Real cLUX_m;
	input Real def;
	input Real p27;
        output Real y;
    algorithm
        y :=  p27 * cLUX_m / def;
    end function_4_cLUX_trsl;


    function function_4_cLUX_degr_1
        	input Real cCOP1d;
	input Real cCOP1n;
	input Real cE3n;
	input Real cE4;
	input Real cLUX;
	input Real def;
	input Real m10;
	input Real m36;
	input Real m9;
	input Real p21;
	input Real p25;
	input Real p26;
        output Real y;
    algorithm
        y :=  (m36 * cLUX + p26 * cLUX * p25 * cE4 * cE3n / (p26 * cLUX + p21 + m9 * cCOP1d + m10 * cCOP1n)) / def;
    end function_4_cLUX_degr_1;


    function function_4_cCOP1c_trsl
        	input Real def;
	input Real n5;
        output Real y;
    algorithm
        y :=  n5 / def;
    end function_4_cCOP1c_trsl;


    function function_4_cCOP1c_degr
        	input Real L;
	input Real cCOP1c;
	input Real m27;
	input Real p15;
        output Real y;
    algorithm
        y :=  m27 * cCOP1c * (1 + p15 * L);
    end function_4_cCOP1c_degr;


    function function_4_cCOP1n_import
        	input Real cCOP1c;
	input Real def;
	input Real p6;
        output Real y;
    algorithm
        y :=  p6 * cCOP1c / def;
    end function_4_cCOP1n_import;


    function function_4_cL_m_trscr
        	input Real L;
	input Real a;
	input Real cNI;
	input Real cP;
	input Real cP7;
	input Real cP9;
	input Real cT;
	input Real g1;
	input Real n1;
	input Real q1;
        output Real y;
    algorithm
        y :=  L * q1 * cP + n1 * g1^a / ((cP9 + cP7 + cNI + cT)^a + g1^a);
    end function_4_cL_m_trscr;


    function function_4_cL_m_degr
        	input Real L;
	input Real cL_m;
	input Real m1;
	input Real m2;
        output Real y;
    algorithm
        y :=  (m2 + (m1 - m2) * L) * cL_m;
    end function_4_cL_m_degr;


    function function_4_cL_trsl
        	input Real L;
	input Real cL_m;
	input Real p1;
	input Real p2;
        output Real y;
    algorithm
        y :=  cL_m * (p1 * L + p2);
    end function_4_cL_trsl;


    function function_4_cL_degr
        	input Real c;
	input Real cL;
	input Real def;
	input Real g3;
	input Real m3;
	input Real p3;
        output Real y;
    algorithm
        y :=  (m3 * cL + p3 * cL^c / (cL^c + g3^c)) / def;
    end function_4_cL_degr;


    function function_4_cL_modif
        	input Real c;
	input Real cL;
	input Real def;
	input Real g3;
	input Real p3;
        output Real y;
    algorithm
        y :=  p3 * cL^c / (cL^c + g3^c) / def;
    end function_4_cL_modif;


    function function_4_cLm_degr
        	input Real cLm;
	input Real def;
	input Real m4;
        output Real y;
    algorithm
        y :=  m4 * cLm / def;
    end function_4_cLm_degr;


    function function_4_cP_trsl
        	input Real L;
	input Real cP;
	input Real p7;
        output Real y;
    algorithm
        y :=  p7 * (1 - L) * (1 - cP);
    end function_4_cP_trsl;


    function function_4_cP_degr
        	input Real L;
	input Real cP;
	input Real m11;
        output Real y;
    algorithm
        y :=  m11 * cP * L;
    end function_4_cP_degr;


    function function_4_cP9_m_trscr_1
        	input Real L;
	input Real cEC;
	input Real cL;
	input Real cP;
	input Real cT;
	input Real e;
	input Real g8;
	input Real g9;
	input Real n4;
	input Real n7;
	input Real parameter_2;
	input Real parameter_7;
	input Real q3;
        output Real y;
    algorithm
        y :=  (parameter_2^parameter_7 / (parameter_2^parameter_7 + cT^parameter_7)) * (L * q3 * cP + (n4 + n7 * cL^e / (cL^e + g9^e)) * g8 / (cEC + g8));
    end function_4_cP9_m_trscr_1;


    function function_4_cP9_m_degr
        	input Real cP9_m;
	input Real def;
	input Real m12;
        output Real y;
    algorithm
        y :=  m12 * cP9_m / def;
    end function_4_cP9_m_degr;


    function function_4_cP9_trsl
        	input Real cP9_m;
	input Real def;
	input Real p8;
        output Real y;
    algorithm
        y :=  p8 * cP9_m / def;
    end function_4_cP9_trsl;


    function function_4_cP9_degr
        	input Real L;
	input Real cP9;
	input Real m13;
	input Real m22;
        output Real y;
    algorithm
        y :=  (m13 + m22 * (1 - L)) * cP9;
    end function_4_cP9_degr;


    function function_4_cP7_m_trscr_1
        	input Real cL;
	input Real cLm;
	input Real cP9;
	input Real cT;
	input Real def;
	input Real e;
	input Real f;
	input Real g10;
	input Real g11;
	input Real n8;
	input Real n9;
	input Real parameter_6;
	input Real parameter_7;
        output Real y;
    algorithm
        y :=  (parameter_6^parameter_7 / (parameter_6^parameter_7 + cT^parameter_7)) * (n8 * (cLm + cL)^e / ((cLm + cL)^e + g10^e) + n9 * cP9^f / (cP9^f + g11^f)) / def;
    end function_4_cP7_m_trscr_1;


    function function_4_cP7_m_degr
        	input Real cP7_m;
	input Real def;
	input Real m14;
        output Real y;
    algorithm
        y :=  m14 * cP7_m / def;
    end function_4_cP7_m_degr;


    function function_4_cP7_trsl
        	input Real cP7_m;
	input Real def;
	input Real p9;
        output Real y;
    algorithm
        y :=  p9 * cP7_m / def;
    end function_4_cP7_trsl;


    function function_4_cP7_degr
        	input Real L;
	input Real cP7;
	input Real m15;
	input Real m23;
        output Real y;
    algorithm
        y :=  (m15 + m23 * (1 - L)) * cP7;
    end function_4_cP7_degr;


    function function_4_cNI_m_trscr_1
        	input Real b;
	input Real cLm;
	input Real cP7;
	input Real cT;
	input Real def;
	input Real e;
	input Real g12;
	input Real g13;
	input Real n10;
	input Real n11;
	input Real parameter_12;
	input Real parameter_7;
        output Real y;
    algorithm
        y :=  (parameter_12^parameter_7 / (parameter_12^parameter_7 + cT^parameter_7)) * (n10 * cLm^e / (cLm^e + g12^e) + n11 * cP7^b / (cP7^b + g13^b)) / def;
    end function_4_cNI_m_trscr_1;


    function function_4_cNI_m_degr
        	input Real cNI_m;
	input Real def;
	input Real m16;
        output Real y;
    algorithm
        y :=  m16 * cNI_m / def;
    end function_4_cNI_m_degr;


    function function_4_cNI_trsl
        	input Real cNI_m;
	input Real def;
	input Real p10;
        output Real y;
    algorithm
        y :=  p10 * cNI_m / def;
    end function_4_cNI_trsl;


    function function_4_cNI_degr
        	input Real L;
	input Real cNI;
	input Real m17;
	input Real m24;
        output Real y;
    algorithm
        y :=  (m17 + m24 * (1 - L)) * cNI;
    end function_4_cNI_degr;


    function function_4_cT_m_trscr
        	input Real cEC;
	input Real cL;
	input Real def;
	input Real e;
	input Real g4;
	input Real g5;
	input Real n2;
	input Real parameter_11;
	input Real parameter_14;
	input Real species_3;
        output Real y;
    algorithm
        y :=  (n2 / (1 + (cL / (g5 * (1 + (species_3 / parameter_14)^parameter_11)))^e)) * g4 / (cEC + g4) / def;
    end function_4_cT_m_trscr;


    function function_4_cT_m_degr
        	input Real cT_m;
	input Real def;
	input Real m5;
        output Real y;
    algorithm
        y :=  m5 * cT_m / def;
    end function_4_cT_m_degr;


    function function_4_cT_trsl
        	input Real cT_m;
	input Real def;
	input Real p4;
        output Real y;
    algorithm
        y :=  p4 * cT_m / def;
    end function_4_cT_trsl;


    function function_4_cT_degr
        	input Real L;
	input Real cT;
	input Real cZG;
	input Real cZTL;
	input Real m6;
	input Real m7;
	input Real m8;
	input Real p5;
        output Real y;
    algorithm
        y :=  (m6 + m7 * (1 - L)) * cT * (p5 * cZTL + cZG) + m8 * cT;
    end function_4_cT_degr;


    function function_4_cE4_m_trscr_1
        	input Real cEC;
	input Real cL;
	input Real cT;
	input Real def;
	input Real e;
	input Real g6;
	input Real parameter_4;
	input Real parameter_5;
	input Real parameter_7;
	input Real parameter_8;
        output Real y;
    algorithm
        y :=  (parameter_5^parameter_7 / (parameter_5^parameter_7 + cT^parameter_7)) * ((parameter_8 * parameter_4 / (cEC + parameter_4)) * g6^e / (cL^e + g6^e)) / def;
    end function_4_cE4_m_trscr_1;


    function function_4_cE4_m_degr
        	input Real cE4_m;
	input Real def;
	input Real m34;
        output Real y;
    algorithm
        y :=  m34 * cE4_m / def;
    end function_4_cE4_m_degr;


    function function_4_cE4_trsl
        	input Real cE4_m;
	input Real def;
	input Real p23;
        output Real y;
    algorithm
        y :=  p23 * cE4_m / def;
    end function_4_cE4_trsl;


    function function_4_cs_act_1
        	input Real L;
	input Real def;
	input Real parameter_10;
	input Real parameter_15;
	input Real parameter_21;
	input Real parameter_25;
	input Real species_3;
	input Real species_4;
        output Real y;
    algorithm
        y :=  (parameter_25 + parameter_21 * L) * (1 - species_4) * parameter_15^parameter_10 / (parameter_15^parameter_10 + species_3^parameter_10) / def;
    end function_4_cs_act_1;


    function function_4_cs_degr_1
        	input Real def;
	input Real m29;
	input Real species_4;
        output Real y;
    algorithm
        y :=  m29 * species_4 / def;
    end function_4_cs_degr_1;


    function function_4_cCOP1n_degr
        	input Real L;
	input Real cCOP1n;
	input Real m27;
	input Real p15;
        output Real y;
    algorithm
        y :=  m27 * cCOP1n * (1 + p15 * L);
    end function_4_cCOP1n_degr;


    function function_4_cCOP1d_degr
        	input Real L;
	input Real cCOP1d;
	input Real m31;
	input Real m33;
        output Real y;
    algorithm
        y :=  m31 * (1 + m33 * (1 - L)) * cCOP1d;
    end function_4_cCOP1d_degr;


    function function_4_cCOP1d_activ
        	input Real L;
	input Real cCOP1n;
	input Real cP;
	input Real n14;
	input Real n6;
        output Real y;
    algorithm
        y :=  n6 * L * cP * cCOP1n + n14 * cCOP1n;
    end function_4_cCOP1d_activ;


    function function_4_cG_m_trscr_1
        	input Real L;
	input Real cEC;
	input Real cL;
	input Real cP;
	input Real cT;
	input Real e;
	input Real g14;
	input Real g15;
	input Real n12;
	input Real parameter_1;
	input Real parameter_7;
	input Real q2;
        output Real y;
    algorithm
        y :=  (parameter_1^parameter_7 / (parameter_1^parameter_7 + cT^parameter_7)) * (L * q2 * cP + (n12 * g14 / (cEC + g14)) * g15^e / (cL^e + g15^e));
    end function_4_cG_m_trscr_1;


    function function_4_cG_m_degr
        	input Real cG_m;
	input Real def;
	input Real m18;
        output Real y;
    algorithm
        y :=  m18 * cG_m / def;
    end function_4_cG_m_degr;


    function function_4_cG_trsl
        	input Real cG_m;
	input Real def;
	input Real p11;
        output Real y;
    algorithm
        y :=  p11 * cG_m / def;
    end function_4_cG_trsl;


    function function_4_cG_degr_1
        	input Real cE3n;
	input Real cG;
	input Real def;
	input Real m19;
	input Real p17;
	input Real p28;
	input Real p29;
        output Real y;
    algorithm
        y :=  (m19 * cG + p28 * cG - p29 * p28 * cG / (p29 + m19 + p17 * cE3n)) / def;
    end function_4_cG_degr_1;


    function function_4_cG_cZTL_assoc
        	input Real L;
	input Real cG;
	input Real cZG;
	input Real cZTL;
	input Real p12;
	input Real p13;
        output Real y;
    algorithm
        y :=  p12 * L * cZTL * cG - p13 * (1 - L) * cZG;
    end function_4_cG_cZTL_assoc;


    function function_4_cZTL_trsl
        	input Real def;
	input Real p14;
        output Real y;
    algorithm
        y :=  p14 / def;
    end function_4_cZTL_trsl;


    function function_4_cZTL_degr
        	input Real cZTL;
	input Real def;
	input Real m20;
        output Real y;
    algorithm
        y :=  m20 * cZTL / def;
    end function_4_cZTL_degr;


    function function_4_cZG_degr
        	input Real cZG;
	input Real def;
	input Real m21;
        output Real y;
    algorithm
        y :=  m21 * cZG / def;
    end function_4_cZG_degr;


    function function_4_cG_cE3_assoc
        	input Real cE3;
	input Real cG;
	input Real def;
	input Real p17;
        output Real y;
    algorithm
        y :=  p17 * cE3 * cG / def;
    end function_4_cG_cE3_assoc;


    function function_4_cEG_degr_1
        	input Real cCOP1c;
	input Real cCOP1d;
	input Real cCOP1n;
	input Real cE3n;
	input Real cEG;
	input Real cG;
	input Real def;
	input Real m10;
	input Real m19;
	input Real m9;
	input Real p17;
	input Real p18;
	input Real p28;
	input Real p29;
	input Real parameter_26;
        output Real y;
    algorithm
        y :=  (m10 * cEG * cCOP1c + p18 * cEG - parameter_26 * (p18 * cEG + p17 * cE3n * p28 * cG / (p29 + m19 + p17 * cE3n)) / (m10 * cCOP1n + m9 * cCOP1d + parameter_26)) / def;
    end function_4_cEG_degr_1;


    function function_4_cEC_form
        	input Real cCOP1d;
	input Real cCOP1n;
	input Real cE3n;
	input Real cE4;
	input Real cLUX;
	input Real def;
	input Real m10;
	input Real m9;
	input Real p21;
	input Real p25;
	input Real p26;
        output Real y;
    algorithm
        y :=  p26 * cLUX * p25 * cE4 * cE3n / (p26 * cLUX + p21 + m9 * cCOP1d + m10 * cCOP1n) / def;
    end function_4_cEC_form;


    function function_4_cEC_degr
        	input Real L;
	input Real cCOP1d;
	input Real cCOP1n;
	input Real cE3n;
	input Real cEC;
	input Real cEG;
	input Real cG;
	input Real d;
	input Real g7;
	input Real m10;
	input Real m19;
	input Real m32;
	input Real m9;
	input Real p17;
	input Real p18;
	input Real p24;
	input Real p28;
	input Real p29;
	input Real parameter_26;
        output Real y;
    algorithm
        y :=  m10 * cCOP1n * cEC + m9 * cCOP1d * cEC + m32 * cEC * (1 + p24 * L * (p28 * cG / (p29 + m19 + p17 * cE3n) + (p18 * cEG + p17 * cE3n * p28 * cG / (p29 + m19 + p17 * cE3n)) / (m10 * cCOP1n + m9 * cCOP1d + parameter_26))^d / ((p28 * cG / (p29 + m19 + p17 * cE3n) + (p18 * cEG + p17 * cE3n * p28 * cG / (p29 + m19 + p17 * cE3n)) / (m10 * cCOP1n + m9 * cCOP1d + parameter_26))^d + g7^d));
    end function_4_cEC_degr;


    function function_4_cABAR_m_trscr_1
        	input Real cL;
	input Real cT;
	input Real def;
	input Real e;
	input Real parameter_13;
	input Real parameter_17;
	input Real parameter_24;
	input Real parameter_7;
        output Real y;
    algorithm
        y :=  (parameter_13^parameter_7 / (parameter_13^parameter_7 + cT^parameter_7)) * parameter_24 * cL^e / (cL^e + parameter_17^e) / def;
    end function_4_cABAR_m_trscr_1;


    function function_4_cABAR_m_degr
        	input Real def;
	input Real m37;
	input Real species_1;
        output Real y;
    algorithm
        y :=  m37 * species_1 / def;
    end function_4_cABAR_m_degr;


    function function_4_cPP2C_act_1
        	input Real def;
	input Real parameter_16;
	input Real parameter_18;
	input Real parameter_28;
	input Real parameter_29;
	input Real parameter_9;
	input Real species_1;
        output Real y;
    algorithm
        y :=  parameter_28 * parameter_16^parameter_9 / ((0.5 * (parameter_29 + species_1 + parameter_18 - ((parameter_29 + species_1 + parameter_18)^2 - 4 * parameter_29 * species_1)^(1 / 2)))^parameter_9 + parameter_16^parameter_9) / def;
    end function_4_cPP2C_act_1;


    function function_4_cPP2C_degr_1
        	input Real def;
	input Real parameter_20;
	input Real species_2;
        output Real y;
    algorithm
        y :=  parameter_20 * species_2 / def;
    end function_4_cPP2C_degr_1;


    function function_4_cSnRK2_degr
        	input Real def;
	input Real m30;
	input Real species_2;
	input Real species_3;
        output Real y;
    algorithm
        y :=  m30 * species_3 * species_2 / def;
    end function_4_cSnRK2_degr;


    function function_4_cSnRK2_act_1
        	input Real def;
	input Real parameter_27;
        output Real y;
    algorithm
        y :=  parameter_27 / def;
    end function_4_cSnRK2_act_1;


    parameter Real n1 = 2.6;
    parameter Real n2 = 0.35;
    parameter Real n3 = 0.29;
    parameter Real n4 = 0.04;
    parameter Real n5 = 0.4;
    parameter Real n6 = 20.0;
    parameter Real n7 = 0.1;
    parameter Real n8 = 0.5;
    parameter Real n9 = 0.6;
    parameter Real n10 = 0.3;
    parameter Real n11 = 0.6;
    parameter Real n12 = 9.0;
    parameter Real n13 = 2.0;
    parameter Real n14 = 0.1;
    parameter Real g1 = 0.1;
    parameter Real g2 = 0.01;
    parameter Real g3 = 0.6;
    parameter Real g4 = 0.006;
    parameter Real g5 = 0.2;
    parameter Real g6 = 0.3;
    parameter Real g7 = 1.0;
    parameter Real g8 = 0.04;
    parameter Real g9 = 0.3;
    parameter Real g10 = 0.5;
    parameter Real g11 = 0.7;
    parameter Real g12 = 0.1;
    parameter Real g13 = 1.0;
    parameter Real g14 = 0.02;
    parameter Real g15 = 0.4;
    parameter Real g16 = 0.3;
    parameter Real m1 = 0.54;
    parameter Real m2 = 0.24;
    parameter Real m3 = 0.2;
    parameter Real m4 = 0.2;
    parameter Real m5 = 0.3;
    parameter Real m6 = 0.2;
    parameter Real m7 = 0.1;
    parameter Real m8 = 0.5;
    parameter Real m9 = 0.2;
    parameter Real m10 = 0.1;
    parameter Real m11 = 1.0;
    parameter Real m12 = 1.0;
    parameter Real m13 = 0.32;
    parameter Real m14 = 0.4;
    parameter Real m15 = 0.7;
    parameter Real m16 = 0.5;
    parameter Real m17 = 0.5;
    parameter Real m18 = 3.4;
    parameter Real m19 = 0.9;
    parameter Real m20 = 0.6;
    parameter Real m21 = 0.08;
    parameter Real m22 = 0.1;
    parameter Real m23 = 0.5;
    parameter Real m24 = 0.5;
    parameter Real m25 = 0.9;
    parameter Real m26 = 0.5;
    parameter Real m27 = 0.1;
    parameter Real m28 = 28.0;
    parameter Real m29 = 0.3;
    parameter Real m30 = 1.0;
    parameter Real m31 = 0.1;
    parameter Real m32 = 0.2;
    parameter Real m33 = 13.0;
    parameter Real m34 = 0.6;
    parameter Real m35 = 0.3;
    parameter Real m36 = 0.3;
    parameter Real m37 = 0.4;
    parameter Real a = 2.0;
    parameter Real b = 2.0;
    parameter Real c = 2.0;
    parameter Real d = 2.0;
    parameter Real e = 2.0;
    parameter Real f = 2.0;
    parameter Real p1 = 0.13;
    parameter Real p2 = 0.27;
    parameter Real p3 = 0.1;
    parameter Real p4 = 0.5;
    parameter Real p5 = 1.0;
    parameter Real p6 = 0.2;
    parameter Real p7 = 0.3;
    parameter Real p8 = 0.6;
    parameter Real p9 = 0.8;
    parameter Real p10 = 0.54;
    parameter Real p11 = 0.5;
    parameter Real p12 = 10.0;
    parameter Real p13 = 0.1;
    parameter Real p14 = 0.14;
    parameter Real p15 = 2.0;
    parameter Real p16 = 0.62;
    parameter Real p17 = 17.0;
    parameter Real p18 = 4.0;
    parameter Real p19 = 1.0;
    parameter Real p20 = 0.1;
    parameter Real p21 = 1.0;
    parameter Real p22 = 0.5;
    parameter Real p23 = 0.37;
    parameter Real p24 = 11.0;
    parameter Real p25 = 2.0;
    parameter Real p26 = 0.3;
    parameter Real p27 = 0.8;
    parameter Real p28 = 2.0;
    parameter Real p29 = 0.1;
    parameter Real p30 = 0.9;
    parameter Real q1 = 1.0;
    parameter Real q2 = 1.56;
    parameter Real q3 = 3.0;
    parameter Real lightOffset = 0.0;
    parameter Real cyclePeriod = 24.0;
    parameter Real lightAmplitude = 1.0;
    parameter Real phase = 0.0;
    parameter Real twilightPeriod = 0.05;
    parameter Real photoPeriod = 12.0;
    parameter Real parameter_1 = 0.6;
    parameter Real parameter_2 = 0.4;
    parameter Real parameter_3 = 0.4;
    parameter Real parameter_4 = 0.03;
    parameter Real parameter_5 = 0.4;
    parameter Real parameter_6 = 0.1;
    parameter Real parameter_7 = 2.0;
    parameter Real parameter_8 = 2.0;
    parameter Real parameter_9 = 2.0;
    parameter Real parameter_10 = 2.0;
    parameter Real parameter_11 = 2.0;
    parameter Real parameter_12 = 0.6;
    parameter Real parameter_13 = 0.3;
    parameter Real parameter_14 = 0.5;
    parameter Real parameter_15 = 0.3;
    parameter Real parameter_16 = 0.2;
    parameter Real parameter_17 = 0.1;
    parameter Real parameter_18 = 1.0;
    parameter Real parameter_19 = 0.3;
    parameter Real parameter_20 = 0.2;
    parameter Real parameter_21 = 0.5;
    parameter Real parameter_22 = 0.0;
    parameter Real parameter_23 = 0.0;
    parameter Real parameter_24 = 0.5;
    parameter Real parameter_25 = 0.2;
    parameter Real parameter_26 = 0.1;
    parameter Real parameter_27 = 0.1;
    parameter Real parameter_28 = 0.2;
    parameter Real parameter_29 = 1.0;
    parameter Real default = 1.0;
    parameter Real def = 1.0;
    parameter Real compartment_1 = 1.0;

    Real L(start=0.5);
    Real D(start=0.5);

    Real species_1;
    Real species_2;
    Real species_3;
    Real species_4;
    Real cCOP1c;
    Real cCOP1d;
    Real cCOP1n;
    Real cE3;
    Real cE3_m;
    Real cE3n;
    Real cE4;
    Real cE4_m;
    Real cEC;
    Real cEG;
    Real cG;
    Real cG_m;
    Real cL;
    Real cLUX;
    Real cLUX_m;
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
    Real cZG;
    Real cZTL;

initial equation
    species_1 = 0.999999951844376;
    species_2 = 0.999999951844376;
    species_3 = 0.999999951844376;
    species_4 = 0.999999951844376;
    cCOP1c = 0.326899984257926;
    cCOP1d = 0.256599987643267;
    cCOP1n = 0.649999968698844;
    cE3 = 0.15029999276221;
    cE3_m = 0.299099985596653;
    cE3n = 0.0285999986227492;
    cE4 = 0.206999990031786;
    cE4_m = 0.101199995126651;
    cEC = 0.0708999965857662;
    cEG = 0.00409999980256194;
    cG = 0.0195999990561498;
    cG_m = 0.101699995102573;
    cL = 0.505999975633254;
    cLUX = 0.575999972262361;
    cLUX_m = 0.101199995126651;
    cL_m = 1.01509995111723;
    cLm = 0.0787999962053368;
    cNI = 0.069699996643553;
    cNI_m = 0.0730999964798238;
    cP = 0.955999953963223;
    cP7 = 0.116699994380239;
    cP7_m = 0.401599980660701;
    cP9 = 0.0237999988538961;
    cP9_m = 0.0657999968313599;
    cT = 0.0434999979052303;
    cT_m = 0.0976999952951955;
    cZG = 0.0754999963642504;
    cZTL = 0.250499987937016;

equation
    L = lightOffset + 0.5 * lightAmplitude * (1 + tanh(cyclePeriod * ((time + phase) / cyclePeriod - floor(floor(time + phase) / cyclePeriod)) / twilightPeriod)) - 0.5 * lightAmplitude * (1 + tanh((cyclePeriod * ((time + phase) / cyclePeriod - floor(floor(time + phase) / cyclePeriod)) - photoPeriod) / twilightPeriod)) + 0.5 * lightAmplitude * (1 + tanh((cyclePeriod * ((time + phase) / cyclePeriod - floor(floor(time + phase) / cyclePeriod)) - cyclePeriod) / twilightPeriod));
    D = 1 - L;
    der(species_1) = (default * function_4_cABAR_m_trscr_1(cL, cT, def, e, parameter_13, parameter_17, parameter_24, parameter_7)) - (default * function_4_cABAR_m_degr(def, m37, species_1));
    der(species_2) = (default * function_4_cPP2C_act_1(def, parameter_16, parameter_18, parameter_28, parameter_29, parameter_9, species_1)) - (default * function_4_cPP2C_degr_1(def, parameter_20, species_2));
    der(species_3) = (default * function_4_cSnRK2_act_1(def, parameter_27)) - (default * function_4_cSnRK2_degr(def, m30, species_2, species_3));
    der(species_4) = (default * function_4_cs_act_1(L, def, parameter_10, parameter_15, parameter_21, parameter_25, species_3, species_4)) - (default * function_4_cs_degr_1(def, m29, species_4));
    der(cCOP1c) = (def * function_4_cCOP1c_trsl(def, n5)) - (def * function_4_cCOP1c_degr(L, cCOP1c, m27, p15)) - (def * function_4_cCOP1n_import(cCOP1c, def, p6));
    der(cCOP1d) = (def * function_4_cCOP1d_activ(L, cCOP1n, cP, n14, n6)) - (def * function_4_cCOP1d_degr(L, cCOP1d, m31, m33));
    der(cCOP1n) = (def * function_4_cCOP1n_import(cCOP1c, def, p6)) - (def * function_4_cCOP1n_degr(L, cCOP1n, m27, p15)) - (def * function_4_cCOP1d_activ(L, cCOP1n, cP, n14, n6));
    der(cE3) = (def * function_4_cE3_trsl(cE3_m, def, p16)) - (def * function_4_cE3_degr(cCOP1c, cE3, def, m9)) - (def * function_4_cE3n_import(cE3, cE3n, def, p19, p20)) - (def * function_4_cG_cE3_assoc(cE3, cG, def, p17));
    der(cE3_m) = (def * function_4_cE3_m_trscr(cL, def, e, g16, n3)) - (def * function_4_cE3_m_degr(cE3_m, def, m26));
    der(cE3n) = (def * function_4_cE3n_import(cE3, cE3n, def, p19, p20)) - (def * function_4_cE3n_degr(cCOP1d, cCOP1n, cE3n, cE4, cG, cLUX, def, m10, m19, m9, p17, p21, p25, p26, p28, p29));
    der(cE4) = (def * function_4_cE4_trsl(cE4_m, def, p23)) - (def * function_4_cE4_degr(cCOP1d, cCOP1n, cE3n, cE4, cLUX, def, m10, m35, m9, p21, p25, p26));
    der(cE4_m) = (def * function_4_cE4_m_trscr_1(cEC, cL, cT, def, e, g6, parameter_4, parameter_5, parameter_7, parameter_8)) - (def * function_4_cE4_m_degr(cE4_m, def, m34));
    der(cEC) = (def * function_4_cEC_form(cCOP1d, cCOP1n, cE3n, cE4, cLUX, def, m10, m9, p21, p25, p26)) - (def * function_4_cEC_degr(L, cCOP1d, cCOP1n, cE3n, cEC, cEG, cG, d, g7, m10, m19, m32, m9, p17, p18, p24, p28, p29, parameter_26));
    der(cEG) = (def * function_4_cG_cE3_assoc(cE3, cG, def, p17)) - (def * function_4_cEG_degr_1(cCOP1c, cCOP1d, cCOP1n, cE3n, cEG, cG, def, m10, m19, m9, p17, p18, p28, p29, parameter_26));
    der(cG) = (def * function_4_cG_trsl(cG_m, def, p11)) - (def * function_4_cG_degr_1(cE3n, cG, def, m19, p17, p28, p29)) - (def * function_4_cG_cZTL_assoc(L, cG, cZG, cZTL, p12, p13)) - (def * function_4_cG_cE3_assoc(cE3, cG, def, p17));
    der(cG_m) = (def * function_4_cG_m_trscr_1(L, cEC, cL, cP, cT, e, g14, g15, n12, parameter_1, parameter_7, q2)) - (def * function_4_cG_m_degr(cG_m, def, m18));
    der(cL) = (def * function_4_cL_trsl(L, cL_m, p1, p2)) - (def * function_4_cL_degr(c, cL, def, g3, m3, p3));
    der(cLUX) = (def * function_4_cLUX_trsl(cLUX_m, def, p27)) - (def * function_4_cLUX_degr_1(cCOP1d, cCOP1n, cE3n, cE4, cLUX, def, m10, m36, m9, p21, p25, p26));
    der(cLUX_m) = (def * function_4_cLUX_m_trscr(cEC, cL, cT, def, e, g2, g6, n13, parameter_3, parameter_7)) - (def * function_4_cLUX_m_degr(cLUX_m, def, m34));
    der(cL_m) = (def * function_4_cL_m_trscr(L, a, cNI, cP, cP7, cP9, cT, g1, n1, q1)) - (def * function_4_cL_m_degr(L, cL_m, m1, m2));
    der(cLm) = (def * function_4_cL_modif(c, cL, def, g3, p3)) - (def * function_4_cLm_degr(cLm, def, m4));
    der(cNI) = (def * function_4_cNI_trsl(cNI_m, def, p10)) - (def * function_4_cNI_degr(L, cNI, m17, m24));
    der(cNI_m) = (def * function_4_cNI_m_trscr_1(b, cLm, cP7, cT, def, e, g12, g13, n10, n11, parameter_12, parameter_7)) - (def * function_4_cNI_m_degr(cNI_m, def, m16));
    der(cP) = (def * function_4_cP_trsl(L, cP, p7)) - (def * function_4_cP_degr(L, cP, m11));
    der(cP7) = (def * function_4_cP7_trsl(cP7_m, def, p9)) - (def * function_4_cP7_degr(L, cP7, m15, m23));
    der(cP7_m) = (def * function_4_cP7_m_trscr_1(cL, cLm, cP9, cT, def, e, f, g10, g11, n8, n9, parameter_6, parameter_7)) - (def * function_4_cP7_m_degr(cP7_m, def, m14));
    der(cP9) = (def * function_4_cP9_trsl(cP9_m, def, p8)) - (def * function_4_cP9_degr(L, cP9, m13, m22));
    der(cP9_m) = (def * function_4_cP9_m_trscr_1(L, cEC, cL, cP, cT, e, g8, g9, n4, n7, parameter_2, parameter_7, q3)) - (def * function_4_cP9_m_degr(cP9_m, def, m12));
    der(cT) = (def * function_4_cT_trsl(cT_m, def, p4)) - (def * function_4_cT_degr(L, cT, cZG, cZTL, m6, m7, m8, p5));
    der(cT_m) = (def * function_4_cT_m_trscr(cEC, cL, def, e, g4, g5, n2, parameter_11, parameter_14, species_3)) - (def * function_4_cT_m_degr(cT_m, def, m5));
    der(cZG) = (def * function_4_cG_cZTL_assoc(L, cG, cZG, cZTL, p12, p13)) - (def * function_4_cZG_degr(cZG, def, m21));
    der(cZTL) = (def * function_4_cZTL_trsl(def, p14)) - (def * function_4_cG_cZTL_assoc(L, cG, cZG, cZTL, p12, p13)) - (def * function_4_cZTL_degr(cZTL, def, m20));




end BIOMD445;
