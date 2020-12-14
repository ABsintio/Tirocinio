
model BIOMD207 "Romond1999_CellCycle"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real Kc1 = 0.5;
    parameter Real V_M1 = 0.3;
    parameter Real V_M3 = 0.1;
    parameter Real Kc2 = 0.5;
    parameter Real U_M1 = 0.3;
    parameter Real U_M3 = 0.1;
    parameter Real vi1 = 0.05;
    parameter Real Kim1 = 0.03;
    parameter Real vd1 = 0.025;
    parameter Real K_d1 = 0.02;
    parameter Real kd1 = 0.001;
    parameter Real K1 = 0.01;
    parameter Real V2 = 0.15;
    parameter Real K2 = 0.01;
    parameter Real K3 = 0.01;
    parameter Real V4 = 0.05;
    parameter Real K4 = 0.01;
    parameter Real vi2 = 0.05;
    parameter Real Kim2 = 0.03;
    parameter Real vd2 = 0.025;
    parameter Real K_d2 = 0.02;
    parameter Real kd2 = 0.001;
    parameter Real H1 = 0.01;
    parameter Real U2 = 0.15;
    parameter Real H2 = 0.01;
    parameter Real H3 = 0.01;
    parameter Real U4 = 0.05;
    parameter Real H4 = 0.01;

    Real V1(start=0.0);
    Real V3(start=0.0);
    Real U1(start=0.0);
    Real U3(start=0.0);

    Real C1;
    Real M1;
    Real X1;
    Real C2;
    Real M2;
    Real X2;

initial equation
    C1 = 2.0;
    M1 = 1.0;
    X1 = 0.0;
    C2 = 0.0;
    M2 = 0.0;
    X2 = 0.0;

equation
    V1 = C1 / (Kc1 + C1) * V_M1;
    V3 = M1 * V_M3;
    U1 = C2 / (Kc2 + C2) * U_M1;
    U3 = M2 * U_M3;
    der(M1) = V1 * (1 - M1) / (K1 + (1 - M1)) - V2 * M1 / (K2 + M1);
    der(X1) = V3 * (1 - X1) / (K3 + (1 - X1)) - V4 * X1 / (K4 + X1);
    der(M2) = U1 * (1 - M2) / (H1 + (1 - M2)) - U2 * M2 / (H2 + M2);
    der(X2) = U3 * (1 - X2) / (H3 + (1 - X2)) - U4 * X2 / (H4 + X2);
    der(C1) = (1.0 * vi1 * Kim1 / (Kim1 + M2)) - (1.0 * vd1 * X1 * C1 / (K_d1 + C1)) - (1.0 * kd1 * C1);
    der(C2) = (1.0 * vi2 * Kim2 / (Kim2 + M1)) - (1.0 * vd2 * X2 * C2 / (K_d2 + C2)) - (1.0 * kd2 * C2);




end BIOMD207;
