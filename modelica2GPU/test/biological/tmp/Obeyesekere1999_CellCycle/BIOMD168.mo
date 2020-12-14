
model BIOMD168 "Obeyesekere1999_CellCycle"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real aD_1 = 0.4;
    parameter Real k_1 = 0.05;
    parameter Real GF_1 = 6.3;
    parameter Real dD_1 = 0.4;
    parameter Real aE_1 = 0.16;
    parameter Real af_1 = 0.9;
    parameter Real theta_1 = 1.5;
    parameter Real dE_1 = 0.2;
    parameter Real pX_1 = 0.48;
    parameter Real RT_1 = 2.5;
    parameter Real pS_1 = 0.6;
    parameter Real pD_1 = 0.48;
    parameter Real qD_1 = 0.6;
    parameter Real pE_1 = 0.096;
    parameter Real qE_1 = 0.6;
    parameter Real aX_1 = 0.08;
    parameter Real f_1 = 0.2;
    parameter Real g_1 = 0.528;
    parameter Real dX_1 = 1.04;
    parameter Real qX_1 = 0.8;

    Real unpho_RB(start=0.0);

    Real D_1;
    Real E_1;
    Real RS_1;
    Real R_1;
    Real X_1;
    Real E2F_1;
    Real RP_1;

initial equation
    D_1 = 0.1;
    E_1 = 0.6;
    RS_1 = 1.0;
    R_1 = 0.5;
    X_1 = 0.7;
    E2F_1 = 0.0;
    RP_1 = 0.0;

equation
    E2F_1 = theta_1 - RS_1;
    RP_1 = RT_1 - RS_1 - R_1;
    unpho_RB = R_1 + RS_1;
    der(D_1) = (aD_1 * (k_1 * GF_1 / (1 + k_1 * GF_1))) - (dD_1 * E_1 * D_1);
    der(E_1) = (aE_1 * (1 + af_1 * E2F_1)) - (dE_1 * X_1 * E_1);
    der(RS_1) = (pS_1 * E2F_1 * R_1) - (pD_1 * RS_1 * D_1 / (qD_1 + RS_1 + D_1)) - (pE_1 * RS_1 * E_1 / (qE_1 + RS_1 + E_1));
    der(R_1) = (pX_1 * RP_1 * X_1 / (qX_1 + RP_1 + X_1)) - (pS_1 * E2F_1 * R_1);
    der(X_1) = (aX_1 * E_1 + f_1 * E2F_1 + g_1 * X_1^2 * E_1) - (dX_1 * X_1);



end BIOMD168;
