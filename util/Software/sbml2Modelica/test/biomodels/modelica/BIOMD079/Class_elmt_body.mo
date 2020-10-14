within BIOMD079;
class Class_elmt_body

    input Real elmt_reactant1;
    input Real elmt_reactant3;
    input Real elmt_reactant5;
    input Real elmt_reaction_5;
    input Real elmt_reaction_3;
    input Real elmt_product0;
    input Real elmt_reaction_4;
    input Real elmt_reaction_1;
    input Real elmt_reaction_2;
    input Real elmt_reaction_0;
    input Real elmt_product4;
    input Real elmt_product2;

    Real elmt_body(unit = "") "body";
    Real elmt_P_amount(unit = "");
    Real elmt_P_conc(unit = "");
    Real elmt_P(unit = "") "P";
    Real elmt_Q_amount(unit = "");
    Real elmt_Q_conc(unit = "");
    Real elmt_Q(unit = "") "Q";
    Real elmt_R_amount(unit = "");
    Real elmt_R_conc(unit = "");
    Real elmt_R(unit = "") "R";

    initial equation
        elmt_body = 1.0;
        elmt_P_amount = (0.43 * elmt_body);
        elmt_Q_amount = (0.8 * elmt_body);
        elmt_R_amount = (0.55 * elmt_body);


    equation
        assert(elmt_body >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_body) = 0;
        elmt_P = elmt_P_amount;
        elmt_Q = elmt_Q_amount;
        elmt_R = elmt_R_amount;
        der(elmt_P_amount) = ((- (elmt_reaction_1 * elmt_reactant1)) + (elmt_reaction_0 * elmt_product0));
        der(elmt_Q_amount) = ((- (elmt_reaction_3 * elmt_reactant3)) + (elmt_reaction_2 * elmt_product2));
        der(elmt_R_amount) = ((- (elmt_reaction_5 * elmt_reactant5)) + (elmt_reaction_4 * elmt_product4));

    algorithm
        elmt_P_conc := elmt_P_amount / elmt_body;
        elmt_Q_conc := elmt_Q_amount / elmt_body;
        elmt_R_conc := elmt_R_amount / elmt_body;
end Class_elmt_body;
