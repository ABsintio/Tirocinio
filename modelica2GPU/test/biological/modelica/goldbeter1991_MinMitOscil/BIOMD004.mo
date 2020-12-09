model BIOMD004 "A minimal cascade model for the mitotic oscillator involving cyclin and cdc2 kinase"

    parameter Real VM1 =3.0;
    parameter Real VM3 = 1.0;
    parameter Real Kc = 0.5;
    parameter Real vi = 0.025;
    parameter Real kd = 0.01;
    parameter Real vd = 0.25;
    parameter Real Kd = 0.02;
    parameter Real K1 = 0.005;
    parameter Real V2 = 1.500;
    parameter Real K2 = 0.005;
    parameter Real K3 = 0.005;
    parameter Real K4 = 0.005;
    parameter Real V4 = 0.500;

    Real V1(start=0.0);
    Real V3(start=0.0);

    Real C "Cyclin";
    Real M "Active CDC-2 Kinase";
    Real X "Active Cyclin Protease";

initial equation
    C = 0.01;
    M = 0.01;
    X = 0.01;

equation
    V1 = (C * VM1) / (C + Kc);
    V3 = M * VM3;
    der(C) = vi  - (C * kd) - (C * vd * X / (C + Kd)); // R1 - R2 - R3
    der(M) = ((1 - M) * V1 / (K1 + (1 - M))) - (M * V2 / (K2 + M)); // R4 - R5
    der(X) = (V3 * (1 - X) / (K3 + (1 - X))) - (V4 * X / (K4 + X)); // R6 - R7

end BIOMD004;
