within BIOMD233;
class Reactions

    input Real elmt_Y;
    input Real elmt_X;
    input Real elmt_S;

    Real elmt_r3(unit = "") "r3";
    parameter Real elmt_r3_elmt_k3(unit "") = 1.0 "";
    Real elmt_product9 "";
    Real elmt_product8 "";
    Real elmt_reactant6 "";
    Real elmt_reactant7 "";
    Real elmt_r4(unit = "") "r4";
    parameter Real elmt_r4_elmt_k4(unit "") = 1.5 "";
    Real elmt_product11 "";
    Real elmt_reactant10 "";
    Real elmt_r1(unit = "") "r1";
    parameter Real elmt_r1_elmt_k1(unit "") = 8.0 "";
    Real elmt_reactant1 "";
    Real elmt_reactant0 "";
    Real elmt_product2 "";
    Real elmt_r2(unit = "") "r2";
    parameter Real elmt_r2_elmt_k2(unit "") = 1.0 "";
    Real elmt_reactant3 "";
    Real elmt_product5 "";
    Real elmt_product4 "";


    initial equation
        elmt_product9 = 1.0;
        elmt_product8 = 1.0;
        elmt_reactant1 = 1.0;
        elmt_reactant3 = 2.0;
        elmt_reactant6 = 1.0;
        elmt_product11 = 1.0;
        elmt_reactant7 = 1.0;
        elmt_reactant10 = 1.0;
        elmt_product5 = 1.0;
        elmt_product4 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_product2 = 2.0;


    equation
        elmt_r3 = (elmt_r3_elmt_k3 * elmt_X * elmt_Y);
        elmt_r4 = (elmt_r4_elmt_k4 * elmt_X);
        elmt_r1 = (elmt_r1_elmt_k1 * elmt_S * elmt_Y);
        elmt_r2 = (elmt_r2_elmt_k2 * Functions.pow(elmt_X, 2.0));
        der(elmt_product9) = 0;
        der(elmt_product8) = 0;
        der(elmt_reactant1) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_product11) = 0;
        der(elmt_reactant7) = 0;
        der(elmt_reactant10) = 0;
        der(elmt_product5) = 0;
        der(elmt_product4) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_product2) = 0;

end Reactions;
