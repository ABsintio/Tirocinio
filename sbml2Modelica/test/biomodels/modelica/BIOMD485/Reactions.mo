within BIOMD485;
class Reactions

    input Real elmt_k1;
    input Real elmt_X;
    input Real elmt_V;
    input Real elmt_default;
    input Real elmt_k4;
    input Real elmt_k2;
    input Real elmt_A;
    input Real elmt_k3;
    input Real elmt_B;

    Real elmt_Reaction7(unit = "") "";
    Real elmt_product7 "";
    Real elmt_reactant6 "";
    Real elmt_Reaction6(unit = "") "";
    Real elmt_reactant4 "";
    Real elmt_product5 "";
    Real elmt_Reaction2(unit = "") "";
    Real elmt_reactant2 "";
    Real elmt_product3 "";
    Real elmt_Reaction1(unit = "") "";
    Real elmt_product1 "";
    Real elmt_reactant0 "";


    initial equation
        elmt_reactant2 = 1.0;
        elmt_product7 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_product1 = 1.0;
        elmt_product5 = 1.0;
        elmt_product3 = 1.0;
        elmt_reactant0 = 1.0;


    equation
        elmt_Reaction7 = (elmt_default * elmt_k4 * elmt_X);
        elmt_Reaction6 = (elmt_default * elmt_k3 * elmt_B * elmt_V);
        elmt_Reaction2 = ((elmt_default * (elmt_k2 / 1.0) * elmt_X * (elmt_X - 1.0) * (elmt_X - 2.0)) / Functions.pow(elmt_V, 2.0));
        elmt_Reaction1 = ((elmt_default * elmt_k1 * elmt_A * elmt_X * (elmt_X - 1.0)) / elmt_V);
        der(elmt_reactant2) = 0;
        der(elmt_product7) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_product1) = 0;
        der(elmt_product5) = 0;
        der(elmt_product3) = 0;
        der(elmt_reactant0) = 0;

end Reactions;
