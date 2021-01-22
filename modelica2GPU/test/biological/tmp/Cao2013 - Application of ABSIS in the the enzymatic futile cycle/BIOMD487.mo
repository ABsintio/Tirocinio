
model BIOMD487 "Cao2013 - Application of ABSIS in the the enzymatic futile cycle"

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
    parameter Real k2 = 1.0;
    parameter Real k3 = 0.1;
    parameter Real k4 = 1.0;
    parameter Real k5 = 1.0;
    parameter Real k6 = 0.1;
    parameter Real default = 1.0;



    Real S1;
    Real S2;
    Real S3;
    Real S4;
    Real S5;
    Real S6;

initial equation
    S1 = 0.0;
    S2 = 0.0;
    S3 = 0.0;
    S4 = 0.0;
    S5 = 0.0;
    S6 = 0.0;

equation

    der(S1) = (k2 * S3) + (k3 * S3) - (k1 * S1 * S2);
    der(S2) = (k2 * S3) + (k6 * S6) - (k1 * S1 * S2);
    der(S3) = (k1 * S1 * S2) - (k2 * S3) - (k3 * S3);
    der(S4) = (k5 * S6) + (k6 * S6) - (k4 * S4 * S5);
    der(S5) = (k3 * S3) + (k5 * S6) - (k4 * S4 * S5);
    der(S6) = (k4 * S4 * S5) - (k5 * S6) - (k6 * S6);




end BIOMD487;
