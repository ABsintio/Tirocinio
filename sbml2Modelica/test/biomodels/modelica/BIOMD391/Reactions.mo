within BIOMD391;
class Reactions

    input Real elmt_GAP;
    input Real elmt_FBP;
    input Real elmt_X5P;
    input Real elmt_DPGA;
    input Real elmt_NADP;
    input Real elmt_F6P;
    input Real elmt_NADPH;
    input Real elmt_H;
    input Real elmt_ATP;
    input Real elmt_G1P;
    input Real elmt_Ru5P;
    input Real elmt_DHAP;
    input Real elmt_E4P;
    input Real elmt_G6P;
    input Real elmt_SBP;
    input Real elmt_R5P;
    input Real elmt_ADP;
    input Real elmt_Pext;
    input Real elmt_RuBP;
    input Real elmt_Pi;
    input Real elmt_S7P;
    input Real elmt_chloroplast;
    input Real elmt_PGA;

    Real elmt_R5P_I(unit = "") "R5P isomerase";
    parameter Real elmt_R5P_I_elmt_k1(unit "") = 5.0E8 "";
    parameter Real elmt_R5P_I_elmt_k2(unit "") = 1.25E9 "";
    Real elmt_product35 "";
    Real elmt_reactant34 "";
    Real elmt_Starch_S(unit = "") "starch synthase";
    parameter Real elmt_Starch_S_elmt_K1(unit "") = 0.08 "";
    parameter Real elmt_Starch_S_elmt_KA3(unit "") = 0.02 "";
    parameter Real elmt_Starch_S_elmt_KA1(unit "") = 0.1 "";
    parameter Real elmt_Starch_S_elmt_KA2(unit "") = 0.02 "";
    parameter Real elmt_Starch_S_elmt_Vm(unit "") = 40.0 "";
    parameter Real elmt_Starch_S_elmt_K2(unit "") = 0.08 "";
    parameter Real elmt_Starch_S_elmt_KR1(unit "") = 10.0 "";
    Real elmt_reactant47 "";
    Real elmt_reactant46 "";
    Real elmt_ATP_S(unit = "") "ATP synthetase";
    parameter Real elmt_ATP_S_elmt_K1(unit "") = 0.014 "";
    parameter Real elmt_ATP_S_elmt_Vm(unit "") = 350.0 "";
    parameter Real elmt_ATP_S_elmt_K2(unit "") = 0.3 "";
    Real elmt_reactant50 "";
    Real elmt_product52 "";
    Real elmt_reactant51 "";
    Real elmt_FBP_A(unit = "") "FBP aldolase";
    parameter Real elmt_FBP_A_elmt_k1(unit "") = 5.0E8 "";
    parameter Real elmt_FBP_A_elmt_k2(unit "") = 7.0423E7 "";
    Real elmt_reactant14 "";
    Real elmt_product16 "";
    Real elmt_reactant15 "";
    Real elmt_F6P_TK(unit = "") "F6P transketolase";
    parameter Real elmt_F6P_TK_elmt_k1(unit "") = 5.0E8 "";
    parameter Real elmt_F6P_TK_elmt_k2(unit "") = 5.9524E9 "";
    Real elmt_reactant20 "";
    Real elmt_product23 "";
    Real elmt_product22 "";
    Real elmt_reactant21 "";
    Real elmt_RuBisCO(unit = "") "RuBisCo";
    parameter Real elmt_RuBisCO_elmt_K(unit "") = 0.02 "";
    parameter Real elmt_RuBisCO_elmt_KR4(unit "") = 0.9 "";
    parameter Real elmt_RuBisCO_elmt_KR5(unit "") = 0.07 "";
    parameter Real elmt_RuBisCO_elmt_KR2(unit "") = 0.04 "";
    parameter Real elmt_RuBisCO_elmt_KR3(unit "") = 0.0075 "";
    parameter Real elmt_RuBisCO_elmt_Vm(unit "") = 340.0 "";
    parameter Real elmt_RuBisCO_elmt_KR1(unit "") = 0.84 "";
    Real elmt_product1 "";
    Real elmt_reactant0 "";
    Real elmt_Starch_P(unit = "") "starch phosphorylase";
    parameter Real elmt_Starch_P_elmt_K(unit "") = 0.1 "";
    parameter Real elmt_Starch_P_elmt_Vm(unit "") = 40.0 "";
    parameter Real elmt_Starch_P_elmt_KR1(unit "") = 0.05 "";
    Real elmt_product49 "";
    Real elmt_reactant48 "";
    Real elmt_SBP_A(unit = "") "SBP aldolase";
    parameter Real elmt_SBP_A_elmt_k1(unit "") = 5.0E8 "";
    parameter Real elmt_SBP_A_elmt_k2(unit "") = 3.84615E7 "";
    Real elmt_reactant25 "";
    Real elmt_product26 "";
    Real elmt_reactant24 "";
    Real elmt_PG_I(unit = "") "PG isomerase";
    parameter Real elmt_PG_I_elmt_k1(unit "") = 5.0E8 "";
    parameter Real elmt_PG_I_elmt_k2(unit "") = 2.174E8 "";
    Real elmt_reactant42 "";
    Real elmt_product43 "";
    Real elmt_GAP_DH(unit = "") "GAP dehydrogenase";
    parameter Real elmt_GAP_DH_elmt_k1(unit "") = 5.0E8 "";
    parameter Real elmt_GAP_DH_elmt_k2(unit "") = 31.25 "";
    Real elmt_product9 "";
    Real elmt_reactant6 "";
    Real elmt_product11 "";
    Real elmt_reactant8 "";
    Real elmt_product10 "";
    Real elmt_reactant7 "";
    Real elmt_TP_I(unit = "") "TP isomerase";
    parameter Real elmt_TP_I_elmt_k1(unit "") = 5.0E8 "";
    parameter Real elmt_TP_I_elmt_k2(unit "") = 2.2727E7 "";
    Real elmt_product13 "";
    Real elmt_reactant12 "";
    Real elmt_PG_M(unit = "") "PG mutase";
    parameter Real elmt_PG_M_elmt_k1(unit "") = 5.0E8 "";
    parameter Real elmt_PG_M_elmt_k2(unit "") = 8.621E9 "";
    Real elmt_product45 "";
    Real elmt_reactant44 "";
    Real elmt_Ru5P_K(unit = "") "Ru5P kinase";
    parameter Real elmt_Ru5P_K_elmt_KR42(unit "") = 0.4 "";
    parameter Real elmt_Ru5P_K_elmt_K1(unit "") = 0.05 "";
    parameter Real elmt_Ru5P_K_elmt_KR41(unit "") = 2.5 "";
    parameter Real elmt_Ru5P_K_elmt_KR2(unit "") = 0.7 "";
    parameter Real elmt_Ru5P_K_elmt_KR3(unit "") = 4.0 "";
    parameter Real elmt_Ru5P_K_elmt_Vm(unit "") = 1000.0 "";
    parameter Real elmt_Ru5P_K_elmt_K2(unit "") = 0.05 "";
    parameter Real elmt_Ru5P_K_elmt_KR1(unit "") = 2.0 "";
    Real elmt_product41 "";
    Real elmt_product40 "";
    Real elmt_reactant38 "";
    Real elmt_reactant39 "";
    Real elmt_PGA_K(unit = "") "PGA kinase";
    parameter Real elmt_PGA_K_elmt_k1(unit "") = 5.0E8 "";
    parameter Real elmt_PGA_K_elmt_k2(unit "") = 1.6129E12 "";
    Real elmt_reactant2 "";
    Real elmt_reactant3 "";
    Real elmt_product5 "";
    Real elmt_product4 "";
    Real elmt_TPT_PGA(unit = "") "TPT - PGA";
    parameter Real elmt_TPT_PGA_elmt_KA(unit "") = 0.74 "";
    parameter Real elmt_TPT_PGA_elmt_K(unit "") = 0.25 "";
    parameter Real elmt_TPT_PGA_elmt_KR2(unit "") = 0.075 "";
    parameter Real elmt_TPT_PGA_elmt_KR3(unit "") = 0.077 "";
    parameter Real elmt_TPT_PGA_elmt_Vm(unit "") = 250.0 "";
    parameter Real elmt_TPT_PGA_elmt_KR1(unit "") = 0.63 "";
    Real elmt_reactant53 "";
    Real elmt_SBPase(unit = "") "SBP ase";
    parameter Real elmt_SBPase_elmt_K(unit "") = 0.02 "";
    parameter Real elmt_SBPase_elmt_Vm(unit "") = 40.0 "";
    parameter Real elmt_SBPase_elmt_KR1(unit "") = 12.0 "";
    Real elmt_reactant27 "";
    Real elmt_product29 "";
    Real elmt_product28 "";
    Real elmt_S7P_TK(unit = "") "S7P transketolase";
    parameter Real elmt_S7P_TK_elmt_k1(unit "") = 5.0E8 "";
    parameter Real elmt_S7P_TK_elmt_k2(unit "") = 5.8824E8 "";
    Real elmt_reactant30 "";
    Real elmt_reactant31 "";
    Real elmt_product33 "";
    Real elmt_product32 "";
    Real elmt_FBPase(unit = "") "FBP ase";
    parameter Real elmt_FBPase_elmt_K(unit "") = 0.03 "";
    parameter Real elmt_FBPase_elmt_KR2(unit "") = 12.0 "";
    parameter Real elmt_FBPase_elmt_Vm(unit "") = 200.0 "";
    parameter Real elmt_FBPase_elmt_KR1(unit "") = 0.7 "";
    Real elmt_reactant17 "";
    Real elmt_product19 "";
    Real elmt_product18 "";
    Real elmt_Ru5P_E(unit = "") "Ru5P epimerase";
    parameter Real elmt_Ru5P_E_elmt_k1(unit "") = 5.0E8 "";
    parameter Real elmt_Ru5P_E_elmt_k2(unit "") = 7.46269E8 "";
    Real elmt_reactant36 "";
    Real elmt_product37 "";
    Real elmt_TPT_GAP(unit = "") "TPT - GAP";
    parameter Real elmt_TPT_GAP_elmt_KA(unit "") = 0.74 "";
    parameter Real elmt_TPT_GAP_elmt_K(unit "") = 0.075 "";
    parameter Real elmt_TPT_GAP_elmt_KR2(unit "") = 0.25 "";
    parameter Real elmt_TPT_GAP_elmt_KR3(unit "") = 0.077 "";
    parameter Real elmt_TPT_GAP_elmt_Vm(unit "") = 250.0 "";
    parameter Real elmt_TPT_GAP_elmt_KR1(unit "") = 0.63 "";
    Real elmt_reactant54 "";
    Real elmt_TPT_DHAP(unit = "") "TPT - DHAP";
    parameter Real elmt_TPT_DHAP_elmt_KA(unit "") = 0.74 "";
    parameter Real elmt_TPT_DHAP_elmt_K(unit "") = 0.077 "";
    parameter Real elmt_TPT_DHAP_elmt_KR2(unit "") = 0.25 "";
    parameter Real elmt_TPT_DHAP_elmt_KR3(unit "") = 0.075 "";
    parameter Real elmt_TPT_DHAP_elmt_Vm(unit "") = 250.0 "";
    parameter Real elmt_TPT_DHAP_elmt_KR1(unit "") = 0.63 "";
    Real elmt_reactant55 "";


    initial equation
        elmt_reactant42 = 1.0;
        elmt_product33 = 1.0;
        elmt_product32 = 1.0;
        elmt_reactant47 = 1.0;
        elmt_reactant48 = 1.0;
        elmt_reactant44 = 1.0;
        elmt_reactant46 = 1.0;
        elmt_product26 = 1.0;
        elmt_product29 = 1.0;
        elmt_product28 = 1.0;
        elmt_reactant50 = 1.0;
        elmt_product41 = 1.0;
        elmt_reactant51 = 1.0;
        elmt_product40 = 1.0;
        elmt_reactant53 = 1.0;
        elmt_product45 = 1.0;
        elmt_product43 = 1.0;
        elmt_reactant14 = 1.0;
        elmt_reactant15 = 1.0;
        elmt_reactant17 = 1.0;
        elmt_reactant54 = 1.0;
        elmt_reactant55 = 1.0;
        elmt_reactant12 = 1.0;
        elmt_product37 = 1.0;
        elmt_product35 = 1.0;
        elmt_product52 = 1.0;
        elmt_reactant20 = 1.0;
        elmt_product11 = 1.0;
        elmt_product10 = 1.0;
        elmt_reactant25 = 1.0;
        elmt_reactant27 = 1.0;
        elmt_reactant21 = 1.0;
        elmt_reactant24 = 1.0;
        elmt_product49 = 1.0;
        elmt_product9 = 1.0;
        elmt_reactant2 = 1.0;
        elmt_reactant30 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_reactant31 = 1.0;
        elmt_product23 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_product22 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_reactant7 = 1.0;
        elmt_product1 = 2.0;
        elmt_reactant36 = 1.0;
        elmt_reactant38 = 1.0;
        elmt_reactant39 = 1.0;
        elmt_product5 = 1.0;
        elmt_product4 = 1.0;
        elmt_reactant34 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_product16 = 1.0;
        elmt_product13 = 1.0;
        elmt_product19 = 1.0;
        elmt_product18 = 1.0;


    equation
        elmt_R5P_I = (elmt_chloroplast * ((elmt_R5P_I_elmt_k1 * elmt_R5P) - (elmt_R5P_I_elmt_k2 * elmt_Ru5P)));
        elmt_Starch_S = (elmt_chloroplast * (((elmt_Starch_S_elmt_Vm * elmt_G1P * elmt_ATP) / ((elmt_G1P + elmt_Starch_S_elmt_K1) * (1.0 + (elmt_ADP / elmt_Starch_S_elmt_KR1)) * (elmt_ATP + (elmt_Starch_S_elmt_K2 * (1.0 + ((elmt_Starch_S_elmt_K2 * elmt_Pi) / ((elmt_Starch_S_elmt_KA1 * elmt_PGA) + (elmt_Starch_S_elmt_KA2 * elmt_F6P) + (elmt_Starch_S_elmt_KA3 * elmt_FBP))))))))));
        elmt_ATP_S = (elmt_chloroplast * (((elmt_ATP_S_elmt_Vm * elmt_ADP * elmt_Pi) / ((elmt_ADP + elmt_ATP_S_elmt_K1) * (elmt_Pi + elmt_ATP_S_elmt_K2)))));
        elmt_FBP_A = (elmt_chloroplast * ((elmt_FBP_A_elmt_k1 * elmt_DHAP * elmt_GAP) - (elmt_FBP_A_elmt_k2 * elmt_FBP)));
        elmt_F6P_TK = (elmt_chloroplast * ((elmt_F6P_TK_elmt_k1 * elmt_GAP * elmt_F6P) - (elmt_F6P_TK_elmt_k2 * elmt_X5P * elmt_E4P)));
        elmt_RuBisCO = (elmt_chloroplast * (((elmt_RuBisCO_elmt_Vm * elmt_RuBP) / (elmt_RuBP + (elmt_RuBisCO_elmt_K * (1.0 + (elmt_PGA / elmt_RuBisCO_elmt_KR1) + (elmt_FBP / elmt_RuBisCO_elmt_KR2) + (elmt_SBP / elmt_RuBisCO_elmt_KR3) + (elmt_Pi / elmt_RuBisCO_elmt_KR4) + (elmt_NADPH / elmt_RuBisCO_elmt_KR5)))))));
        elmt_Starch_P = (elmt_chloroplast * (((elmt_Starch_P_elmt_Vm * elmt_Pi) / (elmt_Pi + (elmt_Starch_P_elmt_K * (1.0 + (elmt_G1P / elmt_Starch_P_elmt_KR1)))))));
        elmt_SBP_A = (elmt_chloroplast * ((elmt_SBP_A_elmt_k1 * elmt_DHAP * elmt_E4P) - (elmt_SBP_A_elmt_k2 * elmt_SBP)));
        elmt_PG_I = (elmt_chloroplast * ((elmt_PG_I_elmt_k1 * elmt_F6P) - (elmt_PG_I_elmt_k2 * elmt_G6P)));
        elmt_GAP_DH = (elmt_chloroplast * ((elmt_GAP_DH_elmt_k1 * elmt_DPGA * elmt_NADPH * elmt_H) - (elmt_GAP_DH_elmt_k2 * elmt_GAP * elmt_NADP * elmt_Pi)));
        elmt_TP_I = (elmt_chloroplast * ((elmt_TP_I_elmt_k1 * elmt_GAP) - (elmt_TP_I_elmt_k2 * elmt_DHAP)));
        elmt_PG_M = (elmt_chloroplast * ((elmt_PG_M_elmt_k1 * elmt_G6P) - (elmt_PG_M_elmt_k2 * elmt_G1P)));
        elmt_Ru5P_K = (elmt_chloroplast * (((elmt_Ru5P_K_elmt_Vm * elmt_Ru5P * elmt_ATP) / ((elmt_Ru5P + (elmt_Ru5P_K_elmt_K1 * (1.0 + (elmt_PGA / elmt_Ru5P_K_elmt_KR1) + (elmt_RuBP / elmt_Ru5P_K_elmt_KR2) + (elmt_Pi / elmt_Ru5P_K_elmt_KR3)))) * ((elmt_ATP * (1.0 + (elmt_ADP / elmt_Ru5P_K_elmt_KR41))) + (elmt_Ru5P_K_elmt_K2 * (1.0 + (elmt_ADP / elmt_Ru5P_K_elmt_KR42))))))));
        elmt_PGA_K = (elmt_chloroplast * ((elmt_PGA_K_elmt_k1 * elmt_PGA * elmt_ATP) - (elmt_PGA_K_elmt_k2 * elmt_DPGA * elmt_ADP)));
        elmt_TPT_PGA = (elmt_chloroplast * (((elmt_TPT_PGA_elmt_Vm * elmt_PGA) / ((elmt_PGA * (1.0 + (elmt_TPT_PGA_elmt_KA / elmt_Pext))) + (elmt_TPT_PGA_elmt_K * (1.0 + ((1.0 + (elmt_TPT_PGA_elmt_KA / elmt_Pext)) * ((elmt_Pi / elmt_TPT_PGA_elmt_KR1) + (elmt_GAP / elmt_TPT_PGA_elmt_KR2) + (elmt_DHAP / elmt_TPT_PGA_elmt_KR3)))))))));
        elmt_SBPase = (elmt_chloroplast * (((elmt_SBPase_elmt_Vm * elmt_SBP) / (elmt_SBP + (elmt_SBPase_elmt_K * (1.0 + (elmt_Pi / elmt_SBPase_elmt_KR1)))))));
        elmt_S7P_TK = (elmt_chloroplast * ((elmt_S7P_TK_elmt_k1 * elmt_GAP * elmt_S7P) - (elmt_S7P_TK_elmt_k2 * elmt_X5P * elmt_R5P)));
        elmt_FBPase = (elmt_chloroplast * (((elmt_FBPase_elmt_Vm * elmt_FBP) / (elmt_FBP + (elmt_FBPase_elmt_K * (1.0 + (elmt_F6P / elmt_FBPase_elmt_KR1) + (elmt_Pi / elmt_FBPase_elmt_KR2)))))));
        elmt_Ru5P_E = (elmt_chloroplast * ((elmt_Ru5P_E_elmt_k1 * elmt_X5P) - (elmt_Ru5P_E_elmt_k2 * elmt_Ru5P)));
        elmt_TPT_GAP = (elmt_chloroplast * (((elmt_TPT_GAP_elmt_Vm * elmt_GAP) / ((elmt_GAP * (1.0 + (elmt_TPT_GAP_elmt_KA / elmt_Pext))) + (elmt_TPT_GAP_elmt_K * (1.0 + ((1.0 + (elmt_TPT_GAP_elmt_KA / elmt_Pext)) * ((elmt_Pi / elmt_TPT_GAP_elmt_KR1) + (elmt_PGA / elmt_TPT_GAP_elmt_KR2) + (elmt_DHAP / elmt_TPT_GAP_elmt_KR3)))))))));
        elmt_TPT_DHAP = (elmt_chloroplast * (((elmt_TPT_DHAP_elmt_Vm * elmt_DHAP) / ((elmt_DHAP * (1.0 + (elmt_TPT_DHAP_elmt_KA / elmt_Pext))) + (elmt_TPT_DHAP_elmt_K * (1.0 + ((1.0 + (elmt_TPT_DHAP_elmt_KA / elmt_Pext)) * ((elmt_Pi / elmt_TPT_DHAP_elmt_KR1) + (elmt_PGA / elmt_TPT_DHAP_elmt_KR2) + (elmt_GAP / elmt_TPT_DHAP_elmt_KR3)))))))));
        der(elmt_reactant42) = 0;
        der(elmt_product33) = 0;
        der(elmt_product32) = 0;
        der(elmt_reactant47) = 0;
        der(elmt_reactant48) = 0;
        der(elmt_reactant44) = 0;
        der(elmt_reactant46) = 0;
        der(elmt_product26) = 0;
        der(elmt_product29) = 0;
        der(elmt_product28) = 0;
        der(elmt_reactant50) = 0;
        der(elmt_product41) = 0;
        der(elmt_reactant51) = 0;
        der(elmt_product40) = 0;
        der(elmt_reactant53) = 0;
        der(elmt_product45) = 0;
        der(elmt_product43) = 0;
        der(elmt_reactant14) = 0;
        der(elmt_reactant15) = 0;
        der(elmt_reactant17) = 0;
        der(elmt_reactant54) = 0;
        der(elmt_reactant55) = 0;
        der(elmt_reactant12) = 0;
        der(elmt_product37) = 0;
        der(elmt_product35) = 0;
        der(elmt_product52) = 0;
        der(elmt_reactant20) = 0;
        der(elmt_product11) = 0;
        der(elmt_product10) = 0;
        der(elmt_reactant25) = 0;
        der(elmt_reactant27) = 0;
        der(elmt_reactant21) = 0;
        der(elmt_reactant24) = 0;
        der(elmt_product49) = 0;
        der(elmt_product9) = 0;
        der(elmt_reactant2) = 0;
        der(elmt_reactant30) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_reactant31) = 0;
        der(elmt_product23) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_product22) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_reactant7) = 0;
        der(elmt_product1) = 0;
        der(elmt_reactant36) = 0;
        der(elmt_reactant38) = 0;
        der(elmt_reactant39) = 0;
        der(elmt_product5) = 0;
        der(elmt_product4) = 0;
        der(elmt_reactant34) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_product16) = 0;
        der(elmt_product13) = 0;
        der(elmt_product19) = 0;
        der(elmt_product18) = 0;

end Reactions;
