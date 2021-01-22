
model BIOMD484 "Cao2013 - Application of ABSIS method in birth-death process"

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



    parameter Real k1 = 1.0;
    parameter Real k2 = 0.025;
    parameter Real default = 1.0;



    Real S;
    Real ES;

initial equation
    S = 0.0;
    ES = 0.0;

equation

    der(S) = (default * k1) - (k2 * S);
    der(ES) = (k2 * S) - (default * k1);




end BIOMD484;
