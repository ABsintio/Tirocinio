
model BIOMD467 "Koo2013 - Shear stress induced NO production - Model 4"

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



    parameter Real k1 = 0.004;
    parameter Real k1r = 10.3;
    parameter Real k2 = 0.08;
    parameter Real k2r = 1152.0;
    parameter Real k4 = 0.015;
    parameter Real k3 = 0.00015;
    parameter Real k3r = 1.5;
    parameter Real k10 = 0.1;
    parameter Real Km10 = 5.0;
    parameter Real Km10r = 20.0;
    parameter Real V10r = 4.0;
    parameter Real k6 = 0.002;
    parameter Real k7 = 1.5;
    parameter Real kD = 9.45e-05;
    parameter Real k5 = 115.2;
    parameter Real kCaM_11 = 17.0;
    parameter Real kp_11 = 5.0;
    parameter Real kpCaM_11 = 17.0;
    parameter Real default = 1.0;
    parameter Real c1 = 1.0;



    Real s3;
    Real s27;
    Real s45;
    Real s47;
    Real s48;
    Real s50;
    Real s51;
    Real s52;
    Real s57;
    Real s58;
    Real s60;
    Real s61;
    Real s62;
    Real s63;
    Real s64;
    Real s65;
    Real s66;
    Real s116;
    Real s117;
    Real s118;

initial equation
    s3 = 117.2;
    s27 = 1.723;
    s45 = 0.0415;
    s47 = 2.827;
    s48 = 347.52;
    s50 = 2.12;
    s51 = 34.98;
    s52 = 7635.36;
    s57 = 199987.0;
    s58 = 1.037;
    s60 = 0.0089;
    s61 = 10.98;
    s62 = 0.106;
    s63 = 500000.0;
    s64 = 0.0;
    s65 = 0.643;
    s66 = 0.083;
    s116 = 0.0;
    s117 = 0.0;
    s118 = 0.0;

equation

    der(s3) = 0.0;
    der(s27) = 0.0;
    der(s45) = (k4 * s47 * s51) - (k5 * s45 - k2 * s3 * s50) - (k6 * s45 * s57) - (kD * s45);
    der(s47) = (k2 * s3 * s48 - k2r * s47) + (kD * s45) + (kD * s58) + (kD * s60) - (k4 * s47 * s51);
    der(s48) = (k1 * s3 * s52 - k1r * s48) + (k3r * s62 - k3 * s65 * s48) + (kD * s50) + (kD * s61) + (kD * s62) - (k3 * s51 * s48 - k3r * s50) - (k2 * s3 * s48 - k2r * s47);
    der(s50) = (k3 * s51 * s48 - k3r * s50) + (k5 * s45 - k2 * s3 * s50) + (k7 * s61) - (kD * s50);
    der(s51) = (k7 * s66) - (k4 * s47 * s51) - (k3 * s51 * s48 - k3r * s50) - (kD * s51);
    der(s52) =  - (k1 * s3 * s52 - k1r * s48);
    der(s57) = (k7 * s61) + (k7 * s66) + (kD * s66) + (kD * s65) + (kD * s61) + (kD * s62) + (kD * s58) + (kD * s60) - (k6 * s45 * s57);
    der(s58) = (k6 * s45 * s57) - (k5 * s58 - k2 * s3 * s61) - (k10 * s58 * s27 / (s58 + Km10) - V10r * s60 / (s60 + Km10r)) - (kD * s58);
    der(s60) = (k10 * s58 * s27 / (s58 + Km10) - V10r * s60 / (s60 + Km10r)) - (k5 * s60 - k2 * s3 * s62) - (kD * s60);
    der(s61) = (k5 * s58 - k2 * s3 * s61) - (k7 * s61) - (k10 * s61 * s27 / (s61 + Km10) - V10r * s62 / (s62 + Km10r)) - (kD * s61);
    der(s62) = (k5 * s60 - k2 * s3 * s62) + (k10 * s61 * s27 / (s61 + Km10) - V10r * s62 / (s62 + Km10r)) - (k3r * s62 - k3 * s65 * s48) - (kD * s62);
    der(s63) =  - (kCaM_11 * (s45 + s58) + kp_11 * (s62 + s65) + kp_11CaM * s60);
    der(s64) = (kCaM_11 * (s45 + s58) + kp_11 * (s62 + s65) + kp_11CaM * s60) ;
    der(s65) = (k3r * s62 - k3 * s65 * s48) - (V10r * s65 / (s65 + Km10r)) - (kD * s65);
    der(s66) = (V10r * s65 / (s65 + Km10r)) - (k7 * s66) - (kD * s66);
    der(s116) = (kD * s51) ;
    der(s117) = (kD * s45) + (kD * s50) ;
    der(s118) = (kD * s66) + (kD * s65) ;




end BIOMD467;
