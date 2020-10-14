within BIOMD485;
class Class_elmt_default

    input Real elmt_reactant2;
    input Real elmt_product7;
    input Real elmt_reactant4;
    input Real elmt_Reaction7;
    input Real elmt_Reaction6;
    input Real elmt_reactant6;
    input Real elmt_Reaction2;
    input Real elmt_product1;
    input Real elmt_Reaction1;
    input Real elmt_product5;
    input Real elmt_product3;
    input Real elmt_reactant0;

    Real elmt_default(unit = "") "";
    Real elmt_X_conc(unit = "");
    Real elmt_X_amount(unit = "");
    Real elmt_X(unit = "") "X";
    Real elmt_ES_conc(unit = "");
    Real elmt_ES_amount(unit = "");
    Real elmt_ES(unit = "") "ES";

    initial equation
        elmt_default = 1.0;
        elmt_X_conc = (1.0 / elmt_default);
        elmt_ES_conc = (1.0 / elmt_default);


    equation
        assert(elmt_default >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_default) = 0;
        elmt_X = elmt_X_conc;
        elmt_ES = elmt_ES_conc;
        der(elmt_X_amount) = ((- (elmt_Reaction7 * elmt_reactant6)) + (elmt_Reaction6 * elmt_product5) + (- (elmt_Reaction2 * elmt_reactant2)) + (elmt_Reaction1 * elmt_product1));
        der(elmt_ES_amount) = ((elmt_Reaction7 * elmt_product7) + (- (elmt_Reaction6 * elmt_reactant4)) + (elmt_Reaction2 * elmt_product3) + (- (elmt_Reaction1 * elmt_reactant0)));

    algorithm
        elmt_X_conc := elmt_X_amount / elmt_default;
        elmt_ES_conc := elmt_ES_amount / elmt_default;
end Class_elmt_default;
