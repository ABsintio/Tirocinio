within BIOMD484;
class Reactions

    input Real elmt_k1;
    input Real elmt_default;
    input Real elmt_S;
    input Real elmt_k2;

    Real elmt_re2(unit = "") "";
    Real elmt_product1 "";
    Real elmt_reactant0 "";
    Real elmt_re12(unit = "") "";
    Real elmt_reactant2 "";
    Real elmt_product3 "";


    initial equation
        elmt_reactant2 = 1.0;
        elmt_product1 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_product3 = 1.0;


    equation
        elmt_re2 = (elmt_default * elmt_k1);
        elmt_re12 = (elmt_k2 * elmt_S);
        der(elmt_reactant2) = 0;
        der(elmt_product1) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_product3) = 0;

end Reactions;
