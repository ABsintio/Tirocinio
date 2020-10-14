within BIOMD367;
class Class_elmt_compartment_1

    input Real elmt_zeta;
    input Real elmt_mu_z;
    input Real elmt_mu_x;
    input Real elmt_r;
    input Real elmt_b;

    Real elmt_compartment_1(unit = "") "compartment_1";
    Real elmt_y_conc(unit = "");
    Real elmt_y_amount(unit = "");
    Real elmt_y(unit = "") "y";
    Real elmt_z_conc(unit = "");
    Real elmt_z_amount(unit = "");
    Real elmt_z(unit = "") "z";
    Real elmt_x_conc(unit = "");
    Real elmt_x_amount(unit = "");
    Real elmt_x(unit = "") "x";

    initial equation
        elmt_compartment_1 = 1.0;
        elmt_y_conc = 0.2;
        elmt_z_conc = 0.4;
        elmt_x_conc = 4.0;


    equation
        assert(elmt_compartment_1 >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_compartment_1) = 0;
        elmt_y = elmt_y_conc;
        elmt_z = elmt_z_conc;
        elmt_x = elmt_x_conc;
        der(elmt_y_amount / elmt_compartment_1) = (((elmt_r * elmt_x * elmt_y) - (elmt_b * elmt_y * elmt_z)) - (elmt_zeta * elmt_y));
        der(elmt_z_amount / elmt_compartment_1) = ((((- elmt_b) * elmt_y * elmt_z) + (elmt_zeta * elmt_mu_z)) - (elmt_zeta * elmt_z));
        der(elmt_x_amount / elmt_compartment_1) = ((((- elmt_r) * elmt_x * elmt_y) + (elmt_zeta * elmt_mu_x)) - (elmt_zeta * elmt_x));

    algorithm
        elmt_y_conc := elmt_y_amount / elmt_compartment_1;
        elmt_z_conc := elmt_z_amount / elmt_compartment_1;
        elmt_x_conc := elmt_x_amount / elmt_compartment_1;
end Class_elmt_compartment_1;
