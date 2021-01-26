
model BIOMD548 "Sneppen2009 - Modeling proteasome dynamics in Parkinson's disease"

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



    parameter Real m = 25.0;
    parameter Real gamma = 1.0;
    parameter Real nu = 1.0;
    parameter Real sigma = 1.0;
    parameter Real Brain = 1.0;



    Real F;
    Real P;
    Real C;

initial equation
    F = 135.0;
    P = 0.0;
    C = 18.0;

equation

    der(F) = m / (1 + P) - gamma * F * P;
    der(P) = sigma - P - gamma * F * P + nu * C;
    der(C) = gamma * F * P - nu * C;




end BIOMD548;
