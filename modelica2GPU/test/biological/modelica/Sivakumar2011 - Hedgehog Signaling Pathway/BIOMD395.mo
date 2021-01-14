
model BIOMD395 "Sivakumar2011 - Hedgehog Signaling Pathway"

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



    parameter Real kass_r7 = 1.13;
    parameter Real kdiss_r7 = 1.122;
    parameter Real kcatp_r14 = 1.146;
    parameter Real kM_r14_s69 = 1.03;
    parameter Real kcatn_r14 = 1.75;
    parameter Real kM_r14_s46 = 0.215;
    parameter Real kass_r25 = 1.27;
    parameter Real kdiss_r25 = 0.73;
    parameter Real kass_r26 = 1.33;
    parameter Real kdiss_r26 = 0.61;
    parameter Real kass_r51 = 1.23;
    parameter Real kdiss_r51 = 0.46;
    parameter Real kass_r52 = 0.6;
    parameter Real kdiss_r52 = 1.67;
    parameter Real kcatp_r53 = 1.29;
    parameter Real kM_r53_s70 = 0.79;
    parameter Real kcatn_r53 = 1.62;
    parameter Real kass_r54 = 1.28;
    parameter Real kdiss_r54 = 0.71;
    parameter Real kass_r55 = 1.56;
    parameter Real kass_r15_s21 = 1.53;
    parameter Real kdiss_r15_s21 = 0.89;
    parameter Real kass_re24_s157 = 1.0;
    parameter Real kass_r23_s21 = 1.0;
    parameter Real kdiss_r23_s21 = 1.0;
    parameter Real default = 1.0;
    parameter Real c1 = 1.0;
    parameter Real c4 = 1.0;
    parameter Real c5 = 1.0;



    Real s9;
    Real s10;
    Real s1;
    Real s75;
    Real s135;
    Real s7;
    Real s21;
    Real s46;
    Real s48;
    Real s69;
    Real s71;
    Real s68;
    Real s70;
    Real s128;
    Real s140;
    Real s148;
    Real s150;
    Real s152;
    Real s157;
    Real s158;
    Real s159;
    Real s160;
    Real s161;

initial equation
    s9 = 2.0;
    s10 = 0.0;
    s1 = 5.0;
    s75 = 0.0;
    s135 = 2.5;
    s7 = 5.0;
    s21 = 0.0;
    s46 = 0.0;
    s48 = 0.0;
    s69 = 0.0;
    s71 = 2.0;
    s68 = 0.0;
    s70 = 0.0;
    s128 = 2.5;
    s140 = 0.0;
    s148 = 3.0;
    s150 = 3.0;
    s152 = 0.0;
    s157 = 0.5;
    s158 = 0.0;
    s159 = 0.0;
    s160 = 0.0;
    s161 = 0.0;

equation

    der(s9) =  - (s21 * (kass_r15_s21 * s46 * s9 - kdiss_r15_s21 * s48 * s10));
    der(s10) = (s21 * (kass_r15_s21 * s46 * s9 - kdiss_r15_s21 * s48 * s10)) ;
    der(s1) =  - (kass_r7 * s7 * s1 - kdiss_r7 * s21);
    der(s75) = (kass_r52 * s140 - kdiss_r52 * s75) + (kass_r55 * s158) ;
    der(s135) =  - (kass_r51 * s135 * s128 - kdiss_r51 * s140);
    der(s7) =  - (kass_r7 * s7 * s1 - kdiss_r7 * s21);
    der(s21) = (kass_r7 * s7 * s1 - kdiss_r7 * s21) ;
    der(s46) = (s21 * ((kcatp_r14 / kM_r14_s69 * s69 - kcatn_r14 / kM_r14_s46 * s46) / (1 + s69 / kM_r14_s69 + s46 / kM_r14_s46))) - (s21 * (kass_r15_s21 * s46 * s9 - kdiss_r15_s21 * s48 * s10));
    der(s48) = (s21 * (kass_r15_s21 * s46 * s9 - kdiss_r15_s21 * s48 * s10)) ;
    der(s69) = (kass_r25 * s160 - kdiss_r25 * s161 * s69) - (s21 * ((kcatp_r14 / kM_r14_s69 * s69 - kcatn_r14 / kM_r14_s46 * s46) / (1 + s69 / kM_r14_s69 + s46 / kM_r14_s46)));
    der(s71) =  - (kass_r54 * s70 * s71 - kdiss_r54 * s158);
    der(s68) = (s21 * (kass_r23_s21 * s159 - kdiss_r23_s21 * s68 * s160)) ;
    der(s70) = (s48 * ((kcatp_r53 / kM_r53_s70 * s70 - kcatn_r53 / kM_r53_s70 * s70) / (1 + s70 / kM_r53_s70 + s70 / kM_r53_s70))) + (kass_r26 * s161 - kdiss_r26 * s70) - (s48 * ((kcatp_r53 / kM_r53_s70 * s70 - kcatn_r53 / kM_r53_s70 * s70) / (1 + s70 / kM_r53_s70 + s70 / kM_r53_s70))) - (kass_r54 * s70 * s71 - kdiss_r54 * s158);
    der(s128) =  - (kass_r51 * s135 * s128 - kdiss_r51 * s140);
    der(s140) = (kass_r51 * s135 * s128 - kdiss_r51 * s140) - (kass_r52 * s140 - kdiss_r52 * s75);
    der(s148) =  - (s157 * kass_re24_s157 * s148 * s150);
    der(s150) =  - (s157 * kass_re24_s157 * s148 * s150);
    der(s152) = 0.0;
    der(s157) = 0.0;
    der(s158) = (kass_r54 * s70 * s71 - kdiss_r54 * s158) - (kass_r55 * s158);
    der(s159) = (s157 * kass_re24_s157 * s148 * s150) - (s21 * (kass_r23_s21 * s159 - kdiss_r23_s21 * s68 * s160));
    der(s160) = (s21 * (kass_r23_s21 * s159 - kdiss_r23_s21 * s68 * s160)) - (kass_r25 * s160 - kdiss_r25 * s161 * s69);
    der(s161) = (kass_r25 * s160 - kdiss_r25 * s161 * s69) - (kass_r26 * s161 - kdiss_r26 * s70);




end BIOMD395;
