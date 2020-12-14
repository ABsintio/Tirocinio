
model BIOMD228 "Swat2004_Mammalian_G1_S_Transition"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real k1 = 1.0;
    parameter Real Km1 = 0.5;
    parameter Real J11 = 0.5;
    parameter Real J61 = 5.0;
    parameter Real k16 = 0.4;
    parameter Real k61 = 0.3;
    parameter Real phi_pRB = 0.005;
    parameter Real kp = 0.05;
    parameter Real k2 = 1.6;
    parameter Real a = 0.04;
    parameter Real Km2 = 4.0;
    parameter Real J12 = 5.0;
    parameter Real J62 = 8.0;
    parameter Real phi_E2F1 = 0.1;
    parameter Real k3 = 0.05;
    parameter Real k23 = 0.3;
    parameter Real J13 = 0.002;
    parameter Real J63 = 2.0;
    parameter Real k34 = 0.04;
    parameter Real Km4 = 0.3;
    parameter Real phi_CycDi = 0.023;
    parameter Real k43 = 0.01;
    parameter Real phi_CycDa = 0.03;
    parameter Real Fm = 0.005;
    parameter Real k25 = 0.9;
    parameter Real J15 = 0.001;
    parameter Real J65 = 6.0;
    parameter Real phi_AP1 = 0.01;
    parameter Real k67 = 0.7;
    parameter Real k76 = 0.1;
    parameter Real phi_pRBpp = 0.04;
    parameter Real phi_pRBp = 0.06;
    parameter Real k28 = 0.06;
    parameter Real J18 = 0.6;
    parameter Real J68 = 7.0;
    parameter Real k89 = 0.07;
    parameter Real Km9 = 0.005;
    parameter Real k98 = 0.01;
    parameter Real phi_CycEi = 0.06;
    parameter Real phi_CycEa = 0.05;



    Real pRB;
    Real pRBp;
    Real E2F1;
    Real CycDi;
    Real CycDa;
    Real AP1;
    Real pRBpp;
    Real CycEi;
    Real CycEa;

initial equation
    pRB = 0.1;
    pRBp = 0.1;
    E2F1 = 0.1;
    CycDi = 0.1;
    CycDa = 0.1;
    AP1 = 0.1;
    pRBpp = 0.1;
    CycEi = 0.1;
    CycEa = 0.1;

equation

    der(pRB) = (1.0 * k1 * (E2F1 / (Km1 + E2F1)) * (J11 / (J11 + pRB)) * (J61 / (J61 + pRBp))) + (1.0 * k61 * pRBp) - (1.0 * k16 * pRB * CycDa) - (1.0 * phi_pRB * pRB);
    der(pRBp) = (1.0 * k16 * pRB * CycDa) + (1.0 * k76 * pRBpp) - (1.0 * k61 * pRBp) - (1.0 * k67 * pRBp * CycEa) - (1.0 * phi_pRBp * pRBp);
    der(E2F1) = (1.0 * (kp + (k2 * (a^2 + E2F1^2) / (Km2^2 + E2F1^2)) * (J12 / (J12 + pRB)) * (J62 / (J62 + pRBp)))) - (1.0 * phi_E2F1 * E2F1);
    der(CycDi) = (1.0 * (k3 * AP1 + k23 * E2F1 * (J13 / (J13 + pRB)) * (J63 / (J63 + pRBp)))) + (1.0 * k43 * CycDa) - (1.0 * k34 * CycDi * (CycDa / (Km4 + CycDa))) - (1.0 * phi_CycDi * CycDi);
    der(CycDa) = (1.0 * k34 * CycDi * (CycDa / (Km4 + CycDa))) - (1.0 * k43 * CycDa) - (1.0 * phi_CycDa * CycDa);
    der(AP1) = (1.0 * (Fm + k25 * E2F1 * (J15 / (J15 + pRB)) * (J65 / (J65 + pRBp)))) - (1.0 * phi_AP1 * AP1);
    der(pRBpp) = (1.0 * k67 * pRBp * CycEa) - (1.0 * k76 * pRBpp) - (1.0 * phi_pRBpp * pRBpp);
    der(CycEi) = (1.0 * k28 * E2F1 * (J18 / (J18 + pRB)) * (J68 / (J68 + pRBp))) + (1.0 * k98 * CycEa) - (1.0 * k89 * CycEi * CycEa / (Km9 + CycEa)) - (1.0 * phi_CycEi * CycEi);
    der(CycEa) = (1.0 * k89 * CycEi * CycEa / (Km9 + CycEa)) - (1.0 * k98 * CycEa) - (1.0 * phi_CycEa * CycEa);



end BIOMD228;
