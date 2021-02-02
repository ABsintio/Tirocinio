
model BIOMD566 "Morris2008 - Fitting protein aggregation data via F-W 2-step mechanism"

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



    parameter Real k1 = 8e-06;
    parameter Real k2 = 0.034;
    parameter Real A0 = 3.55;
    parameter Real Brain = 1.0;



    Real B;
    Real A;

initial equation
    A = 1.0;

equation
    B = A0 - (k1 / k2 + A0) / (1 + k1 / (k2 * A0) * exp((k1 + k2 * A0) * time));
    der(A) = 0.0;




end BIOMD566;
