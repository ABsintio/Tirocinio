
model BIOMD519 "Smallbone2013 - Colon Crypt cycle - Version 1"

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
    parameter Real d1 = 0.420467092599869;
    parameter Real d2 = 1.10138534772246;
    parameter Real K = 120.0;
    parameter Real r0 = 1.83898685224665;
    parameter Real p01 = 0.855699855699856;
    parameter Real r1 = 5.88010232010212;
    parameter Real p12 = 0.827377484810943;
    parameter Real compartment = 1.0;

    Real T(start=0.0);
    Real f0(start=0.0);
    Real p00(start=0.0);
    Real f1(start=0.0);
    Real p11(start=0.0);

    Real N0;
    Real N1;
    Real N2;

initial equation
    N0 = 1.75444831412765;
    N1 = 27.40585059;
    N2 = 45.6191494109;

equation
    T = N0 + N1 + N2;
    f0 = r0 * N0 * (1 - T / K);
    p00 = 1 - p01;
    f1 = r1 * N1 * (1 - T / K);
    p11 = 1 - p12;
    der(N0) = (p01 * f0) + (2.0 * p00 * f0) - (d0 * N0) - (p01 * f0) - (p00 * f0);
    der(N1) = (p01 * f0) + (p12 * f1) + (2.0 * p11 * f1) - (d1 * N1) - (p12 * f1) - (p11 * f1);
    der(N2) = (p12 * f1) - (d2 * N2);




end BIOMD519;
