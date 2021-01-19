
model BIOMD412 "Pokhilko2012_CircClock_RepressilatorFeedbackloop"

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


    function function_4_cLUX_m_trscr
        	input Real cEC;
	input Real cL;
	input Real def;
	input Real e;
	input Real g2;
	input Real g6;
	input Real n13;
        output Real y;
    algorithm
        y :=  (n13 * g2 / (cEC + g2)) * g6^e / (cL^e + g6^e) / def;
    end function_4_cLUX_m_trscr;


    function function_4_cL_m_trscr
        	input Real L;
	input Real a;
	input Real cNI;
	input Real cP;
	input Real cP7;
	input Real cP9;
	input Real cT;
	input Real def;
	input Real g1;
	input Real n1;
	input Real q1;
        output Real y;
    algorithm
        y :=  (L * q1 * cP + n1 * g1^a / ((cP9 + cP7 + cNI + cT)^a + g1^a)) / def;
    end function_4_cL_m_trscr;


    function function_4_cL_trsl
        	input Real L;
	input Real cL_m;
	input Real def;
	input Real p1;
	input Real p2;
        output Real y;
    algorithm
        y :=  cL_m * (p1 * L + p2) / def;
    end function_4_cL_trsl;


    function function_4_cL_m_degr
        	input Real D;
	input Real L;
	input Real cL_m;
	input Real def;
	input Real m1;
	input Real m2;
        output Real y;
    algorithm
        y :=  (m1 * L + m2 * D) * cL_m / def;
    end function_4_cL_m_degr;


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
	input Real def;
	input Real p7;
        output Real y;
    algorithm
        y :=  p7 * (1 - L) * (1 - cP) / def;
    end function_4_cP_trsl;


    function function_4_cP9_m_trscr_1
        	input Real L;
	input Real cEC;
	input Real cL;
	input Real cP;
	input Real def;
	input Real e;
	input Real g8;
	input Real g9;
	input Real n4;
	input Real n7;
	input Real q3;
        output Real y;
    algorithm
        y :=  (L * q3 * cP + (n4 + n7 * cL^e / (cL^e + g9^e)) * g8 / (cEC + g8)) / def;
    end function_4_cP9_m_trscr_1;


    function function_4_cP_degr
        	input Real L;
	input Real cP;
	input Real def;
	input Real m11;
        output Real y;
    algorithm
        y :=  m11 * cP * L / def;
    end function_4_cP_degr;


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
        	input Real D;
	input Real cP9;
	input Real def;
	input Real m13;
	input Real m22;
        output Real y;
    algorithm
        y :=  (m13 + m22 * D) * cP9 / def;
    end function_4_cP9_degr;


    function function_4_cP7_m_trscr
        	input Real cL;
	input Real cLm;
	input Real cP9;
	input Real def;
	input Real e;
	input Real f;
	input Real g10;
	input Real g11;
	input Real n8;
	input Real n9;
        output Real y;
    algorithm
        y :=  (n8 * (cLm + cL)^e / ((cLm + cL)^e + g10^e) + n9 * cP9^f / (cP9^f + g11^f)) / def;
    end function_4_cP7_m_trscr;


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
        	input Real D;
	input Real cP7;
	input Real def;
	input Real m15;
	input Real m23;
        output Real y;
    algorithm
        y :=  (m15 + m23 * D) * cP7 / def;
    end function_4_cP7_degr;


    function function_4_cCOP1c_degr
        	input Real L;
	input Real cCOP1c;
	input Real def;
	input Real m27;
	input Real p15;
        output Real y;
    algorithm
        y :=  m27 * cCOP1c * (1 + p15 * L) / def;
    end function_4_cCOP1c_degr;


    function function_4_cCOP1n_import
        	input Real cCOP1c;
	input Real def;
	input Real p6;
        output Real y;
    algorithm
        y :=  p6 * cCOP1c / def;
    end function_4_cCOP1n_import;


    function function_4_cCOP1d_activ
        	input Real L;
	input Real cCOP1n;
	input Real cP;
	input Real def;
	input Real n14;
	input Real n6;
        output Real y;
    algorithm
        y :=  (n6 * L * cP * cCOP1n + n14 * cCOP1n) / def;
    end function_4_cCOP1d_activ;


    function function_4_cCOP1d_degr
        	input Real D;
	input Real cCOP1d;
	input Real def;
	input Real m31;
	input Real m33;
        output Real y;
    algorithm
        y :=  m31 * (1 + m33 * D) * cCOP1d / def;
    end function_4_cCOP1d_degr;


    function function_4_cCOP1n_degr
        	input Real L;
	input Real cCOP1n;
	input Real def;
	input Real m27;
	input Real p15;
        output Real y;
    algorithm
        y :=  m27 * cCOP1n * (1 + p15 * L) / def;
    end function_4_cCOP1n_degr;


    function function_4_cG_m_trscr_1
        	input Real L;
	input Real cEC;
	input Real cL;
	input Real cP;
	input Real def;
	input Real e;
	input Real g14;
	input Real g15;
	input Real n12;
	input Real q2;
        output Real y;
    algorithm
        y :=  (L * q2 * cP + (n12 * g14 / (cEC + g14)) * g15^e / (cL^e + g15^e)) / def;
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


    function function_4_cG_degr
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
    end function_4_cG_degr;


    function function_4_cG_cZTL_assoc
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
    end function_4_cG_cZTL_assoc;


    function function_4_cZTL_trsl
        	input Real def;
	input Real p14;
        output Real y;
    algorithm
        y :=  p14 / def;
    end function_4_cZTL_trsl;


    function function_4_cZG_degr
        	input Real cZG;
	input Real def;
	input Real m21;
        output Real y;
    algorithm
        y :=  m21 * cZG / def;
    end function_4_cZG_degr;


    function function_4_cZTL_degr
        	input Real cZTL;
	input Real def;
	input Real m20;
        output Real y;
    algorithm
        y :=  m20 * cZTL / def;
    end function_4_cZTL_degr;


    function function_4_cG_cE3_assoc
        	input Real cE3;
	input Real cG;
	input Real def;
	input Real p17;
        output Real y;
    algorithm
        y :=  p17 * cE3 * cG / def;
    end function_4_cG_cE3_assoc;


    function function_4_cNI_m_trscr
        	input Real b;
	input Real cLm;
	input Real cP7;
	input Real def;
	input Real e;
	input Real g12;
	input Real g13;
	input Real n10;
	input Real n11;
        output Real y;
    algorithm
        y :=  (n10 * cLm^e / (cLm^e + g12^e) + n11 * cP7^b / (cP7^b + g13^b)) / def;
    end function_4_cNI_m_trscr;


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
        	input Real D;
	input Real cNI;
	input Real def;
	input Real m17;
	input Real m24;
        output Real y;
    algorithm
        y :=  (m17 + m24 * D) * cNI / def;
    end function_4_cNI_degr;


    function function_4_cT_m_trscr_1
        	input Real cEC;
	input Real cL;
	input Real def;
	input Real e;
	input Real g4;
	input Real g5;
	input Real n2;
        output Real y;
    algorithm
        y :=  (n2 * g4 / (cEC + g4)) * g5^e / (cL^e + g5^e) / def;
    end function_4_cT_m_trscr_1;


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
        	input Real D;
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
        y :=  ((m6 + m7 * D) * cT * (p5 * cZTL + cZG) + m8 * cT) / def;
    end function_4_cT_degr;


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


    function function_4_cE4_degr
        	input Real cCOP1d;
	input Real cCOP1n;
	input Real cE3n;
	input Real cE4;
	input Real cLUX;
	input Real def;
	input Real m35;
	input Real m36;
	input Real m37;
	input Real p21;
	input Real p25;
	input Real p26;
        output Real y;
    algorithm
        y :=  (m35 * cE4 + p25 * cE4 * cE3n - p21 * p25 * cE4 * cE3n / (p26 * cLUX + p21 + m37 * cCOP1d + m36 * cCOP1n)) / def;
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


    function function_4_cE3_trsl
        	input Real cE3_m;
	input Real def;
	input Real p16;
        output Real y;
    algorithm
        y :=  p16 * cE3_m / def;
    end function_4_cE3_trsl;


    function function_4_cE3_m_degr
        	input Real cE3_m;
	input Real def;
	input Real m26;
        output Real y;
    algorithm
        y :=  m26 * cE3_m / def;
    end function_4_cE3_m_degr;


    function function_4_cE3_degr
        	input Real cCOP1c;
	input Real cE3;
	input Real def;
	input Real m9;
        output Real y;
    algorithm
        y :=  m9 * cE3 * cCOP1c / def;
    end function_4_cE3_degr;


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


    function function_4_cE3n_degr
        	input Real cCOP1d;
	input Real cCOP1n;
	input Real cE3n;
	input Real cE4;
	input Real cG;
	input Real cLUX;
	input Real def;
	input Real m19;
	input Real m29;
	input Real m30;
	input Real m36;
	input Real m37;
	input Real p17;
	input Real p21;
	input Real p25;
	input Real p26;
	input Real p28;
	input Real p29;
        output Real y;
    algorithm
        y :=  ((m29 * cE3n * cCOP1n + m30 * cE3n * cCOP1d + p25 * cE4 * cE3n - p21 * p25 * cE4 * cE3n / (p26 * cLUX + p21 + m37 * cCOP1d + m36 * cCOP1n)) + p17 * cE3n * p28 * cG / (p29 + m19 + p17 * cE3n)) / def;
    end function_4_cE3n_degr;


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


    function function_4_cLUX_degr
        	input Real cCOP1d;
	input Real cCOP1n;
	input Real cE3n;
	input Real cE4;
	input Real cLUX;
	input Real def;
	input Real m36;
	input Real m37;
	input Real m39;
	input Real p21;
	input Real p25;
	input Real p26;
        output Real y;
    algorithm
        y :=  (m39 * cLUX + p26 * cLUX * p25 * cE4 * cE3n / (p26 * cLUX + p21 + m37 * cCOP1d + m36 * cCOP1n)) / def;
    end function_4_cLUX_degr;


    function function_4_cCOP1c_trsl
        	input Real def;
	input Real n5;
        output Real y;
    algorithm
        y :=  n5 / def;
    end function_4_cCOP1c_trsl;


    function function_4_cEG_degr
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
	input Real p31;
        output Real y;
    algorithm
        y :=  (m9 * cEG * cCOP1c + p18 * cEG - p31 * (p18 * cEG + p17 * cE3n * p28 * cG / (p29 + m19 + p17 * cE3n)) / (m9 * cCOP1n + m10 * cCOP1d + p31)) / def;
    end function_4_cEG_degr;


    function function_4_cEC_form
        	input Real cCOP1d;
	input Real cCOP1n;
	input Real cE3n;
	input Real cE4;
	input Real cLUX;
	input Real def;
	input Real m36;
	input Real m37;
	input Real p21;
	input Real p25;
	input Real p26;
        output Real y;
    algorithm
        y :=  p26 * cLUX * p25 * cE4 * cE3n / (p26 * cLUX + p21 + m37 * cCOP1d + m36 * cCOP1n) / def;
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
	input Real def;
	input Real g7;
	input Real m10;
	input Real m19;
	input Real m32;
	input Real m36;
	input Real m37;
	input Real m9;
	input Real p17;
	input Real p18;
	input Real p24;
	input Real p28;
	input Real p29;
	input Real p31;
        output Real y;
    algorithm
        y :=  (m36 * cCOP1n * cEC + m37 * cCOP1d * cEC + m32 * cEC * (1 + p24 * L * (p28 * cG / (p29 + m19 + p17 * cE3n) + (p18 * cEG + p17 * cE3n * p28 * cG / (p29 + m19 + p17 * cE3n)) / (m9 * cCOP1n + m10 * cCOP1d + p31))^d / ((p28 * cG / (p29 + m19 + p17 * cE3n) + (p18 * cEG + p17 * cE3n * p28 * cG / (p29 + m19 + p17 * cE3n)) / (m9 * cCOP1n + m10 * cCOP1d + p31))^d + g7^d))) / def;
    end function_4_cEC_degr;


    function function_4_cE4_m_trscr_1
        	input Real cEC;
	input Real cL;
	input Real def;
	input Real e;
	input Real g2;
	input Real g6;
	input Real n13;
        output Real y;
    algorithm
        y :=  (n13 * g2 / (cEC + g2)) * g6^e / (cL^e + g6^e) / def;
    end function_4_cE4_m_trscr_1;


    function lightfun
        	input Real t;
	input Real lightOffset;
	input Real lightAmplitude;
	input Real cyclePeriod;
	input Real photoPeriod;
	input Real phase;
	input Real twilightPeriod;
        output Real y;
    algorithm
        y :=  (lightOffset + 0.5 * lightAmplitude * (1 + tanh(cyclePeriod * ((t + phase) / cyclePeriod - floor(floor(t + phase) / cyclePeriod)) / twilightPeriod)) - 0.5 * lightAmplitude * (1 + tanh((cyclePeriod * ((t + phase) / cyclePeriod - floor(floor(t + phase) / cyclePeriod)) - photoPeriod) / twilightPeriod))) + 0.5 * lightAmplitude * (1 + tanh((cyclePeriod * ((t + phase) / cyclePeriod - floor(floor(t + phase) / cyclePeriod)) - cyclePeriod) / twilightPeriod));
    end lightfun;


    parameter Real n1 = 2.6;
    parameter Real n2 = 0.64;
    parameter Real n3 = 0.29;
    parameter Real n4 = 0.07;
    parameter Real n5 = 0.23;
    parameter Real n6 = 20.0;
    parameter Real n7 = 0.2;
    parameter Real n8 = 0.5;
    parameter Real n9 = 0.2;
    parameter Real n10 = 0.4;
    parameter Real n11 = 0.6;
    parameter Real n12 = 12.5;
    parameter Real n13 = 1.3;
    parameter Real n14 = 0.1;
    parameter Real g1 = 0.1;
    parameter Real g2 = 0.01;
    parameter Real g3 = 0.6;
    parameter Real g4 = 0.01;
    parameter Real g5 = 0.15;
    parameter Real g6 = 0.3;
    parameter Real g7 = 0.6;
    parameter Real g8 = 0.01;
    parameter Real g9 = 0.3;
    parameter Real g10 = 0.5;
    parameter Real g11 = 0.7;
    parameter Real g12 = 0.2;
    parameter Real g13 = 1.0;
    parameter Real g14 = 0.004;
    parameter Real g15 = 0.4;
    parameter Real g16 = 0.3;
    parameter Real m1 = 0.54;
    parameter Real m2 = 0.24;
    parameter Real m3 = 0.2;
    parameter Real m4 = 0.2;
    parameter Real m5 = 0.3;
    parameter Real m6 = 0.3;
    parameter Real m7 = 0.7;
    parameter Real m8 = 0.4;
    parameter Real m9 = 1.1;
    parameter Real m10 = 1.0;
    parameter Real m11 = 1.0;
    parameter Real m12 = 1.0;
    parameter Real m13 = 0.32;
    parameter Real m14 = 0.4;
    parameter Real m15 = 0.7;
    parameter Real m16 = 0.5;
    parameter Real m17 = 0.5;
    parameter Real m18 = 3.4;
    parameter Real m19 = 0.2;
    parameter Real m20 = 0.6;
    parameter Real m21 = 0.08;
    parameter Real m22 = 0.1;
    parameter Real m23 = 1.8;
    parameter Real m24 = 0.1;
    parameter Real m25 = 1.8;
    parameter Real m26 = 0.5;
    parameter Real m27 = 0.1;
    parameter Real m28 = 20.0;
    parameter Real m29 = 5.0;
    parameter Real m30 = 3.0;
    parameter Real m31 = 0.3;
    parameter Real m32 = 0.2;
    parameter Real m33 = 13.0;
    parameter Real m34 = 0.6;
    parameter Real m35 = 0.3;
    parameter Real m36 = 0.1;
    parameter Real m37 = 0.8;
    parameter Real m38 = 0.5;
    parameter Real m39 = 0.3;
    parameter Real a = 2.0;
    parameter Real b = 2.0;
    parameter Real c = 2.0;
    parameter Real d = 2.0;
    parameter Real e = 2.0;
    parameter Real f = 2.0;
    parameter Real p1 = 0.13;
    parameter Real p2 = 0.27;
    parameter Real p3 = 0.1;
    parameter Real p4 = 0.56;
    parameter Real p5 = 4.0;
    parameter Real p6 = 0.6;
    parameter Real p7 = 0.3;
    parameter Real p8 = 0.6;
    parameter Real p9 = 0.8;
    parameter Real p10 = 0.54;
    parameter Real p11 = 0.51;
    parameter Real p12 = 3.4;
    parameter Real p13 = 0.1;
    parameter Real p14 = 0.14;
    parameter Real p15 = 3.0;
    parameter Real p16 = 0.62;
    parameter Real p17 = 4.8;
    parameter Real p18 = 4.0;
    parameter Real p19 = 1.0;
    parameter Real p20 = 0.1;
    parameter Real p21 = 1.0;
    parameter Real p22 = 0.5;
    parameter Real p23 = 0.37;
    parameter Real p24 = 10.0;
    parameter Real p25 = 8.0;
    parameter Real p26 = 0.3;
    parameter Real p27 = 0.8;
    parameter Real p28 = 2.0;
    parameter Real p29 = 0.1;
    parameter Real p30 = 0.9;
    parameter Real p31 = 0.1;
    parameter Real q1 = 1.2;
    parameter Real q2 = 1.56;
    parameter Real q3 = 2.8;
    parameter Real L = 1.0;
    parameter Real D = 0.0;
    parameter Real E34 = 1.0;
    parameter Real Gn = 1.0;
    parameter Real EGn = 1.0;
    parameter Real lightOffset = 0.0;
    parameter Real cyclePeriod = 24.0;
    parameter Real lightAmplitude = 1.0;
    parameter Real phase = 0.0;
    parameter Real twilightPeriod = 0.05;
    parameter Real photoPeriod = 12.0;
    parameter Real default = 1.0;
    parameter Real def = 1.0;



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
    Real s1;
    Real s2;
    Real s3;
    Real s4;
    Real s5;
    Real s6;
    Real s7;
    Real s8;
    Real s9;
    Real s10;
    Real s11;
    Real s12;
    Real s13;
    Real s14;
    Real s15;
    Real s16;
    Real s17;
    Real s18;
    Real s19;
    Real s20;
    Real s21;
    Real s22;
    Real s23;
    Real s24;
    Real s25;
    Real s26;
    Real s27;
    Real s28;
    Real s29;
    Real s30;
    Real s31;
    Real s32;
    Real s33;
    Real s34;
    Real s35;
    Real s36;
    Real s37;
    Real s38;
    Real s39;
    Real s40;
    Real s41;
    Real s42;
    Real s43;
    Real s44;
    Real s45;
    Real s46;
    Real s47;
    Real s48;
    Real s49;
    Real s50;
    Real s51;

