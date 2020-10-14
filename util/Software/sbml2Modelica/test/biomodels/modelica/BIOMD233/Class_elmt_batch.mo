within BIOMD233;
class Class_elmt_batch

    input Real elmt_product9;
    input Real elmt_reactant1;
    input Real elmt_reactant3;
    input Real elmt_r3;
    input Real elmt_reactant6;
    input Real elmt_r4;
    input Real elmt_r1;
    input Real elmt_reactant7;
    input Real elmt_r2;
    input Real elmt_product5;
    input Real elmt_reactant10;
    input Real elmt_product4;
    input Real elmt_product2;

    Real elmt_batch(unit = "m3.0") "batch";
    Real elmt_P_conc(unit = "m-6.0.");
    Real elmt_P_amount(unit = "m-3.0.");
    Real elmt_P(unit = "m-6.0.") "P";
    Real elmt_Y_conc(unit = "m-12.0.");
    Real elmt_Y_amount(unit = "m-9.0.");
    Real elmt_Y(unit = "m-12.0.") "Y";
    Real elmt_X_conc(unit = "m-9.0.");
    Real elmt_X_amount(unit = "m-6.0.");
    Real elmt_X(unit = "m-9.0.") "X";
    Real elmt_S_conc(unit = "m-3.0.");
    Real elmt_S_amount(unit = "");
    Real elmt_S(unit = "m-3.0.") "S";

    initial equation
        elmt_batch = 1.0;
        elmt_P_conc = 1.0;
        elmt_Y_conc = 1.0;
        elmt_X_conc = 1.0;
        elmt_S_conc = 1.0;


    equation
        assert(elmt_batch >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_batch) = 0;
        elmt_P = elmt_P_conc;
        elmt_Y = elmt_Y_conc;
        elmt_X = elmt_X_conc;
        elmt_S = elmt_S_conc;
        der(elmt_P_amount) = 0;
        der(elmt_S_amount) = 0;
        der(elmt_Y_amount) = ((elmt_r3 * elmt_product9) + (- (elmt_r3 * elmt_reactant7)) + (- (elmt_r1 * elmt_reactant1)) + (elmt_r2 * elmt_product5));
        der(elmt_X_amount) = ((- (elmt_r3 * elmt_reactant6)) + (- (elmt_r4 * elmt_reactant10)) + (elmt_r1 * elmt_product2) + (- (elmt_r2 * elmt_reactant3)) + (elmt_r2 * elmt_product4));

    algorithm
        elmt_P_conc := elmt_P_amount / elmt_batch;
        elmt_Y_conc := elmt_Y_amount / elmt_batch;
        elmt_X_conc := elmt_X_amount / elmt_batch;
        elmt_S_conc := elmt_S_amount / elmt_batch;
end Class_elmt_batch;
