within BIOMD360;
class Reactions

    input Real elmt_VIIa_TF_X;
    input Real elmt_VIIa_TF;
    input Real elmt_compartment;
    input Real elmt_Xa_TFPI;
    input Real elmt_TFPI;
    input Real elmt_X;
    input Real elmt_Xa_TFPI_VIIa_TF;
    input Real elmt_VIIa_TF_Xa_TFPI;
    input Real elmt_VIIa_TF_Xa;
    input Real elmt_Xa;

    Real elmt_reaction_7(unit = "") "reaction_7";
    parameter Real elmt_reaction_7_elmt_k1(unit "") = 0.0 "";
    parameter Real elmt_reaction_7_elmt_k2(unit "") = 0.0 "";
    Real elmt_reactant17 "";
    Real elmt_product19 "";
    Real elmt_product18 "";
    Real elmt_reaction_8(unit = "") "reaction_8";
    parameter Real elmt_reaction_8_elmt_k1(unit "") = 0.0 "";
    parameter Real elmt_reaction_8_elmt_k2(unit "") = 0.0 "";
    Real elmt_reactant20 "";
    Real elmt_product21 "";
    Real elmt_reaction_5(unit = "") "reaction_5";
    parameter Real elmt_reaction_5_elmt_k1(unit "") = 0.44 "";
    parameter Real elmt_reaction_5_elmt_k2(unit "") = 0.066 "";
    Real elmt_product13 "";
    Real elmt_reactant11 "";
    Real elmt_reactant12 "";
    Real elmt_reaction_6(unit = "") "reaction_6";
    parameter Real elmt_reaction_6_elmt_k1(unit "") = 10.0 "";
    parameter Real elmt_reaction_6_elmt_k2(unit "") = 0.0 "";
    Real elmt_reactant14 "";
    Real elmt_product16 "";
    Real elmt_reactant15 "";
    Real elmt_reaction_3(unit = "") "reaction_3";
    parameter Real elmt_reaction_3_elmt_k1(unit "") = 770.0 "";
    parameter Real elmt_reaction_3_elmt_k2(unit "") = 5.0 "";
    Real elmt_product7 "";
    Real elmt_product6 "";
    Real elmt_reactant5 "";
    Real elmt_reaction_4(unit = "") "reaction_4";
    parameter Real elmt_reaction_4_elmt_k1(unit "") = 0.054 "";
    parameter Real elmt_reaction_4_elmt_k2(unit "") = 0.02 "";
    Real elmt_reactant8 "";
    Real elmt_product10 "";
    Real elmt_reactant9 "";
    Real elmt_reaction_1(unit = "") "reaction_1";
    parameter Real elmt_reaction_1_elmt_k1(unit "") = 5.0 "";
    parameter Real elmt_reaction_1_elmt_k2(unit "") = 770.0 "";
    Real elmt_reactant1 "";
    Real elmt_reactant0 "";
    Real elmt_product2 "";
    Real elmt_reaction_2(unit = "") "reaction_2";
    parameter Real elmt_reaction_2_elmt_k1(unit "") = 420.0 "";
    Real elmt_reactant3 "";
    Real elmt_product4 "";


    initial equation
        elmt_reactant1 = 1.0;
        elmt_product7 = 1.0;
        elmt_reactant20 = 1.0;
        elmt_product6 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_reactant5 = 1.0;
        elmt_product21 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_product10 = 1.0;
        elmt_reactant14 = 1.0;
        elmt_reactant15 = 1.0;
        elmt_reactant17 = 1.0;
        elmt_reactant11 = 1.0;
        elmt_product4 = 1.0;
        elmt_reactant12 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_product2 = 1.0;
        elmt_product16 = 1.0;
        elmt_reactant9 = 1.0;
        elmt_product13 = 1.0;
        elmt_product19 = 1.0;
        elmt_product18 = 1.0;


    equation
        elmt_reaction_7 = (elmt_compartment * ((elmt_reaction_7_elmt_k1 * elmt_VIIa_TF_Xa_TFPI) - (elmt_reaction_7_elmt_k2 * elmt_VIIa_TF * elmt_Xa_TFPI)));
        elmt_reaction_8 = (elmt_compartment * ((elmt_reaction_8_elmt_k1 * elmt_VIIa_TF_Xa_TFPI) - (elmt_reaction_8_elmt_k2 * elmt_Xa_TFPI_VIIa_TF)));
        elmt_reaction_5 = (elmt_compartment * ((elmt_reaction_5_elmt_k1 * elmt_VIIa_TF * elmt_Xa_TFPI) - (elmt_reaction_5_elmt_k2 * elmt_Xa_TFPI_VIIa_TF)));
        elmt_reaction_6 = (elmt_compartment * ((elmt_reaction_6_elmt_k1 * elmt_VIIa_TF_Xa * elmt_TFPI) - (elmt_reaction_6_elmt_k2 * elmt_VIIa_TF_Xa_TFPI)));
        elmt_reaction_3 = (elmt_compartment * ((elmt_reaction_3_elmt_k1 * elmt_VIIa_TF_Xa) - (elmt_reaction_3_elmt_k2 * elmt_Xa * elmt_VIIa_TF)));
        elmt_reaction_4 = (elmt_compartment * ((elmt_reaction_4_elmt_k1 * elmt_Xa * elmt_TFPI) - (elmt_reaction_4_elmt_k2 * elmt_Xa_TFPI)));
        elmt_reaction_1 = (elmt_compartment * ((elmt_reaction_1_elmt_k1 * elmt_X * elmt_VIIa_TF) - (elmt_reaction_1_elmt_k2 * elmt_VIIa_TF_X)));
        elmt_reaction_2 = (elmt_compartment * elmt_reaction_2_elmt_k1 * elmt_VIIa_TF_X);
        der(elmt_reactant1) = 0;
        der(elmt_product7) = 0;
        der(elmt_reactant20) = 0;
        der(elmt_product6) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_reactant5) = 0;
        der(elmt_product21) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_product10) = 0;
        der(elmt_reactant14) = 0;
        der(elmt_reactant15) = 0;
        der(elmt_reactant17) = 0;
        der(elmt_reactant11) = 0;
        der(elmt_product4) = 0;
        der(elmt_reactant12) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_product2) = 0;
        der(elmt_product16) = 0;
        der(elmt_reactant9) = 0;
        der(elmt_product13) = 0;
        der(elmt_product19) = 0;
        der(elmt_product18) = 0;

end Reactions;
