model BIOMD009 "Modeling temporal sequence of kinase activation, from MAPKKK to the final MAPK"
    
    parameter Real comp_size = 1.000;
    parameter Real K_PP_norm_max = 0.900;
    parameter Real a1 = 1000.00;
    parameter Real d1 = 150.00;
    parameter Real k2 = 150.00;
    parameter Real a2 = 1000.00;
    parameter Real d2 = 150.00;
    parameter Real a3 = 1000.00;
    parameter Real d3 = 150.00;
    parameter Real k3 = 150.00;
    parameter Real a4 = 1000.00;
    parameter Real d4 = 150.00;
    parameter Real k4 = 150.00;
    parameter Real a5 = 1000.00;
    parameter Real d5 = 150.00;
    parameter Real k5 = 150.00;
    parameter Real a6 = 1000.00;
    parameter Real d6 = 150.00;
    parameter Real k6 = 150.00;
    parameter Real a7 = 1000.00;
    parameter Real d7 = 150.00;
    parameter Real k7 = 150.00;
    parameter Real a8 = 1000.00;
    parameter Real d8 = 150.00;
    parameter Real k8 = 150.00;
    parameter Real a9 = 1000.00;
    parameter Real d9 = 150.00;
    parameter Real k9 = 150.00;
    parameter Real a10 = 1000.00;
    parameter Real d10 = 150.00;
    parameter Real k10 = 150.00;

    Real E1 "MAPKKK activator (RAS)";
    Real E2 "MAPKKK inactivator";
    Real KKK "Mos";
    Real P_KKK "Mos-P";
    Real KK "Mek1";
    Real P_KK "Mek1-P";
    Real PP_KK "Mek1-PP";
    Real K "Erk2";
    Real P_K "Erk2-P";
    Real PP_K "Erk2-PP";
    Real KPase "MAPK-Pase";
    Real KKPase "MAPKK-Pase";
    Real E1_KKK "E1_Mos";
    Real E2_P_KKK "E2_Mos-P";
    Real P_KKK_KK "P-Mos_Mek1";
    Real P_KKK_P_KK "P-Mos_P-Mek1";
    Real PP_KK_K "PP-Mek1_Erk2";
    Real PP_KK_P_K "PP-Mek1_P_Erk2";
    Real KKPase_PP_KK "MAPKK-Pase_PP-Mek1";
    Real KKPase_P_KK "MAPKK-Pase_P-Mek1";
    Real KPase_PP_K "MAPK-Pase_PP-Erk2";
    Real KPase_P_K "MAPK-Pase_P-Erk2";
    Real K_PP_norm "K_PP_norm";
    Real KK_PP_norm "KK_PP_norm";
    Real KKK_P_norm "KKK_P_norm";
    Real rel_K_PP_max "relative maximal K_PP";

initial equation
    E1 = 3.000e-5;
    E2 = 3.000e-4;
    KKK = 0.003;
    P_KKK = 0.000;
    KK = 1.200;
    P_KK = 0.000;
    PP_KK = 0.000;
    K = 1.200;
    P_K = 0.000;
    PP_K = 0.000;
    KPase = 0.120;
    KKPase = 3.000e-4;
    E1_KKK =  0.000;
    E2_P_KKK = 0.000;
    P_KKK_KK = 0.000;
    P_KKK_P_KK = 0.000;
    PP_KK_K = 0.000;
    PP_KK_P_K = 0.000;
    KKPase_PP_KK = 0.000;
    KKPase_P_KK = 0.000;
    KPase_PP_K = 0.000;
    KPase_P_K = 0.000;