initial equation
    cCOP1c = 0.3269;
    cCOP1d = 0.2566;
    cCOP1n = 0.65;
    cE3 = 0.1503;
    cE3_m = 0.2991;
    cE3n = 0.0286;
    cE4 = 0.207;
    cE4_m = 0.1012;
    cEC = 0.0709;
    cEG = 0.0041;
    cG = 0.0196;
    cG_m = 0.1017;
    cL = 0.506;
    cLUX = 0.576;
    cLUX_m = 0.1012;
    cL_m = 1.0151;
    cLm = 0.0788;
    cNI = 0.0697;
    cNI_m = 0.0731;
    cP = 0.956;
    cP7 = 0.1167;
    cP7_m = 0.4016;
    cP9 = 0.0238;
    cP9_m = 0.0658;
    cT = 0.0435;
    cT_m = 0.0977;
    cZG = 0.0755;
    cZTL = 0.2505;
    s1 = 0.0;
    s2 = 0.0;
    s3 = 0.0;
    s4 = 0.0;
    s5 = 0.0;
    s6 = 0.0;
    s7 = 0.0;
    s8 = 0.0;
    s9 = 0.0;
    s10 = 0.0;
    s11 = 0.0;
    s12 = 0.0;
    s13 = 0.0;
    s14 = 0.0;
    s15 = 0.0;
    s16 = 0.0;
    s17 = 0.0;
    s18 = 0.0;
    s19 = 0.0;
    s20 = 0.0;
    s21 = 0.0;
    s22 = 0.0;
    s23 = 0.0;
    s24 = 0.0;
    s25 = 0.0;
    s26 = 0.0;
    s27 = 0.0;
    s28 = 0.0;
    s29 = 0.0;
    s30 = 0.0;
    s31 = 0.0;
    s32 = 0.0;
    s33 = 0.0;
    s34 = 0.0;
    s35 = 0.0;
    s36 = 0.0;
    s37 = 0.0;
    s38 = 0.0;
    s39 = 0.0;
    s40 = 0.0;
    s41 = 0.0;
    s42 = 0.0;
    s43 = 0.0;
    s44 = 0.0;
    s45 = 0.0;
    s46 = 0.0;
    s47 = 0.0;
    s48 = 0.0;
    s49 = 0.0;
    s50 = 0.0;
    s51 = 0.0;

