
model BIOMD396 "Sivakumar2011 - Notch Signaling Pathway"

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



    parameter Real kcatp_r8 = 0.5;
    parameter Real kM_r8_s15 = 1.0;
    parameter Real kcatn_r8 = 1.5;
    parameter Real kM_r8_s19 = 2.0;
    parameter Real kM_r8_s63 = 1.5;
    parameter Real kcatp_r9 = 1.5;
    parameter Real kM_r9_s7 = 1.0;
    parameter Real kcatn_r9 = 0.04;
    parameter Real kM_r9_s22 = 0.05;
    parameter Real kass_r10 = 2.0;
    parameter Real kdiss_r10 = 0.01;
    parameter Real kI_r10_s25 = 1.0;
    parameter Real kcatp_r11 = 0.5;
    parameter Real kM_r11_s32 = 1.0;
    parameter Real kcatn_r11 = 0.5;
    parameter Real kM_r11_s26 = 1.5;
    parameter Real kM_r11_s28 = 1.0;
    parameter Real kass_r13 = 0.5;
    parameter Real kdiss_r13 = 2.0;
    parameter Real kcatp_r16 = 1.0;
    parameter Real kcatn_r16 = 1.0;
    parameter Real kM_r16_s39 = 1.0;
    parameter Real ki_r16_s39 = 1.0;
    parameter Real kass_r17 = 1.5;
    parameter Real kdiss_r17 = 1.5;
    parameter Real kcatp_r18 = 1.0;
    parameter Real kcatn_r18 = 1.5;
    parameter Real kM_r18_s4 = 1.0;
    parameter Real ki_r18_s4 = 1.5;
    parameter Real kass_r21 = 1.5;
    parameter Real kdiss_r21 = 1.5;
    parameter Real kI_r21_s2 = 1.5;
    parameter Real kcatp_r25 = 1.0;
    parameter Real kM_r25_s53 = 1.5;
    parameter Real kcatn_r25 = 1.5;
    parameter Real kM_r25_s60 = 1.25;
    parameter Real kM_r25_s15 = 1.5;
    parameter Real kcatp_r26 = 0.5;
    parameter Real kM_r26_s25 = 1.7;
    parameter Real kcatn_r26 = 1.0;
    parameter Real kM_r26_s64 = 1.61;
    parameter Real kcatp_r28 = 1.71;
    parameter Real kcatn_r28 = 1.48;
    parameter Real kM_r28_s41 = 1.64;
    parameter Real ki_r28_s41 = 1.28;
    parameter Real kcatp_r29 = 1.86;
    parameter Real kM_r29_s67 = 1.61;
    parameter Real kcatn_r29 = 1.78;
    parameter Real kM_r29_s18 = 0.15;
    parameter Real kM_r29_s15 = 1.87;
    parameter Real kass_r30 = 1.95;
    parameter Real kass_r31 = 0.055;
    parameter Real kdiss_r31 = 2.0;
    parameter Real kass_re16 = 0.004;
    parameter Real kdiss_re16 = 2.0;
    parameter Real kI_re16_s81 = 0.00594;
    parameter Real default = 1.0;
    parameter Real c1 = 1.0;
    parameter Real c5 = 1.0;



    Real s2;
    Real s4;
    Real s7;
    Real s15;
    Real s19;
    Real s21;
    Real s22;
    Real s23;
    Real s25;
    Real s27;
    Real s26;
    Real s28;
    Real s32;
    Real s29;
    Real s24;
    Real s35;
    Real s37;
    Real s38;
    Real s39;
    Real s40;
    Real s1;
    Real s18;
    Real s41;
    Real s42;
    Real s48;
    Real s53;
    Real s60;
    Real s63;
    Real s64;
    Real s65;
    Real s67;
    Real s75;
    Real s76;
    Real s77;
    Real s81;
    Real s82;

