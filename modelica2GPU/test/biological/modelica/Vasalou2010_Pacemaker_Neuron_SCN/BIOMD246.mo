
model BIOMD246 "Vasalou2010_Pacemaker_Neuron_SCN"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    
    function sqrt
        input Real x;
        output Real y;
        algorithm
            y := x^(1/2);
    end sqrt;


    parameter Real v_vo = 0.09;
    parameter Real n_vo = 4.5;
    parameter Real K_vo = 4.5;
    parameter Real v_kk = 3.3;
    parameter Real n_kk = 0.1;
    parameter Real K_kk = 0.02;
    parameter Real n_kCa = 2.0;
    parameter Real V_M1 = 0.0003;
    parameter Real beta_IP3 = 0.5;
    parameter Real V_M2 = 149.5;
    parameter Real n_M2 = 2.2;
    parameter Real K_2 = 5.0;
    parameter Real V_M3 = 400.0;
    parameter Real n_M3 = 6.0;
    parameter Real K_R_Ca = 3.0;
    parameter Real p_A = 4.2;
    parameter Real K_A = 0.67;
    parameter Real k_f = 0.001;
    parameter Real v_sP0 = 1.0;
    parameter Real C_T = 1.6;
    parameter Real K_C = 0.15;
    parameter Real n_BN = 4.0;
    parameter Real K_AP = 0.6;
    parameter Real v_mP = 1.1;
    parameter Real K_mP = 0.31;
    parameter Real kd_mP = 0.01;
    parameter Real v_sC = 1.1;
    parameter Real K_sC = 0.6;
    parameter Real v_mC = 1.0;
    parameter Real K_mC = 0.4;
    parameter Real kd_mC = 0.01;
    parameter Real v_sB = 1.0;
    parameter Real K_IB = 2.2;
    parameter Real m_BN = 2.0;
    parameter Real v_mB = 0.8;
    parameter Real K_mB = 0.4;
    parameter Real kd_mB = 0.01;
    parameter Real ks_P = 0.6;
    parameter Real kd_n = 0.01;
    parameter Real V1_P = V_phos;
    parameter Real K_p = 0.1;
    parameter Real V2_P = 0.3;
    parameter Real K_dp = 0.1;
    parameter Real k3 = 0.4;
    parameter Real k4 = 0.2;
    parameter Real ks_C = 1.6;
    parameter Real kd_nc = 0.12;
    parameter Real V1_C = 0.6;
    parameter Real V2_C = 0.1;
    parameter Real v_dPC = 0.7;
    parameter Real Kd = 0.3;
    parameter Real v_dCC = 0.7;
    parameter Real k1 = 0.45;
    parameter Real k2 = 0.2;
    parameter Real V1_PC = V_phos;
    parameter Real V2_PC = 0.1;
    parameter Real vd_PCC = 0.7;
    parameter Real V3_PC = V_phos;
    parameter Real V4_PC = 0.1;
    parameter Real vd_PCN = 0.7;
    parameter Real k7 = 0.5;
    parameter Real k8 = 0.1;
    parameter Real vd_IN = 0.8;
    parameter Real ksB = 0.12;
    parameter Real V1_B = 0.5;
    parameter Real V2_B = 0.1;
    parameter Real k5 = 0.4;
    parameter Real k6 = 0.2;
    parameter Real vd_BC = 0.5;
    parameter Real V3_B = 0.5;
    parameter Real V4_B = 0.2;
    parameter Real vd_BN = 0.6;
    parameter Real K_1_CB = 0.01;
    parameter Real vP = 1.0;
    parameter Real K_2_CB = 0.01;
    parameter Real WT = 1.0;
    parameter Real v_VIP = 0.5;
    parameter Real n_VIP = 1.9;
    parameter Real K_VIP = 15.0;
    parameter Real k_dVIP = 0.5;
    parameter Real n_dVIP = 0.2;
    parameter Real v_GABA = 19.0;
    parameter Real K_GABA = 3.0;
    parameter Real K_D = 0.08;
    parameter Real V_MK = 5.0;
    parameter Real k_MK = 2.9;
    parameter Real V_b = 2.0;
    parameter Real k_b = 2.0;
    parameter Real E_Na_0 = 45.0;
    parameter Real T = 37.0;
    parameter Real T_abs = 273.15;
    parameter Real T_room = 22.0;
    parameter Real E_K_0 = -97.0;
    parameter Real E_L_0 = -29.0;
    parameter Real k_q = 8.75e-05;
    parameter Real K_Cl1 = 4.0;
    parameter Real v_Cl1 = 15.5;
    parameter Real n_Cl = -0.2;
    parameter Real K_Cl2 = 1.0;
    parameter Real v_Cl2 = 19.0;
    parameter Real v_PK = 1.9;
    parameter Real n_PK = -2.0;
    parameter Real K_PK = 1.0;
    parameter Real P_Ca = 0.05;
    parameter Real P_Na = 0.036;
    parameter Real P_Cl = 0.3;
    parameter Real R_g = 8.314;
    parameter Real Faraday = 96485.0;
    parameter Real V_theta = 20.0;
    parameter Real V_R = 0.41;
    parameter Real K_R = 34.0;
    parameter Real g_Na = 36.0;
    parameter Real g_K_0 = 9.7;
    parameter Real K_gk = 10.0;
    parameter Real v_gk = 10.0;
    parameter Real V_ex1 = 105.0;
    parameter Real n_ex1 = 2.5;
    parameter Real K_ex1 = 574050000.0;
    parameter Real n_ex2 = -1.0;
    parameter Real K_ex2 = 1.0;
    parameter Real V_ex2 = 4.4;
    parameter Real v_Ca = 12.3;
    parameter Real n_Ca = 2.2;
    parameter Real K_Ca = 22.0;
    parameter Real VK_Ca = 3.0;
    parameter Real n_KCa = -1.0;
    parameter Real K_KCa = 0.16;
    parameter Real g_inhib = 12.3;
    parameter Real E_ex = 0.0;
    parameter Real Cm = 5.0;
    parameter Real PK_o = 1.1;
    parameter Real V_phos = 0.4;
    parameter Real extra = 1.0;
    parameter Real cytoplasm = 1.0;
    parameter Real store = 1.0;
    parameter Real nucleus = 1.0;

    Real v_K(start=0.0);
    Real f_r(start=0.0);
    Real beta(start=0.0);
    Real v_sPc(start=0.0);
    Real E_Na(start=0.0);
    Real E_K(start=0.0);
    Real E_L(start=0.0);
    Real E_Ca(start=0.0);
    Real Cl_in(start=0.0);
    Real E_inhib(start=0.0);
    Real P_K(start=0.0);
    Real theta_Na(start=0.0);
    Real theta_K(start=0.0);
    Real alpha(start=0.0);
    Real beta_a(start=0.0);
    Real c(start=0.0);
    Real psi(start=0.0);
    Real V_rest(start=0.0);
    Real theta(start=0.0);
    Real V_reset(start=0.0);
    Real R(start=0.0);
    Real I_Na(start=0.0);
    Real g_K(start=0.0);
    Real I_Na_abs(start=0.0);
    Real g_ex(start=0.0);
    Real g_L(start=0.0);
    Real g_Ca(start=0.0);
    Real gK_Ca(start=0.0);
    Real I_star(start=0.0);
    Real R_star(start=0.0);
    Real tau_m(start=0.0);

    Real Ca_in;
    Real Ca_store;
    Real Ca_ex;
    Real M_P;
    Real M_C;
    Real M_B;
    Real P_C;
    Real C_C;
    Real P_CP;
    Real C_CP;
    Real PC_C;
    Real PC_N;
    Real PC_CP;
    Real PC_NP;
    Real B_C;
    Real B_CP;
    Real B_N;
    Real B_NP;
    Real I_N;
    Real CB;
    Real VIP;
    Real Cl_ex;
    Real Cl_o;
    Real GABA;
    Real GABA_o;
    Real K_in;
    Real K_ex;
    Real Na_in;
    Real Na_ex;

