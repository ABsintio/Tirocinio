
model BIOMD394 "Sivakumar2011 - EGF Receptor Signaling Pathway"

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



    parameter Real kcatp_r8_s124 = 0.511;
    parameter Real kM_r8_s124_s23 = 0.47;
    parameter Real kcatn_r8_s124 = 1.083;
    parameter Real kM_r8_s124_s24 = 0.786;
    parameter Real kcatp_r8_s31 = 0.727;
    parameter Real kM_r8_s31_s23 = 0.614;
    parameter Real kcatn_r8_s31 = 0.636;
    parameter Real kM_r8_s31_s24 = 1.367;
    parameter Real kI_r8_s22 = 0.583;
    parameter Real kI_r8_s29 = 1.219;
    parameter Real kI_r8_s33 = 0.293;
    parameter Real kcatp_r9 = 2.0;
    parameter Real kM_r9_s25 = 0.626;
    parameter Real kcatn_r9 = 0.693;
    parameter Real kM_r9_s26 = 0.463;
    parameter Real kcatp_r11 = 0.787;
    parameter Real kM_r11_s29 = 1.459;
    parameter Real kcatn_r11 = 0.566;
    parameter Real kM_r11_s30 = 1.021;
    parameter Real kcatp_r14 = 0.558;
    parameter Real kM_r14_s27 = 0.038;
    parameter Real kcatn_r14 = 0.725;
    parameter Real kM_r14_s28 = 1.65;
    parameter Real kass_r15 = 2.0;
    parameter Real kdiss_r15 = 0.074;
    parameter Real kass_r17_s3 = 0.73;
    parameter Real kdiss_r17_s3 = 1.13;
    parameter Real kI_re11_s142 = 1.0;
    parameter Real kass_r6_s144 = 1.0;
    parameter Real kdiss_r6_s144 = 1.0;
    parameter Real kass_r7_s144 = 1.0;
    parameter Real kdiss_r7_s144 = 1.0;
    parameter Real kass_r4_s144 = 1.0;
    parameter Real kdiss_r4_s144 = 1.0;
    parameter Real Vp_re11 = 1.0;
    parameter Real kM_re11_s129 = 1.0;
    parameter Real kM_re11_s147 = 1.0;
    parameter Real ki_re11_s129 = 1.0;
    parameter Real default = 1.0;
    parameter Real c2 = 1.0;



    Real s21;
    Real s22;
    Real s25;
    Real s26;
    Real s27;
    Real s28;
    Real s29;
    Real s30;
    Real s31;
    Real s33;
    Real s34;
    Real s23;
    Real s24;
    Real s3;
    Real s123;
    Real s124;
    Real s125;
    Real s126;
    Real s127;
    Real s129;
    Real s142;
    Real s144;
    Real s147;

initial equation
    s21 = 5.0;
    s22 = 0.0;
    s25 = 5.0;
    s26 = 0.0;
    s27 = 5.0;
    s28 = 0.0;
    s29 = 5.0;
    s30 = 0.0;
    s31 = 5.0;
    s33 = 5.0;
    s34 = 1.0;
    s23 = 5.0;
    s24 = 0.0;
    s3 = 5.0;
    s123 = 5.0;
    s124 = 5.0;
    s125 = 0.5;
    s126 = 0.0;
    s127 = 2.0;
    s129 = 0.0;
    s142 = 0.5;
    s144 = 0.0;
    s147 = 5.0;

