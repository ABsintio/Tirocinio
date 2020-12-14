
model BIOMD185 "Locke2008_Circadian_Clock"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real v_1 = 6.8355;
    parameter Real K1 = 2.7266;
    parameter Real n = 5.6645;
    parameter Real v_2 = 8.4297;
    parameter Real K2 = 0.291;
    parameter Real vc = 6.7924;
    parameter Real K = 1.0;
    parameter Real Kc = 4.8283;
    parameter Real L = 0.0;
    parameter Real k3 = 0.1177;
    parameter Real v_4 = 1.0841;
    parameter Real K4 = 8.1343;
    parameter Real k5 = 0.3352;
    parameter Real v_6 = 4.6645;
    parameter Real K6 = 9.9849;
    parameter Real k7 = 0.2282;
    parameter Real v_8 = 3.5216;
    parameter Real K8 = 7.4519;

    Real F(start=0.0);

    Real X1;
    Real Y1;
    Real Z1;
    Real V1;
    Real X2;
    Real Y2;
    Real Z2;
    Real V2;

initial equation
    X1 = 4.25;
    Y1 = 3.25;
    Z1 = 2.25;
    V1 = 2.5;
    X2 = 0.0;
    Y2 = 0.0;
    Z2 = 0.0;
    V2 = 0.0;

equation
    F = 1 / 2 * (V1 + V2);
    der(X1) = (1.0 * v_1 * K1^n / (K1^n + Z1^n)) + (1.0 * vc * K * F / (Kc + K * F)) + (1.0 * L) - (1.0 * v_2 * X1 / (K2 + X1));
    der(Y1) = (1.0 * k3 * X1) - (1.0 * v_4 * Y1 / (K4 + Y1));
    der(Z1) = (1.0 * k5 * Y1) - (1.0 * v_6 * Z1 / (K6 + Z1));
    der(V1) = (1.0 * k7 * X1) - (1.0 * v_8 * V1 / (K8 + V1));
    der(X2) = (1.0 * v_1 * K1^n / (K1^n + Z2^n)) + (1.0 * vc * K * F / (Kc + K * F)) + (1.0 * L) - (1.0 * v_2 * X2 / (K2 + X2));
    der(Y2) = (1.0 * k3 * X2) - (1.0 * v_4 * Y2 / (K4 + Y2));
    der(Z2) = (1.0 * k5 * Y2) - (1.0 * v_6 * Z2 / (K6 + Z2));
    der(V2) = (1.0 * k7 * X2) - (1.0 * v_8 * V2 / (K8 + V2));




end BIOMD185;
