model BIOMD013 "Applications of metabolic modelling to plant metabolism"

    parameter Real Light_on = 1.000;
    parameter Real Rbco_vm = 340.000;
    parameter Real Rbco_km = 0.020;
    parameter Real Rbco_KiPGA = 0.840;
    parameter Real Rbco_KiFBP = 0.040;
    parameter Real Rbco_KiSBP = 0.075;
    parameter Real Rbco_KiPi = 0.900;
    parameter Real Rbco_KiNADPH = 0.070;
    parameter Real PGK_v = 5.000e8;
    parameter Real q2 = 3.100e-4;
    parameter Real G3Pdh_v = 5.000e8;
    parameter Real q3 = 1.600e7;
    parameter Real TPI_v = 5.000e8;
    parameter Real q4 = 22.000;
    parameter Real F_Aldo_v = 5.000e8;
    parameter Real q5 = 7.100;
    parameter Real FBPase_ch_vm = 200.000;
    parameter Real FBPase_ch_km = 0.03;
    parameter Real FBPase_ch_KiF6P = 0.700;
    parameter Real FBPase_ch_KiPi = 12.000;
    parameter Real F_TKL_v = 5.000e8;
    parameter Real q7 = 0.084;
    parameter Real E_Aldo_v = 5.000e8;
    parameter Real q8 = 13.000;
    parameter Real SBPase_ch_vm = 40.000;
    parameter Real SBPase_ch_km = 0.013;
    parameter Real SBPase_ch_KiPi = 12.000;
    parameter Real G_TKL_v = 5.000e8;
    parameter Real q10 = 0.850;
    parameter Real R5Piso_v = 5.000e8;
    parameter Real q11 = 0.400;
    parameter Real X5Pepi_v = 5.000e8;
    parameter Real q12 = 0.670;
    parameter Real Ru5Pk_ch_vm = 10000.000;
    parameter Real Ru5Pk_ch_km1 = 0.050;
    parameter Real Ru5Pk_ch_KiPGA = 2.000;
    parameter Real Ru5Pk_ch_KiRuBP = 0.700;
    parameter Real Ru5Pk_ch_KiPi = 4.000;
    parameter Real Ru5Pk_ch_KiADP1 = 2.500;
    parameter Real Ru5Pk_ch_km2 = 0.050;
    parameter Real Ru5Pk_ch_KiADP2 = 0.400;
    parameter Real PGI_v = 5.000e8;
    parameter Real q14 = 2.300;
    parameter Real PGM_v = 5.000e8;
    parameter Real q15 = 0.058;
    parameter Real LR_vm = 3500.000;
    parameter Real LR_kmADP = 0.014;
    parameter Real LR_kmPi = 0.300;
    parameter Real StSyn_vm = 40.000;
    parameter Real stsyn_ch_km1 = 0.080;
    parameter Real stsyn_ch_Ki = 10.000;
    parameter Real stsyn_ch_km2 = 0.080;
    parameter Real stsyn_ch_ka1 = 0.100;
    parameter Real stsyn_ch_ka2 = 0.020;
    parameter Real stsyn_ch_ka3 = 0.020;
    parameter Real StPase_Vm = 40.000;
    parameter Real StPase_km = 0.100;
    parameter Real StPase_kiG1P = 0.050;
    parameter Real TP_Piap_vm = 250.000;
    parameter Real TP_Piap_kDHAP_ch = 0.077;
    parameter Real TP_Piap_kPi_cyt = 0.740;
    parameter Real TP_Piap_kPi_ch = 0.630;
    parameter Real TP_Piap_kPGA_ch = 0.250;
    parameter Real TP_Piap_kGAP_ch = 0.075;
    parameter Real PGA_xpMult = 0.750;

    Real V1(start=0.000);
    Real V2(start=0.000);
    Real V3(start=0.000);
    Real V4(start=0.000);
    Real V5(start=0.000);
    Real V6(start=0.000);
    Real V7(start=0.000);
    Real V8(start=0.000);
    Real V9(start=0.000);
    Real V10(start=0.000);
    Real V11(start=0.000);
    Real V12(start=0.000);
    Real V13(start=0.000);
    Real V15(start=0.000);
    Real V16(start=0.000);
    Real V17(start=0.000);
    Real V18(start=0.000);
    Real V19(start=0.000);
    Real V20(start=0.000);
    Real V21(start=0.000);

    Real x_CO2;
    Real RuBP_ch;
    Real PGA_ch;
    Real ATP_ch;
    Real BPGA_ch;
    Real x_NADPH_ch;
    Real GAP_ch;
    Real Pi_ch;
    Real DHAP_ch;
    Real FBP_ch;
    Real F6P_ch;
    Real E4P_ch;
    Real X5P_ch;
    Real SBP_ch;
    Real S7P_ch;
    Real R5P_ch;
    Real Ru5P_ch;
    Real x_Pi_cyt;
    Real x_GAP_cyt;
    Real G6P_ch;
    Real x_NADP_ch;
    Real x_PGA_cyt;
    Real ADP_ch;
    Real x_DHAP_cyt;
    Real x_Proton_ch;
    Real G1P_ch;
    Real x_Starch_ch;

