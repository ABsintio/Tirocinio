
model BIOMD520 "Smallbone2013 - Colon Crypt cycle - Version 0"

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



    parameter Real d0 = 0.1;
    parameter Real b0 = 0.218;
    parameter Real c0 = 1.0;
    parameter Real m0 = 2.92408052354609;
    parameter Real a0 = 0.0999999999999998;
    parameter Real d1 = 0.263;
    parameter Real b1 = 0.547;
    parameter Real c1 = 1.0;
    parameter Real m1 = 29.2408052354609;
    parameter Real a1 = 0.239254806051979;
    parameter Real d2 = 1.83;
    parameter Real compartment = 1.0;

    Real T(start=0.0);

    Real N0;
    Real N1;
    Real N2;

initial equation
    N0 = 1.75444831412765;
    N1 = 43.8146704098797;
    N2 = 27.4558812768926;

equation
    T = N0 + N1 + N2;
    der(N0) = ((b0 + c0 * N0 / (N0 + m0)) * N0) + (2.0 * a0 * N0) - (d0 * N0) - ((b0 + c0 * N0 / (N0 + m0)) * N0) - (a0 * N0);
    der(N1) = ((b0 + c0 * N0 / (N0 + m0)) * N0) + ((b1 + c1 * N1 / (N1 + m1)) * N1) + (2.0 * a1 * N1) - (d1 * N1) - ((b1 + c1 * N1 / (N1 + m1)) * N1) - (a1 * N1);
    der(N2) = ((b1 + c1 * N1 / (N1 + m1)) * N1) - (d2 * N2);




end BIOMD520;
