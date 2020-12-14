
model BIOMD100 "Rozi2003_GlycogenPhosphorylase_Activation"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real v0 = 2.0;
    parameter Real v1 = 2.0;
    parameter Real beta = 0.5;
    parameter Real Vm2 = 6.0;
    parameter Real K2 = 0.1;
    parameter Real Vm3 = 20.0;
    parameter Real m = 2.0;
    parameter Real Ka = 0.2;
    parameter Real Ky = 0.2;
    parameter Real Kz = 0.5;
    parameter Real Kf = 1.0;
    parameter Real K = 10.0;
    parameter Real V4 = 2.0;
    parameter Real Vm5 = 30.0;
    parameter Real n = 4.0;
    parameter Real K5 = 1.0;
    parameter Real Kd = 0.4;
    parameter Real epsilon = 0.1;
    parameter Real Vpm1 = 1.5;
    parameter Real gamma = 9.0;
    parameter Real Ka5 = 0.5;
    parameter Real K1 = 0.1;
    parameter Real Ka6 = 0.5;
    parameter Real Vpm2 = 0.6;
    parameter Real alpha = 9.0;
    parameter Real G = 10000.0;
    parameter Real Ka1 = 10000.0;
    parameter Real Kp2 = 0.2;
    parameter Real Ka2 = 10000.0;
    parameter Real p = 2.0;



    Real EC;
    Real Z;
    Real A;
    Real Y;
    Real GP;

initial equation
    EC = 1000.0;
    Z = 0.0;
    A = 0.45;
    Y = 0.36;
    GP = 1.0;

equation

    der(EC) = 0.0;
    der(Z) = (1.0 * (v0 + v1 * beta)) + (1.0 * Vm3 * A^4 * Y^2 * Z^m / ((Ka^4 + A^4) * (Ky^2 + Y^2) * (Kz^m + Z^m))) + (1.0 * Kf * Y) - (1.0 * (Vm2 * Z^2 / (K2^2 + Z^2))) - (1.0 * K * Z);
    der(A) = (1.0 * beta * V4) - (1.0 * Vm5 * A^p * Z^n / ((K5^p + A^p) * (Kd^n + Z^n))) - (1.0 * epsilon * A);
    der(Y) = (1.0 * (Vm2 * Z^2 / (K2^2 + Z^2))) - (1.0 * Vm3 * A^4 * Y^2 * Z^m / ((Ka^4 + A^4) * (Ky^2 + Y^2) * (Kz^m + Z^m))) - (1.0 * Kf * Y);
    der(GP) = (1.0 * (Vpm1 * (1 + gamma * Z^4 / (Ka5^4 + Z^4)) * (1 - GP) / (K1 / (1 + Z^4 / Ka6^4) + 1 - GP))) - (1.0 * (Vpm2 * (1 + alpha * G / (Ka1 + G)) * GP / (Kp2 / (1 + G / Ka2) + GP)));



end BIOMD100;