initial equation
    x_CO2 = 0.000;
    RuBP_ch = 0.33644;
    PGA_ch = 3.35479;
    ATP_ch = 0.49806;
    BPGA_ch = 0.14825;
    x_NADPH_ch = 0.21;
    GAP_ch = 0.01334;
    Pi_ch = 1.5662;
    DHAP_ch = 0.29345;
    FBP_ch = 0.02776;
    F6P_ch = 1.36481;
    E4P_ch = 0.41021;
    X5P_ch = 0.00363;
    SBP_ch = 1.56486;
    S7P_ch = 0.00541;
    R5P_ch = 0.00599;
    Ru5P_ch = 0.00235;
    x_Pi_cyt = 0.5;
    x_GAP_cyt = 1.0;
    G6P_ch = 3.1396;
    x_NADP_ch = 0.29;
    x_PGA_cyt = 1.0;
    ADP_ch = 0.00149;
    x_DHAP_cyt = 1.0,
    x_Proton_ch = 2.512e-5;
    G1P_ch = 0.18206;
    x_Starch_ch = 1.0;

equation
    der(x_CO2) = 0;
    der(RuBP_ch) = V13 - V1;
    der(PGA_ch) = 2 * V1 - V2 - V20;
    der(ATP_ch) = V16 - V2 - V13 - V17;
    der(BPGA_ch) = V2 - V3;
    der(x_NADPH_ch) = 0;
    der(GAP_ch) = V3 - V4 - V5 - V7 - V10 - V21;
    der(Pi_ch) = V3 + V6 + V9 + 2 * V17 + V19 + V20 + V21 - V16 - V18;
    der(DHAP_ch) = V4 - V5 - V8 - V19;
    der(FBP_ch) = V5 - V6;
    der(F6P_ch) = V6 - V7 - V14;
    der(E4P_ch) = V7 - V8;
    der(X5P_ch) = V7 + V10 - V12;
    der(SBP_ch) = V8 - V9;
    der(S7P_ch) = V9 - V10;
    der(R5P_ch) = V10 - V11;
    der(Ru5P_ch) = V11 + V12 - V13;
    der(x_Pi_cyt) = 0;
    der(x_GAP_cyt) = 0;
    der(G6P_ch) = V14 - V15;
    der(x_NADP_ch) = 0;
    der(x_PGA_cyt) = 0;
    der(ADP_ch) = V2 + V13 + V17 - V16;
    der(x_DHAP_cyt) = 0;
    der(x_Proton_ch) = 0;
    der(G1P_ch) = V15 + V18 - V17;
    der(x_Starch_ch) = 0;

