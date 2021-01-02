
model BIOMD382 "Sturis1991_InsulinGlucoseModel_UltradianOscillation"

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



    parameter Real v1 = 3.0;
    parameter Real v2 = 11.0;
    parameter Real v3 = 10.0;
    parameter Real t1 = 6.0;
    parameter Real t2 = 100.0;
    parameter Real t3 = 36.0;
    parameter Real I = 216.0;
    parameter Real E = 0.21;
    parameter Real compartment1 = 1.0;

    Real f1(start=0.0);
    Real f2(start=0.0);
    Real f3(start=0.0);
    Real f4(start=0.0);
    Real f5(start=0.0);

    Real x;
    Real y;
    Real z;
    Real h1;
    Real h2;
    Real h3;

initial equation
    x = 90.0;
    y = 180.0;
    z = 13000.0;
    h1 = 70.0;
    h2 = 70.0;
    h3 = 70.0;

equation
    f1 = 209 / (1 + exp(-z / (300 * v3) + 6.6));
    f2 = 72 * (1 - exp(-z / 144 * v3));
    f3 = 0.01 * z / v3;
    f5 = 180 / (1 + exp(0.29 * h3 / v1 - 7.5));
    f4 = 90 / (1 + exp(-1.772 * log(y * (1 / v2 + 1 / (E * t2))) + 7.76)) + 4;
    der(x) = f1 - E * (x / v1 - y / v2) - x / t1;
    der(y) = E * (x / v1 - y / v2) - y / t2;
    der(z) = f5 + I - f2 - f3 * f4;
    der(h1) = 3 * (x - h1) / t3;
    der(h2) = 3 * (h1 - h2) / t3;
    der(h3) = 3 * (h2 - h3) / t3;




end BIOMD382;
