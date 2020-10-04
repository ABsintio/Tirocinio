within BIOMD284;
class Reactions

    input Real elmt_cell;
    input Real elmt_Y;
    input Real elmt_Z;
    input Real elmt_X;
    input Real elmt_E;
    input Real elmt_F;
    input Real elmt_C;
    input Real elmt_D;
    input Real elmt_A;
    input Real elmt_B;

    Real elmt_R7(unit = "") "R7";
    Real elmt_product13 "";
    Real elmt_reactant12 "";
    Real elmt_R8(unit = "") "R8";
    Real elmt_reactant14 "";
    Real elmt_product15 "";
    Real elmt_R5(unit = "") "R5";
    Real elmt_product9 "";
    Real elmt_reactant8 "";
    Real elmt_R6(unit = "") "R6";
    Real elmt_product11 "";
    Real elmt_reactant10 "";
    Real elmt_R3(unit = "") "R3";
    Real elmt_reactant4 "";
    Real elmt_product5 "";
    Real elmt_R4(unit = "") "R4";
    Real elmt_product7 "";
    Real elmt_reactant6 "";
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
        elmt_reactant8 = 1.0;
        elmt_reactant14 = 1.0;
        elmt_product1 = 1.0;
        elmt_reactant10 = 1.0;
        elmt_product5 = 1.0;
        elmt_reactant12 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_product3 = 1.0;
        elmt_product15 = 1.0;
        elmt_product13 = 1.0;


    equation
        elmt_R7 = (elmt_cell * (((5.0 * elmt_E) - elmt_F) / (1.0 + elmt_E + elmt_F)));
        elmt_R8 = (elmt_cell * (((10.0 * elmt_F) - elmt_Z) / (1.0 + elmt_F + elmt_Z)));
        elmt_R5 = (elmt_cell * (((10.0 * elmt_D) - elmt_Y) / (1.0 + elmt_D + elmt_Y)));
        elmt_R6 = (elmt_cell * ((elmt_B - elmt_E) / (1.0 + elmt_B + elmt_E + Functions.pow(elmt_F, 2.0))));
        elmt_R3 = (elmt_cell * ((elmt_B - elmt_C) / (1.0 + elmt_B + elmt_C + Functions.pow(elmt_D, 2.0))));
        elmt_R4 = (elmt_cell * (((5.0 * elmt_C) - elmt_D) / (1.0 + elmt_C + elmt_D)));
        elmt_R1 = (elmt_cell * (((10.0 * elmt_X) - elmt_A) / (1.0 + elmt_X + elmt_A + Functions.pow(elmt_B, 2.0))));
        elmt_R2 = (elmt_cell * (((2.0 * elmt_A) - elmt_B) / (1.0 + elmt_A + elmt_B)));
        der(elmt_product9) = 0;
        der(elmt_reactant2) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_product7) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_product11) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_reactant14) = 0;
        der(elmt_product1) = 0;
        der(elmt_reactant10) = 0;
        der(elmt_product5) = 0;
        der(elmt_reactant12) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_product3) = 0;
        der(elmt_product15) = 0;
        der(elmt_product13) = 0;

end Reactions;
