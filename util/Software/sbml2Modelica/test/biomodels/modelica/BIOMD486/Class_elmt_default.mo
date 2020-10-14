within BIOMD486;
class Class_elmt_default

    input Real elmt_reactant2;
    input Real elmt_product1;
    input Real elmt_re2;
    input Real elmt_re12;
    input Real elmt_reactant0;
    input Real elmt_product3;

    Real elmt_default(unit = "") "";
    Real elmt_A_conc(unit = "");
    Real elmt_A_amount(unit = "");
    Real elmt_A(unit = "") "A";
    Real elmt_B_conc(unit = "");
    Real elmt_B_amount(unit = "");
    Real elmt_B(unit = "") "B";

    initial equation
        elmt_default = 1.0;
        elmt_A_conc = (0.0 / elmt_default);
        elmt_B_conc = (0.0 / elmt_default);


    equation
        assert(elmt_default >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_default) = 0;
        elmt_A = elmt_A_conc;
        elmt_B = elmt_B_conc;
        der(elmt_A_amount) = ((elmt_re2 * elmt_product1) + (- (elmt_re12 * elmt_reactant2)));
        der(elmt_B_amount) = ((- (elmt_re2 * elmt_reactant0)) + (elmt_re12 * elmt_product3));

    algorithm
        elmt_A_conc := elmt_A_amount / elmt_default;
        elmt_B_conc := elmt_B_amount / elmt_default;
end Class_elmt_default;
