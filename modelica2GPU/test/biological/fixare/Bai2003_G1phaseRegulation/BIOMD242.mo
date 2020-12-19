
model BIOMD242 "Bai2003_G1phaseRegulation"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;


    function Mass_Action_2_1
        	input Real k1;
	input Real S1;
	input Real S2;
        output Real y;
    algorithm
        y :=  k1 * S1 * S2;
    end Mass_Action_2_1;


    parameter Real GF_1 = 6.3;
    parameter Real k1_1 = 0.05;
    parameter Real dD_1 = 0.4;
    parameter Real aD_1 = 0.4;
    parameter Real aE_1 = 0.16;
    parameter Real k2_1 = 1000.0;
    parameter Real aF_1 = 0.9;
    parameter Real pX_1 = 0.48;
    parameter Real RT_1 = 2.5;
    parameter Real qX_1 = 0.8;
    parameter Real pS_1 = 0.6;
    parameter Real pD_1 = 0.48;
    parameter Real qD_1 = 0.6;
    parameter Real pE_1 = 0.096;
    parameter Real qE_1 = 0.6;
    parameter Real atheta_1 = 0.05;
    parameter Real k3_1 = 1.5;
    parameter Real dtheta_1 = 0.12;
    parameter Real qtheta_1 = 0.3;
    parameter Real aX_1 = 0.08;
    parameter Real f_1 = 0.35;
    parameter Real g_1 = 0.528;
    parameter Real dX_1 = 1.04;
    parameter Real dE_1 = 0.2;
    parameter Real fC_1_1 = 0.003;
    parameter Real cell = 1.0;

    Real Rb_phos(start=0.0);

    Real D_1;
    Real E_1;
    Real R_1;
    Real RS_1;
    Real theta_1;
    Real X_1;

initial equation
    D_1 = 0.0;
    E_1 = 0.0;
    R_1 = 2.5;
    RS_1 = 0.0;
    theta_1 = 0.0;
    X_1 = 0.0;

equation
    Rb_phos = RT_1 - RS_1 - R_1;
    der(D_1) = (cell * aD_1 * (GF_1 / (k1_1^(-1) + GF_1))) - (cell * dD_1 * E_1 * D_1);
    der(E_1) = (cell * aE_1 * (GF_1 / (k2_1^(-1) + GF_1) + aF_1 * theta_1)) - (cell * dE_1 * X_1 * E_1);
    der(R_1) = (cell * (pX_1 * (RT_1 - RS_1 - R_1) * X_1 / ((qX_1 + RT_1 - RS_1 - R_1) + X_1))) - (cell * Mass_Action_2_1(pS_1, R_1, theta_1));
    der(RS_1) = (cell * Mass_Action_2_1(pS_1, R_1, theta_1)) - (cell * (pD_1 * RS_1 * D_1 / (qD_1 + RS_1 + D_1))) - (cell * (pE_1 * RS_1 * E_1 / (qE_1 + RS_1 + E_1)));
    der(theta_1) = (cell * (pD_1 * RS_1 * D_1 / (qD_1 + RS_1 + D_1))) + (cell * (pE_1 * RS_1 * E_1 / (qE_1 + RS_1 + E_1))) + (cell * atheta_1 * (GF_1 / (k3_1^(-1) + GF_1) + fC_1_1 * theta_1)) - (cell * Mass_Action_2_1(pS_1, R_1, theta_1)) - (cell * dtheta_1 * (X_1 / (qtheta_1 + X_1)) * theta_1);
    der(X_1) = (cell * (aX_1 * E_1 + f_1 * theta_1 + g_1 * X_1^2 * E_1)) - (cell * dX_1 * X_1);




end BIOMD242;
