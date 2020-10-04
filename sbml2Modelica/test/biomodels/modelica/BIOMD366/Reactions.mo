within BIOMD366;
class Reactions

    input Real elmt_kcat_II;
    input Real elmt_PT;
    input Real elmt_km_2;
    input Real elmt_k_PL;
    input Real elmt_ki_Xa;
    input Real elmt_ki_IIaAlpha2M;
    input Real elmt_kcat_2;
    input Real elmt_RVV;
    input Real elmt_II;
    input Real elmt_km_X;
    input Real elmt_Va;
    input Real elmt_Xa;
    input Real elmt_k_PT;
    input Real elmt_km_V;
    input Real elmt_km_II;
    input Real elmt_ki_IIaATIII;
    input Real elmt_IIa;
    input Real elmt_compartment_1;
    input Real elmt_X;
    input Real elmt_kcat_V;
    input Real elmt_PL;
    input Real elmt_V;
    input Real elmt_kcat_X;

    Real elmt_R7(unit = "") "R7";
    Real elmt_reactant14 "";
    Real elmt_product15 "";
    Real elmt_R8(unit = "") "R8";
    Real elmt_reactant16 "";
    Real elmt_product17 "";
    Real elmt_R5(unit = "") "R5";
    Real elmt_product11 "";
    Real elmt_reactant10 "";
    Real elmt_R6(unit = "") "R6";
    Real elmt_product13 "";
    Real elmt_reactant12 "";
    Real elmt_R3(unit = "") "R3";
    Real elmt_reactant4 "";
    Real elmt_product7 "";
    Real elmt_reactant6 "";
    Real elmt_reactant5 "";
    Real elmt_R4(unit = "") "R4";
    Real elmt_product9 "";
    Real elmt_reactant8 "";
    Real elmt_R1(unit = "") "R1";
    Real elmt_product1 "";
    Real elmt_reactant0 "";
    Real elmt_R2(unit = "") "R2";
    Real elmt_reactant2 "";
    Real elmt_product3 "";


    initial equation
        elmt_product9 = 1.0;
        elmt_reactant2 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_product7 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_product11 = 1.0;
        elmt_reactant5 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_reactant14 = 1.0;
        elmt_product1 = 1.0;
        elmt_reactant16 = 1.0;
        elmt_reactant10 = 1.0;
        elmt_reactant12 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_product3 = 1.0;
        elmt_product15 = 1.0;
        elmt_product13 = 1.0;
        elmt_product17 = 1.0;


    equation
        elmt_R7 = (elmt_compartment_1 * elmt_ki_IIaAlpha2M * elmt_IIa);
        elmt_R8 = (elmt_compartment_1 * elmt_ki_IIaATIII * elmt_IIa);
        elmt_R5 = (elmt_compartment_1 * (((elmt_kcat_II * elmt_PT * elmt_II) / (elmt_km_II + elmt_II))));
        elmt_R6 = (elmt_compartment_1 * (((elmt_kcat_2 * elmt_Xa * elmt_II) / (elmt_km_2 + elmt_II))));
        elmt_R3 = (elmt_compartment_1 * ((elmt_k_PT * elmt_Va * elmt_Xa * elmt_PL) - (elmt_k_PL * elmt_PT)));
        elmt_R4 = (elmt_compartment_1 * (((elmt_kcat_V * elmt_IIa * elmt_V) / (elmt_km_V + elmt_V))));
        elmt_R1 = (elmt_compartment_1 * (((elmt_kcat_X * elmt_RVV * elmt_X) / (elmt_km_X + elmt_X))));
        elmt_R2 = (elmt_compartment_1 * elmt_ki_Xa * elmt_Xa);
        der(elmt_product9) = 0;
        der(elmt_reactant2) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_product7) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_product11) = 0;
        der(elmt_reactant5) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_reactant14) = 0;
        der(elmt_product1) = 0;
        der(elmt_reactant16) = 0;
        der(elmt_reactant10) = 0;
        der(elmt_reactant12) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_product3) = 0;
        der(elmt_product15) = 0;
        der(elmt_product13) = 0;
        der(elmt_product17) = 0;

end Reactions;
