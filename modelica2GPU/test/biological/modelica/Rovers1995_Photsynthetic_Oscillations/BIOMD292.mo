
model BIOMD292 "Rovers1995_Photsynthetic_Oscillations"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;



    parameter Real k1 = 0.123;
    parameter Real k2 = 0.625;
    parameter Real k3 = 0.3;
    parameter Real k4 = 0.614;
    parameter Real N0 = 1.2;
    parameter Real A0 = 2.5;
    parameter Real c = 1.0;



    Real NADPH;
    Real ADP;
    Real ATP;
    Real X;
    Real Y;
    Real NADP;

initial equation
    NADPH = 0.7;
    ATP = 0.5;
    X = 2.0;
    Y = 1.0;

equation
    NADP = N0 - NADPH;
    ADP = A0 - ATP;
    der(NADPH) = (c * k4 * NADP) - (c * k2 * ATP);
    der(ATP) = (2.0 * c * k3 * ADP * NADP) - (c * k2 * ATP) - (c * k1 * X);
    der(X) = (c * k2 * ATP) - (c * k1 * X);
    der(Y) = 0.0;




end BIOMD292;
