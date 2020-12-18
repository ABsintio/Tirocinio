
model BIOMD275 "Goldbeter2007_Somitogenesis_Switch"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real kd5 = 0.0;
    parameter Real kd1 = 1.0;
    parameter Real V0 = 0.365;
    parameter Real Vsc = 7.1;
    parameter Real n = 2.0;
    parameter Real Ka = 0.2;
    parameter Real kd3 = 1.0;
    parameter Real ks2 = 1.0;
    parameter Real kd2 = 0.28;
    parameter Real ks3 = 1.0;
    parameter Real Ki = 0.2;
    parameter Real m = 2.0;
    parameter Real kd4 = 1.0;
    parameter Real ks1 = 1.0;
    parameter Real RALDH2_0 = 7.1;
    parameter Real x = 15.0;
    parameter Real L = 50.0;
    parameter Real M_0 = 5.0;
    parameter Real Kr1 = 1.0;
    parameter Real Kr2 = 1.0;
    parameter Real PSM = 1.0;

    Real vs1(start=0.0);
    Real rho(start=0.0);
    Real alpha2(start=0.0);
    Real alpha1(start=0.0);

    Real RA;
    Real M_C;
    Real C;
    Real F;
    Real M_F;

initial equation
    RA = 0.1;
    M_C = 0.1;
    C = 0.1;
    F = 1.0;

equation
    M_F = M_0 * (x / L);
    vs1 = ks1 * RALDH2_0 * (1 - x / L);
    rho = alpha2 / alpha1;
    alpha2 = F / (F + Kr2);
    alpha1 = RA / (RA + Kr1);
    der(RA) = (PSM * vs1) - (PSM * kd5 * RA) - (PSM * kd1 * RA * C);
    der(M_C) = (PSM * (V0 + Vsc * F^n / (Ka^n + F^n))) - (PSM * kd3 * M_C);
    der(C) = (PSM * ks2 * M_C) - (PSM * kd2 * C);
    der(F) = (PSM * ks3 * M_F * (Ki^m / (Ki^m + RA^m))) - (PSM * kd4 * F);




end BIOMD275;
