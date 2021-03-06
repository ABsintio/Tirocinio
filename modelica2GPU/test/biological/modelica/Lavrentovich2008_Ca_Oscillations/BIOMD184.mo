
model BIOMD184 "Lavrentovich2008_Ca_Oscillations"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real vin = 0.05;
    parameter Real kout = 0.5;
    parameter Real vM3 = 40.0;
    parameter Real k_CaA = 0.15;
    parameter Real n = 2.02;
    parameter Real k_CaI = 0.15;
    parameter Real m = 2.2;
    parameter Real kip3 = 0.1;
    parameter Real vM2 = 15.0;
    parameter Real k2 = 0.1;
    parameter Real kf = 0.5;
    parameter Real vp = 0.05;
    parameter Real kp = 0.3;
    parameter Real kdeg = 0.08;
    parameter Real compartment = 1.0;
    parameter Real ER = 1.0;



    Real X;
    Real Y;
    Real Z;

initial equation
    X = 0.1;
    Y = 1.5;
    Z = 0.1;

equation

    der(X) = (compartment * vin) + (ER * 4 * vM3 * k_CaA^n * (X^n / ((X^n + k_CaA^n) * (X^n + k_CaI^n))) * (Z^m / (Z^m + kip3^m)) * (Y - X)) + (ER * kf * (Y - X)) - (compartment * kout * X) - (compartment * vM2 * X^2 / (X^2 + k2^2));
    der(Y) = (compartment * vM2 * X^2 / (X^2 + k2^2)) - (ER * 4 * vM3 * k_CaA^n * (X^n / ((X^n + k_CaA^n) * (X^n + k_CaI^n))) * (Z^m / (Z^m + kip3^m)) * (Y - X)) - (ER * kf * (Y - X));
    der(Z) = (compartment * vp * X^2 / (X^2 + kp^2)) - (compartment * kdeg * Z);




end BIOMD184;
