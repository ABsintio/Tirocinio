within RunningExample;
class Reactions
    extends Modelica.Icons.SourcesPackage;


    input Real elmt_p2;
    input Real elmt_s2;
    input Real elmt_s1;

    Real elmt_r(unit = "") "";
    Real elmt_reactant2 "";
    Real elmt_reactant1 "";
    Real elmt_product1 "";


    initial equation
        elmt_reactant2 = 2.0;
        elmt_reactant1 = 1.0;
        elmt_product1 = 1.0;


    equation
        elmt_r = (elmt_p2 * elmt_s1 * elmt_s2);
        der(elmt_reactant2) = 0;
        der(elmt_reactant1) = 0;
        der(elmt_product1) = 0;

end Reactions;
