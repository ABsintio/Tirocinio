
model BIOMD171 "Leloup1998_CircClock_LD"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;



    parameter Real n = 4.0;
    parameter Real kd = 0.01;
    parameter Real l_d = 12.0;
    parameter Real v_dT_fac = 2.0;
    parameter Real v_dT_dark = 2.0;
    parameter Real v_sP_0 = 0.8;
    parameter Real Ki_P_0 = 1.0;
    parameter Real v_sT_1 = 1.0;
    parameter Real Ki_T_1 = 1.0;
    parameter Real v_mT_2 = 0.7;
    parameter Real K_mT_2 = 0.2;
    parameter Real v_mP_3 = 0.8;
    parameter Real K_mP_3 = 0.2;
    parameter Real k_sP_4 = 0.9;
    parameter Real k_sT_5 = 0.9;
    parameter Real k3_12 = 1.2;
    parameter Real k4_12 = 0.6;
    parameter Real kd_C_13 = 0.01;
    parameter Real kd_CN_14 = 0.01;
    parameter Real k1_15 = 1.2;
    parameter Real k2_15 = 0.2;
    parameter Real V_1P_16 = 8.0;
    parameter Real K_1P_16 = 2.0;
    parameter Real V_3P_17 = 8.0;
    parameter Real K_3P_17 = 2.0;
    parameter Real K_2P_18 = 2.0;
    parameter Real V_2P_18 = 1.0;
    parameter Real V_4P_19 = 1.0;
    parameter Real K_4P_19 = 2.0;
    parameter Real V_1T_20 = 8.0;
    parameter Real K_1T_20 = 2.0;
    parameter Real V_3T_21 = 8.0;
    parameter Real K_3T_21 = 2.0;
    parameter Real K_2T_22 = 2.0;
    parameter Real V_2T_22 = 1.0;
    parameter Real V_4T_23 = 1.0;
    parameter Real K_4T_23 = 2.0;
    parameter Real K_dT_24 = 0.2;
    parameter Real v_dP_25 = 2.0;
    parameter Real K_dP_25 = 0.2;
    parameter Real nucleus = 1.0;
    parameter Real cytoplasm = 1.0;

    Real v_dT(start=2.0);

    Real M_T;
    Real M_P;
    Real T0;
    Real T1;
    Real T2;
    Real P0;
    Real P1;
    Real P2;
    Real C;
    Real CN;
    Real Tt;
    Real Pt;

initial equation
    M_T = 1.41;
    M_P = 0.09;
    T0 = 0.54;
    T1 = 0.79;
    T2 = 4.65;
    P0 = 0.02;
    P1 = 0.02;
    P2 = 0.01;
    C = 0.18;
    CN = 1.2;

equation
    Tt = T0 + T1 + T2 + C + CN * nucleus / cytoplasm;
    Pt = P0 + P1 + P2 + C + CN * nucleus / cytoplasm;
    v_dT = (1 + (v_dT_fac - 1) * ceil(sin(time / l_d * 3.141592653589793) * 0.9)) * v_dT_dark;
    der(M_T) = (v_sT_1 * pow(Ki_T_1, n) / (pow(Ki_T_1, n) + pow(CN, n))) - ((v_mT_2 / (K_mT_2 + M_T) + kd) * M_T * cytoplasm);
    der(M_P) = (v_sP_0 * pow(Ki_P_0, n) / (pow(Ki_P_0, n) + pow(CN, n))) - ((v_mP_3 / (K_mP_3 + M_P) + kd) * M_P * cytoplasm);
    der(T0) = (k_sT_5 * M_T * cytoplasm) + (V_2T_22 * T1 / (K_2T_22 + T1) * cytoplasm) - (kd * T0 * cytoplasm) - (V_1T_20 * T0 / (K_1T_20 + T0) * cytoplasm);
    der(T1) = (V_1T_20 * T0 / (K_1T_20 + T0) * cytoplasm) + (V_4T_23 * T2 / (K_4T_23 + T2) * cytoplasm) - (kd * T1 * cytoplasm) - (V_3T_21 * T1 / (K_3T_21 + T1) * cytoplasm) - (V_2T_22 * T1 / (K_2T_22 + T1) * cytoplasm);
    der(T2) = (V_3T_21 * T1 / (K_3T_21 + T1) * cytoplasm) - (kd * T2 * cytoplasm) - ((k3_12 * T2 * P2 - k4_12 * C) * cytoplasm) - (V_4T_23 * T2 / (K_4T_23 + T2) * cytoplasm) - (v_dT * T2 / (K_dT_24 + T2) * cytoplasm);
    der(P0) = (k_sP_4 * M_P * cytoplasm) + (V_2P_18 * P1 / (K_2P_18 + P1) * cytoplasm) - (kd * P0 * cytoplasm) - (V_1P_16 * P0 / (K_1P_16 + P0) * cytoplasm);
    der(P1) = (V_1P_16 * P0 / (K_1P_16 + P0) * cytoplasm) + (V_4P_19 * P2 / (K_4P_19 + P2) * cytoplasm) - (kd * P1 * cytoplasm) - (V_3P_17 * P1 / (K_3P_17 + P1) * cytoplasm) - (V_2P_18 * P1 / (K_2P_18 + P1) * cytoplasm);
    der(P2) = (V_3P_17 * P1 / (K_3P_17 + P1) * cytoplasm) - (kd * P2 * cytoplasm) - ((k3_12 * T2 * P2 - k4_12 * C) * cytoplasm) - (V_4P_19 * P2 / (K_4P_19 + P2) * cytoplasm) - (v_dP_25 * P2 / (K_dP_25 + P2) * cytoplasm);
    der(C) = ((k3_12 * T2 * P2 - k4_12 * C) * cytoplasm) - (kd_C_13 * C * cytoplasm) - (k1_15 * C * cytoplasm - k2_15 * CN * nucleus);
    der(CN) = (k1_15 * C * cytoplasm - k2_15 * CN * nucleus) - (kd_CN_14 * CN * nucleus);




end BIOMD171;
