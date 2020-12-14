
model BIOMD084 "Hornberg2005_ERKcascade"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real Vm1_v1 = 1.0;
    parameter Real Km1_v1 = 0.1;
    parameter Real Vm2_v2 = 0.01;
    parameter Real Km2_v2 = 0.1;
    parameter Real k3_v3 = 1.0;
    parameter Real Km3_v3 = 0.1;
    parameter Real Vm4_v4 = 0.3;
    parameter Real Km4_v4 = 1.0;
    parameter Real k5_v5 = 1.0;
    parameter Real Km5_v5 = 0.1;
    parameter Real Vm6_v6 = 0.3;
    parameter Real Km6_v6 = 1.0;
    parameter Real k7_v7 = 1.0;
    parameter Real Km7_v7 = 0.1;
    parameter Real Vm8_v8 = 0.3;
    parameter Real Km8_v8 = 1.0;
    parameter Real Inh_v8 = 0.0;
    parameter Real Ki8_v8 = 1.0;



    Real R;
    Real Rin;
    Real x1;
    Real x1p;
    Real x2;
    Real x2p;
    Real x3;
    Real x3p;

initial equation
    R = 0.5;
    Rin = 0.0;
    x1 = 1.0;
    x1p = 0.0;
    x2 = 1.0;
    x2p = 0.0;
    x3 = 1.0;
    x3p = 0.0;

equation

    der(R) = (Vm2_v2 * Rin / (Km2_v2 + Rin)) - (Vm1_v1 * R / (Km1_v1 + R));
    der(Rin) = (Vm1_v1 * R / (Km1_v1 + R)) - (Vm2_v2 * Rin / (Km2_v2 + Rin));
    der(x1) = (Vm4_v4 * x1p / (Km4_v4 + x1p)) - (k3_v3 * R * x1 / (Km3_v3 + x1));
    der(x1p) = (k3_v3 * R * x1 / (Km3_v3 + x1)) - (Vm4_v4 * x1p / (Km4_v4 + x1p));
    der(x2) = (Vm6_v6 * x2p / (Km6_v6 + x2p)) - (k5_v5 * x1p * x2 / (Km5_v5 + x2));
    der(x2p) = (k5_v5 * x1p * x2 / (Km5_v5 + x2)) - (Vm6_v6 * x2p / (Km6_v6 + x2p));
    der(x3) = (Vm8_v8 * x3p / Km8_v8 / (1 + x3p / Km8_v8 + Inh_v8 / Ki8_v8)) - (k7_v7 * x2p * x3 / (Km7_v7 + x3));
    der(x3p) = (k7_v7 * x2p * x3 / (Km7_v7 + x3)) - (Vm8_v8 * x3p / Km8_v8 / (1 + x3p / Km8_v8 + Inh_v8 / Ki8_v8));




end BIOMD084;
