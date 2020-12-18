
model BIOMD298 "Leloup1999_CircadianRhythms_Drosophila"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real vsP = 1.1;
    parameter Real vmP = 1.0;
    parameter Real KmP = 0.2;
    parameter Real KIP = 1.0;
    parameter Real ksP = 0.9;
    parameter Real vdP = 2.2;
    parameter Real KdP = 0.2;
    parameter Real vsT = 1.0;
    parameter Real vmT = 0.7;
    parameter Real KmT = 0.2;
    parameter Real KIT = 1.0;
    parameter Real ksT = 0.9;
    parameter Real vdT = 3.0;
    parameter Real KdT = 0.2;
    parameter Real kdC = 0.01;
    parameter Real kdN = 0.01;
    parameter Real k1 = 0.8;
    parameter Real k2 = 0.2;
    parameter Real k3 = 1.2;
    parameter Real k4 = 0.6;
    parameter Real kd = 0.01;
    parameter Real V1P = 8.0;
    parameter Real V1T = 8.0;
    parameter Real V2P = 1.0;
    parameter Real V2T = 1.0;
    parameter Real V3P = 8.0;
    parameter Real V3T = 8.0;
    parameter Real V4P = 1.0;
    parameter Real V4T = 1.0;
    parameter Real K1P = 2.0;
    parameter Real K1T = 2.0;
    parameter Real K2P = 2.0;
    parameter Real K2T = 2.0;
    parameter Real K3P = 2.0;
    parameter Real K3T = 2.0;
    parameter Real K4P = 2.0;
    parameter Real K4T = 2.0;
    parameter Real n = 4.0;
    parameter Real Compartment = 1.0;

    Real Pt(start=0.0);

    Real MP;
    Real CN;
    Real C;
    Real T2;
    Real T1;
    Real T0;
    Real MT;
    Real P0;
    Real P1;
    Real P2;

initial equation
    MP = 0.0614368;
    CN = 1.34728;
    C = 0.207614;
    T2 = 0.0145428;
    T1 = 0.0213384;
    T0 = 0.0217261;
    MT = 0.0860342;
    P0 = 0.0169928;
    P1 = 0.0141356;
    P2 = 0.0614368;

equation
    Pt = P0 + P1 + P2 + C + CN;
    der(MP) = vsP * (pow(KIP, n) / (pow(KIP, n) + pow(CN, n))) - (vmP * (MP / (KmP + MP)) + kd * MP);
    der(P0) = ksP * MP + V2P * (P1 / (K2P + P1)) - (V1P * (P0 / (K1P + P0)) + kd * P0);
    der(P1) = V1P * (P0 / (K1P + P0)) + V4P * (P2 / (K4P + P2)) - (V2P * (P1 / (K2P + P1)) + V3P * (P1 / (K3P + P1)) + kd * P1);
    der(P2) = V3P * (P1 / (K3P + P1)) + k4 * C - (V4P * (P2 / (K4P + P2)) + k3 * P2 * T2 + vdP * (P2 / (KdP + P2)) + kd * P2);
    der(MT) = vsT * (pow(KIT, n) / (pow(KIT, n) + pow(CN, n))) - (vmT * (MT / (KmT + MT)) + kd * MT);
    der(T0) = ksT * MT + V2T * (T1 / (K2T + T1)) - (V1T * (T0 / (K1T + T0)) + kd * T0);
    der(T1) = V1T * (T0 / (K1T + T0)) + V4T * (T2 / (K4T + T2)) - (V2T * (T1 / (K2T + T1)) + V3T * (T1 / (K3T + T1)) + kd * T1);
    der(T2) = V3T * (T1 / (K3T + T1)) + k4 * C - (V4T * (T2 / (K4T + T2)) + k3 * P2 * T2 + vdT * (T2 / (KdT + T2)) + kd * T2);
    der(C) = k3 * P2 * T2 + k2 * CN - (k4 * C + k1 * C + kdC * C);
    der(CN) = k1 * C - (k2 * CN + kdN * CN);




end BIOMD298;
