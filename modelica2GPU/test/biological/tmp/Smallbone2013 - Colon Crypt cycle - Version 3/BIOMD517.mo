
model BIOMD517 "Smallbone2013 - Colon Crypt cycle - Version 3"

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



    parameter Real d0 = 0.02;
    parameter Real d1 = 0.5480597115;
    parameter Real d2 = 1.888676618;
    parameter Real K = 106.090440772217;
    parameter Real r0 = 1.998624424;
    parameter Real p01 = 0.6313780928;
    parameter Real r1 = 10.58581849;
    parameter Real p12 = 0.8050459589;
    parameter Real q03 = 0.9351494412;
    parameter Real K03 = 0.783656669828271;
    parameter Real d3 = 0.1677359306;
    parameter Real K0X = 0.153646265911768;
    parameter Real K1X = 15.3645644864404;
    parameter Real K2X = 2.70405837954268;
    parameter Real compartment = 1.0;

    Real T(start=0.0);
    Real f0(start=0.0);
    Real p00(start=0.0);
    Real f1(start=0.0);
    Real p11(start=0.0);
    Real p03(start=0.0);

    Real N0;
    Real N1;
    Real N2;
    Real N3;

initial equation
    N0 = 1.71589842441293;
    N1 = 26.8036712557471;
    N2 = 44.6167755224769;
    N3 = 1.53646349229917;

equation
    T = N0 + N1 + N2 + N3;
    f0 = r0 * N0 * (1 - T / K);
    p00 = 1 - p01 - p03;
    f1 = r1 * N1 * (1 - T / K);
    p11 = 1 - p12;
    p03 = q03 * K03 / (N3 + K03);
    der(N0) = (p01 * f0) + (2.0 * p00 * f0) + (p03 * f0) - (d0 * N0 * K0X / (N3 + K0X)) - (p01 * f0) - (p00 * f0) - (p03 * f0);
    der(N1) = (p01 * f0) + (p12 * f1) + (2.0 * p11 * f1) - (d1 * N1 * K1X / (N3 + K1X)) - (p12 * f1) - (p11 * f1);
    der(N2) = (p12 * f1) - (d2 * N2 * K2X / (N3 + K2X));
    der(N3) = (p03 * f0) - (d3 * N3);




end BIOMD517;
