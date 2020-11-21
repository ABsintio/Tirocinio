model BIOMD008 "Mathematical modeling of cell division cycle (CDC) dynamics"

    parameter Real K6 = 0.30;
    parameter Real V1p = 0.75;
    parameter Real V3p = 0.30;
    parameter Real vi = 0.10;
    parameter Real a2 = 0.05;
    parameter Real alpha = 0.10;
    parameter Real d1 = 0.05;
    parameter Real k1 = 0.50;
    parameter Real K5 = 0.02;
    parameter Real kd = 0.02;
    parameter Real a1 = 0.05;
    parameter Real K3 = 0.20;
    parameter Real K4 = 0.10;
    parameter Real V4 = 0.10;
    parameter Real K1 = 0.10;
    parameter Real K2 = 0.25;
    parameter Real V2 = 0.10;
    parameter Real vs = 0.20;

    Real V1(start=0.00);
    Real V3(start=0.00);

    Real C "Cyclin";
    Real X "Protease";
    Real M "cdc2k";
    Real Y "Cyclin inhibitor";
    Real Z "Complex inhibitor-cyclin";

initial equation
    C = 0.00;
    X = 0.00;
    M = 0.00;
    Y = 1.00;
    Z = 1.00;

equation
    V1 = (C * V1p) / (C + K6);
    V3 = M * V3p;
    der(C) = vi + a2 * Z + alpha * d1 * Z + ((C * k1 * X) / (C + K5)) - C * kd - a1 * C * Y;
    der(X) = (V3 * (1 + (-(X)))) / (K3 - X + 1) - ((V4 * X) / (K4 + X));
    der(M) = (((1 - M) * V1) / (K1 - M + 1)) - ((M * V2) / (K2 + M));
    der(Y) = a2 * Z + alpha * kd * Z + vs - a1 * C * Y - d1 * Y;
    der(Z) = a1 * C * Y - a2 * Z - alpha * d1 * Z - alpha * kd * Z;
    
end BIOMD008;