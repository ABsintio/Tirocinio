
model BIOMD247 "Ralser2007_Carbohydrate_Rerouting_ROS"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;



    parameter Real k_rel_TPI = 1.0;
    parameter Real k_rel_GAPDH = 1.0;
    parameter Real SUMAXP = 4.1;
    parameter Real VmGLK_0 = 226.452;
    parameter Real KeqAK_0 = 0.45;
    parameter Real KeqGLK_0 = 3800.0;
    parameter Real KmGLKATP_0 = 0.15;
    parameter Real KmGLKGLCi_0 = 0.08;
    parameter Real KmGLKG6P_0 = 30.0;
    parameter Real KmGLKADP_0 = 0.23;
    parameter Real VmPGI_1 = 339.677;
    parameter Real KmPGIG6P_1 = 1.4;
    parameter Real KeqPGI_1 = 0.314;
    parameter Real KmPGIF6P_1 = 0.3;
    parameter Real gR_2 = 5.12;
    parameter Real VmPFK_2 = 182.903;
    parameter Real KeqAK_2 = 0.45;
    parameter Real KmPFKF6P_2 = 0.1;
    parameter Real KmPFKATP_2 = 0.71;
    parameter Real L0_2 = 0.66;
    parameter Real CPFKF26BP_2 = 0.0174;
    parameter Real KPFKF26BP_2 = 0.000682;
    parameter Real CPFKF16BP_2 = 0.397;
    parameter Real KPFKF16BP_2 = 0.111;
    parameter Real CPFKAMP_2 = 0.0845;
    parameter Real KPFKAMP_2 = 0.0995;
    parameter Real CiPFKATP_2 = 100.0;
    parameter Real KiPFKATP_2 = 0.65;
    parameter Real CPFKATP_2 = 3.0;
    parameter Real VmALD_3 = 322.258;
    parameter Real KeqTPI_3 = 0.045;
    parameter Real KeqALD_3 = 0.069;
    parameter Real KmALDF16P_3 = 0.3;
    parameter Real KmALDDHAP_3 = 2.4;
    parameter Real KmALDGAP_3 = 2.0;
    parameter Real KmALDGAPi_3 = 10.0;
    parameter Real VmG3PDH_4 = 70.15;
    parameter Real KeqG3PDH_4 = 4300.0;
    parameter Real KeqTPI_4 = 0.045;
    parameter Real KmG3PDHDHAP_4 = 0.4;
    parameter Real KmG3PDHNADH_4 = 0.023;
    parameter Real KmG3PDHNAD_4 = 0.93;
    parameter Real KmG3PDHGLY_4 = 1.0;
    parameter Real VmGAPDHr_5 = 6549.68;
    parameter Real KmGAPDHBPG_5 = 0.0098;
    parameter Real KmGAPDHNADH_5 = 0.06;
    parameter Real KeqTPI_5 = 0.045;
    parameter Real VmGAPDHf_5 = 1184.52;
    parameter Real KmGAPDHGAP_5 = 0.21;
    parameter Real KmGAPDHNAD_5 = 0.09;
    parameter Real KeqGAPDH_5 = 0.005;
    parameter Real VmPGK_6 = 1306.45;
    parameter Real KeqPGK_6 = 3200.0;
    parameter Real KeqAK_6 = 0.45;
    parameter Real KmPGKATP_6 = 0.3;
    parameter Real KmPGKP3G_6 = 0.53;
    parameter Real KmPGKADP_6 = 0.2;
    parameter Real KmPGKBPG_6 = 0.003;
    parameter Real VmPGM_7 = 2525.81;
    parameter Real KmPGMP3G_7 = 1.2;
    parameter Real KeqPGM_7 = 0.19;
    parameter Real KmPGMP2G_7 = 0.08;
    parameter Real VmENO_8 = 365.806;
    parameter Real KmENOP2G_8 = 0.04;
    parameter Real KeqENO_8 = 6.7;
    parameter Real KmENOPEP_8 = 0.5;
    parameter Real VmPYK_9 = 1088.71;
    parameter Real KmPYKPEP_9 = 0.14;
    parameter Real KmPYKADP_9 = 0.53;
    parameter Real KeqAK_9 = 0.45;
    parameter Real KeqPYK_9 = 6500.0;
    parameter Real KmPYKPYR_9 = 21.0;
    parameter Real KmPYKATP_9 = 1.5;
    parameter Real VmPDC_10 = 174.194;
    parameter Real nPDC_10 = 1.9;
    parameter Real KmPDCPYR_10 = 4.33;
    parameter Real KSUCC_11 = 21.4;
    parameter Real VmADH_12 = 810.0;
    parameter Real KiADHNAD_12 = 0.92;
    parameter Real KmADHETOH_12 = 17.0;
    parameter Real KeqADH_12 = 6.9e-05;
    parameter Real KmADHNAD_12 = 0.17;
    parameter Real KmADHNADH_12 = 0.11;
    parameter Real KiADHNADH_12 = 0.031;
    parameter Real KmADHACE_12 = 1.11;
    parameter Real KiADHACE_12 = 1.1;
    parameter Real KiADHETOH_12 = 90.0;
    parameter Real KATPASE_13 = 39.5;
    parameter Real KeqAK_13 = 0.45;
    parameter Real KmGA3P_14 = 1.27;
    parameter Real KmDHAP_14 = 1.23;
    parameter Real VmDHAP_14 = 10900.0;
    parameter Real VmGA3P_14 = 555.0;
    parameter Real VmG6PDH_15 = 4.0;
    parameter Real KmG6P_15 = 0.04;
    parameter Real KmNADP_15 = 0.02;
    parameter Real KiNADPH_15 = 0.017;
    parameter Real Vm6PGL_16 = 4.0;
    parameter Real Km6PGL_16 = 0.8;
    parameter Real VmGluDH_17 = 4.0;
    parameter Real KmGluconate_17 = 0.02;
    parameter Real KmNADP_17 = 0.03;
    parameter Real KiNADPH_17 = 0.03;
    parameter Real VmPPIf_18 = 3458.0;
    parameter Real VmPPIr_18 = 3458.0;
    parameter Real KmRibu5P_18 = 1.6;
    parameter Real KmRibo5P_18 = 1.6;
    parameter Real VmTransk1f_19 = 4.0;
    parameter Real VmTransk1r_19 = 2.0;
    parameter Real KmRibose5P_19 = 0.1;
    parameter Real KmXyl5P_19 = 0.15;
    parameter Real KmGA3P_19 = 0.1;
    parameter Real KmSeduhept_19 = 0.15;
    parameter Real VmR5PIf_20 = 1039.0;
    parameter Real VmR5PIr_20 = 1039.0;
    parameter Real KmRibu5P_20 = 1.5;
    parameter Real KmXyl_20 = 1.5;
    parameter Real VmTransaldf_21 = 55.0;
    parameter Real VmTransaldr_21 = 10.0;
    parameter Real KmGA3P_21 = 0.22;
    parameter Real KmSeduhept_21 = 0.18;
    parameter Real KmF6P_21 = 0.32;
    parameter Real KmEry4P_21 = 0.018;
    parameter Real VmTransk2f_22 = 3.2;
    parameter Real VmTransk2r_22 = 43.0;
    parameter Real KmXyl5P_22 = 0.16;
    parameter Real KmEry4P_22 = 0.09;
    parameter Real KmF6P_22 = 1.1;
    parameter Real KmGA3P_22 = 2.1;
    parameter Real kNADPH_23 = 2.0;
    parameter Real VmGLT_24 = 97.264;
    parameter Real KeqGLT_24 = 1.0;
    parameter Real KmGLTGLCo_24 = 1.1918;
    parameter Real KmGLTGLCi_24 = 1.1918;
    parameter Real extracellular = 1.0;
    parameter Real cytoplasm = 1.0;

    Real ratio_NADPH_NADP(start=0.0);

    Real P;
    Real G6P;
    Real F6P;
    Real F16P;
    Real NADH;
    Real NAD;
    Real BPG;
    Real P3G;
    Real P2G;
    Real PEP;
    Real PYR;
    Real ACE;
    Real CO2;
    Real ETOH;
    Real SUCC;
    Real X;
    Real GA3P;
    Real DHAP;
    Real GLY;
    Real D6PGluconoLactone;
    Real D6PGluconate;
    Real NADP;
    Real NADPH;
    Real Ribulose5P;
    Real Ribose5P;
    Real Xyl5P;
    Real Seduhept7P;
    Real Erythrose4P;
    Real GLCo;
    Real GLCi;
    Real F26BP;

