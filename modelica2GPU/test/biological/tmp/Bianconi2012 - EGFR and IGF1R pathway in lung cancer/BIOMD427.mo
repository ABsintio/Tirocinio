
model BIOMD427 "Bianconi2012 - EGFR and IGF1R pathway in lung cancer"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;
    
    function piecewise
        input Real x;
        input Boolean condition;
        input Real y;
        output Real z;
        algorithm
            z := if condition then x else y;
    end piecewise;



    parameter Real gamma_IGFR = 0.02;
    parameter Real kd_PI3K_a = 0.005;
    parameter Real k_P90Rsk_ERKActive = 0.0213697;
    parameter Real KM_P90Rsk_ERKActive = 763523.0;
    parameter Real gamma_EGFR = 0.02;
    parameter Real k_SOS_E_0 = 694.731;
    parameter Real n_SOS_0 = 1.0;
    parameter Real KM_SOS_E_0 = 6086070.0;
    parameter Real k_Ras_SOS_1 = 32.344;
    parameter Real n_Ras_SOS_1 = 1.0;
    parameter Real KM_Ras_SOS_1 = 35954.3;
    parameter Real k_ERK_MekActive_3 = 9.85367;
    parameter Real KM_ERK_MekActive_3 = 1007340.0;
    parameter Real k_D_SOS_P90Rsk_4 = 161197.0;
    parameter Real n_D_SOS_4 = 1.0;
    parameter Real KM_D_SOS_P90Rsk_4 = 896896.0;
    parameter Real k_A_SOS_I_5 = 500.0;
    parameter Real n_A_SOS_I_5 = 1.0;
    parameter Real KM_A_SOS_I_5 = 100000.0;
    parameter Real k_PI3K_IGF1R_6 = 10.6737;
    parameter Real n_PI3K_I_6 = 1.0;
    parameter Real KM_PI3K_IGF1R_6 = 184912.0;
    parameter Real k_PI3K_EGF1R_7 = 10.6737;
    parameter Real n_PI3K_E_7 = 1.0;
    parameter Real KM_PI3K_EGF1R_7 = 184912.0;
    parameter Real k_AKT_PI3K_8 = 0.0566279;
    parameter Real n_AKT_PI3K_8 = 1.0;
    parameter Real KM_AKT_PI3K_8 = 653951.0;
    parameter Real kd_AKT_9 = 0.005;
    parameter Real k_ERKactive_PP2A_10 = 8.8912;
    parameter Real n_ERKactive_PP2A_10 = 1.0;
    parameter Real KM_ERKactive_PP2A_10 = 3496490.0;
    parameter Real k_PI3K_Ras_11 = 0.0771067;
    parameter Real n_PI3K_Ras_11 = 1.0;
    parameter Real KM_PI3K_Ras_11 = 272056.0;
    parameter Real k_Raf_RasActive_12 = 0.884096;
    parameter Real n_Raf_RasActive_12 = 1.0;
    parameter Real KM_Raf_RasActive_12 = 62464.6;
    parameter Real k_Mek_PP2A_13 = 185.759;
    parameter Real n_Mek_PP2A_13 = 1.0;
    parameter Real KM_MekPP2A_13 = 4768350.0;
    parameter Real k_Raf_AKT_14 = 15.1212;
    parameter Real n_Raf_AKT_14 = 1.0;
    parameter Real KM_Raf_AKT_14 = 119355.0;
    parameter Real k_RasActiveRasGap_15 = 1509.36;
    parameter Real n_RasActiveRasGap_15 = 1.0;
    parameter Real KM_RasActiveRasGap_15 = 1432410.0;
    parameter Real k_MekActivePP2A_16 = 2.83243;
    parameter Real n_MekActivePP2A_16 = 1.0;
    parameter Real KM_MekActivePP2A_16 = 518753.0;
    parameter Real k_RasActive_RafPP_19 = 0.126329;
    parameter Real n_RasActive_RafPP_19 = 1.0;
    parameter Real KM_RasActive_RafPP_19 = 1061.71;
    parameter Real kd_P90Rsk_21 = 0.005;
    parameter Real cell_nsclc = 1.0;



    Real EGFR_active;
    Real D_SOS;
    Real A_SOS;
    Real Raf;
    Real Ras_active;
    Real Mek_active;
    Real ERK;
    Real ERK_active;
    Real IGFR_active;
    Real PI3KCA;
    Real PI3KCA_active;
    Real AKT_active;
    Real AKT;
    Real PP2A;
    Real Ras;
    Real Raf_active;
    Real Mek;
    Real RasGapActive;
    Real RafPP;
    Real P90RskInactive;
    Real P90Rsk_Active;

