
model BIOMD224 "Meyer1991_CalciumSpike_ICC"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real A = 20.0;
    parameter Real B = 40.0;
    parameter Real C = 1.1;
    parameter Real D = 2.0;
    parameter Real E = 1.0;
    parameter Real F = 0.02;
    parameter Real k1 = 0.5;
    parameter Real k2 = 0.15;
    parameter Real k3 = 1.0;
    parameter Real L = 0.01;
    parameter Real R = 0.09;



    Real CaI;
    Real IP3;
    Real CaS;
    Real g;

initial equation
    CaI = 0.1;
    IP3 = 0.05;
    CaS = 1100.0;
    g = 0.0;

equation

    der(CaI) = ((1 - g) * (A * (IP3 * 0.5)^4 / (IP3 * 0.5 + k1)^4 + L) * CaS) - (B * (CaI * 0.01)^2 / ((CaI * 0.01)^2 + k2^2));
    der(IP3) = (C * (1 - (k3 / (CaI * 0.01 + k3)) * (1 / (1 + R)))) - (D * IP3 * 0.5);
    der(CaS) = (B * (CaI * 0.01)^2 / ((CaI * 0.01)^2 + k2^2)) - ((1 - g) * (A * (IP3 * 0.5)^4 / (IP3 * 0.5 + k1)^4 + L) * CaS);
    der(g) = (E * (CaI * 0.01)^4 * (1 - g)) - (F);




end BIOMD224;