initial equation
    s2 = 5.0;
    s4 = 5.0;
    s7 = 5.0;
    s15 = 5.0;
    s19 = 0.0;
    s21 = 0.5;
    s22 = 0.0;
    s23 = 0.5;
    s25 = 0.64;
    s27 = 0.5;
    s26 = 5.0;
    s28 = 5.0;
    s32 = 0.0;
    s29 = 0.5;
    s24 = 0.0;
    s35 = 0.0;
    s37 = 0.0;
    s38 = 0.6;
    s39 = 0.5;
    s40 = 0.0;
    s1 = 5.0;
    s18 = 0.0;
    s41 = 0.0;
    s42 = 5.0;
    s48 = 5.0;
    s53 = 0.0;
    s60 = 0.0;
    s63 = 0.0;
    s64 = 0.0;
    s65 = 0.33;
    s67 = 0.0;
    s75 = 0.0;
    s76 = 5.0;
    s77 = 5.0;
    s81 = 0.0;
    s82 = 0.0;

equation

    der(s2) = 0.0;
    der(s4) =  - ((kcatp_r18 / (ki_r18_s4 * kM_r18_s4) * s42 * s1 * s4 - kcatn_r18 / kM_r18_s4 * s42 * s41) / (1 + s1 / ki_r18_s4 + s4 / ki_r18_s4 + s1 * s4 / (ki_r18_s4 * kM_r18_s4) + s41 / kM_r18_s4));
    der(s7) =  - (s23 * ((kcatp_r9 / kM_r9_s7 * s7 - kcatn_r9 / kM_r9_s22 * s22) / (1 + s7 / kM_r9_s7 + s22 / kM_r9_s22))) - ((kcatp_r28 / (ki_r28_s41 * kM_r28_s41) * s2 * s7 * s41 - kcatn_r28 / kM_r28_s41 * s2 * s67) / (1 + s7 / ki_r28_s41 + s41 / ki_r28_s41 + s7 * s41 / (ki_r28_s41 * kM_r28_s41) + s67 / kM_r28_s41));
    der(s15) = (s21 * ((kcatp_r25 * (s53 / kM_r25_s53) - kcatn_r25 * (s60 / kM_r25_s60) * (s15 / kM_r25_s15)) / (s53 / kM_r25_s53 + (1 + s60 / kM_r25_s60) * (1 + s15 / kM_r25_s15)))) + (s21 * ((kcatp_r29 * (s67 / kM_r29_s67) - kcatn_r29 * (s18 / kM_r29_s18) * (s15 / kM_r29_s15)) / (s67 / kM_r29_s67 + (1 + s18 / kM_r29_s18) * (1 + s15 / kM_r29_s15)))) - (s82 * ((kcatp_r8 * (s15 / kM_r8_s15) - kcatn_r8 * (s19 / kM_r8_s19) * (s63 / kM_r8_s63)) / (s15 / kM_r8_s15 + (1 + s19 / kM_r8_s19) * (1 + s63 / kM_r8_s63))));
    der(s19) = (s82 * ((kcatp_r8 * (s15 / kM_r8_s15) - kcatn_r8 * (s19 / kM_r8_s19) * (s63 / kM_r8_s63)) / (s15 / kM_r8_s15 + (1 + s19 / kM_r8_s19) * (1 + s63 / kM_r8_s63)))) ;
    der(s21) = 0.0;
    der(s22) = (s23 * ((kcatp_r9 / kM_r9_s7 * s7 - kcatn_r9 / kM_r9_s22 * s22) / (1 + s7 / kM_r9_s7 + s22 / kM_r9_s22))) ;
    der(s23) = 0.0;
    der(s25) =  - (s65 * ((kcatp_r26 / kM_r26_s25 * s25 - kcatn_r26 / kM_r26_s64 * s64) / (1 + s25 / kM_r26_s25 + s64 / kM_r26_s64)));
    der(s27) =  - (kass_r13 * s24 * s26 * s27 * s29 - kdiss_r13 * s35);
    der(s26) = (s24 * ((kcatp_r11 * (s32 / kM_r11_s32) - kcatn_r11 * (s26 / kM_r11_s26) * (s28 / kM_r11_s28)) / (s32 / kM_r11_s32 + (1 + s26 / kM_r11_s26) * (1 + s28 / kM_r11_s28)))) - (kass_r13 * s24 * s26 * s27 * s29 - kdiss_r13 * s35);
    der(s28) = (s24 * ((kcatp_r11 * (s32 / kM_r11_s32) - kcatn_r11 * (s26 / kM_r11_s26) * (s28 / kM_r11_s28)) / (s32 / kM_r11_s32 + (1 + s26 / kM_r11_s26) * (1 + s28 / kM_r11_s28)))) ;
    der(s32) =  - (kass_r30 * s32) - (s24 * ((kcatp_r11 * (s32 / kM_r11_s32) - kcatn_r11 * (s26 / kM_r11_s26) * (s28 / kM_r11_s28)) / (s32 / kM_r11_s32 + (1 + s26 / kM_r11_s26) * (1 + s28 / kM_r11_s28))));
    der(s29) =  - (kass_r13 * s24 * s26 * s27 * s29 - kdiss_r13 * s35);
    der(s24) = (kI_r10_s25 / (kI_r10_s25 + s25) * (kass_r10 * s63 - kdiss_r10 * s24)) - (kass_r13 * s24 * s26 * s27 * s29 - kdiss_r13 * s35) - ((kcatp_r16 / (ki_r16_s39 * kM_r16_s39) * s38 * s24 * s39 - kcatn_r16 / kM_r16_s39 * s38 * s37) / (1 + s24 / ki_r16_s39 + s39 / ki_r16_s39 + s24 * s39 / (ki_r16_s39 * kM_r16_s39) + s37 / kM_r16_s39));
    der(s35) = (kass_r13 * s24 * s26 * s27 * s29 - kdiss_r13 * s35) - (kass_r31 * s35 - kdiss_r31 * s75);
    der(s37) = ((kcatp_r16 / (ki_r16_s39 * kM_r16_s39) * s38 * s24 * s39 - kcatn_r16 / kM_r16_s39 * s38 * s37) / (1 + s24 / ki_r16_s39 + s39 / ki_r16_s39 + s24 * s39 / (ki_r16_s39 * kM_r16_s39) + s37 / kM_r16_s39)) - (kass_r17 * s37 - kdiss_r17 * s40);
    der(s38) = 0.0;
    der(s39) =  - ((kcatp_r16 / (ki_r16_s39 * kM_r16_s39) * s38 * s24 * s39 - kcatn_r16 / kM_r16_s39 * s38 * s37) / (1 + s24 / ki_r16_s39 + s39 / ki_r16_s39 + s24 * s39 / (ki_r16_s39 * kM_r16_s39) + s37 / kM_r16_s39));
    der(s40) = (kass_r17 * s37 - kdiss_r17 * s40) ;
    der(s1) =  - ((kcatp_r18 / (ki_r18_s4 * kM_r18_s4) * s42 * s1 * s4 - kcatn_r18 / kM_r18_s4 * s42 * s41) / (1 + s1 / ki_r18_s4 + s4 / ki_r18_s4 + s1 * s4 / (ki_r18_s4 * kM_r18_s4) + s41 / kM_r18_s4));
    der(s18) = (s21 * ((kcatp_r29 * (s67 / kM_r29_s67) - kcatn_r29 * (s18 / kM_r29_s18) * (s15 / kM_r29_s15)) / (s67 / kM_r29_s67 + (1 + s18 / kM_r29_s18) * (1 + s15 / kM_r29_s15)))) ;
    der(s41) = ((kcatp_r18 / (ki_r18_s4 * kM_r18_s4) * s42 * s1 * s4 - kcatn_r18 / kM_r18_s4 * s42 * s41) / (1 + s1 / ki_r18_s4 + s4 / ki_r18_s4 + s1 * s4 / (ki_r18_s4 * kM_r18_s4) + s41 / kM_r18_s4)) - (kI_r21_s2 / (kI_r21_s2 + s2) * (kass_r21 * s41 * s48 - kdiss_r21 * s53)) - ((kcatp_r28 / (ki_r28_s41 * kM_r28_s41) * s2 * s7 * s41 - kcatn_r28 / kM_r28_s41 * s2 * s67) / (1 + s7 / ki_r28_s41 + s41 / ki_r28_s41 + s7 * s41 / (ki_r28_s41 * kM_r28_s41) + s67 / kM_r28_s41));
    der(s42) = 0.0;
    der(s48) =  - (kI_r21_s2 / (kI_r21_s2 + s2) * (kass_r21 * s41 * s48 - kdiss_r21 * s53));
    der(s53) = (kI_r21_s2 / (kI_r21_s2 + s2) * (kass_r21 * s41 * s48 - kdiss_r21 * s53)) - (s21 * ((kcatp_r25 * (s53 / kM_r25_s53) - kcatn_r25 * (s60 / kM_r25_s60) * (s15 / kM_r25_s15)) / (s53 / kM_r25_s53 + (1 + s60 / kM_r25_s60) * (1 + s15 / kM_r25_s15))));
    der(s60) = (s21 * ((kcatp_r25 * (s53 / kM_r25_s53) - kcatn_r25 * (s60 / kM_r25_s60) * (s15 / kM_r25_s15)) / (s53 / kM_r25_s53 + (1 + s60 / kM_r25_s60) * (1 + s15 / kM_r25_s15)))) ;
    der(s63) = (s82 * ((kcatp_r8 * (s15 / kM_r8_s15) - kcatn_r8 * (s19 / kM_r8_s19) * (s63 / kM_r8_s63)) / (s15 / kM_r8_s15 + (1 + s19 / kM_r8_s19) * (1 + s63 / kM_r8_s63)))) - (kI_r10_s25 / (kI_r10_s25 + s25) * (kass_r10 * s63 - kdiss_r10 * s24));
    der(s64) = (s65 * ((kcatp_r26 / kM_r26_s25 * s25 - kcatn_r26 / kM_r26_s64 * s64) / (1 + s25 / kM_r26_s25 + s64 / kM_r26_s64))) ;
    der(s65) = 0.0;
    der(s67) = ((kcatp_r28 / (ki_r28_s41 * kM_r28_s41) * s2 * s7 * s41 - kcatn_r28 / kM_r28_s41 * s2 * s67) / (1 + s7 / ki_r28_s41 + s41 / ki_r28_s41 + s7 * s41 / (ki_r28_s41 * kM_r28_s41) + s67 / kM_r28_s41)) - (s21 * ((kcatp_r29 * (s67 / kM_r29_s67) - kcatn_r29 * (s18 / kM_r29_s18) * (s15 / kM_r29_s15)) / (s67 / kM_r29_s67 + (1 + s18 / kM_r29_s18) * (1 + s15 / kM_r29_s15))));
    der(s75) = (kass_r30 * s32) + (kass_r31 * s35 - kdiss_r31 * s75) ;
    der(s76) =  - (kI_re16_s81 / (kI_re16_s81 + s81) * (kass_re16 * s76 * s77 - kdiss_re16 * s82));
    der(s77) =  - (kI_re16_s81 / (kI_re16_s81 + s81) * (kass_re16 * s76 * s77 - kdiss_re16 * s82));
    der(s81) = 0.0;
    der(s82) = (kI_re16_s81 / (kI_re16_s81 + s81) * (kass_re16 * s76 * s77 - kdiss_re16 * s82)) ;




end BIOMD396;
