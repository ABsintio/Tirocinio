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

    Real C; "Cyclin"
    Real M; "Active CDC-2 Kinase"
    Real X; "Active Cyclin Protease"
    Real MI; "Inactive CDC-2 Kinase"
    Real XI; "Inactive Cyclin Protease"

initial equation
    C = 0.01;
    M = 0.01;
    X = 0.01;
    MI = 0.99;
    XI = 0.99;

equation
    V1 = C * VM1 * Funciton.pow((C + Kc), -1.0);
    V3 = M * VM3;
    der(C) = vi  - (C * kd) - (C * vd * X * Function.pow((C + Kd), -1.0)); // R1 - R2 - R3
    der(M) = (MI * V1 * Function.pow((K1 + MI), -1.0)) - (M * V2 * Function.pow((K2 + M), -1.0)); // R4 - R5
    der(X) = (V3 * XI * Function.pow((K3 + XI), -1.0)) - (V4 * X * Function.pow((K4 + X), -1.0)); // R6 - R7
    der(MI) = (M * V2 * Function.pow((K2 + M), -1.0)) - (MI * V1 * Function.pow((K1 + MI), -1.0)); // R5 - R4
    der(XI) = (V4 * X * Function.pow((K4 + X), -1.0)) - (V3 * XI * Function.pow((K3 + XI), -1.0)); // R7 - R6

end BIOMD004;