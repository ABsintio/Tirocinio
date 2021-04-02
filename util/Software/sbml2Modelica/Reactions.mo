within .;
class Reactions
    extends Modelica.Icons.SourcesPackage;


    input Real elmt_k1;
    input Real elmt_compartment;
    input Real elmt_S4;
    input Real elmt_S2;
    input Real elmt_S3;
    input Real elmt_S1;
    input Real elmt_k2;

    Real elmt_reaction2(unit = "") "reaction2";
    Real elmt_reactant4 "";
    Real elmt_product7 "";
    Real elmt_product6 "";
    Real elmt_reactant5 "";
    Real elmt_reaction1(unit = "") "reaction1";
    Real elmt_reactant1 "";
    Real elmt_reactant0 "";
    Real elmt_product3 "";
    Real elmt_product2 "";


    initial equation
        elmt_reactant1 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_product7 = 1.0;
        elmt_product6 = 1.0;
        elmt_reactant5 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_product3 = 2.0;
        elmt_product2 = 1.0;


    equation
        elmt_reaction2 = (elmt_compartment * elmt_k2 * elmt_S3 * elmt_S4);
        elmt_reaction1 = (elmt_compartment * elmt_k1 * elmt_S1 * elmt_S2);
        der(elmt_reactant1) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_product7) = 0;
        der(elmt_product6) = 0;
        der(elmt_reactant5) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_product3) = 0;
        der(elmt_product2) = 0;

end Reactions;
