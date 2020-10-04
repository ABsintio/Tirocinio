within BIOMD518;
class Reactions

    input Real elmt_N3;
    input Real elmt_N1;
    input Real elmt_N2;
    input Real elmt_K0X;
    input Real elmt_p03;
    input Real elmt_N0;
    input Real elmt_K2X;
    input Real elmt_p01;
    input Real elmt_p12;
    input Real elmt_K1X;
    input Real elmt_d1;
    input Real elmt_d2;
    input Real elmt_f1;
    input Real elmt_d0;
    input Real elmt_f0;
    input Real elmt_d3;
    input Real elmt_p00;
    input Real elmt_p11;

    Real elmt_R3X(unit = "") "N3 death";
    Real elmt_reactant16 "";
    Real elmt_R2X(unit = "") "N2 death";
    Real elmt_reactant12 "";
    Real elmt_R03(unit = "") "N0 differentiation to N3";
    Real elmt_product15 "";
    Real elmt_product14 "";
    Real elmt_reactant13 "";
    Real elmt_R01(unit = "") "N0 differentiation to N1";
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
        elmt_reactant16 = 1.0;
        elmt_product5 = 2.0;
        elmt_reactant10 = 1.0;
        elmt_reactant12 = 1.0;
        elmt_product3 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_reactant13 = 1.0;
        elmt_product2 = 1.0;
        elmt_product15 = 1.0;
        elmt_product14 = 1.0;


    equation
        elmt_R3X = (elmt_d3 * elmt_N3);
        elmt_R2X = ((elmt_d2 * elmt_N2 * elmt_K2X) / (elmt_N3 + elmt_K2X));
        elmt_R03 = (elmt_p03 * elmt_f0);
        elmt_R01 = (elmt_p01 * elmt_f0);
        elmt_R12 = (elmt_p12 * elmt_f1);
        elmt_R00 = (elmt_p00 * elmt_f0);
        elmt_R11 = (elmt_p11 * elmt_f1);
        elmt_R1X = ((elmt_d1 * elmt_N1 * elmt_K1X) / (elmt_N3 + elmt_K1X));
        elmt_R0X = ((elmt_d0 * elmt_N0 * elmt_K0X) / (elmt_N3 + elmt_K0X));
        der(elmt_product9) = 0;
        der(elmt_reactant1) = 0;
        der(elmt_product8) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_product11) = 0;
        der(elmt_reactant7) = 0;
        der(elmt_reactant16) = 0;
        der(elmt_product5) = 0;
        der(elmt_reactant10) = 0;
        der(elmt_reactant12) = 0;
        der(elmt_product3) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_reactant13) = 0;
        der(elmt_product2) = 0;
        der(elmt_product15) = 0;
        der(elmt_product14) = 0;

end Reactions;