initial equation
    EGFR_active = 8000.0;
    D_SOS = 120000.0;
    A_SOS = 0.0;
    Raf = 120000.0;
    Ras_active = 0.0;
    Mek_active = 0.0;
    ERK = 600000.0;
    ERK_active = 0.0;
    IGFR_active = 800.0;
    PI3KCA = 120000.0;
    PI3KCA_active = 0.0;
    AKT_active = 0.0;
    AKT = 600000.0;
    PP2A = 120000.0;
    Ras = 120000.0;
    Raf_active = 0.0;
    Mek = 600000.0;
    RasGapActive = 120000.0;
    RafPP = 120000.0;
    P90RskInactive = 120000.0;
    P90Rsk_Active = 0.0;

equation

    der(EGFR_active) = (k_SOS_E_0 * EGFR_active * pow(D_SOS, n_SOS_0) / (pow(KM_SOS_E_0, n_SOS_0) + pow(D_SOS, n_SOS_0))) + (EGFR_active * k_PI3K_EGF1R_7 * EGFR_active * pow(PI3KCA, n_PI3K_E_7) / (pow(KM_PI3K_EGF1R_7, n_PI3K_E_7) + pow(PI3KCA, n_PI3K_E_7))) - (k_SOS_E_0 * EGFR_active * pow(D_SOS, n_SOS_0) / (pow(KM_SOS_E_0, n_SOS_0) + pow(D_SOS, n_SOS_0))) - (gamma_EGFR * EGFR_active) - (EGFR_active * k_PI3K_EGF1R_7 * EGFR_active * pow(PI3KCA, n_PI3K_E_7) / (pow(KM_PI3K_EGF1R_7, n_PI3K_E_7) + pow(PI3KCA, n_PI3K_E_7)));
    der(D_SOS) = (P90Rsk_Active * k_D_SOS_P90Rsk_4 * pow(A_SOS, n_D_SOS_4) / (pow(KM_D_SOS_P90Rsk_4, n_D_SOS_4) + pow(A_SOS, n_D_SOS_4))) - (k_SOS_E_0 * EGFR_active * pow(D_SOS, n_SOS_0) / (pow(KM_SOS_E_0, n_SOS_0) + pow(D_SOS, n_SOS_0))) - (IGFR_active * k_A_SOS_I_5 * pow(D_SOS, n_A_SOS_I_5) / (pow(KM_A_SOS_I_5, n_A_SOS_I_5) + pow(D_SOS, n_A_SOS_I_5)));
    der(A_SOS) = (k_SOS_E_0 * EGFR_active * pow(D_SOS, n_SOS_0) / (pow(KM_SOS_E_0, n_SOS_0) + pow(D_SOS, n_SOS_0))) + (A_SOS * k_Ras_SOS_1 * pow(Ras, n_Ras_SOS_1) / (pow(KM_Ras_SOS_1, n_Ras_SOS_1) + pow(Ras, n_Ras_SOS_1))) + (IGFR_active * k_A_SOS_I_5 * pow(D_SOS, n_A_SOS_I_5) / (pow(KM_A_SOS_I_5, n_A_SOS_I_5) + pow(D_SOS, n_A_SOS_I_5))) - (A_SOS * k_Ras_SOS_1 * pow(Ras, n_Ras_SOS_1) / (pow(KM_Ras_SOS_1, n_Ras_SOS_1) + pow(Ras, n_Ras_SOS_1))) - (P90Rsk_Active * k_D_SOS_P90Rsk_4 * pow(A_SOS, n_D_SOS_4) / (pow(KM_D_SOS_P90Rsk_4, n_D_SOS_4) + pow(A_SOS, n_D_SOS_4)));
    der(Raf) = (AKT_active * k_Raf_AKT_14 * pow(Raf_active, n_Raf_AKT_14) / (pow(KM_Raf_AKT_14, n_Raf_AKT_14) + pow(Raf_active, n_Raf_AKT_14))) + (RafPP * k_RasActive_RafPP_19 * pow(Raf_active, n_RasActive_RafPP_19) / (pow(KM_RasActive_RafPP_19, n_RasActive_RafPP_19) + pow(Raf_active, n_RasActive_RafPP_19))) - (Ras_active * k_Raf_RasActive_12 * pow(Raf, n_Raf_RasActive_12) / (KM_Raf_RasActive_12 + pow(Raf, n_Raf_RasActive_12)));
    der(Ras_active) = (A_SOS * k_Ras_SOS_1 * pow(Ras, n_Ras_SOS_1) / (pow(KM_Ras_SOS_1, n_Ras_SOS_1) + pow(Ras, n_Ras_SOS_1))) + (Ras_active * k_PI3K_Ras_11 * pow(PI3KCA, n_PI3K_Ras_11) / (pow(KM_PI3K_Ras_11, n_PI3K_Ras_11) + pow(PI3KCA, n_PI3K_Ras_11))) + (Ras_active * k_Raf_RasActive_12 * pow(Raf, n_Raf_RasActive_12) / (KM_Raf_RasActive_12 + pow(Raf, n_Raf_RasActive_12))) - (Ras_active * k_PI3K_Ras_11 * pow(PI3KCA, n_PI3K_Ras_11) / (pow(KM_PI3K_Ras_11, n_PI3K_Ras_11) + pow(PI3KCA, n_PI3K_Ras_11))) - (Ras_active * k_Raf_RasActive_12 * pow(Raf, n_Raf_RasActive_12) / (KM_Raf_RasActive_12 + pow(Raf, n_Raf_RasActive_12))) - (RasGapActive * k_RasActiveRasGap_15 * pow(Ras_active, n_RasActiveRasGap_15) / (pow(KM_RasActiveRasGap_15, n_RasActiveRasGap_15) + pow(Ras_active, n_RasActiveRasGap_15)));
    der(Mek_active) = (Mek_active * k_ERK_MekActive_3 * ERK / (KM_ERK_MekActive_3 + ERK)) + (Raf_active * k_Mek_PP2A_13 * pow(Mek, n_Mek_PP2A_13) / (pow(KM_MekPP2A_13, n_Mek_PP2A_13) + pow(Mek, n_Mek_PP2A_13))) - (Mek_active * k_ERK_MekActive_3 * ERK / (KM_ERK_MekActive_3 + ERK)) - (PP2A * k_MekActivePP2A_16 * pow(Mek_active, n_MekActivePP2A_16) / (pow(KM_MekActivePP2A_16, n_MekActivePP2A_16) + pow(Mek_active, n_MekActivePP2A_16)));
    der(ERK) = (PP2A * k_ERKactive_PP2A_10 * pow(ERK_active, n_ERKactive_PP2A_10) / (pow(KM_ERKactive_PP2A_10, n_ERKactive_PP2A_10) + pow(ERK_active, n_ERKactive_PP2A_10))) - (Mek_active * k_ERK_MekActive_3 * ERK / (KM_ERK_MekActive_3 + ERK));
    der(ERK_active) = (Mek_active * k_ERK_MekActive_3 * ERK / (KM_ERK_MekActive_3 + ERK)) + (ERK_active * k_P90Rsk_ERKActive * P90RskInactive / (KM_P90Rsk_ERKActive + P90RskInactive)) - (PP2A * k_ERKactive_PP2A_10 * pow(ERK_active, n_ERKactive_PP2A_10) / (pow(KM_ERKactive_PP2A_10, n_ERKactive_PP2A_10) + pow(ERK_active, n_ERKactive_PP2A_10))) - (ERK_active * k_P90Rsk_ERKActive * P90RskInactive / (KM_P90Rsk_ERKActive + P90RskInactive));
    der(IGFR_active) = (IGFR_active * k_A_SOS_I_5 * pow(D_SOS, n_A_SOS_I_5) / (pow(KM_A_SOS_I_5, n_A_SOS_I_5) + pow(D_SOS, n_A_SOS_I_5))) + (IGFR_active * k_PI3K_IGF1R_6 * pow(PI3KCA, n_PI3K_I_6) / (pow(KM_PI3K_IGF1R_6, n_PI3K_I_6) + pow(PI3KCA, n_PI3K_I_6))) - (IGFR_active * k_A_SOS_I_5 * pow(D_SOS, n_A_SOS_I_5) / (pow(KM_A_SOS_I_5, n_A_SOS_I_5) + pow(D_SOS, n_A_SOS_I_5))) - (IGFR_active * k_PI3K_IGF1R_6 * pow(PI3KCA, n_PI3K_I_6) / (pow(KM_PI3K_IGF1R_6, n_PI3K_I_6) + pow(PI3KCA, n_PI3K_I_6))) - (gamma_IGFR * IGFR_active);
    der(PI3KCA) = (kd_PI3K_a * PI3KCA_active) - (IGFR_active * k_PI3K_IGF1R_6 * pow(PI3KCA, n_PI3K_I_6) / (pow(KM_PI3K_IGF1R_6, n_PI3K_I_6) + pow(PI3KCA, n_PI3K_I_6))) - (EGFR_active * k_PI3K_EGF1R_7 * EGFR_active * pow(PI3KCA, n_PI3K_E_7) / (pow(KM_PI3K_EGF1R_7, n_PI3K_E_7) + pow(PI3KCA, n_PI3K_E_7))) - (Ras_active * k_PI3K_Ras_11 * pow(PI3KCA, n_PI3K_Ras_11) / (pow(KM_PI3K_Ras_11, n_PI3K_Ras_11) + pow(PI3KCA, n_PI3K_Ras_11)));
    der(PI3KCA_active) = (IGFR_active * k_PI3K_IGF1R_6 * pow(PI3KCA, n_PI3K_I_6) / (pow(KM_PI3K_IGF1R_6, n_PI3K_I_6) + pow(PI3KCA, n_PI3K_I_6))) + (EGFR_active * k_PI3K_EGF1R_7 * EGFR_active * pow(PI3KCA, n_PI3K_E_7) / (pow(KM_PI3K_EGF1R_7, n_PI3K_E_7) + pow(PI3KCA, n_PI3K_E_7))) + (PI3KCA_active * k_AKT_PI3K_8 * pow(AKT, n_AKT_PI3K_8) / (pow(KM_AKT_PI3K_8, n_AKT_PI3K_8) + pow(AKT, n_AKT_PI3K_8))) + (Ras_active * k_PI3K_Ras_11 * pow(PI3KCA, n_PI3K_Ras_11) / (pow(KM_PI3K_Ras_11, n_PI3K_Ras_11) + pow(PI3KCA, n_PI3K_Ras_11))) - (PI3KCA_active * k_AKT_PI3K_8 * pow(AKT, n_AKT_PI3K_8) / (pow(KM_AKT_PI3K_8, n_AKT_PI3K_8) + pow(AKT, n_AKT_PI3K_8))) - (kd_PI3K_a * PI3KCA_active);
    der(AKT_active) = (PI3KCA_active * k_AKT_PI3K_8 * pow(AKT, n_AKT_PI3K_8) / (pow(KM_AKT_PI3K_8, n_AKT_PI3K_8) + pow(AKT, n_AKT_PI3K_8))) + (AKT_active * k_Raf_AKT_14 * pow(Raf_active, n_Raf_AKT_14) / (pow(KM_Raf_AKT_14, n_Raf_AKT_14) + pow(Raf_active, n_Raf_AKT_14))) - (kd_AKT_9 * AKT_active) - (AKT_active * k_Raf_AKT_14 * pow(Raf_active, n_Raf_AKT_14) / (pow(KM_Raf_AKT_14, n_Raf_AKT_14) + pow(Raf_active, n_Raf_AKT_14)));
    der(AKT) = (kd_AKT_9 * AKT_active) - (PI3KCA_active * k_AKT_PI3K_8 * pow(AKT, n_AKT_PI3K_8) / (pow(KM_AKT_PI3K_8, n_AKT_PI3K_8) + pow(AKT, n_AKT_PI3K_8)));
    der(PP2A) = (PP2A * k_ERKactive_PP2A_10 * pow(ERK_active, n_ERKactive_PP2A_10) / (pow(KM_ERKactive_PP2A_10, n_ERKactive_PP2A_10) + pow(ERK_active, n_ERKactive_PP2A_10))) + (PP2A * k_MekActivePP2A_16 * pow(Mek_active, n_MekActivePP2A_16) / (pow(KM_MekActivePP2A_16, n_MekActivePP2A_16) + pow(Mek_active, n_MekActivePP2A_16))) - (PP2A * k_ERKactive_PP2A_10 * pow(ERK_active, n_ERKactive_PP2A_10) / (pow(KM_ERKactive_PP2A_10, n_ERKactive_PP2A_10) + pow(ERK_active, n_ERKactive_PP2A_10))) - (PP2A * k_MekActivePP2A_16 * pow(Mek_active, n_MekActivePP2A_16) / (pow(KM_MekActivePP2A_16, n_MekActivePP2A_16) + pow(Mek_active, n_MekActivePP2A_16)));
    der(Ras) = (RasGapActive * k_RasActiveRasGap_15 * pow(Ras_active, n_RasActiveRasGap_15) / (pow(KM_RasActiveRasGap_15, n_RasActiveRasGap_15) + pow(Ras_active, n_RasActiveRasGap_15))) - (A_SOS * k_Ras_SOS_1 * pow(Ras, n_Ras_SOS_1) / (pow(KM_Ras_SOS_1, n_Ras_SOS_1) + pow(Ras, n_Ras_SOS_1)));
    der(Raf_active) = (Ras_active * k_Raf_RasActive_12 * pow(Raf, n_Raf_RasActive_12) / (KM_Raf_RasActive_12 + pow(Raf, n_Raf_RasActive_12))) + (Raf_active * k_Mek_PP2A_13 * pow(Mek, n_Mek_PP2A_13) / (pow(KM_MekPP2A_13, n_Mek_PP2A_13) + pow(Mek, n_Mek_PP2A_13))) - (Raf_active * k_Mek_PP2A_13 * pow(Mek, n_Mek_PP2A_13) / (pow(KM_MekPP2A_13, n_Mek_PP2A_13) + pow(Mek, n_Mek_PP2A_13))) - (AKT_active * k_Raf_AKT_14 * pow(Raf_active, n_Raf_AKT_14) / (pow(KM_Raf_AKT_14, n_Raf_AKT_14) + pow(Raf_active, n_Raf_AKT_14))) - (RafPP * k_RasActive_RafPP_19 * pow(Raf_active, n_RasActive_RafPP_19) / (pow(KM_RasActive_RafPP_19, n_RasActive_RafPP_19) + pow(Raf_active, n_RasActive_RafPP_19)));
    der(Mek) = (PP2A * k_MekActivePP2A_16 * pow(Mek_active, n_MekActivePP2A_16) / (pow(KM_MekActivePP2A_16, n_MekActivePP2A_16) + pow(Mek_active, n_MekActivePP2A_16))) - (Raf_active * k_Mek_PP2A_13 * pow(Mek, n_Mek_PP2A_13) / (pow(KM_MekPP2A_13, n_Mek_PP2A_13) + pow(Mek, n_Mek_PP2A_13)));
    der(RasGapActive) = (RasGapActive * k_RasActiveRasGap_15 * pow(Ras_active, n_RasActiveRasGap_15) / (pow(KM_RasActiveRasGap_15, n_RasActiveRasGap_15) + pow(Ras_active, n_RasActiveRasGap_15))) - (RasGapActive * k_RasActiveRasGap_15 * pow(Ras_active, n_RasActiveRasGap_15) / (pow(KM_RasActiveRasGap_15, n_RasActiveRasGap_15) + pow(Ras_active, n_RasActiveRasGap_15)));
    der(RafPP) = (RafPP * k_RasActive_RafPP_19 * pow(Raf_active, n_RasActive_RafPP_19) / (pow(KM_RasActive_RafPP_19, n_RasActive_RafPP_19) + pow(Raf_active, n_RasActive_RafPP_19))) - (RafPP * k_RasActive_RafPP_19 * pow(Raf_active, n_RasActive_RafPP_19) / (pow(KM_RasActive_RafPP_19, n_RasActive_RafPP_19) + pow(Raf_active, n_RasActive_RafPP_19)));
    der(P90RskInactive) = (kd_P90Rsk_21 * P90Rsk_Active) - (ERK_active * k_P90Rsk_ERKActive * P90RskInactive / (KM_P90Rsk_ERKActive + P90RskInactive));
    der(P90Rsk_Active) = (P90Rsk_Active * k_D_SOS_P90Rsk_4 * pow(A_SOS, n_D_SOS_4) / (pow(KM_D_SOS_P90Rsk_4, n_D_SOS_4) + pow(A_SOS, n_D_SOS_4))) + (ERK_active * k_P90Rsk_ERKActive * P90RskInactive / (KM_P90Rsk_ERKActive + P90RskInactive)) - (P90Rsk_Active * k_D_SOS_P90Rsk_4 * pow(A_SOS, n_D_SOS_4) / (pow(KM_D_SOS_P90Rsk_4, n_D_SOS_4) + pow(A_SOS, n_D_SOS_4))) - (kd_P90Rsk_21 * P90Rsk_Active);




end BIOMD427;
