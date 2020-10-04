within BIOMD346;
class Class_elmt_compartment

    input Real elmt_z;
    input Real elmt_c;
    input Real elmt_a;
    input Real elmt_b;

    Real elmt_compartment(unit = "") "compartment";
    Real elmt_y_conc(unit = "");
    Real elmt_y_amount(unit = "");
    Real elmt_y(unit = "") "y";
    Real elmt_x_conc(unit = "");
    Real elmt_x_amount(unit = "");
    Real elmt_x(unit = "") "x";

    initial equation
        elmt_compartment = 1.0;
        elmt_y_conc = 0.5;
        elmt_x_conc = (-1.0);


    equation
        assert(elmt_compartment >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_compartment) = 0;
        elmt_y = elmt_y_conc;
        elmt_x = elmt_x_conc;
        der(elmt_y_amount / elmt_compartment) = ((- (1.0 / elmt_c)) * (elmt_x + (- elmt_a) + (elmt_b * elmt_y)));
        der(elmt_x_amount / elmt_compartment) = (elmt_c * (elmt_x + (- (Functions.pow(elmt_x, 3.0) / 3.0)) + elmt_y + elmt_z));

    algorithm
        elmt_y_conc := elmt_y_amount / elmt_compartment;
        elmt_x_conc := elmt_x_amount / elmt_compartment;
end Class_elmt_compartment;
