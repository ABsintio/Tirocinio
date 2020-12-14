
model BIOMD098 "Goldbeter1990_CalciumSpike_CICR"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real v0 = 1.0;
    parameter Real v1 = 7.3;
    parameter Real beta = 0.301;
    parameter Real Vm2 = 65.0;
    parameter Real n = 2.0;
    parameter Real K2 = 1.0;
    parameter Real Vm3 = 500.0;
    parameter Real m = 2.0;
    parameter Real Kr = 2.0;
    parameter Real Ka = 0.9;
    parameter Real kf = 1.0;
    parameter Real k = 10.0;
    parameter Real p = 4.0;



    Real Z;
    Real Y;

initial equation
    Z = 0.15;
    Y = 1.6;

equation

    der(Z) = (1.0 * v0) + (1.0 * v1 * beta) + (1.0 * (Vm3 * Y^m * Z^p / ((Kr^m + Y^m) * (Ka^p + Z^p)))) + (1.0 * kf * Y) - (1.0 * (Vm2 * Z^n / (K2^n + Z^n))) - (1.0 * k * Z);
    der(Y) = (1.0 * (Vm2 * Z^n / (K2^n + Z^n))) - (1.0 * (Vm3 * Y^m * Z^p / ((Kr^m + Y^m) * (Ka^p + Z^p)))) - (1.0 * kf * Y);




end BIOMD098;