equation
    K_PP_norm = (PP_K + KPase_PP_K) / (PP_K + P_K + K + PP_KK_K + PP_KK_P_K + KPase_PP_K + KPase_P_K);
    rel_K_PP_max = K_PP_norm / K_PP_norm_max;
    KK_PP_norm = (PP_KK + PP_KK_K + PP_KK_P_K + KKPase_PP_KK) / (PP_KK + P_KK + KK + PP_KK_K + PP_KK_P_K + P_KKK_KK + P_KKK_P_KK + KKPase_PP_KK);
    KKK_P_norm = (P_KKK + P_KKK_KK + P_KKK_P_KK) / (KKK + P_KKK + P_KKK_KK + P_KKK_P_KK);

    der(E1) = comp_size * (k2 * E1_KKK - (a1 * E1 * KKK - d1 * E1_KKK));
    der(E2) = comp_size * (k2 * E2_P_KKK - (a2 * E2 * P_KKK - d2 * E2_P_KKK));
    der(KKK) = comp_size * (k2 * E2_P_KKK - (a1 * E1 * KKK - d1 * E1_KKK));
    der(P_KKK) = comp_size * (k2 * E1_KKK + k3 * P_KKK_KK + k5 * P_KKK_P_KK - (a2 * E2 * P_KKK - d2 * E2_P_KKK) - (a3 * KK * P_KKK - d3 * P_KKK_KK) - (a5 * P_KK * P_KKK - d5 * P_KKK_P_KK));
    der(KK) = comp_size * (k4 * KKPase_P_KK - (a3 * KK * P_KKK - d3 * P_KKK_KK));
    der(P_KK) = comp_size * (k3 * P_KKK_KK + k6 * KKPase_PP_KK - (a4 * P_KK * KKPase - d4 * KKPase_P_KK) - (a5 * P_KK * P_KKK - d5 * P_KKK_P_KK));
    der(PP_KK) = comp_size * (k5 * P_KKK_P_KK + k7 * PP_KK_K + k9 * PP_KK_P_K - (a6 * PP_KK * KKPase - d6 * KKPase_PP_KK) - (a7 * K * PP_KK - d7 * PP_KK_K) - (a9 * P_K * PP_KK - d9 * PP_KK_P_K));
    der(K) = comp_size * (k8 * KPase_P_K - (a7 * K * PP_KK - d7 * PP_KK_K));
    der(P_K) = comp_size * (k7 * PP_KK_K + k10 * KPase_PP_K - (a8 * P_K * KPase - d8 * KPase_P_K) - (a9 * P_K * PP_KK - d9 * PP_KK_P_K));
    der(PP_K) = comp_size * (k9 * PP_KK_P_K - (a10 * PP_K * KPase - d10 * KPase_PP_K));
    der(KPase) = comp_size * (k8 * KPase_P_K + k10 * KPase_PP_K - (a8 * P_K * KPase - d8 * KPase_P_K) - (a10 * PP_K * KPase - d10 * KPase_PP_K));
    der(KKPase) = comp_size * (k4 * KKPase_P_KK + k6 * KKPase_PP_KK - (a4 * P_KK * KKPase - d4 * KKPase_P_KK) - (a6 * PP_KK * KKPase - d6 * KKPase_PP_KK));
    der(E1_KKK) = comp_size * ((a1 * E1 * KKK - d1 * E1_KKK) - k2 * E1_KKK);
    der(E2_P_KKK) = comp_size * ((a2 * E2 * P_KKK - d2 * E2_P_KKK) - k2 * E2_P_KKK);
    der(P_KKK_KK) = comp_size * ((a3 * KK * P_KKK - d3 * P_KKK_KK) - k3 * P_KKK_KK);
    der(P_KKK_P_KK) = comp_size * ((a5 * P_KK * P_KKK - d5 * P_KKK_P_KK) - k5 * P_KKK_P_KK);
    der(PP_KK_K) = comp_size * ((a7 * K * PP_KK - d7 * PP_KK_K) - k7 * PP_KK_K);
    der(PP_KK_P_K) = comp_size * ((a9 * P_K * PP_KK - d9 * PP_KK_P_K) - k9 * PP_KK_P_K);
    der(KKPase_PP_KK) = comp_size * ((a6 * PP_KK * KKPase - d6 * KKPase_PP_KK) - k6 * KKPase_PP_KK);
    der(KKPase_P_KK) = comp_size * ((a4 * P_KK * KKPase - d4 * KKPase_P_KK) - k4 * KKPase_P_KK);
    der(KPase_PP_K) = comp_size * ((a10 * PP_K * KPase - d10 * KPase_PP_K) - d10 * KPase_PP_K);
    der(KPase_P_K) = comp_size * ((a8 * P_K * KPase - d8 * KPase_P_K) - k8 * KPase_P_K);

end BIOMD009;
