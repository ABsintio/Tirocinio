within BIOMD484;
class Class_elmt_default

    input Real elmt_reactant2;
    input Real elmt_product1;
    input Real elmt_re2;
    input Real elmt_re12;
    input Real elmt_reactant0;
    input Real elmt_product3;

    Real elmt_default(unit = "") "";
    Real elmt_ES_conc(unit = "");
    Real elmt_ES_amount(unit = "");
    Real elmt_ES(unit = "") "ES";
    Real elmt_S_conc(unit = "");
    Real elmt_S_amount(unit = "");
    Real elmt_S(unit = "") "S";

    initial equation
        elmt_default = 1.0;
        elmt_ES_conc = (0.0 / elmt_default);
        elmt_S_conc = (0.0 / elmt_default);


    equation
        assert(elmt_default >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_default) = 0;
        elmt_ES = elmt_ES_conc;
        elmt_S = elmt_S_conc;
        der(elmt_ES_amount) = ((- (elmt_re2 * elmt_reactant0)) + (elmt_re12 * elmt_product3));
        der(elmt_S_amount) = ((elmt_re2 * elmt_product1) + (- (elmt_re12 * elmt_reactant2)));

    algorithm
        elmt_ES_conc := elmt_ES_amount / elmt_default;
        elmt_S_conc := elmt_S_amount / elmt_default;
end Class_elmt_default;
