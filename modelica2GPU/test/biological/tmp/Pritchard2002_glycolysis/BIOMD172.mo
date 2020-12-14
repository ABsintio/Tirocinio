
model BIOMD172 "Pritchard2002_glycolysis"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real Vmax_1_HXT = 97.24;
    parameter Real Kglc_1_HXT = 1.1918;
    parameter Real Ki_1_HXT = 0.91;
    parameter Real Vmax_2_HK = 236.7;
    parameter Real Kglc_2_HK = 0.08;
    parameter Real Katp_2_HK = 0.15;
    parameter Real Keq_2_HK = 2000.0;
    parameter Real Kg6p_2_HK = 30.0;
    parameter Real Kadp_2_HK = 0.23;
    parameter Real Vmax_3_PGI = 1056.0;
    parameter Real Kg6p_3_PGI = 1.4;
    parameter Real Keq_3_PGI = 0.29;
    parameter Real Kf6p_3_PGI = 0.3;
    parameter Real Vmax_4_PFK = 110.0;
    parameter Real gR_4_PFK = 5.12;
    parameter Real Kf6p_4_PFK = 0.1;
    parameter Real Katp_4_PFK = 0.71;
    parameter Real L0_4_PFK = 0.66;
    parameter Real Ciatp_4_PFK = 100.0;
    parameter Real Kiatp_4_PFK = 0.65;
    parameter Real Camp_4_PFK = 0.0845;
    parameter Real Kamp_4_PFK = 0.0995;
    parameter Real Cf26_4_PFK = 0.0174;
    parameter Real Kf26_4_PFK = 0.000682;
    parameter Real Cf16_4_PFK = 0.397;
    parameter Real Kf16_4_PFK = 0.111;
    parameter Real Catp_4_PFK = 3.0;
    parameter Real Vmax_5_ALD = 94.69;
    parameter Real Kf16bp_5_ALD = 0.3;
    parameter Real Keq_5_ALD = 0.069;
    parameter Real Kdhap_5_ALD = 2.0;
    parameter Real Kgap_5_ALD = 2.4;
    parameter Real Kigap_5_ALD = 10.0;
    parameter Real k1_6_TPI = 450000.0;
    parameter Real k2_6_TPI = 10000000.0;
    parameter Real C_7_GAPDH = 1.0;
    parameter Real Vmaxf_7_GAPDH = 1152.0;
    parameter Real Kgap_7_GAPDH = 0.21;
    parameter Real Knad_7_GAPDH = 0.09;
    parameter Real Vmaxr_7_GAPDH = 6719.0;
    parameter Real Kbpg_7_GAPDH = 0.0098;
    parameter Real Knadh_7_GAPDH = 0.06;
    parameter Real Vmax_8_PGK = 1288.0;
    parameter Real Keq_8_PGK = 3200.0;
    parameter Real Kp3g_8_PGK = 0.53;
    parameter Real Katp_8_PGK = 0.3;
    parameter Real Kbpg_8_PGK = 0.003;
    parameter Real Kadp_8_PGK = 0.2;
    parameter Real Vmax_9_PGM = 2585.0;
    parameter Real Kp3g_9_PGM = 1.2;
    parameter Real Keq_9_PGM = 0.19;
    parameter Real Kp2g_9_PGM = 0.08;
    parameter Real Vmax_10_ENO = 201.6;
    parameter Real Kp2g_10_ENO = 0.04;
    parameter Real Keq_10_ENO = 6.7;
    parameter Real Kpep_10_ENO = 0.5;
    parameter Real Vmax_11_PYK = 1000.0;
    parameter Real Kpep_11_PYK = 0.14;
    parameter Real Kadp_11_PYK = 0.53;
    parameter Real Keq_11_PYK = 6500.0;
    parameter Real Kpyr_11_PYK = 21.0;
    parameter Real Katp_11_PYK = 1.5;
    parameter Real Vmax_12_PDC = 857.8;
    parameter Real Kpyr_12_PDC = 4.33;
    parameter Real nH_12_PDC = 1.9;
    parameter Real Vmax_13_ADH = 209.5;
    parameter Real Ketoh_13_ADH = 17.0;
    parameter Real Kinad_13_ADH = 0.92;
    parameter Real Keq_13_ADH = 6.9e-05;
    parameter Real Knad_13_ADH = 0.17;
    parameter Real Knadh_13_ADH = 0.11;
    parameter Real Kinadh_13_ADH = 0.031;
    parameter Real Kacald_13_ADH = 1.11;
    parameter Real Kiacald_13_ADH = 1.1;
    parameter Real Kietoh_13_ADH = 90.0;
    parameter Real Katpase_14_ATPase = 39.5;
    parameter Real k1_15_AK = 45.0;
    parameter Real k2_15_AK = 100.0;
    parameter Real Vmax_16_G3PDH = 47.11;
    parameter Real Kdhap_16_G3PDH = 0.4;
    parameter Real Knadh_16_G3PDH = 0.023;
    parameter Real Keq_16_G3PDH = 4300.0;
    parameter Real Kglycerol_16_G3PDH = 1.0;
    parameter Real Knad_16_G3PDH = 0.93;
    parameter Real KGLYCOGEN_17_Glycogen_Branch = 6.0;
    parameter Real Ktrehalose_18_Trehalose_Branch = 2.4;
    parameter Real k_19_Succinate_Branch = 21.4;
    parameter Real cell = 1.0;
    parameter Real ext = 1.0;



    Real GLCo;
    Real GLCi;
    Real ATP;
    Real G6P;
    Real ADP;
    Real F6P;
    Real F16bP;
    Real AMP;
    Real F26bP;
    Real DHAP;
    Real GAP;
    Real NAD;
    Real BPG;
    Real NADH;
    Real P3G;
    Real P2G;
    Real PEP;
    Real PYR;
    Real AcAld;
    Real CO2;
    Real EtOH;
    Real Glycerol;
    Real Glycogen;
    Real Trehalose;
    Real Succinate;