initial equation
    Ca_in = 0.1;
    Ca_store = 0.1;
    Ca_ex = 5.0;
    M_P = 2.8;
    M_C = 2.0;
    M_B = 7.94;
    P_C = 0.4;
    C_C = 12.0;
    P_CP = 0.13;
    C_CP = 9.0;
    PC_C = 1.26;
    PC_N = 0.16;
    PC_CP = 0.2;
    PC_NP = 0.091;
    B_C = 2.41;
    B_CP = 0.48;
    B_N = 1.94;
    B_NP = 0.32;
    I_N = 0.05;
    CB = 0.12;
    VIP = 0.0;
    Cl_ex = 114.5;
    Cl_o = 1.0;
    GABA_o = 0.2;
    K_ex = 1.0;
    Na_ex = 145.0;

equation
    GABA = GABA_o + v_GABA * VIP / (K_GABA + VIP);
    K_in = K_ex / theta_K;
    Na_in = Na_ex / theta_Na;
    v_K = V_MK * Ca_in / (k_MK + Ca_in) + V_b * beta / (k_b + beta);
    f_r = -1 / (tau_m * log((theta - R_star * I_star) / (V_reset - R_star * I_star)));
    beta = VIP / (VIP + K_D);
    v_sPc = v_sP0 + C_T * CB / (K_C + CB);
    E_Na = E_Na_0 * (T + T_abs) / (T_room + T_abs);
    E_K = E_K_0 * (T + T_abs) / (T_room + T_abs);
    E_L = E_L_0 * (T + T_abs) / (T_room + T_abs);
    E_Ca = k_q * (T + T_abs) / 2 * log(Ca_ex / Ca_in) * 1000;
    Cl_in = Cl_o + M_P / (K_Cl1 + M_P) * v_Cl1 + pow(GABA, n_Cl) / (K_Cl2 + pow(GABA, n_Cl)) * v_Cl2;
    E_inhib = -k_q * (T + T_abs) * log(Cl_ex / Cl_in) * 1000;
    P_K = v_PK * pow(B_C, n_PK) / (K_PK + pow(B_C, n_PK));
    theta_Na = exp(E_Na / (k_q * (T + T_abs) * 1000));
    theta_K = exp(E_K / (k_q * (T + T_abs) * 1000));
    alpha = 4 * P_Ca * Ca_in * pow(10, -3) + P_K * K_in + P_Na * Na_in + P_Cl * Cl_ex;
    beta_a = P_K * K_in - P_K * K_ex + P_Na * Na_in - P_Na * Na_ex + P_Cl * Cl_ex - P_Cl * Cl_in;
    c = -(4 * P_Ca * Ca_ex * pow(10, -3) + P_K * K_ex + P_Na * Na_ex + P_Cl * Cl_in);
    psi = (sqrt(pow(beta_a, 2) - 4 * alpha * c) - beta_a) / (2 * alpha);
    V_rest = R_g * (T + T_abs) / Faraday * log(psi) * 1000;
    theta = V_rest + V_theta;
    V_reset = V_rest + 4;
    R = V_R * V_rest / (K_R + V_rest);
    I_Na = g_Na * (V_rest - E_Na);
    g_K = g_K_0 + M_P / (K_gk + M_P) * v_gk;
    I_Na_abs = sqrt(pow(I_Na, 2));
    g_ex = V_ex1 * pow(I_Na_abs, n_ex1) / (K_ex1 + pow(I_Na_abs, n_ex1)) + pow(Ca_in, n_ex2) / (K_ex2 + pow(Ca_in, n_ex2)) * V_ex2;
    g_L = 1 / R;
    g_Ca = v_Ca * (pow(M_P, n_Ca) / (K_Ca + pow(M_P, n_Ca)));
    gK_Ca = VK_Ca * (pow(C_C, n_KCa) / (K_KCa + pow(C_C, n_KCa)));
    I_star = g_Na * E_Na + g_Ca * E_Ca + g_K * E_K + g_L * E_L + gK_Ca * E_K - g_inhib * E_inhib - g_ex * E_ex;
    R_star = 1 / (g_Na + g_K + g_L + g_Ca + gK_Ca - g_inhib - g_ex);
    tau_m = Cm * R_star;
    der(Ca_in) = (0.001 * 1000 * cytoplasm * (v_vo * B_C^n_vo / (K_vo + B_C^n_vo))) + (0.001 * 1000 * cytoplasm * V_M1 * beta_IP3) + (0.001 * 1000 * store * (V_M3 * Ca_store^n_M3 / (K_R_Ca^n_M3 + Ca_store^n_M3)) * Ca_in^p_A / (K_A^p_A + Ca_in^p_A)) + (0.001 * 1000 * store * k_f * Ca_store) - (0.001 * (1000 * cytoplasm * v_kk * C_C^n_kk / (K_kk + C_C^n_kk)) * Ca_in^n_kCa) - (0.001 * 1000 * cytoplasm * V_M2 * Ca_in^n_M2 / (K_2^n_M2 + Ca_in^n_M2));
    der(Ca_store) = (0.001 * 1000 * cytoplasm * V_M2 * Ca_in^n_M2 / (K_2^n_M2 + Ca_in^n_M2)) - (0.001 * 1000 * store * (V_M3 * Ca_store^n_M3 / (K_R_Ca^n_M3 + Ca_store^n_M3)) * Ca_in^p_A / (K_A^p_A + Ca_in^p_A)) - (0.001 * 1000 * store * k_f * Ca_store);
    der(Ca_ex) = 0.0;
    der(M_P) = (cytoplasm * (v_sP0 + C_T * CB / (K_C + CB)) * B_N^n_BN / (K_AP^n_BN + B_N^n_BN)) - (cytoplasm * (v_mP * M_P / (K_mP + M_P) + kd_mP * M_P));
    der(M_C) = (cytoplasm * v_sC * B_N^n_BN / (K_sC^n_BN + B_N^n_BN)) - (cytoplasm * (v_mC * M_C / (K_mC + M_C) + kd_mC * M_C));
    der(M_B) = (cytoplasm * (v_sB * K_IB^m_BN / (K_IB^m_BN + B_N^m_BN))) - (cytoplasm * (v_mB * M_B / (K_mB + M_B) + kd_mB * M_B));
    der(P_C) = (cytoplasm * ks_P * M_P) - (cytoplasm * kd_n * P_C) - (cytoplasm * (V1_P * P_C / (K_p + P_C) - V2_P * P_CP / (K_dp + P_CP))) - (cytoplasm * (k3 * P_C * C_C - k4 * PC_C));
    der(C_C) = (cytoplasm * ks_C * M_C) - (cytoplasm * (k3 * P_C * C_C - k4 * PC_C)) - (cytoplasm * kd_nc * C_C) - (cytoplasm * (V1_C * C_C / (K_p + C_C) - V2_C * C_CP / (K_dp + C_CP)));
    der(P_CP) = (cytoplasm * (V1_P * P_C / (K_p + P_C) - V2_P * P_CP / (K_dp + P_CP))) - (cytoplasm * (v_dPC * P_CP / (Kd + P_CP) + kd_n * P_CP));
    der(C_CP) = (cytoplasm * (V1_C * C_C / (K_p + C_C) - V2_C * C_CP / (K_dp + C_CP))) - (cytoplasm * (v_dCC * C_CP / (Kd + C_CP) + kd_n * C_CP));
    der(PC_C) = (cytoplasm * (k3 * P_C * C_C - k4 * PC_C)) - (cytoplasm * k1 * PC_C - nucleus * k2 * PC_N) - (cytoplasm * (V1_PC * PC_C / (K_p + PC_C) - V2_PC * PC_CP / (K_dp + PC_CP))) - (cytoplasm * kd_n * PC_C);
    der(PC_N) = (cytoplasm * k1 * PC_C - nucleus * k2 * PC_N) - (nucleus * (V3_PC * PC_N / (K_p + PC_N) - V4_PC * PC_NP / (K_dp + PC_NP))) - (nucleus * kd_n * PC_N) - (cytoplasm * (k7 * B_N * PC_N - k8 * I_N));
    der(PC_CP) = (cytoplasm * (V1_PC * PC_C / (K_p + PC_C) - V2_PC * PC_CP / (K_dp + PC_CP))) - (cytoplasm * (vd_PCC * PC_CP / (Kd + PC_CP) + kd_n * PC_CP));
    der(PC_NP) = (nucleus * (V3_PC * PC_N / (K_p + PC_N) - V4_PC * PC_NP / (K_dp + PC_NP))) - (nucleus * (vd_PCN * PC_NP / (Kd + PC_NP) + kd_n * PC_NP));
    der(B_C) = (cytoplasm * ksB * M_B) - (cytoplasm * (V1_B * B_C / (K_p + B_C) - V2_B * B_CP / (K_dp + B_CP))) - (cytoplasm * k5 * B_C - nucleus * k6 * B_N) - (cytoplasm * kd_n * B_C);
    der(B_CP) = (cytoplasm * (V1_B * B_C / (K_p + B_C) - V2_B * B_CP / (K_dp + B_CP))) - (cytoplasm * (vd_BC * B_CP / (Kd + B_CP) + kd_n * B_CP));
    der(B_N) = (cytoplasm * k5 * B_C - nucleus * k6 * B_N) - (cytoplasm * (k7 * B_N * PC_N - k8 * I_N)) - (nucleus * (V3_B * B_N / (K_p + B_N) - V4_B * B_NP / (K_dp + B_NP))) - (nucleus * kd_n * B_N);
    der(B_NP) = (nucleus * (V3_B * B_N / (K_p + B_N) - V4_B * B_NP / (K_dp + B_NP))) - (nucleus * (vd_BN * B_NP / (Kd + B_NP) + kd_n * B_NP));
    der(I_N) = (cytoplasm * (k7 * B_N * PC_N - k8 * I_N)) - (nucleus * (vd_IN * I_N / (Kd + I_N) + kd_n * I_N));
    der(CB) = (cytoplasm * (v_K * (1 - CB) / (K_1_CB + 1 - CB) - vP * CB / (K_2_CB + CB)) / WT) ;
    der(VIP) = (cytoplasm * v_VIP * f_r^n_VIP / (K_VIP + f_r^n_VIP)) - (cytoplasm * k_dVIP * VIP^n_dVIP);
    der(Cl_ex) = 0.0;
    der(Cl_o) = 0.0;
    der(GABA_o) = 0.0;
    der(K_ex) = 0.0;
    der(Na_ex) = 0.0;




end BIOMD246;
