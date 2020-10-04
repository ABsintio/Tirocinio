within BIOMD258;
class Reactions

    input Real elmt_beta;
    input Real elmt_r24;
    input Real elmt_gamma;
    input Real elmt_r31;
    input Real elmt_Ks3;
    input Real elmt_alpha;
    input Real elmt_Ks4;
    input Real elmt_Vm1;
    input Real elmt_Ks1;
    input Real elmt_Chi14;
    input Real elmt_Ks2;

    Real elmt_v3(unit = "") "v3";
    Real elmt_reactant4 "";
    Real elmt_product5 "";
    Real elmt_v4(unit = "") "v4";
    Real elmt_product7 "";
    Real elmt_reactant6 "";
    Real elmt_v1(unit = "") "v1";
    Real elmt_product1 "";
    Real elmt_reactant0 "";
    Real elmt_v2(unit = "") "v2";
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
        elmt_v3 = ((elmt_r31 * elmt_Vm1 * (elmt_beta / elmt_Ks3)) / (1.0 + (elmt_alpha / elmt_Ks1) + (elmt_beta / elmt_Ks3)));
        elmt_v4 = (((elmt_Vm1 / elmt_Chi14) * (elmt_gamma / elmt_Ks4)) / (1.0 + (elmt_gamma / elmt_Ks4) + (elmt_beta / elmt_Ks2)));
        elmt_v1 = ((elmt_Vm1 * (elmt_alpha / elmt_Ks1)) / (1.0 + (elmt_alpha / elmt_Ks1) + (elmt_beta / elmt_Ks3)));
        elmt_v2 = ((elmt_r24 * (elmt_Vm1 / elmt_Chi14) * (elmt_beta / elmt_Ks2)) / (1.0 + (elmt_gamma / elmt_Ks4) + (elmt_beta / elmt_Ks2)));
        der(elmt_reactant2) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_product7) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_product1) = 0;
        der(elmt_product5) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_product3) = 0;

end Reactions;
