
model BIOMD274 "Rattanakul2003_BoneFormationModel"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;



    parameter Real epsilon = 0.1;
    parameter Real delta = 0.9;
    parameter Real a1 = 0.05;
    parameter Real a2 = 0.009;
    parameter Real a3 = 0.675;
    parameter Real a4 = 0.01;
    parameter Real a5 = 0.005;
    parameter Real b1 = 0.1;
    parameter Real b2 = 0.3;
    parameter Real b3 = 0.01;
    parameter Real k1 = 0.1;
    parameter Real k2 = 0.5;
    parameter Real k3 = 0.025;
    parameter Real Compartment = 1.0;



    Real x;
    Real y;
    Real z;

initial equation
    x = 2.0;
    y = 1.0;
    z = 0.15;

equation

    der(x) = a1 / (k1 + y) - b1 * x;
    der(y) = epsilon * ((a2 + a3 * x) * y * z / (k2 + pow(x, 2)) - b2 * y);
    der(z) = epsilon * delta * (a4 * x - (b3 * z + a5 * x * z / (k3 + x)));




end BIOMD274;