equation

    der(cCOP1c) = (def * function_4_cCOP1c_trsl(def, n5)) - (def * m27 * cCOP1c * (1 + p15 * (1 - lightfun(time, lightOffset, lightAmplitude, cyclePeriod, photoPeriod, phase, twilightPeriod)))) - (def * function_4_cCOP1n_import(cCOP1c, def, p6));
    der(cCOP1d) = (def * (n6 * lightfun(time, lightOffset, lightAmplitude, cyclePeriod, photoPeriod, phase, twilightPeriod) * cP * cCOP1n + n14 * cCOP1n)) - (def * m31 * (1 + m33 * (1 - lightfun(time, lightOffset, lightAmplitude, cyclePeriod, photoPeriod, phase, twilightPeriod))) * cCOP1d);
    der(cCOP1n) = (def * function_4_cCOP1n_import(cCOP1c, def, p6)) - (def * m27 * cCOP1n * (1 + p15 * lightfun(time, lightOffset, lightAmplitude, cyclePeriod, photoPeriod, phase, twilightPeriod))) - (def * (n6 * lightfun(time, lightOffset, lightAmplitude, cyclePeriod, photoPeriod, phase, twilightPeriod) * cP * cCOP1n + n14 * cCOP1n));
    der(cE3) = (def * function_4_cE3_trsl(cE3_m, def, p16)) - (def * function_4_cE3_degr(cCOP1c, cE3, def, m9)) - (def * function_4_cE3n_import(cE3, cE3n, def, p19, p20)) - (def * function_4_cG_cE3_assoc(cE3, cG, def, p17));
    der(cE3_m) = (def * function_4_cE3_m_trscr(cL, def, e, g16, n3)) - (def * function_4_cE3_m_degr(cE3_m, def, m26));
    der(cE3n) = (def * function_4_cE3n_import(cE3, cE3n, def, p19, p20)) - (def * function_4_cE3n_degr(cCOP1d, cCOP1n, cE3n, cE4, cG, cLUX, def, m19, m29, m30, m36, m37, p17, p21, p25, p26, p28, p29));
    der(cE4) = (def * function_4_cE4_trsl(cE4_m, def, p23)) - (def * function_4_cE4_degr(cCOP1d, cCOP1n, cE3n, cE4, cLUX, def, m35, m36, m37, p21, p25, p26));
    der(cE4_m) = (def * function_4_cLUX_m_trscr(cEC, cL, def, e, g2, g6, n13)) - (def * function_4_cE4_m_degr(cE4_m, def, m34));
    der(cEC) = (def * function_4_cEC_form(cCOP1d, cCOP1n, cE3n, cE4, cLUX, def, m36, m37, p21, p25, p26)) - (def * (m36 * cCOP1n * cEC + m37 * cCOP1d * cEC + m32 * cEC * (1 + p24 * lightfun(time, lightOffset, lightAmplitude, cyclePeriod, photoPeriod, phase, twilightPeriod) * pow(p28 * cG / (p29 + m19 + p17 * cE3n) + (p18 * cEG + p17 * cE3n * p28 * cG / (p29 + m19 + p17 * cE3n)) / (m9 * cCOP1n + m10 * cCOP1d + p31), d) / (pow(p28 * cG / (p29 + m19 + p17 * cE3n) + (p18 * cEG + p17 * cE3n * p28 * cG / (p29 + m19 + p17 * cE3n)) / (m9 * cCOP1n + m10 * cCOP1d + p31), d) + pow(g7, d)))));
    der(cEG) = (def * function_4_cG_cE3_assoc(cE3, cG, def, p17)) - (def * function_4_cEG_degr(cCOP1c, cCOP1d, cCOP1n, cE3n, cEG, cG, def, m10, m19, m9, p17, p18, p28, p29, p31));
    der(cG) = (def * function_4_cG_trsl(cG_m, def, p11)) - (def * function_4_cG_degr(cE3n, cG, def, m19, p17, p28, p29)) - (def * (p12 * lightfun(time, lightOffset, lightAmplitude, cyclePeriod, photoPeriod, phase, twilightPeriod) * cZTL * cG - p13 * (1 - lightfun(time, lightOffset, lightAmplitude, cyclePeriod, photoPeriod, phase, twilightPeriod)) * cZG)) - (def * function_4_cG_cE3_assoc(cE3, cG, def, p17));
    der(cG_m) = (def * (lightfun(time, lightOffset, lightAmplitude, cyclePeriod, photoPeriod, phase, twilightPeriod) * q2 * cP + n12 * g14 / (cEC + g14) * pow(g15, e) / (pow(cL, e) + pow(g15, e)))) - (def * function_4_cG_m_degr(cG_m, def, m18));
    der(cL) = (def * cL_m * (p1 * lightfun(time, lightOffset, lightAmplitude, cyclePeriod, photoPeriod, phase, twilightPeriod) + p2)) - (def * function_4_cL_degr(c, cL, def, g3, m3, p3));
    der(cLUX) = (def * function_4_cLUX_trsl(cLUX_m, def, p27)) - (def * function_4_cLUX_degr(cCOP1d, cCOP1n, cE3n, cE4, cLUX, def, m36, m37, m39, p21, p25, p26));
    der(cLUX_m) = (def * function_4_cE4_m_trscr_1(cEC, cL, def, e, g2, g6, n13)) - (def * function_4_cLUX_m_degr(cLUX_m, def, m34));
    der(cL_m) = (def * (lightfun(time, lightOffset, lightAmplitude, cyclePeriod, photoPeriod, phase, twilightPeriod) * q1 * cP + n1 * pow(g1, a) / (pow(cP9 + cP7 + cNI + cT, a) + pow(g1, a)))) - (def * (m2 + (m1 - m2) * lightfun(time, lightOffset, lightAmplitude, cyclePeriod, photoPeriod, phase, twilightPeriod)) * cL_m);
    der(cLm) = (def * function_4_cL_modif(c, cL, def, g3, p3)) - (def * function_4_cLm_degr(cLm, def, m4));
    der(cNI) = (def * function_4_cNI_trsl(cNI_m, def, p10)) - (def * (m17 + m24 * (1 - lightfun(time, lightOffset, lightAmplitude, cyclePeriod, photoPeriod, phase, twilightPeriod))) * cNI);
    der(cNI_m) = (def * function_4_cNI_m_trscr(b, cLm, cP7, def, e, g12, g13, n10, n11)) - (def * function_4_cNI_m_degr(cNI_m, def, m16));
    der(cP) = (def * p7 * (1 - lightfun(time, lightOffset, lightAmplitude, cyclePeriod, photoPeriod, phase, twilightPeriod)) * (1 - cP)) - (def * m11 * cP * lightfun(time, lightOffset, lightAmplitude, cyclePeriod, photoPeriod, phase, twilightPeriod));
    der(cP7) = (def * function_4_cP7_trsl(cP7_m, def, p9)) - (def * (m15 + m23 * (1 - lightfun(time, lightOffset, lightAmplitude, cyclePeriod, photoPeriod, phase, twilightPeriod))) * cP7);
    der(cP7_m) = (def * function_4_cP7_m_trscr(cL, cLm, cP9, def, e, f, g10, g11, n8, n9)) - (def * function_4_cP7_m_degr(cP7_m, def, m14));
    der(cP9) = (def * function_4_cP9_trsl(cP9_m, def, p8)) - (def * (m13 + m22 * (1 - lightfun(time, lightOffset, lightAmplitude, cyclePeriod, photoPeriod, phase, twilightPeriod))) * cP9);
    der(cP9_m) = (def * (lightfun(time, lightOffset, lightAmplitude, cyclePeriod, photoPeriod, phase, twilightPeriod) * q3 * cP + (n4 + n7 * pow(cL, e) / (pow(cL, e) + pow(g9, e))) * g8 / (cEC + g8))) - (def * function_4_cP9_m_degr(cP9_m, def, m12));
    der(cT) = (def * function_4_cT_trsl(cT_m, def, p4)) - (def * ((m6 + m7 * (1 - lightfun(time, lightOffset, lightAmplitude, cyclePeriod, photoPeriod, phase, twilightPeriod))) * cT * (p5 * cZTL + cZG) + m8 * cT));
    der(cT_m) = (def * function_4_cT_m_trscr_1(cEC, cL, def, e, g4, g5, n2)) - (def * function_4_cT_m_degr(cT_m, def, m5));
    der(cZG) = (def * (p12 * lightfun(time, lightOffset, lightAmplitude, cyclePeriod, photoPeriod, phase, twilightPeriod) * cZTL * cG - p13 * (1 - lightfun(time, lightOffset, lightAmplitude, cyclePeriod, photoPeriod, phase, twilightPeriod)) * cZG)) - (def * function_4_cZG_degr(cZG, def, m21));
    der(cZTL) = (def * function_4_cZTL_trsl(def, p14)) - (def * (p12 * lightfun(time, lightOffset, lightAmplitude, cyclePeriod, photoPeriod, phase, twilightPeriod) * cZTL * cG - p13 * (1 - lightfun(time, lightOffset, lightAmplitude, cyclePeriod, photoPeriod, phase, twilightPeriod)) * cZG)) - (def * function_4_cZTL_degr(cZTL, def, m20));
    der(s1) =  - (def * (lightfun(time, lightOffset, lightAmplitude, cyclePeriod, photoPeriod, phase, twilightPeriod) * q1 * cP + n1 * pow(g1, a) / (pow(cP9 + cP7 + cNI + cT, a) + pow(g1, a))));
    der(s2) = (def * (m2 + (m1 - m2) * lightfun(time, lightOffset, lightAmplitude, cyclePeriod, photoPeriod, phase, twilightPeriod)) * cL_m) ;
    der(s3) =  - (def * cL_m * (p1 * lightfun(time, lightOffset, lightAmplitude, cyclePeriod, photoPeriod, phase, twilightPeriod) + p2));
    der(s4) = (def * function_4_cL_degr(c, cL, def, g3, m3, p3)) ;
    der(s5) =  - (def * function_4_cL_modif(c, cL, def, g3, p3));
    der(s6) = (def * function_4_cLm_degr(cLm, def, m4)) ;
    der(s7) =  - (def * p7 * (1 - lightfun(time, lightOffset, lightAmplitude, cyclePeriod, photoPeriod, phase, twilightPeriod)) * (1 - cP));
    der(s8) = (def * m11 * cP * lightfun(time, lightOffset, lightAmplitude, cyclePeriod, photoPeriod, phase, twilightPeriod)) ;
    der(s9) =  - (def * (lightfun(time, lightOffset, lightAmplitude, cyclePeriod, photoPeriod, phase, twilightPeriod) * q3 * cP + (n4 + n7 * pow(cL, e) / (pow(cL, e) + pow(g9, e))) * g8 / (cEC + g8)));
    der(s10) = (def * function_4_cP9_m_degr(cP9_m, def, m12)) ;
    der(s11) =  - (def * function_4_cP9_trsl(cP9_m, def, p8));
    der(s12) = (def * (m13 + m22 * (1 - lightfun(time, lightOffset, lightAmplitude, cyclePeriod, photoPeriod, phase, twilightPeriod))) * cP9) ;
    der(s13) =  - (def * function_4_cP7_m_trscr(cL, cLm, cP9, def, e, f, g10, g11, n8, n9));
    der(s14) = (def * function_4_cP7_m_degr(cP7_m, def, m14)) ;
    der(s15) =  - (def * function_4_cP7_trsl(cP7_m, def, p9));
    der(s16) = (def * (m15 + m23 * (1 - lightfun(time, lightOffset, lightAmplitude, cyclePeriod, photoPeriod, phase, twilightPeriod))) * cP7) ;
    der(s17) =  - (def * function_4_cNI_m_trscr(b, cLm, cP7, def, e, g12, g13, n10, n11));
    der(s18) = (def * function_4_cNI_m_degr(cNI_m, def, m16)) ;
    der(s19) =  - (def * function_4_cNI_trsl(cNI_m, def, p10));
    der(s20) = (def * (m17 + m24 * (1 - lightfun(time, lightOffset, lightAmplitude, cyclePeriod, photoPeriod, phase, twilightPeriod))) * cNI) ;
    der(s21) =  - (def * function_4_cT_m_trscr_1(cEC, cL, def, e, g4, g5, n2));
    der(s22) = (def * function_4_cT_m_degr(cT_m, def, m5)) ;
    der(s23) =  - (def * function_4_cT_trsl(cT_m, def, p4));
    der(s24) = (def * ((m6 + m7 * (1 - lightfun(time, lightOffset, lightAmplitude, cyclePeriod, photoPeriod, phase, twilightPeriod))) * cT * (p5 * cZTL + cZG) + m8 * cT)) ;
    der(s25) =  - (def * function_4_cLUX_m_trscr(cEC, cL, def, e, g2, g6, n13));
    der(s26) = (def * function_4_cE4_m_degr(cE4_m, def, m34)) ;
    der(s27) =  - (def * function_4_cE4_trsl(cE4_m, def, p23));
    der(s28) = (def * function_4_cE4_degr(cCOP1d, cCOP1n, cE3n, cE4, cLUX, def, m35, m36, m37, p21, p25, p26)) ;
    der(s29) =  - (def * function_4_cE3_m_trscr(cL, def, e, g16, n3));
    der(s30) = (def * function_4_cE3_m_degr(cE3_m, def, m26)) ;
    der(s31) =  - (def * function_4_cE3_trsl(cE3_m, def, p16));
    der(s32) = (def * function_4_cE3_degr(cCOP1c, cE3, def, m9)) ;
    der(s33) = (def * function_4_cE3n_degr(cCOP1d, cCOP1n, cE3n, cE4, cG, cLUX, def, m19, m29, m30, m36, m37, p17, p21, p25, p26, p28, p29)) ;
    der(s34) =  - (def * function_4_cE4_m_trscr_1(cEC, cL, def, e, g2, g6, n13));
    der(s35) = (def * function_4_cLUX_m_degr(cLUX_m, def, m34)) ;
    der(s36) =  - (def * function_4_cLUX_trsl(cLUX_m, def, p27));
    der(s37) = (def * function_4_cLUX_degr(cCOP1d, cCOP1n, cE3n, cE4, cLUX, def, m36, m37, m39, p21, p25, p26)) ;
    der(s38) =  - (def * function_4_cCOP1c_trsl(def, n5));
    der(s39) = (def * m27 * cCOP1c * (1 + p15 * (1 - lightfun(time, lightOffset, lightAmplitude, cyclePeriod, photoPeriod, phase, twilightPeriod)))) ;
    der(s40) = (def * m27 * cCOP1n * (1 + p15 * lightfun(time, lightOffset, lightAmplitude, cyclePeriod, photoPeriod, phase, twilightPeriod))) ;
    der(s41) = (def * m31 * (1 + m33 * (1 - lightfun(time, lightOffset, lightAmplitude, cyclePeriod, photoPeriod, phase, twilightPeriod))) * cCOP1d) ;
    der(s42) =  - (def * (lightfun(time, lightOffset, lightAmplitude, cyclePeriod, photoPeriod, phase, twilightPeriod) * q2 * cP + n12 * g14 / (cEC + g14) * pow(g15, e) / (pow(cL, e) + pow(g15, e))));
    der(s43) = (def * function_4_cG_m_degr(cG_m, def, m18)) ;
    der(s44) =  - (def * function_4_cG_trsl(cG_m, def, p11));
    der(s45) = (def * function_4_cG_degr(cE3n, cG, def, m19, p17, p28, p29)) ;
    der(s46) =  - (def * function_4_cZTL_trsl(def, p14));
    der(s47) = (def * function_4_cZTL_degr(cZTL, def, m20)) ;
    der(s48) = (def * function_4_cZG_degr(cZG, def, m21)) ;
    der(s49) = (def * function_4_cEG_degr(cCOP1c, cCOP1d, cCOP1n, cE3n, cEG, cG, def, m10, m19, m9, p17, p18, p28, p29, p31)) ;
    der(s50) =  - (def * function_4_cEC_form(cCOP1d, cCOP1n, cE3n, cE4, cLUX, def, m36, m37, p21, p25, p26));
    der(s51) = (def * (m36 * cCOP1n * cEC + m37 * cCOP1d * cEC + m32 * cEC * (1 + p24 * lightfun(time, lightOffset, lightAmplitude, cyclePeriod, photoPeriod, phase, twilightPeriod) * pow(p28 * cG / (p29 + m19 + p17 * cE3n) + (p18 * cEG + p17 * cE3n * p28 * cG / (p29 + m19 + p17 * cE3n)) / (m9 * cCOP1n + m10 * cCOP1d + p31), d) / (pow(p28 * cG / (p29 + m19 + p17 * cE3n) + (p18 * cEG + p17 * cE3n * p28 * cG / (p29 + m19 + p17 * cE3n)) / (m9 * cCOP1n + m10 * cCOP1d + p31), d) + pow(g7, d))))) ;




end BIOMD412;
