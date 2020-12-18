
model BIOMD291 "Nikolaev2005_AlbuminBilirubinAdsorption"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real k1 = 0.484;
    parameter Real k2 = 0.07958;
    parameter Real k3 = 5.095e-06;
    parameter Real k4 = 2.656e-05;
    parameter Real k5 = 0.005489;
    parameter Real k6 = 3.226e-07;
    parameter Real k7 = 0.00301;
    parameter Real k8 = 1.011e-07;
    parameter Real k9 = 0.01685;
    parameter Real k10 = 0.1325;
    parameter Real K_AlB = 95000.0;
    parameter Real K_AlB2 = 3000.0;
    parameter Real n = 1.0;
    parameter Real compartment = 1.0;



    Real x1;
    Real x2;
    Real x3;
    Real x4;
    Real x5;
    Real x6;
    Real x7;
    Real A0;
    Real B0;
    Real C0;

initial equation
    x1 = 0.0;
    x2 = 0.0;
    x3 = 0.0;
    x4 = 0.0;
    A0 = 0.4615385;
    B0 = 0.1754386;
    C0 = 1.174;

equation
    x5 = A0 - x1 - x3 - x4;
    x6 = B0 - x1 - x2 - 2 * x4;
    x7 = C0 - x2 - n * x3;
    der(x1) = K_AlB * k3 * x5 * x6 - K_AlB2 * k4 * x1 * x6 - k3 * x1 - k9 * x1 * pow(x7, n + 1) + k4 * x4 + k10 * x4 * x7;
    der(x2) = k6 * x7 * x6 - k8 * x2 + k9 * x1 * pow(x7, n + 1) + k10 * x4 * x7;
    der(x3) = k5 * pow(x7, n) * x5 - k7 * x3 + k9 * x1 * pow(x7, n + 1);
    der(x4) = K_AlB2 * k4 * x1 * x6 - k4 * x4 - k10 * x4 * x7;
    der(A0) = 0.0;
    der(B0) = 0.0;
    der(C0) = 0.0;




end BIOMD291;
