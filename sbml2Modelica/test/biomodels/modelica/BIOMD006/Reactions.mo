within BIOMD006;
class Reactions

    input Real elmt_kappa;
    input Real elmt_z;
    input Real elmt_k4prime;
    input Real elmt_u;
    input Real elmt_k6;
    input Real elmt_k4;

    Real elmt_Reaction3(unit = "") "";
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
        elmt_reactant4 = 1.0;
        elmt_product1 = 1.0;
        elmt_product5 = 1.0;
        elmt_product3 = 1.0;
        elmt_reactant0 = 1.0;


    equation
        elmt_Reaction3 = (elmt_k4 * elmt_z * ((elmt_k4prime / elmt_k4) + Functions.pow(elmt_u, 2.0)));
        elmt_Reaction2 = (elmt_k6 * elmt_u);
        elmt_Reaction1 = elmt_kappa;
        der(elmt_reactant2) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_product1) = 0;
        der(elmt_product5) = 0;
        der(elmt_product3) = 0;
        der(elmt_reactant0) = 0;

end Reactions;
