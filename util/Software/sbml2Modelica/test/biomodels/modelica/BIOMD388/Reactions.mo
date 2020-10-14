within BIOMD388;
class Reactions

    input Real elmt_GAP;
    input Real elmt_DPGA;
    input Real elmt_Ru5P;
    input Real elmt_ATP;
    input Real elmt_RuBP;
    input Real elmt_chloroplast;
    input Real elmt_PGA;

    Real elmt_Ru5P_K(unit = "") "Ru5P kinase";
    parameter Real elmt_Ru5P_K_elmt_K1(unit "") = 0.15 "";
    parameter Real elmt_Ru5P_K_elmt_Vm(unit "") = 8.0 "";
    parameter Real elmt_Ru5P_K_elmt_K2(unit "") = 0.059 "";
    Real elmt_product14 "";
    Real elmt_product13 "";
    Real elmt_reactant11 "";
    Real elmt_reactant12 "";
    Real elmt_GAP2sink(unit = "") "GAP to sink";
    parameter Real elmt_GAP2sink_elmt_Km(unit "") = 5.0 "";
    parameter Real elmt_GAP2sink_elmt_V(unit "") = 0.1 "";
    Real elmt_reactant16 "";
    Real elmt_PGA_K(unit = "") "PGA kinase";
    parameter Real elmt_PGA_K_elmt_K1(unit "") = 0.24 "";
    parameter Real elmt_PGA_K_elmt_Vm(unit "") = 11.75 "";
    parameter Real elmt_PGA_K_elmt_K2(unit "") = 0.39 "";
    Real elmt_reactant2 "";
    Real elmt_reactant3 "";
    Real elmt_product5 "";
    Real elmt_product4 "";
    Real elmt_PGA2sink(unit = "") "PGA to sink";
    parameter Real elmt_PGA2sink_elmt_Km(unit "") = 0.75 "";
    parameter Real elmt_PGA2sink_elmt_V(unit "") = 3.0 "";
    Real elmt_reactant15 "";
    Real elmt_RuBisCO(unit = "") "RuBisCO";
    parameter Real elmt_RuBisCO_elmt_Km(unit "") = 1.0 "";
    parameter Real elmt_RuBisCO_elmt_V(unit "") = 3.78 "";
    Real elmt_product1 "";
    Real elmt_reactant0 "";
    Real elmt_GAP2Ru5P(unit = "") "GAP to Ru5P";
    parameter Real elmt_GAP2Ru5P_elmt_Km(unit "") = 0.84 "";
    parameter Real elmt_GAP2Ru5P_elmt_V(unit "") = 3.05 "";
    Real elmt_product10 "";
    Real elmt_reactant9 "";
    Real elmt_GAP_DH(unit = "") "GAP dehydrogenase";
    parameter Real elmt_GAP_DH_elmt_Km(unit "") = 0.5 "";
    parameter Real elmt_GAP_DH_elmt_V(unit "") = 5.04 "";
    Real elmt_product8 "";
    Real elmt_product7 "";
    Real elmt_reactant6 "";


    initial equation
        elmt_reactant2 = 1.0;
        elmt_product8 = 1.0;
        elmt_product7 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_product10 = 0.6;
        elmt_product1 = 2.0;
        elmt_reactant15 = 1.0;
        elmt_reactant16 = 1.0;
        elmt_product5 = 1.0;
        elmt_reactant11 = 1.0;
        elmt_product4 = 1.0;
        elmt_reactant12 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_reactant9 = 1.0;
        elmt_product14 = 1.0;
        elmt_product13 = 1.0;


    equation
        elmt_Ru5P_K = (elmt_chloroplast * (((elmt_Ru5P_K_elmt_Vm * elmt_Ru5P * elmt_ATP) / ((elmt_Ru5P + elmt_Ru5P_K_elmt_K1) * (elmt_ATP + elmt_Ru5P_K_elmt_K2)))));
        elmt_GAP2sink = (elmt_chloroplast * (((elmt_GAP2sink_elmt_V * elmt_GAP) / (elmt_GAP2sink_elmt_Km + elmt_GAP))));
        elmt_PGA_K = (elmt_chloroplast * (((elmt_PGA_K_elmt_Vm * elmt_PGA * elmt_ATP) / ((elmt_PGA + elmt_PGA_K_elmt_K1) * (elmt_ATP + elmt_PGA_K_elmt_K2)))));
        elmt_PGA2sink = (elmt_chloroplast * (((elmt_PGA2sink_elmt_V * elmt_PGA) / (elmt_PGA2sink_elmt_Km + elmt_PGA))));
        elmt_RuBisCO = (elmt_chloroplast * (((elmt_RuBisCO_elmt_V * elmt_RuBP) / (elmt_RuBisCO_elmt_Km + elmt_RuBP))));
        elmt_GAP2Ru5P = (elmt_chloroplast * (((elmt_GAP2Ru5P_elmt_V * elmt_GAP) / (elmt_GAP2Ru5P_elmt_Km + elmt_GAP))));
        elmt_GAP_DH = (elmt_chloroplast * (((elmt_GAP_DH_elmt_V * elmt_DPGA) / (elmt_GAP_DH_elmt_Km + elmt_DPGA))));
        der(elmt_reactant2) = 0;
        der(elmt_product8) = 0;
        der(elmt_product7) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_product10) = 0;
        der(elmt_product1) = 0;
        der(elmt_reactant15) = 0;
        der(elmt_reactant16) = 0;
        der(elmt_product5) = 0;
        der(elmt_reactant11) = 0;
        der(elmt_product4) = 0;
        der(elmt_reactant12) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_reactant9) = 0;
        der(elmt_product14) = 0;
        der(elmt_product13) = 0;

end Reactions;
