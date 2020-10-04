within BIOMD284;
class Class_elmt_cell

    input Real elmt_R7;
    input Real elmt_reactant2;
    input Real elmt_R8;
    input Real elmt_R5;
    input Real elmt_product7;
    input Real elmt_reactant4;
    input Real elmt_R6;
    input Real elmt_R3;
    input Real elmt_reactant6;
    input Real elmt_product11;
    input Real elmt_R4;
    input Real elmt_reactant8;
    input Real elmt_R1;
    input Real elmt_R2;
    input Real elmt_reactant14;
    input Real elmt_product1;
    input Real elmt_product5;
    input Real elmt_reactant10;
    input Real elmt_reactant12;
    input Real elmt_product3;
    input Real elmt_product13;

    Real elmt_cell(unit = "") "cell";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Y_conc(unit = "");
    Real elmt_Y_amount(unit = "");
    Real elmt_Y(unit = "") "Y";
    Real elmt_Z_conc(unit = "");
    Real elmt_Z_amount(unit = "");
    Real elmt_Z(unit = "") "Z";
    Real elmt_X_conc(unit = "");
    Real elmt_X_amount(unit = "");
    Real elmt_X(unit = "") "X";
    Real elmt_E_conc(unit = "");
    Real elmt_E_amount(unit = "");
    Real elmt_E(unit = "") "E";
    Real elmt_F_conc(unit = "");
    Real elmt_F_amount(unit = "");
    Real elmt_F(unit = "") "F";
    Real elmt_C_conc(unit = "");
    Real elmt_C_amount(unit = "");
    Real elmt_C(unit = "") "C";
    Real elmt_D_conc(unit = "");
    Real elmt_D_amount(unit = "");
    Real elmt_D(unit = "") "D";
    Real elmt_A_conc(unit = "");
    Real elmt_A_amount(unit = "");
    Real elmt_A(unit = "") "A";
    Real elmt_B_conc(unit = "");
    Real elmt_B_amount(unit = "");
    Real elmt_B(unit = "") "B";

    initial equation
        elmt_cell = 1.0;
        elmt_Y_conc = 2.0;
        elmt_Z_conc = 1.0;
        elmt_X_conc = 10.0;
        elmt_E_conc = 0.0;
        elmt_F_conc = 0.0;
        elmt_C_conc = 0.0;
        elmt_D_conc = 0.0;
        elmt_A_conc = 0.0;
        elmt_B_conc = 0.0;


    equation
        assert(elmt_cell >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_cell) = 0;
        elmt_Y = elmt_Y_conc;
        elmt_Z = elmt_Z_conc;
        elmt_X = elmt_X_conc;
        elmt_E = elmt_E_conc;
        elmt_F = elmt_F_conc;
        elmt_C = elmt_C_conc;
        elmt_D = elmt_D_conc;
        elmt_A = elmt_A_conc;
        elmt_B = elmt_B_conc;
        der(elmt_Y_amount) = 0;
        der(elmt_Z_amount) = 0;
        der(elmt_X_amount) = 0;
        der(elmt_E_amount) = ((- (elmt_R7 * elmt_reactant12)) + (elmt_R6 * elmt_product11));
        der(elmt_F_amount) = ((elmt_R7 * elmt_product13) + (- (elmt_R8 * elmt_reactant14)));
        der(elmt_C_amount) = ((elmt_R3 * elmt_product5) + (- (elmt_R4 * elmt_reactant6)));
        der(elmt_D_amount) = ((- (elmt_R5 * elmt_reactant8)) + (elmt_R4 * elmt_product7));
        der(elmt_A_amount) = ((elmt_R1 * elmt_product1) + (- (elmt_R2 * elmt_reactant2)));
        der(elmt_B_amount) = ((- (elmt_R6 * elmt_reactant10)) + (- (elmt_R3 * elmt_reactant4)) + (elmt_R2 * elmt_product3));

    algorithm
        elmt_Y_conc := elmt_Y_amount / elmt_cell;
        elmt_Z_conc := elmt_Z_amount / elmt_cell;
        elmt_X_conc := elmt_X_amount / elmt_cell;
        elmt_E_conc := elmt_E_amount / elmt_cell;
        elmt_F_conc := elmt_F_amount / elmt_cell;
        elmt_C_conc := elmt_C_amount / elmt_cell;
        elmt_D_conc := elmt_D_amount / elmt_cell;
        elmt_A_conc := elmt_A_amount / elmt_cell;
        elmt_B_conc := elmt_B_amount / elmt_cell;
end Class_elmt_cell;