initial equation
    GLCo = 2.0;
    GLCi = 0.097652231064563;
    ATP = 2.52512746499271;
    G6P = 2.67504014044787;
    ADP = 1.28198768168719;
    F6P = 0.624976405532373;
    F16bP = 6.22132076069411;
    AMP = 0.292884853320091;
    F26bP = 0.02;
    DHAP = 1.00415254899644;
    GAP = 0.0451809175780963;
    NAD = 1.50329030201531;
    BPG = 0.000736873499865602;
    NADH = 0.0867096979846952;
    P3G = 0.885688538360659;
    P2G = 0.127695817386632;
    PEP = 0.0632352144936527;
    PYR = 1.81531251192736;
    AcAld = 0.178140579850657;
    CO2 = 1.0;
    EtOH = 50.0;
    Glycerol = 0.15;
    Glycogen = 0.0;
    Trehalose = 0.0;
    Succinate = 0.0;

equation

    der(GLCo) = 0.0;
    der(GLCi) = (Vmax_1_HXT * (GLCo - GLCi) / Kglc_1_HXT / (1 + (GLCo + GLCi) / Kglc_1_HXT + Ki_1_HXT * GLCo * GLCi / Kglc_1_HXT^2)) - (cell * Vmax_2_HK * (GLCi * ATP / (Kglc_2_HK * Katp_2_HK) - G6P * ADP / (Kglc_2_HK * Katp_2_HK * Keq_2_HK)) / ((1 + GLCi / Kglc_2_HK + G6P / Kg6p_2_HK) * (1 + ATP / Katp_2_HK + ADP / Kadp_2_HK)));
    der(ATP) = (cell * Vmax_8_PGK * ((Keq_8_PGK * BPG * ADP - P3G * ATP) / (Kp3g_8_PGK * Katp_8_PGK)) / ((1 + BPG / Kbpg_8_PGK + P3G / Kp3g_8_PGK) * (1 + ADP / Kadp_8_PGK + ATP / Katp_8_PGK))) + (cell * Vmax_11_PYK * (PEP * ADP / (Kpep_11_PYK * Kadp_11_PYK) - PYR * ATP / (Kpep_11_PYK * Kadp_11_PYK * Keq_11_PYK)) / ((1 + PEP / Kpep_11_PYK + PYR / Kpyr_11_PYK) * (1 + ADP / Kadp_11_PYK + ATP / Katp_11_PYK))) + (cell * (k1_15_AK * ADP * ADP - k2_15_AK * ATP * AMP)) - (cell * Vmax_2_HK * (GLCi * ATP / (Kglc_2_HK * Katp_2_HK) - G6P * ADP / (Kglc_2_HK * Katp_2_HK * Keq_2_HK)) / ((1 + GLCi / Kglc_2_HK + G6P / Kg6p_2_HK) * (1 + ATP / Katp_2_HK + ADP / Kadp_2_HK))) - (cell * Vmax_4_PFK * (gR_4_PFK * (F6P / Kf6p_4_PFK) * (ATP / Katp_4_PFK) * (1 + F6P / Kf6p_4_PFK + ATP / Katp_4_PFK + (gR_4_PFK * F6P / Kf6p_4_PFK) * ATP / Katp_4_PFK) / ((1 + F6P / Kf6p_4_PFK + ATP / Katp_4_PFK + (gR_4_PFK * F6P / Kf6p_4_PFK) * ATP / Katp_4_PFK)^2 + L0_4_PFK * ((1 + Ciatp_4_PFK * ATP / Kiatp_4_PFK) / (1 + ATP / Kiatp_4_PFK))^2 * ((1 + Camp_4_PFK * AMP / Kamp_4_PFK) / (1 + AMP / Kamp_4_PFK))^2 * ((1 + Cf26_4_PFK * F26bP / Kf26_4_PFK + Cf16_4_PFK * F16bP / Kf16_4_PFK) / (1 + F26bP / Kf26_4_PFK + F16bP / Kf16_4_PFK))^2 * (1 + Catp_4_PFK * ATP / Katp_4_PFK)^2))) - (cell * Katpase_14_ATPase * ATP) - (cell * KGLYCOGEN_17_Glycogen_Branch) - (cell * Ktrehalose_18_Trehalose_Branch);
    der(G6P) = (cell * Vmax_2_HK * (GLCi * ATP / (Kglc_2_HK * Katp_2_HK) - G6P * ADP / (Kglc_2_HK * Katp_2_HK * Keq_2_HK)) / ((1 + GLCi / Kglc_2_HK + G6P / Kg6p_2_HK) * (1 + ATP / Katp_2_HK + ADP / Kadp_2_HK))) - (cell * Vmax_3_PGI * (G6P / Kg6p_3_PGI - F6P / (Kg6p_3_PGI * Keq_3_PGI)) / (1 + G6P / Kg6p_3_PGI + F6P / Kf6p_3_PGI)) - (cell * KGLYCOGEN_17_Glycogen_Branch) - (2.0 * cell * Ktrehalose_18_Trehalose_Branch);
    der(ADP) = (cell * Vmax_2_HK * (GLCi * ATP / (Kglc_2_HK * Katp_2_HK) - G6P * ADP / (Kglc_2_HK * Katp_2_HK * Keq_2_HK)) / ((1 + GLCi / Kglc_2_HK + G6P / Kg6p_2_HK) * (1 + ATP / Katp_2_HK + ADP / Kadp_2_HK))) + (cell * Vmax_4_PFK * (gR_4_PFK * (F6P / Kf6p_4_PFK) * (ATP / Katp_4_PFK) * (1 + F6P / Kf6p_4_PFK + ATP / Katp_4_PFK + (gR_4_PFK * F6P / Kf6p_4_PFK) * ATP / Katp_4_PFK) / ((1 + F6P / Kf6p_4_PFK + ATP / Katp_4_PFK + (gR_4_PFK * F6P / Kf6p_4_PFK) * ATP / Katp_4_PFK)^2 + L0_4_PFK * ((1 + Ciatp_4_PFK * ATP / Kiatp_4_PFK) / (1 + ATP / Kiatp_4_PFK))^2 * ((1 + Camp_4_PFK * AMP / Kamp_4_PFK) / (1 + AMP / Kamp_4_PFK))^2 * ((1 + Cf26_4_PFK * F26bP / Kf26_4_PFK + Cf16_4_PFK * F16bP / Kf16_4_PFK) / (1 + F26bP / Kf26_4_PFK + F16bP / Kf16_4_PFK))^2 * (1 + Catp_4_PFK * ATP / Katp_4_PFK)^2))) + (cell * Katpase_14_ATPase * ATP) + (cell * KGLYCOGEN_17_Glycogen_Branch) + (cell * Ktrehalose_18_Trehalose_Branch) - (cell * Vmax_8_PGK * ((Keq_8_PGK * BPG * ADP - P3G * ATP) / (Kp3g_8_PGK * Katp_8_PGK)) / ((1 + BPG / Kbpg_8_PGK + P3G / Kp3g_8_PGK) * (1 + ADP / Kadp_8_PGK + ATP / Katp_8_PGK))) - (cell * Vmax_11_PYK * (PEP * ADP / (Kpep_11_PYK * Kadp_11_PYK) - PYR * ATP / (Kpep_11_PYK * Kadp_11_PYK * Keq_11_PYK)) / ((1 + PEP / Kpep_11_PYK + PYR / Kpyr_11_PYK) * (1 + ADP / Kadp_11_PYK + ATP / Katp_11_PYK))) - (2.0 * cell * (k1_15_AK * ADP * ADP - k2_15_AK * ATP * AMP));
    der(F6P) = (cell * Vmax_3_PGI * (G6P / Kg6p_3_PGI - F6P / (Kg6p_3_PGI * Keq_3_PGI)) / (1 + G6P / Kg6p_3_PGI + F6P / Kf6p_3_PGI)) - (cell * Vmax_4_PFK * (gR_4_PFK * (F6P / Kf6p_4_PFK) * (ATP / Katp_4_PFK) * (1 + F6P / Kf6p_4_PFK + ATP / Katp_4_PFK + (gR_4_PFK * F6P / Kf6p_4_PFK) * ATP / Katp_4_PFK) / ((1 + F6P / Kf6p_4_PFK + ATP / Katp_4_PFK + (gR_4_PFK * F6P / Kf6p_4_PFK) * ATP / Katp_4_PFK)^2 + L0_4_PFK * ((1 + Ciatp_4_PFK * ATP / Kiatp_4_PFK) / (1 + ATP / Kiatp_4_PFK))^2 * ((1 + Camp_4_PFK * AMP / Kamp_4_PFK) / (1 + AMP / Kamp_4_PFK))^2 * ((1 + Cf26_4_PFK * F26bP / Kf26_4_PFK + Cf16_4_PFK * F16bP / Kf16_4_PFK) / (1 + F26bP / Kf26_4_PFK + F16bP / Kf16_4_PFK))^2 * (1 + Catp_4_PFK * ATP / Katp_4_PFK)^2)));
    der(F16bP) = (cell * Vmax_4_PFK * (gR_4_PFK * (F6P / Kf6p_4_PFK) * (ATP / Katp_4_PFK) * (1 + F6P / Kf6p_4_PFK + ATP / Katp_4_PFK + (gR_4_PFK * F6P / Kf6p_4_PFK) * ATP / Katp_4_PFK) / ((1 + F6P / Kf6p_4_PFK + ATP / Katp_4_PFK + (gR_4_PFK * F6P / Kf6p_4_PFK) * ATP / Katp_4_PFK)^2 + L0_4_PFK * ((1 + Ciatp_4_PFK * ATP / Kiatp_4_PFK) / (1 + ATP / Kiatp_4_PFK))^2 * ((1 + Camp_4_PFK * AMP / Kamp_4_PFK) / (1 + AMP / Kamp_4_PFK))^2 * ((1 + Cf26_4_PFK * F26bP / Kf26_4_PFK + Cf16_4_PFK * F16bP / Kf16_4_PFK) / (1 + F26bP / Kf26_4_PFK + F16bP / Kf16_4_PFK))^2 * (1 + Catp_4_PFK * ATP / Katp_4_PFK)^2))) - (cell * Vmax_5_ALD * (F16bP / Kf16bp_5_ALD - DHAP * GAP / (Kf16bp_5_ALD * Keq_5_ALD)) / (1 + F16bP / Kf16bp_5_ALD + DHAP / Kdhap_5_ALD + GAP / Kgap_5_ALD + F16bP * GAP / (Kf16bp_5_ALD * Kigap_5_ALD) + DHAP * GAP / (Kdhap_5_ALD * Kgap_5_ALD)));
    der(AMP) = (cell * (k1_15_AK * ADP * ADP - k2_15_AK * ATP * AMP)) ;
    der(F26bP) = 0.0;
    der(DHAP) = (cell * Vmax_5_ALD * (F16bP / Kf16bp_5_ALD - DHAP * GAP / (Kf16bp_5_ALD * Keq_5_ALD)) / (1 + F16bP / Kf16bp_5_ALD + DHAP / Kdhap_5_ALD + GAP / Kgap_5_ALD + F16bP * GAP / (Kf16bp_5_ALD * Kigap_5_ALD) + DHAP * GAP / (Kdhap_5_ALD * Kgap_5_ALD))) - (cell * (k1_6_TPI * DHAP - k2_6_TPI * GAP)) - (cell * Vmax_16_G3PDH * ((DHAP / Kdhap_16_G3PDH) * (NADH / Knadh_16_G3PDH) - (Glycerol / Kdhap_16_G3PDH) * (NAD / Knadh_16_G3PDH) * (1 / Keq_16_G3PDH)) / ((1 + DHAP / Kdhap_16_G3PDH + Glycerol / Kglycerol_16_G3PDH) * (1 + NADH / Knadh_16_G3PDH + NAD / Knad_16_G3PDH)));
    der(GAP) = (cell * Vmax_5_ALD * (F16bP / Kf16bp_5_ALD - DHAP * GAP / (Kf16bp_5_ALD * Keq_5_ALD)) / (1 + F16bP / Kf16bp_5_ALD + DHAP / Kdhap_5_ALD + GAP / Kgap_5_ALD + F16bP * GAP / (Kf16bp_5_ALD * Kigap_5_ALD) + DHAP * GAP / (Kdhap_5_ALD * Kgap_5_ALD))) + (cell * (k1_6_TPI * DHAP - k2_6_TPI * GAP)) - (cell * C_7_GAPDH * (Vmaxf_7_GAPDH * GAP * NAD / (Kgap_7_GAPDH * Knad_7_GAPDH) - Vmaxr_7_GAPDH * BPG * NADH / (Kbpg_7_GAPDH * Knadh_7_GAPDH)) / ((1 + GAP / Kgap_7_GAPDH + BPG / Kbpg_7_GAPDH) * (1 + NAD / Knad_7_GAPDH + NADH / Knadh_7_GAPDH)));
    der(NAD) = (cell * Vmax_16_G3PDH * ((DHAP / Kdhap_16_G3PDH) * (NADH / Knadh_16_G3PDH) - (Glycerol / Kdhap_16_G3PDH) * (NAD / Knadh_16_G3PDH) * (1 / Keq_16_G3PDH)) / ((1 + DHAP / Kdhap_16_G3PDH + Glycerol / Kglycerol_16_G3PDH) * (1 + NADH / Knadh_16_G3PDH + NAD / Knad_16_G3PDH))) - (cell * C_7_GAPDH * (Vmaxf_7_GAPDH * GAP * NAD / (Kgap_7_GAPDH * Knad_7_GAPDH) - Vmaxr_7_GAPDH * BPG * NADH / (Kbpg_7_GAPDH * Knadh_7_GAPDH)) / ((1 + GAP / Kgap_7_GAPDH + BPG / Kbpg_7_GAPDH) * (1 + NAD / Knad_7_GAPDH + NADH / Knadh_7_GAPDH))) - (cell * Vmax_13_ADH * (EtOH * NAD / (Ketoh_13_ADH * Kinad_13_ADH) - AcAld * NADH / (Ketoh_13_ADH * Kinad_13_ADH * Keq_13_ADH)) / (1 + NAD / Kinad_13_ADH + EtOH * Knad_13_ADH / (Kinad_13_ADH * Ketoh_13_ADH) + AcAld * Knadh_13_ADH / (Kinadh_13_ADH * Kacald_13_ADH) + NADH / Kinadh_13_ADH + EtOH * NAD / (Kinad_13_ADH * Ketoh_13_ADH) + NAD * AcAld * Knadh_13_ADH / (Kinad_13_ADH * Kinadh_13_ADH * Kacald_13_ADH) + EtOH * NADH * Knad_13_ADH / (Kinad_13_ADH * Kinadh_13_ADH * Ketoh_13_ADH) + AcAld * NADH / (Kacald_13_ADH * Kinadh_13_ADH) + EtOH * NAD * AcAld / (Kinad_13_ADH * Kiacald_13_ADH * Ketoh_13_ADH) + EtOH * AcAld * NADH / (Kietoh_13_ADH * Kinadh_13_ADH * Kacald_13_ADH))) - (3.0 * cell * k_19_Succinate_Branch * AcAld);
    der(BPG) = (cell * C_7_GAPDH * (Vmaxf_7_GAPDH * GAP * NAD / (Kgap_7_GAPDH * Knad_7_GAPDH) - Vmaxr_7_GAPDH * BPG * NADH / (Kbpg_7_GAPDH * Knadh_7_GAPDH)) / ((1 + GAP / Kgap_7_GAPDH + BPG / Kbpg_7_GAPDH) * (1 + NAD / Knad_7_GAPDH + NADH / Knadh_7_GAPDH))) - (cell * Vmax_8_PGK * ((Keq_8_PGK * BPG * ADP - P3G * ATP) / (Kp3g_8_PGK * Katp_8_PGK)) / ((1 + BPG / Kbpg_8_PGK + P3G / Kp3g_8_PGK) * (1 + ADP / Kadp_8_PGK + ATP / Katp_8_PGK)));
    der(NADH) = (cell * C_7_GAPDH * (Vmaxf_7_GAPDH * GAP * NAD / (Kgap_7_GAPDH * Knad_7_GAPDH) - Vmaxr_7_GAPDH * BPG * NADH / (Kbpg_7_GAPDH * Knadh_7_GAPDH)) / ((1 + GAP / Kgap_7_GAPDH + BPG / Kbpg_7_GAPDH) * (1 + NAD / Knad_7_GAPDH + NADH / Knadh_7_GAPDH))) + (cell * Vmax_13_ADH * (EtOH * NAD / (Ketoh_13_ADH * Kinad_13_ADH) - AcAld * NADH / (Ketoh_13_ADH * Kinad_13_ADH * Keq_13_ADH)) / (1 + NAD / Kinad_13_ADH + EtOH * Knad_13_ADH / (Kinad_13_ADH * Ketoh_13_ADH) + AcAld * Knadh_13_ADH / (Kinadh_13_ADH * Kacald_13_ADH) + NADH / Kinadh_13_ADH + EtOH * NAD / (Kinad_13_ADH * Ketoh_13_ADH) + NAD * AcAld * Knadh_13_ADH / (Kinad_13_ADH * Kinadh_13_ADH * Kacald_13_ADH) + EtOH * NADH * Knad_13_ADH / (Kinad_13_ADH * Kinadh_13_ADH * Ketoh_13_ADH) + AcAld * NADH / (Kacald_13_ADH * Kinadh_13_ADH) + EtOH * NAD * AcAld / (Kinad_13_ADH * Kiacald_13_ADH * Ketoh_13_ADH) + EtOH * AcAld * NADH / (Kietoh_13_ADH * Kinadh_13_ADH * Kacald_13_ADH))) + (3.0 * cell * k_19_Succinate_Branch * AcAld) - (cell * Vmax_16_G3PDH * ((DHAP / Kdhap_16_G3PDH) * (NADH / Knadh_16_G3PDH) - (Glycerol / Kdhap_16_G3PDH) * (NAD / Knadh_16_G3PDH) * (1 / Keq_16_G3PDH)) / ((1 + DHAP / Kdhap_16_G3PDH + Glycerol / Kglycerol_16_G3PDH) * (1 + NADH / Knadh_16_G3PDH + NAD / Knad_16_G3PDH)));
    der(P3G) = (cell * Vmax_8_PGK * ((Keq_8_PGK * BPG * ADP - P3G * ATP) / (Kp3g_8_PGK * Katp_8_PGK)) / ((1 + BPG / Kbpg_8_PGK + P3G / Kp3g_8_PGK) * (1 + ADP / Kadp_8_PGK + ATP / Katp_8_PGK))) - (cell * Vmax_9_PGM * (P3G / Kp3g_9_PGM - P2G / (Kp3g_9_PGM * Keq_9_PGM)) / (1 + P3G / Kp3g_9_PGM + P2G / Kp2g_9_PGM));
    der(P2G) = (cell * Vmax_9_PGM * (P3G / Kp3g_9_PGM - P2G / (Kp3g_9_PGM * Keq_9_PGM)) / (1 + P3G / Kp3g_9_PGM + P2G / Kp2g_9_PGM)) - (cell * Vmax_10_ENO * (P2G / Kp2g_10_ENO - PEP / (Kp2g_10_ENO * Keq_10_ENO)) / (1 + P2G / Kp2g_10_ENO + PEP / Kpep_10_ENO));
    der(PEP) = (cell * Vmax_10_ENO * (P2G / Kp2g_10_ENO - PEP / (Kp2g_10_ENO * Keq_10_ENO)) / (1 + P2G / Kp2g_10_ENO + PEP / Kpep_10_ENO)) - (cell * Vmax_11_PYK * (PEP * ADP / (Kpep_11_PYK * Kadp_11_PYK) - PYR * ATP / (Kpep_11_PYK * Kadp_11_PYK * Keq_11_PYK)) / ((1 + PEP / Kpep_11_PYK + PYR / Kpyr_11_PYK) * (1 + ADP / Kadp_11_PYK + ATP / Katp_11_PYK)));
    der(PYR) = (cell * Vmax_11_PYK * (PEP * ADP / (Kpep_11_PYK * Kadp_11_PYK) - PYR * ATP / (Kpep_11_PYK * Kadp_11_PYK * Keq_11_PYK)) / ((1 + PEP / Kpep_11_PYK + PYR / Kpyr_11_PYK) * (1 + ADP / Kadp_11_PYK + ATP / Katp_11_PYK))) - (cell * Vmax_12_PDC * (PYR / Kpyr_12_PDC)^nH_12_PDC / (1 + (PYR / Kpyr_12_PDC)^nH_12_PDC));
    der(AcAld) = (cell * Vmax_12_PDC * (PYR / Kpyr_12_PDC)^nH_12_PDC / (1 + (PYR / Kpyr_12_PDC)^nH_12_PDC)) + (cell * Vmax_13_ADH * (EtOH * NAD / (Ketoh_13_ADH * Kinad_13_ADH) - AcAld * NADH / (Ketoh_13_ADH * Kinad_13_ADH * Keq_13_ADH)) / (1 + NAD / Kinad_13_ADH + EtOH * Knad_13_ADH / (Kinad_13_ADH * Ketoh_13_ADH) + AcAld * Knadh_13_ADH / (Kinadh_13_ADH * Kacald_13_ADH) + NADH / Kinadh_13_ADH + EtOH * NAD / (Kinad_13_ADH * Ketoh_13_ADH) + NAD * AcAld * Knadh_13_ADH / (Kinad_13_ADH * Kinadh_13_ADH * Kacald_13_ADH) + EtOH * NADH * Knad_13_ADH / (Kinad_13_ADH * Kinadh_13_ADH * Ketoh_13_ADH) + AcAld * NADH / (Kacald_13_ADH * Kinadh_13_ADH) + EtOH * NAD * AcAld / (Kinad_13_ADH * Kiacald_13_ADH * Ketoh_13_ADH) + EtOH * AcAld * NADH / (Kietoh_13_ADH * Kinadh_13_ADH * Kacald_13_ADH))) - (2.0 * cell * k_19_Succinate_Branch * AcAld);
    der(CO2) = 0.0;
    der(EtOH) = 0.0;
    der(Glycerol) = 0.0;
    der(Glycogen) = 0.0;
    der(Trehalose) = 0.0;
    der(Succinate) = 0.0;




end BIOMD172;
