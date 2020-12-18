
model BIOMD312 "Tyson2003_Perfect_Adaption"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;



    parameter Real k1 = 2.0;
    parameter Real k2 = 2.0;
    parameter Real k3 = 1.0;
    parameter Real k4 = 1.0;
    parameter Real tau = 4.0;
    parameter Real env = 1.0;



    Real R;
    Real X;
    Real S;

initial equation
    R = k1 * k4 / (k2 * k3);
    X = 0.0;

equation
    S = 1 * floor(time / tau);
    der(R) = (env * k1 * S) - (env * k2 * R * X);
    der(X) = (env * k3 * S) - (env * k4 * X);




end BIOMD312;
