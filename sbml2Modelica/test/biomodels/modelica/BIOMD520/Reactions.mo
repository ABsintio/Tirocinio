within BIOMD520;
class Reactions

    input Real elmt_m0;
    input Real elmt_N1;
    input Real elmt_N2;
    input Real elmt_m1;
    input Real elmt_N0;
    input Real elmt_c0;
    input Real elmt_d1;
    input Real elmt_d2;
    input Real elmt_b0;
    input Real elmt_c1;
    input Real elmt_d0;
    input Real elmt_b1;
    input Real elmt_a0;
    input Real elmt_a1;

    Real elmt_R2X(unit = "") "N2 death";
    Real elmt_reactant12 "";
    Real elmt_R01(unit = "") "N0 differentiation";
    Real elmt_reactant1 "";
    Real elmt_product3 "";
    Real elmt_product2 "";
    Real elmt_R12(unit = "") "N1 differentiation";
    Real elmt_product9 "";
    Real elmt_product8 "";
    Real elmt_reactant7 "";
    Real elmt_R00(unit = "") "N0 renewal";
    Real elmt_reactant4 "";
    Real elmt_product5 "";
    Real elmt_R11(unit = "") "N1 renewal";
    Real elmt_product11 "";
    Real elmt_reactant10 "";
    Real elmt_R1X(unit = "") "N1 death";
    Real elmt_reactant6 "";
    Real elmt_R0X(unit = "") "N0 death";
    Real elmt_reactant0 "";


    initial equation
        elmt_product9 = 1.0;
        elmt_reactant1 = 1.0;
        elmt_product8 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_product11 = 2.0;
        elmt_reactant7 = 1.0;
        elmt_product5 = 2.0;
        elmt_reactant10 = 1.0;
        elmt_reactant12 = 1.0;
        elmt_product3 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_product2 = 1.0;


    equation
        elmt_R2X = (elmt_d2 * elmt_N2);
        elmt_R01 = ((elmt_b0 + ((elmt_c0 * elmt_N0) / (elmt_N0 + elmt_m0))) * elmt_N0);
        elmt_R12 = ((elmt_b1 + ((elmt_c1 * elmt_N1) / (elmt_N1 + elmt_m1))) * elmt_N1);
        elmt_R00 = (elmt_a0 * elmt_N0);
        elmt_R11 = (elmt_a1 * elmt_N1);
        elmt_R1X = (elmt_d1 * elmt_N1);
        elmt_R0X = (elmt_d0 * elmt_N0);
        der(elmt_product9) = 0;
        der(elmt_reactant1) = 0;
        der(elmt_product8) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_product11) = 0;
        der(elmt_reactant7) = 0;
        der(elmt_product5) = 0;
        der(elmt_reactant10) = 0;
        der(elmt_reactant12) = 0;
        der(elmt_product3) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_product2) = 0;

end Reactions;
