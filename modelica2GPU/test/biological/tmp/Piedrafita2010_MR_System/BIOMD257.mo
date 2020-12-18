
model BIOMD257 "Piedrafita2010_MR_System"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real k1 = 10.0;
    parameter Real k1r = 10.0;
    parameter Real k2 = 10.0;
    parameter Real k2r = 10.0;
    parameter Real k3 = 2.0;
    parameter Real k3r = 1.0;
    parameter Real k4 = 0.3;
    parameter Real k5 = 1.0;
    parameter Real k5r = 1.0;
    parameter Real k6 = 1.0;
    parameter Real k6r = 1.0;
    parameter Real k7 = 0.1;
    parameter Real k7r = 0.1;
    parameter Real k9 = 0.1;
    parameter Real k9r = 0.05;
    parameter Real k10 = 0.05;
    parameter Real k10r = 0.05;
    parameter Real env = 1.0;

    Real k8(start=0.0);
    Real k11(start=0.0);

    Real S;
    Real U;
    Real T;
    Real STU;
    Real STUS;
    Real STUST;
    Real STUSU;
    Real SU;
    Real ST;
    Real SUST;
    Real SUSTU;

initial equation
    S = 4.0;
    U = 1.0;
    T = 2.0;
    STU = 5.0;
    STUS = 0.0;
    STUST = 0.0;
    STUSU = 0.0;
    SU = 0.0;
    ST = 0.0;
    SUST = 0.0;
    SUSTU = 0.0;

equation
    k8 = k4;
    k11 = k4;
    der(S) = 0.0;
    der(U) = 0.0;
    der(T) = 0.0;
    der(STU) = (env * (k3 * STUST - k3r * ST * STU)) + (env * (k7 * SUSTU - k7r * STU * SU)) + (env * (k10 * STUSU - k10r * STU * SU)) - (env * (k1 * S * STU - k1r * STUS)) - (env * k4 * STU);
    der(STUS) = (env * (k1 * S * STU - k1r * STUS)) - (env * (k2 * T * STUS - k2r * STUST)) - (env * (k9 * U * STUS - k9r * STUSU));
    der(STUST) = (env * (k2 * T * STUS - k2r * STUST)) - (env * (k3 * STUST - k3r * ST * STU));
    der(STUSU) = (env * (k9 * U * STUS - k9r * STUSU)) - (env * (k10 * STUSU - k10r * STU * SU));
    der(SU) = (env * (k7 * SUSTU - k7r * STU * SU)) + (env * (k10 * STUSU - k10r * STU * SU)) - (env * (k5 * ST * SU - k5r * SUST)) - (env * k8 * SU);
    der(ST) = (env * (k3 * STUST - k3r * ST * STU)) - (env * (k5 * ST * SU - k5r * SUST)) - (env * k11 * ST);
    der(SUST) = (env * (k5 * ST * SU - k5r * SUST)) - (env * (k6 * U * SUST - k6r * SUSTU));
    der(SUSTU) = (env * (k6 * U * SUST - k6r * SUSTU)) - (env * (k7 * SUSTU - k7r * STU * SU));




end BIOMD257;
