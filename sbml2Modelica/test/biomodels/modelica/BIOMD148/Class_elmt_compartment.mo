within BIOMD148;
class Class_elmt_compartment

    input Real elmt_reactant1;
    input Real elmt_R5;
    input Real elmt_reactant4;
    input Real elmt_R6;
    input Real elmt_reactant3;
    input Real elmt_R3;
    input Real elmt_R4;
    input Real elmt_R1;
    input Real elmt_R2;
    input Real elmt_product0;
    input Real elmt_product5;
    input Real elmt_beta1;
    input Real elmt_beta2;
    input Real elmt_product2;
    input Real elmt_g12;
    input Real elmt_g22;
    input Real elmt_g11;
    input Real elmt_g21;
    input Real elmt_gamma;
    input Real elmt_alpha1;
    input Real elmt_alpha2;

    Real elmt_compartment(unit = "") "";
    Real elmt_z_amount(unit = "");
    Real elmt_z_conc(unit = "");
    Real elmt_z(unit = "") "Bone mass";
    Real elmt_x1_bar_amount(unit = "");
    Real elmt_x1_bar_conc(unit = "");
    Real elmt_x1_bar(unit = "") "Steady state osteoclast";
    Real elmt_x2_bar_amount(unit = "");
    Real elmt_x2_bar_conc(unit = "");
    Real elmt_x2_bar(unit = "") "Steady state osteoblast";
    Real elmt_x1_amount(unit = "");
    Real elmt_x1_conc(unit = "");
    Real elmt_x1(unit = "") "Osteoclast";
    Real elmt_y2_amount(unit = "");
    Real elmt_y2_conc(unit = "");
    Real elmt_y2(unit = "") "Cells actively forming bone";
    Real elmt_x2_amount(unit = "");
    Real elmt_x2_conc(unit = "");
    Real elmt_x2(unit = "") "Osteoblast";
    Real elmt_y1_amount(unit = "");
    Real elmt_y1_conc(unit = "");
    Real elmt_y1(unit = "") "Cells actively resorbing bone";

    initial equation
        elmt_compartment = 1.0;
        elmt_z_amount = 100.0;
        elmt_x1_amount = 11.0;
        elmt_y2_amount = 0.0;
        elmt_x2_amount = 212.0;
        elmt_y1_amount = 0.0;


    equation
        assert(elmt_compartment >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_compartment) = 0;
        elmt_z = elmt_z_amount;
        elmt_x1_bar = elmt_x1_bar_amount;
        elmt_x2_bar = elmt_x2_bar_amount;
        elmt_x1 = elmt_x1_amount;
        elmt_y2 = elmt_y2_amount;
        elmt_x2 = elmt_x2_amount;
        elmt_y1 = elmt_y1_amount;
        elmt_x1_bar_amount = (Functions.pow((elmt_beta1 / elmt_alpha1), ((1.0 - elmt_g22) / elmt_gamma)) * Functions.pow((elmt_beta2 / elmt_alpha2), (elmt_g21 / elmt_gamma)));
        elmt_x2_bar_amount = (Functions.pow((elmt_beta1 / elmt_alpha1), (elmt_g12 / elmt_gamma)) * Functions.pow((elmt_beta2 / elmt_alpha2), ((1.0 - elmt_g11) / elmt_gamma)));
        der(elmt_y2_amount) = 0;
        der(elmt_y1_amount) = 0;
        der(elmt_z_amount) = ((- (elmt_R5 * elmt_reactant4)) + (elmt_R6 * elmt_product5));
        der(elmt_x1_amount) = ((elmt_R1 * elmt_product0) + (- (elmt_R2 * elmt_reactant1)));
        der(elmt_x2_amount) = ((elmt_R3 * elmt_product2) + (- (elmt_R4 * elmt_reactant3)));

    algorithm
        elmt_z_conc := elmt_z_amount / elmt_compartment;
        elmt_x1_bar_conc := elmt_x1_bar_amount / elmt_compartment;
        elmt_x2_bar_conc := elmt_x2_bar_amount / elmt_compartment;
        elmt_x1_conc := elmt_x1_amount / elmt_compartment;
        elmt_y2_conc := elmt_y2_amount / elmt_compartment;
        elmt_x2_conc := elmt_x2_amount / elmt_compartment;
        elmt_y1_conc := elmt_y1_amount / elmt_compartment;
end Class_elmt_compartment;
