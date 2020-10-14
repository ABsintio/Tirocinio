within BIOMD363;
class Reactions

    input Real elmt_M;
    input Real elmt_compartment;
    input Real elmt_P2;
    input Real elmt_II;

    Real elmt_r3(unit = "") "r3";
    parameter Real elmt_r3_elmt_k1(unit "") = 1.0E-5 "";
    Real elmt_reactant4 "";
    Real elmt_product5 "";
    Real elmt_r4(unit = "") "r4";
    parameter Real elmt_r4_elmt_k1(unit "") = 2.5E-5 "";
    Real elmt_product7 "";
    Real elmt_reactant6 "";
    Real elmt_r1(unit = "") "r1";
    parameter Real elmt_r1_elmt_k1(unit "") = 0.005 "";
    Real elmt_product1 "";
    Real elmt_reactant0 "";
    Real elmt_r2(unit = "") "r2";
    parameter Real elmt_r2_elmt_k1(unit "") = 0.01 "";
    Real elmt_reactant2 "";
    Real elmt_product3 "";


    initial equation
        elmt_reactant2 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_product7 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_product1 = 1.0;
        elmt_product5 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_product3 = 1.0;


    equation
        elmt_r3 = (elmt_compartment * elmt_r3_elmt_k1 * elmt_II);
        elmt_r4 = (elmt_compartment * elmt_r4_elmt_k1 * elmt_P2);
        elmt_r1 = (elmt_compartment * elmt_r1_elmt_k1 * elmt_II);
        elmt_r2 = (elmt_compartment * elmt_r2_elmt_k1 * elmt_M);
        der(elmt_reactant2) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_product7) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_product1) = 0;
        der(elmt_product5) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_product3) = 0;

end Reactions;
