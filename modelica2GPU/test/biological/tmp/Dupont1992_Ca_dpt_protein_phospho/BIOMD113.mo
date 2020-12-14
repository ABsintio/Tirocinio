
model BIOMD113 "Dupont1992_Ca_dpt_protein_phospho"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real v0 = 1.0;
    parameter Real Vm2 = 65.0;
    parameter Real n = 2.0;
    parameter Real Kp = 1.0;
    parameter Real Vm3 = 500.0;
    parameter Real m = 2.0;
    parameter Real Kr = 2.0;
    parameter Real K_A = 0.9;
    parameter Real kf = 1.0;
    parameter Real k = 10.0;
    parameter Real p = 4.0;
    parameter Real vp = 2.5;
    parameter Real Ka = 2.5;
    parameter Real q = 1.0;
    parameter Real K1 = 0.01;
    parameter Real K2 = 0.01;
    parameter Real v1_beta = 2.7;

    Real vk(start=0.0);
    Real vMK(start=20.0);

    Real Z;
    Real Y;
    Real Wt;
    Real W_star;

initial equation
    Z = 0.15;
    Y = 1.6;
    Wt = 1.0;
    W_star = 0.0;

equation
    vk = vMK * pow(Z, q) / (pow(Ka, q) + pow(Z, q));
    der(Z) = (1.0 * v0) + (1.0 * v1_beta) + (1.0 * (Vm3 * Y^m * Z^p / ((Kr^m + Y^m) * (K_A^p + Z^p)))) + (1.0 * kf * Y) - (1.0 * (Vm2 * Z^n / (Kp^n + Z^n))) - (1.0 * k * Z);
    der(Y) = (1.0 * (Vm2 * Z^n / (Kp^n + Z^n))) - (1.0 * (Vm3 * Y^m * Z^p / ((Kr^m + Y^m) * (K_A^p + Z^p)))) - (1.0 * kf * Y);
    der(Wt) = 0.0;
    der(W_star) = (1.0 * (vp / Wt) * ((vk / vp) * ((1 - W_star) / (K1 + 1 - W_star)) - W_star / (K2 + W_star))) ;



end BIOMD113;