equation

    der(s21) =  - (s144 * (kass_r7_s144 * s21 - kdiss_r7_s144 * s22));
    der(s22) = (s144 * (kass_r7_s144 * s21 - kdiss_r7_s144 * s22)) ;
    der(s25) =  - (s24 * ((kcatp_r9 / kM_r9_s25 * s25 - kcatn_r9 / kM_r9_s26 * s26) / (1 + s25 / kM_r9_s25 + s26 / kM_r9_s26)));
    der(s26) = (s24 * ((kcatp_r9 / kM_r9_s25 * s25 - kcatn_r9 / kM_r9_s26 * s26) / (1 + s25 / kM_r9_s25 + s26 / kM_r9_s26))) ;
    der(s27) =  - (s26 * ((kcatp_r14 / kM_r14_s27 * s27 - kcatn_r14 / kM_r14_s28 * s28) / (1 + s27 / kM_r14_s27 + s28 / kM_r14_s28)));
    der(s28) = (s26 * ((kcatp_r14 / kM_r14_s27 * s27 - kcatn_r14 / kM_r14_s28 * s28) / (1 + s27 / kM_r14_s27 + s28 / kM_r14_s28))) - (kass_r15 * s28 - kdiss_r15 * s34);
    der(s29) =  - (s127 * ((kcatp_r11 / kM_r11_s29 * s29 - kcatn_r11 / kM_r11_s30 * s30) / (1 + s29 / kM_r11_s29 + s30 / kM_r11_s30)));
    der(s30) = (s127 * ((kcatp_r11 / kM_r11_s29 * s29 - kcatn_r11 / kM_r11_s30 * s30) / (1 + s29 / kM_r11_s29 + s30 / kM_r11_s30))) ;
    der(s31) = 0.0;
    der(s33) = 0.0;
    der(s34) = (kass_r15 * s28 - kdiss_r15 * s34) ;
    der(s23) =  - (kI_r8_s22 / (kI_r8_s22 + s22) * (kI_r8_s29 / (kI_r8_s29 + s29)) * (kI_r8_s33 / (kI_r8_s33 + s33)) * (s124 * ((kcatp_r8_s124 / kM_r8_s124_s23 * s23 - kcatn_r8_s124 / kM_r8_s124_s24 * s24) / (1 + s23 / kM_r8_s124_s23 + s24 / kM_r8_s124_s24)) + s31 * ((kcatp_r8_s31 / kM_r8_s31_s23 * s23 - kcatn_r8_s31 / kM_r8_s31_s24 * s24) / (1 + s23 / kM_r8_s31_s23 + s24 / kM_r8_s31_s24))));
    der(s24) = (kI_r8_s22 / (kI_r8_s22 + s22) * (kI_r8_s29 / (kI_r8_s29 + s29)) * (kI_r8_s33 / (kI_r8_s33 + s33)) * (s124 * ((kcatp_r8_s124 / kM_r8_s124_s23 * s23 - kcatn_r8_s124 / kM_r8_s124_s24 * s24) / (1 + s23 / kM_r8_s124_s23 + s24 / kM_r8_s124_s24)) + s31 * ((kcatp_r8_s31 / kM_r8_s31_s23 * s23 - kcatn_r8_s31 / kM_r8_s31_s24 * s24) / (1 + s23 / kM_r8_s31_s23 + s24 / kM_r8_s31_s24)))) ;
    der(s3) = 0.0;
    der(s123) =  - (2.0 * s3 * (kass_r17_s3 * pow(s123, 2) - kdiss_r17_s3 * s129));
    der(s124) = (s144 * (kass_r4_s144 * s124 * s125 - kdiss_r4_s144 * s124 * s126)) - (s144 * (kass_r4_s144 * s124 * s125 - kdiss_r4_s144 * s124 * s126));
    der(s125) =  - (s144 * (kass_r4_s144 * s124 * s125 - kdiss_r4_s144 * s124 * s126));
    der(s126) = (s144 * (kass_r4_s144 * s124 * s125 - kdiss_r4_s144 * s124 * s126)) ;
    der(s127) = (s144 * (kass_r6_s144 * s127 - kdiss_r6_s144 * s127)) - (s144 * (kass_r6_s144 * s127 - kdiss_r6_s144 * s127));
    der(s129) = (s3 * (kass_r17_s3 * pow(s123, 2) - kdiss_r17_s3 * s129)) - (kI_re11_s142 / (kI_re11_s142 + s142) * (Vp_re11 * s129 * s147 / (ki_re11_s129 * kM_re11_s147 + kM_re11_s147 * s129 + kM_re11_s129 * s147 + s129 * s147)));
    der(s142) = 0.0;
    der(s144) = (kI_re11_s142 / (kI_re11_s142 + s142) * (Vp_re11 * s129 * s147 / (ki_re11_s129 * kM_re11_s147 + kM_re11_s147 * s129 + kM_re11_s129 * s147 + s129 * s147))) ;
    der(s147) =  - (kI_re11_s142 / (kI_re11_s142 + s142) * (Vp_re11 * s129 * s147 / (ki_re11_s129 * kM_re11_s147 + kM_re11_s147 * s129 + kM_re11_s129 * s147 + s129 * s147)));




end BIOMD394;
