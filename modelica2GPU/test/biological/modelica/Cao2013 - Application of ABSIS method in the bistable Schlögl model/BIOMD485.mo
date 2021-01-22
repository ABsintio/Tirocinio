
model BIOMD485 "Cao2013 - Application of ABSIS method in the bistable Schlögl model"

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



    parameter Real k1 = 3.0;
    parameter Real k2 = 0.6;
    parameter Real k3 = 0.25;
    parameter Real k4 = 2.95;
    parameter Real A = 1.0;
    parameter Real B = 2.0;
    parameter Real V = 25.0;
    parameter Real value = 1.0;
    parameter Real default = 1.0;



    Real X;
    Real ES;

initial equation
    X = 1.0;
    ES = 1.0;

equation

    der(X) = (default * k1 * A * X * (X - 1) / V) + (default * k3 * B * V) - (default * (k2 / 1) * X * (X - 1) * (X - 2) / pow(V, 2)) - (default * k4 * X);
    der(ES) = (default * (k2 / 1) * X * (X - 1) * (X - 2) / pow(V, 2)) + (default * k4 * X) - (default * k1 * A * X * (X - 1) / V) - (default * k3 * B * V);




end BIOMD485;
