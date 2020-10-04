within BIOMD390;
class Reactions

    input Real elmt_TPc;
    input Real elmt_totRuBP;
    input Real elmt_Ru5P;
    input Real elmt_V6;
    input Real elmt_ADP;
    input Real elmt_ATP;
    input Real elmt_TP;
    input Real elmt_Pi;
    input Real elmt_chloroplast;
    input Real elmt_E_RuBisCO;
    input Real elmt_Pic;
    input Real elmt_PGA;

    Real elmt_TPT(unit = "") "TP translocator";
    parameter Real elmt_TPT_elmt_K1(unit "") = 0.08 "";
    parameter Real elmt_TPT_elmt_K2(unit "") = 0.25 "";
    parameter Real elmt_TPT_elmt_Vm(unit "") = 3.3 "";
    Real elmt_reactant15 "";
    Real elmt_reactant16 "";
    Real elmt_product18 "";
    Real elmt_product17 "";
    Real elmt_TP_red(unit = "") "TP reduction";
    parameter Real elmt_TP_red_elmt_K(unit "") = 0.4 "";
    parameter Real elmt_TP_red_elmt_Vm(unit "") = 1.06 "";
    Real elmt_product9 "";
    Real elmt_reactant8 "";
    Real elmt_product10 "";
    Real elmt_ATP_S(unit = "") "ATP synthesis";
    parameter Real elmt_ATP_S_elmt_K1(unit "") = 0.08 "";
    parameter Real elmt_ATP_S_elmt_K2(unit "") = 0.5 "";
    Real elmt_reactant20 "";
    Real elmt_reactant19 "";
    Real elmt_product21 "";
    Real elmt_RuBisCO(unit = "") "RuBisCO";
    parameter Real elmt_RuBisCO_elmt_k(unit "") = 0.504 "";
    parameter Real elmt_RuBisCO_elmt_K(unit "") = 0.04 "";
    Real elmt_reactant1 "";
    Real elmt_reactant0 "";
    Real elmt_product2 "";
    Real elmt_RuBP_reg(unit = "") "RuBP regeneration";
    parameter Real elmt_RuBP_reg_elmt_K1(unit "") = 0.05 "";
    parameter Real elmt_RuBP_reg_elmt_Vm(unit "") = 4.81 "";
    parameter Real elmt_RuBP_reg_elmt_K2(unit "") = 0.5 "";
    parameter Real elmt_RuBP_reg_elmt_K3(unit "") = 0.05 "";
    Real elmt_product14 "";
    Real elmt_product13 "";
    Real elmt_reactant11 "";
    Real elmt_reactant12 "";
    Real elmt_PGA_red(unit = "") "PGA reduction";
    parameter Real elmt_PGA_red_elmt_K1(unit "") = 1.0 "";
    parameter Real elmt_PGA_red_elmt_k(unit "") = 14.0 "";
    parameter Real elmt_PGA_red_elmt_Vm(unit "") = 3.49 "";
    parameter Real elmt_PGA_red_elmt_K2(unit "") = 1.0 "";
    Real elmt_reactant4 "";
    Real elmt_product7 "";
    Real elmt_reactant3 "";
    Real elmt_product6 "";
    Real elmt_product5 "";


    initial equation
        elmt_product9 = 3.0;
        elmt_reactant1 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_product7 = 1.0;
        elmt_reactant20 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_product6 = 1.0;
        elmt_reactant8 = 5.0;
        elmt_product10 = 2.0;
        elmt_product21 = 1.0;
        elmt_reactant15 = 1.0;
        elmt_reactant16 = 1.0;
        elmt_product5 = 1.0;
        elmt_reactant11 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_reactant12 = 1.0;
        elmt_product2 = 2.0;
        elmt_reactant19 = 1.0;
        elmt_product14 = 1.0;
        elmt_product13 = 1.0;
        elmt_product18 = 1.0;
        elmt_product17 = 1.0;


    equation
        elmt_TPT = (((elmt_TPT_elmt_Vm * ((elmt_TP * elmt_Pic) - (elmt_TPc * elmt_Pi))) / (((elmt_TP + elmt_TPc) * elmt_TPT_elmt_K2) + ((elmt_Pic + elmt_Pi) * elmt_TPT_elmt_K1) + (elmt_TPT_elmt_K1 * elmt_TPT_elmt_K2 * ((elmt_TP / elmt_TPT_elmt_K1) + (elmt_Pi / elmt_TPT_elmt_K2)) * ((elmt_Pic / elmt_TPT_elmt_K2) + (elmt_TPc / elmt_TPT_elmt_K1))))));
        elmt_TP_red = (elmt_chloroplast * (((elmt_TP_red_elmt_Vm * elmt_TP) / (elmt_TP + elmt_TP_red_elmt_K))));
        elmt_ATP_S = (elmt_chloroplast * (((elmt_V6 * elmt_ADP * elmt_Pi) / ((elmt_ADP + elmt_ATP_S_elmt_K1) * (elmt_Pi + elmt_ATP_S_elmt_K2)))));
        elmt_RuBisCO = (elmt_chloroplast * (((elmt_RuBisCO_elmt_k / 2.0) * ((elmt_E_RuBisCO + elmt_totRuBP + elmt_RuBisCO_elmt_K) - Functions.root(2.0, (Functions.pow((elmt_E_RuBisCO + elmt_totRuBP + elmt_RuBisCO_elmt_K), 2.0) - (4.0 * elmt_E_RuBisCO * elmt_totRuBP)))))));
        elmt_RuBP_reg = (elmt_chloroplast * (((elmt_RuBP_reg_elmt_Vm * elmt_Ru5P * elmt_ATP) / ((elmt_RuBP_reg_elmt_K1 * elmt_RuBP_reg_elmt_K2) + (elmt_RuBP_reg_elmt_K2 * elmt_ATP) + (elmt_Ru5P * elmt_ATP) + (elmt_RuBP_reg_elmt_K3 * elmt_Pi)))));
        elmt_PGA_red = (elmt_chloroplast * (((elmt_PGA_red_elmt_Vm * ((elmt_PGA * elmt_ATP) - ((elmt_ADP * elmt_TP * elmt_Pi) / elmt_PGA_red_elmt_k))) / (elmt_PGA_red_elmt_K1 + ((elmt_PGA * elmt_ATP * elmt_PGA_red_elmt_K1) / elmt_PGA_red_elmt_K2) + ((elmt_ADP * elmt_TP * elmt_Pi) / elmt_PGA_red_elmt_k)))));
        der(elmt_product9) = 0;
        der(elmt_reactant1) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_product7) = 0;
        der(elmt_reactant20) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_product6) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_product10) = 0;
        der(elmt_product21) = 0;
        der(elmt_reactant15) = 0;
        der(elmt_reactant16) = 0;
        der(elmt_product5) = 0;
        der(elmt_reactant11) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_reactant12) = 0;
        der(elmt_product2) = 0;
        der(elmt_reactant19) = 0;
        der(elmt_product14) = 0;
        der(elmt_product13) = 0;
        der(elmt_product18) = 0;
        der(elmt_product17) = 0;

end Reactions;