algorithm
    V1 := (Rbco_vm * RuBP_ch) / (RuBP_ch + Rbco_km * (1 + (PGA_ch / Rbco_KiPGA) + (FBP_ch / Rbco_KiFBP) + (SBP_ch / Rbco_KiSBP) + (Pi_ch / Rbco_KiPi) + (x_NADPH_ch / Rbco_KiNADPH)))
    V2 := PGK_v * (PGA_ch * ATP_ch - (BPGA_ch * ADP_ch / q2))
    V3 := G3Pdh_v * (BPGA_ch * x_NADPH_ch * x_Proton_ch - (x_NADP_ch * GAP_ch * Pi_ch / q3))
    V4 := TPI_v * (GAP_ch - DHAP_ch / q4)
    V5 := F_Aldo_v * (DHAP_ch * GAP_ch - FBP_ch / q5)
    V6 := (FBPase_ch_vm * FBP_ch) / (FBP_ch + FBPase_ch_km * (1 + (F6P_ch / FBPase_ch_KiF6P) + (Pi_ch / FBPase_ch_KiPi)))
    V7 := F_TKL_v * (F6P_ch * GAP_ch - (E4P_ch * X5P_ch / q7))
    V8 := E_Aldo_v * (E4P_ch * DHAP_ch - SBP_ch / q8)
    V9 := (SBPase_ch_vm * SBP_ch) / (SBP_ch + SBPase_ch_km * (1 + (Pi_ch / SBPase_ch_KiPi)))
    V10 := G_TKL_v * (GAP_ch * S7P_ch - (X5P_ch * R5P_ch / q10))
    V11 := R5Piso_v * (R5P_ch - Ru5P_ch / q11)
    V12 := X5Pepi_v * (X5P_ch - Ru5P_ch / q12)
    V13 := (Ru5Pk_ch_vm * Ru5P_ch * ATP_ch) / ((Ru5P_ch + Ru5Pk_ch_km1 * (1 + (PGA_ch / Ru5Pk_ch_KiPGA) + (RuBP_ch / Ru5Pk_ch_KiRuBP) + (Pi_ch / Ru5Pk_ch_KiPi))) * (ATP_ch * (1 + (ADP_ch / Ru5Pk_ch_KiADP1)) + Ru5PK_ch_km2 * (1 + (ADP_ch / Ru5PK_ch_KiADP2))));
    V14 := PGI_v * (F6P_ch - (G6P_ch / q14))
    V15 := PGM_v * (G6P_ch - (G1P_ch / q15))
    V16 := (LR_vm * ADP_ch * Pi_ch) / ((ADP_ch + LR_kmADP) * (Pi_ch + LR_kmPi))
    V17 := (StSyn_vm * G1P_ch * ATP_ch) / (((G1P_ch + stsyn_ch_km1) * (1 + (ADP_ch / stsyn_ch_Ki)) * (ATP_ch + stsyn_ch_km2)) + ((stsyn_ch_km2 * Pi_ch) / (stsyn_ch_ka1 * PGA_ch)) + (stsyn_ch_ka2 * F6P_ch) + (stsyn_ch_ka3 * FBP_ch))
    V18 := (StPase_Vm * Pi_ch) / (Pi_ch + StPase_km * (1 + (G1P_ch / StPase_kiG1P)))
    V19 := (TP_Piap_vm * DHAP_ch) / (TP_Piap_kDHAP_ch * (1 + ((1 + (TP_Piap_kPi_cyt / x_Pi_cyt)) * ((Pi_ch / TP_Piap_kPi_ch) + (PGA_ch / TP_Piap_kPGA_ch) + (DHAP_ch / TP_Piap_kDHAP_ch) + (GAP_ch / TP_Piapi_kGAP_ch)))))
    V20 := (PGA_xpMult * TP_Piap_vm * PGA_ch) / (TP_Piap_kPGA_ch * (1 + ((1 + (TP_Piap_kPi_cyt / x_Pi_cyt)) * ((Pi_ch / TP_Piap_kPi_ch) + (PGA_ch / TP_Piap_kPGA_ch) + (DHAP_ch / TP_Piap_kDHAP_ch) + (DHAP_ch / TP_Piap_kDHAP_ch)))))
    V21 := (TP_Piap_vm * GAP_ch) / (TP_Piap_kGAP_ch * (1 + ((1 + (TP_Piap_kPi_cyt / x_Pi_cyt)) * ((Pi_ch / TP_Piap_kPi_ch) + (PGA_ch / TP_Piap_kPGA_ch) + (DHAP_ch / TP_Piap_kDHAP_ch) + (DHAP_ch / TP_Piap_kDHAP_ch)))))

end BIOMD013;
