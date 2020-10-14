within BIOMD454;
class Class_elmt_cell

    input Real elmt_reactant1;
    input Real elmt_product7;
    input Real elmt_reactant5;
    input Real elmt_reactant8;
    input Real elmt_v3;
    input Real elmt_v4;
    input Real elmt_v1;
    input Real elmt_v2;
    input Real elmt_reactant10;
    input Real elmt_product3;
    input Real elmt_product2;

    Real elmt_cell(unit = "") "cell";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_x3_conc(unit = "");
    Real elmt_x3_amount(unit = "");
    Real elmt_x3(unit = "") "x3";
    Real elmt_y4_conc(unit = "");
    Real elmt_y4_amount(unit = "");
    Real elmt_y4(unit = "") "y4";
    Real elmt_y5_conc(unit = "");
    Real elmt_y5_amount(unit = "");
    Real elmt_y5(unit = "") "y5";
    Real elmt_x1_conc(unit = "");
    Real elmt_x1_amount(unit = "");
    Real elmt_x1(unit = "") "x1";
    Real elmt_y2_conc(unit = "");
    Real elmt_y2_amount(unit = "");
    Real elmt_y2(unit = "") "y2";
    Real elmt_x2_conc(unit = "");
    Real elmt_x2_amount(unit = "");
    Real elmt_x2(unit = "") "x2";
    Real elmt_y3_conc(unit = "");
    Real elmt_y3_amount(unit = "");
    Real elmt_y3(unit = "") "y3";
    Real elmt_y1_conc(unit = "");
    Real elmt_y1_amount(unit = "");
    Real elmt_y1(unit = "") "y1";

    initial equation
        elmt_cell = 1.0;
        elmt_x3_conc = 4.23123848100348;
        elmt_y4_conc = 1.0;
        elmt_y5_conc = 1.0;
        elmt_x1_conc = 0.05625738310526;
        elmt_y2_conc = 0.0;
        elmt_x2_conc = 0.76876151899652;
        elmt_y3_conc = 0.0;
        elmt_y1_conc = 10.0;


    equation
        assert(elmt_cell >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_cell) = 0;
        elmt_x3 = elmt_x3_conc;
        elmt_y4 = elmt_y4_conc;
        elmt_y5 = elmt_y5_conc;
        elmt_x1 = elmt_x1_conc;
        elmt_y2 = elmt_y2_conc;
        elmt_x2 = elmt_x2_conc;
        elmt_y3 = elmt_y3_conc;
        elmt_y1 = elmt_y1_conc;
        der(elmt_y4_amount) = 0;
        der(elmt_y5_amount) = 0;
        der(elmt_y2_amount) = 0;
        der(elmt_y3_amount) = 0;
        der(elmt_y1_amount) = 0;
        der(elmt_x3_amount) = ((elmt_v1 * elmt_product3) + (- (elmt_v2 * elmt_reactant5)));
        der(elmt_x1_amount) = ((- (elmt_v3 * elmt_reactant8)) + (- (elmt_v4 * elmt_reactant10)) + (elmt_v1 * elmt_product2));
        der(elmt_x2_amount) = ((- (elmt_v1 * elmt_reactant1)) + (elmt_v2 * elmt_product7));

    algorithm
        elmt_x3_conc := elmt_x3_amount / elmt_cell;
        elmt_y4_conc := elmt_y4_amount / elmt_cell;
        elmt_y5_conc := elmt_y5_amount / elmt_cell;
        elmt_x1_conc := elmt_x1_amount / elmt_cell;
        elmt_y2_conc := elmt_y2_amount / elmt_cell;
        elmt_x2_conc := elmt_x2_amount / elmt_cell;
        elmt_y3_conc := elmt_y3_amount / elmt_cell;
        elmt_y1_conc := elmt_y1_amount / elmt_cell;
end Class_elmt_cell;