initial equation
    P = 5.0;
    G6P = 1.39;
    F6P = 0.28;
    F16P = 0.1;
    NADH = 0.39;
    NAD = 1.2;
    BPG = 0.1;
    P3G = 0.1;
    P2G = 0.1;
    PEP = 0.1;
    PYR = 3.36;
    ACE = 0.04;
    CO2 = 1.0;
    ETOH = 50.0;
    SUCC = 0.1;
    X = 0.1;
    GA3P = 0.05;
    DHAP = 1.0;
    GLY = 0.15;
    D6PGluconoLactone = 0.1;
    D6PGluconate = 0.1;
    NADP = 0.4;
    NADPH = 1.6;
    Ribulose5P = 0.1;
    Ribose5P = 0.1;
    Xyl5P = 0.1;
    Seduhept7P = 0.1;
    Erythrose4P = 0.0;
    GLCo = 50.0;
    GLCi = 0.087;
    F26BP = 0.02;

equation
    ratio_NADPH_NADP = NADPH / NADP;
    der(P) = (cytoplasm * (VmPGK_6 * (KeqPGK_6 * BPG * (SUMAXP - pow(pow(SUMAXP, 2) - 2 * SUMAXP * P + 8 * KeqAK_6 * SUMAXP * P + pow(P, 2) - 4 * KeqAK_6 * pow(P, 2), 0.5)) / (1 - 4 * KeqAK_6) - (-SUMAXP + P - 4 * KeqAK_6 * P + pow(pow(SUMAXP, 2) - 2 * SUMAXP * P + 8 * KeqAK_6 * SUMAXP * P + pow(P, 2) - 4 * KeqAK_6 * pow(P, 2), 0.5)) * P3G / (2 - 8 * KeqAK_6)) / (KmPGKATP_6 * KmPGKP3G_6 * (1 + (SUMAXP - pow(pow(SUMAXP, 2) - 2 * SUMAXP * P + 8 * KeqAK_6 * SUMAXP * P + pow(P, 2) - 4 * KeqAK_6 * pow(P, 2), 0.5)) / ((1 - 4 * KeqAK_6) * KmPGKADP_6) + (-SUMAXP + P - 4 * KeqAK_6 * P + pow(pow(SUMAXP, 2) - 2 * SUMAXP * P + 8 * KeqAK_6 * SUMAXP * P + pow(P, 2) - 4 * KeqAK_6 * pow(P, 2), 0.5)) / ((2 - 8 * KeqAK_6) * KmPGKATP_6)) * (1 + BPG / KmPGKBPG_6 + P3G / KmPGKP3G_6)))) + (cytoplasm * (VmPYK_9 / (KmPYKPEP_9 * KmPYKADP_9) * (PEP * (SUMAXP - pow(pow(P, 2) - 4 * KeqAK_9 * pow(P, 2) - 2 * P * SUMAXP + 8 * KeqAK_9 * P * SUMAXP + pow(SUMAXP, 2), 0.5)) / (1 - 4 * KeqAK_9) - PYR * (P - 4 * KeqAK_9 * P - SUMAXP + pow(pow(P, 2) - 4 * KeqAK_9 * pow(P, 2) - 2 * P * SUMAXP + 8 * KeqAK_9 * P * SUMAXP + pow(SUMAXP, 2), 0.5)) / (2 - 8 * KeqAK_9) / KeqPYK_9) / ((1 + PEP / KmPYKPEP_9 + PYR / KmPYKPYR_9) * (1 + (P - 4 * KeqAK_9 * P - SUMAXP + pow(pow(P, 2) - 4 * KeqAK_9 * pow(P, 2) - 2 * P * SUMAXP + 8 * KeqAK_9 * P * SUMAXP + pow(SUMAXP, 2), 0.5)) / (2 - 8 * KeqAK_9) / KmPYKATP_9 + (SUMAXP - pow(pow(P, 2) - 4 * KeqAK_9 * pow(P, 2) - 2 * P * SUMAXP + 8 * KeqAK_9 * P * SUMAXP + pow(SUMAXP, 2), 0.5)) / (1 - 4 * KeqAK_9) / KmPYKADP_9)))) - (cytoplasm * (VmGLK_0 * (-(G6P * (SUMAXP - pow(pow(SUMAXP, 2) - 2 * SUMAXP * P + 8 * KeqAK_0 * SUMAXP * P + pow(P, 2) - 4 * KeqAK_0 * pow(P, 2), 0.5)) / ((1 - 4 * KeqAK_0) * KeqGLK_0)) + GLCi * (-SUMAXP + P - 4 * KeqAK_0 * P + pow(pow(SUMAXP, 2) - 2 * SUMAXP * P + 8 * KeqAK_0 * SUMAXP * P + pow(P, 2) - 4 * KeqAK_0 * pow(P, 2), 0.5)) / (2 - 8 * KeqAK_0)) / (KmGLKATP_0 * KmGLKGLCi_0 * (1 + G6P / KmGLKG6P_0 + GLCi / KmGLKGLCi_0) * (1 + (SUMAXP - pow(pow(SUMAXP, 2) - 2 * SUMAXP * P + 8 * KeqAK_0 * SUMAXP * P + pow(P, 2) - 4 * KeqAK_0 * pow(P, 2), 0.5)) / ((1 - 4 * KeqAK_0) * KmGLKADP_0) + (-SUMAXP + P - 4 * KeqAK_0 * P + pow(pow(SUMAXP, 2) - 2 * SUMAXP * P + 8 * KeqAK_0 * SUMAXP * P + pow(P, 2) - 4 * KeqAK_0 * pow(P, 2), 0.5)) / ((2 - 8 * KeqAK_0) * KmGLKATP_0))))) - (cytoplasm * (gR_2 * VmPFK_2 * F6P * (-SUMAXP + P - 4 * KeqAK_2 * P + pow(pow(SUMAXP, 2) - 2 * SUMAXP * P + 8 * KeqAK_2 * SUMAXP * P + pow(P, 2) - 4 * KeqAK_2 * pow(P, 2), 0.5)) * (1 + F6P / KmPFKF6P_2 + (-SUMAXP + P - 4 * KeqAK_2 * P + pow(pow(SUMAXP, 2) - 2 * SUMAXP * P + 8 * KeqAK_2 * SUMAXP * P + pow(P, 2) - 4 * KeqAK_2 * pow(P, 2), 0.5)) / ((2 - 8 * KeqAK_2) * KmPFKATP_2) + gR_2 * F6P * (-SUMAXP + P - 4 * KeqAK_2 * P + pow(pow(SUMAXP, 2) - 2 * SUMAXP * P + 8 * KeqAK_2 * SUMAXP * P + pow(P, 2) - 4 * KeqAK_2 * pow(P, 2), 0.5)) / ((2 - 8 * KeqAK_2) * KmPFKATP_2 * KmPFKF6P_2)) / ((2 - 8 * KeqAK_2) * KmPFKATP_2 * KmPFKF6P_2 * (L0_2 * pow(1 + CPFKF26BP_2 * F26BP / KPFKF26BP_2 + CPFKF16BP_2 * F16P / KPFKF16BP_2, 2) * pow(1 + 2 * CPFKAMP_2 * KeqAK_2 * pow(SUMAXP - pow(pow(SUMAXP, 2) - 2 * SUMAXP * P + 8 * KeqAK_2 * SUMAXP * P + pow(P, 2) - 4 * KeqAK_2 * pow(P, 2), 0.5), 2) / ((-1 + 4 * KeqAK_2) * KPFKAMP_2 * (SUMAXP - P + 4 * KeqAK_2 * P - pow(pow(SUMAXP, 2) - 2 * SUMAXP * P + 8 * KeqAK_2 * SUMAXP * P + pow(P, 2) - 4 * KeqAK_2 * pow(P, 2), 0.5))), 2) * pow(1 + CiPFKATP_2 * (-SUMAXP + P - 4 * KeqAK_2 * P + pow(pow(SUMAXP, 2) - 2 * SUMAXP * P + 8 * KeqAK_2 * SUMAXP * P + pow(P, 2) - 4 * KeqAK_2 * pow(P, 2), 0.5)) / ((2 - 8 * KeqAK_2) * KiPFKATP_2), 2) * pow(1 + CPFKATP_2 * (-SUMAXP + P - 4 * KeqAK_2 * P + pow(pow(SUMAXP, 2) - 2 * SUMAXP * P + 8 * KeqAK_2 * SUMAXP * P + pow(P, 2) - 4 * KeqAK_2 * pow(P, 2), 0.5)) / ((2 - 8 * KeqAK_2) * KmPFKATP_2), 2) / (pow(1 + F26BP / KPFKF26BP_2 + F16P / KPFKF16BP_2, 2) * pow(1 + 2 * KeqAK_2 * pow(SUMAXP - pow(pow(SUMAXP, 2) - 2 * SUMAXP * P + 8 * KeqAK_2 * SUMAXP * P + pow(P, 2) - 4 * KeqAK_2 * pow(P, 2), 0.5), 2) / ((-1 + 4 * KeqAK_2) * KPFKAMP_2 * (SUMAXP - P + 4 * KeqAK_2 * P - pow(pow(SUMAXP, 2) - 2 * SUMAXP * P + 8 * KeqAK_2 * SUMAXP * P + pow(P, 2) - 4 * KeqAK_2 * pow(P, 2), 0.5))), 2) * pow(1 + (-SUMAXP + P - 4 * KeqAK_2 * P + pow(pow(SUMAXP, 2) - 2 * SUMAXP * P + 8 * KeqAK_2 * SUMAXP * P + pow(P, 2) - 4 * KeqAK_2 * pow(P, 2), 0.5)) / ((2 - 8 * KeqAK_2) * KiPFKATP_2), 2)) + pow(1 + F6P / KmPFKF6P_2 + (-SUMAXP + P - 4 * KeqAK_2 * P + pow(pow(SUMAXP, 2) - 2 * SUMAXP * P + 8 * KeqAK_2 * SUMAXP * P + pow(P, 2) - 4 * KeqAK_2 * pow(P, 2), 0.5)) / ((2 - 8 * KeqAK_2) * KmPFKATP_2) + gR_2 * F6P * (-SUMAXP + P - 4 * KeqAK_2 * P + pow(pow(SUMAXP, 2) - 2 * SUMAXP * P + 8 * KeqAK_2 * SUMAXP * P + pow(P, 2) - 4 * KeqAK_2 * pow(P, 2), 0.5)) / ((2 - 8 * KeqAK_2) * KmPFKATP_2 * KmPFKF6P_2), 2))))) - (cytoplasm * (KATPASE_13 * (P - 4 * KeqAK_13 * P - SUMAXP + pow(pow(P, 2) - 4 * KeqAK_13 * pow(P, 2) - 2 * P * SUMAXP + 8 * KeqAK_13 * P * SUMAXP + pow(SUMAXP, 2), 0.5)) / (2 - 8 * KeqAK_13)));
    der(G6P) = (cytoplasm * (VmGLK_0 * (-(G6P * (SUMAXP - pow(pow(SUMAXP, 2) - 2 * SUMAXP * P + 8 * KeqAK_0 * SUMAXP * P + pow(P, 2) - 4 * KeqAK_0 * pow(P, 2), 0.5)) / ((1 - 4 * KeqAK_0) * KeqGLK_0)) + GLCi * (-SUMAXP + P - 4 * KeqAK_0 * P + pow(pow(SUMAXP, 2) - 2 * SUMAXP * P + 8 * KeqAK_0 * SUMAXP * P + pow(P, 2) - 4 * KeqAK_0 * pow(P, 2), 0.5)) / (2 - 8 * KeqAK_0)) / (KmGLKATP_0 * KmGLKGLCi_0 * (1 + G6P / KmGLKG6P_0 + GLCi / KmGLKGLCi_0) * (1 + (SUMAXP - pow(pow(SUMAXP, 2) - 2 * SUMAXP * P + 8 * KeqAK_0 * SUMAXP * P + pow(P, 2) - 4 * KeqAK_0 * pow(P, 2), 0.5)) / ((1 - 4 * KeqAK_0) * KmGLKADP_0) + (-SUMAXP + P - 4 * KeqAK_0 * P + pow(pow(SUMAXP, 2) - 2 * SUMAXP * P + 8 * KeqAK_0 * SUMAXP * P + pow(P, 2) - 4 * KeqAK_0 * pow(P, 2), 0.5)) / ((2 - 8 * KeqAK_0) * KmGLKATP_0))))) - (cytoplasm * (VmPGI_1 / KmPGIG6P_1 * (G6P - F6P / KeqPGI_1) / (1 + G6P / KmPGIG6P_1 + F6P / KmPGIF6P_1))) - (cytoplasm * (VmG6PDH_15 * G6P * NADP / (KmG6P_15 * KmNADP_15) / ((1 + G6P / KmG6P_15 + NADPH / KiNADPH_15) * (1 + NADP / KmNADP_15))));
    der(F6P) = (cytoplasm * (VmPGI_1 / KmPGIG6P_1 * (G6P - F6P / KeqPGI_1) / (1 + G6P / KmPGIG6P_1 + F6P / KmPGIF6P_1))) + (cytoplasm * ((VmTransaldf_21 * GA3P * Seduhept7P / (KmGA3P_21 * KmSeduhept_21) - VmTransaldr_21 * F6P * Erythrose4P / (KmF6P_21 * KmEry4P_21)) / ((1 + GA3P / KmGA3P_21 + F6P / KmF6P_21) * (1 + Seduhept7P / KmSeduhept_21 + Erythrose4P / KmEry4P_21)))) + (cytoplasm * ((VmTransk2f_22 * Erythrose4P * Xyl5P / (KmEry4P_22 * KmXyl5P_22) - VmTransk2r_22 * F6P * GA3P / (KmF6P_22 * KmGA3P_22)) / ((1 + Xyl5P / KmXyl5P_22 + GA3P / KmGA3P_22) * (1 + Erythrose4P / KmEry4P_22 + F6P / KmF6P_22)))) - (cytoplasm * (gR_2 * VmPFK_2 * F6P * (-SUMAXP + P - 4 * KeqAK_2 * P + pow(pow(SUMAXP, 2) - 2 * SUMAXP * P + 8 * KeqAK_2 * SUMAXP * P + pow(P, 2) - 4 * KeqAK_2 * pow(P, 2), 0.5)) * (1 + F6P / KmPFKF6P_2 + (-SUMAXP + P - 4 * KeqAK_2 * P + pow(pow(SUMAXP, 2) - 2 * SUMAXP * P + 8 * KeqAK_2 * SUMAXP * P + pow(P, 2) - 4 * KeqAK_2 * pow(P, 2), 0.5)) / ((2 - 8 * KeqAK_2) * KmPFKATP_2) + gR_2 * F6P * (-SUMAXP + P - 4 * KeqAK_2 * P + pow(pow(SUMAXP, 2) - 2 * SUMAXP * P + 8 * KeqAK_2 * SUMAXP * P + pow(P, 2) - 4 * KeqAK_2 * pow(P, 2), 0.5)) / ((2 - 8 * KeqAK_2) * KmPFKATP_2 * KmPFKF6P_2)) / ((2 - 8 * KeqAK_2) * KmPFKATP_2 * KmPFKF6P_2 * (L0_2 * pow(1 + CPFKF26BP_2 * F26BP / KPFKF26BP_2 + CPFKF16BP_2 * F16P / KPFKF16BP_2, 2) * pow(1 + 2 * CPFKAMP_2 * KeqAK_2 * pow(SUMAXP - pow(pow(SUMAXP, 2) - 2 * SUMAXP * P + 8 * KeqAK_2 * SUMAXP * P + pow(P, 2) - 4 * KeqAK_2 * pow(P, 2), 0.5), 2) / ((-1 + 4 * KeqAK_2) * KPFKAMP_2 * (SUMAXP - P + 4 * KeqAK_2 * P - pow(pow(SUMAXP, 2) - 2 * SUMAXP * P + 8 * KeqAK_2 * SUMAXP * P + pow(P, 2) - 4 * KeqAK_2 * pow(P, 2), 0.5))), 2) * pow(1 + CiPFKATP_2 * (-SUMAXP + P - 4 * KeqAK_2 * P + pow(pow(SUMAXP, 2) - 2 * SUMAXP * P + 8 * KeqAK_2 * SUMAXP * P + pow(P, 2) - 4 * KeqAK_2 * pow(P, 2), 0.5)) / ((2 - 8 * KeqAK_2) * KiPFKATP_2), 2) * pow(1 + CPFKATP_2 * (-SUMAXP + P - 4 * KeqAK_2 * P + pow(pow(SUMAXP, 2) - 2 * SUMAXP * P + 8 * KeqAK_2 * SUMAXP * P + pow(P, 2) - 4 * KeqAK_2 * pow(P, 2), 0.5)) / ((2 - 8 * KeqAK_2) * KmPFKATP_2), 2) / (pow(1 + F26BP / KPFKF26BP_2 + F16P / KPFKF16BP_2, 2) * pow(1 + 2 * KeqAK_2 * pow(SUMAXP - pow(pow(SUMAXP, 2) - 2 * SUMAXP * P + 8 * KeqAK_2 * SUMAXP * P + pow(P, 2) - 4 * KeqAK_2 * pow(P, 2), 0.5), 2) / ((-1 + 4 * KeqAK_2) * KPFKAMP_2 * (SUMAXP - P + 4 * KeqAK_2 * P - pow(pow(SUMAXP, 2) - 2 * SUMAXP * P + 8 * KeqAK_2 * SUMAXP * P + pow(P, 2) - 4 * KeqAK_2 * pow(P, 2), 0.5))), 2) * pow(1 + (-SUMAXP + P - 4 * KeqAK_2 * P + pow(pow(SUMAXP, 2) - 2 * SUMAXP * P + 8 * KeqAK_2 * SUMAXP * P + pow(P, 2) - 4 * KeqAK_2 * pow(P, 2), 0.5)) / ((2 - 8 * KeqAK_2) * KiPFKATP_2), 2)) + pow(1 + F6P / KmPFKF6P_2 + (-SUMAXP + P - 4 * KeqAK_2 * P + pow(pow(SUMAXP, 2) - 2 * SUMAXP * P + 8 * KeqAK_2 * SUMAXP * P + pow(P, 2) - 4 * KeqAK_2 * pow(P, 2), 0.5)) / ((2 - 8 * KeqAK_2) * KmPFKATP_2) + gR_2 * F6P * (-SUMAXP + P - 4 * KeqAK_2 * P + pow(pow(SUMAXP, 2) - 2 * SUMAXP * P + 8 * KeqAK_2 * SUMAXP * P + pow(P, 2) - 4 * KeqAK_2 * pow(P, 2), 0.5)) / ((2 - 8 * KeqAK_2) * KmPFKATP_2 * KmPFKF6P_2), 2)))));
    der(F16P) = (cytoplasm * (gR_2 * VmPFK_2 * F6P * (-SUMAXP + P - 4 * KeqAK_2 * P + pow(pow(SUMAXP, 2) - 2 * SUMAXP * P + 8 * KeqAK_2 * SUMAXP * P + pow(P, 2) - 4 * KeqAK_2 * pow(P, 2), 0.5)) * (1 + F6P / KmPFKF6P_2 + (-SUMAXP + P - 4 * KeqAK_2 * P + pow(pow(SUMAXP, 2) - 2 * SUMAXP * P + 8 * KeqAK_2 * SUMAXP * P + pow(P, 2) - 4 * KeqAK_2 * pow(P, 2), 0.5)) / ((2 - 8 * KeqAK_2) * KmPFKATP_2) + gR_2 * F6P * (-SUMAXP + P - 4 * KeqAK_2 * P + pow(pow(SUMAXP, 2) - 2 * SUMAXP * P + 8 * KeqAK_2 * SUMAXP * P + pow(P, 2) - 4 * KeqAK_2 * pow(P, 2), 0.5)) / ((2 - 8 * KeqAK_2) * KmPFKATP_2 * KmPFKF6P_2)) / ((2 - 8 * KeqAK_2) * KmPFKATP_2 * KmPFKF6P_2 * (L0_2 * pow(1 + CPFKF26BP_2 * F26BP / KPFKF26BP_2 + CPFKF16BP_2 * F16P / KPFKF16BP_2, 2) * pow(1 + 2 * CPFKAMP_2 * KeqAK_2 * pow(SUMAXP - pow(pow(SUMAXP, 2) - 2 * SUMAXP * P + 8 * KeqAK_2 * SUMAXP * P + pow(P, 2) - 4 * KeqAK_2 * pow(P, 2), 0.5), 2) / ((-1 + 4 * KeqAK_2) * KPFKAMP_2 * (SUMAXP - P + 4 * KeqAK_2 * P - pow(pow(SUMAXP, 2) - 2 * SUMAXP * P + 8 * KeqAK_2 * SUMAXP * P + pow(P, 2) - 4 * KeqAK_2 * pow(P, 2), 0.5))), 2) * pow(1 + CiPFKATP_2 * (-SUMAXP + P - 4 * KeqAK_2 * P + pow(pow(SUMAXP, 2) - 2 * SUMAXP * P + 8 * KeqAK_2 * SUMAXP * P + pow(P, 2) - 4 * KeqAK_2 * pow(P, 2), 0.5)) / ((2 - 8 * KeqAK_2) * KiPFKATP_2), 2) * pow(1 + CPFKATP_2 * (-SUMAXP + P - 4 * KeqAK_2 * P + pow(pow(SUMAXP, 2) - 2 * SUMAXP * P + 8 * KeqAK_2 * SUMAXP * P + pow(P, 2) - 4 * KeqAK_2 * pow(P, 2), 0.5)) / ((2 - 8 * KeqAK_2) * KmPFKATP_2), 2) / (pow(1 + F26BP / KPFKF26BP_2 + F16P / KPFKF16BP_2, 2) * pow(1 + 2 * KeqAK_2 * pow(SUMAXP - pow(pow(SUMAXP, 2) - 2 * SUMAXP * P + 8 * KeqAK_2 * SUMAXP * P + pow(P, 2) - 4 * KeqAK_2 * pow(P, 2), 0.5), 2) / ((-1 + 4 * KeqAK_2) * KPFKAMP_2 * (SUMAXP - P + 4 * KeqAK_2 * P - pow(pow(SUMAXP, 2) - 2 * SUMAXP * P + 8 * KeqAK_2 * SUMAXP * P + pow(P, 2) - 4 * KeqAK_2 * pow(P, 2), 0.5))), 2) * pow(1 + (-SUMAXP + P - 4 * KeqAK_2 * P + pow(pow(SUMAXP, 2) - 2 * SUMAXP * P + 8 * KeqAK_2 * SUMAXP * P + pow(P, 2) - 4 * KeqAK_2 * pow(P, 2), 0.5)) / ((2 - 8 * KeqAK_2) * KiPFKATP_2), 2)) + pow(1 + F6P / KmPFKF6P_2 + (-SUMAXP + P - 4 * KeqAK_2 * P + pow(pow(SUMAXP, 2) - 2 * SUMAXP * P + 8 * KeqAK_2 * SUMAXP * P + pow(P, 2) - 4 * KeqAK_2 * pow(P, 2), 0.5)) / ((2 - 8 * KeqAK_2) * KmPFKATP_2) + gR_2 * F6P * (-SUMAXP + P - 4 * KeqAK_2 * P + pow(pow(SUMAXP, 2) - 2 * SUMAXP * P + 8 * KeqAK_2 * SUMAXP * P + pow(P, 2) - 4 * KeqAK_2 * pow(P, 2), 0.5)) / ((2 - 8 * KeqAK_2) * KmPFKATP_2 * KmPFKF6P_2), 2))))) - (cytoplasm * (VmALD_3 * F16P / KmALDF16P_3 * (1 - DHAP * GA3P / (F16P * KeqALD_3)) / (1 + F16P / KmALDF16P_3 + DHAP / KmALDDHAP_3 + GA3P / KmALDGAP_3 + F16P * GA3P / (KmALDF16P_3 * KmALDGAP_3i) + DHAP * GA3P / (KmALDDHAP_3 * KmALDGAP_3))));
    der(NADH) = (cytoplasm * (k_rel_GAPDH * VmGAPDHf_5 * GA3P * NAD / (KmGAPDHGAP_5 * KmGAPDHNAD_5) * (1 - BPG * NADH / (GA3P * NAD * KeqGAPDH_5)) / ((1 + GA3P / KmGAPDHGAP_5 + BPG / KmGAPDHBPG_5) * (1 + NAD / KmGAPDHNAD_5 + NADH / KmGAPDHNAD_5H_5)))) + (3.0 * cytoplasm * KSUCC_11 * ACE) - (cytoplasm * (VmG3PDH_4 * (-(GLY * NAD / KeqG3PDH_4) + NADH * DHAP / (1 + KeqTPI_4)) / (KmG3PDHDHAP_4 * KmG3PDHNAD_4H_4 * (1 + NAD / KmG3PDHNAD_4 + NADH / KmG3PDHNAD_4H_4) * (1 + GLY / KmG3PDHGLY_4 + DHAP / ((1 + KeqTPI_4) * KmG3PDHDHAP_4))))) - (cytoplasm * (-(VmADH_12 / (KiADHNAD_12 * KmADHETOH_12) * (NAD * ETOH - NADH * ACE / KeqADH_12) / (1 + NAD / KiADHNAD_12 + KmADHNAD_12 * ETOH / (KiADHNAD_12 * KmADHETOH_12) + KmADHNAD_12H * ACE / (KiADHNAD_12H * KmADHACE_12) + NADH / KiADHNAD_12H + NAD * ETOH / (KiADHNAD_12 * KmADHETOH_12) + KmADHNAD_12H * NAD * ACE / (KiADHNAD_12 * KiADHNAD_12H * KmADHACE_12) + KmADHNAD_12 * ETOH * NADH / (KiADHNAD_12 * KmADHETOH_12 * KiADHNAD_12H) + NADH * ACE / (KiADHNAD_12H * KmADHACE_12) + NAD * ETOH * ACE / (KiADHNAD_12 * KmADHETOH_12 * KiADHACE_12) + ETOH * NADH * ACE / (KiADHETOH_12 * KiADHNAD_12H * KmADHACE_12)))));
    der(NAD) = (cytoplasm * (VmG3PDH_4 * (-(GLY * NAD / KeqG3PDH_4) + NADH * DHAP / (1 + KeqTPI_4)) / (KmG3PDHDHAP_4 * KmG3PDHNAD_4H_4 * (1 + NAD / KmG3PDHNAD_4 + NADH / KmG3PDHNAD_4H_4) * (1 + GLY / KmG3PDHGLY_4 + DHAP / ((1 + KeqTPI_4) * KmG3PDHDHAP_4))))) + (cytoplasm * -(VmADH_12 / (KiADHNAD_12 * KmADHETOH_12) * (NAD * ETOH - NADH * ACE / KeqADH_12) / (1 + NAD / KiADHNAD_12 + KmADHNAD_12 * ETOH / (KiADHNAD_12 * KmADHETOH_12) + KmADHNAD_12H * ACE / (KiADHNAD_12H * KmADHACE_12) + NADH / KiADHNAD_12H + NAD * ETOH / (KiADHNAD_12 * KmADHETOH_12) + KmADHNAD_12H * NAD * ACE / (KiADHNAD_12 * KiADHNAD_12H * KmADHACE_12) + KmADHNAD_12 * ETOH * NADH / (KiADHNAD_12 * KmADHETOH_12 * KiADHNAD_12H) + NADH * ACE / (KiADHNAD_12H * KmADHACE_12) + NAD * ETOH * ACE / (KiADHNAD_12 * KmADHETOH_12 * KiADHACE_12) + ETOH * NADH * ACE / (KiADHETOH_12 * KiADHNAD_12H * KmADHACE_12)))) - (cytoplasm * (k_rel_GAPDH * VmGAPDHf_5 * GA3P * NAD / (KmGAPDHGAP_5 * KmGAPDHNAD_5) * (1 - BPG * NADH / (GA3P * NAD * KeqGAPDH_5)) / ((1 + GA3P / KmGAPDHGAP_5 + BPG / KmGAPDHBPG_5) * (1 + NAD / KmGAPDHNAD_5 + NADH / KmGAPDHNAD_5H_5)))) - (3.0 * cytoplasm * KSUCC_11 * ACE);
    der(BPG) = (cytoplasm * (k_rel_GAPDH * VmGAPDHf_5 * GA3P * NAD / (KmGAPDHGAP_5 * KmGAPDHNAD_5) * (1 - BPG * NADH / (GA3P * NAD * KeqGAPDH_5)) / ((1 + GA3P / KmGAPDHGAP_5 + BPG / KmGAPDHBPG_5) * (1 + NAD / KmGAPDHNAD_5 + NADH / KmGAPDHNAD_5H_5)))) - (cytoplasm * (VmPGK_6 * (KeqPGK_6 * BPG * (SUMAXP - pow(pow(SUMAXP, 2) - 2 * SUMAXP * P + 8 * KeqAK_6 * SUMAXP * P + pow(P, 2) - 4 * KeqAK_6 * pow(P, 2), 0.5)) / (1 - 4 * KeqAK_6) - (-SUMAXP + P - 4 * KeqAK_6 * P + pow(pow(SUMAXP, 2) - 2 * SUMAXP * P + 8 * KeqAK_6 * SUMAXP * P + pow(P, 2) - 4 * KeqAK_6 * pow(P, 2), 0.5)) * P3G / (2 - 8 * KeqAK_6)) / (KmPGKATP_6 * KmPGKP3G_6 * (1 + (SUMAXP - pow(pow(SUMAXP, 2) - 2 * SUMAXP * P + 8 * KeqAK_6 * SUMAXP * P + pow(P, 2) - 4 * KeqAK_6 * pow(P, 2), 0.5)) / ((1 - 4 * KeqAK_6) * KmPGKADP_6) + (-SUMAXP + P - 4 * KeqAK_6 * P + pow(pow(SUMAXP, 2) - 2 * SUMAXP * P + 8 * KeqAK_6 * SUMAXP * P + pow(P, 2) - 4 * KeqAK_6 * pow(P, 2), 0.5)) / ((2 - 8 * KeqAK_6) * KmPGKATP_6)) * (1 + BPG / KmPGKBPG_6 + P3G / KmPGKP3G_6))));
    der(P3G) = (cytoplasm * (VmPGK_6 * (KeqPGK_6 * BPG * (SUMAXP - pow(pow(SUMAXP, 2) - 2 * SUMAXP * P + 8 * KeqAK_6 * SUMAXP * P + pow(P, 2) - 4 * KeqAK_6 * pow(P, 2), 0.5)) / (1 - 4 * KeqAK_6) - (-SUMAXP + P - 4 * KeqAK_6 * P + pow(pow(SUMAXP, 2) - 2 * SUMAXP * P + 8 * KeqAK_6 * SUMAXP * P + pow(P, 2) - 4 * KeqAK_6 * pow(P, 2), 0.5)) * P3G / (2 - 8 * KeqAK_6)) / (KmPGKATP_6 * KmPGKP3G_6 * (1 + (SUMAXP - pow(pow(SUMAXP, 2) - 2 * SUMAXP * P + 8 * KeqAK_6 * SUMAXP * P + pow(P, 2) - 4 * KeqAK_6 * pow(P, 2), 0.5)) / ((1 - 4 * KeqAK_6) * KmPGKADP_6) + (-SUMAXP + P - 4 * KeqAK_6 * P + pow(pow(SUMAXP, 2) - 2 * SUMAXP * P + 8 * KeqAK_6 * SUMAXP * P + pow(P, 2) - 4 * KeqAK_6 * pow(P, 2), 0.5)) / ((2 - 8 * KeqAK_6) * KmPGKATP_6)) * (1 + BPG / KmPGKBPG_6 + P3G / KmPGKP3G_6)))) - (cytoplasm * (VmPGM_7 / KmPGMP3G_7 * (P3G - P2G / KeqPGM_7) / (1 + P3G / KmPGMP3G_7 + P2G / KmPGMP2G_7)));
    der(P2G) = (cytoplasm * (VmPGM_7 / KmPGMP3G_7 * (P3G - P2G / KeqPGM_7) / (1 + P3G / KmPGMP3G_7 + P2G / KmPGMP2G_7))) - (cytoplasm * (VmENO_8 / KmENOP2G_8 * (P2G - PEP / KeqENO_8) / (1 + P2G / KmENOP2G_8 + PEP / KmENOPEP_8)));
    der(PEP) = (cytoplasm * (VmENO_8 / KmENOP2G_8 * (P2G - PEP / KeqENO_8) / (1 + P2G / KmENOP2G_8 + PEP / KmENOPEP_8))) - (cytoplasm * (VmPYK_9 / (KmPYKPEP_9 * KmPYKADP_9) * (PEP * (SUMAXP - pow(pow(P, 2) - 4 * KeqAK_9 * pow(P, 2) - 2 * P * SUMAXP + 8 * KeqAK_9 * P * SUMAXP + pow(SUMAXP, 2), 0.5)) / (1 - 4 * KeqAK_9) - PYR * (P - 4 * KeqAK_9 * P - SUMAXP + pow(pow(P, 2) - 4 * KeqAK_9 * pow(P, 2) - 2 * P * SUMAXP + 8 * KeqAK_9 * P * SUMAXP + pow(SUMAXP, 2), 0.5)) / (2 - 8 * KeqAK_9) / KeqPYK_9) / ((1 + PEP / KmPYKPEP_9 + PYR / KmPYKPYR_9) * (1 + (P - 4 * KeqAK_9 * P - SUMAXP + pow(pow(P, 2) - 4 * KeqAK_9 * pow(P, 2) - 2 * P * SUMAXP + 8 * KeqAK_9 * P * SUMAXP + pow(SUMAXP, 2), 0.5)) / (2 - 8 * KeqAK_9) / KmPYKATP_9 + (SUMAXP - pow(pow(P, 2) - 4 * KeqAK_9 * pow(P, 2) - 2 * P * SUMAXP + 8 * KeqAK_9 * P * SUMAXP + pow(SUMAXP, 2), 0.5)) / (1 - 4 * KeqAK_9) / KmPYKADP_9))));
    der(PYR) = (cytoplasm * (VmPYK_9 / (KmPYKPEP_9 * KmPYKADP_9) * (PEP * (SUMAXP - pow(pow(P, 2) - 4 * KeqAK_9 * pow(P, 2) - 2 * P * SUMAXP + 8 * KeqAK_9 * P * SUMAXP + pow(SUMAXP, 2), 0.5)) / (1 - 4 * KeqAK_9) - PYR * (P - 4 * KeqAK_9 * P - SUMAXP + pow(pow(P, 2) - 4 * KeqAK_9 * pow(P, 2) - 2 * P * SUMAXP + 8 * KeqAK_9 * P * SUMAXP + pow(SUMAXP, 2), 0.5)) / (2 - 8 * KeqAK_9) / KeqPYK_9) / ((1 + PEP / KmPYKPEP_9 + PYR / KmPYKPYR_9) * (1 + (P - 4 * KeqAK_9 * P - SUMAXP + pow(pow(P, 2) - 4 * KeqAK_9 * pow(P, 2) - 2 * P * SUMAXP + 8 * KeqAK_9 * P * SUMAXP + pow(SUMAXP, 2), 0.5)) / (2 - 8 * KeqAK_9) / KmPYKATP_9 + (SUMAXP - pow(pow(P, 2) - 4 * KeqAK_9 * pow(P, 2) - 2 * P * SUMAXP + 8 * KeqAK_9 * P * SUMAXP + pow(SUMAXP, 2), 0.5)) / (1 - 4 * KeqAK_9) / KmPYKADP_9)))) - (cytoplasm * (VmPDC_10 * pow(PYR, nPDC_10) / pow(KmPDCPYR_10, nPDC_10) / (1 + pow(PYR, nPDC_10) / pow(KmPDCPYR_10, nPDC_10))));
    der(ACE) = (cytoplasm * (VmPDC_10 * pow(PYR, nPDC_10) / pow(KmPDCPYR_10, nPDC_10) / (1 + pow(PYR, nPDC_10) / pow(KmPDCPYR_10, nPDC_10)))) - (2.0 * cytoplasm * KSUCC_11 * ACE) - (cytoplasm * -(VmADH_12 / (KiADHNAD_12 * KmADHETOH_12) * (NAD * ETOH - NADH * ACE / KeqADH_12) / (1 + NAD / KiADHNAD_12 + KmADHNAD_12 * ETOH / (KiADHNAD_12 * KmADHETOH_12) + KmADHNAD_12H * ACE / (KiADHNAD_12H * KmADHACE_12) + NADH / KiADHNAD_12H + NAD * ETOH / (KiADHNAD_12 * KmADHETOH_12) + KmADHNAD_12H * NAD * ACE / (KiADHNAD_12 * KiADHNAD_12H * KmADHACE_12) + KmADHNAD_12 * ETOH * NADH / (KiADHNAD_12 * KmADHETOH_12 * KiADHNAD_12H) + NADH * ACE / (KiADHNAD_12H * KmADHACE_12) + NAD * ETOH * ACE / (KiADHNAD_12 * KmADHETOH_12 * KiADHACE_12) + ETOH * NADH * ACE / (KiADHETOH_12 * KiADHNAD_12H * KmADHACE_12))));
    der(CO2) = 0.0;
    der(ETOH) = 0.0;
    der(SUCC) = 0.0;
    der(X) = 0.0;
    der(GA3P) = (cytoplasm * (VmALD_3 * F16P / KmALDF16P_3 * (1 - DHAP * GA3P / (F16P * KeqALD_3)) / (1 + F16P / KmALDF16P_3 + DHAP / KmALDDHAP_3 + GA3P / KmALDGAP_3 + F16P * GA3P / (KmALDF16P_3 * KmALDGAP_3i) + DHAP * GA3P / (KmALDDHAP_3 * KmALDGAP_3)))) + (cytoplasm * ((VmTransk1f_19 * Ribose5P * Xyl5P / (KmRibose5P_19 * KmXyl5P_19) - VmTransk1r_19 * GA3P * Seduhept7P / (KmGA3P_19 * KmSeduhept_19)) / ((1 + Ribose5P / KmRibose5P_19 + GA3P / KmGA3P_19) * (1 + Xyl5P / KmXyl5P_19 + Seduhept7P / KmSeduhept_19)))) + (cytoplasm * ((VmTransk2f_22 * Erythrose4P * Xyl5P / (KmEry4P_22 * KmXyl5P_22) - VmTransk2r_22 * F6P * GA3P / (KmF6P_22 * KmGA3P_22)) / ((1 + Xyl5P / KmXyl5P_22 + GA3P / KmGA3P_22) * (1 + Erythrose4P / KmEry4P_22 + F6P / KmF6P_22)))) - (cytoplasm * (k_rel_GAPDH * VmGAPDHf_5 * GA3P * NAD / (KmGAPDHGAP_5 * KmGAPDHNAD_5) * (1 - BPG * NADH / (GA3P * NAD * KeqGAPDH_5)) / ((1 + GA3P / KmGAPDHGAP_5 + BPG / KmGAPDHBPG_5) * (1 + NAD / KmGAPDHNAD_5 + NADH / KmGAPDHNAD_5H_5)))) - (cytoplasm * (k_rel_TPI * (VmDHAP_14 * GA3P / KmGA3P_14 - VmGA3P_14 * DHAP / KmDHAP_14) / (1 + GA3P / KmGA3P_14 + DHAP / KmDHAP_14))) - (cytoplasm * ((VmTransaldf_21 * GA3P * Seduhept7P / (KmGA3P_21 * KmSeduhept_21) - VmTransaldr_21 * F6P * Erythrose4P / (KmF6P_21 * KmEry4P_21)) / ((1 + GA3P / KmGA3P_21 + F6P / KmF6P_21) * (1 + Seduhept7P / KmSeduhept_21 + Erythrose4P / KmEry4P_21))));
    der(DHAP) = (cytoplasm * (VmALD_3 * F16P / KmALDF16P_3 * (1 - DHAP * GA3P / (F16P * KeqALD_3)) / (1 + F16P / KmALDF16P_3 + DHAP / KmALDDHAP_3 + GA3P / KmALDGAP_3 + F16P * GA3P / (KmALDF16P_3 * KmALDGAP_3i) + DHAP * GA3P / (KmALDDHAP_3 * KmALDGAP_3)))) + (cytoplasm * (k_rel_TPI * (VmDHAP_14 * GA3P / KmGA3P_14 - VmGA3P_14 * DHAP / KmDHAP_14) / (1 + GA3P / KmGA3P_14 + DHAP / KmDHAP_14))) - (cytoplasm * (VmG3PDH_4 * (-(GLY * NAD / KeqG3PDH_4) + NADH * DHAP / (1 + KeqTPI_4)) / (KmG3PDHDHAP_4 * KmG3PDHNAD_4H_4 * (1 + NAD / KmG3PDHNAD_4 + NADH / KmG3PDHNAD_4H_4) * (1 + GLY / KmG3PDHGLY_4 + DHAP / ((1 + KeqTPI_4) * KmG3PDHDHAP_4)))));
    der(GLY) = 0.0;
    der(D6PGluconoLactone) = (cytoplasm * (VmG6PDH_15 * G6P * NADP / (KmG6P_15 * KmNADP_15) / ((1 + G6P / KmG6P_15 + NADPH / KiNADPH_15) * (1 + NADP / KmNADP_15)))) - (cytoplasm * (Vm6PGL_16 * D6PGluconoLactone / (Km6PGL_16 + D6PGluconoLactone)));
    der(D6PGluconate) = (cytoplasm * (Vm6PGL_16 * D6PGluconoLactone / (Km6PGL_16 + D6PGluconoLactone))) - (cytoplasm * (VmGluDH_17 * D6PGluconate * NADP / (KmGluconate_17 * KmNADP_17) / ((1 + D6PGluconate / KmGluconate_17 + NADPH / KiNADPH_17) * (1 + NADP / KmNADP_17))));
    der(NADP) = (cytoplasm * kNADPH_23 * NADPH) - (cytoplasm * (VmG6PDH_15 * G6P * NADP / (KmG6P_15 * KmNADP_15) / ((1 + G6P / KmG6P_15 + NADPH / KiNADPH_15) * (1 + NADP / KmNADP_15)))) - (cytoplasm * (VmGluDH_17 * D6PGluconate * NADP / (KmGluconate_17 * KmNADP_17) / ((1 + D6PGluconate / KmGluconate_17 + NADPH / KiNADPH_17) * (1 + NADP / KmNADP_17))));
    der(NADPH) = (cytoplasm * (VmG6PDH_15 * G6P * NADP / (KmG6P_15 * KmNADP_15) / ((1 + G6P / KmG6P_15 + NADPH / KiNADPH_15) * (1 + NADP / KmNADP_15)))) + (cytoplasm * (VmGluDH_17 * D6PGluconate * NADP / (KmGluconate_17 * KmNADP_17) / ((1 + D6PGluconate / KmGluconate_17 + NADPH / KiNADPH_17) * (1 + NADP / KmNADP_17)))) - (cytoplasm * kNADPH_23 * NADPH);
    der(Ribulose5P) = (cytoplasm * (VmGluDH_17 * D6PGluconate * NADP / (KmGluconate_17 * KmNADP_17) / ((1 + D6PGluconate / KmGluconate_17 + NADPH / KiNADPH_17) * (1 + NADP / KmNADP_17)))) - (cytoplasm * ((VmPPIf_18 * Ribulose5P / KmRibu5P_18 - VmPPIr_18 * Ribose5P / KmRibo5P_18) / (1 + Ribulose5P / KmRibu5P_18 + Ribose5P / KmRibo5P_18))) - (cytoplasm * ((VmR5PIf_20 * Ribulose5P / KmRibu5P_20 - VmR5PIr_20 * Xyl5P / KmXyl_20) / (1 + Ribulose5P / KmRibu5P_20 + Xyl5P / KmXyl_20)));
    der(Ribose5P) = (cytoplasm * ((VmPPIf_18 * Ribulose5P / KmRibu5P_18 - VmPPIr_18 * Ribose5P / KmRibo5P_18) / (1 + Ribulose5P / KmRibu5P_18 + Ribose5P / KmRibo5P_18))) - (cytoplasm * ((VmTransk1f_19 * Ribose5P * Xyl5P / (KmRibose5P_19 * KmXyl5P_19) - VmTransk1r_19 * GA3P * Seduhept7P / (KmGA3P_19 * KmSeduhept_19)) / ((1 + Ribose5P / KmRibose5P_19 + GA3P / KmGA3P_19) * (1 + Xyl5P / KmXyl5P_19 + Seduhept7P / KmSeduhept_19))));
    der(Xyl5P) = (cytoplasm * ((VmR5PIf_20 * Ribulose5P / KmRibu5P_20 - VmR5PIr_20 * Xyl5P / KmXyl_20) / (1 + Ribulose5P / KmRibu5P_20 + Xyl5P / KmXyl_20))) - (cytoplasm * ((VmTransk1f_19 * Ribose5P * Xyl5P / (KmRibose5P_19 * KmXyl5P_19) - VmTransk1r_19 * GA3P * Seduhept7P / (KmGA3P_19 * KmSeduhept_19)) / ((1 + Ribose5P / KmRibose5P_19 + GA3P / KmGA3P_19) * (1 + Xyl5P / KmXyl5P_19 + Seduhept7P / KmSeduhept_19)))) - (cytoplasm * ((VmTransk2f_22 * Erythrose4P * Xyl5P / (KmEry4P_22 * KmXyl5P_22) - VmTransk2r_22 * F6P * GA3P / (KmF6P_22 * KmGA3P_22)) / ((1 + Xyl5P / KmXyl5P_22 + GA3P / KmGA3P_22) * (1 + Erythrose4P / KmEry4P_22 + F6P / KmF6P_22))));
    der(Seduhept7P) = (cytoplasm * ((VmTransk1f_19 * Ribose5P * Xyl5P / (KmRibose5P_19 * KmXyl5P_19) - VmTransk1r_19 * GA3P * Seduhept7P / (KmGA3P_19 * KmSeduhept_19)) / ((1 + Ribose5P / KmRibose5P_19 + GA3P / KmGA3P_19) * (1 + Xyl5P / KmXyl5P_19 + Seduhept7P / KmSeduhept_19)))) - (cytoplasm * ((VmTransaldf_21 * GA3P * Seduhept7P / (KmGA3P_21 * KmSeduhept_21) - VmTransaldr_21 * F6P * Erythrose4P / (KmF6P_21 * KmEry4P_21)) / ((1 + GA3P / KmGA3P_21 + F6P / KmF6P_21) * (1 + Seduhept7P / KmSeduhept_21 + Erythrose4P / KmEry4P_21))));
    der(Erythrose4P) = (cytoplasm * ((VmTransaldf_21 * GA3P * Seduhept7P / (KmGA3P_21 * KmSeduhept_21) - VmTransaldr_21 * F6P * Erythrose4P / (KmF6P_21 * KmEry4P_21)) / ((1 + GA3P / KmGA3P_21 + F6P / KmF6P_21) * (1 + Seduhept7P / KmSeduhept_21 + Erythrose4P / KmEry4P_21)))) - (cytoplasm * ((VmTransk2f_22 * Erythrose4P * Xyl5P / (KmEry4P_22 * KmXyl5P_22) - VmTransk2r_22 * F6P * GA3P / (KmF6P_22 * KmGA3P_22)) / ((1 + Xyl5P / KmXyl5P_22 + GA3P / KmGA3P_22) * (1 + Erythrose4P / KmEry4P_22 + F6P / KmF6P_22))));
    der(GLCo) = 0.0;
    der(GLCi) = (cytoplasm * (VmGLT_24 * (GLCo - GLCi / KeqGLT_24) / (KmGLTGLCo_24 * (1 + GLCo / KmGLTGLCo_24 + GLCi / KmGLTGLCi_24 + 0.91 * GLCo * GLCi / (KmGLTGLCi_24 * KmGLTGLCo_24))))) - (cytoplasm * (VmGLK_0 * (-(G6P * (SUMAXP - pow(pow(SUMAXP, 2) - 2 * SUMAXP * P + 8 * KeqAK_0 * SUMAXP * P + pow(P, 2) - 4 * KeqAK_0 * pow(P, 2), 0.5)) / ((1 - 4 * KeqAK_0) * KeqGLK_0)) + GLCi * (-SUMAXP + P - 4 * KeqAK_0 * P + pow(pow(SUMAXP, 2) - 2 * SUMAXP * P + 8 * KeqAK_0 * SUMAXP * P + pow(P, 2) - 4 * KeqAK_0 * pow(P, 2), 0.5)) / (2 - 8 * KeqAK_0)) / (KmGLKATP_0 * KmGLKGLCi_0 * (1 + G6P / KmGLKG6P_0 + GLCi / KmGLKGLCi_0) * (1 + (SUMAXP - pow(pow(SUMAXP, 2) - 2 * SUMAXP * P + 8 * KeqAK_0 * SUMAXP * P + pow(P, 2) - 4 * KeqAK_0 * pow(P, 2), 0.5)) / ((1 - 4 * KeqAK_0) * KmGLKADP_0) + (-SUMAXP + P - 4 * KeqAK_0 * P + pow(pow(SUMAXP, 2) - 2 * SUMAXP * P + 8 * KeqAK_0 * SUMAXP * P + pow(P, 2) - 4 * KeqAK_0 * pow(P, 2), 0.5)) / ((2 - 8 * KeqAK_0) * KmGLKATP_0)))));
    der(F26BP) = 0.0;




end BIOMD247;