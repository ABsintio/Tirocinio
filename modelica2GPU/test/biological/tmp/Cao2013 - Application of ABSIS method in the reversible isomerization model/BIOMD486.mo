
model BIOMD486 "Cao2013 - Application of ABSIS method in the reversible isomerization model"

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



    parameter Real k1 = 0.12;
    parameter Real k2 = 1.0;
    parameter Real default = 1.0;



    Real A;
    Real B;

initial equation
    A = 0.0;
    B = 0.0;

equation

    der(A) = (k2 * B) - (k1 * A);
    der(B) = (k1 * A) - (k2 * B);




end BIOMD486;
