
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
    parameter Real v_sP_per_trans = 0.8;
    parameter Real Ki_P_per_trans = 1.0;
    parameter Real v_sT_tim_trans = 1.0;
    parameter Real Ki_T_tim_trans = 1.0;
    parameter Real v_mT_M_T_decay = 0.7;
    parameter Real K_mT_M_T_decay = 0.2;
    parameter Real v_mP_M_P_decay = 0.8;
    parameter Real K_mP_M_P_decay = 0.2;
    parameter Real k_sP_PER_transl = 0.9;
    parameter Real k_sT_TIM_transl = 0.9;
    parameter Real k3_C_form = 1.2;
    parameter Real k4_C_form = 0.6;
    parameter Real kd_C_C_decay = 0.01;
    parameter Real kd_CN_CN_decay = 0.01;
    parameter Real k1_C_transp = 1.2;
    parameter Real k2_C_transp = 0.2;
    parameter Real V_1P_P_pho = 8.0;
    parameter Real K_1P_P_pho = 2.0;
    parameter Real V_3P_P1_pho = 8.0;
    parameter Real K_3P_P1_pho = 2.0;
    parameter Real K_2P_P1_depho = 2.0;
    parameter Real V_2P_P1_depho = 1.0;
    parameter Real V_4P_P2_depho = 1.0;
    parameter Real K_4P_P2_depho = 2.0;
    parameter Real V_1T_T_pho = 8.0;
    parameter Real K_1T_T_pho = 2.0;
    parameter Real V_3T_T1_pho = 8.0;
    parameter Real K_3T_T1_pho = 2.0;
    parameter Real K_2T_T1_depho = 2.0;
    parameter Real V_2T_T1_depho = 1.0;
    parameter Real V_4T_T2_depho = 1.0;
    parameter Real K_4T_T2_depho = 2.0;
    parameter Real K_dT_T2_light_deact = 0.2;
    parameter Real v_dP_P2_light_deact = 2.0;
    parameter Real K_dP_P2_light_deact = 0.2;

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
    Tt = 0.0;
    Pt = 0.0;

equation
    Tt = T0 + T1 + T2 + C + CN * 1.0 / 1.0;
    Pt = P0 + P1 + P2 + C + CN * 1.0 / 1.0;
    v_dT = (1 + (v_dT_fac - 1) * ceil(sin(time / l_d * pi) * 0.9)) * v_dT_dark;
    der(M_T) = (v_sT_tim_trans * Ki_T_tim_trans^n / (Ki_T_tim_trans^n + CN^n)) - ((v_mT_M_T_decay / (K_mT_M_T_decay + M_T) + kd) * M_T * 1.0);
    der(M_P) = (v_sP_per_trans * Ki_P_per_trans^n / (Ki_P_per_trans^n + CN^n)) - ((v_mP_M_P_decay / (K_mP_M_P_decay + M_P) + kd) * M_P * 1.0);
    der(T0) = (k_sT_TIM_transl * M_T * 1.0) + ((V_2T_T1_depho * T1 / (K_2T_T1_depho + T1)) * 1.0) - (kd * T0 * 1.0) - ((V_1T_T_pho * T0 / (K_1T_T_pho + T0)) * 1.0);
    der(T1) = ((V_1T_T_pho * T0 / (K_1T_T_pho + T0)) * 1.0) + ((V_4T_T2_depho * T2 / (K_4T_T2_depho + T2)) * 1.0) - (kd * T1 * 1.0) - ((V_3T_T1_pho * T1 / (K_3T_T1_pho + T1)) * 1.0) - ((V_2T_T1_depho * T1 / (K_2T_T1_depho + T1)) * 1.0);
    der(T2) = ((V_3T_T1_pho * T1 / (K_3T_T1_pho + T1)) * 1.0) - (kd * T2 * 1.0) - ((k3_C_form * T2 * P2 - k4_C_form * C) * 1.0) - ((V_4T_T2_depho * T2 / (K_4T_T2_depho + T2)) * 1.0) - ((v_dT * T2 / (K_dT_T2_light_deact + T2)) * 1.0);
    der(P0) = (k_sP_PER_transl * M_P * 1.0) + ((V_2P_P1_depho * P1 / (K_2P_P1_depho + P1)) * 1.0) - (kd * P0 * 1.0) - ((V_1P_P_pho * P0 / (K_1P_P_pho + P0)) * 1.0);
    der(P1) = ((V_1P_P_pho * P0 / (K_1P_P_pho + P0)) * 1.0) + ((V_4P_P2_depho * P2 / (K_4P_P2_depho + P2)) * 1.0) - (kd * P1 * 1.0) - ((V_3P_P1_pho * P1 / (K_3P_P1_pho + P1)) * 1.0) - ((V_2P_P1_depho * P1 / (K_2P_P1_depho + P1)) * 1.0);
    der(P2) = ((V_3P_P1_pho * P1 / (K_3P_P1_pho + P1)) * 1.0) - (kd * P2 * 1.0) - ((k3_C_form * T2 * P2 - k4_C_form * C) * 1.0) - ((V_4P_P2_depho * P2 / (K_4P_P2_depho + P2)) * 1.0) - ((v_dP_P2_light_deact * P2 / (K_dP_P2_light_deact + P2)) * 1.0);
    der(C) = ((k3_C_form * T2 * P2 - k4_C_form * C) * 1.0) - (kd_C_C_decay * C * 1.0) - (k1_C_transp * C * 1.0 - k2_C_transp * CN * 1.0);
    der(CN) = (k1_C_transp * C * 1.0 - k2_C_transp * CN * 1.0) - (kd_CN_CN_decay * CN * 1.0);



end BIOMD171;
