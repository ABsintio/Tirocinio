within BIOMD040;
class Reactions

    input Real elmt_HBrO2;
    input Real elmt_Ce;
    input Real elmt_BrO3;
    input Real elmt_Br;
    input Real elmt_f;
    input Real elmt_BZ;

    Real elmt_Reaction5(unit = "") "M5";
    parameter Real elmt_Reaction5_elmt_k5(unit "") = 1.0 "";
    Real elmt_reactant14 "";
    Real elmt_product15 "";
    Real elmt_Reaction4(unit = "") "M4";
    parameter Real elmt_Reaction4_elmt_k4(unit "") = 4.0E7 "";
    Real elmt_product12 "";
    Real elmt_product13 "";
    Real elmt_reactant11 "";
    Real elmt_Reaction3(unit = "") "M3";
    parameter Real elmt_Reaction3_elmt_k3(unit "") = 8000.0 "";
    Real elmt_product9 "";
    Real elmt_reactant8 "";
    Real elmt_product10 "";
    Real elmt_reactant7 "";
    Real elmt_Reaction2(unit = "") "M2";
    parameter Real elmt_Reaction2_elmt_k2(unit "") = 1.6E9 "";
    Real elmt_reactant4 "";
    Real elmt_product6 "";
    Real elmt_reactant5 "";
    Real elmt_Reaction1(unit = "") "M1";
    parameter Real elmt_Reaction1_elmt_k1(unit "") = 1.34 "";
    Real elmt_reactant1 "";
    Real elmt_reactant0 "";
    Real elmt_product3 "";
    Real elmt_product2 "";


    initial equation
        elmt_product9 = 1.0;
        elmt_reactant1 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_product6 = 2.0;
        elmt_product12 = 1.0;
        elmt_reactant5 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_product10 = 2.0;
        elmt_reactant7 = 1.0;
        elmt_reactant14 = 1.0;
        elmt_reactant11 = 2.0;
        elmt_reactant0 = 1.0;
        elmt_product3 = 1.0;
        elmt_product2 = 1.0;
        elmt_product13 = 1.0;


    equation
        elmt_Reaction5 = (elmt_Ce * elmt_Reaction5_elmt_k5 * elmt_BZ);
        elmt_Reaction4 = (Functions.pow(elmt_HBrO2, 2.0) * elmt_Reaction4_elmt_k4 * elmt_BZ);
        elmt_Reaction3 = (elmt_BrO3 * elmt_HBrO2 * elmt_Reaction3_elmt_k3 * elmt_BZ);
        elmt_Reaction2 = (elmt_Br * elmt_HBrO2 * elmt_Reaction2_elmt_k2 * elmt_BZ);
        elmt_Reaction1 = (elmt_Br * elmt_BrO3 * elmt_Reaction1_elmt_k1 * elmt_BZ);
        der(elmt_product9) = 0;
        der(elmt_reactant1) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_product6) = 0;
        der(elmt_product12) = 0;
        der(elmt_reactant5) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_product10) = 0;
        der(elmt_reactant7) = 0;
        der(elmt_reactant14) = 0;
        der(elmt_reactant11) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_product3) = 0;
        der(elmt_product2) = 0;
        elmt_product15 = elmt_f;
        der(elmt_product13) = 0;

end Reactions;
