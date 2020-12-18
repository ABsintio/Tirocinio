
model BIOMD233 "Wilhelm2009_BistableReaction"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;



    parameter Real k1_0 = 8.0;
    parameter Real k2_1 = 1.0;
    parameter Real k3_2 = 1.0;
    parameter Real k4_3 = 1.5;
    parameter Real batch = 1.0;



    Real S;
    Real P;
    Real X;
    Real Y;

initial equation
    S = 1.0;
    P = 1.0;
    X = 1.0;
    Y = 1.0;

equation

    der(S) = 0.0;
    der(P) = 0.0;
    der(X) = (2.0 * k1_0 * S * Y) + (k2_1 * X^2) - (2.0 * k2_1 * X^2) - (k3_2 * X * Y) - (k4_3 * X);
    der(Y) = (k2_1 * X^2) + (k3_2 * X * Y) - (k1_0 * S * Y) - (k3_2 * X * Y);




end BIOMD233;
